# Leaf Blower Revolution CE 1.0.0

This is the first complete calculator release of the independent TI-84 Plus CE demake requested for this project.

## Install set

Transfer all five calculator files in the release bundle:

- `LBRCE.8xp`
- `libload.8xv`
- `fileioc.8xv`
- `graphx.8xv`
- `keypadc.8xv`

Then run `LBRCE` from the calculator program menu. Existing compatible CE Libraries v15 AppVars do not need to be transferred twice. A current native-program launcher may be required on newer calculator OS releases.

## Release status

- Native C++17 executable produced by CE C/C++ Toolchain v15.0.
- Project sources compile with `-Wall -Wextra -Werror -Oz` and link-time optimization.
- Nineteen host verification tests pass, including TI checksum/dependencies, BSS budget, table integrity, large-number math, CRC-32, save migration/recovery guards, challenge isolation, Bismuth reachability, reset rules, and the ULC planner.
- Startup includes calculator-side arithmetic, content, new-game, shop maximum, area, reset/preservation, ULC, Quarkstige, challenge, offline, and saturation self-tests.
- Save format 2/state version 3 reads and migrates the earlier format-1/state-2 layout.
- No save AppVars are bundled; the game creates and manages them transactionally.

This package has not been run on a physical calculator or in an emulator backed by a legally dumped ROM in this workspace. Those remaining transfer, frame-time, and failure-injection checks are listed in `docs/TESTING.md`.

## Important name and redistribution notice

This is an unofficial clean-room fan demake with original code and procedural visuals. It is not endorsed by Humble North or Texas Instruments. No public permission for the exact title was found. Obtain written permission or rename the project before broad public redistribution. See `docs/LICENSES.md`.
