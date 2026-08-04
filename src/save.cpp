#include "save.h"

#include <cstddef>
#include <cstdint>
#include <cstring>

#include <fileioc.h>
#include <sys/rtc.h>

#include "crc32.h"
#include "systems.h"

namespace {

constexpr uint16_t SAVE_FORMAT_VERSION_V1 = 1;
constexpr uint16_t SAVE_FORMAT_VERSION = 2;
constexpr uint16_t GAME_STATE_VERSION_V1 = 2;
constexpr char SAVE_MAGIC[4] = {'L', 'W', 'C', 'E'};

struct __attribute__((packed)) WireBigNum {
    uint32_t mantissa;
    int16_t exponent;
};

struct __attribute__((packed)) WireCraftedItem {
    uint8_t leaf_tier;
    uint8_t quality;
    uint8_t property;
    uint8_t level;
    uint8_t equipped;
};

struct __attribute__((packed)) WireTradeOffer {
    uint8_t input_resource;
    uint8_t output_resource;
    WireBigNum input_amount;
    WireBigNum output_amount;
    uint32_t finish_time;
    uint8_t active;
};

struct __attribute__((packed)) WireChallengeSnapshot {
    WireBigNum resources[RESOURCE_COUNT];
    WireBigNum lifetime[RESOURCE_COUNT];
    uint16_t upgrade_levels[MAX_UPGRADES];
    uint8_t area_unlocks[AREA_UNLOCK_BYTES];
    uint64_t system_unlocks;
    uint16_t tool_unlocks;
    uint16_t pet_unlocks;
    uint32_t achievements;
    uint8_t current_area;
    uint8_t current_tool;
    uint8_t current_pet;
    uint16_t tower_floor;
    uint16_t pyramid_floor;
};

struct __attribute__((packed)) SavePayloadV1 {
    uint16_t version;
    WireBigNum resources[RESOURCE_COUNT];
    WireBigNum lifetime[RESOURCE_COUNT];
    uint16_t upgrade_levels[MAX_UPGRADES];
    uint64_t system_unlocks;
    uint8_t area_unlocks[AREA_UNLOCK_BYTES];
    uint16_t tool_unlocks;
    uint16_t pet_unlocks;
    uint8_t current_area;
    uint8_t current_tool;
    uint8_t current_pet;
    uint8_t selected_resource;
    uint32_t achievements;
    uint16_t challenge_completions;
    uint8_t active_challenge;
    uint8_t challenge_running;
    WireChallengeSnapshot challenge_snapshot;
    WireCraftedItem crafted[MAX_CRAFTED_ITEMS];
    WireTradeOffer trades[MAX_TRADES];
    WireBigNum bank_balance;
    uint32_t trade_refresh_time;
    uint32_t borbventure_finish_time;
    uint32_t artifact_ready_time;
    uint32_t play_seconds;
    uint32_t last_rtc;
    uint32_t save_sequence;
    uint32_t rng_state;
    uint16_t tower_floor;
    uint16_t pyramid_floor;
    uint16_t mine_depth;
    uint16_t fishing_level;
    uint16_t death_book_level;
    uint16_t galaxy_stage;
    uint16_t combo;
    uint16_t combo_timer;
    uint16_t auto_save_timer;
    uint8_t settings_flags;
};

struct __attribute__((packed)) WireChallengeSnapshotV2 {
    WireBigNum resources[RESOURCE_COUNT];
    WireBigNum lifetime[RESOURCE_COUNT];
    uint16_t upgrade_levels[MAX_UPGRADES];
    uint8_t area_unlocks[AREA_UNLOCK_BYTES];
    uint64_t system_unlocks;
    uint16_t tool_unlocks;
    uint16_t pet_unlocks;
    uint32_t achievements;
    uint16_t challenge_completions;
    uint8_t current_area;
    uint8_t current_tool;
    uint8_t current_pet;
    uint8_t selected_resource;
    WireCraftedItem crafted[MAX_CRAFTED_ITEMS];
    WireTradeOffer trades[MAX_TRADES];
    WireBigNum bank_balance;
    uint32_t trade_refresh_time;
    uint32_t borbventure_finish_time;
    uint32_t artifact_ready_time;
    uint32_t play_seconds;
    uint32_t rng_state;
    uint16_t tower_floor;
    uint16_t pyramid_floor;
    uint16_t mine_depth;
    uint16_t fishing_level;
    uint16_t death_book_level;
    uint16_t galaxy_stage;
    uint16_t combo;
    uint16_t combo_timer;
    uint16_t quarkstiges_consecutive;
    uint16_t quarkstiges_total;
    uint16_t ulc_sacrifice_mask;
};

struct __attribute__((packed)) SavePayloadV2 {
    uint16_t version;
    WireBigNum resources[RESOURCE_COUNT];
    WireBigNum lifetime[RESOURCE_COUNT];
    uint16_t upgrade_levels[MAX_UPGRADES];
    uint64_t system_unlocks;
    uint8_t area_unlocks[AREA_UNLOCK_BYTES];
    uint16_t tool_unlocks;
    uint16_t pet_unlocks;
    uint8_t current_area;
    uint8_t current_tool;
    uint8_t current_pet;
    uint8_t selected_resource;
    uint32_t achievements;
    uint16_t challenge_completions;
    uint8_t active_challenge;
    uint8_t challenge_running;
    WireChallengeSnapshotV2 challenge_snapshot;
    WireCraftedItem crafted[MAX_CRAFTED_ITEMS];
    WireTradeOffer trades[MAX_TRADES];
    WireBigNum bank_balance;
    uint32_t trade_refresh_time;
    uint32_t borbventure_finish_time;
    uint32_t artifact_ready_time;
    uint32_t play_seconds;
    uint32_t last_rtc;
    uint32_t save_sequence;
    uint32_t rng_state;
    uint16_t tower_floor;
    uint16_t pyramid_floor;
    uint16_t mine_depth;
    uint16_t fishing_level;
    uint16_t death_book_level;
    uint16_t galaxy_stage;
    uint16_t quarkstiges_consecutive;
    uint16_t quarkstiges_total;
    uint16_t ulc_sacrifice_mask;
    uint16_t combo;
    uint16_t combo_timer;
    uint16_t auto_save_timer;
    uint8_t settings_flags;
};

struct __attribute__((packed)) SaveHeader {
    char magic[4];
    uint16_t format_version;
    uint16_t header_size;
    uint16_t state_version;
    uint16_t payload_size;
    uint32_t sequence;
    uint32_t saved_rtc;
    uint32_t payload_crc32;
    uint32_t reserved;
    uint32_t header_crc32;
};

struct __attribute__((packed)) SaveRecordV1 {
    SaveHeader header;
    SavePayloadV1 payload;
};

struct __attribute__((packed)) SaveRecordV2 {
    SaveHeader header;
    SavePayloadV2 payload;
};

union SaveRecordScratch {
    SaveRecordV1 v1;
    SaveRecordV2 v2;
};

static_assert(sizeof(WireBigNum) == 6, "Unexpected save number layout");
static_assert(sizeof(SaveHeader) == 32, "Unexpected save header layout");
static_assert(sizeof(SavePayloadV1) == 455U + 2U * AREA_UNLOCK_BYTES + 24U * RESOURCE_COUNT,
              "Unexpected save payload layout");
static_assert(sizeof(SaveRecordV1) == sizeof(SaveHeader) + sizeof(SavePayloadV1),
              "Unexpected save record layout");
static_assert(sizeof(WireChallengeSnapshotV2) == sizeof(WireChallengeSnapshot) + 144U,
              "Unexpected expanded challenge snapshot layout");
static_assert(sizeof(SavePayloadV2) == sizeof(SavePayloadV1) + 150U,
              "Unexpected v2 save payload layout");
static_assert(sizeof(SaveRecordV2) == sizeof(SaveHeader) + sizeof(SavePayloadV2),
              "Unexpected v2 save record layout");
static_assert(sizeof(SaveRecordV2) <= 65535, "Save record exceeds AppVar size");

enum class ReadResult : uint8_t {
    Missing,
    Invalid,
    Valid
};

struct SaveCandidate {
    GameState state;
    uint32_t sequence;
    uint32_t saved_rtc;
    bool archived;
};

/*
 * The CE C stack is only about 4 KiB. Save operations are deliberately
 * non-reentrant and keep their multi-kilobyte working sets in BSS instead.
 */
SaveRecordScratch record_scratch;
GameState prepared_scratch;
GameState baseline_scratch;
SaveCandidate candidate_scratch[4];
uint32_t rtc_floor_scratch;

WireBigNum pack_number(BigNum value) {
    return {value.mantissa, value.exponent};
}

BigNum unpack_number(const WireBigNum &value) {
    return {value.mantissa, value.exponent};
}

void pack_numbers(WireBigNum *destination, const BigNum *source, uint8_t count) {
    for(uint8_t i = 0; i < count; i++) destination[i] = pack_number(source[i]);
}

void unpack_numbers(BigNum *destination, const WireBigNum *source, uint8_t count) {
    for(uint8_t i = 0; i < count; i++) destination[i] = unpack_number(source[i]);
}

void pack_payload(SavePayloadV2 &payload, const GameState &state) {
    std::memset(&payload, 0, sizeof(payload));
    payload.version = state.version;
    pack_numbers(payload.resources, state.resources, RESOURCE_COUNT);
    pack_numbers(payload.lifetime, state.lifetime, RESOURCE_COUNT);
    for(uint8_t i = 0; i < MAX_UPGRADES; i++) payload.upgrade_levels[i] = state.upgrade_levels[i];
    payload.system_unlocks = state.system_unlocks;
    std::memcpy(payload.area_unlocks, state.area_unlocks, sizeof(payload.area_unlocks));
    payload.tool_unlocks = state.tool_unlocks;
    payload.pet_unlocks = state.pet_unlocks;
    payload.current_area = state.current_area;
    payload.current_tool = state.current_tool;
    payload.current_pet = state.current_pet;
    payload.selected_resource = state.selected_resource;
    payload.achievements = state.achievements;
    payload.challenge_completions = state.challenge_completions;
    payload.active_challenge = state.active_challenge;
    payload.challenge_running = state.challenge_running ? 1U : 0U;

    pack_numbers(payload.challenge_snapshot.resources, state.challenge_snapshot.resources, RESOURCE_COUNT);
    pack_numbers(payload.challenge_snapshot.lifetime, state.challenge_snapshot.lifetime, RESOURCE_COUNT);
    for(uint8_t i = 0; i < MAX_UPGRADES; i++) {
        payload.challenge_snapshot.upgrade_levels[i] = state.challenge_snapshot.upgrade_levels[i];
    }
    std::memcpy(payload.challenge_snapshot.area_unlocks, state.challenge_snapshot.area_unlocks,
                sizeof(payload.challenge_snapshot.area_unlocks));
    payload.challenge_snapshot.system_unlocks = state.challenge_snapshot.system_unlocks;
    payload.challenge_snapshot.tool_unlocks = state.challenge_snapshot.tool_unlocks;
    payload.challenge_snapshot.pet_unlocks = state.challenge_snapshot.pet_unlocks;
    payload.challenge_snapshot.achievements = state.challenge_snapshot.achievements;
    payload.challenge_snapshot.challenge_completions = state.challenge_snapshot.challenge_completions;
    payload.challenge_snapshot.current_area = state.challenge_snapshot.current_area;
    payload.challenge_snapshot.current_tool = state.challenge_snapshot.current_tool;
    payload.challenge_snapshot.current_pet = state.challenge_snapshot.current_pet;
    payload.challenge_snapshot.selected_resource = state.challenge_snapshot.selected_resource;
    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
        payload.challenge_snapshot.crafted[i].leaf_tier = state.challenge_snapshot.crafted[i].leaf_tier;
        payload.challenge_snapshot.crafted[i].quality = state.challenge_snapshot.crafted[i].quality;
        payload.challenge_snapshot.crafted[i].property = state.challenge_snapshot.crafted[i].property;
        payload.challenge_snapshot.crafted[i].level = state.challenge_snapshot.crafted[i].level;
        payload.challenge_snapshot.crafted[i].equipped = state.challenge_snapshot.crafted[i].equipped ? 1U : 0U;
    }
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        payload.challenge_snapshot.trades[i].input_resource = state.challenge_snapshot.trades[i].input_resource;
        payload.challenge_snapshot.trades[i].output_resource = state.challenge_snapshot.trades[i].output_resource;
        payload.challenge_snapshot.trades[i].input_amount = pack_number(state.challenge_snapshot.trades[i].input_amount);
        payload.challenge_snapshot.trades[i].output_amount = pack_number(state.challenge_snapshot.trades[i].output_amount);
        payload.challenge_snapshot.trades[i].finish_time = state.challenge_snapshot.trades[i].finish_time;
        payload.challenge_snapshot.trades[i].active = state.challenge_snapshot.trades[i].active ? 1U : 0U;
    }
    payload.challenge_snapshot.bank_balance = pack_number(state.challenge_snapshot.bank_balance);
    payload.challenge_snapshot.trade_refresh_time = state.challenge_snapshot.trade_refresh_time;
    payload.challenge_snapshot.borbventure_finish_time = state.challenge_snapshot.borbventure_finish_time;
    payload.challenge_snapshot.artifact_ready_time = state.challenge_snapshot.artifact_ready_time;
    payload.challenge_snapshot.play_seconds = state.challenge_snapshot.play_seconds;
    payload.challenge_snapshot.rng_state = state.challenge_snapshot.rng_state;
    payload.challenge_snapshot.tower_floor = state.challenge_snapshot.tower_floor;
    payload.challenge_snapshot.pyramid_floor = state.challenge_snapshot.pyramid_floor;
    payload.challenge_snapshot.mine_depth = state.challenge_snapshot.mine_depth;
    payload.challenge_snapshot.fishing_level = state.challenge_snapshot.fishing_level;
    payload.challenge_snapshot.death_book_level = state.challenge_snapshot.death_book_level;
    payload.challenge_snapshot.galaxy_stage = state.challenge_snapshot.galaxy_stage;
    payload.challenge_snapshot.combo = state.challenge_snapshot.combo;
    payload.challenge_snapshot.combo_timer = state.challenge_snapshot.combo_timer;
    payload.challenge_snapshot.quarkstiges_consecutive = state.challenge_snapshot.quarkstiges_consecutive;
    payload.challenge_snapshot.quarkstiges_total = state.challenge_snapshot.quarkstiges_total;
    payload.challenge_snapshot.ulc_sacrifice_mask = state.challenge_snapshot.ulc_sacrifice_mask;

    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
        payload.crafted[i].leaf_tier = state.crafted[i].leaf_tier;
        payload.crafted[i].quality = state.crafted[i].quality;
        payload.crafted[i].property = state.crafted[i].property;
        payload.crafted[i].level = state.crafted[i].level;
        payload.crafted[i].equipped = state.crafted[i].equipped ? 1U : 0U;
    }
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        payload.trades[i].input_resource = state.trades[i].input_resource;
        payload.trades[i].output_resource = state.trades[i].output_resource;
        payload.trades[i].input_amount = pack_number(state.trades[i].input_amount);
        payload.trades[i].output_amount = pack_number(state.trades[i].output_amount);
        payload.trades[i].finish_time = state.trades[i].finish_time;
        payload.trades[i].active = state.trades[i].active ? 1U : 0U;
    }
    payload.bank_balance = pack_number(state.bank_balance);
    payload.trade_refresh_time = state.trade_refresh_time;
    payload.borbventure_finish_time = state.borbventure_finish_time;
    payload.artifact_ready_time = state.artifact_ready_time;
    payload.play_seconds = state.play_seconds;
    payload.last_rtc = state.last_rtc;
    payload.save_sequence = state.save_sequence;
    payload.rng_state = state.rng_state;
    payload.tower_floor = state.tower_floor;
    payload.pyramid_floor = state.pyramid_floor;
    payload.mine_depth = state.mine_depth;
    payload.fishing_level = state.fishing_level;
    payload.death_book_level = state.death_book_level;
    payload.galaxy_stage = state.galaxy_stage;
    payload.quarkstiges_consecutive = state.quarkstiges_consecutive;
    payload.quarkstiges_total = state.quarkstiges_total;
    payload.ulc_sacrifice_mask = state.ulc_sacrifice_mask;
    payload.combo = state.combo;
    payload.combo_timer = state.combo_timer;
    payload.auto_save_timer = state.auto_save_timer;
    payload.settings_flags = state.settings_flags;
}

void unpack_payload_v1(GameState &state, const SavePayloadV1 &payload) {
    std::memset(&state, 0, sizeof(state));
    state.ulc_sacrifice_mask = ULC_SACRIFICE_ALL;
    state.challenge_snapshot.ulc_sacrifice_mask = ULC_SACRIFICE_ALL;
    state.version = GAME_STATE_VERSION;
    unpack_numbers(state.resources, payload.resources, RESOURCE_COUNT);
    unpack_numbers(state.lifetime, payload.lifetime, RESOURCE_COUNT);
    for(uint8_t i = 0; i < MAX_UPGRADES; i++) state.upgrade_levels[i] = payload.upgrade_levels[i];
    state.system_unlocks = payload.system_unlocks;
    std::memcpy(state.area_unlocks, payload.area_unlocks, sizeof(state.area_unlocks));
    state.tool_unlocks = payload.tool_unlocks;
    state.pet_unlocks = payload.pet_unlocks;
    state.current_area = payload.current_area;
    state.current_tool = payload.current_tool;
    state.current_pet = payload.current_pet;
    state.selected_resource = payload.selected_resource;
    state.achievements = payload.achievements;
    state.challenge_completions = payload.challenge_completions;
    state.active_challenge = payload.active_challenge;
    state.challenge_running = payload.challenge_running != 0;

    unpack_numbers(state.challenge_snapshot.resources, payload.challenge_snapshot.resources, RESOURCE_COUNT);
    unpack_numbers(state.challenge_snapshot.lifetime, payload.challenge_snapshot.lifetime, RESOURCE_COUNT);
    for(uint8_t i = 0; i < MAX_UPGRADES; i++) {
        state.challenge_snapshot.upgrade_levels[i] = payload.challenge_snapshot.upgrade_levels[i];
    }
    std::memcpy(state.challenge_snapshot.area_unlocks, payload.challenge_snapshot.area_unlocks,
                sizeof(state.challenge_snapshot.area_unlocks));
    state.challenge_snapshot.system_unlocks = payload.challenge_snapshot.system_unlocks;
    state.challenge_snapshot.tool_unlocks = payload.challenge_snapshot.tool_unlocks;
    state.challenge_snapshot.pet_unlocks = payload.challenge_snapshot.pet_unlocks;
    state.challenge_snapshot.achievements = payload.challenge_snapshot.achievements;
    state.challenge_snapshot.current_area = payload.challenge_snapshot.current_area;
    state.challenge_snapshot.current_tool = payload.challenge_snapshot.current_tool;
    state.challenge_snapshot.current_pet = payload.challenge_snapshot.current_pet;
    state.challenge_snapshot.tower_floor = payload.challenge_snapshot.tower_floor;
    state.challenge_snapshot.pyramid_floor = payload.challenge_snapshot.pyramid_floor;

    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
        state.crafted[i].leaf_tier = payload.crafted[i].leaf_tier;
        state.crafted[i].quality = payload.crafted[i].quality;
        state.crafted[i].property = payload.crafted[i].property;
        state.crafted[i].level = payload.crafted[i].level;
        state.crafted[i].equipped = payload.crafted[i].equipped != 0;
    }
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        state.trades[i].input_resource = payload.trades[i].input_resource;
        state.trades[i].output_resource = payload.trades[i].output_resource;
        state.trades[i].input_amount = unpack_number(payload.trades[i].input_amount);
        state.trades[i].output_amount = unpack_number(payload.trades[i].output_amount);
        state.trades[i].finish_time = payload.trades[i].finish_time;
        state.trades[i].active = payload.trades[i].active != 0;
    }
    state.bank_balance = unpack_number(payload.bank_balance);
    state.trade_refresh_time = payload.trade_refresh_time;
    state.borbventure_finish_time = payload.borbventure_finish_time;
    state.artifact_ready_time = payload.artifact_ready_time;
    state.play_seconds = payload.play_seconds;
    state.last_rtc = payload.last_rtc;
    state.save_sequence = payload.save_sequence;
    state.rng_state = payload.rng_state;
    state.tower_floor = payload.tower_floor;
    state.pyramid_floor = payload.pyramid_floor;
    state.mine_depth = payload.mine_depth;
    state.fishing_level = payload.fishing_level;
    state.death_book_level = payload.death_book_level;
    state.galaxy_stage = payload.galaxy_stage;
    state.combo = payload.combo;
    state.combo_timer = payload.combo_timer;
    state.auto_save_timer = payload.auto_save_timer;
    state.settings_flags = payload.settings_flags;

    /*
     * V1 did not isolate advanced mutable state. Continuing such a challenge
     * would allow an immediate goal claim and could not provide a complete
     * rollback. Preserve every recoverable original field, use the legacy
     * live value for fields V1 never captured, then safely abandon it.
     */
    if(state.challenge_running) {
        state.challenge_snapshot.challenge_completions = state.challenge_completions;
        state.challenge_snapshot.selected_resource = state.selected_resource;
        std::memcpy(state.challenge_snapshot.crafted, state.crafted, sizeof(state.crafted));
        std::memcpy(state.challenge_snapshot.trades, state.trades, sizeof(state.trades));
        state.challenge_snapshot.bank_balance = state.bank_balance;
        state.challenge_snapshot.trade_refresh_time = state.trade_refresh_time;
        state.challenge_snapshot.borbventure_finish_time = state.borbventure_finish_time;
        state.challenge_snapshot.artifact_ready_time = state.artifact_ready_time;
        state.challenge_snapshot.play_seconds = state.play_seconds;
        state.challenge_snapshot.rng_state = state.rng_state;
        state.challenge_snapshot.mine_depth = state.mine_depth;
        state.challenge_snapshot.fishing_level = state.fishing_level;
        state.challenge_snapshot.death_book_level = state.death_book_level;
        state.challenge_snapshot.galaxy_stage = state.galaxy_stage;
        state.challenge_snapshot.combo = state.combo;
        state.challenge_snapshot.combo_timer = state.combo_timer;
        game_abandon_challenge(state);
    } else {
        state.active_challenge = 0xFFU;
        std::memset(&state.challenge_snapshot, 0, sizeof(state.challenge_snapshot));
    }
}

void unpack_payload_v2(GameState &state, const SavePayloadV2 &payload) {
    std::memset(&state, 0, sizeof(state));
    state.version = payload.version;
    unpack_numbers(state.resources, payload.resources, RESOURCE_COUNT);
    unpack_numbers(state.lifetime, payload.lifetime, RESOURCE_COUNT);
    for(uint8_t i = 0; i < MAX_UPGRADES; i++) state.upgrade_levels[i] = payload.upgrade_levels[i];
    state.system_unlocks = payload.system_unlocks;
    std::memcpy(state.area_unlocks, payload.area_unlocks, sizeof(state.area_unlocks));
    state.tool_unlocks = payload.tool_unlocks;
    state.pet_unlocks = payload.pet_unlocks;
    state.current_area = payload.current_area;
    state.current_tool = payload.current_tool;
    state.current_pet = payload.current_pet;
    state.selected_resource = payload.selected_resource;
    state.achievements = payload.achievements;
    state.challenge_completions = payload.challenge_completions;
    state.active_challenge = payload.active_challenge;
    state.challenge_running = payload.challenge_running != 0;

    unpack_numbers(state.challenge_snapshot.resources, payload.challenge_snapshot.resources, RESOURCE_COUNT);
    unpack_numbers(state.challenge_snapshot.lifetime, payload.challenge_snapshot.lifetime, RESOURCE_COUNT);
    for(uint8_t i = 0; i < MAX_UPGRADES; i++) {
        state.challenge_snapshot.upgrade_levels[i] = payload.challenge_snapshot.upgrade_levels[i];
    }
    std::memcpy(state.challenge_snapshot.area_unlocks, payload.challenge_snapshot.area_unlocks,
                sizeof(state.challenge_snapshot.area_unlocks));
    state.challenge_snapshot.system_unlocks = payload.challenge_snapshot.system_unlocks;
    state.challenge_snapshot.tool_unlocks = payload.challenge_snapshot.tool_unlocks;
    state.challenge_snapshot.pet_unlocks = payload.challenge_snapshot.pet_unlocks;
    state.challenge_snapshot.achievements = payload.challenge_snapshot.achievements;
    state.challenge_snapshot.challenge_completions = payload.challenge_snapshot.challenge_completions;
    state.challenge_snapshot.current_area = payload.challenge_snapshot.current_area;
    state.challenge_snapshot.current_tool = payload.challenge_snapshot.current_tool;
    state.challenge_snapshot.current_pet = payload.challenge_snapshot.current_pet;
    state.challenge_snapshot.selected_resource = payload.challenge_snapshot.selected_resource;
    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
        state.challenge_snapshot.crafted[i].leaf_tier = payload.challenge_snapshot.crafted[i].leaf_tier;
        state.challenge_snapshot.crafted[i].quality = payload.challenge_snapshot.crafted[i].quality;
        state.challenge_snapshot.crafted[i].property = payload.challenge_snapshot.crafted[i].property;
        state.challenge_snapshot.crafted[i].level = payload.challenge_snapshot.crafted[i].level;
        state.challenge_snapshot.crafted[i].equipped = payload.challenge_snapshot.crafted[i].equipped != 0;
    }
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        state.challenge_snapshot.trades[i].input_resource = payload.challenge_snapshot.trades[i].input_resource;
        state.challenge_snapshot.trades[i].output_resource = payload.challenge_snapshot.trades[i].output_resource;
        state.challenge_snapshot.trades[i].input_amount = unpack_number(payload.challenge_snapshot.trades[i].input_amount);
        state.challenge_snapshot.trades[i].output_amount = unpack_number(payload.challenge_snapshot.trades[i].output_amount);
        state.challenge_snapshot.trades[i].finish_time = payload.challenge_snapshot.trades[i].finish_time;
        state.challenge_snapshot.trades[i].active = payload.challenge_snapshot.trades[i].active != 0;
    }
    state.challenge_snapshot.bank_balance = unpack_number(payload.challenge_snapshot.bank_balance);
    state.challenge_snapshot.trade_refresh_time = payload.challenge_snapshot.trade_refresh_time;
    state.challenge_snapshot.borbventure_finish_time = payload.challenge_snapshot.borbventure_finish_time;
    state.challenge_snapshot.artifact_ready_time = payload.challenge_snapshot.artifact_ready_time;
    state.challenge_snapshot.play_seconds = payload.challenge_snapshot.play_seconds;
    state.challenge_snapshot.rng_state = payload.challenge_snapshot.rng_state;
    state.challenge_snapshot.tower_floor = payload.challenge_snapshot.tower_floor;
    state.challenge_snapshot.pyramid_floor = payload.challenge_snapshot.pyramid_floor;
    state.challenge_snapshot.mine_depth = payload.challenge_snapshot.mine_depth;
    state.challenge_snapshot.fishing_level = payload.challenge_snapshot.fishing_level;
    state.challenge_snapshot.death_book_level = payload.challenge_snapshot.death_book_level;
    state.challenge_snapshot.galaxy_stage = payload.challenge_snapshot.galaxy_stage;
    state.challenge_snapshot.combo = payload.challenge_snapshot.combo;
    state.challenge_snapshot.combo_timer = payload.challenge_snapshot.combo_timer;
    state.challenge_snapshot.quarkstiges_consecutive = payload.challenge_snapshot.quarkstiges_consecutive;
    state.challenge_snapshot.quarkstiges_total = payload.challenge_snapshot.quarkstiges_total;
    state.challenge_snapshot.ulc_sacrifice_mask = payload.challenge_snapshot.ulc_sacrifice_mask;

    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
        state.crafted[i].leaf_tier = payload.crafted[i].leaf_tier;
        state.crafted[i].quality = payload.crafted[i].quality;
        state.crafted[i].property = payload.crafted[i].property;
        state.crafted[i].level = payload.crafted[i].level;
        state.crafted[i].equipped = payload.crafted[i].equipped != 0;
    }
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        state.trades[i].input_resource = payload.trades[i].input_resource;
        state.trades[i].output_resource = payload.trades[i].output_resource;
        state.trades[i].input_amount = unpack_number(payload.trades[i].input_amount);
        state.trades[i].output_amount = unpack_number(payload.trades[i].output_amount);
        state.trades[i].finish_time = payload.trades[i].finish_time;
        state.trades[i].active = payload.trades[i].active != 0;
    }
    state.bank_balance = unpack_number(payload.bank_balance);
    state.trade_refresh_time = payload.trade_refresh_time;
    state.borbventure_finish_time = payload.borbventure_finish_time;
    state.artifact_ready_time = payload.artifact_ready_time;
    state.play_seconds = payload.play_seconds;
    state.last_rtc = payload.last_rtc;
    state.save_sequence = payload.save_sequence;
    state.rng_state = payload.rng_state;
    state.tower_floor = payload.tower_floor;
    state.pyramid_floor = payload.pyramid_floor;
    state.mine_depth = payload.mine_depth;
    state.fishing_level = payload.fishing_level;
    state.death_book_level = payload.death_book_level;
    state.galaxy_stage = payload.galaxy_stage;
    state.quarkstiges_consecutive = payload.quarkstiges_consecutive;
    state.quarkstiges_total = payload.quarkstiges_total;
    state.ulc_sacrifice_mask = payload.ulc_sacrifice_mask;
    state.combo = payload.combo;
    state.combo_timer = payload.combo_timer;
    state.auto_save_timer = payload.auto_save_timer;
    state.settings_flags = payload.settings_flags;
}

uint64_t low_mask64(uint8_t count) {
    return count >= 64 ? ~static_cast<uint64_t>(0) : (static_cast<uint64_t>(1) << count) - 1U;
}

uint32_t low_mask32(uint8_t count) {
    return count >= 32 ? ~static_cast<uint32_t>(0) : (static_cast<uint32_t>(1) << count) - 1U;
}

uint16_t low_mask16(uint8_t count) {
    return count >= 16 ? static_cast<uint16_t>(0xFFFFU)
                       : static_cast<uint16_t>((static_cast<uint16_t>(1U) << count) - 1U);
}

bool area_unlocks_valid(const uint8_t *unlocks) {
    const uint8_t full_bytes = AREA_COUNT >> 3U;
    const uint8_t remaining_bits = AREA_COUNT & 7U;
    uint8_t used_bytes = full_bytes;
    if(remaining_bits != 0) {
        const uint8_t valid_mask = static_cast<uint8_t>((1U << remaining_bits) - 1U);
        if((unlocks[full_bytes] & static_cast<uint8_t>(~valid_mask)) != 0) return false;
        used_bytes++;
    }
    for(uint8_t i = used_bytes; i < AREA_UNLOCK_BYTES; i++) {
        if(unlocks[i] != 0) return false;
    }
    return true;
}

bool area_unlocked(const uint8_t *unlocks, uint8_t area) {
    return area < AREA_COUNT && (unlocks[area >> 3U] & (1U << (area & 7U))) != 0;
}

bool wire_shape_valid(const SavePayloadV1 &payload) {
    if(payload.challenge_running > 1U) return false;
    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
        if(payload.crafted[i].equipped > 1U) return false;
    }
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        if(payload.trades[i].active > 1U) return false;
    }
    return true;
}

bool wire_shape_valid(const SavePayloadV2 &payload) {
    if(payload.challenge_running > 1U) return false;
    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
        if(payload.crafted[i].equipped > 1U ||
           payload.challenge_snapshot.crafted[i].equipped > 1U) return false;
    }
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        if(payload.trades[i].active > 1U ||
           payload.challenge_snapshot.trades[i].active > 1U) return false;
    }
    return true;
}

bool numbers_valid(const GameState &state) {
    for(uint8_t i = 0; i < RESOURCE_COUNT; i++) {
        if(!bn_valid(state.resources[i]) || !bn_valid(state.lifetime[i])) return false;
        if(!bn_valid(state.challenge_snapshot.resources[i]) ||
           !bn_valid(state.challenge_snapshot.lifetime[i])) return false;
    }
    if(!bn_valid(state.bank_balance)) return false;
    if(!bn_valid(state.challenge_snapshot.bank_balance)) return false;
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        if(!bn_valid(state.trades[i].input_amount) || !bn_valid(state.trades[i].output_amount)) return false;
        if(!bn_valid(state.challenge_snapshot.trades[i].input_amount) ||
           !bn_valid(state.challenge_snapshot.trades[i].output_amount)) return false;
    }
    return true;
}

bool crafted_items_valid(const CraftedItem *items) {
    uint8_t equipped_properties = 0;
    for(uint8_t i = 0; i < MAX_CRAFTED_ITEMS; i++) {
        const CraftedItem &item = items[i];
        if(item.quality > 100 || (item.quality == 0 && item.equipped)) return false;
        if(item.quality != 0 && (item.leaf_tier > RES_ELECTRICAL ||
           item.property >= CRAFT_PROPERTY_COUNT || item.level > 50)) return false;
        if(item.equipped) {
            const uint8_t property_bit = static_cast<uint8_t>(1U << item.property);
            if((equipped_properties & property_bit) != 0) return false;
            equipped_properties |= property_bit;
        }
    }
    return true;
}

bool trade_offers_valid(const TradeOffer *trades) {
    for(uint8_t i = 0; i < MAX_TRADES; i++) {
        const TradeOffer &trade = trades[i];
        if(trade.input_resource >= RESOURCE_COUNT || trade.output_resource >= RESOURCE_COUNT) return false;
        if(trade.active && (trade.finish_time == 0 || trade.input_resource == trade.output_resource ||
           bn_is_zero(trade.input_amount) || bn_is_zero(trade.output_amount))) return false;
    }
    return true;
}

bool state_semantic_valid(const GameState &state) {
    if(state.version != GAME_STATE_VERSION || state.save_sequence == 0) return false;
    if(AREA_COUNT == 0 || AREA_COUNT > MAX_AREAS || SYSTEM_COUNT > 64 ||
       TOOL_COUNT == 0 || TOOL_COUNT > 16 ||
       PET_COUNT == 0 || PET_COUNT > 16 || UPGRADE_COUNT > MAX_UPGRADES ||
       CHALLENGE_COUNT > 16 || ACHIEVEMENT_COUNT > 32) return false;
    if(!numbers_valid(state)) return false;

    for(uint8_t i = 0; i < UPGRADE_COUNT; i++) {
        if(state.upgrade_levels[i] > UPGRADE_DEFS[i].max_level ||
           state.challenge_snapshot.upgrade_levels[i] > UPGRADE_DEFS[i].max_level) return false;
    }
    if(!systems_persistent_state_valid(state)) return false;
    if(state.quarkstiges_consecutive > state.quarkstiges_total ||
       (state.ulc_sacrifice_mask & static_cast<uint16_t>(~ULC_SACRIFICE_ALL)) != 0 ||
       game_ulc_sacrifice_count(state) < game_ulc_min_sacrifices(state) ||
       state.challenge_snapshot.mine_depth > 1000U ||
       state.challenge_snapshot.fishing_level > 1000U ||
       state.challenge_snapshot.death_book_level > 500U ||
       state.challenge_snapshot.galaxy_stage > 100U ||
       state.challenge_snapshot.quarkstiges_consecutive > state.challenge_snapshot.quarkstiges_total ||
       (state.challenge_snapshot.ulc_sacrifice_mask &
        static_cast<uint16_t>(~ULC_SACRIFICE_ALL)) != 0) return false;

    const uint64_t systems = low_mask64(SYSTEM_COUNT);
    const uint16_t tools = low_mask16(TOOL_COUNT);
    const uint16_t pets = low_mask16(PET_COUNT);
    const uint32_t achievements = low_mask32(ACHIEVEMENT_COUNT);
    const uint16_t challenges = low_mask16(CHALLENGE_COUNT);
    if((state.system_unlocks & ~systems) != 0 || !area_unlocks_valid(state.area_unlocks) ||
       (state.tool_unlocks & static_cast<uint16_t>(~tools)) != 0 ||
       (state.pet_unlocks & static_cast<uint16_t>(~pets)) != 0 ||
       (state.achievements & ~achievements) != 0 ||
       (state.challenge_completions & static_cast<uint16_t>(~challenges)) != 0) return false;
    if((state.challenge_snapshot.system_unlocks & ~systems) != 0 ||
       !area_unlocks_valid(state.challenge_snapshot.area_unlocks) ||
       (state.challenge_snapshot.tool_unlocks & static_cast<uint16_t>(~tools)) != 0 ||
       (state.challenge_snapshot.pet_unlocks & static_cast<uint16_t>(~pets)) != 0 ||
       (state.challenge_snapshot.achievements & ~achievements) != 0 ||
       (state.challenge_snapshot.challenge_completions &
        static_cast<uint16_t>(~challenges)) != 0) return false;

    if(!game_system_unlocked(state, SYS_TOOLS) || !game_system_unlocked(state, SYS_CHALLENGES) ||
       !game_system_unlocked(state, SYS_MILESTONES) || !game_system_unlocked(state, SYS_DAILY) ||
       !game_area_unlocked(state, 0) || !game_tool_unlocked(state, 0)) return false;
    if(state.current_area >= AREA_COUNT || !game_area_unlocked(state, state.current_area) ||
       state.current_tool >= TOOL_COUNT || !game_tool_unlocked(state, state.current_tool) ||
       state.current_pet >= PET_COUNT || state.selected_resource >= RESOURCE_COUNT) return false;
    if(state.challenge_running) {
        if(state.active_challenge >= CHALLENGE_COUNT || state.challenge_completions != 0 ||
           state.challenge_snapshot.current_area >= AREA_COUNT ||
           state.challenge_snapshot.current_tool >= TOOL_COUNT ||
           state.challenge_snapshot.current_pet >= PET_COUNT ||
           state.challenge_snapshot.selected_resource >= RESOURCE_COUNT ||
           !area_unlocked(state.challenge_snapshot.area_unlocks, state.challenge_snapshot.current_area) ||
           (state.challenge_snapshot.tool_unlocks & (1U << state.challenge_snapshot.current_tool)) == 0) return false;
        if(state.active_challenge == 2U && state.pet_unlocks != 0) return false;
    } else if(state.active_challenge != 0xFFU) {
        return false;
    }

    if(!crafted_items_valid(state.crafted) || !trade_offers_valid(state.trades) ||
       !crafted_items_valid(state.challenge_snapshot.crafted) ||
       !trade_offers_valid(state.challenge_snapshot.trades)) return false;
    if((state.settings_flags & static_cast<uint8_t>(~7U)) != 0) return false;

    return true;
}

void make_record(SaveRecordV2 &record, const GameState &state) {
    std::memset(&record, 0, sizeof(record));
    std::memcpy(record.header.magic, SAVE_MAGIC, sizeof(SAVE_MAGIC));
    record.header.format_version = SAVE_FORMAT_VERSION;
    record.header.header_size = sizeof(SaveHeader);
    record.header.state_version = GAME_STATE_VERSION;
    record.header.payload_size = sizeof(SavePayloadV2);
    record.header.sequence = state.save_sequence;
    record.header.saved_rtc = state.last_rtc;
    pack_payload(record.payload, state);
    record.header.payload_crc32 = crc32_compute(&record.payload, sizeof(record.payload));
    record.header.reserved = 0;
    record.header.header_crc32 = crc32_compute(&record.header, offsetof(SaveHeader, header_crc32));
}

bool header_valid(const SaveRecordV1 &record) {
    const SaveHeader &header = record.header;
    return std::memcmp(header.magic, SAVE_MAGIC, sizeof(SAVE_MAGIC)) == 0 &&
           header.format_version == SAVE_FORMAT_VERSION_V1 &&
           header.header_size == sizeof(SaveHeader) &&
           header.state_version == GAME_STATE_VERSION_V1 &&
           header.payload_size == sizeof(SavePayloadV1) &&
           record.payload.version == GAME_STATE_VERSION_V1 &&
           header.sequence != 0 && header.reserved == 0 &&
           header.header_crc32 == crc32_compute(&header, offsetof(SaveHeader, header_crc32));
}

bool header_valid(const SaveRecordV2 &record) {
    const SaveHeader &header = record.header;
    return std::memcmp(header.magic, SAVE_MAGIC, sizeof(SAVE_MAGIC)) == 0 &&
           header.format_version == SAVE_FORMAT_VERSION &&
           header.header_size == sizeof(SaveHeader) &&
           header.state_version == GAME_STATE_VERSION &&
           header.payload_size == sizeof(SavePayloadV2) &&
           record.payload.version == GAME_STATE_VERSION &&
           header.sequence != 0 && header.reserved == 0 &&
           header.header_crc32 == crc32_compute(&header, offsetof(SaveHeader, header_crc32));
}

ReadResult read_record(const char *name, SaveCandidate &candidate) {
    const uint8_t handle = ti_Open(name, "r");
    if(handle == 0) return ReadResult::Missing;

    SaveRecordScratch &scratch = record_scratch;
    std::memset(&scratch, 0, sizeof(scratch));
    const size_t record_size = ti_GetSize(handle);
    const bool is_v1 = record_size == sizeof(SaveRecordV1);
    const bool is_v2 = record_size == sizeof(SaveRecordV2);
    const bool read_ok = (is_v1 || is_v2) && ti_Read(&scratch, record_size, 1, handle) == 1;
    const bool archived = ti_IsArchived(handle) != 0;
    const bool close_ok = ti_Close(handle) != 0;
    if(!read_ok || !close_ok) return ReadResult::Invalid;

    const SaveHeader *header;
    if(is_v2) {
        const SaveRecordV2 &record = scratch.v2;
        if(!header_valid(record) ||
           record.header.payload_crc32 != crc32_compute(&record.payload, sizeof(record.payload)) ||
           !wire_shape_valid(record.payload)) return ReadResult::Invalid;
        unpack_payload_v2(candidate.state, record.payload);
        header = &record.header;
    } else {
        const SaveRecordV1 &record = scratch.v1;
        if(!header_valid(record) ||
           record.header.payload_crc32 != crc32_compute(&record.payload, sizeof(record.payload)) ||
           !wire_shape_valid(record.payload)) return ReadResult::Invalid;
        unpack_payload_v1(candidate.state, record.payload);
        header = &record.header;
    }

    if(candidate.state.save_sequence != header->sequence ||
       candidate.state.last_rtc != header->saved_rtc || !state_semantic_valid(candidate.state)) {
        return ReadResult::Invalid;
    }
    candidate.sequence = header->sequence;
    candidate.saved_rtc = header->saved_rtc;
    candidate.archived = archived;
    return ReadResult::Valid;
}

bool delete_if_present(const char *name) {
    const uint8_t handle = ti_Open(name, "r");
    if(handle == 0) return true;
    if(ti_Close(handle) == 0) return false;
    return ti_Delete(name) != 0;
}

bool ensure_archived(const char *name) {
    const uint8_t handle = ti_Open(name, "r");
    if(handle == 0) return false;
    bool archived = ti_IsArchived(handle) != 0;
    if(!archived) archived = ti_SetArchiveStatus(true, handle) != 0 && ti_IsArchived(handle) != 0;
    const bool close_ok = ti_Close(handle) != 0;
    return archived && close_ok;
}

bool write_verified_temp(const GameState &state) {
    if(!delete_if_present(SAVE_TEMP_NAME)) return false;
    SaveRecordV2 &record = record_scratch.v2;
    make_record(record, state);
    const uint8_t handle = ti_Open(SAVE_TEMP_NAME, "w");
    if(handle == 0) return false;
    const bool write_ok = ti_Write(&record, sizeof(record), 1, handle) == 1;
    const bool close_ok = ti_Close(handle) != 0;
    if(!write_ok || !close_ok) {
        if(close_ok) delete_if_present(SAVE_TEMP_NAME);
        return false;
    }

    SaveCandidate &verified = candidate_scratch[3];
    std::memset(&verified, 0, sizeof(verified));
    if(read_record(SAVE_TEMP_NAME, verified) != ReadResult::Valid ||
       verified.sequence != state.save_sequence || verified.saved_rtc != state.last_rtc) {
        delete_if_present(SAVE_TEMP_NAME);
        return false;
    }
    if(!ensure_archived(SAVE_TEMP_NAME)) {
        delete_if_present(SAVE_TEMP_NAME);
        return false;
    }
    if(read_record(SAVE_TEMP_NAME, verified) != ReadResult::Valid || !verified.archived ||
       verified.sequence != state.save_sequence || verified.saved_rtc != state.last_rtc) {
        delete_if_present(SAVE_TEMP_NAME);
        return false;
    }
    return true;
}

bool verify_named_record(const char *name, const GameState &state) {
    SaveCandidate &candidate = candidate_scratch[3];
    std::memset(&candidate, 0, sizeof(candidate));
    return read_record(name, candidate) == ReadResult::Valid && candidate.archived &&
           candidate.sequence == state.save_sequence && candidate.saved_rtc == state.last_rtc;
}

bool install_temp_as_primary() {
    if(!delete_if_present(SAVE_PRIMARY_NAME)) return false;
    if(ti_Rename(SAVE_TEMP_NAME, SAVE_PRIMARY_NAME) != 0) return false;
    SaveCandidate &candidate = candidate_scratch[3];
    std::memset(&candidate, 0, sizeof(candidate));
    return read_record(SAVE_PRIMARY_NAME, candidate) == ReadResult::Valid && candidate.archived;
}

bool install_primary_copy(const GameState &state) {
    if(!write_verified_temp(state)) return false;
    return install_temp_as_primary() && verify_named_record(SAVE_PRIMARY_NAME, state);
}

bool ensure_backup_copy(const GameState &state) {
    SaveCandidate &backup = candidate_scratch[3];
    std::memset(&backup, 0, sizeof(backup));
    if(read_record(SAVE_BACKUP_NAME, backup) == ReadResult::Valid) {
        return backup.archived || ensure_archived(SAVE_BACKUP_NAME);
    }
    if(!delete_if_present(SAVE_BACKUP_NAME) || !write_verified_temp(state)) return false;
    if(ti_Rename(SAVE_TEMP_NAME, SAVE_BACKUP_NAME) != 0) return false;
    return verify_named_record(SAVE_BACKUP_NAME, state);
}

constexpr bool sequence_newer(uint32_t candidate, uint32_t reference) {
    const uint32_t distance = candidate - reference;
    return distance != 0 && distance < 0x80000000UL;
}

static_assert(sequence_newer(2U, 1U), "save sequence must increase");
static_assert(!sequence_newer(1U, 1U), "equal save sequences are not newer");
static_assert(sequence_newer(1U, 0xFFFFFFFFUL), "save sequence wrap must remain ordered");

bool refresh_archived_candidate(const char *name, SaveCandidate &candidate) {
    if(candidate.archived) return true;
    if(!ensure_archived(name)) return false;
    SaveCandidate &verified = candidate_scratch[3];
    std::memset(&verified, 0, sizeof(verified));
    if(read_record(name, verified) != ReadResult::Valid || !verified.archived ||
       verified.sequence != candidate.sequence || verified.saved_rtc != candidate.saved_rtc) return false;
    std::memcpy(&candidate, &verified, sizeof(candidate));
    return true;
}

bool promote_recovery_temp(ReadResult primary_result, const SaveCandidate &primary,
                           ReadResult backup_result, const SaveCandidate &backup,
                           const SaveCandidate &temporary) {
    const bool primary_valid = primary_result == ReadResult::Valid;
    const bool backup_valid = backup_result == ReadResult::Valid;
    const bool preserve_primary = primary_valid &&
                                  (!backup_valid || !sequence_newer(backup.sequence, primary.sequence));

    if(preserve_primary) {
        if((!primary.archived && !ensure_archived(SAVE_PRIMARY_NAME)) ||
           !delete_if_present(SAVE_BACKUP_NAME) ||
           ti_Rename(SAVE_PRIMARY_NAME, SAVE_BACKUP_NAME) != 0) return false;
    } else {
        if(backup_valid && !backup.archived && !ensure_archived(SAVE_BACKUP_NAME)) return false;
        if(primary_result != ReadResult::Missing && !delete_if_present(SAVE_PRIMARY_NAME)) return false;
    }

    if(ti_Rename(SAVE_TEMP_NAME, SAVE_PRIMARY_NAME) != 0 ||
       !verify_named_record(SAVE_PRIMARY_NAME, temporary.state)) return false;
    return ensure_backup_copy(temporary.state);
}

bool date_valid(uint8_t day, uint8_t month, uint16_t year) {
    if(year < 1997 || year > 2099 || month == 0 || month > 12 || day == 0) return false;
    static constexpr uint8_t DAYS_PER_MONTH[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    uint8_t days = DAYS_PER_MONTH[month - 1U];
    const bool leap = (year % 4U == 0 && year % 100U != 0) || year % 400U == 0;
    if(month == 2 && leap) days++;
    return day <= days;
}

uint32_t date_time_to_seconds(uint8_t day, uint8_t month, uint16_t year,
                              uint8_t seconds, uint8_t minutes, uint8_t hours) {
    static constexpr uint16_t DAYS_BEFORE_MONTH[12] = {0, 31, 59, 90, 120, 151,
                                                       181, 212, 243, 273, 304, 334};
    uint32_t days = 0;
    for(uint16_t current = 1997; current < year; current++) {
        const bool leap = (current % 4U == 0 && current % 100U != 0) || current % 400U == 0;
        days += leap ? 366U : 365U;
    }
    days += DAYS_BEFORE_MONTH[month - 1U] + static_cast<uint32_t>(day - 1U);
    const bool leap = (year % 4U == 0 && year % 100U != 0) || year % 400U == 0;
    if(leap && month > 2) days++;
    return days * 86400UL + static_cast<uint32_t>(hours) * 3600UL +
           static_cast<uint32_t>(minutes) * 60UL + seconds;
}

void finish_load(GameState &state, const SaveCandidate &candidate, uint32_t now,
                 uint32_t &offline_seconds) {
    std::memcpy(&state, &candidate.state, sizeof(state));
    rtc_floor_scratch = candidate.saved_rtc;
    offline_seconds = save_offline_seconds(candidate.saved_rtc, now);
    if(offline_seconds == 0) {
        state.auto_save_timer = 0;
        return;
    }

    std::memcpy(&baseline_scratch, &state, sizeof(state));
    game_apply_offline(state, offline_seconds);
    if(now >= candidate.saved_rtc && now != 0) state.last_rtc = now;
    state.auto_save_timer = 0;
    if(!save_write(state, now)) {
        std::memcpy(&state, &baseline_scratch, sizeof(state));
        state.auto_save_timer = 0;
        offline_seconds = 0;
    }
}

} // namespace

uint32_t save_rtc_seconds() {
    for(uint8_t attempt = 0; attempt < 3; attempt++) {
        uint8_t day_before;
        uint8_t month_before;
        uint16_t year_before;
        uint8_t seconds;
        uint8_t minutes;
        uint8_t hours;
        uint8_t day_after;
        uint8_t month_after;
        uint16_t year_after;
        boot_GetDate(&day_before, &month_before, &year_before);
        boot_GetTime(&seconds, &minutes, &hours);
        boot_GetDate(&day_after, &month_after, &year_after);
        if(day_before != day_after || month_before != month_after || year_before != year_after) continue;
        if(!date_valid(day_before, month_before, year_before) || seconds > 59 || minutes > 59 || hours > 23) {
            return 0;
        }
        return date_time_to_seconds(day_before, month_before, year_before, seconds, minutes, hours);
    }
    return 0;
}

uint32_t save_offline_seconds(uint32_t saved_rtc, uint32_t now) {
    if(saved_rtc == 0 || now == 0 || now <= saved_rtc) return 0;
    const uint32_t elapsed = now - saved_rtc;
    return elapsed > SAVE_MAX_OFFLINE_SECONDS ? SAVE_MAX_OFFLINE_SECONDS : elapsed;
}

SaveLoadStatus save_load(GameState &state, uint32_t now, uint32_t &offline_seconds) {
    offline_seconds = 0;
    rtc_floor_scratch = 0;
    SaveCandidate &primary = candidate_scratch[0];
    std::memset(&primary, 0, sizeof(primary));
    const ReadResult primary_result = read_record(SAVE_PRIMARY_NAME, primary);
    SaveCandidate &backup = candidate_scratch[1];
    std::memset(&backup, 0, sizeof(backup));
    const ReadResult backup_result = read_record(SAVE_BACKUP_NAME, backup);
    SaveCandidate &temporary = candidate_scratch[2];
    std::memset(&temporary, 0, sizeof(temporary));
    const ReadResult temp_result = read_record(SAVE_TEMP_NAME, temporary);
    const bool primary_valid = primary_result == ReadResult::Valid;
    const bool backup_valid = backup_result == ReadResult::Valid;
    const bool temp_valid = temp_result == ReadResult::Valid;

    const SaveCandidate *newest = nullptr;
    SaveLoadStatus status = SaveLoadStatus::NewGame;
    if(primary_valid) {
        newest = &primary;
        status = SaveLoadStatus::Primary;
    }
    if(backup_valid && (newest == nullptr || sequence_newer(backup.sequence, newest->sequence))) {
        newest = &backup;
        status = SaveLoadStatus::Backup;
    }
    if(temp_valid && (newest == nullptr || sequence_newer(temporary.sequence, newest->sequence))) {
        newest = &temporary;
        status = SaveLoadStatus::Recovered;
    }

    if(newest == nullptr) {
        delete_if_present(SAVE_TEMP_NAME);
        game_new(state, now);
        rtc_floor_scratch = now;
        return SaveLoadStatus::NewGame;
    }

    if(status == SaveLoadStatus::Recovered) {
        if(refresh_archived_candidate(SAVE_TEMP_NAME, temporary)) {
            promote_recovery_temp(primary_result, primary, backup_result, backup, temporary);
        }
        finish_load(state, temporary, now, offline_seconds);
        return SaveLoadStatus::Recovered;
    }

    if(status == SaveLoadStatus::Backup) {
        refresh_archived_candidate(SAVE_BACKUP_NAME, backup);
        install_primary_copy(backup.state);
        finish_load(state, backup, now, offline_seconds);
        return SaveLoadStatus::Backup;
    }

    refresh_archived_candidate(SAVE_PRIMARY_NAME, primary);
    delete_if_present(SAVE_TEMP_NAME);
    ensure_backup_copy(primary.state);
    finish_load(state, primary, now, offline_seconds);
    return SaveLoadStatus::Primary;
}

bool save_write(GameState &state, uint32_t now) {
    GameState &prepared = prepared_scratch;
    std::memcpy(&prepared, &state, sizeof(prepared));
    prepared.version = GAME_STATE_VERSION;
    if(prepared.last_rtc < rtc_floor_scratch) prepared.last_rtc = rtc_floor_scratch;
    if(now > prepared.last_rtc) prepared.last_rtc = now;
    prepared.save_sequence++;
    if(prepared.save_sequence == 0) prepared.save_sequence = 1;
    prepared.auto_save_timer = 0;
    if(!state_semantic_valid(prepared) || !write_verified_temp(prepared)) return false;
    rtc_floor_scratch = prepared.last_rtc;

    SaveCandidate &primary = candidate_scratch[0];
    std::memset(&primary, 0, sizeof(primary));
    const ReadResult primary_result = read_record(SAVE_PRIMARY_NAME, primary);
    if(primary_result == ReadResult::Valid) {
        if((!primary.archived && !ensure_archived(SAVE_PRIMARY_NAME)) ||
           !delete_if_present(SAVE_BACKUP_NAME) ||
           ti_Rename(SAVE_PRIMARY_NAME, SAVE_BACKUP_NAME) != 0) {
            /* The verified, archived temp is still the committed generation. */
            std::memcpy(&state, &prepared, sizeof(state));
            return true;
        }
    } else if(primary_result == ReadResult::Invalid && !delete_if_present(SAVE_PRIMARY_NAME)) {
        std::memcpy(&state, &prepared, sizeof(state));
        return true;
    }

    if(ti_Rename(SAVE_TEMP_NAME, SAVE_PRIMARY_NAME) != 0) {
        std::memcpy(&state, &prepared, sizeof(state));
        return true;
    }
    if(!verify_named_record(SAVE_PRIMARY_NAME, prepared)) return false;
    ensure_backup_copy(prepared);
    std::memcpy(&state, &prepared, sizeof(state));
    return true;
}

bool save_manual(GameState &state, uint32_t now) {
    return save_write(state, now);
}

SaveAutoResult save_auto(GameState &state, uint32_t now, uint32_t elapsed_seconds) {
    if((state.settings_flags & 1U) == 0) {
        state.auto_save_timer = 0;
        return SaveAutoResult::NotDue;
    }
    if(state.auto_save_timer < SAVE_AUTO_INTERVAL_SECONDS) {
        const uint32_t remaining = SAVE_AUTO_INTERVAL_SECONDS - state.auto_save_timer;
        if(elapsed_seconds < remaining) {
            state.auto_save_timer = static_cast<uint16_t>(state.auto_save_timer + elapsed_seconds);
            return SaveAutoResult::NotDue;
        }
        state.auto_save_timer = SAVE_AUTO_INTERVAL_SECONDS;
    }
    return save_write(state, now) ? SaveAutoResult::Saved : SaveAutoResult::Failed;
}
