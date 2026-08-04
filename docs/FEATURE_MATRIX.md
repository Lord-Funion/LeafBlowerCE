# Feature implementation matrix

**Implementation baseline:** calculator source and compiled artifact in this release  
**Research baseline:** *Leaf Blower Revolution* v2.29.7 (2026-04-08)  
**Matrix reviewed:** 2026-08-04

This document is a release audit, not a PC-parity claim. The CE game is an independently written, calculator-sized adaptation. It contains every researched progression category and area as a reachable data record, while replacing most large PC systems with deterministic actions, counters, and compact inventories that fit calculator memory and keypad input.

Status meanings:

- **Full** - complete for the behavior expressly designed for this CE release.
- **Calculator-equivalent** - a functional, saved, reset-aware replacement for the original system's progression role, but not a one-for-one simulation.
- **Partial** - a useful subset exists; important original dimensions, content, or interactions are absent.
- **Unavailable** - intentionally absent, normally because it requires an online account/service or content this project is not licensed to redistribute.

“CE build” means the code is present in the successful CE Toolchain v15 build. “Static” means a source/table invariant or host structural test exists. It does **not** mean the row was played through on an emulator or calculator. No physical-hardware or ROM-backed emulator result is claimed anywhere in this matrix.

## Release summary

| Feature/system | Implementation status | Build/static tested | Save/load | Reset interaction | Hardware/licensing difference |
| --- | --- | --- | --- | --- | --- |
| Core leaf field, blower movement, collection, combo | Full | CE build; fixed-capacity and source audit | Transient particles are rebuilt; authoritative currency/combo are saved | Field objects rebuild after travel/reset; currency follows tier rules | 72 procedural particles; no copied sprites, physics, or UI |
| Seven-digit decimal large-number engine | Full | CE build; arithmetic/CRC host vectors and startup self-test | Explicit six-byte wire encoding; semantic validation | Saturating balances are used by every reset | Integer-only; precision and rounding differ from desktop arbitrary-scale presentation |
| Content registry | Full | Static counts: 74 resources, 78 areas, 52 systems, 32 upgrades, 16 tools, 16 pets | Stable enum/index fields validated on load | Content entries carry requirements; resets operate on saved indices | Original names are retained only for the requested private fan build; no original assets/code |
| Complete PC parity | Unavailable | Not claimed | N/A | N/A | CE RAM/input/render limits and licensing prevent literal parity |

## All 37 researched leaf currencies

Every row has an independent `BigNum` balance and lifetime total. “Standard field” means the current area recolors procedural particles and awards that currency at the boundary. Special original acquisition rules are noted where the CE release substitutes a smaller mechanic.

| Feature/system | Implementation status | Build/static tested | Save/load | Reset interaction | Hardware/licensing difference |
| --- | --- | --- | --- | --- | --- |
| 01 Basic Leaves | Full | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | Standard procedural field; independently drawn |
| 02 Gold Leaves | Full | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | Standard field; no copied art |
| 03 Platinum Leaves | Full | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | Standard field |
| 04 Bismuth Leaves | Full | CE build; resource-count and Mountain-spawn tests | Balance + lifetime | Cleared by every global reset | A visible, separately colored 1-in-4 Mountain spawn alongside Platinum |
| 05 Cosmic Leaves | Full | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | Standard field |
| 06 Void Leaves | Full | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | Standard field |
| 07 Exotic Leaves | Calculator-equivalent | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | Strange-Flask/area progression is compressed |
| 08 Celestial Leaves | Calculator-equivalent | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | Standard field replaces enemy-only farming |
| 09 Mythical Leaves | Calculator-equivalent | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | Standard field and common upgrade economy |
| 10 Lava Leaves | Calculator-equivalent | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | No dedicated merge-particle simulation |
| 11 Ice Leaves | Calculator-equivalent | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | No dedicated merge-particle simulation |
| 12 Obsidian Leaves | Calculator-equivalent | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | Hidden Sea field replaces Lava/Ice merging |
| 13 Silicon Leaves | Calculator-equivalent | CE build; Tower reward path | Balance + lifetime | Cleared by every global reset | Primarily awarded by compact Tower combat |
| 14 Benitoite Leaves | Calculator-equivalent | CE build; resource-count test | Balance + lifetime | Cleared by every global reset | Leafsink field replaces Ice/Silicon merging |
| 15 Amber Leaves | Calculator-equivalent | CE build; Tower seven-way reward table | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Tower milestone reward; no separate full shop |
| 16 Amethyst Leaves | Calculator-equivalent | CE build; Tower seven-way reward table | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Tower milestone reward; no separate full shop |
| 17 Emerald Leaves | Calculator-equivalent | CE build; Tower seven-way reward table | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Tower milestone reward; no separate full shop |
| 18 Kyanite Leaves | Calculator-equivalent | CE build; Tower seven-way reward table | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Tower milestone reward; no separate full shop |
| 19 Rhodonite Leaves | Calculator-equivalent | CE build; Tower seven-way reward table | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Tower milestone reward; no separate full shop |
| 20 Ruby Leaves | Calculator-equivalent | CE build; Tower seven-way reward table | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Tower milestone reward; no separate full shop |
| 21 Tektite Leaves | Calculator-equivalent | CE build; Tower seven-way reward table | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Tower milestone reward; no separate full shop |
| 22 Moonstone Leaves | Calculator-equivalent | CE build; area table | Balance + lifetime | Cleared by global resets | Standard Moon field; crafting emphasis is folded into common systems |
| 23 Sand Leaves | Calculator-equivalent | CE build; area/Pyramid paths | Balance + lifetime | Cleared by global resets | Field plus Pyramid reward; no full scroll shop |
| 24 Azurite Leaves | Calculator-equivalent | CE build; Dice threshold path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Glinting field/Dice reward replace the full Dice shop path |
| 25 Niobium Leaves | Calculator-equivalent | CE build; Dice threshold path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Dice roll threshold; no separate full leaf shop |
| 26 Ancient Leaves | Calculator-equivalent | CE build; reset-preservation self-test | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Inner Pyramid field replaces enemy/chest-only acquisition |
| 27 Sacred Leaves | Calculator-equivalent | CE build; reset-preservation path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Standard field; boss and Sacred shop depth are compressed |
| 28 Biotite Leaves | Calculator-equivalent | CE build; reset-preservation path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Standard field; entity-level shop is compressed |
| 29 Malachite Leaves | Calculator-equivalent | CE build; reset-preservation path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Standard field; entity-level shop is compressed |
| 30 Hematite Leaves | Calculator-equivalent | CE build; reset-preservation path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Standard field; energy preparation is compressed |
| 31 Plasma Leaves | Calculator-equivalent | CE build; Harbor unlock/reset path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Standard field replaces orbit/spin acquisition; Harbor-owned Water is separate |
| 32 Water Leaves | Calculator-equivalent | CE build; Harbor-container and ULC preservation tests | Balance + lifetime | Preserved through all global resets as Harbor progress | Must enter visible `JOB` container; offscreen leaves respawn; ships/jobs are compact |
| 33 Coal Leaves | Calculator-equivalent | CE build; Fire Fields/reset path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Standard field; decay/Anti-Crumble is not simulated |
| 34 Empty Soul Leaves | Calculator-equivalent | CE build; Soul Realm/reset path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Field/reward representation replaces fully passive batch stream |
| 35 Soul Leaves | Calculator-equivalent | CE build; Soul Forge/reset path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC | Compact forge/action rather than full conversion tree |
| 36 Quark Leaves | Calculator-equivalent | CE build; Quarkstige startup self-test | Balance + lifetime; Quarkstige streak/total | Preserved by Prestige/BLC/MLC; Quarkstige clears them, then awards `250,000 * (streak + 1)`; ULC clears them | One scalar leaf plus scalar Quarks replaces six-color reactor inventory |
| 37 Dusk Leaves | Calculator-equivalent | CE build; Umbral reset path | Balance + lifetime | Preserved by Prestige/BLC/MLC; cleared by ULC while Shadow progression remains | Standard field; no copied late-game visuals or boss presentation |

The additional `Electrical` resource in the executable is treated as energy-like progression data, not counted as one of the 37 canonical leaf currencies above.

## All 78 area records

All rows are compiled in this exact order and checked by `tests/verify_release.py`. Each row has a distinct unlock cost, requirement, produced resource, palette background, and saved unlock bit. An area marked Calculator-equivalent is a functional travel/production node; that status does not claim the PC area's complete enemy, boss, hazard, quest, or minigame behavior.

| Feature/system | Implementation status | Build/static tested | Save/load | Reset interaction | Hardware/licensing difference |
| --- | --- | --- | --- | --- | --- |
| 01 Home Garden | Full | CE build; exact-order test | Current area + unlock bit | Always restored as the safe start | Procedural field |
| 02 Neighbors' Garden | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | One production resource; no full enemy table |
| 03 Mountain | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Compact travel node |
| 04 Space | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Compact travel node |
| 05 THE VOID | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Compact travel node |
| 06 The Abyss | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Artifact/enemy details folded into System Hub |
| 07 The Celestial Plane | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Field replaces enemy-only leaf drop |
| 08 The Mythical Garden | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Compact travel node |
| 09 The Volcano | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | No HP-drain hazard simulation |
| 10 The Abandoned Research Station | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | No HP-drain hazard simulation |
| 11 The Hidden Sea | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Obsidian field replaces merge mechanic |
| 12 Leafsink Harbor | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Hub services appear as separate menus/actions |
| 13 The Leaf Tower | Calculator-equivalent | CE build; exact-order test | Area bit + Tower floor | Tower floor kept until MLC/ULC | Menu action replaces real-time floor combat |
| 14 The Moon | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Compact Moonstone field |
| 15 The Infernal Desert | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | No hazard/scroll-specific field logic |
| 16 The Cursed Pyramid | Calculator-equivalent | CE build; exact-order test | Area bit + Pyramid floor | Pyramid floor cleared by ULC; also reset by current MLC/ULC logic | Hub and floor action replace full encounters |
| 17 The Inner Cursed Pyramid | Calculator-equivalent | CE build; exact-order test | Area bit + Pyramid floor | As above | One deterministic floor purchase/action |
| 18 Kokkaupunki | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Quest/material staging compressed |
| 19 Cursed Kokkaupunki | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Witch encounter not simulated separately |
| 20 The Dark Glade | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | One material-drop chance, not a material matrix |
| 21 Black Leaf Hole | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Prestige keeps; BLC/MLC/ULC relock | Portal gating is data-driven, bosses compressed |
| 22 Dicey Meadows | Calculator-equivalent | CE build; exact-order test | Area bit + Dice tier | Dice counter persists current resets | Dice action is menu based |
| 23 Glinting Thicket | Calculator-equivalent | CE build; exact-order test | Area bit + leaf balances | Prestige keeps; BLC/MLC/ULC relock | Azurite/Niobium path is compact |
| 24 Fish Pond | Calculator-equivalent | CE build; exact-order test | Area bit + fishing level | Fishing counter/resources persist per encoded flags | One roll action, not fish/rod/tournament inventories |
| 25 Industrial Harbor | Calculator-equivalent | CE build; exact-order test; water-container branch | Area, Water, crystals, fuel, Harbor/job/ship counters | Area relocks on BLC+; Harbor currencies/counters persist as encoded | Includes v2.29.7-era Harbor role; compact jobs/ships, no copied art |
| 26 The Cheese Pub | Calculator-equivalent | CE build; exact-order test | Area bit + Pub counter | Pub counter persists | One rotating minigame reward action |
| 27 Your House | Calculator-equivalent | CE build; exact-order test | Area bit + House level | House level persists | No furniture grid or official item art |
| 28 Biotite Forest | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Lower resets keep bit until BLC+ relock behavior; ULC relocks | One field record |
| 29 The Exalted Bridge | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Centaur fight compressed into progression gates |
| 30 The Ancient Sanctum | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Relics/Leafscensions are System Hub actions |
| 31 Vilewood Cemetery | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Boss compressed |
| 32 The Lone Tree | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Boss compressed |
| 33 Spark Range | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Energy progression compressed |
| 34 Spark Bubble | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Boss compressed |
| 35 Spark Portal | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Multi-resource portal recipe simplified to one cost |
| 36 Energy Shrine | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Compact energy node |
| 37 Plasma Forest | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Standard field replaces orbit behavior |
| 38 Blue Planet Edge | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Terror combat compressed |
| 39 Green Planet Edge | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Terror combat compressed |
| 40 Red Planet Edge | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Terror combat compressed |
| 41 Purple Planet Edge | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Terror combat compressed |
| 42 Black Planet Edge | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Super-Terror compressed |
| 43 Terror Graveyard | Calculator-equivalent | CE build; exact-order test | Area bit + Death Book level | BLC/MLC/ULC relock; counter persists | Death Book is an aggregate damage level |
| 44 Energy Singularity | Calculator-equivalent | CE build; exact-order test | Area bit + Mirror counter | BLC/MLC/ULC relock; counter persists | Boss and mirror loadouts compressed |
| 45 Fire Fields Portal | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Portal recipe simplified |
| 46 The Shadow Cavern | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Compact entry node |
| 47 The Coal Mine | Calculator-equivalent | CE build; exact-order test | Area bit + mine depth | Mine depth counter persists | One delve action; no veins/caves/inventory matrix |
| 48 Mount Moltenfury | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Coal decay omitted |
| 49 The Fire Temple | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Hazard/boss detail compressed |
| 50 Flame Brazier | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Puzzle/boss detail compressed |
| 51 The Fire Universe | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Boss detail compressed |
| 52 Soul Portal | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Portal recipe simplified |
| 53 Soul Temple | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Compact hub |
| 54 Soul Crypt | Calculator-equivalent | CE build; exact-order test | Area bit + Crypt counter | Counter persists | One raid action, no enemy/key/floor inventory |
| 55 The Hollow | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Boss/passive Soul mechanics compressed |
| 56 Soul Forge | Calculator-equivalent | CE build; exact-order test | Area bit + Forge level | Counter persists | One forge action replaces timed completion tree |
| 57 The Fabric of the Leafverse | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Fabric Warden fight compressed |
| 58 Quark Portal | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Portal recipe simplified |
| 59 Primordial Ethos | Calculator-equivalent | CE build; exact-order test | Area bit + progression counters | BLC/MLC/ULC relock | Weaver/ULC gate compressed |
| 60 Quark Nexus | Calculator-equivalent | CE build; exact-order test | Area bit + Quark balances/reactor level | Quarkstige local reset; global rules encoded | Six-color reactor replaced by scalar action |
| 61 Quantum Aether | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Enemy detail compressed |
| 62 Astral Oasis | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Boss detail compressed |
| 63 Dimensional Tapestry | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Boss detail compressed |
| 64 Planck Scope | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Boss detail compressed |
| 65 Ante Leafton | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | BLC/MLC/ULC relock | Structures represented by aggregate progression |
| 66 The Leafton Pit | Calculator-equivalent | CE build; exact-order test | Area bit + Pit counter | Counter persists | One fight action replaces roster/floor state |
| 67 Shadow Crystal | Calculator-equivalent | CE build; exact-order test | Area bit + Shadow level | Shadow counter persists ULC | Turn-based stat matrix reduced to one upgrade action |
| 68 Tenebris Field | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Area relocks; Shadow counter persists | Procedural Dusk field |
| 69 Blacklight Verge | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Area relocks; Shadow counter persists | Boss compressed |
| 70 Sombrynth | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Area relocks; Shadow counter persists | Boss compressed |
| 71 Latsyrc Wodash | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Area relocks; Shadow counter persists | Boss compressed |
| 72 Shadow Lighthouse | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Area relocks; Shadow counter persists | Boss compressed |
| 73 Spiral Walk | Calculator-equivalent | CE build; exact-order test | Current area + unlock bit | Area relocks; Shadow counter persists | Boss compressed |
| 74 Cursed Halloween | Partial | CE build; exact-order test | Area bit + local season stamp | Area relocks; local reward stamp persists | No real calendar event package or official boss/art |
| 75 Farm Field | Partial | CE build; exact-order test | Area bit + local season stamp | Area relocks; local reward stamp persists | Local rotating reward replaces server/event schedule |
| 76 Butterfly Field | Partial | CE build; exact-order test | Area bit + local season stamp | Area relocks; local reward stamp persists | No full Nature Season plants/pack state |
| 77 Vial of Life | Partial | CE build; exact-order test | Area bit + local season stamp | Area relocks; local reward stamp persists | No online event dependency |
| 78 The Doomed Tree | Partial | CE build; exact-order test | Area bit + local season stamp | Area relocks; local reward stamp persists | Infinite-wave event combat is not reproduced |

## All 52 system categories

System unlock bits are stored in one validated 64-bit field. Advanced counters use reserved, bounded save slots. Most late-system progress counters intentionally survive resets in this CE design; associated currencies still follow their resource reset flags. A System Hub action is never presented here as full PC subsystem parity.

| Feature/system | Implementation status | Build/static tested | Save/load | Reset interaction | Hardware/licensing difference |
| --- | --- | --- | --- | --- | --- |
| 01 Tools | Calculator-equivalent | CE build; 16-entry table bounds | Owned/equipped bits and index | Ownership persists in current CE rules | Power/range model; special PC tool behaviors compressed |
| 02 Areas | Calculator-equivalent | CE build; exact 78-order test | 80-bit unlock field + current area | Prestige keeps; BLC/MLC/ULC relock to Home | Flat list replaces galaxy maps/favorites |
| 03 Prestige | Calculator-equivalent | CE build; reset path/source audit | Coins, shop levels, lifetime totals | Clears early leaves/leaf shops; immediate-save request | Original base formula is undocumented; CE uses a deterministic logarithmic award |
| 04 Printers | Calculator-equivalent | CE build; passive-rate path | Upgrade level | Shop level follows its reset shop range | One aggregate rate instead of per-leaf printers/Printer Printer |
| 05 Converters | Calculator-equivalent | CE build; per-second chain | Upgrade level and flask balances | Early shop/resources clear on global resets | Automatic scalar chain; no recipe toggles/queues |
| 06 Flasks | Partial | CE build; bounded resource loop | Eight CE flask balances + lifetime | Cleared by all global resets | CE chain differs from the current PC seven-flask taxonomy and shops |
| 07 Big Leaf Crunch | Calculator-equivalent | CE build; reset/reward path | BLC + upgrade levels | Clears early run; optional Coins retention | Simplified logarithmic reward/order |
| 08 Seeds | Calculator-equivalent | CE build; online/offline growth loops | Aggregate upgrade | Resource growth follows currency reset; level follows shop reset | One global seed percentage, not per-leaf seeds |
| 09 Autoblowers | Calculator-equivalent | CE build; fixed-particle force path | Count/power upgrades | Levels follow shop reset | No individual ALB roster, tools, targets, or priorities |
| 10 Pets | Partial | CE build; 16-entry table bounds | Owned bits + active pet | Ownership persists in current CE rules | 16 aggregate pets versus 32+ current PC pets; no official art |
| 11 Trading | Calculator-equivalent | CE build; three-slot transactional paths | Offers, deadlines, completions | Active offers remain until higher reset/resource changes as encoded | Three deterministic local offers; no full level/filter/autotrade model |
| 12 Crafting | Calculator-equivalent | CE build; 8-slot validity guards | Tier, quality, property, level, equipped | Crafted records persist current resets | Four properties and 8 slots; no full rarity/shard/reroll schema |
| 13 Materials | Calculator-equivalent | CE build; drop/offline paths | One Materials scalar + lifetime | Marked permanent | One scalar replaces area-material and essence matrices |
| 14 Alchemy | Calculator-equivalent | CE build; 4 recipe guards | Mastery counter + outputs | Counter persists; currencies follow flags | Four recipes, no queue/crit/autobrew matrix |
| 15 Artifacts | Calculator-equivalent | CE build; deadline/search guards | Timer + found count | Counter/timer persist current resets | Random local reward replaces named artifacts and spawn tables |
| 16 Leaf Tower | Calculator-equivalent | CE build; floor/cost/reward path | Current floor | Cleared at MLC/ULC | Purchase-to-advance action replaces combat/enemy/equipment floors |
| 17 Equipment | Partial | CE build; equip exclusivity guards | Crafted-item equipment flags | Persists current resets | No separate enemy-equipment inventory |
| 18 Challenges | Partial | CE build; full snapshot/restore guards | Six completion bits + active snapshot | Main save restored after finish/abandon | Six local challenges; no online daily/weekly challenge service |
| 19 Mega Leaf Crunch | Calculator-equivalent | CE build; reset/reward path | MLC + upgrades | Clears lower progress/Tower; optional BLC retention | Linear CE reward rather than full documented modifier formula |
| 20 Pyramid | Calculator-equivalent | CE build; floor/cost path | Current floor | Cleared by ULC and current higher-reset rules | Purchase-to-advance action replaces floor combat/chests |
| 21 Borbventures | Calculator-equivalent | CE build; start/deadline/complete guards | Deadline + rank | Counter persists; Borbs follow resource flag | One expedition timer, no roster/items/packs |
| 22 Cards | Calculator-equivalent | CE build; four bounded card levels | Four aggregate levels + parts | Levels persist current resets | Four roles replace per-enemy six-rarity collection |
| 23 Dice | Calculator-equivalent | CE build; deterministic RNG action | Tier + Dice Points + related leaves | Tier persists current resets | Three-die local roll; no bag/battlefield/history inventory |
| 24 Death Book | Calculator-equivalent | CE build; bounded upgrade | Aggregate level | Persists current resets | One combat multiplier replaces enemy kill matrix |
| 25 Mines | Calculator-equivalent | CE build; delve/cost/reward path | Mine depth + resources | Depth persists; currencies follow flags | One delve action; no veins, cave timers, items, drills, transmutation tree |
| 26 Fishing | Calculator-equivalent | CE build; RNG reward path + offline award | Fishing level + credits | Progress persists current resets | One local catch roll; no 24-fish codex, rods, tournaments, or Journey state |
| 27 Ultra Leaf Crunch | Calculator-equivalent | CE build; reset/reward path | ULC + upgrades | Clears nonpermanent resources and lower run floors | No selectable ten-family sacrifice planner; deterministic Pyramid-gated award |
| 28 Banks | Calculator-equivalent | CE build; deposit/interest/withdraw guards | One balance + last-tick counter | Balance/counter persist current rules | One bank replaces per-galaxy bank configurations |
| 29 Soul Forge | Calculator-equivalent | CE build; conversion path | Forge level + Soul resources | Counter persists; currencies follow flags | One forge action, no completion/timer/shop tree |
| 30 Quark Reactor | Calculator-equivalent | CE build; reactor/Quarkstige paths | Reactor level, scalar currencies | Reactor level persists; Quarkstige clears scalar Quarks | Six colors, structures, focus and efficiency compressed to one action |
| 31 Shadow Crystal | Calculator-equivalent | CE build; bounded formation path | Shadow level + crystals | Counter persists ULC | Aggregate progression replaces turn-based crystal stats/ascensions |
| 32 Galaxies | Calculator-equivalent | CE build; stage cost/path | Galaxy stage | Stage persists current resets | Ordered stage counter replaces full boss/portal dependency graph |
| 33 Fruit & Farming | Calculator-equivalent | CE build; harvest action + passive modifier | Fruit progress counter | Counter persists current resets | One harvest track; no fruit/seed spawn inventory |
| 34 Unique Leaves | Partial | CE build; bounded discovery counter | Count | Count persists | No 20+ named unique-leaf inventory, conditions, or loadout slots |
| 35 Shovelling | Calculator-equivalent | CE build; transactional action | Rewards only | Resources follow flags | One shovel action; no tool-specific drop table |
| 36 Scrolls | Calculator-equivalent | CE build; bounded counter/action | Aggregate scroll count | Counter persists | No per-scroll inventories or active-duration records |
| 37 Chests | Calculator-equivalent | CE build; RNG action | Aggregate opened counter + rewards | Counter persists | One randomized chest action; no rarity inventory/autopen state |
| 38 Fusion & Ascension | Calculator-equivalent | CE build; crafted-slot guards | Result remains in crafted records | Crafted records persist | Compact two-item fusion/quality path; no complete shards/ascension ladder |
| 39 Leafscensions | Calculator-equivalent | CE build; bounded counter/action | Aggregate level | Counter persists | One progression counter instead of per-leaf tier matrices |
| 40 Relics | Calculator-equivalent | CE build; bounded restore action | Aggregate relic level + fragments | Counter persists | One level replaces six tiers, Master Relics, and fragments by type |
| 41 Mirrors | Calculator-equivalent | CE build; bounded polish action | Aggregate mirror level | Counter persists | One level replaces mirror configurations/loadouts |
| 42 Soul Crypt | Calculator-equivalent | CE build; bounded raid action | Aggregate Crypt floor/counter | Counter persists | No keys, enemy state, milestones, or separate current/highest floors |
| 43 Leafton Pit | Calculator-equivalent | CE build; bounded fight action | Aggregate Pit level | Counter persists | One action replaces Quarklings/floors/structure requirements |
| 44 Cheese Pub | Calculator-equivalent | CE build; RNG reward action | Aggregate visit/progress counter | Counter persists | One local action replaces Claw, Slots, Curse Machine, Counter, Booster, quests |
| 45 House | Calculator-equivalent | CE build; bounded upgrade action | Aggregate House level | Persists every reset | No furniture grid or official collectibles/art |
| 46 Industrial Harbor | Calculator-equivalent | CE build; Water field and Harbor action | Water/crystals/fuel + Harbor counter | Harbor resources/counter persist as encoded; area can relock | Covers v2.29.7 progression role; no complete item/Journey inventory |
| 47 Harbor Jobs | Calculator-equivalent | CE build; transactional job action | Job counter + currencies | Counter persists | One job action and visible container replace job order/slot matrix |
| 48 Ships & Divers | Calculator-equivalent | CE build; fuel/launch action | Ship counter + fuel | Counter persists | One launch action; no fleet, routes, divers, item inventory, or travel timers |
| 49 Milestones | Partial | CE build; bounded flag claims | 12-bit claim flags | Permanent | Small local set, not full Tower/Pyramid/Crypt/Pit/Harbor milestone catalog |
| 50 Daily Quests | Calculator-equivalent | CE build; RTC stamp guard | Local daily stamp | Permanent stamp; rewards follow resource flags | Offline local claim; no account, bounty server, leaderboard, or anti-cheat service |
| 51 Seasons & Events | Partial | CE build; local 30-day stamp guard | Local season stamp | Permanent stamp; event area bits can relock | Rotating local rewards replace real dates/live PC event packages |
| 52 Shadow Tree | Calculator-equivalent | CE build; bounded spend/growth action | Tree level | Persists ULC | One permanent bonus path instead of the full node graph |

## Shops, upgrades, tools, pets, and rewards

| Feature/system | Implementation status | Build/static tested | Save/load | Reset interaction | Hardware/licensing difference |
| --- | --- | --- | --- | --- | --- |
| Nine CE shop pages (Leaf, Gold, Coin, BLC, MLC, ULC, Automation, Craft, Galaxy) | Calculator-equivalent | CE build; enum/table bounds | Current shop is UI-only; levels saved | Shop ranges clear at their owning reset | Consolidates 38+ PC shops into nine keypad pages |
| 31 repeatable upgrades | Calculator-equivalent | CE build; cost/max/effect table startup validation | 64-slot level array; first 31 are shop upgrades | Cleared by encoded shop ranges; retention effects sampled before mutation | Original values/order retuned for calculator pacing |
| Buy-one UI and geometric prices | Full | CE build; BigNum cost vectors | Purchased level saved | Follows owning shop | Buy-max and exact PC discount classes are not implemented |
| 16 tools | Calculator-equivalent | CE build; table count/index guards | Ownership bitset + active tool | Ownership persists current rules | Distinct power/range/cost; many PC special tool effects compressed |
| 16 pets | Partial | CE build; table count/index guards | Ownership bitset + active pet | Ownership persists current rules | About half the advertised current roster; abstract bonuses only; no copied sprites |
| 32 achievements | Partial | CE build; threshold table and 32-bit mask | Completion mask + lifetime resources | Permanent | Resource-threshold set, not 200+ PC achievements or platform achievements |
| Six challenges | Partial | CE build; snapshot/restore source guards | Active save snapshot + completion mask | Runs are isolated from main progress | Local only; online daily/weekly challenge ecosystem unavailable |

## Automation, offline progress, save system, and UI

| Feature/system | Implementation status | Build/static tested | Save/load | Reset interaction | Hardware/licensing difference |
| --- | --- | --- | --- | --- | --- |
| Active leaf physics | Full | CE build; fixed 72-particle array | Reconstructed on load/travel | Reconstructed after reset | Fixed-point, capped particles for 154 KB user RAM |
| Aggregate printers/ALBs | Calculator-equivalent | CE build; per-second/passive paths | Upgrade levels | Owning shop reset | No per-resource machine assignment or priority editor |
| Converter and seed automation | Calculator-equivalent | CE build; bounded per-second loops | Balances + upgrade levels | Early reset domain | One global chain/growth level |
| Timed trades, artifacts, Borbventures | Calculator-equivalent | CE build; deadline and completion guards | Deadlines/offers/counters | Mostly persist current rules | RTC deadlines, no server clocks |
| Harbor offline progress | Calculator-equivalent | CE build; explicit offline branch | Water crystals/fuel/counters | Harbor data persists as encoded | Covers v2.29.4+ role with a bulk local award |
| Offline progress engine | Calculator-equivalent | CE build; rollback/cap guards | RTC timestamp; award committed immediately | Rates use currently retained upgrades | Seven-day cap; local clock is user-adjustable; subset of systems only |
| Autosave/manual save/safe exit | Full | CE build; CRC/recovery static audit | Primary, backup, verified temp AppVars | Successful resets request immediate save | Flash archive/GC behavior awaits physical test |
| Save validation and recovery | Full | CE build; header/payload CRC, semantic bounds, generation wrap guard | Newest valid primary/backup/temp selected | Reset results stored as normal generations | Corruption detection, not cryptographic authentication |
| Challenge isolation | Full | CE build; snapshot field coverage audit | Full resources/lifetime/upgrades/unlocks/selections/floors snapshot | Finish/abandon restores baseline, then records completion | Snapshot is calculator-specific, not compatible with PC saves |
| 18-screen menu/UI | Full | CE build; screen enum and render/input audit | Gameplay state saved; cursor/page state is transient | Reset modal previews award and requires fresh confirmation | 320x240 procedural GraphX UI, not a copy of PC layouts |
| In-game controls/help/credits | Full | CE build; source audit | N/A | N/A | Key legends designed for CE keypad |
| Visual assets | Full | CE build; asset manifest | N/A | N/A | Procedural original shapes/palette; no official sprites/screenshots/fonts/audio |

## Intentionally unavailable online and commercial features

| Feature/system | Implementation status | Build/static tested | Save/load | Reset interaction | Hardware/licensing difference |
| --- | --- | --- | --- | --- | --- |
| Leaf Blower Revolution account login | Unavailable | Excluded by design | None | None | No documented permission to use accounts/protocols; CE game is offline |
| Cloud saves and cross-device synchronization | Unavailable | Excluded by design | Local AppVars only | None | No network stack/service integration |
| Steam/Google Play/App Store purchases and entitlements | Unavailable | Excluded by design | None | None | No store APIs; premium currency is earned locally |
| Steam/platform achievements | Unavailable | Excluded by design | Local achievement mask only | Permanent locally | No platform API |
| Global leaderboards | Unavailable | Excluded by design | None | None | Online service and account validation absent |
| Real-time PC daily/weekly challenges and bounties | Unavailable | Excluded by design | Local daily stamp is the replacement | Local rewards are reset-aware | Server-selected rules/rewards replaced by deterministic local daily claim |
| Real-time event calendar/community leaves | Unavailable | Excluded by design | Local 30-day season stamp is the replacement | Local rewards persist as encoded | Live event packages and community/account state are not distributed |
| PC saves/import/export | Unavailable | Excluded by design | CE schema only | N/A | No official save schema/protocol was copied or reverse engineered |
| Official art, audio, text, logo, or source | Unavailable | Asset/string/license audit | None | N/A | No public reuse grant was found; release uses independent code and procedural art |

## Test boundary and release interpretation

The current artifact has been compiled for the CE ABI and the release includes host/static checks for arithmetic, CRC-32, exact area ordering, table/enumeration counts, unfinished markers, transfer-file signature/size, BSS ceiling, and save-recovery guards. Startup also runs a small content/arithmetic self-test.

Those checks establish build integrity, not playthrough coverage. A physical TI-84 Plus CE was not attached, and no legally dumped ROM was available for CEmu. Frame rate on old hardware, USB transfer, archive garbage-collection prompts, launcher/OS combinations, LCD readability, multi-hour soak behavior, and power-loss fault injection remain manual release checks. See `TESTING.md` for the exact matrix.

Finally, the exact requested title is not cleared for public redistribution. The code and procedural presentation are original, but the title and many named content facts identify the commercial game. Obtain written permission or use a cleared original brand and renamed expressive content before publishing.
