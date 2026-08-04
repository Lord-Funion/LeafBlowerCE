# Leaf Blower Revolution CE

An unofficial, native C++ idle/action game for the TI-84 Plus CE and TI-84 Plus CE Python Edition. It recreates the progression roles of the current *Leaf Blower Revolution* experience in a calculator-native format: an active leaf field, 37 leaf currencies, 78 area records, four global reset layers, Quarkstige, automation, and compact equivalents for the late-game systems documented through upstream v2.29.7.

This is an independent fan demake. It is not made, approved, or endorsed by Humble North or Texas Instruments. It contains original code and procedural calculator artwork; it does not contain extracted game code, sprites, music, or sound. The requested title has not been cleared for public redistribution. See [Licensing and credits](docs/LICENSES.md) before sharing it.

## Install

Transfer these five calculator files from the release bundle with TI Connect CE or another compatible transfer tool:

- `LBRCE.8xp`
- `libload.8xv`
- `fileioc.8xv`
- `graphx.8xv`
- `keypadc.8xv`

The four AppVars are the official CE Libraries v15.0 runtime. If the same or a newer compatible v15 runtime is already installed, duplicate transfers are unnecessary.

Run `LBRCE` from the calculator's program menu. On OS versions that block direct native programs, use a current, trusted native launcher such as arTIfiCE. No blank save files are installed: the game creates `LBCSAVE`, `LBCBAK`, and a short-lived `LBCTMP` AppVar itself.

## Controls

| Context | Key | Action |
| --- | --- | --- |
| Leaf field | Arrow keys | Move and aim the blower |
| Leaf field | Hold `2nd` | Blow leaves |
| Leaf field | `Enter` | Open the main menu |
| Menus | Up / Down | Move visible focus |
| Shops | Left / Right | Change shop category |
| Menus | `Enter` | Buy, equip, travel, or activate |
| Crafting | `2nd` | Craft a new item |
| Active challenge | `2nd` | Abandon it, restore the main run, and save immediately |
| Reset list on ULC | `2nd` | Open the ten-family ULC sacrifice planner |
| Reset confirmation | `2nd` or `Enter` | Confirm the displayed reset |
| Any menu | `Mode` | Return directly to the field |
| Any menu | `Clear` | Go back |
| Leaf field | `Clear` | Save and exit safely |

There is also a complete in-game Controls page.

## Progression

Push ordinary leaves offscreen to collect them, buy field upgrades and tools, then Prestige for Coins. Coins open areas, printers, converters, and science flasks. Strange Flasks lead to Big Leaf Crunch; later combat floors lead to Mega and Ultra Leaf Crunch. Bismuth appears as a distinct minority leaf in the Mountain field. ULC includes a saved ten-family sacrifice planner: all ten are required the first time, while the ULC Shop's Less Sacrifices upgrade can preserve up to three families later. The System Hub exposes the calculator equivalents for trading, crafting, alchemy, artifacts, Tower, Pyramid, cards, Borbventures, dice, mines, fishing, banks, Soul Forge/Crypt, Quark Reactor, Leafton Pit, Shadow Crystal/Tree, Industrial Harbor, jobs, ships, events, daily rewards, and related systems.

Water Leaves in Industrial Harbor are deliberately different: pushing them offscreen does not collect them. Push them into the visible `JOB` container, then use Harbor/Jobs actions from the System Hub.

## Saves and offline gains

- Autosave is enabled by default every 60 seconds and may be toggled in Settings.
- Manual Save and Save-and-exit are available in Settings.
- Every record has a format version, state version, sequence number, CRC-32 header checksum, and CRC-32 payload checksum.
- Save wire format 2/state version 3 stores the complete challenge snapshot, ULC plan, and Quarkstige counters; format-1/state-2 saves migrate on load.
- Writes are verified in an archived temporary AppVar before the previous primary is rotated to backup.
- Startup chooses the newest valid primary, backup, or interrupted temporary generation, including sequence wraparound.
- Offline gains are capped at seven days and are committed immediately. If that commit fails, the award is withheld so it cannot be replayed after a reset.

Do not manually edit the save AppVars. If `LBCSAVE` is corrupt, leave `LBCBAK` and `LBCTMP` in place so recovery can select the newest valid generation.

## Scope and known limits

This is a complete playable calculator release, but it is not literal PC parity. Large systems are functional, deterministic abstractions sized for CE memory and input. There are 72 visual particles rather than one object per earned leaf; all large currency amounts remain authoritative in the six-byte decimal number system. Account login, cloud saves, purchases, Steam achievements, global leaderboards, server-selected daily/weekly challenges, and live online event scheduling are unavailable; local daily and 30-day rotating rewards replace the progression role that can work offline.

The clean build and all 19 host verification tests pass. The executable also contains startup tests for new-game state, maximum shop levels, areas, every reset tier and repeat guard, preservation, the ULC planner, Quarkstige, challenges, offline gains, and saturation. A physical calculator and a legally dumped calculator ROM were not available in this workspace, so hardware frame-time, OS garbage-collection prompts, cable transfer, and emulator fault injection remain documented manual verification items rather than claimed results. See [Testing](docs/TESTING.md) and the [feature matrix](docs/FEATURE_MATRIX.md).

## Development documents

- [Reproducible build instructions](BUILDING.md)
- [Architecture](docs/ARCHITECTURE.md)
- [Feature matrix](docs/FEATURE_MATRIX.md)
- [Testing and limitations](docs/TESTING.md)
- [Research sources](docs/RESEARCH_SOURCES.md)
- [Full research inventory](docs/research/FEATURE_INVENTORY.md)
- [Licensing and credits](docs/LICENSES.md)
- [Generated files](docs/GENERATED_FILES.md)
- [Release notes](RELEASE_NOTES.md)
