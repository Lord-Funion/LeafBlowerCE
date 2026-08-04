#include <cstdio>

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
