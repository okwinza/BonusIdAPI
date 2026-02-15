import json
import os
from math import floor
from typing import Optional

from lib.algorithm import Algorithm
from lib.item import Item
from lib.dbc_file import DBC, ItemBonusType

# ItemBonusType values used frequently
_INCREASE_ITEM_LEVEL = ItemBonusType.INCREASE_ITEM_LEVEL.value
_SCALING_CONFIG = ItemBonusType.SCALING_CONFIG.value
_SCALING_CONFIG_2 = ItemBonusType.SCALING_CONFIG_2.value
_OFFSET_CURVE = ItemBonusType.OFFSET_CURVE.value
_MIDNIGHT_ITEM_LEVEL = ItemBonusType.MIDNIGHT_ITEM_LEVEL.value
_BASE_ITEM_LEVEL = ItemBonusType.BASE_ITEM_LEVEL.value
_CRAFTING_QUALITY = ItemBonusType.CRAFTING_QUALITY.value
_STAT_SCALING = ItemBonusType.STAT_SCALING.value
_STAT_FIXED = ItemBonusType.STAT_FIXED.value


class AddonDataAlgorithm(Algorithm):
    def __init__(self, dbc: DBC, build: str):
        self._dbc = dbc

        addon_data_path = os.path.join('.cache', build, 'addon_data.json')
        with open(addon_data_path, 'r') as f:
            data = json.load(f)

        self._bonuses = data['bonuses']
        self._curves = data['curves']
        self._squish_curve = data['squish_curve']
        self._squish_keys = sorted(float(k) for k in self._squish_curve)
        self._content_tuning = data['content_tuning']

    def process_item(self, link: str) -> int:
        base_item_level, has_midnight_scaling = self._dbc.item_sparse.get_info(Item.get_item_id_from_link(link))
        item = Item(link, base_item_level, has_midnight_scaling)

        bonuses: list[dict] = []
        bonus_ids = self._get_bonus_ids(item)

        def collect_bonus(bonus: dict):
            # Eager midnight scaling (inlined)
            bt = bonus['type']
            if bt == _SCALING_CONFIG:
                if bonus['midnight_scaling']:
                    item.has_midnight_scaling = True
            elif bt == _SCALING_CONFIG_2:
                if bonus['midnight_scaling_era']:
                    item.has_midnight_scaling = True
            elif bt == _OFFSET_CURVE:
                if bonus['has_midnight_scaling']:
                    item.has_midnight_scaling = True

            # Dedup
            if bt == _INCREASE_ITEM_LEVEL:
                bonuses.append(bonus)
                return
            group = bonus['group']
            prev_index = next((i for i, b in enumerate(bonuses) if b['group'] == group), None)
            if prev_index is None:
                bonuses.append(bonus)
            else:
                prev_prio = bonuses[prev_index].get('priority')
                new_prio = bonus.get('priority')
                if prev_prio is not None and new_prio is not None:
                    if new_prio <= prev_prio:
                        bonuses[prev_index] = bonus
                else:
                    bonuses[prev_index] = bonus

        # Collect indirect entries first (pre-resolved from APPLY_BONUS targets)
        for bonus_id in bonus_ids:
            for entry in self._get_indirect(bonus_id):
                collect_bonus(entry)
        # Then direct entries (override indirect via last-wins dedup)
        for bonus_id in bonus_ids:
            for entry in self._get_entries(bonus_id):
                collect_bonus(entry)

        if not bonuses:
            if not item.has_midnight_scaling:
                item.item_level = self._get_squish_value(item.item_level)
            return item.item_level

        for bonus in bonuses:
            bt = bonus['type']
            if bt == _INCREASE_ITEM_LEVEL:
                item.item_level = item.item_level + bonus['amount']
            elif bt == _SCALING_CONFIG:
                if bonus['curve_id'] is None:
                    continue
                scaled_item_level = bonus['item_level'] if bonus['item_level'] else (item.modifier_player_level or 80)
                if item.modifier_content_tuning_id and bonus['is_midnight_era']:
                    scaled_item_level = self._apply_content_tuning(scaled_item_level, item.modifier_content_tuning_id, bonus_type=bt)
                item.item_level = self._get_curve_value(bonus['curve_id'], scaled_item_level) + bonus['offset']
                if bonus['midnight_scaling']:
                    item.has_midnight_scaling = True
                elif item.has_midnight_scaling:
                    item.item_level = self._get_squish_value(item.item_level)
            elif bt == _SCALING_CONFIG_2:
                if bonus['curve_id'] is None:
                    continue
                drop_level = item.modifier_player_level or 80
                if item.modifier_content_tuning_id and not item.modifier_player_level:
                    drop_level = self._apply_content_tuning(drop_level, item.modifier_content_tuning_id, bt)
                item.item_level = self._get_curve_value(bonus['curve_id'], drop_level) + bonus['offset']
                if bonus['midnight_scaling_era']:
                    item.has_midnight_scaling = True
                elif item.has_midnight_scaling:
                    item.item_level = self._get_squish_value(item.item_level)
            elif bt == _OFFSET_CURVE:
                item.item_level = bonus['item_level']
                if bonus['has_midnight_scaling']:
                    item.has_midnight_scaling = True
                elif item.has_midnight_scaling:
                    item.item_level = self._get_squish_value(item.item_level)
            elif bt == _MIDNIGHT_ITEM_LEVEL:
                item.item_level += bonus['amount']
            elif bt == _BASE_ITEM_LEVEL:
                item.item_level = bonus['item_level']
            elif bt == _CRAFTING_QUALITY:
                if not item.has_midnight_scaling:
                    item.has_midnight_scaling = True
                    item.item_level = self._get_squish_value(item.item_level)
                item.item_level += bonus['amount']
            elif bt == _STAT_SCALING:
                if bonus['curve_id'] is None:
                    continue
                content_tuning_id = bonus['content_tuning_id']
                drop_level = item.modifier_player_level or 80
                if item.modifier_content_tuning_id:
                    drop_level = self._apply_content_tuning(drop_level, item.modifier_content_tuning_id, bt)
                elif content_tuning_id:
                    drop_level = self._apply_content_tuning(drop_level, content_tuning_id, bt)
                item.item_level = self._get_curve_value(bonus['curve_id'], drop_level)
            elif bt == _STAT_FIXED:
                if bonus['curve_id'] is None:
                    continue
                content_tuning_id = bonus['content_tuning_id']
                drop_level = item.modifier_player_level or 80
                if item.modifier_content_tuning_id:
                    drop_level = self._apply_content_tuning(drop_level, item.modifier_content_tuning_id, bt)
                elif content_tuning_id:
                    drop_level = self._apply_content_tuning(drop_level, content_tuning_id, bt)
                item.item_level = self._get_curve_value(bonus['curve_id'], drop_level)
        item.item_level = max(item.item_level, 1)
        if not item.has_midnight_scaling:
            item.item_level = self._get_squish_value(item.item_level)
        return item.item_level

    def _get_bonus_ids(self, item: Item) -> list[int]:
        bonus_ids = []
        for id in item.bonus_ids:
            data = self._bonuses.get(str(id))
            if data and 'redirect' in data:
                bonus_ids.append(data['redirect'])
            else:
                bonus_ids.append(id)
        bonus_ids.sort(key=lambda id: (self._bonuses.get(str(id), {}).get('sort_priority', 0), id))
        return bonus_ids

    def _get_entries(self, bonus_id: int) -> list:
        data = self._bonuses.get(str(bonus_id))
        return data.get('entries', []) if data else []

    def _get_indirect(self, bonus_id: int) -> list:
        data = self._bonuses.get(str(bonus_id))
        return data.get('indirect', []) if data else []

    def _get_curve_value(self, curve_id: int, value: float) -> int:
        points = self._curves[str(curve_id)]
        return self._interpolate(points, value)

    def _get_squish_value(self, value: float) -> int:
        points = self._squish_curve
        keys = self._squish_keys
        # Above max → 1
        if value > keys[-1]:
            return 1
        return self._interpolate(points, value)

    @staticmethod
    def _interpolate(points: dict, value: float) -> int:
        pairs = sorted(((float(k), v) for k, v in points.items()), key=lambda p: p[0])
        # Find lower (last x <= value) and upper (first x >= value)
        lower = upper = None
        for p in reversed(pairs):
            if p[0] <= value:
                lower = p
                break
        for p in pairs:
            if p[0] >= value:
                upper = p
                break
        lower = lower or upper
        upper = upper or lower
        if lower[0] >= value:
            result = lower[1]
        elif upper[0] < value:
            result = upper[1]
        else:
            slope = (upper[1] - lower[1]) / (upper[0] - lower[0])
            result = lower[1] + slope * (value - lower[0])
        return int(floor(result + 0.5))

    def _get_midnight_squish_curve_point_value(self, value: float) -> int:
        """Alias for test runner compatibility."""
        return self._get_squish_value(value)

    def _apply_content_tuning(self, drop_level: int, content_tuning_id: int, bonus_type: Optional[int] = None) -> int:
        ct = self._content_tuning.get(str(content_tuning_id))
        if not ct:
            return drop_level
        if bonus_type in (_STAT_SCALING, _STAT_FIXED):
            op = ct.get('stat')
        elif bonus_type == _SCALING_CONFIG:
            op = ct.get('sc')
        else:
            op = ct.get('sc2')
        if not op:
            return drop_level
        name = op[0]
        if name == 'cap':
            return min(drop_level, op[1])
        elif name == 'clamp':
            return min(max(drop_level, op[1]), op[2])
        elif name == 'const':
            return op[1]
        elif name == 'cap_add':
            return min(drop_level, op[1]) + op[2]
        elif name == 'cap_add_floor':
            return max(min(drop_level, op[1]) + op[2], op[3])
        return drop_level
