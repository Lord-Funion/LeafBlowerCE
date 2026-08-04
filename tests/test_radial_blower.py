#!/usr/bin/env python3
from pathlib import Path
import re
import unittest

ROOT = Path(__file__).resolve().parents[1]
SOURCE = (ROOT / "src" / "leaf_field.cpp").read_text(encoding="utf-8")
HEADER = (ROOT / "src" / "leaf_field.h").read_text(encoding="utf-8")
MAIN = (ROOT / "src" / "main.cpp").read_text(encoding="utf-8")
UI = (ROOT / "src" / "ui.cpp").read_text(encoding="utf-8")
README = (ROOT / "README.md").read_text(encoding="utf-8")


class RadialBlowerStructureTests(unittest.TestCase):
    def test_blower_has_no_button_gate_or_facing_state(self) -> None:
        combined = HEADER + SOURCE + UI
        self.assertNotIn("bool blowing", combined)
        self.assertNotIn("facing_x", combined)
        self.assertNotIn("facing_y", combined)
        self.assertRegex(MAIN, r"leaf_field_update\(field, state, move_x, move_y\);")

    def test_effect_uses_a_circular_radius_and_radial_impulse(self) -> None:
        self.assertIn("dx * dx + dy * dy <= range_squared", SOURCE)
        self.assertIn("apply_radial_push(leaf, dx, dy, power)", SOURCE)
        self.assertRegex(SOURCE, r"leaf\.vx \+= static_cast<int16_t>\(\(dx \* power\) / normalizer\)")
        self.assertRegex(SOURCE, r"leaf\.vy \+= static_cast<int16_t>\(\(dy \* power\) / normalizer\)")

    def test_controls_document_always_on_operation(self) -> None:
        self.assertIn("Blower is always active", UI)
        self.assertIn("Circular radius pushes leaves outward", UI)
        self.assertNotIn("Hold 2nd to blow leaves", UI)
        self.assertNotIn("Hold `2nd`", README)
        self.assertIn("Continuously push every leaf inside the circular radius", README)


if __name__ == "__main__":
    unittest.main(verbosity=2)
