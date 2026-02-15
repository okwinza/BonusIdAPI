import re

class Item:
    _DROP_LEVEL_MODIFIER_TYPE = 9
    _CONTENT_TUNING_ID_MODIFIER_TYPE = 28

    @staticmethod
    def get_item_id_from_link(link: str) -> int:
        return int(re.search(r"item:([0-9]+):", link).group(1))

    def __init__(self, link: str, base_item_level: int, has_midnight_scaling: bool = False):
        self.item_level = base_item_level
        self.has_midnight_scaling = has_midnight_scaling

        item_string_parts = [p for p in link.split(':')[14:] if not p.startswith("|h")]
        num_bonus_ids = int(item_string_parts.pop(0)) if len(item_string_parts) > 0 and item_string_parts[0] else 0
        self.bonus_ids = [int(item_string_parts.pop(0)) for _ in range(num_bonus_ids)]

        num_modifiers = int(item_string_parts.pop(0)) if len(item_string_parts) > 0 and item_string_parts[0] else 0
        self.modifier_player_level = 0
        self.modifier_content_tuning_id = 0
        for _ in range(num_modifiers):
            modifier_type = int(item_string_parts.pop(0))
            modifier_value = int(item_string_parts.pop(0))
            if modifier_type == self._DROP_LEVEL_MODIFIER_TYPE:
                self.modifier_player_level = modifier_value
            elif modifier_type == self._CONTENT_TUNING_ID_MODIFIER_TYPE:
                self.modifier_content_tuning_id = modifier_value
