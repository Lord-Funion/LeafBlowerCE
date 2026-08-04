# Verification report and hardware limitations

## Completed in this workspace

- Clean Toolchain v15.0 rebuild from `make clean` with `-Wall -Wextra -Werror -Oz`.
- Successful LTO, link, ZX7 compression, and creation of a valid `.8xp` transfer file.
- Nine host verification tests covering large-number math, CRC-32, content counts, exact 78-area ordering, unfinished markers, TI signature/size, BSS ceiling, and save-recovery guards.
- Startup runtime self-test compiled into the game for number arithmetic and content-table integrity.
- Static save audit for three-way generation selection, wraparound, payload/header corruption, semantic bounds, interrupted rotation, RTC rollback, offline anti-replay, and GraphX-safe archive GC callbacks.
- Map inspection confirming BSS remains below the project's 50 KiB ceiling.
- Runtime dependency audit confirming only `FILEIOC`, `GRAPHX`, and `KEYPADC`, plus `libload`, are required.

## Verification scenarios represented by tests or code guards

| Scenario | Evidence |
| --- | --- |
| New game | `save_load` initializes a validated state when no candidate is valid. |
| Save/load | Explicit packed payload, read-back validation, two CRC-32 values. |
| Corrupt primary | Newest valid backup/temp candidate is selected. |
| Interrupted write | A newer verified archived temp is recovered even beside an older valid primary. |
| Sequence wrap | Compile-time assertion verifies `0xFFFFFFFF -> 1` ordering. |
| Offline replay | Offline gains must commit immediately or are rolled back. |
| Upgrade maximums | Runtime table checks and save semantic bounds. |
| Resource overflow | Saturating seven-digit decimal arithmetic with exponent bounds. |
| Areas | All 78 rows are parsed and compared in exact researched order. |
| Every reset layer | Separate award/application paths for Prestige, BLC, MLC, ULC, Quarkstige. |
| Preservation | Keep-coins/BLC/MLC flags are captured before reset mutation. |
| Challenge isolation | Full main-state snapshot/restore for challenge sessions. |
| Long automation | Bulk per-second/offline paths; no per-earned-leaf object allocation. |
| Low memory | Static BSS ceiling test and no gameplay heap allocation. |
| Safe exit | Field `Clear` and Settings Save-and-exit both commit before `gfx_End`. |

## Manual fault-injection matrix for CEmu or hardware

These are the exact remaining interruption checks:

1. Primary generation 10, backup 9, temp 11; cut after temp archive: recover 11 and retain 10 as backup.
2. Cut after old backup deletion: recover temp 11.
3. Cut after primary-to-backup rotation: recover temp 11.
4. Cut after temp-to-primary rotation: primary 11 loads.
5. Corrupt temp 11: load newest valid primary/backup.
6. Corrupt primary with valid backup/temp: load the newest valid fallback.
7. First save with only temp generation 1: recover it and rebuild redundancy.
8. Apply offline progress, hard-reset before one minute, and reload: no second award.
9. Force temp write/archive failure while applying offline progress: award remains zero and baseline is unchanged.
10. Force an archive garbage-collection prompt while GraphX is active: OS prompt is legible and graphics resume correctly.

## Hardware limitations encountered

No physical TI-84 Plus CE was attached to this workspace. CEmu's test runner exists in the Toolchain installation, but CEmu requires a ROM dumped from a calculator; no legally obtained ROM was available. Consequently, this release does **not** claim:

- measured frame rate on an original-revision 48 MHz calculator;
- successful USB/cable transfer on a specific TI Connect CE version;
- visual confirmation on every hardware LCD revision;
- real OS archive-GC prompt/fault injection;
- direct launch behavior for every calculator OS/native launcher combination.

The program is compiled for the standard CE ABI, remains within the measured program/BSS limits, uses official v15 runtime AppVars, and includes the correct GC callbacks, but the above items should be run before a broad public release. Network/cloud/leaderboard behavior cannot be hardware-tested because those PC account services are intentionally not implemented.

