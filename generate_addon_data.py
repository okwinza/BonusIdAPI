#!/usr/bin/env python3

import json
import logging
import os
import sys
from math import floor

from lib.dbc_file import CurveType, DBC, ItemBonusType


def _sort_priority(bonus_type):
    if bonus_type in (ItemBonusType.STAT_SCALING, ItemBonusType.STAT_FIXED):
        return 1
    if bonus_type in (ItemBonusType.SCALING_CONFIG, ItemBonusType.SCALING_CONFIG_2):
        return 2
    if bonus_type == ItemBonusType.OFFSET_CURVE:
        return 3
    if bonus_type in (ItemBonusType.MIDNIGHT_ITEM_LEVEL, ItemBonusType.CRAFTING_QUALITY):
        return 4
    return 0


_GROUP_SCALE = 49   # SCALING_CONFIG group value
_GROUP_CQ = 52      # CRAFTING_QUALITY / MIDNIGHT_ITEM_LEVEL group value


def _get_curve_point_value(dbc, curve_id, value):
    """Evaluate a curve at an integer value — same logic as DirectDBCAlgorithm."""
    lower_bound, upper_bound = dbc.curve_point.find_points(curve_id, value)
    if lower_bound.Pos_0 >= value:
        result = lower_bound.Pos_1
    elif upper_bound.Pos_0 < value:
        result = upper_bound.Pos_1
    else:
        slope = (upper_bound.Pos_1 - lower_bound.Pos_1) / (upper_bound.Pos_0 - lower_bound.Pos_0)
        result = lower_bound.Pos_1 + slope * (value - lower_bound.Pos_0)
    return int(floor(result + 0.5))


def _export_bonus(entry, dbc):
    """Convert a DBC ItemBonus entry to an operation dict.
    Returns None for entries that have no effect on item level calculation."""
    bt = entry.bonus_type

    if bt == ItemBonusType.INCREASE_ITEM_LEVEL:
        if not entry.Value_0:
            return None
        return {'op': 'add', 'amount': entry.Value_0}

    elif bt in (ItemBonusType.SCALING_CONFIG, ItemBonusType.SCALING_CONFIG_2):
        if not dbc.item_scaling_config.has(entry.Value_0):
            return None
        sc = dbc.item_scaling_config.get(entry.Value_0)
        if not dbc.item_offset_curve.has(sc.ItemOffsetCurveID):
            return None
        oc = dbc.item_offset_curve.get(sc.ItemOffsetCurveID)

        # Determine midnight handling
        if bt == ItemBonusType.SCALING_CONFIG:
            sets_midnight = sc.ItemSquishEraID != 1 or bool(sc.Flags & 1)
        else:
            sets_midnight = sc.ItemSquishEraID != 1

        result = {
            'op': 'scale',
            'group': _GROUP_SCALE,
            'priority': entry.Value_1,
            'curve_id': oc.CurveID,
            'offset': oc.Offset,
            'midnight': 'set' if sets_midnight else 'squish',
        }
        if bt == ItemBonusType.SCALING_CONFIG:
            if sc.ItemLevel:
                result['default_level'] = sc.ItemLevel
            if sc.ItemSquishEraID == 2:
                result['ct_key'] = 'sc'
        else:
            result['ct_key'] = 'sc2'
            result['ct_default_only'] = True
        return result

    elif bt == ItemBonusType.OFFSET_CURVE:
        curve_id = entry.Value_0
        input_value = entry.Value_1
        if curve_id and dbc.curve_point.get(curve_id):
            item_level = _get_curve_point_value(dbc, curve_id, input_value)
        else:
            item_level = 0
        sets_midnight = entry.Value_2 != 1
        return {
            'op': 'set',
            'group': _GROUP_SCALE,
            'item_level': item_level,
            'midnight': 'set' if sets_midnight else 'squish',
        }

    elif bt == ItemBonusType.MIDNIGHT_ITEM_LEVEL:
        return {'op': 'add', 'group': _GROUP_CQ, 'amount': entry.Value_0}

    elif bt == ItemBonusType.BASE_ITEM_LEVEL:
        return {'op': 'set', 'group': _GROUP_SCALE, 'item_level': entry.Value_0}

    elif bt == ItemBonusType.CRAFTING_QUALITY:
        amount = entry.Value_2 if entry.Value_1 == 1 else entry.Value_0
        return {'op': 'add', 'group': _GROUP_CQ, 'amount': amount, 'midnight': 'force'}

    elif bt in (ItemBonusType.STAT_SCALING, ItemBonusType.STAT_FIXED):
        curve_id = entry.Value_3
        if not curve_id:
            return None
        elif not dbc.curve_point.get(curve_id):
            if bt == ItemBonusType.STAT_FIXED:
                return {'op': 'set', 'group': _GROUP_SCALE, 'item_level': 1}
            return None
        result = {
            'op': 'scale',
            'group': _GROUP_SCALE,
            'curve_id': curve_id,
            'ct_key': 'stat',
        }
        if entry.Value_2:
            result['ct_id'] = entry.Value_2
        return result

    elif bt == ItemBonusType.APPLY_BONUS:
        return {'op': 'apply', 'target': entry.Value_0}

    else:
        return None


def _dedup_entries(entries):
    """Keep only the last entry per group. Entries without a group always kept."""
    seen = {}  # group -> index
    for i, entry in enumerate(entries):
        group = entry.get('group')
        if group is not None:
            seen[group] = i
    return [e for i, e in enumerate(entries)
            if 'group' not in e or seen.get(e['group']) == i]


def _compact_number(v):
    """Convert to int when the value is a whole number."""
    return int(v) if v == int(v) else v


def _export_curve_points(dbc, curve_id):
    """Export curve points as a {x: y, ...} dict sorted by x."""
    points = dbc.curve_point.get(curve_id)
    if not points:
        return None
    sorted_points = sorted(points, key=lambda p: p.Pos_0)
    return {str(_compact_number(p.Pos_0)): _compact_number(p.Pos_1) for p in sorted_points}


if __name__ == '__main__':
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <build>", file=sys.stderr)
        sys.exit(1)

    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s.%(msecs)03d %(levelname)s [%(module)s:%(lineno)d] %(message)s',
        datefmt='%H:%M:%S'
    )

    build = sys.argv[1]
    dbc = DBC(build)

    # Export all bonuses with pre-resolved APPLY_BONUS
    bonuses = {}
    for parent_id, entries in dbc.item_bonus._entries.items():
        sp = max((_sort_priority(e.bonus_type) for e in entries), default=0)
        exported_entries = [_export_bonus(e, dbc) for e in entries]

        # Check for simple APPLY_BONUS redirect
        if len(entries) == 1 and entries[0].bonus_type == ItemBonusType.APPLY_BONUS:
            target_id = entries[0].Value_0
            target_entries = dbc.item_bonus.get(target_id)
            if not any(e.bonus_type == ItemBonusType.APPLY_BONUS for e in target_entries):
                bonuses[str(parent_id)] = {'sort_priority': sp, 'redirect': target_id}
                continue

        # Pre-resolve APPLY_BONUS entries into indirect list
        indirect = []
        direct = []
        for bonus in exported_entries:
            if bonus is None:
                continue
            if bonus['op'] == 'apply':
                target_id = bonus['target']
                for target_entry in dbc.item_bonus.get(target_id):
                    if target_entry.bonus_type != ItemBonusType.APPLY_BONUS:
                        exported = _export_bonus(target_entry, dbc)
                        if exported is not None:
                            indirect.append(exported)
            else:
                direct.append(bonus)

        direct = _dedup_entries(direct)
        indirect = _dedup_entries(indirect)
        if not direct and not indirect:
            continue
        data = {'sort_priority': sp, 'entries': direct}
        if indirect:
            data['indirect'] = indirect
        bonuses[str(parent_id)] = data

    # Collect all referenced curve IDs (for curves still needed at runtime)
    referenced_curve_ids = set()

    # From SCALING_CONFIG/SCALING_CONFIG_2 bonus entries (inlined curve_id)
    for parent_id, entries in dbc.item_bonus._entries.items():
        for entry in entries:
            if entry.bonus_type in (ItemBonusType.SCALING_CONFIG, ItemBonusType.SCALING_CONFIG_2):
                if dbc.item_scaling_config.has(entry.Value_0):
                    sc = dbc.item_scaling_config.get(entry.Value_0)
                    if dbc.item_offset_curve.has(sc.ItemOffsetCurveID):
                        referenced_curve_ids.add(dbc.item_offset_curve.get(sc.ItemOffsetCurveID).CurveID)
            # OFFSET_CURVE results are pre-computed, no runtime curve needed
            elif entry.bonus_type in (ItemBonusType.STAT_SCALING, ItemBonusType.STAT_FIXED):
                if entry.Value_3 and dbc.curve_point.get(entry.Value_3):
                    referenced_curve_ids.add(entry.Value_3)

    # Squish curve
    squish_entry = dbc.item_squish_era.get_midnight()
    squish_curve_id = squish_entry.CurveID
    referenced_curve_ids.add(squish_curve_id)

    # Validate curve types
    for curve_id in referenced_curve_ids:
        curve = dbc.curve.get(curve_id)
        curve_type = CurveType(curve.Type)
        assert curve_type in (CurveType.LINEAR, CurveType.REQ_LEVEL_AND_ITEM_LEVEL), \
            f"Unexpected curve type {curve_type} for curve {curve_id}"

    # Export raw curve points
    curves = {}
    for curve_id in sorted(referenced_curve_ids):
        if curve_id == squish_curve_id:
            continue  # squish curve stored separately
        points = _export_curve_points(dbc, curve_id)
        if points:
            curves[str(curve_id)] = points

    # Squish curve (separate, with special out-of-range handling)
    squish_curve = _export_curve_points(dbc, squish_curve_id)

    # Pre-compute content tuning operations per bonus-type group.
    # Groups: 'sc' (SCALING_CONFIG), 'sc2' (SCALING_CONFIG_2), 'stat' (STAT_SCALING/STAT_FIXED)
    # Operations: ["cap", max], ["clamp", min, max], ["const", val],
    #             ["cap_add", cap, offset], ["cap_add_floor", cap, offset, floor]
    # None = passthrough (omitted from output)
    content_tuning = {}
    for ct_id, entry in dbc.content_tuning._entries.items():
        max_so = entry.MaxLevelScalingOffset
        min_so = entry.MinLevelScalingOffset
        max_lvl = entry.MaxLevelSquish
        min_lvl = entry.MinLevelSquish
        has_flag_4 = bool(entry.Flags & 0x4)
        is_df = entry.HPScalingCurveID in {77585}
        min_with_offset = min_lvl + entry.AllowedMinOffset

        if max_so == 3:
            op = ['cap', 70 + max_lvl]
            ops = {'sc': op, 'sc2': op, 'stat': op}
        elif max_so == 2:
            if max_lvl == 0:
                op = ['const', min_lvl] if min_lvl >= 80 else ['cap', 80]
            elif max_lvl < 0:
                op = ['cap_add_floor', 80, max_lvl, min_lvl] if min_lvl > 80 else ['cap_add', 80, max_lvl]
            else:
                op = ['cap_add', 80, max_lvl] if min_so == 2 else None
            ops = {'sc': op, 'sc2': op, 'stat': op}
        elif max_so == 1:
            ops = {
                'sc': ['clamp', min_lvl, max_lvl],
                'sc2': ['cap', max_lvl + 1],
                'stat': ['cap', max_lvl + 1],
            }
        else:
            # max_scaling_offset == 0 (default) — differs by bonus type group
            # stat group
            if max_lvl <= 0 and (min_lvl <= 0 or has_flag_4):
                stat_op = None
            elif min_lvl > max_lvl > 0:
                stat_op = ['const', min_lvl]
            else:
                stat_op = ['clamp', min_with_offset, max_lvl]
            # sc group
            if has_flag_4:
                sc_op = None
            elif max_lvl > 0:
                sc_op = ['clamp', min_with_offset, max_lvl]
            elif min_lvl > 0:
                sc_op = ['cap', 80]
            else:
                sc_op = None
            # sc2 group
            if is_df:
                sc2_op = None
            elif max_lvl == 0:
                sc2_op = ['cap', 80]
            elif max_lvl < 0:
                sc2_op = None
            else:
                sc2_op = ['clamp', min_with_offset, max_lvl]
            ops = {'sc': sc_op, 'sc2': sc2_op, 'stat': stat_op}

        # Only store entries with at least one non-passthrough operation
        ct_data = {k: v for k, v in ops.items() if v is not None}
        if ct_data:
            content_tuning[str(ct_id)] = ct_data

    # Apply ConditionalContentTuning redirects: merge redirect target ops into parent
    for parent_id, redirects in dbc.conditional_content_tuning._entries.items():
        for redirect in redirects:
            target_ops = content_tuning.get(str(redirect.RedirectContentTuningID), {})
            if redirect.RedirectEnum == 7:
                keys = ('sc', 'sc2', 'stat')
            elif redirect.RedirectEnum == 14:
                keys = ('sc', 'sc2')
            else:
                continue
            parent_key = str(parent_id)
            parent_ops = content_tuning.get(parent_key, {})
            merged = dict(parent_ops)
            for k in keys:
                if k in target_ops:
                    merged[k] = target_ops[k]
                else:
                    merged.pop(k, None)
            if merged:
                content_tuning[parent_key] = merged
            elif parent_key in content_tuning:
                del content_tuning[parent_key]

    # Assemble and write
    addon_data = {
        "build": build,
        "squish_curve": squish_curve,
        "bonuses": bonuses,
        "curves": curves,
        "content_tuning": content_tuning,
    }

    output_path = os.path.join('.cache', build, 'addon_data.json')
    with open(output_path, 'w') as f:
        json.dump(addon_data, f, indent=2)

    logging.info("Wrote addon data to %s", output_path)
    logging.info("Bonuses: %d bonus list IDs", len(bonuses))
    logging.info("Curves: %d curves (%d total points)",
                 len(curves), sum(len(v) for v in curves.values()))
    logging.info("Squish curve: %d points", len(squish_curve))
    logging.info("Content tuning: %d entries", len(content_tuning))
