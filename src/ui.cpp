#include "ui.h"

#include <cstdio>
#include <cstring>

#include <graphx.h>
#include <keypadc.h>

#include "systems.h"

namespace {

constexpr uint8_t COLOR_BLACK = 0;
constexpr uint8_t COLOR_NAVY = 1;
constexpr uint8_t COLOR_GREEN = 2;
constexpr uint8_t COLOR_LEAF = 3;
constexpr uint8_t COLOR_BROWN = 4;
constexpr uint8_t COLOR_GRAY = 5;
constexpr uint8_t COLOR_CYAN = 6;
constexpr uint8_t COLOR_SILVER = 7;
constexpr uint8_t COLOR_RED = 8;
constexpr uint8_t COLOR_ORANGE = 9;
constexpr uint8_t COLOR_YELLOW = 10;
constexpr uint8_t COLOR_LIME = 11;
constexpr uint8_t COLOR_BLUE = 12;
constexpr uint8_t COLOR_PURPLE = 13;
constexpr uint8_t COLOR_PINK = 14;
constexpr uint8_t COLOR_WHITE = 15;
constexpr uint8_t VISIBLE_ROWS = 9;

struct MenuEntry {
    const char *name;
    ScreenId screen;
};

const MenuEntry MENU_ENTRIES[] = {
        {"Resource overview", SCREEN_RESOURCES}, {"Tools", SCREEN_TOOLS},
        {"Areas", SCREEN_AREAS}, {"Shops", SCREEN_SHOPS},
        {"Crunch & resets", SCREEN_RESETS}, {"System hub", SCREEN_SYSTEMS},
        {"Automation", SCREEN_AUTOMATION}, {"Pets", SCREEN_PETS},
        {"Crafting & equipment", SCREEN_CRAFTING}, {"Trading", SCREEN_TRADING},
        {"Challenges", SCREEN_CHALLENGES}, {"Achievements", SCREEN_ACHIEVEMENTS},
        {"Statistics", SCREEN_STATS}, {"Settings / save", SCREEN_SETTINGS},
        {"Controls", SCREEN_CONTROLS}, {"Credits", SCREEN_CREDITS},
        {"Return to field", SCREEN_GAME}
};
constexpr uint8_t MENU_COUNT = sizeof(MENU_ENTRIES) / sizeof(MENU_ENTRIES[0]);

const char *const SHOP_NAMES[SHOP_COUNT] = {
        "Leaf Shop", "Gold Shop", "Coin Shop", "BLC Shop", "MLC Shop",
        "ULC Shop", "Automation", "Craft Forge", "Galaxy Shop"
};

const char *const RESET_NAMES[] = {"Prestige", "Big Leaf Crunch", "Mega Leaf Crunch",
                                   "Ultra Leaf Crunch", "Quarkstige"};

const char *const ULC_SACRIFICE_NAMES[ULC_SACRIFICE_COUNT] = {
        "Borbventures", "Cards", "Crafted Leaves", "Dice", "Equipment",
        "Leafscensions", "Materials", "Mines", "Quarkstiges", "Relics"
};

struct ResetPreview {
    const char *cleared_first;
    const char *cleared_second;
    const char *kept_first;
    const char *kept_second;
};

const ResetPreview RESET_PREVIEWS[] = {
        {"Basic-Sand leaves and all flasks", "Leaf + Gold Shops; combo",
         "Coins, Ancient+ and later progress", "Areas, tools, systems, equipment"},
        {"Basic-Sand leaves and all flasks", "Leaf/Gold/Coin Shops; combo",
         "BLC+, Ancient+ and later progress", "Areas, tools, systems, equipment"},
        {"Basic-Sand leaves/flasks; areas", "Leaf-BLC Shops; Tower; trades",
         "MLC+, Ancient+ and later progress", "Tools, pets, equipment, milestones"},
        {"Coins, BLC, MLC; Leaf-MLC Shops", "Areas; Tower/Pyramid; reset groups",
         "ULC, Gems, Curses; unlock records", "Harbor/Fishing/Shadow; House"},
        {"Quarks and Quark Leaves only", "Local Quark run balance",
         "All global currencies and areas", "Reactor level; all other progress"}
};

const char *reset_current_rule(const GameState &state, uint8_t reset) {
    static char rule[48];
    switch(reset) {
        case RESET_PRESTIGE: return "No preservation choice applies";
        case RESET_BLC:
            return game_effect_level(state, EFFECT_KEEP_COINS) > 0 ?
                    "Coins + printer KEPT: Crunchy Coins" : "Coins + printer CLEARED";
        case RESET_MLC:
            return game_effect_level(state, EFFECT_KEEP_BLC) > 0 ?
                    "BLC KEPT: Crunchy BLC active" : "BLC CLEARED: no Crunchy BLC";
        case RESET_ULC:
            std::snprintf(rule, sizeof(rule), "%u/%u families; areas %s",
                          static_cast<unsigned>(game_ulc_sacrifice_count(state)),
                          static_cast<unsigned>(ULC_SACRIFICE_COUNT),
                          game_effect_level(state, EFFECT_STABLE_AREAS) > 0 ? "KEPT" : "CLEARED");
            return rule;
        case RESET_QUARKSTIGE: return "Awards Blobs; Quarkstige advances";
    }
    return "";
}

void set_message(UiState &ui, const char *message) {
    std::strncpy(ui.message, message, sizeof(ui.message) - 1);
    ui.message[sizeof(ui.message) - 1] = '\0';
    ui.message_timer = 75;
}

void enter_screen(UiState &ui, ScreenId screen) {
    ui.screen = screen;
    ui.selection = 0;
    ui.page = 0;
    ui.showing_confirmation = false;
}

void move_selection(UiState &ui, const InputState &input, uint8_t count) {
    if(count == 0) {
        ui.selection = 0;
        return;
    }
    if(input_pressed(input, 7, kb_Up)) {
        ui.selection = ui.selection == 0 ? static_cast<uint8_t>(count - 1) : static_cast<uint8_t>(ui.selection - 1);
    }
    if(input_pressed(input, 7, kb_Down)) ui.selection = static_cast<uint8_t>((ui.selection + 1U) % count);
}

uint8_t shop_upgrade_count(ShopId shop) {
    uint8_t count = 0;
    for(uint8_t i = 0; i < UPGRADE_COUNT; i++) if(UPGRADE_DEFS[i].shop == shop) count++;
    return count;
}

uint8_t shop_upgrade_at(ShopId shop, uint8_t position) {
    for(uint8_t i = 0; i < UPGRADE_COUNT; i++) {
        if(UPGRADE_DEFS[i].shop == shop && position-- == 0) return i;
    }
    return 0xFF;
}

void draw_text(const char *text, int x, int y, uint8_t foreground, uint8_t background) {
    gfx_SetTextFGColor(foreground);
    gfx_SetTextBGColor(background);
    gfx_PrintStringXY(text, x, y);
}

void draw_header(const char *title, const GameState &state) {
    gfx_SetColor(COLOR_NAVY);
    gfx_FillRectangle(0, 0, 320, 24);
    draw_text(title, 6, 8, COLOR_WHITE, COLOR_NAVY);
    char amount[20];
    bn_format(state.resources[AREA_DEFS[state.current_area].leaf], amount, sizeof(amount));
    int x = 314 - gfx_GetStringWidth(amount);
    draw_text(amount, x, 8, COLOR_YELLOW, COLOR_NAVY);
}

void draw_footer(const char *left, const char *right) {
    gfx_SetColor(COLOR_NAVY);
    gfx_FillRectangle(0, 225, 320, 15);
    draw_text(left, 5, 229, COLOR_SILVER, COLOR_NAVY);
    int x = 315 - gfx_GetStringWidth(right);
    draw_text(right, x, 229, COLOR_SILVER, COLOR_NAVY);
}

void draw_row(uint8_t row, bool selected, const char *left, const char *right, bool enabled) {
    int y = 28 + row * 21;
    uint8_t background = selected ? COLOR_BLUE : COLOR_BLACK;
    uint8_t foreground = enabled ? COLOR_WHITE : COLOR_GRAY;
    gfx_SetColor(background);
    gfx_FillRectangle(4, y, 312, 19);
    draw_text(left, 9, y + 5, foreground, background);
    if(right && *right) {
        int x = 310 - gfx_GetStringWidth(right);
        draw_text(right, x, y + 5, foreground, background);
    }
}

uint8_t first_visible(uint8_t selection) {
    return selection < VISIBLE_ROWS ? 0 : static_cast<uint8_t>(selection - VISIBLE_ROWS + 1);
}

void draw_message(const UiState &ui) {
    if(ui.message_timer == 0 || ui.message[0] == '\0') return;
    int width = gfx_GetStringWidth(ui.message) + 18;
    if(width > 308) width = 308;
    int x = (320 - width) / 2;
    gfx_SetColor(COLOR_YELLOW);
    gfx_FillRectangle(x - 2, 196, width + 4, 23);
    gfx_SetColor(COLOR_BLACK);
    gfx_FillRectangle(x, 198, width, 19);
    draw_text(ui.message, x + 8, 204, COLOR_WHITE, COLOR_BLACK);
}

void draw_confirmation(const UiState &ui, const GameState &state) {
    if(!ui.showing_confirmation) return;
    const ResetPreview &preview = RESET_PREVIEWS[ui.confirm_reset];
    gfx_SetColor(COLOR_SILVER);
    gfx_FillRectangle(6, 25, 308, 195);
    gfx_SetColor(COLOR_BLACK);
    gfx_FillRectangle(9, 28, 302, 189);
    draw_text("CONFIRM RESET", 104, 34, COLOR_RED, COLOR_BLACK);
    draw_text(RESET_NAMES[ui.confirm_reset], 17, 49, COLOR_WHITE, COLOR_BLACK);
    char reward[32];
    char amount[20];
    bn_format(game_reset_reward(state, static_cast<ResetTier>(ui.confirm_reset)), amount, sizeof(amount));
    std::snprintf(reward, sizeof(reward), "Reward: %s", amount);
    draw_text(reward, 17, 64, COLOR_YELLOW, COLOR_BLACK);

    draw_text("CLEARS NOW", 17, 82, COLOR_RED, COLOR_BLACK);
    draw_text(preview.cleared_first, 17, 96, COLOR_WHITE, COLOR_BLACK);
    draw_text(preview.cleared_second, 17, 110, COLOR_WHITE, COLOR_BLACK);
    draw_text("KEEPS NOW", 17, 129, COLOR_LIME, COLOR_BLACK);
    draw_text(preview.kept_first, 17, 143, COLOR_WHITE, COLOR_BLACK);
    draw_text(preview.kept_second, 17, 157, COLOR_WHITE, COLOR_BLACK);
    draw_text("CURRENT RULE", 17, 176, COLOR_CYAN, COLOR_BLACK);
    draw_text(reset_current_rule(state, ui.confirm_reset), 17, 190, COLOR_WHITE, COLOR_BLACK);
    draw_text("2nd/Enter: CONFIRM  Clear: cancel", 17, 205, COLOR_YELLOW, COLOR_BLACK);
}

void draw_game(const GameState &state, const LeafField &field) {
    uint8_t background = AREA_DEFS[state.current_area].background;
    gfx_SetColor(background);
    gfx_FillRectangle(0, 24, 320, 201);
    gfx_SetColor(static_cast<uint8_t>((background + 3U) & 15U));
    for(int y = 39; y < 225; y += 32) gfx_HorizLine(0, y, 320);
    if(AREA_DEFS[state.current_area].leaf == RES_WATER_LEAVES) {
        gfx_SetColor(COLOR_SILVER);
        gfx_FillRectangle(278, 65, 38, 133);
        gfx_SetColor(COLOR_NAVY);
        gfx_FillRectangle(282, 69, 30, 125);
        draw_text("JOB", 285, 119, COLOR_WHITE, COLOR_NAVY);
    }
    for(const auto &leaf: field.leaves) {
        if(!leaf.active) continue;
        int x = leaf.x / 16;
        int y = leaf.y / 16;
        gfx_SetColor(leaf.color);
        gfx_FillTriangle(x, y - 3, x - 4, y + 2, x + 3, y + 3);
        gfx_SetColor(COLOR_BROWN);
        gfx_Line(x, y + 1, x + 3, y + 5);
    }
    int px = field.blower_x / 16;
    int py = field.blower_y / 16;
    gfx_SetColor(COLOR_SILVER);
    gfx_FillCircle(px, py, 6);
    gfx_SetColor(COLOR_BLACK);
    gfx_Circle(px, py, 6);
    gfx_SetColor(COLOR_ORANGE);
    gfx_FillTriangle(px + field.facing_x * 5, py + field.facing_y * 5,
                     px + field.facing_x * 13 + field.facing_y * 4,
                     py + field.facing_y * 13 - field.facing_x * 4,
                     px + field.facing_x * 13 - field.facing_y * 4,
                     py + field.facing_y * 13 + field.facing_x * 4);
    draw_header(AREA_DEFS[state.current_area].name, state);
    char status[44];
    std::snprintf(status, sizeof(status), "%s  Combo x%u", TOOL_DEFS[state.current_tool].name,
                  static_cast<unsigned>(state.combo > 0 ? state.combo : 1));
    draw_footer(status, "ENTER: menu");
}

void draw_menu(const UiState &ui, const GameState &state) {
    draw_header("Leaf Blower Revolution CE", state);
    uint8_t first = first_visible(ui.selection);
    for(uint8_t row = 0; row < VISIBLE_ROWS && first + row < MENU_COUNT; row++) {
        uint8_t index = first + row;
        draw_row(row, index == ui.selection, MENU_ENTRIES[index].name, ">", true);
    }
    draw_footer("Arrows: move  Enter: select", "Clear: field");
}

void draw_resources(const UiState &ui, const GameState &state) {
    draw_header("Resources", state);
    uint8_t first = first_visible(ui.selection);
    for(uint8_t row = 0; row < VISIBLE_ROWS && first + row < RESOURCE_COUNT; row++) {
        uint8_t index = first + row;
        char amount[22];
        bn_format(state.resources[index], amount, sizeof(amount));
        draw_row(row, index == ui.selection, RESOURCE_DEFS[index].name, amount, true);
    }
    draw_footer("All current balances", "Clear: back");
}

void draw_tools(const UiState &ui, const GameState &state) {
    draw_header("Blower tools", state);
    uint8_t first = first_visible(ui.selection);
    for(uint8_t row = 0; row < VISIBLE_ROWS && first + row < TOOL_COUNT; row++) {
        uint8_t index = first + row;
        char value[24];
        bool requirement = game_system_unlocked(state, TOOL_DEFS[index].requirement);
        if(game_tool_unlocked(state, index)) {
            std::snprintf(value, sizeof(value), "%s", state.current_tool == index ? "EQUIPPED" : "OWNED");
        } else if(requirement) {
            bn_format(TOOL_DEFS[index].cost, value, sizeof(value));
        } else std::snprintf(value, sizeof(value), "LOCKED");
        draw_row(row, index == ui.selection, TOOL_DEFS[index].name, value, requirement);
    }
    draw_footer("Enter: buy / equip", "Clear: back");
}

void draw_areas(const UiState &ui, const GameState &state) {
    draw_header("Areas", state);
    uint8_t first = first_visible(ui.selection);
    for(uint8_t row = 0; row < VISIBLE_ROWS && first + row < AREA_COUNT; row++) {
        uint8_t index = first + row;
        char value[24];
        bool requirement = game_system_unlocked(state, AREA_DEFS[index].requirement);
        if(game_area_unlocked(state, index)) {
            std::snprintf(value, sizeof(value), "%s", state.current_area == index ? "HERE" : "OPEN");
        } else if(requirement) bn_format(AREA_DEFS[index].cost, value, sizeof(value));
        else std::snprintf(value, sizeof(value), "LOCKED");
        draw_row(row, index == ui.selection, AREA_DEFS[index].name, value, requirement);
    }
    draw_footer("Enter: unlock / travel", "Clear: back");
}

void draw_shop(const UiState &ui, const GameState &state, ShopId shop, const char *footer) {
    draw_header(SHOP_NAMES[shop], state);
    uint8_t count = shop_upgrade_count(shop);
    uint8_t first = first_visible(ui.selection);
    for(uint8_t row = 0; row < VISIBLE_ROWS && first + row < count; row++) {
        uint8_t upgrade = shop_upgrade_at(shop, first + row);
        const UpgradeDef &def = UPGRADE_DEFS[upgrade];
        bool enabled = game_system_unlocked(state, def.requirement) && state.upgrade_levels[upgrade] < def.max_level;
        char value[25];
        if(state.upgrade_levels[upgrade] >= def.max_level) std::snprintf(value, sizeof(value), "MAX");
        else if(!game_system_unlocked(state, def.requirement)) std::snprintf(value, sizeof(value), "LOCKED");
        else {
            char cost[15];
            bn_format(game_upgrade_cost(state, upgrade), cost, sizeof(cost));
            std::snprintf(value, sizeof(value), "L%u %s", static_cast<unsigned>(state.upgrade_levels[upgrade]), cost);
        }
        draw_row(row, first + row == ui.selection, def.name, value, enabled);
    }
    if(count == 0) draw_text("No upgrades in this category.", 48, 108, COLOR_SILVER, COLOR_BLACK);
    draw_footer(footer, "Clear: back");
}

void draw_resets(const UiState &ui, const GameState &state) {
    draw_header("Crunch & reset layers", state);
    for(uint8_t row = 0; row < 5; row++) {
        char reward[22];
        bn_format(game_reset_reward(state, static_cast<ResetTier>(row)), reward, sizeof(reward));
        draw_row(row, row == ui.selection, RESET_NAMES[row], reward, game_can_reset(state, static_cast<ResetTier>(row)));
    }
    draw_text("Review CLEAR/KEEP lists before reset.", 10, 151, COLOR_SILVER, COLOR_BLACK);
    draw_text("2nd on ULC opens its sacrifice plan.", 10, 169, COLOR_SILVER, COLOR_BLACK);
    draw_footer("Enter review  2nd ULC plan", "Clear: back");
}

void draw_ulc_sacrifices(const UiState &ui, const GameState &state) {
    draw_header("ULC sacrifice plan", state);
    uint8_t first = first_visible(ui.selection);
    bool first_ulc = bn_is_zero(state.lifetime[RES_ULC]);
    for(uint8_t row = 0; row < VISIBLE_ROWS && first + row < ULC_SACRIFICE_COUNT; row++) {
        uint8_t index = first + row;
        bool selected = (state.ulc_sacrifice_mask & (1U << index)) != 0;
        draw_row(row, index == ui.selection, ULC_SACRIFICE_NAMES[index],
                 selected ? "SACRIFICE" : "KEEP", !first_ulc);
    }
    char summary[38];
    if(first_ulc) std::snprintf(summary, sizeof(summary), "First ULC: all 10");
    else std::snprintf(summary, sizeof(summary), "%u/10 selected; min %u",
                       static_cast<unsigned>(game_ulc_sacrifice_count(state)),
                       static_cast<unsigned>(game_ulc_min_sacrifices(state)));
    draw_footer(summary, "Enter: toggle");
}

void draw_systems(const UiState &ui, const GameState &state, uint32_t now) {
    (void)now;
    draw_header("Progression systems", state);
    uint8_t first = first_visible(ui.selection);
    for(uint8_t row = 0; row < VISIBLE_ROWS && first + row < SYSTEM_COUNT; row++) {
        uint8_t index = first + row;
        bool unlocked = game_system_unlocked(state, static_cast<SystemId>(index));
        draw_row(row, index == ui.selection, SYSTEM_NAMES[index], unlocked ? "READY" : "LOCKED", unlocked);
    }
    draw_footer("Enter: perform / collect", "Clear: back");
}

void draw_pets(const UiState &ui, const GameState &state) {
    draw_header("Pets", state);
    uint8_t first = first_visible(ui.selection);
    for(uint8_t row = 0; row < VISIBLE_ROWS && first + row < PET_COUNT; row++) {
        uint8_t index = first + row;
        char value[22];
        bool enabled = game_system_unlocked(state, SYS_PETS);
        if(game_pet_unlocked(state, index)) std::snprintf(value, sizeof(value), "%s", state.current_pet == index ? "ACTIVE" : "OWNED");
        else if(enabled) bn_format(PET_DEFS[index].cost, value, sizeof(value));
        else std::snprintf(value, sizeof(value), "LOCKED");
        draw_row(row, index == ui.selection, PET_DEFS[index].name, value, enabled);
    }
    draw_footer("Enter: buy / activate", "Clear: back");
}

void draw_crafting(const UiState &ui, const GameState &state) {
    draw_header("Crafting & equipment", state);
    for(uint8_t row = 0; row < MAX_CRAFTED_ITEMS; row++) {
        const CraftedItem &item = state.crafted[row];
        char name[25];
        char status[24];
        if(item.quality == 0) {
            std::snprintf(name, sizeof(name), "Empty equipment slot %u", static_cast<unsigned>(row + 1));
            std::snprintf(status, sizeof(status), "--");
        } else {
            std::snprintf(name, sizeof(name), "Tier %u crafted leaf", static_cast<unsigned>(item.leaf_tier + 1));
            std::snprintf(status, sizeof(status), "Q%u L%u%s", static_cast<unsigned>(item.quality),
                          static_cast<unsigned>(item.level), item.equipped ? " E" : "");
        }
        draw_row(row, row == ui.selection, name, status, game_system_unlocked(state, SYS_CRAFTING));
    }
    draw_footer("2nd: craft  Enter: equip", "Clear: back");
}

void draw_trading(const UiState &ui, const GameState &state, uint32_t now) {
    draw_header("Trading", state);
    for(uint8_t row = 0; row < MAX_TRADES; row++) {
        const TradeOffer &trade = state.trades[row];
        char name[28];
        char status[25];
        if(!systems_trade_present(state, row)) {
            std::snprintf(name, sizeof(name), "Trade slot %u", static_cast<unsigned>(row + 1));
            std::snprintf(status, sizeof(status), "NEW");
        } else {
            std::snprintf(name, sizeof(name), "%s -> %s", RESOURCE_DEFS[trade.input_resource].short_name,
                          RESOURCE_DEFS[trade.output_resource].short_name);
            if(trade.active) {
                uint32_t remaining = trade.finish_time > now ? trade.finish_time - now : 0;
                std::snprintf(status, sizeof(status), "%lus", static_cast<unsigned long>(remaining));
            } else std::snprintf(status, sizeof(status), "OFFER");
        }
        draw_row(row, row == ui.selection, name, status, game_system_unlocked(state, SYS_TRADING));
    }
    draw_text("Completed trades also award cheese.", 28, 111, COLOR_SILVER, COLOR_BLACK);
    draw_footer("Enter: refresh / start", "Clear: back");
}

void draw_challenges(const UiState &ui, const GameState &state) {
    draw_header("Challenges", state);
    for(uint8_t row = 0; row < CHALLENGE_COUNT; row++) {
        char status[22];
        if(state.challenge_running && state.active_challenge == row) std::snprintf(status, sizeof(status), "RUNNING");
        else if(state.challenge_completions & (1U << row)) std::snprintf(status, sizeof(status), "COMPLETE");
        else std::snprintf(status, sizeof(status), "+%u.%u%%", CHALLENGE_DEFS[row].reward_permille / 10U,
                           CHALLENGE_DEFS[row].reward_permille % 10U);
        draw_row(row, row == ui.selection, CHALLENGE_DEFS[row].name, status, true);
    }
    if(state.challenge_running) {
        draw_text("2nd abandons; main progress restored.", 8, 176, COLOR_YELLOW, COLOR_BLACK);
        draw_footer("Enter: claim", "2nd: abandon");
    } else {
        draw_footer("Enter: begin challenge", "Clear: back");
    }
}

void draw_achievements(const UiState &ui, const GameState &state) {
    draw_header("Achievements", state);
    uint8_t first = first_visible(ui.selection);
    for(uint8_t row = 0; row < VISIBLE_ROWS && first + row < ACHIEVEMENT_COUNT; row++) {
        uint8_t index = first + row;
        bool complete = (state.achievements & (1UL << index)) != 0;
        draw_row(row, index == ui.selection, ACHIEVEMENT_DEFS[index].name, complete ? "DONE" : "OPEN", true);
    }
    draw_footer("Each achievement boosts output", "Clear: back");
}

void draw_stats(const GameState &state) {
    draw_header("Statistics", state);
    char line[48];
    std::snprintf(line, sizeof(line), "Play time: %lu:%02lu:%02lu",
                  static_cast<unsigned long>(state.play_seconds / 3600UL),
                  static_cast<unsigned long>((state.play_seconds / 60UL) % 60UL),
                  static_cast<unsigned long>(state.play_seconds % 60UL));
    draw_text(line, 18, 44, COLOR_WHITE, COLOR_BLACK);
    std::snprintf(line, sizeof(line), "Tower floor: %u", static_cast<unsigned>(state.tower_floor));
    draw_text(line, 18, 66, COLOR_WHITE, COLOR_BLACK);
    std::snprintf(line, sizeof(line), "Pyramid floor: %u", static_cast<unsigned>(state.pyramid_floor));
    draw_text(line, 18, 88, COLOR_WHITE, COLOR_BLACK);
    std::snprintf(line, sizeof(line), "Mine depth: %u   Fishing: %u", static_cast<unsigned>(state.mine_depth),
                  static_cast<unsigned>(state.fishing_level));
    draw_text(line, 18, 110, COLOR_WHITE, COLOR_BLACK);
    std::snprintf(line, sizeof(line), "Death book: %u   Galaxy: %u", static_cast<unsigned>(state.death_book_level),
                  static_cast<unsigned>(state.galaxy_stage));
    draw_text(line, 18, 132, COLOR_WHITE, COLOR_BLACK);
    uint8_t systems = 0;
    for(uint8_t i = 0; i < SYSTEM_COUNT; i++) if(game_system_unlocked(state, static_cast<SystemId>(i))) systems++;
    std::snprintf(line, sizeof(line), "Systems unlocked: %u/%u", static_cast<unsigned>(systems), static_cast<unsigned>(SYSTEM_COUNT));
    draw_text(line, 18, 154, COLOR_WHITE, COLOR_BLACK);
    draw_footer("Lifetime totals are in Resources", "Clear: back");
}

void draw_settings(const UiState &ui, const GameState &state) {
    draw_header("Settings & save", state);
    draw_row(0, ui.selection == 0, "Autosave every minute", (state.settings_flags & 1U) ? "ON" : "OFF", true);
    draw_row(1, ui.selection == 1, "Reduced motion", (state.settings_flags & 2U) ? "ON" : "OFF", true);
    draw_row(2, ui.selection == 2, "Compact number display", (state.settings_flags & 4U) ? "ON" : "OFF", true);
    draw_row(3, ui.selection == 3, "Save now", "WRITE", true);
    draw_row(4, ui.selection == 4, "Save and exit", "EXIT", true);
    draw_footer("Enter: toggle / activate", "Clear: back");
}

void draw_controls(const GameState &state) {
    draw_header("Controls", state);
    const char *const lines[] = {
            "Field: arrows move the blower", "Hold 2nd to blow leaves", "Enter opens the main menu",
            "Menus: arrows move focus", "Enter buys, equips, or activates", "Left/right changes shop category",
            "Clear returns; on field it saves/exits", "2nd: confirm/craft/ULC plan/abandon", "Mode returns directly to the field"
    };
    for(uint8_t i = 0; i < 9; i++) draw_text(lines[i], 12, 34 + i * 20, COLOR_WHITE, COLOR_BLACK);
    draw_footer("All actions use visible focus", "Clear: back");
}

void draw_credits(const GameState &state) {
    draw_header("Credits & licensing", state);
    draw_text("Unofficial calculator fan demake.", 24, 39, COLOR_WHITE, COLOR_BLACK);
    draw_text("Original C++ code and procedural artwork.", 24, 61, COLOR_WHITE, COLOR_BLACK);
    draw_text("Inspired by Leaf Blower Revolution", 24, 83, COLOR_YELLOW, COLOR_BLACK);
    draw_text("by Humble North. No affiliation implied.", 24, 105, COLOR_YELLOW, COLOR_BLACK);
    draw_text("No original game code, art, music, or", 24, 135, COLOR_SILVER, COLOR_BLACK);
    draw_text("audio is distributed with this release.", 24, 157, COLOR_SILVER, COLOR_BLACK);
    draw_text("See LICENSES.md for research attribution.", 24, 187, COLOR_CYAN, COLOR_BLACK);
    draw_footer("Calculator build: LBRCE", "Clear: back");
}

} // namespace

void ui_init(UiState &ui) {
    std::memset(&ui, 0, sizeof(ui));
    ui.screen = SCREEN_GAME;
}

void ui_notify(UiState &ui, const char *message) {
    set_message(ui, message);
}

void ui_init_graphics() {
    gfx_palette[COLOR_BLACK] = gfx_RGBTo1555(11, 14, 15);
    gfx_palette[COLOR_NAVY] = gfx_RGBTo1555(20, 35, 52);
    gfx_palette[COLOR_GREEN] = gfx_RGBTo1555(37, 102, 60);
    gfx_palette[COLOR_LEAF] = gfx_RGBTo1555(93, 170, 65);
    gfx_palette[COLOR_BROWN] = gfx_RGBTo1555(100, 68, 45);
    gfx_palette[COLOR_GRAY] = gfx_RGBTo1555(90, 99, 105);
    gfx_palette[COLOR_CYAN] = gfx_RGBTo1555(61, 166, 191);
    gfx_palette[COLOR_SILVER] = gfx_RGBTo1555(170, 179, 183);
    gfx_palette[COLOR_RED] = gfx_RGBTo1555(215, 57, 57);
    gfx_palette[COLOR_ORANGE] = gfx_RGBTo1555(238, 129, 48);
    gfx_palette[COLOR_YELLOW] = gfx_RGBTo1555(240, 210, 61);
    gfx_palette[COLOR_LIME] = gfx_RGBTo1555(114, 205, 83);
    gfx_palette[COLOR_BLUE] = gfx_RGBTo1555(43, 95, 158);
    gfx_palette[COLOR_PURPLE] = gfx_RGBTo1555(128, 72, 172);
    gfx_palette[COLOR_PINK] = gfx_RGBTo1555(213, 105, 155);
    gfx_palette[COLOR_WHITE] = gfx_RGBTo1555(245, 244, 232);
    gfx_palette[255] = gfx_RGBTo1555(1, 2, 3);
    gfx_SetTextTransparentColor(255);
    gfx_SetTextScale(1, 1);
}

UiResult ui_handle_input(UiState &ui, GameState &state, LeafField &field,
                         const InputState &input, uint32_t now) {
    UiResult result = {false, false, false};
    bool enter = input_pressed(input, 6, kb_Enter);
    bool second = input_pressed(input, 1, kb_2nd);
    bool clear = input_pressed(input, 6, kb_Clear);

    if(ui.showing_confirmation) {
        if(clear) ui.showing_confirmation = false;
        if(second || enter) {
            if(game_apply_reset(state, static_cast<ResetTier>(ui.confirm_reset))) {
                set_message(ui, "Reset complete; save written");
                result.request_save = true;
                result.area_changed = true;
                leaf_field_change_area(field, state);
            }
            ui.showing_confirmation = false;
        }
        return result;
    }

    if(input_pressed(input, 1, kb_Mode) && ui.screen != SCREEN_GAME) {
        enter_screen(ui, SCREEN_GAME);
        return result;
    }
    if(ui.screen == SCREEN_GAME) {
        if(enter) enter_screen(ui, SCREEN_MENU);
        else if(clear) result.request_exit = true;
        return result;
    }
    if(clear) {
        if(ui.screen == SCREEN_MENU) enter_screen(ui, SCREEN_GAME);
        else if(ui.screen == SCREEN_ULC_SACRIFICES) enter_screen(ui, SCREEN_RESETS);
        else enter_screen(ui, SCREEN_MENU);
        return result;
    }

    switch(ui.screen) {
        case SCREEN_MENU:
            move_selection(ui, input, MENU_COUNT);
            if(enter) enter_screen(ui, MENU_ENTRIES[ui.selection].screen);
            break;
        case SCREEN_RESOURCES:
            move_selection(ui, input, RESOURCE_COUNT);
            break;
        case SCREEN_TOOLS:
            move_selection(ui, input, TOOL_COUNT);
            if(enter) set_message(ui, game_buy_tool(state, ui.selection) ? "Tool selected" : "Cannot buy that tool");
            break;
        case SCREEN_AREAS:
            move_selection(ui, input, AREA_COUNT);
            if(enter) {
                uint8_t previous = state.current_area;
                if(game_buy_area(state, ui.selection)) {
                    result.area_changed = state.current_area != previous;
                    if(result.area_changed) leaf_field_change_area(field, state);
                    set_message(ui, "Area selected");
                } else set_message(ui, "Area is locked or too costly");
            }
            break;
        case SCREEN_SHOPS: {
            if(input_pressed(input, 7, kb_Left)) {
                ui.shop = ui.shop == 0 ? SHOP_COUNT - 1 : ui.shop - 1;
                ui.selection = 0;
            }
            if(input_pressed(input, 7, kb_Right)) {
                ui.shop = static_cast<uint8_t>((ui.shop + 1U) % SHOP_COUNT);
                ui.selection = 0;
            }
            uint8_t count = shop_upgrade_count(static_cast<ShopId>(ui.shop));
            move_selection(ui, input, count);
            if(enter && count) {
                uint8_t upgrade = shop_upgrade_at(static_cast<ShopId>(ui.shop), ui.selection);
                set_message(ui, game_buy_upgrade(state, upgrade) ? "Upgrade purchased" : "Cannot buy upgrade");
            }
            break;
        }
        case SCREEN_RESETS:
            move_selection(ui, input, 5);
            if(second && ui.selection == RESET_ULC) {
                enter_screen(ui, SCREEN_ULC_SACRIFICES);
            } else if(enter) {
                if(game_can_reset(state, static_cast<ResetTier>(ui.selection))) {
                    ui.confirm_reset = ui.selection;
                    ui.showing_confirmation = true;
                } else set_message(ui, "Reset requirement not reached");
            }
            break;
        case SCREEN_ULC_SACRIFICES:
            move_selection(ui, input, ULC_SACRIFICE_COUNT);
            if(enter) {
                if(game_toggle_ulc_sacrifice(state, ui.selection)) {
                    set_message(ui, "ULC sacrifice plan updated");
                    result.request_save = true;
                } else if(bn_is_zero(state.lifetime[RES_ULC])) {
                    set_message(ui, "First ULC requires all ten families");
                } else {
                    set_message(ui, "Less Sacrifices minimum reached");
                }
            }
            break;
        case SCREEN_SYSTEMS:
            move_selection(ui, input, SYSTEM_COUNT);
            if(enter) set_message(ui, systems_primary_action(state, static_cast<SystemId>(ui.selection), now)
                                      ? "System action completed" : "Passive system or requirement unmet");
            break;
        case SCREEN_AUTOMATION: {
            uint8_t count = shop_upgrade_count(SHOP_AUTOMATION);
            move_selection(ui, input, count);
            if(enter && count) {
                uint8_t upgrade = shop_upgrade_at(SHOP_AUTOMATION, ui.selection);
                set_message(ui, game_buy_upgrade(state, upgrade) ? "Automation upgraded" : "Cannot buy upgrade");
            }
            break;
        }
        case SCREEN_PETS:
            move_selection(ui, input, PET_COUNT);
            if(enter) set_message(ui, game_buy_pet(state, ui.selection) ? "Pet activated" : "Cannot buy pet");
            break;
        case SCREEN_CRAFTING:
            move_selection(ui, input, MAX_CRAFTED_ITEMS);
            if(second) set_message(ui, systems_primary_action(state, SYS_CRAFTING, now) ? "Crafted a leaf" : "Crafting needs more cheese");
            if(enter && state.crafted[ui.selection].quality > 0)
                set_message(ui, systems_equip_item(state, ui.selection) ? "Equipment activated" : "Cannot equip item");
            break;
        case SCREEN_TRADING:
            move_selection(ui, input, MAX_TRADES);
            if(enter) {
                bool changed;
                if(!systems_trade_present(state, ui.selection)) changed = systems_generate_trades(state, now);
                else if(state.trades[ui.selection].active) changed = systems_complete_trade(state, ui.selection, now);
                else changed = systems_start_trade(state, ui.selection, now);
                set_message(ui, changed ? "Trade advanced" : "Trade cannot start");
            }
            break;
        case SCREEN_CHALLENGES:
            move_selection(ui, input, CHALLENGE_COUNT);
            if(second && state.challenge_running) {
                game_abandon_challenge(state);
                set_message(ui, "Challenge abandoned; main progress restored");
                result.request_save = true;
                result.area_changed = true;
                leaf_field_change_area(field, state);
            } else if(enter) {
                if(state.challenge_running) set_message(ui, game_finish_challenge(state) ? "Challenge completed" : "Goal not reached");
                else set_message(ui, game_start_challenge(state, ui.selection) ? "Challenge started" : "Cannot start challenge");
                result.request_save = true;
                result.area_changed = true;
                leaf_field_change_area(field, state);
            }
            break;
        case SCREEN_ACHIEVEMENTS:
            move_selection(ui, input, ACHIEVEMENT_COUNT);
            break;
        case SCREEN_STATS:
        case SCREEN_CONTROLS:
        case SCREEN_CREDITS:
            break;
        case SCREEN_SETTINGS:
            move_selection(ui, input, 5);
            if(enter) {
                if(ui.selection < 3) {
                    state.settings_flags ^= 1U << ui.selection;
                    set_message(ui, "Setting changed");
                } else if(ui.selection == 3) {
                    result.request_save = true;
                    set_message(ui, "Saving progress");
                } else result.request_exit = true;
            }
            break;
        case SCREEN_GAME:
            break;
    }
    return result;
}

void ui_tick(UiState &ui) {
    if(ui.message_timer > 0) ui.message_timer--;
}

void ui_render(const UiState &ui, const GameState &state, const LeafField &field, uint32_t now) {
    gfx_SetColor(COLOR_BLACK);
    gfx_FillScreen(COLOR_BLACK);
    switch(ui.screen) {
        case SCREEN_GAME: draw_game(state, field); break;
        case SCREEN_MENU: draw_menu(ui, state); break;
        case SCREEN_RESOURCES: draw_resources(ui, state); break;
        case SCREEN_TOOLS: draw_tools(ui, state); break;
        case SCREEN_AREAS: draw_areas(ui, state); break;
        case SCREEN_SHOPS: draw_shop(ui, state, static_cast<ShopId>(ui.shop), "Left/right: shop  Enter: buy"); break;
        case SCREEN_RESETS: draw_resets(ui, state); break;
        case SCREEN_ULC_SACRIFICES: draw_ulc_sacrifices(ui, state); break;
        case SCREEN_SYSTEMS: draw_systems(ui, state, now); break;
        case SCREEN_AUTOMATION: draw_shop(ui, state, SHOP_AUTOMATION, "Enter: buy automation upgrade"); break;
        case SCREEN_PETS: draw_pets(ui, state); break;
        case SCREEN_CRAFTING: draw_crafting(ui, state); break;
        case SCREEN_TRADING: draw_trading(ui, state, now); break;
        case SCREEN_CHALLENGES: draw_challenges(ui, state); break;
        case SCREEN_ACHIEVEMENTS: draw_achievements(ui, state); break;
        case SCREEN_STATS: draw_stats(state); break;
        case SCREEN_SETTINGS: draw_settings(ui, state); break;
        case SCREEN_CONTROLS: draw_controls(state); break;
        case SCREEN_CREDITS: draw_credits(state); break;
    }
    draw_message(ui);
    draw_confirmation(ui, state);
    gfx_SwapDraw();
}
