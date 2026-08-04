#!/usr/bin/env python3
"""Host-side structural and arithmetic verification for the CE release."""

from __future__ import annotations

import re
import struct
import unittest
import zlib
from dataclasses import dataclass
from decimal import Decimal, getcontext
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
BINARY = ROOT / "bin" / "LBRCE.8xp"
MAP = ROOT / "bin" / "LBRCE.map"
getcontext().prec = 40


EXPECTED_AREAS = [
    "Home Garden", "Neighbors' Garden", "Mountain", "Space", "THE VOID", "The Abyss",
    "The Celestial Plane", "The Mythical Garden", "The Volcano", "The Abandoned Research Station",
    "The Hidden Sea", "Leafsink Harbor", "The Leaf Tower", "The Moon", "The Infernal Desert",
    "The Cursed Pyramid", "The Inner Cursed Pyramid", "Kokkaupunki", "Cursed Kokkaupunki",
    "The Dark Glade", "Black Leaf Hole", "Dicey Meadows", "Glinting Thicket", "Fish Pond",
    "Industrial Harbor", "The Cheese Pub", "Your House", "Biotite Forest", "The Exalted Bridge",
    "The Ancient Sanctum", "Vilewood Cemetery", "The Lone Tree", "Spark Range", "Spark Bubble",
    "Spark Portal", "Energy Shrine", "Plasma Forest", "Blue Planet Edge", "Green Planet Edge",
    "Red Planet Edge", "Purple Planet Edge", "Black Planet Edge", "Terror Graveyard",
    "Energy Singularity", "Fire Fields Portal", "The Shadow Cavern", "The Coal Mine",
    "Mount Moltenfury", "The Fire Temple", "Flame Brazier", "The Fire Universe", "Soul Portal",
    "Soul Temple", "Soul Crypt", "The Hollow", "Soul Forge", "The Fabric of the Leafverse",
    "Quark Portal", "Primordial Ethos", "Quark Nexus", "Quantum Aether", "Astral Oasis",
    "Dimensional Tapestry", "Planck Scope", "Ante Leafton", "The Leafton Pit", "Shadow Crystal",
    "Tenebris Field", "Blacklight Verge", "Sombrynth", "Latsyrc Wodash", "Shadow Lighthouse",
    "Spiral Walk", "Cursed Halloween", "Farm Field", "Butterfly Field", "Vial of Life",
    "The Doomed Tree",
]


@dataclass(frozen=True)
class Number:
    mantissa: int
    exponent: int

    @staticmethod
    def normalize(mantissa: int, exponent: int) -> "Number":
        if mantissa <= 0:
            return Number(0, 0)
        while mantissa >= 10_000_000:
            mantissa = (mantissa + 5) // 10
            exponent += 1
        while mantissa < 1_000_000:
            mantissa *= 10
            exponent -= 1
        return Number(mantissa, exponent)

    @staticmethod
    def integer(value: int) -> "Number":
        return Number.normalize(value, 6)

    def decimal(self) -> Decimal:
        if self.mantissa == 0:
            return Decimal(0)
        return Decimal(self.mantissa) / Decimal(1_000_000) * (Decimal(10) ** self.exponent)

    def add(self, other: "Number") -> "Number":
        left, right = self, other
        if left.mantissa == 0:
            return right
        if right.mantissa == 0:
            return left
        if left.exponent < right.exponent:
            left, right = right, left
        difference = left.exponent - right.exponent
        if difference > 7:
            return left
        return Number.normalize(left.mantissa + right.mantissa // (10**difference), left.exponent)

    def multiply(self, other: "Number") -> "Number":
        if self.mantissa == 0 or other.mantissa == 0:
            return Number(0, 0)
        product = self.mantissa * other.mantissa
        return Number.normalize((product + 500_000) // 1_000_000, self.exponent + other.exponent)

    def divide(self, other: "Number") -> "Number":
        if other.mantissa == 0:
            return Number(9_999_999, 30_000)
        if self.mantissa == 0:
            return Number(0, 0)
        numerator = self.mantissa * 1_000_000
        return Number.normalize((numerator + other.mantissa // 2) // other.mantissa,
                                self.exponent - other.exponent)


class ArithmeticTests(unittest.TestCase):
    def assert_close(self, actual: Number, expected: Decimal) -> None:
        difference = abs(actual.decimal() - expected)
        tolerance = max(abs(expected) * Decimal("0.000002"), Decimal("0.0000001"))
        self.assertLessEqual(difference, tolerance)

    def test_integer_operations(self) -> None:
        values = [1, 7, 10, 99, 1_000, 65_535, 1_000_000, 4_000_000_000]
        for left in values:
            for right in values:
                a, b = Number.integer(left), Number.integer(right)
                self.assert_close(a.add(b), Decimal(left + right))
                self.assert_close(a.multiply(b), Decimal(left) * Decimal(right))
                self.assert_close(a.divide(b), Decimal(left) / Decimal(right))

    def test_divide_by_zero_saturates(self) -> None:
        self.assertEqual(Number.integer(1).divide(Number(0, 0)), Number(9_999_999, 30_000))

    def test_crc32_known_vector(self) -> None:
        self.assertEqual(zlib.crc32(b"123456789") & 0xFFFFFFFF, 0xCBF43926)


class ContentTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.content = (SRC / "content.cpp").read_text(encoding="utf-8")
        cls.header = (SRC / "content.h").read_text(encoding="utf-8")

    def array_block(self, declaration: str, following: str) -> str:
        return self.content.split(declaration, 1)[1].split(following, 1)[0]

    def test_all_78_current_area_rows_are_present_in_order(self) -> None:
        block = self.array_block("const AreaDef AREA_DEFS[] = {", "const uint8_t AREA_COUNT")
        names = re.findall(r'^\s*\{"([^"]+)"', block, re.MULTILINE)
        self.assertEqual(names, EXPECTED_AREAS)

    def test_definition_counts_match_enums(self) -> None:
        resource_enum = self.header.split("enum ResourceId", 1)[1].split("RESOURCE_COUNT", 1)[0]
        resource_count = len(re.findall(r"\bRES_[A-Z0-9_]+\b", resource_enum))
        resource_block = self.array_block("const ResourceDef RESOURCE_DEFS[RESOURCE_COUNT] = {",
                                          "const char *const SYSTEM_NAMES")
        self.assertEqual(len(re.findall(r'\{"[^"]+",\s*"[^"]+"', resource_block)), resource_count)

        system_enum = self.header.split("enum SystemId", 1)[1].split("SYSTEM_COUNT", 1)[0]
        system_count = len(re.findall(r"\bSYS_[A-Z0-9_]+\b", system_enum))
        system_block = self.array_block("const char *const SYSTEM_NAMES[SYSTEM_COUNT] = {",
                                        "const AreaDef AREA_DEFS")
        self.assertEqual(len(re.findall(r'"[^"]+"', system_block)), system_count)
        self.assertLessEqual(system_count, 64)

    def test_no_unfinished_markers_in_release_source(self) -> None:
        marker = re.compile(r"\b(TODO|FIXME|XXX|STUB|PLACEHOLDER)\b", re.IGNORECASE)
        for path in SRC.glob("*.[ch]*"):
            self.assertIsNone(marker.search(path.read_text(encoding="utf-8")), path.name)


class ChallengeIsolationTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.header = (SRC / "game_state.h").read_text(encoding="utf-8")
        cls.game = (SRC / "game_state.cpp").read_text(encoding="utf-8")
        cls.save = (SRC / "save.cpp").read_text(encoding="utf-8")

    def test_snapshot_covers_all_persistent_gameplay_domains(self) -> None:
        snapshot = self.header.split("struct ChallengeSnapshot", 1)[1].split("struct GameState", 1)[0]
        required = [
            "resources", "lifetime", "upgrade_levels", "area_unlocks", "system_unlocks",
            "tool_unlocks", "pet_unlocks", "achievements", "challenge_completions",
            "current_area", "current_tool", "current_pet", "selected_resource", "crafted",
            "trades", "bank_balance", "trade_refresh_time", "borbventure_finish_time",
            "artifact_ready_time", "play_seconds", "rng_state", "tower_floor", "pyramid_floor",
            "mine_depth", "fishing_level", "death_book_level", "galaxy_stage", "combo",
            "combo_timer", "quarkstiges_consecutive", "quarkstiges_total", "ulc_sacrifice_mask",
        ]
        for field in required:
            self.assertRegex(snapshot, rf"\b{field}\b")
            self.assertGreaterEqual(self.game.count(f"challenge_snapshot.{field}"), 2, field)

    def test_challenge_start_is_clean_and_goals_are_local(self) -> None:
        start = self.game.split("static void initialize_challenge_universe", 1)[1].split(
            "bool game_start_challenge", 1)[0]
        for reset in [
            "state.resources", "state.lifetime", "state.upgrade_levels", "state.area_unlocks",
            "state.crafted", "state.trades",
        ]:
            self.assertIn(f"std::memset({reset}", start)
        for reset in ["state.system_unlocks = 0", "state.pet_unlocks = 0",
                      "state.achievements = 0", "state.challenge_completions = 0",
                      "state.bank_balance = bn_zero()", "state.tower_floor = 0"]:
            self.assertIn(reset, start)

        goals = self.game.split("static bool challenge_goal_met", 1)[1].split(
            "bool game_finish_challenge", 1)[0]
        self.assertIn("state.upgrade_levels[PROG_TRADE_COMPLETIONS] >= 10U", goals)
        finish = self.game.split("bool game_finish_challenge", 1)[1].split(
            "void game_abandon_challenge", 1)[0]
        self.assertNotIn("goal_system", finish)

    def test_challenge_rules_are_enforced_in_core(self) -> None:
        self.assertIn("effect == EFFECT_ALB_COUNT || effect == EFFECT_ALB_POWER", self.game)
        self.assertIn("challenge_active(state, CHALLENGE_PETLESS)) return false", self.game)
        self.assertIn("challenge_active(state, CHALLENGE_NO_PRESTIGE) && tier == RESET_PRESTIGE", self.game)
        output = self.game.split("uint16_t game_challenge_output_permille", 1)[1].split(
            "BigNum game_upgrade_cost", 1)[0]
        self.assertIn("CHALLENGE_REDUCED_PRODUCTION", output)
        self.assertIn("CHALLENGE_HALF_PRODUCTION", output)
        self.assertIn("return 500U", output)

    def test_save_v2_migrates_v1_and_persists_new_state(self) -> None:
        self.assertIn("constexpr uint16_t SAVE_FORMAT_VERSION_V1 = 1", self.save)
        self.assertIn("constexpr uint16_t SAVE_FORMAT_VERSION = 2", self.save)
        self.assertIn("struct __attribute__((packed)) SavePayloadV2", self.save)
        migration = self.save.split("void unpack_payload_v1", 1)[1].split(
            "void unpack_payload_v2", 1)[0]
        self.assertIn("game_abandon_challenge(state)", migration)
        for field in ["quarkstiges_consecutive", "quarkstiges_total", "ulc_sacrifice_mask"]:
            self.assertGreaterEqual(self.save.count(field), 8, field)


class ProgressionResetTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.game = (SRC / "game_state.cpp").read_text(encoding="utf-8")
        cls.field = (SRC / "leaf_field.cpp").read_text(encoding="utf-8")
        cls.header = (SRC / "game_state.h").read_text(encoding="utf-8")
        cls.content = (SRC / "content.cpp").read_text(encoding="utf-8")
        cls.ui = (SRC / "ui.cpp").read_text(encoding="utf-8")
        cls.validation = (SRC / "validation.cpp").read_text(encoding="utf-8")
        cls.main = (SRC / "main.cpp").read_text(encoding="utf-8")

    def test_bismuth_has_a_visible_collectible_path(self) -> None:
        self.assertIn("state.current_area == 2U", self.field)
        self.assertIn("resource = RES_BISMUTH", self.field)
        self.assertIn("leaf.resource", self.field)
        self.assertIn("game_add(state, static_cast<ResourceId>(leaf.resource)", self.field)

    def test_reset_rewards_require_current_run_progress(self) -> None:
        rewards = self.game.split("BigNum game_reset_reward", 1)[1].split(
            "bool game_can_reset", 1)[0]
        self.assertIn("state.resources[RES_LEAVES]", rewards)
        self.assertIn("state.resources[RES_STRANGE_FLASK]", rewards)
        self.assertNotIn("state.lifetime[RES_LEAVES]", rewards)
        self.assertNotIn("state.lifetime[RES_STRANGE_FLASK]", rewards)

    def test_reset_preservation_and_local_quarkstige_are_explicit(self) -> None:
        reset = self.game.split("bool game_apply_reset", 1)[1].split(
            "static BigNum passive_rate", 1)[0]
        blc = reset.split("tier == RESET_BLC", 1)[1].split("tier == RESET_MLC", 1)[0]
        self.assertNotIn("area_unlocks", blc)
        self.assertIn("saved_printer", blc)
        self.assertIn("clear_trades(state)", reset)
        self.assertIn("EFFECT_STABLE_AREAS", reset)
        self.assertIn("state.resources[RES_QUARK_LEAVES] = bn_zero()", reset)
        self.assertIn("state.quarkstiges_consecutive++", reset)
        self.assertIn("state.quarkstiges_total++", reset)

    def test_ulc_has_ten_family_saved_planner(self) -> None:
        enum = self.header.split("enum UlcSacrifice", 1)[1].split(
            "ULC_SACRIFICE_COUNT", 1)[0]
        self.assertEqual(len(re.findall(r"\bULC_SAC_[A-Z_]+\b", enum)), 10)
        self.assertIn("Less Sacrifices", self.content)
        self.assertIn("Stable Areas", self.content)
        self.assertIn("SCREEN_ULC_SACRIFICES", self.ui)
        self.assertIn("game_toggle_ulc_sacrifice", self.ui)
        for family in ["BORBVENTURES", "CARDS", "CRAFTED_LEAVES", "DICE", "EQUIPMENT",
                       "LEAFSCENSIONS", "MATERIALS", "MINES", "QUARKSTIGES", "RELICS"]:
            self.assertIn(f"ULC_SAC_{family}", self.game)

    def test_compiled_startup_self_test_exercises_progression(self) -> None:
        self.assertIn("runtime_self_test(state)", self.main)
        for test in ["test_new_game_and_shop", "test_resets", "test_challenges",
                     "test_offline_and_saturation"]:
            self.assertIn(f"{test}(scratch)", self.validation)


class ArtifactTests(unittest.TestCase):
    def test_binary_is_a_ti_transfer_file(self) -> None:
        data = BINARY.read_bytes()
        self.assertGreater(len(data), 20_000)
        self.assertLess(len(data), 65_536)
        self.assertEqual(data[:8], b"**TI83F*")
        data_length = struct.unpack_from("<H", data, 53)[0]
        self.assertEqual(55 + data_length + 2, len(data))
        expected_checksum = struct.unpack_from("<H", data, 55 + data_length)[0]
        self.assertEqual(sum(data[55:55 + data_length]) & 0xFFFF, expected_checksum)

    def test_bss_budget(self) -> None:
        text = MAP.read_text(encoding="utf-8", errors="replace")
        match = re.search(r"0x([0-9a-fA-F]+)\s+___bss_len", text)
        self.assertIsNotNone(match)
        self.assertLessEqual(int(match.group(1), 16), 50 * 1024)

    def test_runtime_dependencies_are_exact(self) -> None:
        text = MAP.read_text(encoding="utf-8", errors="replace")
        found = set(re.findall(r"__libload_library_([A-Z0-9]+)", text))
        self.assertEqual(found, {"FILEIOC", "GRAPHX", "KEYPADC"})

    def test_save_recovery_guards_are_compiled(self) -> None:
        save = (SRC / "save.cpp").read_text(encoding="utf-8")
        self.assertIn("sequence_newer(1U, 0xFFFFFFFFUL)", save)
        self.assertIn("crc32_compute(&record.payload", save)
        self.assertIn("SAVE_TEMP_NAME", save)
        self.assertIn("SAVE_BACKUP_NAME", save)


if __name__ == "__main__":
    unittest.main(verbosity=2)
