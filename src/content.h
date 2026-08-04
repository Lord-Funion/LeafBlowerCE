#pragma once

#include <cstdint>

#include "big_num.h"

enum ResourceId : uint8_t {
    RES_LEAVES,
    RES_GOLD,
    RES_PLATINUM,
    RES_BISMUTH,
    RES_COSMIC,
    RES_VOID,
    RES_EXOTIC,
    RES_CELESTIAL,
    RES_MYTHICAL,
    RES_LAVA,
    RES_ICE,
    RES_OBSIDIAN,
    RES_SILICON,
    RES_BENITOITE,
    RES_MOONSTONE,
    RES_SAND,
    RES_ANCIENT,
    RES_SACRED,
    RES_BIOTITE,
    RES_MALACHITE,
    RES_HEMATITE,
    RES_PLASMA,
    RES_ELECTRICAL,
    RES_COINS,
    RES_RED_FLASK,
    RES_ORANGE_FLASK,
    RES_YELLOW_FLASK,
    RES_GREEN_FLASK,
    RES_BLUE_FLASK,
    RES_PURPLE_FLASK,
    RES_BLACK_FLASK,
    RES_STRANGE_FLASK,
    RES_BLC,
    RES_MLC,
    RES_ULC,
    RES_GEMS,
    RES_CHEESE,
    RES_MATERIALS,
    RES_ESSENCE,
    RES_MULCH,
    RES_BORBS,
    RES_CARD_PARTS,
    RES_DICE_POINTS,
    RES_SOULS,
    RES_QUARKS,
    RES_QUANTUM_BLOBS,
    RES_SHADOW_CRYSTALS,
    RES_ENERGY,
    RES_BEER,
    RES_CURSES,
    RES_SILVER_TOKENS,
    RES_GOLD_TOKENS,
    RES_SHARDS,
    RES_COAL_LEAVES,
    RES_COAL_BARS,
    RES_FISH_CREDITS,
    RES_RELIC_FRAGMENTS,
    RES_WATER_LEAVES,
    RES_WATER_CRYSTALS,
    RES_SHIP_FUEL,
    RES_PARTY_TOKENS,
    RES_DUSK_LEAVES,
    RES_AMBER,
    RES_AMETHYST,
    RES_EMERALD,
    RES_KYANITE,
    RES_RHODONITE,
    RES_RUBY,
    RES_TEKTITE,
    RES_AZURITE,
    RES_NIOBIUM,
    RES_EMPTY_SOUL_LEAVES,
    RES_SOUL_LEAVES,
    RES_QUARK_LEAVES,
    RESOURCE_COUNT
};

enum SystemId : uint8_t {
    SYS_TOOLS,
    SYS_AREAS,
    SYS_PRESTIGE,
    SYS_PRINTERS,
    SYS_CONVERTERS,
    SYS_FLASKS,
    SYS_BLC,
    SYS_SEEDS,
    SYS_AUTOBLOWERS,
    SYS_PETS,
    SYS_TRADING,
    SYS_CRAFTING,
    SYS_MATERIALS,
    SYS_ALCHEMY,
    SYS_ARTIFACTS,
    SYS_TOWER,
    SYS_EQUIPMENT,
    SYS_CHALLENGES,
    SYS_MLC,
    SYS_PYRAMID,
    SYS_BORBVENTURES,
    SYS_CARDS,
    SYS_DICE,
    SYS_DEATH_BOOK,
    SYS_MINES,
    SYS_FISHING,
    SYS_ULC,
    SYS_BANKS,
    SYS_SOUL_FORGE,
    SYS_QUARK_REACTOR,
    SYS_SHADOW_CRYSTAL,
    SYS_GALAXIES,
    SYS_FRUIT,
    SYS_UNIQUE_LEAVES,
    SYS_SHOVELLING,
    SYS_SCROLLS,
    SYS_CHESTS,
    SYS_FUSION_ASCENSION,
    SYS_LEAFSCENSION,
    SYS_RELICS,
    SYS_MIRRORS,
    SYS_SOUL_CRYPT,
    SYS_LEAFTON_PIT,
    SYS_PUB,
    SYS_HOUSE,
    SYS_HARBOR,
    SYS_JOBS,
    SYS_SHIPS,
    SYS_MILESTONES,
    SYS_DAILY,
    SYS_SEASONS,
    SYS_SHADOW_TREE,
    SYSTEM_COUNT
};

enum ShopId : uint8_t {
    SHOP_LEAF,
    SHOP_GOLD,
    SHOP_COIN,
    SHOP_BLC,
    SHOP_MLC,
    SHOP_ULC,
    SHOP_AUTOMATION,
    SHOP_CRAFT,
    SHOP_GALAXY,
    SHOP_COUNT
};

enum UpgradeEffect : uint8_t {
    EFFECT_BLOW_POWER,
    EFFECT_BLOW_RANGE,
    EFFECT_MOVE_SPEED,
    EFFECT_LEAF_VALUE,
    EFFECT_SPAWN_RATE,
    EFFECT_COMBO,
    EFFECT_OFFLINE,
    EFFECT_PRINTER,
    EFFECT_CONVERTER,
    EFFECT_AREA_DISCOUNT,
    EFFECT_KEEP_COINS,
    EFFECT_BLC_REWARD,
    EFFECT_SEED,
    EFFECT_ALB_COUNT,
    EFFECT_ALB_POWER,
    EFFECT_TRADE,
    EFFECT_CRAFT_QUALITY,
    EFFECT_DAMAGE,
    EFFECT_PET_POWER,
    EFFECT_MLC_REWARD,
    EFFECT_KEEP_BLC,
    EFFECT_ULC_REWARD,
    EFFECT_STABLE_AREAS,
    EFFECT_BANK,
    EFFECT_QUARK,
    EFFECT_ALL_REWARDS,
    EFFECT_FRUIT,
    EFFECT_SCROLL,
    EFFECT_HARBOR,
    EFFECT_SHADOW_TREE,
    EFFECT_LESS_SACRIFICES
};

struct ResourceDef {
    const char *name;
    const char *short_name;
    uint8_t color;
    bool permanent;
};

struct AreaDef {
    const char *name;
    ResourceId leaf;
    ResourceId cost_resource;
    BigNum cost;
    SystemId requirement;
    uint8_t background;
};

struct ToolDef {
    const char *name;
    ResourceId cost_resource;
    BigNum cost;
    uint32_t power_permille;
    uint8_t range;
    SystemId requirement;
};

struct UpgradeDef {
    const char *name;
    const char *description;
    ShopId shop;
    ResourceId cost_resource;
    BigNum base_cost;
    uint16_t growth_permille;
    uint16_t max_level;
    UpgradeEffect effect;
    SystemId requirement;
};

struct PetDef {
    const char *name;
    const char *effect;
    UpgradeEffect bonus;
    uint16_t permille;
    ResourceId cost_resource;
    BigNum cost;
};

struct ChallengeDef {
    const char *name;
    const char *rule;
    SystemId goal_system;
    uint16_t reward_permille;
};

struct AchievementDef {
    const char *name;
    ResourceId resource;
    BigNum threshold;
};

extern const ResourceDef RESOURCE_DEFS[RESOURCE_COUNT];
extern const AreaDef AREA_DEFS[];
extern const uint8_t AREA_COUNT;
extern const ToolDef TOOL_DEFS[];
extern const uint8_t TOOL_COUNT;
extern const UpgradeDef UPGRADE_DEFS[];
extern const uint8_t UPGRADE_COUNT;
extern const PetDef PET_DEFS[];
extern const uint8_t PET_COUNT;
extern const ChallengeDef CHALLENGE_DEFS[];
extern const uint8_t CHALLENGE_COUNT;
extern const AchievementDef ACHIEVEMENT_DEFS[];
extern const uint8_t ACHIEVEMENT_COUNT;
extern const char *const SYSTEM_NAMES[SYSTEM_COUNT];

BigNum content_cost(BigNum base, uint16_t growth_permille, uint16_t level);
