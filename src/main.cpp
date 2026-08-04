#include <cstdio>

#include <graphx.h>
#include <keypadc.h>
#include <fileioc.h>
#include <tice.h>

#include "game_state.h"
#include "input.h"
#include "leaf_field.h"
#include "save.h"
#include "systems.h"
#include "ui.h"
#include "validation.h"

namespace {
bool graphics_active = false;

void before_archive_gc() {
    if(graphics_active) {
        gfx_End();
        graphics_active = false;
    }
}

void after_archive_gc() {
    gfx_Begin();
    gfx_SetDrawBuffer();
    ui_init_graphics();
    graphics_active = true;
}
} // namespace

int main() {
    static GameState state;
    static LeafField field;
    static InputState input;
    static UiState ui;

    const uint16_t self_test_failures = runtime_self_test(state);
    if(self_test_failures != 0) {
        char message[32];
        std::snprintf(message, sizeof(message), "LBRCE self-test: %04X",
                      static_cast<unsigned>(self_test_failures));
        os_ClrHome();
        os_PutStrFull(message);
        os_NewLine();
        os_PutStrFull("Report this code.");
        delay(2500);
        return 1;
    }

    uint32_t now = save_rtc_seconds();
    uint32_t offline_seconds = 0;
    SaveLoadStatus load_status = save_load(state, now, offline_seconds);
    game_validate(state);
    leaf_field_init(field, state);
    input_init(input);
    ui_init(ui);

    gfx_Begin();
    gfx_SetDrawBuffer();
    ui_init_graphics();
    graphics_active = true;
    ti_SetGCBehavior(before_archive_gc, after_archive_gc);

    if(offline_seconds > 0) {
        char message[48];
        std::snprintf(message, sizeof(message), "Offline gains: %lu seconds",
                      static_cast<unsigned long>(offline_seconds));
        ui_notify(ui, message);
    } else if(load_status == SaveLoadStatus::Backup || load_status == SaveLoadStatus::Recovered) {
        ui_notify(ui, "Recovered progress from safe save");
    }

    bool running = true;
    uint32_t previous_second = now;
    uint8_t frame = 0;
    while(running) {
        input_scan(input);
        now = save_rtc_seconds();
        if(now > previous_second) {
            uint32_t elapsed = now - previous_second;
            if(elapsed > 1) game_apply_offline(state, elapsed - 1);
            systems_tick(state, now);
            game_tick_second(state, now);
            previous_second = now;
            if((state.settings_flags & 1U) != 0) {
                SaveAutoResult auto_result = save_auto(state, now, elapsed);
                if(auto_result == SaveAutoResult::Failed) ui_notify(ui, "Autosave failed; backup retained");
            }
        } else if(now < previous_second) {
            previous_second = now;
        }

        if(ui.screen == SCREEN_GAME && ((state.settings_flags & 2U) == 0 || (frame & 1U) == 0)) {
            int8_t move_x = 0;
            int8_t move_y = 0;
            if(input_down(input, 7, kb_Left)) move_x--;
            if(input_down(input, 7, kb_Right)) move_x++;
            if(input_down(input, 7, kb_Up)) move_y--;
            if(input_down(input, 7, kb_Down)) move_y++;
            leaf_field_update(field, state, move_x, move_y);
        }

        UiResult result = ui_handle_input(ui, state, field, input, now);
        if(result.request_save && !save_write(state, now)) ui_notify(ui, "Save failed; prior copy retained");
        if(result.request_exit) running = false;
        ui_tick(ui);
        ui_render(ui, state, field, now);
        frame++;
        delay(32);
    }

    bool saved = save_write(state, save_rtc_seconds());
    ti_SetGCBehavior(nullptr, nullptr);
    gfx_End();
    graphics_active = false;
    kb_Reset();
    if(!saved) {
        os_ClrHome();
        os_PutStrFull("LBRCE: save failed; backup kept.");
        delay(1400);
    }
    return 0;
}
