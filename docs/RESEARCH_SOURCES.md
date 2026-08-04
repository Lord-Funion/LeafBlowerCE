# Research sources and provenance

**Research cutoff:** 2026-08-03  
**Implementation baseline:** upstream public version v2.29.7, released 2026-04-08  
**Purpose:** record the factual and technical references used to scope the calculator adaptation

This file distinguishes what was researched from what was copied. The implementation is independent C++ with procedural calculator graphics. No official game source, packed data, sprites, screenshots, UI layouts, audio, dialogue, save schema, account protocol, or server endpoint was used.

## Evidence policy

- **Official** sources establish the commercial product, current version, advertised scope, recent release additions, and publisher identity.
- **Official wiki** pages are community-maintained behavioral references. They are useful for feature discovery but may be incomplete or stale.
- **Toolchain/maintainer** sources establish TI-84 Plus CE APIs, memory limits, build behavior, runtime dependencies, and testing constraints.
- **Legal/rights** sources establish the conservative release boundary. This is practical risk guidance, not legal advice.
- **Inferred CE design** means an independently designed approximation. It must not be described as an exact original formula or behavior.

The feature matrix uses the current source as the implementation authority. Research inventory entries describe the PC game's scope; they do not prove that a CE counterpart is complete.

## Official product and release baseline

| Source | Classification | Facts used | Notes |
| --- | --- | --- | --- |
| [Steam store page](https://store.steampowered.com/app/1468260/Leaf_Blower_Revolution__Idle_Game/) | Official | Product identity; developer/publisher; advertised 30+ leaves, 38+ shops, 40+ areas, 32+ pets, crafting, automation, minigames, prestige, achievements | Marketing counts are lower bounds, not array sizes |
| [Steam announcement feed](https://steamcommunity.com/app/1468260/announcements/?l=english) | Official | v2.29.7 as newest public build at cutoff; patch dates; Harbor offline/QoL additions | Recheck immediately before any public parity claim |
| [Official Humble North updates](https://lbr.humblenorth.de/lbr/wp2/category/updates/) | Official | Release chronology and system introductions | Used to cross-check wiki scope |
| [v2.26 Ultra Leaf Crunch update](https://lbr.humblenorth.de/lbr/wp2/the-ultra-leaf-crunch-update-v2-26-0/) | Official | ULC, Umbral Cluster, Shadow Crystal/tree, boosters, expanded achievements | Establishes late-game scope |
| [v2.27 Fishing update](https://lbr.humblenorth.de/lbr/wp2/the-fishing-update-v2-27-0/) | Official | Fishing, rods, fish, Journey, tournaments, Spiral Walk, automation | CE build uses a compact local fishing action |
| [v2.28 daily/weekly update](https://lbr.humblenorth.de/lbr/wp2/daily-weekly-challenges-qol-v2-28-0/) | Official | Account-backed daily/weekly challenges, leaderboards, offline/QoL changes | Online/account elements are intentionally unavailable |
| [v2.29 Industrial Harbor update](https://lbr.humblenorth.de/lbr/wp2/v2-29-0-the-industrial-harbor-anniversary-update/) | Official | Industrial Harbor, Water Leaves/Crystals, container jobs, ships, inventory/Journey, Anniversary content | Defines the Harbor cutoff implemented as a CE equivalent |
| [Google Play listing](https://play.google.com/store/apps/details?id=com.ezplugins.leafblowerrevolution&hl=en_US) | Official store | v2.29.7/update-date corroboration; support contact | No Android assets or code used |
| [Apple App Store listing](https://apps.apple.com/us/app/leaf-blower-revolution/id6443698340) | Official store | v2.29.7 corroboration; rightsholder/product identity | No iOS assets or code used |
| [Official game site](https://lbr.humblenorth.de/lbr/wp2/) | Official | Product and publisher context | No fan-game or asset license found |

## Core progression, currencies, areas, and resets

These pages supplied facts used to build the 37-leaf inventory, ordered 78-area registry, four reset layers, Quarkstige distinction, and high-level dependency graph. Prices and formulas in the executable were independently condensed or retuned unless the source code/documentation says otherwise.

| Source | Classification | Facts used | CE treatment |
| --- | --- | --- | --- |
| [Wiki home/scope snapshot, revision 11362](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Blower_Revolution_Wiki?oldid=11362) | Official wiki | Current navigation/system inventory | Discovery checklist only |
| [Progression](https://leafblowerrevolution.wiki.gg/wiki/Progression) | Official wiki | Fresh-save dependency spine through late galaxies | Condensed unlock thresholds |
| [Leaf Types](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Types) | Official wiki | Canonical 37 scalar leaf-currency list and acquisition distinctions | Every currency stored; special acquisition often replaced by a field/action |
| [Flask Types](https://leafblowerrevolution.wiki.gg/wiki/Flask_Types) | Official wiki | Science-chain role | CE uses a compact automatic chain; taxonomy differs |
| [Areas](https://leafblowerrevolution.wiki.gg/wiki/Areas) | Official wiki | Ordered 78-area list, galaxy grouping, unlock roles | All 78 stable records retained; bosses/hazards compressed |
| [Enemies](https://leafblowerrevolution.wiki.gg/wiki/Enemies) | Official wiki | Enemy/boss dependency and reward roles | No full enemy database in CE build |
| [Bosses](https://leafblowerrevolution.wiki.gg/wiki/Bosses) | Official wiki | Named progression gates | Replaced by floor/stage/menu actions |
| [Resets](https://leafblowerrevolution.wiki.gg/wiki/Resets) | Official wiki | Reset hierarchy and preservation categories | Used as comparison; CE reset planner is simpler |
| [Leaf Portal / Prestige](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Portal) | Official wiki | Prestige unlock and broad reset behavior | Logarithmic CE award |
| [Big Leaf Crunch](https://leafblowerrevolution.wiki.gg/wiki/Big_Leaf_Crunch) | Official wiki | BLC role and preservation | Logarithmic CE award |
| [Mega Leaf Crunch](https://leafblowerrevolution.wiki.gg/wiki/Mega_Leaf_Crunch) | Official wiki | MLC unlock and documented reward components | CE uses a smaller deterministic floor reward |
| [Ultra Leaf Crunch](https://leafblowerrevolution.wiki.gg/wiki/Ultra_Leaf_Crunch) | Official wiki | ULC unlock, ten sacrifice families, preservation rules | CE omits selectable sacrifice planner and uses compact reset |
| [Quark Reactor](https://leafblowerrevolution.wiki.gg/wiki/Quark_Reactor) | Official wiki | Six-color reactor, structures, Quarkstige, Quantum Blobs | Scalar reactor level/action and local reset |

## Shops, automation, entities, and inventories

| Source | Classification | Facts used | CE treatment |
| --- | --- | --- | --- |
| [Wiki editing/table conventions](https://leafblowerrevolution.wiki.gg/wiki/Wiki_Editing) | Official wiki | Common shop formula/table conventions | Generic table-driven geometric cost engine |
| [Trading](https://leafblowerrevolution.wiki.gg/wiki/Trading) | Official wiki | Offer slots, delivery, outputs, automation role | Three saved local offers with deadlines |
| [Materials](https://leafblowerrevolution.wiki.gg/wiki/Materials) | Official wiki | Material/essence progression roles | One Materials and one Essence scalar |
| [Pets](https://leafblowerrevolution.wiki.gg/wiki/Pets) | Official wiki | Current pet roster and bonus roles | 16 original-code aggregate entries; no official art |
| [Unique Leaves](https://leafblowerrevolution.wiki.gg/wiki/Unique_Leaves) | Official wiki | Discovery/loadout role | One bounded discovery counter |
| [Equipment](https://leafblowerrevolution.wiki.gg/wiki/Equipment) | Official wiki | Persistent equipment role | Crafted-item equip flags only |
| [Crafting](https://leafblowerrevolution.wiki.gg/wiki/Crafting) | Official wiki | Quality/property/level/ascension concepts | Eight compact items and four property types |
| [Alchemy](https://leafblowerrevolution.wiki.gg/wiki/Alchemy) | Official wiki | Recipe and essence production role | Four transactional recipes plus mastery |
| [Artifacts](https://leafblowerrevolution.wiki.gg/wiki/Artifacts) | Official wiki | Timed spawn/search and permanent reward role | One saved search deadline and aggregate count |
| [Scrolls](https://leafblowerrevolution.wiki.gg/wiki/Scrolls) | Official wiki | Timed bonus inventory role | Aggregate counter/action only |
| [Chests](https://leafblowerrevolution.wiki.gg/wiki/Chests) | Official wiki | Rarity/reward/autopen role | One RNG reward action |
| [Cards](https://leafblowerrevolution.wiki.gg/wiki/Cards) | Official wiki | Per-enemy rarity/cap/ascension system | Four aggregate role levels |
| [Borbventures](https://leafblowerrevolution.wiki.gg/wiki/Borbventures) | Official wiki | Roster, adventures, packs, items, currencies | One expedition timer/rank |
| [Dice](https://leafblowerrevolution.wiki.gg/wiki/Dice) | Official wiki | Dice bag, rolls, battlefield, Azurite/Niobium | Local three-die action and tier |
| [Leafscensions](https://leafblowerrevolution.wiki.gg/wiki/Leafscensions) | Official wiki | Per-leaf ascension progression | One aggregate level |
| [Relics](https://leafblowerrevolution.wiki.gg/wiki/Relics) | Official wiki | Relic tiers, fragments, Master Relics | One aggregate restoration level |
| [Mirrors](https://leafblowerrevolution.wiki.gg/wiki/Mirrors) | Official wiki | Relic/energy mirror configurations | One aggregate polish level |

## Combat floors, minigames, and late systems

| Source | Classification | Facts used | CE treatment |
| --- | --- | --- | --- |
| [Leaf Tower](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Tower) | Official wiki | Floor combat, tokens, equipment, Gem Leaves, MLC gate | One floor-advance action and seven-way Gem reward |
| [Cursed Pyramid](https://leafblowerrevolution.wiki.gg/wiki/Cursed_Pyramid) | Official wiki | Descending floors, chests, Ancient Leaves, milestones | One floor-advance action |
| [Death Book](https://leafblowerrevolution.wiki.gg/wiki/Death_Book) | Official wiki | Kill-linked combat progression | Aggregate damage level |
| [Mines](https://leafblowerrevolution.wiki.gg/wiki/Mines) | Official wiki | Searches, caves, items, depth, fuels/bars | One delve action and depth |
| [Fishing](https://leafblowerrevolution.wiki.gg/wiki/Fishing) | Official wiki | Fish, rods, bait/farms, XP, tournament, Journey | One catch action, level, credits, offline award |
| [Industrial Harbor](https://leafblowerrevolution.wiki.gg/wiki/Harbor) | Official wiki | Water collection, jobs, ships, fuel/items, Journey, offline progress | Visible job container, three aggregate actions/counters, offline crystals/fuel |
| [Banks](https://leafblowerrevolution.wiki.gg/wiki/Banks) | Official wiki | Per-galaxy storage/deposit/card rewards/boosts | One local bank balance and interest timer |
| [Soul Forge](https://leafblowerrevolution.wiki.gg/wiki/Soul_Forge) | Official wiki | Empty-to-Soul conversion and completion | One forge action/level |
| [Soul Crypt](https://leafblowerrevolution.wiki.gg/wiki/Soul_Crypt) | Official wiki | Floor combat, keys, particles, milestones | One raid counter/action |
| [Leafton Pit](https://leafblowerrevolution.wiki.gg/wiki/Leafton_Pit) | Official wiki | Floors, Quarklings, blob rewards, milestones | One fight counter/action |
| [Shadow Crystal](https://leafblowerrevolution.wiki.gg/wiki/Shadow_Crystal) | Official wiki | Turn-based stats/ascensions, Pit and Tree linkage | Aggregate crystal level/action |
| [Dusk Leaf](https://leafblowerrevolution.wiki.gg/wiki/Dusk_Leaf) | Official wiki | Dusk Shop combat/economy roles | Dusk balance plus one permanent Shadow Tree path |
| [Cheese Pub](https://leafblowerrevolution.wiki.gg/wiki/Cheese_Pub) | Official wiki | Claw, Slots, Curse Machine, Leaf Counter, Booster, quests | One rotating local reward action |
| [House](https://leafblowerrevolution.wiki.gg/wiki/House) | Official wiki | Furniture/collectible grid and bonuses | One permanent House level |
| [Challenges](https://leafblowerrevolution.wiki.gg/wiki/Challenges) | Official wiki | Main-save-isolated challenge roles and medals | Six local snapshot challenges |
| [Achievements](https://leafblowerrevolution.wiki.gg/wiki/Achievements) | Official wiki | Scope and permanent reward role | 32 local threshold achievements |

## Offline and online-service boundary

The PC game currently includes account-backed or service-selected systems. The CE build does not connect to those services and does not attempt to reproduce their protocols.

| Source | Classification | Facts used | CE treatment |
| --- | --- | --- | --- |
| [Offline Rewards](https://leafblowerrevolution.wiki.gg/wiki/Offline_Rewards) | Official wiki | Which progression roles can accrue offline | Bulk local evaluator, capped at seven days |
| [Daily Rewards](https://leafblowerrevolution.wiki.gg/wiki/Daily_Rewards) | Official wiki | Daily reward progression role | RTC-stamped local claim |
| [v2.28 official notes](https://lbr.humblenorth.de/lbr/wp2/daily-weekly-challenges-qol-v2-28-0/) | Official | Account-backed challenges and leaderboard context | Account, leaderboard, server challenge rules unavailable |
| [v2.29 official notes](https://lbr.humblenorth.de/lbr/wp2/v2-29-0-the-industrial-harbor-anniversary-update/) | Official | Anniversary and Harbor event/automation context | Local 30-day rotating reward replaces live scheduling; core Harbor has local actions |

Unavailable by design: account login, cloud synchronization, cross-device saves, purchases/entitlements, platform achievements, leaderboards, server-selected daily/weekly challenges, bounties, community leaves, and real-time PC event packages. The local daily and season stamp systems are replacements, not mirrors of live service state.

## TI-84 Plus CE engineering sources

| Source | Facts used |
| --- | --- |
| [CE C/C++ Toolchain documentation](https://ce-programming.github.io/toolchain/) | Native project/build model |
| [Toolchain v15.0 release](https://github.com/CE-Programming/toolchain/releases/tag/v15.0) | Pinned compiler/tool release |
| [Hardware overview and memory map](https://ce-programming.github.io/toolchain/static/hardware.html) | 320x240 display, memory regions, stack/heap constraints |
| [Runtime memory FAQ](https://ce-programming.github.io/toolchain/static/faq.html) | CE program/data limits |
| [Getting started and Autotester](https://ce-programming.github.io/toolchain/static/getting-started.html) | `.8xp` output and project layout |
| [Makefile options](https://ce-programming.github.io/toolchain/static/makefile-options.html) | compression, LTO, map, archive options |
| [GraphX](https://ce-programming.github.io/toolchain/libraries/graphx.html) | 8-bit palette rendering and double buffering |
| [KeypadC](https://ce-programming.github.io/toolchain/libraries/keypadc.html) | direct keypad matrix scanning |
| [FileIOC](https://ce-programming.github.io/toolchain/libraries/fileioc.html) | AppVar IO, archive status, rename/delete, garbage-collection callbacks |
| [RTC](https://ce-programming.github.io/toolchain/headers/sys/rtc.html) | calculator date/time access |
| [Compression APIs](https://ce-programming.github.io/toolchain/headers/compression.html) | executable/content compression options |
| [TI variable APIs](https://ce-programming.github.io/toolchain/headers/ti/vars.html) | memory/variable management |
| [Debugging](https://ce-programming.github.io/toolchain/static/debugging.html) | debug-build and emulator workflows |
| [Coding guidelines](https://ce-programming.github.io/toolchain/static/coding-guidelines.html) | static allocation and CE-safe implementation patterns |
| [CE Libraries v15.0 release](https://github.com/CE-Programming/libraries/releases/tag/v15.0) | Shipped `libload`, `fileioc`, `graphx`, and `keypadc` runtime AppVars |
| [CEmu](https://github.com/CE-Programming/CEmu) | Emulator/autotester capabilities and ROM requirement |
| [Texas Instruments TI-84 Plus CE announcement/specifications](https://education.ti.com/en/about/press-center/1-27-2015-ti-84-ce) | Display/flash/RAM product specifications |
| [arTIfiCE](https://yvantt.github.io/arTIfiCE/) | Current native-launch path on OS versions that block direct launch |

The CE artifact was compiled and statically/host verified as described in `TESTING.md`. No physical calculator was attached, and no legally dumped ROM was available, so these sources do not convert unperformed emulator or hardware scenarios into test results.

## Rights and licensing sources

| Source | Facts used | Release consequence |
| --- | --- | --- |
| [U.S. Copyright Office game guidance](https://www.copyright.gov/register/tx-games.html) | Game ideas/methods versus copyrightable code/audiovisual expression | Independently implement mechanics; exclude original code/art/text/audio |
| [Copyright Office Circular 33](https://www.copyright.gov/circs/circ33.pdf) | General limits on copyright for ideas, methods, systems, titles | Does not remove trademark or unfair-competition risk |
| [Copyright Compendium, section 807.7(A)](https://www.copyright.gov/comp3/chap800/ch800-performing-arts.pdf#page=90) | Video-game program and audiovisual material as distinct copyrightable components | Treat both source and presentation as protected |
| [USPTO likelihood-of-confusion guidance](https://www.uspto.gov/trademarks/search/likelihood-confusion) | Similar marks can confuse even when not identical | Adding “CE” is not assumed to clear the exact game title |
| [USPTO comprehensive-clearance guidance](https://www.uspto.gov/trademarks/search/comprehensive-clearance-search-similar-trademarks) | Need for broader clearance than exact-name search | Clear a replacement public title or obtain permission |
| [Official Humble North EULA/privacy page](https://humblenorth.de/privacy-policy/) | No public fan-game/source/asset reuse grant was found | Do not infer permission from free availability |
| [Humble North contact](https://humblenorth.de/contact/) | Rightsholder contact route | Seek a written grant before public release under the requested title |
| [Wiki CC BY-SA 4.0 footer snapshot](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Blower_Revolution_Wiki?oldid=11362) | Wiki page text licensing, unless noted otherwise | Attribute adapted documentation; does not license game screenshots/sprites |
| [CC BY-SA 4.0 deed](https://creativecommons.org/licenses/by-sa/4.0/) | Attribution, change indication, ShareAlike, no extra restrictions | Applies to intentionally adapted wiki documentation portions |
| [TI trademark attribution guidance](https://www.ti.com/legal/terms-conditions/trademarks/attribution-of-marks-in-literature.html) | Referential TI naming | State compatibility; do not imply TI endorsement or use TI logos |

No official source repository, source-code license, asset license, fan-game license, trademark grant, or permission to use the exact title was located at the cutoff. Absence from public search is not proof that no private license exists. For a public release, obtain written permission or adopt a cleared original identity and rename expressive content.

## Wiki attribution and change notice

The factual inventories in `FEATURE_MATRIX.md` and this source register are condensed and reorganized from the linked *Leaf Blower Revolution Wiki* pages, retrieved 2026-08-03. Wiki page content is stated to be available under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) unless otherwise noted. Changes include condensation, regrouping, conversion into calculator implementation-status tables, and original reset/save/hardware analysis. Page authorship is available through each linked page's history.

No wiki image is included. A page footer is not treated as proof that an uploader could relicense an extracted game screenshot or sprite. The project therefore defaults to procedural original graphics and excludes wiki-hosted game imagery.

## Known research uncertainty

- The original game remains actively maintained; v2.29.7 is only the cutoff, not a permanent “latest” claim.
- Some wiki formulas do not specify exact modifier order or rounding. The CE formulas are intentionally documented as equivalents where exact behavior was not established.
- ULC aggregation and preservation are too broad for the current CE reset implementation; the matrix marks the sacrifice planner and many inventory families as compressed or absent.
- Harbor patch behavior after v2.29.0 was reconstructed from official patch notes plus the wiki and should be rechecked against a current PC build before claiming detailed parity.
- The calculator RTC is local and user-adjustable. Offline rewards cannot be made account-secure without a server, which this project intentionally lacks.

