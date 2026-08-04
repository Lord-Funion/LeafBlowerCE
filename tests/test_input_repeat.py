#!/usr/bin/env python3
"""Structural checks for calculator menu key-repeat behavior."""

from __future__ import annotations

import pathlib
import re
import unittest

ROOT = pathlib.Path(__file__).resolve().parents[1]
SOURCE = (ROOT / "src" / "input.cpp").read_text(encoding="utf-8")


class InputRepeatTests(unittest.TestCase):
    def test_repeat_is_limited_to_arrow_group(self) -> None:
        self.assertIn("constexpr uint8_t ARROW_GROUP = 7;", SOURCE)
        self.assertIn("kb_Up, kb_Down, kb_Left, kb_Right", SOURCE)
        self.assertRegex(
            SOURCE,
            r"const bool repeated = group == ARROW_GROUP &&\s*\(repeat_pulse & key\) != 0;",
        )

    def test_repeat_has_delay_and_interval(self) -> None:
        delay = re.search(r"INITIAL_REPEAT_DELAY = (\d+);", SOURCE)
        interval = re.search(r"REPEAT_INTERVAL = (\d+);", SOURCE)
        self.assertIsNotNone(delay)
        self.assertIsNotNone(interval)
        self.assertGreaterEqual(int(delay.group(1)), 8)
        self.assertGreaterEqual(int(interval.group(1)), 2)

    def test_action_keys_remain_edge_triggered(self) -> None:
        pressed = SOURCE.split("bool input_pressed", 1)[1].split("bool input_released", 1)[0]
        self.assertIn("newly_pressed || repeated", pressed)
        self.assertIn("group == ARROW_GROUP", pressed)
        self.assertNotIn("kb_Enter", SOURCE)
        self.assertNotIn("kb_Clear", SOURCE)
        self.assertNotIn("kb_2nd", SOURCE)


if __name__ == "__main__":
    unittest.main(verbosity=2)
