# Reproducible build

## Pinned environment

- CE C/C++ Toolchain v15.0
- CE Libraries v15.0 headers/import libraries
- C++17
- `-Wall -Wextra -Werror -Oz`
- ZX7-compressed `.8xp` output
- Python 3.11+ for host verification

The source does not download dependencies during a build. Runtime AppVars in `vendor/ce-libraries-v15.0` came from the official `CE-Programming/libraries` v15.0 release asset `clibs_separately_in_zip.zip`.

## Build commands

With CEdev installed and `CEDEV` pointing to its trailing-separator root:

```powershell
$env:CEDEV = 'C:\CEdev\'
$env:PATH = "$env:CEDEV\bin;$env:PATH"
make clean
make -j2
python tests\verify_release.py
```

The expected program is `bin/LBRCE.8xp`. `bin/LBRCE.map` is also retained for the memory-budget check. The only messages allowed after a successful link are GNU-stack deprecation warnings emitted by the toolchain's own `crt0.o` and `atomic_load_increasing_32.o`; project sources compile without warnings.

The verified Windows build used:

```text
CEDEV=C:\Users\FINNLA~1\Documents\Codex\2026-0~2\go\work\CEdev\CEdev\
make.exe from CEdev v15.0
```

## Verification

`tests/verify_release.py` verifies:

- large-number addition, multiplication, division, rounding tolerance, and division-by-zero saturation;
- the standard CRC-32 test vector;
- all 78 researched area rows and ordering;
- resource/system definition counts against their enums;
- absence of unfinished source markers;
- TI transfer-file signature and size;
- BSS below the 50 KiB project ceiling;
- presence of checksum, backup, temp, and wrap-safe recovery guards.

The executable also calls `runtime_self_test()` before opening graphics. It checks arithmetic and every generated content record's IDs, prices, requirements, limits, and count ceilings. A failure returns to the OS instead of running corrupted tables.

## Packaging

The install bundle contains only the game, its four required runtime AppVars, user documentation, third-party license texts, a manifest, and SHA-256 hashes. Saves are intentionally not packaged. The source archive excludes `obj/`, but includes source, tests, makefile, docs, runtime provenance/license records, and the release feature matrix.

See `docs/GENERATED_FILES.md` for the exact final filenames and `SHA256SUMS.txt` in each release package for hashes.

After a successful build and verification run, create both release archives with:

```powershell
powershell -ExecutionPolicy Bypass -File tools\package-release.ps1
```

The packaging script refuses paths outside the project, stages an install bundle and complete source tree, writes manifests and per-file SHA-256 lists, and emits the two versioned ZIPs under `release/`.
