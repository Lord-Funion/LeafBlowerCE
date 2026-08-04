# Leaf Blower Revolution CE: production architecture

Status: architecture baseline for CE C/C++ Toolchain v15.0, researched 2026-08-03. This document specifies the target design; it does not claim that the current game source already implements it.

## Executive decisions

- Ship one archived, compressed `LBRCE.8xp` engine and a manifest-indexed set of immutable archived AppVars. Keep feature behavior data-driven so the executable remains below the toolchain's 64 KiB code/data/rodata limit.
- Keep mutable progress only in two save AppVars, `LBRSA` and `LBRSB`. Select the newest fully valid generation at load. Never overwrite the only valid generation.
- Treat the practical game working-memory limit as the toolchain's approximately 60 KiB shared BSS/heap region, not the calculator's advertised 154 KB. Keep BSS at or below 50 KiB, leave at least 8-10 KiB of heap/headroom, and never put large arrays on the roughly 4 KiB stack.
- Use GraphX's 8-bit palettized double buffer, a single shared palette, RLET sprites, fixed-point leaf physics, and a visual leaf pool independent of the mathematical economy.
- Use a normalized, non-negative decimal `BigNum` with seven significant digits and saturating arithmetic. Resource subtraction floors at zero. Serialize fields explicitly rather than dumping C/C++ structs.
- Use the calculator date and time only for cross-session elapsed time. Use standard `clock()` for in-session timing. Offline progress is bulk-evaluated and must be committed to a new save generation before the reward is considered claimed.
- Generate content packs, IDs, formulas, reset rules, validation metadata, and host-test fixtures from one canonical data source. The on-calculator engine must not contain hundreds of hand-coded feature branches.
- Pin Toolchain v15.0 and CE Libraries v15.0 for release builds. Package the exact required library AppVars alongside the game, subject to their licenses.

## Verified platform constraints

Texas Instruments advertises a 320x240 display, 154 KB available RAM, 3 MB flash archive, and an internal clock for current CE/CE Python hardware. The programming constraints are tighter than those marketing totals.

| Constraint | v15 fact | Architectural consequence |
| --- | ---: | --- |
| CPU | 48 MHz eZ80; native `int` and pointers are 24-bit | Prefer `uint8_t` and `uint24_t` in hot code; use unsigned arithmetic where practical. Do not assume desktop C type sizes. |
| Program code/data/rodata | Up to about 64 KiB | Keep the engine under 60 KiB by moving strings, definitions, and art to AppVars. Parse the link map in CI. |
| BSS + heap | Shared region of about 60 KiB | Fixed arenas, no unbounded containers, and no routine allocation after startup. |
| Stack | Roughly 4 KiB | No recursion; no large local arrays; keep measured high-water below 2.5 KiB. |
| AppVar payload | `OS_VAR_MAX_SIZE` is 65,512 bytes in the v15 header | Cap project shards at 60,000 bytes so offsets remain 16-bit and generators retain safety margin. |
| Screen | 320x240 | Calculator-native pages, not a scaled desktop UI. |
| GraphX mode | 8 bits per pixel, 256 palette entries | One global 512-byte palette; reuse color indices across all art. |
| GraphX VRAM | 153,600 bytes total; 76,800 bytes per buffer | Double buffering is available in the separate VRAM window; it does not enlarge the 60 KiB BSS/heap budget. |
| User archive | 3 MB advertised | Target at most 1.25 MiB for game content plus executable and keep a release hard ceiling of 1.75 MiB excluding user saves and shared CE libraries. |
| Native execution | OS 5.5.0 and later removed direct C/ASM launch | Document and link the current arTIfiCE launcher for affected systems. Do not bundle it without checking its distribution terms. |

The official toolchain hardware overview also records two meaningful hardware classes: original calculators and the faster 2019-and-later revision with an XIP flash cache. Frame and load-time acceptance tests must use the older class as the performance floor.

Toolchain v15.0 added `.8ek` application output, but the user's required artifact is `.8xp`, and the v15 release notes say complete on-calculator application installation remains outside toolchain scope. This game should therefore remain an `.8xp` program.

## Runtime architecture

The engine is one process with strict boundaries:

```text
platform (GraphX, KeypadC, FileIOC, RTC, clock)
       |             |                 |
       v             v                 v
   input/actions  content cache     save/offline
       |             |                 |
       +----------> simulation <--------+
                         |
                    derived state
                         |
                      UI model
                         |
                 renderer + font
```

The important state separation is:

1. `Content`: immutable IDs, formulas, descriptions, reset domains, sprites, and UI metadata read from archived AppVars.
2. `GameState`: authoritative persistent values only. It contains resources, levels, unlock bits, inventories, challenge state, automation timers, statistics, RNG state, and timestamps.
3. `DerivedState`: cached rates and multipliers recomputed after load, purchase, equipment change, challenge transition, or reset. It is never saved.
4. `AreaRuntime`: transient leaf particles, blower forces, animation state, and decoded active-area art. Leaf particles are never the authoritative source of currency.
5. `UiState`: current screen, focus, scroll positions, modal confirmation state, and input repeat state. Only settings that matter across launches are saved.

Recommended source boundaries are `platform`, `bignum`, `content`, `model`, `economy`, `automation`, `offline`, `reset`, `save`, `input`, `ui`, `render`, and `app`. Feature-specific C++ should be exceptional; most shops and progression systems should be definitions consumed by generic engines.

Do not split ordinary gameplay across executable programs. `os_RunPrgm()` destroys the current program context, so executable overlays require a persisted handoff and callback reconstruction. First move constants to AppVars and replace repeated feature code with validated data/opcodes. A second executable is a last-resort installer or diagnostic, not a gameplay module.

## Executable and AppVar layout

All on-calculator names must fit the TI variable naming limit (up to eight letters/numbers, first character not numeric). Use stable internal names; desktop filenames may include version text, but the internal names must not.

| Internal name | Kind | Mutability | Purpose |
| --- | --- | --- | --- |
| `LBRCE` | `.8xp` | release only | Engine, embedded root manifest CRC/build ID, tiny fallback font/error UI |
| `LBRMAN` | `.8xv` | immutable | Pack directory, content ABI, counts, expected sizes and CRC-32 values |
| `LBRC000` ... | `.8xv` | immutable | Sharded definitions, strings, formula bytecode, reset rules |
| `LBRG000` ... | `.8xv` | immutable | Palettes, RLET sprites, tiles, and area art blocks |
| `LBRSA` | `.8xv` | game-owned | Transactional save slot A |
| `LBRSB` | `.8xv` | game-owned | Transactional save slot B |

The manifest maps logical block IDs to `(AppVar index, offset, compressed length, uncompressed length, codec, CRC-32)`. The executable embeds the expected manifest CRC and content ABI. That makes corrupted sizes untrusted until the root manifest has passed validation and prevents a bad decompression length from becoming a memory overwrite.

Installed packs are read-only. The game must never mix installed content with save data, because content updates must not risk a user's progress. Save schemas reference stable numeric IDs; deleted content IDs remain reserved so an update never reassigns an old save's meaning.

GraphX, KeypadC, FileIOC, and FontLibC are CE Libraries dynamically linked by LibLoad and delivered as archived library AppVars. That saves executable space but consumes archive space and makes the exact v15.0 library set a runtime dependency. Keep these libraries required and package LibLoad plus the four used libraries with the release.

Each pack uses a byte-defined format, not a compiler struct:

```text
PackHeader
  magic[4]              "LBRP"
  format_version        u16 LE
  content_abi           u16 LE
  build_id              u32 LE
  pack_kind             u8
  pack_index            u8
  directory_count       u16 LE
  directory_offset      u16 LE
  total_length          u16 LE
  pack_crc32             u32 LE

BlockDirectoryEntry
  logical_block_id      u16 LE
  codec                  u8   (raw, LZ4, ZX0)
  flags                  u8
  offset                 u16 LE
  compressed_length     u16 LE
  raw_length             u16 LE
  block_crc32            u32 LE
```

The generator rejects a pack over 60,000 bytes, an overlapping block, an out-of-range offset, a raw block larger than its target arena, an unknown ID, and a dependency cycle.

## RAM plan

The following is a ceiling, not an invitation to fill every byte:

| Resident allocation | Ceiling |
| --- | ---: |
| `GameState` including all resources and progress | 14 KiB |
| Derived rates, formula cache, reset preview | 5 KiB |
| Active leaves, blowers, RNG, collision grid | 4 KiB |
| UI navigation, input edges/repeat, dialog model | 4 KiB |
| Reusable content/decompression scratch arena | 17 KiB |
| Font, string, and FileIOC streaming buffers | 3 KiB |
| Canaries and miscellaneous fixed state | 2 KiB |
| BSS target | 49 KiB |
| Required BSS/heap headroom | at least 9 KiB |

The content arena is a union of mutually exclusive uses: active-area decode, shop-page decode, migration workspace, or a small save I/O buffer. The save codec is streaming and does not require a second full `GameState` or whole-save staging buffer.

Use fixed-capacity arrays and arenas. Avoid `std::vector`, `std::string`, exceptions, RTTI, and allocation in frame/update code. If C++ is retained, use POD-like state and explicit capacities. The toolchain's own coding guidance recommends avoiding dynamic allocation, and GraphX notes that large temporary sprites placed in a function can overflow the small stack.

Suggested visual leaf layout is a structure of arrays with 96 normal leaves and a quality setting up to 128. Signed 16-bit Q12.4 positions and velocities are adequate for a 320x240 field. Per-leaf type, flags, frame, and lifetime are bytes. At 128 leaves this stays near 1.5 KiB. The economy may award `1e100` leaves while only these visual objects exist.

Before a content block is decoded:

1. Open its AppVar with `ti_Open(name, "r")`; read mode does not move an archived AppVar to RAM.
2. Require the exact pack header, build ID, bounds, and CRC from the already validated manifest.
3. Require `raw_length <= arena_capacity`.
4. CRC the compressed bytes.
5. Decompress to the arena.
6. For LZ4 blocks, require `lz4_Decompress_Block()` to return the expected raw length.
7. Close every FileIOC handle with `ti_Close()`.

`ti_GetDataPtr()` permits zero-copy reads from archive, but its documentation warns that creating, deleting, resizing, or moving any variable can invalidate cached pointers; writing through an archive pointer resets the system. Do not retain such a pointer across a save or garbage collection. The safe default is to decode the active block into the fixed arena and retain only offsets inside that arena. If a zero-copy UI block is ever cached, maintain a global `storage_epoch` and reacquire it after every FileIOC mutation and GC callback.

## Compact, generated game data

The canonical host data (JSON/YAML plus generator validation) should generate both the calculator packs and a readable feature matrix. Definitions use numeric IDs and small fields:

- `ResourceDef`: name string offset, icon ID, palette index, reset domain, display flags.
- `AreaDef`: leaf/resource ID, unlock predicate ID, price formula ID, art block ID, spawn profile ID.
- `ToolDef`: unlock predicate, cost formula, force/range/speed effects, sprite ID.
- `UpgradeDef`: shop ID, currency ID, price formula, effect formula, maximum level, reset domain, preservation predicate, UI flags.
- `ResetDef`: reward formula, cleared-domain bitset, preservation rules, confirmation string, post-reset area.
- `AutomationDef`: interval formula, target action, offline eligibility, bulk evaluator ID.
- Pets, equipment, crafting recipes, trades, challenges, achievements, cards, dice, banks, and later systems use the same ID/condition/effect vocabulary rather than custom pointers.

Use `uint16_t` content IDs, `uint8_t` enum fields, `uint16_t` string offsets within a block, `uint16_t` bounded levels, `uint24_t` truly large levels/counters, and bitsets for boolean ownership/unlocks. Large persistent quantities use six-byte `BigNum` values. Sparse inventories are sorted `(u16 item_id, BigNum quantity)` records; dense small ownership sets are bitsets.

Conditions and formulas are bounded bytecode, for example:

```text
PUSH_RESOURCE u16
PUSH_LEVEL u16
PUSH_CONST u16
ADD, SUB_FLOOR, MUL, DIV, POW_U24
CMP_GE, AND, OR, NOT
APPLY_MULTIPLIER u16
END
```

Opcodes are one byte and operands are little-endian or unsigned LEB128. The interpreter has a fixed eight- or sixteen-value stack, an instruction limit, no backward jumps, no recursion, and explicit error results. The host generator statically checks stack depth, operand types, referenced IDs, reset dependencies, and whether formula results may overflow/saturate. This interpreter is the principal mechanism for representing the full progression graph without overflowing the executable section.

Reset behavior is table-driven. Every mutable field belongs to a reset domain, and every preservation upgrade supplies a predicate/mask. A reset is performed against an immutable pre-reset snapshot of the relevant totals:

1. Build a `ResetPreview` with award and exact cleared/preserved categories.
2. Require a new confirm-button edge after the dialog opens.
3. Compute the award from pre-reset values once.
4. Apply clear/preserve masks once.
5. Add the award, set a new reset nonce, and rebuild derived state.
6. Immediately commit a transactional save before returning control.

This prevents double activation and makes the reset matrix testable from generated definitions.

## Graphics, text, and input

### Graphics

Use `<graphx.h>`:

- `gfx_Begin()` on entry and `gfx_End()` on every exit/error/GC handoff.
- `gfx_SetPalette(palette, size, 0)` for the shared palette.
- `gfx_SetTransparentColor()` once per palette setup.
- `gfx_SetDrawBuffer()` and `gfx_SwapDraw()` for full gameplay frames.
- `gfx_BlitRectangle()` for genuinely small dirty UI panels, not as the default gameplay path.
- `gfx_RLETSprite()`/`gfx_RLETSprite_NoClip()` for transparent art. RLET is faster than ordinary transparent sprites when no runtime transform is needed.

Only call `_NoClip` routines after proving the full sprite lies inside the screen or active clip region. GraphX explicitly warns that an out-of-bounds unclipped draw can corrupt memory.

Use one palette across the release, reserve index 0 for transparency, reserve a stable UI ramp, and let area art share the remaining colors. Draw large flat panels and gradients procedurally. Keep backgrounds tile-based; never decode a 76,800-byte full-screen image into BSS.

Use `convimg` for palette quantization and source asset conversion. Toolchain v15 adds LZ4/LZ4HC asset compression and runtime LZ4 decompression. Use LZ4 for area blocks that change during play; use ZX0 for cold assets where size matters more than load latency. A compressed block must pass its manifest CRC before calling a decompressor because the raw decompression APIs do not accept a destination capacity.

For compact, legible text, use `<fontlibc.h>` with one original approximately 5x7 or 6x8 font embedded in the executable (about 1 KiB) so a save cannot invalidate a font-pack pointer. The relevant calls are `fontlib_SetFont()`, `fontlib_SetWindow()`, `fontlib_SetCursorPosition()`, `fontlib_SetColors()`, `fontlib_SetTransparency()`, and `fontlib_DrawString()`. A GraphX-default-font error screen must remain usable if the embedded font data fails validation. A missing FontLibC AppVar is handled before entry by required LibLoad dependency resolution.

Do not link full `printf` into release gameplay. The toolchain documents roughly 8 KiB of executable cost. Use the dedicated BigNum formatter and small integer formatting routines instead; set `HAS_PRINTF = NO`. Debug builds may use `dbg_printf()` under `make debug`.

### Input

Use `<keypadc.h>` and start with `kb_SetMode(MODE_3_CONTINUOUS)`. Snapshot `kb_Data[1]` through `kb_Data[7]` into an input struct each update and derive `held`, rising-edge `pressed`, and falling-edge `released` bitsets. Test masks with `&`, not equality, so combinations work. Use a deterministic initial delay and repeat interval for menus; destructive resets accept only an edge, never a held repeat.

Map physical keys to semantic actions (`MOVE_*`, `CONFIRM`, `BACK`, `SHOP`, `OVERVIEW`, `TAB_LEFT`, `TAB_RIGHT`, `PAUSE`) in one table. UI and gameplay consume actions, not raw keypad groups. Explicitly configure ON-key latch behavior if the ON key is used, because KeypadC notes that latch state persists between programs.

## Timing and main loop

The v15 timer documentation says Timer 1 is used by `clock()`, Timer 2 by USBDrvCE, and Timer 3 by the OS USB stack; it recommends standard `clock()` instead of directly reprogramming timers. Follow that advice.

Use an unsigned wrap-safe accumulator:

```text
now = clock()
elapsed = now - previous             // unsigned modular subtraction
previous = now
accumulator += min(elapsed, max_frame_gap)
while accumulator >= SIM_STEP and steps < MAX_CATCHUP:
    poll/advance input
    simulate one fixed step
    accumulator -= SIM_STEP
render interpolated or latest state
```

`CLOCKS_PER_SEC` is 32,768 in the v15 header. Start with 30 Hz rendering and 30 Hz leaf physics; update expensive idle aggregation and derived UI counters at 10 Hz. Cap catch-up at five simulation steps and discard excess visual time so a save/GC pause cannot cause a spiral. Mathematical production uses elapsed tick counts and is not lost when visual steps are discarded.

Leaf motion uses fixed point, spatial buckets or bounded pair checks, and a strict particle cap. Blower force and collection are visualized through particles, while printers, converters, seeds, pets, and other automation add to authoritative resources in bulk. No automation system should spawn one particle per earned leaf.

The startup and shutdown order is:

1. Validate required CE libraries through normal LibLoad dependency handling.
2. Validate `LBRMAN` and required content packs.
3. Validate both save slots and decode the newest compatible generation.
4. Read RTC, compute/apply/commit offline progress.
5. Load active-area content into the arena.
6. Configure KeypadC, then GraphX and FontLibC.
7. Run the fixed-step loop.
8. On clean exit, save if dirty, call `gfx_End()`, restore any explicitly changed keypad behavior, close all handles, and return to the OS.

All fatal paths after `gfx_Begin()` go through one cleanup function.

## Large-number representation

The existing logically six-byte shape is appropriate if its semantics are made strict:

```cpp
struct BigNum {
    uint32_t mantissa;
    int16_t exponent;
};

// value = (mantissa / 1,000,000) * 10^exponent
```

Canonical invariants are:

- Zero is exactly `{0, 0}`.
- Non-zero mantissa is in `[1,000,000, 9,999,999]`, giving seven significant decimal digits.
- Exponent is limited to `[-30000, 30000]` even though `int16_t` has a slightly wider range.
- This core type is non-negative. Currency subtraction saturates at zero. Signed UI deltas use a separate sign plus magnitude, never a negative resource.
- Overflow saturates to `{9,999,999, 30000}` and underflow to zero. No wraparound, NaN, or infinity exists.

Required arithmetic behavior:

- Addition aligns decimal exponents. When the exponent gap exceeds available precision, return the larger operand; otherwise align with round-to-nearest, ties-to-even, add in `uint32_t`, then normalize.
- Subtraction compares first, floors at zero, aligns as above, then normalizes.
- Multiplication uses a `uint64_t` intermediate for `mantissa_a * mantissa_b`, divides by the scale with ties-to-even rounding, adds exponents, and normalizes/saturates.
- Division uses `(uint64_t)mantissa_a * 1,000,000 / mantissa_b`, handles remainder with ties-to-even, subtracts exponents, and treats division by zero as an explicit error result rather than a resource value.
- Percentage helpers accept permille or basis points and use 64-bit intermediates. Their rounding policy is the same as core arithmetic.
- Integer exponentiation uses exponentiation by squaring with early saturation. Upgrade price is `base * growth^level`, not a loop over every prior level.
- Buy-max uses binary search plus a geometric-total evaluator; it never loops once per level for enormous purchases.
- Comparison first handles zero, then exponent, then mantissa.

Seven significant digits are sufficient for display such as `1.25e87` and deterministic idle-game pricing while keeping hundreds of values compact. `bn_format()` should emit ordinary integers below a configured threshold and 3-4 significant digits plus `eN` above it. It must not call floating point or `printf`.

Serialize a `BigNum` as exactly six little-endian bytes (`u32 mantissa`, `i16 exponent`). Never write `sizeof(BigNum)` to a save: host test builds may pad differently, and future implementations may change the in-memory layout. Decode validates canonical form before accepting it.

On the CE target, add `static_assert(sizeof(BigNum) == 6)` if any fixed-capacity RAM calculation assumes six resident bytes. Host builds must not share that assertion; they test the explicit six-byte codec instead.

Build golden vectors against arbitrary-precision decimal arithmetic for zero, exponent gaps, carries, one-ULP subtraction, divide-by-zero, half-way rounding, exponent boundaries, geometric costs, buy-max, formatting, and serialization. Property tests assert canonical output after every operation, commutativity where applicable, comparison ordering, and `sub(add(a,b),b)` within one representable unit when no saturation occurred.

## Crash-recoverable save system

The TI OS does not expose `fsync` or atomic replace. `ti_Rename()` is hazardous on an open AppVar and cannot replace an existing destination, so a temp-name rename is not a durable commit primitive. Use two complete slots and generations.

### Save container

Each slot is one AppVar with a 40-byte header, a tagged payload, and a 12-byte footer:

```text
SaveHeader (40 bytes)
  magic[4]                 "LBRS"
  container_version       u16 LE
  schema_version          u16 LE
  header_size             u16 LE (=40)
  payload_size            u16 LE
  generation              u32 LE
  saved_wall_seconds      u64 LE
  content_build_id        u32 LE
  feature_schema          u16 LE
  flags                   u16 LE
  payload_crc32           u32 LE
  header_crc32            u32 LE (computed with this field zero)

Payload
  repeated records: tag u16 LE, length u16 LE, data[length]

CommitFooter (12 bytes)
  magic[4]                 "CMIT"
  generation              u32 LE
  payload_crc32           u32 LE
```

The release gate is a maximum 24 KiB save payload even though an AppVar can hold 65,512 bytes. Unknown optional tags are skipped by length; missing required tags fail validation. Arrays include explicit counts and generator-defined maxima. A slot is valid only if its total AppVar size is exact, header CRC passes, payload CRC passes, footer is present and matches, schema is supported, and semantic validation succeeds.

CRC-32 is corruption detection, not authentication. A small nibble-table implementation is enough. SHA-256 is used on the desktop release files, not in the on-calculator save path.

### Load selection

1. Open `LBRSA` and `LBRSB` with `ti_Open(name, "r")` independently.
2. Stream-validate each without mutating live game state using `ti_GetSize()`, `ti_Read()`, and exact bounds.
3. Select the valid slot with the newest generation. Compare generations with modular signed-difference logic so `uint32_t` wrap remains defined as long as generations differ by less than `2^31`.
4. Decode only that slot into a cleared `GameState`, then run semantic and cross-reference validation.
5. If decode fails despite the structural scan, clear state and try the older valid slot.
6. If both fail, preserve both AppVars and offer a new game. Do not silently delete evidence that could be recovered on a computer.

Schema migration decodes the old schema into the current model, validates it, and writes the migrated state to the other slot. The original remains untouched until the migrated slot has been read back and archived successfully.

### Commit protocol

Pause simulation while saving so two serialization passes see the same state.

1. Select the invalid/older slot as the target. The newest valid slot is never touched in this commit.
2. Dry-run the streaming encoder into a length/CRC sink. Construct the final header.
3. Preflight RAM and archive headroom. `os_MemChk()` can report free user RAM. `ti_ArchiveHasRoom(bytes)` reports whether archiving can occur without GC; do not depend on `ti_ArchiveHasRoomVar()` because the v15 documentation's prose and return description conflict.
4. Open the target with `ti_Open(target, "w")`. This deletes/recreates only the older target in RAM.
5. Write header, payload, and footer with `ti_Write()`, checking every returned element count. Write the footer last.
6. Check `ti_GetSize()`, rewind, and stream-read the RAM copy back through the full validator.
7. Call `ti_SetArchiveStatus(true, handle)` and treat zero as failure.
8. Close the handle. Reopen the target read-only, require `ti_IsArchived()`, and validate it again from archive.
9. Only now is its larger generation considered current. Leave the previous slot in place as the backup.

Any failure leaves the former newest generation untouched. An interrupted write lacks a valid footer/CRC; a failed archive leaves an invalid or RAM-resident target that loses to the old archived slot at next launch.

FileIOC warns that archiving may trigger OS garbage collection. Register `ti_SetGCBehavior(before_gc, after_gc)`. When `graphics_active` is true, `before_gc` calls `gfx_End()` because the OS prompt requires its normal 16-bit LCD mode; when false (for example, during the startup offline commit), it does not touch GraphX. `after_gc` always increments `storage_epoch`; if graphics were active, it calls `gfx_Begin()`, reapplies the palette/transparent color/draw buffer/font, clears both buffers, and marks the screen for a full redraw. No `ti_GetDataPtr()` result may survive this boundary.

Autosave a dirty game every 90-120 seconds, after every reset/crunch, challenge start/finish, major trade completion, offline award, manual-save command, and clean exit. Do not archive on every purchase or frame; that produces needless flash churn and GC pressure. If a critical save fails, keep playing only after a prominent persistent warning; for an offline award, use the stricter rule described below.

## RTC and offline progress

Use `<sys/rtc.h>` helpers, not `rtc_Time()` as an epoch. `rtc_Time()` is documented as a combined value useful for random seeding. Cross-session elapsed time needs both date and time:

- `boot_GetDate(uint8_t *day, uint8_t *month, uint16_t *year)`
- `boot_GetTime(uint8_t *seconds, uint8_t *minutes, uint8_t *hours)`

Read a coherent snapshot as date/time/date and retry if the dates differ at midnight. Validate Gregorian ranges and convert with a tested civil-date-to-days routine to unsigned seconds since 2000-01-01. The calculator clock is local wall time, not UTC, and has no secure monotonic persistence.

At load:

1. If RTC fields are invalid, disable offline progress and show a clock-setting explanation.
2. If `now < saved_time`, award zero, record a clock-rollback warning, and never subtract into an unsigned wrap.
3. Compute raw elapsed seconds with saturating 64-bit arithmetic.
4. Pass raw elapsed time through a data-driven policy that includes the original game's offline limits and upgrades. Add a generous engine safety ceiling only to bound malformed saves; do not silently impose a smaller game cap.
5. Bulk-evaluate offline systems into a deterministic reward/result ledger.
6. Apply the ledger, set `saved_wall_seconds = now`, and commit a new save generation.
7. Enter gameplay and show the summary only after that generation validates from archive. If the commit fails, reload the prior slot and offer retry or continue without the offline award. This prevents relaunching to claim the same interval repeatedly.

Each offline-capable system implements `offline_accumulate(state, seconds, ledger)`. Continuous rates use `rate * seconds`. Periodic systems calculate event counts from `(remainder + seconds) / interval` and retain the remainder. Systems with dependencies are evaluated in a generated topological order. When a discrete event changes downstream rates, process bounded event boundaries or use a closed-form segment evaluator; never iterate once per elapsed second. A test oracle may use naive ticks for short intervals and compare the bulk result within one `BigNum` unit.

Users can change the RTC, and daylight-saving changes can move it by an hour. No software-only CE game can make offline time cheat-proof. Make the limitation explicit, clamp negative deltas, apply documented game caps, and show raw/effective offline time in statistics.

## Testing and verification strategy

### Host tests

Keep `bignum`, save codecs, reset planning, formula evaluation, and offline aggregation platform-neutral. Build them with a host compiler using exact-width types and adapters for CE's `uint24_t`; do not let host `int` width leak into serialized logic.

Required automated suites:

- BigNum golden/property vectors against arbitrary-precision decimal math.
- Save encode/decode round trips for every schema and migration.
- Truncation at every byte, random bit flips, forged lengths/counts, duplicate sparse IDs, invalid BigNums, negative-equivalent resources, unknown tags, missing tags, generation wrap, and both-slot selection.
- A/B fault model after target creation, every write region, readback, archive attempt, and final verification.
- Formula opcode fuzzing with fixed instruction/stack limits.
- Generated referential-integrity, unlock-graph, shop-currency, reset-domain, and preservation checks.
- Every reset tier crossed with every preservation upgrade state.
- Offline bulk evaluator versus naive simulation for small durations, plus huge-duration saturation/cap cases.
- Buy-one/buy-max equivalence, maximum levels, repeated resets, and resource overflow.

### CE build and CEmu

The v15 toolchain includes `make debug`, `<debug.h>`, `dbg_printf()`, watchpoints, and a CEmu autotester executable. Add an `autotest.json` that transfers the program and all content AppVars, launches deterministic test scenarios, sends key sequences, and checks VRAM CRCs or debug completion markers. CEmu's project documents hardware-revision selection, a cycle counter, VAT/memory inspectors, save states, and an Autotester.

Run at least these target jobs:

- Clean release build with `-Wall -Wextra -Werror -Oz` and link-map budget checks.
- Debug build with assertions, arena canaries, state hashes, and `dbg_printf()`; none of these paths or cheats are enabled in release.
- Original/pre-2019 hardware profile and newer cached-flash profile.
- New game to each reset tier using deterministic accelerated test data.
- Missing/corrupt content pack handling without unsafe decompression.
- A/B corruption recovery and schema migration.
- Archive nearly full, GC accepted, GC cancelled, and insufficient RAM to create the target slot.
- Repeated start/exit and GraphX cleanup.
- Worst-case 128-leaf field, busiest automation UI, and rapid area transitions under the cycle counter.
- Eight-hour and 24-hour unthrottled automation soaks with periodic save/load.

CEmu requires a legally obtained ROM from the tester's own calculator; do not distribute a ROM.

### Physical hardware matrix

Before release, test on an original TI-84 Plus CE (performance floor), a 2019-or-later CE, and a CE Python Edition. Cover an OS that launches C natively and a current OS launched through the documented arTIfiCE path. Verify transfer through TI Connect CE, archive GC prompts, clean exit, RAM reset recovery from archived save, display readability, keypad combinations, and battery-powered long idle sessions.

Release acceptance gates:

- Code/data/rodata below 60 KiB; BSS below 50 KiB; measured stack high-water below 2.5 KiB.
- No decompression block above the fixed arena.
- No save above 24 KiB; both slots independently valid after 1,000 alternating commits.
- Gameplay update does not miss its 30 Hz budget on old hardware in the standard particle setting; if rendering needs 20 Hz, economy timing remains exact and the limitation is documented.
- Every item in the research feature inventory has implementation, gameplay test, save/load test, reset-interaction test, and limitation status.
- All meaningful compiler warnings resolved; release contains no TODO stubs, fake buttons, or enabled debug paths.

## Build and release packaging

Pin both official tags:

- CE C/C++ Toolchain v15.0 (release commit shown as `07fe804`; local `cedev-config --version` reports `v15.0`, and local `ez80-clang --version` reports Clang 19.1.0).
- CE Libraries v15.0 (release commit shown as `705f969`).

Record download SHA-256 values in the source release/build provenance. Do not silently build a production release with a later nightly.

Recommended Makefile policy:

```make
NAME = LBRCE
DESCRIPTION = "Leaf Blower Revolution CE"
ARCHIVED = YES
COMPRESSED = YES
COMPRESSED_MODE = zx0
OUTPUT_MAP = YES
LTO = YES
HAS_PRINTF = NO
CXXFLAGS = -Wall -Wextra -Werror -Oz -std=c++17
```

ZX0 normally gives better executable storage size than ZX7; measure startup on the oldest hardware and low free RAM. If the self-extracting startup cannot meet the RAM gate, ship the archived executable uncompressed rather than weakening save headroom.

Generate each custom AppVar with v15 `convbin`, for example:

```text
convbin -j bin -k 8xv -i build/LBRC000.bin -o bin/LBRC000.8xv -n LBRC000 -r
```

`-r` marks the variable archived. The generator should shard explicitly at 60,000 bytes rather than depend on implicit split naming. `convimg` may directly emit graphics AppVars (`outputs: type: appvar`) and generated initialization code, but the runtime still must obey pointer invalidation rules. `make` produces `bin/LBRCE.8xp` according to the toolchain's standard project layout.

The runtime release ZIP should contain:

```text
LeafBlowerRevolutionCE-vX.Y.Z/
  calculator/
    LBRCE.8xp
    LBRMAN.8xv
    LBRC000.8xv ...
    LBRG000.8xv ...
    clibs/
      exact required LibLoad/GRAPHX/KEYPADC/FILEIOC/FONTLIBC v15.0 AppVars
  README.md
  INSTALL.md
  CONTROLS.md
  FEATURE_MATRIX.md
  ARCHITECTURE.md
  CREDITS.md
  LICENSES/
  RELEASE-MANIFEST.json
  SHA256SUMS.txt
```

Do not package blank `LBRSA`/`LBRSB`; the game creates them. Also produce a separate complete source ZIP with build tools/data sources, the pinned-toolchain instructions, host tests, `autotest.json`, and generated-file provenance.

The CE Libraries v15 release provides `clibs.8xg` and a ZIP of individual AppVars, and specifically warns that the ChromeOS TI Connect app may not transfer every member of the group. A release-ready game ZIP should therefore include the exact required individual library AppVars (and their license notices) even if it also offers the group as a convenience. Do not mark required libraries optional in LibLoad: the v15 Makefile documentation warns that an optional missing library allows launch but crashes when called.

`RELEASE-MANIFEST.json` records desktop filename, on-calculator name, byte size, content kind, ABI/build ID, internal CRC-32, and SHA-256. `SHA256SUMS.txt` covers every transfer file, both ZIPs, and documentation artifacts. Build twice in clean directories and compare hashes; sort all generated IDs/pack entries and normalize archive timestamps so output is reproducible. Finally extract the runtime ZIP into a clean directory and verify every recorded hash and required file before publishing.

Installation documentation must distinguish:

- OS 5.4 and earlier: direct native launch where supported.
- OS 5.5 and later: follow the current arTIfiCE instructions, then launch `LBRCE`.
- Transfer every `.8xv` to archive. On first launch the game checks presence, version, CRC, and archive status and names the exact missing/corrupt file rather than crashing.

## Primary documentation and maintainer sources

- [CE C/C++ Toolchain v15 documentation](https://ce-programming.github.io/toolchain/)
- [Toolchain v15.0 release notes and downloads](https://github.com/CE-Programming/toolchain/releases/tag/v15.0)
- [Calculator hardware overview and memory map](https://ce-programming.github.io/toolchain/static/hardware.html)
- [Toolchain runtime memory limits FAQ](https://ce-programming.github.io/toolchain/static/faq.html)
- [Getting started, `.8xp` output, project layout, and Autotester](https://ce-programming.github.io/toolchain/static/getting-started.html)
- [Makefile options (`ARCHIVED`, compression, map, LTO)](https://ce-programming.github.io/toolchain/static/makefile-options.html)
- [GraphX API and buffering/palette/VRAM guidance](https://ce-programming.github.io/toolchain/libraries/graphx.html)
- [KeypadC API and continuous scanning](https://ce-programming.github.io/toolchain/libraries/keypadc.html)
- [FileIOC AppVar, archive, pointer, GC, and read/write APIs](https://ce-programming.github.io/toolchain/libraries/fileioc.html)
- [FontLibC API and font-pack pointer warning](https://ce-programming.github.io/toolchain/libraries/fontlibc.html)
- [Compression APIs (`zx0`, `zx7`, LZ4)](https://ce-programming.github.io/toolchain/headers/compression.html)
- [RTC date/time APIs](https://ce-programming.github.io/toolchain/headers/sys/rtc.html)
- [Timer ownership and standard `clock()` recommendation](https://ce-programming.github.io/toolchain/headers/sys/timers.html)
- [TI variable and free-RAM APIs](https://ce-programming.github.io/toolchain/headers/ti/vars.html)
- [Toolchain debug APIs](https://ce-programming.github.io/toolchain/static/debugging.html)
- [Toolchain guidance on avoiding dynamic allocation](https://ce-programming.github.io/toolchain/static/coding-guidelines.html)
- [CE Libraries v15.0 release and transfer packages](https://github.com/CE-Programming/libraries/releases/tag/v15.0)
- [CEmu emulator and developer features](https://github.com/CE-Programming/CEmu)
- [Texas Instruments TI-84 Plus CE specifications](https://education.ti.com/en/about/press-center/1-27-2015-ti-84-ce)
- [Texas Instruments current CE-T specification page (154 KB RAM, 3 MB flash, internal clock)](https://education.ti.com/eu/products/calculators/graphing-calculators/ti-84-plus-ce-t?category=specifications&sc_lang=es-es)
- [arTIfiCE current compatibility and installation](https://yvantt.github.io/arTIfiCE/)
