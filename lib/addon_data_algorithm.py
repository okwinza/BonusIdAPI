import json
import os
from math import floor

from lib.algorithm import Algorithm
from lib.item import Item
from lib.dbc_file import DBC


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
        base_item_level, has_midnight_scaling = self._dbc.item_sparse.get_info(self.get_item_id_from_link(link))
        item = Item(link, base_item_level, has_midnight_scaling)

        bonuses: list[dict] = []
        bonus_ids = self._get_bonus_ids(item)

        def collect_bonus(bonus: dict):
            if bonus.get('midnight') == 'set':
                item.has_midnight_scaling = True

            group = bonus.get('group')
            if group is None:
                bonuses.append(bonus)
                return
            prev_index = next((i for i, b in enumerate(bonuses) if b.get('group') == group), None)
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
            op = bonus['op']
            if op == 'add':
                if bonus.get('midnight') == 'force' and not item.has_midnight_scaling:
                    item.has_midnight_scaling = True
                    item.item_level = self._get_squish_value(item.item_level)
                item.item_level += bonus['amount']
            elif op == 'set':
                item.item_level = bonus['item_level']
            elif op == 'scale':
                drop_level = bonus.get('default_level') or item.modifier_player_level or 80
                if 'ct_key' in bonus:
                    ct = item.modifier_content_tuning_id or bonus.get('ct_id')
                    if ct and (not bonus.get('ct_default_only') or not item.modifier_player_level):
                        drop_level = self._apply_content_tuning(drop_level, ct, bonus['ct_key'])
                item.item_level = self._get_curve_value(bonus['curve_id'], drop_level) + bonus.get('offset', 0)

            # Unified post-op midnight handling
            midnight = bonus.get('midnight')
            if midnight == 'set':
                item.has_midnight_scaling = True
            elif midnight == 'squish' and item.has_midnight_scaling:
                item.item_level = self._get_squish_value(item.item_level)

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

    def _apply_content_tuning(self, drop_level: int, content_tuning_id: int, ct_key: str) -> int:
        ct = self._content_tuning.get(str(content_tuning_id))
        if not ct:
            return drop_level
        op = ct.get(ct_key)
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
