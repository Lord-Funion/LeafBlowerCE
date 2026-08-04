#!/usr/bin/env python3
from pathlib import Path


def replace_once(path: str, old: str, new: str) -> None:
    file_path = Path(path)
    text = file_path.read_text(encoding="utf-8")
    if text.count(old) != 1:
        raise SystemExit(f"Expected exactly one match in {path}: {old[:80]!r}")
    file_path.write_text(text.replace(old, new), encoding="utf-8")


replace_once(
    "src/leaf_field.h",
    """    int16_t blower_x;
    int16_t blower_y;
    int8_t facing_x;
    int8_t facing_y;
    uint8_t spawn_timer;
""",
    """    int16_t blower_x;
    int16_t blower_y;
    uint8_t spawn_timer;
""",
)
replace_once(
    "src/leaf_field.h",
    """void leaf_field_update(LeafField &field, GameState &state,
                       int8_t move_x, int8_t move_y, bool blowing);
""",
    """void leaf_field_update(LeafField &field, GameState &state,
                       int8_t move_x, int8_t move_y);
""",
)

replace_once(
    "src/leaf_field.cpp",
    """    field.blower_x = 160 * 16;
    field.blower_y = 130 * 16;
    field.facing_x = 1;
    field.facing_y = 0;
    field.spawn_timer = 0;
""",
    """    field.blower_x = 160 * 16;
    field.blower_y = 130 * 16;
    field.spawn_timer = 0;
""",
)
replace_once(
    "src/leaf_field.cpp",
    """void leaf_field_update(LeafField &field, GameState &state,
                       int8_t move_x, int8_t move_y, bool blowing) {
""",
    """static int32_t absolute_value(int32_t value) {
    return value < 0 ? -value : value;
}

static void apply_radial_push(LeafParticle &leaf, int32_t dx, int32_t dy, int32_t power) {
    int32_t normalizer = absolute_value(dx);
    int32_t abs_y = absolute_value(dy);
    if(abs_y > normalizer) normalizer = abs_y;

    /* A leaf exactly at the player has no geometric outward direction. Reuse
       its existing motion when possible; otherwise give it a deterministic
       nudge so it cannot remain pinned at the center. */
    if(normalizer == 0) {
        dx = leaf.vx;
        dy = leaf.vy;
        normalizer = absolute_value(dx);
        abs_y = absolute_value(dy);
        if(abs_y > normalizer) normalizer = abs_y;
        if(normalizer == 0) {
            leaf.vx += static_cast<int16_t>(power);
            return;
        }
    }

    /* Both components use the same divisor, preserving the displacement
       vector's direction while avoiding floating-point math on the CE. */
    leaf.vx += static_cast<int16_t>((dx * power) / normalizer);
    leaf.vy += static_cast<int16_t>((dy * power) / normalizer);
}

void leaf_field_update(LeafField &field, GameState &state,
                       int8_t move_x, int8_t move_y) {
""",
)
replace_once(
    "src/leaf_field.cpp",
    """    if(move_x || move_y) {
        field.facing_x = move_x;
        field.facing_y = move_y;
    }

""",
    "",
)
replace_once(
    "src/leaf_field.cpp",
    """        if(blowing && dx * dx + dy * dy <= range_squared) {
            leaf.vx += static_cast<int16_t>(field.facing_x * power);
            leaf.vy += static_cast<int16_t>(field.facing_y * power);
            if(field.facing_x == 0) leaf.vx += static_cast<int16_t>(dx > 0 ? 2 : -2);
            if(field.facing_y == 0) leaf.vy += static_cast<int16_t>(dy > 0 ? 2 : -2);
        }
""",
    """        if(dx * dx + dy * dy <= range_squared) {
            apply_radial_push(leaf, dx, dy, power);
        }
""",
)

replace_once(
    "src/main.cpp",
    "leaf_field_update(field, state, move_x, move_y, input_down(input, 1, kb_2nd));",
    "leaf_field_update(field, state, move_x, move_y);",
)

replace_once(
    "src/ui.cpp",
    """    gfx_SetColor(COLOR_ORANGE);
    gfx_FillTriangle(px + field.facing_x * 5, py + field.facing_y * 5,
                     px + field.facing_x * 13 + field.facing_y * 4,
                     py + field.facing_y * 13 - field.facing_x * 4,
                     px + field.facing_x * 13 - field.facing_y * 4,
                     py + field.facing_y * 13 + field.facing_x * 4);
""",
    """    gfx_SetColor(COLOR_ORANGE);
    gfx_Circle(px, py, 9);
    gfx_Circle(px, py, 10);
""",
)
replace_once(
    "src/ui.cpp",
    """    const char *const lines[] = {
            "Field: arrows move the blower", "Hold 2nd to blow leaves", "Enter opens the main menu",
            "Menus: arrows move focus", "Enter buys, equips, or activates", "Left/right changes shop category",
            "Clear returns; on field it saves/exits", "2nd: confirm/craft/ULC plan/abandon", "Mode returns directly to the field"
    };
""",
    """    const char *const lines[] = {
            "Field: arrows move the blower", "Blower is always active", "Circular radius pushes leaves outward",
            "Enter opens the main menu", "Menus: arrows move focus", "Enter buys, equips, or activates",
            "Left/right changes shop category", "2nd: confirm/craft/ULC/abandon", "Mode: field  Clear: back/exit"
    };
""",
)

replace_once(
    "README.md",
    """| Leaf field | Arrow keys | Move and aim the blower |
| Leaf field | Hold `2nd` | Blow leaves |
""",
    """| Leaf field | Arrow keys | Move the blower; movement direction does not aim airflow |
| Leaf field | Automatic | Continuously push every leaf inside the circular radius directly away from the player |
""",
)
replace_once(
    "README.md",
    "Push ordinary leaves offscreen to collect them, buy field upgrades and tools, then Prestige for Coins.",
    "The blower runs continuously: every leaf inside its circular radius is pushed directly away from the player, independent of movement direction. Push ordinary leaves offscreen to collect them, buy field upgrades and tools, then Prestige for Coins.",
)

replace_once(
    "docs/ARCHITECTURE.md",
    """Ordinary leaves are collected at screen boundaries. Water Leaves only collect inside the Industrial Harbor job container. Autoblowers, printers, converters, seeds, materials, fishing, Harbor, Death Book, banks, and Quark progression have bulk or passive paths, including capped offline equivalents.
""",
    """The player blower is continuously active. Every particle inside its Euclidean circular radius receives an impulse along the particle-minus-player displacement vector, so movement direction and prior facing never aim the airflow. Ordinary leaves are collected at screen boundaries. Water Leaves only collect inside the Industrial Harbor job container. Autoblowers, printers, converters, seeds, materials, fishing, Harbor, Death Book, banks, and Quark progression have bulk or passive paths, including capped offline equivalents.
""",
)

Path("tests/radial_blower_host.cpp").write_text(r'''#include <cstdio>

#include "leaf_field.h"

namespace {

int magnitude(int value) {
    return value < 0 ? -value : value;
}

void place_leaf(LeafField &field, uint8_t index, int32_t dx, int32_t dy) {
    LeafParticle &leaf = field.leaves[index];
    leaf.x = static_cast<int16_t>(field.blower_x + dx);
    leaf.y = static_cast<int16_t>(field.blower_y + dy);
    leaf.vx = 0;
    leaf.vy = 0;
    leaf.resource = RES_LEAVES;
    leaf.color = 0;
    leaf.phase = 0;
    leaf.active = true;
}

int fail(const char *message) {
    std::fprintf(stderr, "radial blower test failed: %s\n", message);
    return 1;
}

} // namespace

int main() {
    static GameState state;
    static LeafField field;
    game_new(state, 123U);
    leaf_field_init(field, state);
    for(auto &leaf: field.leaves) leaf.active = false;
    field.blower_x = 160 * 16;
    field.blower_y = 130 * 16;
    field.spawn_timer = 0;

    place_leaf(field, 0, 10 * 16, 0);
    place_leaf(field, 1, -10 * 16, 0);
    place_leaf(field, 2, 0, 10 * 16);
    place_leaf(field, 3, 0, -10 * 16);
    place_leaf(field, 4, 12 * 16, 6 * 16);
    place_leaf(field, 5, 20 * 16, 20 * 16); // inside a square, outside the circular radius
    place_leaf(field, 6, 24 * 16, 0);       // exactly on the Hands radius

    leaf_field_update(field, state, 0, 0);

    if(field.leaves[0].vx <= 0 || field.leaves[0].vy != 0) return fail("right leaf did not move right");
    if(field.leaves[1].vx >= 0 || field.leaves[1].vy != 0) return fail("left leaf did not move left");
    if(field.leaves[2].vy <= 0 || field.leaves[2].vx != 0) return fail("lower leaf did not move down");
    if(field.leaves[3].vy >= 0 || field.leaves[3].vx != 0) return fail("upper leaf did not move up");
    if(field.leaves[4].vx <= 0 || field.leaves[4].vy <= 0) return fail("diagonal leaf did not move outward");
    if(magnitude(field.leaves[4].vx - 2 * field.leaves[4].vy) > 1)
        return fail("diagonal impulse did not preserve the radial direction");
    if(field.leaves[5].vx != 0 || field.leaves[5].vy != 0)
        return fail("square-corner leaf was incorrectly included in the circular radius");
    if(field.leaves[6].vx <= 0) return fail("leaf on the radius boundary was not affected");

    for(auto &leaf: field.leaves) leaf.active = false;
    field.blower_x = 160 * 16;
    field.blower_y = 130 * 16;
    place_leaf(field, 0, 10 * 16, 0);
    leaf_field_update(field, state, -1, 0);
    if(field.leaves[0].vx <= 0)
        return fail("moving left incorrectly aimed the airflow left");

    std::puts("radial blower test passed");
    return 0;
}
''', encoding="utf-8")

Path("tests/test_radial_blower.py").write_text(r'''#!/usr/bin/env python3
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
''', encoding="utf-8")

replace_once(
    ".github/workflows/verify.yml",
    """          COMMON="src/big_num.cpp src/content.cpp src/game_state.cpp src/systems.cpp src/validation.cpp"
          g++ -std=c++17 -Wall -Wextra -Werror -O2 -Isrc tests/reset_self_test_host.cpp $COMMON -o reset_self_test
          g++ -std=c++17 -Wall -Wextra -Werror -O2 -Isrc tests/runtime_self_test_host.cpp $COMMON -o runtime_self_test

      - name: Execute detailed reset test
        run: ./reset_self_test

      - name: Execute calculator runtime self-test
        run: ./runtime_self_test
""",
    """          COMMON="src/big_num.cpp src/content.cpp src/game_state.cpp src/systems.cpp src/validation.cpp"
          g++ -std=c++17 -Wall -Wextra -Werror -O2 -Isrc tests/reset_self_test_host.cpp $COMMON -o reset_self_test
          g++ -std=c++17 -Wall -Wextra -Werror -O2 -Isrc tests/runtime_self_test_host.cpp $COMMON -o runtime_self_test
          g++ -std=c++17 -Wall -Wextra -Werror -O2 -Isrc tests/radial_blower_host.cpp $COMMON src/leaf_field.cpp -o radial_blower_test

      - name: Execute detailed reset test
        run: ./reset_self_test

      - name: Execute calculator runtime self-test
        run: ./runtime_self_test

      - name: Execute radial blower gameplay test
        run: ./radial_blower_test
""",
)

Path(".github/workflows/apply-radial-blower.yml").unlink()
Path(__file__).unlink()
