# Technical architecture

## Runtime layout

The game is one native CE program with five separated layers:

1. `content` holds table-driven resources, areas, tools, upgrades, pets, challenges, achievements, and system names.
2. `game_state` owns authoritative currencies, unlocks, upgrades, reset state, timers, and progression.
3. `systems` implements transactional actions and deterministic RNG for compact late-system equivalents.
4. `leaf_field` owns transient fixed-point particles and blower interaction; particles never represent the full currency total.
5. `ui`, `input`, `save`, and `main` provide GraphX rendering, keypad edges, transactional persistence, RTC/offline handling, and the loop.

There is no dynamic allocation in gameplay. Large state and save scratch buffers are static BSS objects rather than stack locals because the CE C stack is only about 4 KiB.

## Data and memory

- 74 scalar resources, including all 37 current named leaf currencies.
- 78 area records, stored in the researched current order and unlocked through an 80-bit packed field.
- 52 system categories in a 64-bit unlock field.
- 31 ordinary upgrades; slots 32-63 of the fixed 64-element level array are validated advanced-system counters.
- 16 tools, 16 pets, 32 achievements, 6 challenges, 8 crafted slots, and 3 concurrent trades.
- 72 leaf particles with signed Q12.4-style position/velocity fields.
- Final map BSS is checked automatically against a 50 KiB ceiling. The remaining CE heap region is left for the runtime and archive operations.

## Large numbers

`BigNum` is six bytes:

```cpp
struct BigNum {
    uint32_t mantissa;
    int16_t exponent;
};
```

The value is `(mantissa / 1,000,000) * 10^exponent`. Nonzero values normalize to a seven-digit mantissa; zero is exactly `{0,0}`. Exponents are restricted to `-30000..30000`. Arithmetic saturates on overflow, floors currency subtraction at zero, and underflows to zero. Cost growth uses exponentiation by squaring, and serialization writes the six-byte fields explicitly.

## Simulation

The display is 320x240, palettized GraphX double buffering. Backgrounds, UI panels, leaves, the blower, and the Harbor container are procedural shapes, so no proprietary game artwork or large bitmap is loaded. The loop targets about 30 frames per second with `delay(32)`. Expensive economy work runs once per RTC second; long gaps are evaluated in bulk rather than spawning visual objects.

The player blower is continuously active. Every particle inside its Euclidean circular radius receives an impulse along the particle-minus-player displacement vector, so movement direction and prior facing never aim the airflow. Ordinary leaves are collected at screen boundaries. Water Leaves only collect inside the Industrial Harbor job container. Autoblowers, printers, converters, seeds, materials, fishing, Harbor, Death Book, banks, and Quark progression have bulk or passive paths, including capped offline equivalents.

## Progression and resets

System unlocks are derived from lifetime resources and floor/stage milestones. Four global resets award Coins, BLC, MLC, and ULC; Quarkstige is a local Quark-to-Quantum-Blob reset. The reset UI calculates the award first, opens a modal, and requires a new `2nd`/`Enter` edge. BLC/MLC/ULC clear their area-unlock field and restore Home Garden. Preservation upgrades are evaluated before destructive fields change, and a successful reset requests an immediate save.

Challenges snapshot resources, lifetime totals, every upgrade/counter, systems, areas, tools, pets, achievements, active selections, and floor state. Completing or abandoning restores the snapshot, preventing challenge-universe progress from leaking into the main save.

## Save format

The game uses `LBCSAVE` (primary), `LBCBAK` (backup), and `LBCTMP` (verified temporary). Each record has:

- magic, format version, game-state version, sizes, generation, and RTC;
- CRC-32 over the header prefix;
- CRC-32 over an explicitly packed payload;
- normalized resource numbers and validated booleans/IDs/bit masks;
- every live and challenge-snapshot advanced counter.

Writes follow this sequence:

1. Build the next generation in static scratch memory.
2. Write `LBCTMP`, close it, reopen it, verify both checksums and semantics, archive it, and verify again.
3. Rotate a valid primary to backup.
4. Rename the verified temporary to primary.
5. Verify primary and repair missing redundancy.

Startup reads all three records before choosing. It selects the newest valid generation with wrap-safe sequence ordering, promotes an interrupted newer temp, and retains the newest older valid record as backup. All archive mutations use FileIOC garbage-collection callbacks: GraphX ends before the OS prompt and is fully restored afterward.

Offline progress is capped at seven days. The loaded baseline is retained in static BSS, rewards are applied, and the advanced RTC is saved immediately. If no durable verified generation can be produced, the baseline is restored and the reward is reported as zero, preventing replay after a hard reset.

## Runtime dependencies

The executable dynamically uses official CE Libraries v15.0 `FILEIOC`, `GRAPHX`, and `KEYPADC` through `libload`. The release therefore includes `libload.8xv`, `fileioc.8xv`, `graphx.8xv`, and `keypadc.8xv` with their upstream license texts.

