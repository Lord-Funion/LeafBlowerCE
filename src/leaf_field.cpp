#include "leaf_field.h"

static ResourceId choose_leaf_resource(GameState &state) {
    ResourceId resource = AREA_DEFS[state.current_area].leaf;
    /* The Mountain's documented spawn set contains both Platinum and Bismuth.
       Give Bismuth a distinct, visible minority spawn instead of hiding it in
       a menu grant or leaving that currency unreachable. */
    if(state.current_area == 2U && game_rand(state) % 4U == 0U) resource = RES_BISMUTH;
    return resource;
}

static void spawn_leaf(LeafField &field, GameState &state, LeafParticle &leaf) {
    leaf.x = static_cast<int16_t>((8U + game_rand(state) % 304U) * 16U);
    leaf.y = static_cast<int16_t>((30U + game_rand(state) % 198U) * 16U);
    leaf.vx = static_cast<int16_t>(static_cast<int8_t>(game_rand(state) % 17U) - 8);
    leaf.vy = static_cast<int16_t>(static_cast<int8_t>(game_rand(state) % 17U) - 8);
    leaf.resource = static_cast<uint8_t>(choose_leaf_resource(state));
    leaf.color = RESOURCE_DEFS[leaf.resource].color;
    leaf.phase = static_cast<uint8_t>(game_rand(state) + field.frame);
    leaf.active = true;
}

void leaf_field_init(LeafField &field, GameState &state) {
    field.blower_x = 160 * 16;
    field.blower_y = 130 * 16;
    field.facing_x = 1;
    field.facing_y = 0;
    field.spawn_timer = 0;
    field.frame = 0;
    for(auto &leaf: field.leaves) leaf.active = false;
    uint8_t initial = 24U + static_cast<uint8_t>(game_effect_level(state, EFFECT_SPAWN_RATE) / 2U);
    if(initial > MAX_LEAVES) initial = MAX_LEAVES;
    for(uint8_t i = 0; i < initial; i++) spawn_leaf(field, state, field.leaves[i]);
}

void leaf_field_change_area(LeafField &field, GameState &state) {
    for(auto &leaf: field.leaves) {
        if(leaf.active) {
            leaf.resource = static_cast<uint8_t>(choose_leaf_resource(state));
            leaf.color = RESOURCE_DEFS[leaf.resource].color;
        }
    }
}

static BigNum collected_value(const GameState &state) {
    uint32_t multiplier = game_effect_permille(state, EFFECT_LEAF_VALUE);
    multiplier = static_cast<uint32_t>((static_cast<uint64_t>(multiplier) *
                                       game_effect_permille(state, EFFECT_ALL_REWARDS)) / 1000U);
    if(state.combo > 1) multiplier += state.combo * (10U + game_effect_level(state, EFFECT_COMBO) * 2U);
    multiplier = static_cast<uint32_t>((static_cast<uint64_t>(multiplier) *
                                       game_challenge_output_permille(state)) / 1000U);
    return bn_scale_permille(bn_from_u32(1), multiplier);
}

static void collect_leaf(LeafField &field, GameState &state, LeafParticle &leaf) {
    game_add(state, static_cast<ResourceId>(leaf.resource), collected_value(state));
    if(game_system_unlocked(state, SYS_MATERIALS) && game_rand(state) % 80U == 0)
        game_add(state, RES_MATERIALS, bn_from_u32(1));
    state.combo++;
    if(state.combo > 999) state.combo = 999;
    state.combo_timer = 2;
    spawn_leaf(field, state, leaf);
}

void leaf_field_update(LeafField &field, GameState &state,
                       int8_t move_x, int8_t move_y, bool blowing) {
    field.frame++;
    uint16_t move_speed = static_cast<uint16_t>(24U + game_effect_level(state, EFFECT_MOVE_SPEED) * 3U);
    field.blower_x += move_x * move_speed;
    field.blower_y += move_y * move_speed;
    if(field.blower_x < 8 * 16) field.blower_x = 8 * 16;
    if(field.blower_x > 311 * 16) field.blower_x = 311 * 16;
    if(field.blower_y < 30 * 16) field.blower_y = 30 * 16;
    if(field.blower_y > 231 * 16) field.blower_y = 231 * 16;
    if(move_x || move_y) {
        field.facing_x = move_x;
        field.facing_y = move_y;
    }

    uint8_t desired = 24U + static_cast<uint8_t>(game_effect_level(state, EFFECT_SPAWN_RATE) / 2U);
    if(desired > MAX_LEAVES) desired = MAX_LEAVES;
    if(++field.spawn_timer >= 15) {
        field.spawn_timer = 0;
        uint8_t active = 0;
        for(auto &leaf: field.leaves) if(leaf.active) active++;
        if(active < desired) {
            for(auto &leaf: field.leaves) if(!leaf.active) {
                spawn_leaf(field, state, leaf);
                break;
            }
        }
    }

    const ToolDef &tool = TOOL_DEFS[state.current_tool];
    int32_t range = static_cast<int32_t>(tool.range + game_effect_level(state, EFFECT_BLOW_RANGE) * 2U) * 16;
    int32_t range_squared = range * range;
    int32_t power = static_cast<int32_t>(tool.power_permille / 120U +
                                        game_effect_level(state, EFFECT_BLOW_POWER) * 2U);
    bool auto_active = game_effect_level(state, EFFECT_ALB_COUNT) > 0;

    for(uint8_t i = 0; i < MAX_LEAVES; i++) {
        LeafParticle &leaf = field.leaves[i];
        if(!leaf.active) continue;
        leaf.phase++;
        leaf.vx += static_cast<int16_t>((static_cast<int8_t>((leaf.phase >> 4U) & 3U) - 1) / 2);
        leaf.vy += static_cast<int16_t>((static_cast<int8_t>((leaf.phase >> 5U) & 3U) - 1) / 2);
        int32_t dx = leaf.x - field.blower_x;
        int32_t dy = leaf.y - field.blower_y;
        if(blowing && dx * dx + dy * dy <= range_squared) {
            leaf.vx += static_cast<int16_t>(field.facing_x * power);
            leaf.vy += static_cast<int16_t>(field.facing_y * power);
            if(field.facing_x == 0) leaf.vx += static_cast<int16_t>(dx > 0 ? 2 : -2);
            if(field.facing_y == 0) leaf.vy += static_cast<int16_t>(dy > 0 ? 2 : -2);
        }
        if(auto_active && (field.frame + i * 11U) % 90U < game_effect_level(state, EFFECT_ALB_COUNT)) {
            int16_t cx = 160 * 16;
            int16_t cy = 130 * 16;
            leaf.vx += static_cast<int16_t>(leaf.x < cx ? -game_effect_permille(state, EFFECT_ALB_POWER) / 100U
                                                        : game_effect_permille(state, EFFECT_ALB_POWER) / 100U);
            leaf.vy += static_cast<int16_t>(leaf.y < cy ? -2 : 2);
        }
        leaf.vx = static_cast<int16_t>(leaf.vx * 15 / 16);
        leaf.vy = static_cast<int16_t>(leaf.vy * 15 / 16);
        leaf.x += leaf.vx;
        leaf.y += leaf.vy;
        const bool outside = leaf.x < -4 * 16 || leaf.x > 324 * 16 ||
                             leaf.y < 20 * 16 || leaf.y > 244 * 16;
        if(AREA_DEFS[state.current_area].leaf == RES_WATER_LEAVES) {
            const bool in_container = leaf.x >= 278 * 16 && leaf.x <= 316 * 16 &&
                                      leaf.y >= 65 * 16 && leaf.y <= 198 * 16;
            if(in_container) collect_leaf(field, state, leaf);
            else if(outside) spawn_leaf(field, state, leaf);
        } else if(outside) {
            collect_leaf(field, state, leaf);
        }
    }
}
