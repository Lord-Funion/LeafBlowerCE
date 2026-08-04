# Leaf Blower Revolution: current feature and progression inventory

**Research cutoff:** 2026-08-03  
**Current public baseline found:** v2.29.7, released 2026-04-08  
**Purpose:** internal implementation specification for a calculator-native demake; this is a research inventory, not a claim that the current CE source implements these features.

## Evidence and scope rules

This report uses four labels:

- **[OFFICIAL]** — verified in Humble North's Steam store page or official Steam announcement feed.
- **[WIKI]** — documented on the current official wiki. This is the best available behavioral reference, but it is community-maintained and can be incomplete, stale, or occasionally internally inconsistent.
- **[COMMUNITY]** — corroborated by a maintained progression guide or other reliable player documentation, normally hosted on the official wiki or Steam.
- **[INFERRED]** — a recommended calculator-native representation. It is not asserted to be exact original-game behavior.
- **[OPEN]** — exact behavior or ordering was not documented well enough to encode as fact. Validate against a current PC save/build before claiming parity.

The official announcement index still showed **v2.29.7** as the newest public build at the cutoff. v2.29.0 added Industrial Harbor, Water Leaves/Crystals, harbor jobs, ships, items, a journey, and the Anniversary event. v2.29.4 added Harbor offline progress and Harbor Hustle; v2.29.7 added Leafscender Safe Mode. Treat these as current-scope requirements, not optional future content. [Official announcements](https://steamcommunity.com/app/1468260/announcements/?l=english)

The Steam description advertises 30+ leaves, 38+ shops, 40+ areas, 32+ pets, 20+ unique leaves, crafting, automation, minigames, prestige, and achievements. The current wiki is broader: it documents Prestige/BLC/MLC/ULC, six post-Leaf-Galaxy realms plus Umbral Cluster, and the late systems listed below. [Steam store](https://store.steampowered.com/app/1468260/Leaf_Blower_Revolution__Idle_Game/) · [Official wiki](https://leafblowerrevolution.wiki.gg/)

**Attribution note.** This document is an original, condensed research summary of facts gathered from the linked pages; it includes no wiki images and does not reproduce long passages. Wiki page content is offered under CC BY-SA 4.0 unless a page says otherwise. If this inventory, or data copied from it, is distributed, retain source links, contributor attribution through page histories, and the [CC BY-SA 4.0 notice](https://creativecommons.org/licenses/by-sa/4.0/). Also follow the separate licensing memo before using the original title, names, prose, or visual assets.

## Canonical progression spine

**[WIKI]** The dependency order that a fresh save must be able to complete is:

```text
Basic -> Gold -> Platinum -> Bismuth -> Cosmic -> Void
  -> Red/Green/Blue/Magenta/Orange/Black/Strange science
  -> Prestige (Coins) and BLC (BLC Coins)
  -> Exotic -> Celestial -> Mythical -> Lava -> Ice -> Obsidian
  -> Silicon -> Benitoite -> Leaf Tower floor 100
  -> MLC (MLC Coins) -> Gem leaves / Moonstone / Sand
  -> Cursed Pyramid -> Ancient -> Black Leaf Hole
  -> Sacred Nebula: Sacred -> Biotite -> Malachite -> Hematite
  -> Energy Belt: Plasma -> Terrors -> Energy Guard
  -> Fire Fields: Coal -> Green Flame -> Spectralseeker
  -> Soul Realm: Soul Crypt -> Soul Mirage -> Empty/Soul Leaves
  -> Quark Ambit: Quark -> Arbiter -> Dragon -> Artificer -> Leafton Pit
  -> Fabric Warden / Weaver of Worlds -> first ULC
  -> Umbral Cluster: Dusk -> Shadow Crystal / Shadow Tree -> late bosses
```

Optional and parallel tracks become essential later: Seeds, Trading, Tools/ALBs, Materials/Alchemy, Pets/Unique Leaves/Equipment, Crafting/Shards, Tower/Pyramid milestones, Cards, Borbventures, Dice, Death Book, Relics/Leafscensions/Mirrors, Mines, Fishing, Harbor, Banks, Soul Forge, Quark Reactor, and Shadow Crystal. [Progression index](https://leafblowerrevolution.wiki.gg/wiki/Progression) · [Wiki scope/navigation](https://leafblowerrevolution.wiki.gg/wiki/Template:SiteLinks)

## Resource inventory

### Leaf currencies

**[WIKI]** The current leaf table contains the following named currencies. Do not use the old marketing count as an array size: seven Gem Leaves and the paired/side-system leaves make the exact count presentation-dependent. [Leaf Types](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Types)

| Family | Leaf currencies | Unlock/acquisition rule | Special handling |
| --- | --- | --- | --- |
| Early | Basic, Gold, Platinum, Bismuth, Cosmic, Void | Basic starts available; each next leaf costs 10k of the previous leaf in its shop. | Physical leaves; printable and tradable after unlock; seeds exist. These leaf amounts and shop levels reset at Prestige. |
| Science/BLC era | Exotic | Costs 10k Strange Flasks; appears first in The Abyss. | Physical, printable/tradable, seedable. Its shop begins the important BLC upgrades. |
| BLC era | Celestial | Costs 100b Exotic and needs Celestial Plane access. | Earned primarily from Angry Leaf enemies, not normal spawning; still has printer/seed support. |
| BLC era | Mythical | Costs 1b Celestial; Mythical Garden costs 50m BLC. | Physical; its shop introduces Printer Printer. |
| BLC era | Lava | Costs 10b Mythical; Volcano costs 500m BLC. | Physical, seedable, used in Obsidian merging. |
| BLC era | Ice | Costs 500m Lava; Research Station costs 1b BLC. | Physical, seedable, used in both merge leaves. |
| BLC era | Obsidian | Unlock costs 5b Ice; created by merging three Lava with three Ice leaves. | Cannot be printed normally; rarer seed. Offline income works after one is obtained in the run. |
| BLC era | Silicon | Costs 10b Obsidian. | Physical, printable/tradable, seedable. |
| BLC era | Benitoite | Created by merging five Ice with ten Silicon leaves after its unlock. | Not normally printed; rare seed. |
| Tower/MLC | Amber, Amethyst, Emerald, Kyanite, Rhodonite, Ruby, Tektite | Unlock individually in the MLC shop; dropped by Tower bosses above floor 100. | Seven independent currencies and shops. They persist through ordinary MLC; ULC clears their amounts. |
| MLC | Moonstone | Moon costs 50b BLC and Tower floor 120. | Physical; shop emphasizes crafting. Seedable. |
| MLC | Sand | Infernal Desert costs 1k MLC. | Physical; shop emphasizes scrolls. Seedable. |
| Dice side track | Azurite, Niobium | Buy unlocks for 1k and 25k Dice Points; collect in Glinting Thicket. | Not required for main progression; spent mainly in Dice Shop; no seeds. |
| Pyramid | Ancient | First obtained from Inner Cursed Pyramid floors/bosses; cannot be traded. | Does not spawn naturally. Seeds require a later Sacred Shop unlock. |
| Sacred Nebula | Sacred | Defeat Centaur, then collect in Sacred areas or from bosses. | Sacred and later leaves cannot be traded and receive fewer ordinary LVM/combo multipliers. Seedable after its farming path is enabled. |
| Sacred Nebula | Biotite | Enter Black Leaf Hole. | Physical; no seed. Focuses permanent entity leveling/damage. |
| Sacred Nebula | Malachite | Costs 10b Biotite. | Physical; no seed. Focuses entity levels and damage. |
| Sacred Nebula | Hematite | Unlock costs 100k Malachite; collection requires defeating Air Elemental. | Physical; no seed. Shop focuses high crafting and energy preparation. |
| Energy Belt | Plasma | Enter Spark Portal. | Orbits the player and must reach top rotational speed before exiting the screen; no seed. |
| Harbor | Water | Unlock Industrial Harbor in Plasma Shop. | Cannot be collected offscreen. Push into job containers; no seed. |
| Fire Fields | Coal | Enter Fire Fields Portal. | Decays unless Anti-Crumble extends lifetime; no seed. |
| Soul Realm | Empty Soul, Soul | Defeat Soul Mirage; Empty Soul arrives passively and converts in batches of 50, reducible to 10. | Passive rather than physical leaf field; no seeds. Save both counts and conversion progress. |
| Quark Ambit | Quark | Enter Quark Portal. | Physical; used by Quark Shop/Reactor; no seed. Quarkstige locally resets Quark and Quark Leaves. |
| Umbral Cluster | Dusk | Perform first ULC. | Physical Umbral leaf; no seed. Dusk shop persists through later ULCs even though leaf amounts reset. |

For a scalar resource enum, use this stable 37-entry order: Basic, Gold, Platinum, Bismuth, Cosmic, Void, Exotic, Celestial, Mythical, Lava, Ice, Obsidian, Silicon, Benitoite, Amber, Amethyst, Emerald, Kyanite, Rhodonite, Ruby, Tektite, Moonstone, Sand, Azurite, Niobium, Ancient, Sacred, Biotite, Malachite, Hematite, Plasma, Water, Coal, Empty Soul, Soul, Quark, Dusk. The original UI groups the seven Gem Leaves and the Empty/Soul pair, so UI row count is smaller than the scalar enum.

### Non-leaf resources and inventories

**[WIKI]** At minimum the economy schema needs the following independent resource groups. A single generic `currency[]` table can hold scalar resources, but inventories and timed objects need their own records.

| Group | Required resources/state | Primary producers and consumers | Reset/persistence headline |
| --- | --- | --- | --- |
| Reset currencies | Prestige Coins, BLC Coins, MLC Coins, ULC Coins | Four reset screens and their shops. | Each higher reset clears lower currencies unless its preservation upgrade says otherwise; ULC always clears Coin/BLC/MLC. |
| Science | Red, Green, Blue, Magenta, Orange, Black, Strange Flasks | Converter chain and seven Flask Shops. | Prestige/BLC clear amounts and shop levels. |
| Premium/daily | Gems; daily reward/quest/bounty counters | Daily rewards, quests, achievements, milestones, trades; Gem Shop/time travel. | Permanent; challenge restrictions can suppress bonuses. No paid acquisition is needed in a CE demake. |
| General secondary | Cheese, Beer, Borbs, Mulch, Curses | Trades, Pub, crafting/alchemy, Pyramid floors, converters, pets, sword, chests. | Kept through MLC; cleared by ULC. Curses are preserved through ordinary resets and ULC according to the ULC keep list. |
| Tower/Pyramid | Silver Tokens, Gold Tokens; chest counts by rarity; current/highest floors; Pyramid floors/keys/costs | Tower enemies/bosses and token shops; Pyramid floors and chests. | Tower and Pyramid run progress have reset-specific rules; milestone claims are permanent. |
| Materials | Spawnable area materials; Cosmic/Earth/Leaf/Water/Dark/Light/Strange/Iridescent/Shadow Essences; Shards; Transformation/Fusion/Ascension Shards | Area drops, alchemy, bosses; entity/tool/equipment upgrades, crafting, portals. | Ordinary resets keep; ULC can sacrifice Materials, with Shadow Crystals specifically excepted. |
| Persistent entities | Pets, Unique Leaves, Tools, Equipment; levels and active/loadout flags | BLC unlocks, Tower drops, essence upgrades. | Ownership generally survives ordinary resets; MLC may require menu re-unlock; ULC resets levels according to rules/Shadow Tree preservation. |
| Crafting | Crafted-leaf slots, type, craft/RNG quality, level, ascension, properties, shard allocation, lock/loadout | Crafting, fusing, rerolls, Shadow Forge. | Kept through MLC; optional ULC sacrifice. |
| Timed collectibles | Artifacts with spawn clocks/counts; Scroll counts and active durations; Fruit/Seed spawn state | Areas, ALBs, alchemy, shops. | Artifacts/scroll inventories survive ordinary resets; most are cleared or must be re-unlocked by ULC. Seeds have their own MLC rules. |
| Cards | Per-enemy cards by six rarities; cap, card parts, packs, ascensions, transcensions/TCP | Enemy drops, packs, Banks, salvage. | Kept through MLC; optional ULC sacrifice, with cap/TCP systems retained. |
| Borbventures | Borb Juice, Ascension Juice, Borb Tokens, Ascension/Borb Runes, Borbcyphers, roster, adventures, packs, item bag | Borbventures and converters. | Kept through MLC; optional ULC sacrifice. |
| Dice | Dice Points, Power Dice/Points, Azurite/Niobium, dice bag, roll history, battlefield, Cursed Dice totals | Dicey areas, converters, battlefield. | Kept through MLC; optional ULC sacrifice. |
| Energy/relic | Electrical Energy/storage, six relic tiers and Master Relics, Relic/Power Fragments, mirrors | Spark/Energy areas, converter, bosses, alchemy, mirrors. | Relics can be a ULC sacrifice; Master Relic upgrades remain. Mirror configuration must be saved. |
| Mines | Coal Bars, Fuel, Coal Diamonds, Shiny Coal Diamonds, Time Spheres, mine searches/caves/items/depth | Coal Mine and transmutation. | Optional ULC sacrifice, while Mine Shop/unlocks/depth remain. |
| Fishing | Fish Credits, fish counts/max lengths, spots, rods, bait/farms, XP/level, tournament and Journey state | Fish Pond. | Explicitly kept through ULC; only area access must be repurchased. |
| Harbor | Water Crystals, filled jobs, ships/fuel/routes, Harbor items, XP/level and Journey state | Industrial Harbor. | Explicitly kept through ULC; Plasma unlock/area must be repurchased. Works offline since v2.29.4. |
| Souls/Banks | Raw Soul Stones, Soul Particles, Refined Soul Stones, Soul Keys; Soul Forge completion; per-galaxy Bank deposits/boosts | Soul Crypt, bosses, alchemy, Soul Forge, Banks. | Soul currencies and shop progression are cleared by ULC except retained systems explicitly listed; bank configuration needs per-galaxy state. |
| Quark | Six Quark colors, Quark Leaves, Quark/Quantum Blobs, Quark Energy, Structures, Quarkstige count | Quark Reactor, Quarkstige, Structure Shop, Leafton Pit/Borbventures. | Quarkstige is local; ULC can sacrifice Quarkstige progress. Reactor/shop persists through ULC, but Quarks, Quantum Blobs, and Structures do not. |
| Shadow | Dusk Leaves, Shadow Essence, Shadow Crystals, Light Rods, crystal level/ascension/stats, Shadow Tree nodes, Pit sacrifices | Umbral areas, Shadow Crystal/Pit/Tree. | Post-ULC permanent layer. Save every node and highest/selected crystal level. |
| Event | Borb O' Lanterns, Nature Gems, clovers, plant seeds/plants, Magic Mulch, Party Tokens, Birthday Cake/event clocks | Cursed Halloween, Nature Season, Anniversary. | Event-specific; permanent upgrades and journey completions must not depend on PC server/account state in the demake. |

Sources: [Flask Types](https://leafblowerrevolution.wiki.gg/wiki/Flask_Types) · [Materials](https://leafblowerrevolution.wiki.gg/wiki/Materials) · [Borbventures](https://leafblowerrevolution.wiki.gg/wiki/Borbventures) · [Dice](https://leafblowerrevolution.wiki.gg/wiki/Dice) · [Fishing](https://leafblowerrevolution.wiki.gg/wiki/Fishing) · [Harbor](https://leafblowerrevolution.wiki.gg/wiki/Harbor) · [Quark Reactor](https://leafblowerrevolution.wiki.gg/wiki/Quark_Reactor) · [Shadow Crystal](https://leafblowerrevolution.wiki.gg/wiki/Shadow_Crystal)

## Area and boss inventory

**[WIKI]** `Unlock Areas` first costs 20 Coins. The original groups locations by galaxy and lets players favorite areas. The CE content table should retain galaxy, unlock predicate/cost, leaf/material spawn sets, hazard flags, enemies/bosses, portal destination, and current/highest floor where relevant. [Areas](https://leafblowerrevolution.wiki.gg/wiki/Areas) · [Bosses](https://leafblowerrevolution.wiki.gg/wiki/Bosses)

### Leaf Galaxy

| Area | Unlock | Principal content |
| --- | --- | --- |
| Home Garden | Free | Basic/Gold; start/tutorial field. |
| Neighbors' Garden | Free | Basic/Gold/Platinum; early safe enemies. |
| Mountain | 10 Coins | Basic through Bismuth; safe enemies. |
| Space | 500 Coins | Basic through Cosmic. |
| THE VOID | 2,500 Coins | Basic through Void. |
| The Abyss | 25k Strange Flasks | Basic/Exotic; Water Seal artifact can spawn here. |
| Celestial Plane | 1m BLC | Basic/Celestial; Angry Leaf enemy supplies Celestial Leaves. |
| Mythical Garden | 50m BLC | Basic/Exotic/Mythical. |
| Volcano | 500m BLC | Basic/Gold/Exotic/Lava; dangerous. |
| Abandoned Research Station | 1b BLC | Basic/Gold/Exotic/Ice; dangerous. |
| Hidden Sea | Water Seal plus Research Station owned | Basic/Exotic/Lava/Ice/Obsidian; dangerous. |
| Leafsink Harbor | 15b BLC | Basic/Exotic/Ice/Silicon/Benitoite; hub for Pub/House. |
| Leaf Tower | 100b BLC | Floor combat, Silver/Gold Tokens, Equipment, Gem Leaves; floor 100 unlocks MLC. |
| Moon | 50b BLC and Tower floor 120 | Basic/Exotic/Moonstone; Halloween Lantern source. |
| Infernal Desert | 1k MLC | Basic/Exotic/Sand; dangerous. |
| Cursed Pyramid | 50k MLC | Outer hub, artifacts/events; no ordinary leaves. |
| Inner Cursed Pyramid | Buy floors in Pyramid system | Descending floors, Ancient Leaves, chests, milestones; dangerous. |
| Kokkaupunki | 2 Earth + 2 Water Essence and Pyramid owned | Material/quest staging. |
| Cursed Kokkaupunki | 200 Cosmic + 200 Leaf Essence and Kokkaupunki owned | Many leaves; Witch boss and essence/curse progression. |
| Dark Glade | 10 Cosmic + 10 Leaf Essence | All spawnable materials at reduced chance. |
| Black Leaf Hole | Defeat Pyramid floor -100 | Portal to Sacred Nebula and Biotite progression. |
| Dicey Meadows | 5 Dark + 5 Light Essence | Dice system. |
| Glinting Thicket | 1k Dice Points and Dicey Meadows | Azurite/Niobium leaves. |
| Fish Pond | 100 Iridescent Essence | Fishing system. |
| Industrial Harbor | Plasma Shop unlock | Water Leaves, jobs, ships, Harbor inventory/Journey. |
| Cheese Pub | 500 Borbs | Claw, Slots, Curse Machine, Leaf Counter, Booster Game, bartender quests, event minigames. |
| House | 300 Cheese | Grid of owned furniture/collectibles; furniture bonuses. |

### Sacred Nebula

Portal requirement: own Black Leaf Hole and pay 250 Shards.

| Area | Unlock | Principal content/boss |
| --- | --- | --- |
| Biotite Forest | Free after portal | Basic/Exotic/Biotite/Malachite. |
| Exalted Bridge | Free | Basic/Void/Exotic/Moonstone; Centaur. |
| Ancient Sanctum | Defeat Centaur | Sacred Leaves, relic/leafscension stage. |
| Vilewood Cemetery | 2.5m Sacred | Vile Creature. |
| Lone Tree | Defeat Vile Creature + 50k each Biotite/Malachite | Air Elemental. |
| Spark Range | Defeat Air Elemental + 100m each Biotite/Malachite | Hematite and Electrical Energy. |
| Spark Bubble | Defeat Air Elemental + 1.2k Energy | Spark Bubble boss. |
| Spark Portal | Defeat Spark Bubble | Portal to Energy Belt. |

### Energy Belt

Portal requirement: enter Spark Portal with 500 each Transformation/Fusion/Ascension Shards, 10k Shards, and 50k Electrical Energy.

| Area | Unlock | Principal content/boss |
| --- | --- | --- |
| Energy Shrine | Free | Energy staging/shop access. |
| Plasma Forest | Free | Plasma Leaves and energy. |
| Blue/Green/Red/Purple Planet Edge | Free | Plasma Leaves; one elemental Terror each. |
| Black Planet Edge | Defeat all four Terrors | Super-Terror. |
| Terror Graveyard | Defeat Super-Terror | Death Book unlock point. |
| Energy Singularity | Defeat Super-Terror | Energy Guard; Mirror Artifact becomes available. |
| Fire Fields Portal | Defeat Energy Guard | Portal staging. |

### Fire Fields

Portal requirement: 100 Borb Tokens, 10 Borb Runes, and 5k Borb Juice.

| Area | Unlock | Principal content/boss |
| --- | --- | --- |
| Shadow Cavern | Free | Fire Fields entry. |
| Coal Mine | Coal Shop unlock | Mines system. |
| Mount Moltenfury | Free | Coal Leaves. |
| Fire Temple | 50k Coal | Dangerous Coal area. |
| Flame Brazier | Solve Borb Prison | Green Flame. |
| Fire Universe | Defeat Green Flame | Spectralseeker. |
| Soul Portal | Defeat Spectralseeker | Portal staging. |

### Soul Realm

Portal requirement: 25 Soul Stones, 20 Strange Essence, and 2 Iridescent Essence.

| Area | Unlock | Principal content/boss |
| --- | --- | --- |
| Soul Temple | Free | Buy/inspect Soul Crypt floors. |
| Soul Crypt | Free | Floor combat, Soul Keys/Particles and milestones; dangerous. |
| Hollow | Reach Crypt floor 20 | Soul Mirage. |
| Soul Forge | Defeat Soul Mirage | Empty-to-Soul conversion and shop. |
| Fabric of the Leafverse | Reach Crypt floor 100 | Fabric Warden. |
| Quark Portal | Defeat Soul Mirage | Portal to Quark Ambit. |
| Primordial Ethos | Defeat Fabric Warden | Weaver of Worlds; ULC gate. |

### Quark Ambit and Leafton

| Area | Unlock | Principal content/boss |
| --- | --- | --- |
| Quark Nexus | Enter Quark Portal | Quark Leaves/Reactor. |
| Quantum Aether | Free | Quark Stone enemies. |
| Astral Oasis | Free | Atomic Arbiter. |
| Dimensional Tapestry | Defeat Atomic Arbiter | Cosmic Dragon. |
| Planck Scope | Defeat Cosmic Dragon | Quantum Artificer. |
| Ante Leafton | Defeat Quantum Artificer | Structure progression. |
| Leafton Pit | Buy `Unlock Leafton` in Structure Shop | Floor system with Quarklings and Quantum Blob rewards. |

### Umbral Cluster

The first ULC opens this galaxy.

| Area | Unlock | Principal content/boss |
| --- | --- | --- |
| Shadow Crystal | Free | Turn-based Shadow Crystal system, Pit, Tree. |
| Tenebris Field | Free | Dusk Leaves. |
| Blacklight Verge | Shadow Crystal level 5 | Dusk field/Shadow Fiend. |
| Sombrynth | Shadow Crystal level 25 | Shadow Tyrant. |
| Latsyrc Wodash | Shadow Crystal level 100 | Verdraxis. |
| Shadow Lighthouse | Defeat Verdraxis 10 times | Omnipresence. |
| Spiral Walk | Defeat Omnipresence 10 times | Krevlok. |

### Event areas

| Event | Availability/unlock | Areas and core boss |
| --- | --- | --- |
| Cursed Halloween | October 24-November 1, or four-hour Halloween Lantern artifact | Cursed Halloween; Cursed Cheese takes only ALB-contact/trout damage and has escalating HP/kills. |
| Nature Season | May 1-August 1, or Nature Rod/pack activation | Farm Field, Vial of Life, Doomed Tree; Butterfly Field additionally requires the butterfly unlock. Doomed Tree has infinite waves. |
| Anniversary | December event; Birthday Cake artifact can activate event behavior | Cheese Pub candle minigame, Party Tokens/booster and an Anniversary Journey. |

The normal-boss roster required by the area table is Witch, Centaur, Vile Creature, Air Elemental, Spark Bubble, four colored Terrors, Super-Terror, Energy Guard, Green Flame, Spectralseeker, Soul Mirage, Fabric Warden, Weaver of Worlds, Atomic Arbiter, Cosmic Dragon, Quantum Artificer, Shadow Tyrant, Verdraxis, Omnipresence, and Krevlok, plus Tower/Pyramid/Soul-Crypt/Pit floor enemies and the two seasonal bosses. Enemy state needs HP, expiration timer, damage type, spawn cooldown, drop table, current/consecutive kill counters, and Death Book linkage. [Enemies](https://leafblowerrevolution.wiki.gg/wiki/Enemies) · [Bosses](https://leafblowerrevolution.wiki.gg/wiki/Bosses)

### Exact ordered area enum (78 rows)

This order is the live `Areas` wiki table order at the research cutoff. Give each name its own stable ID; the grouped display table above must not collapse the four Planet Edges into one content record.

```text
Leaf Galaxy (27)
01 Home Garden
02 Neighbors' Garden
03 Mountain
04 Space
05 THE VOID
06 The Abyss
07 The Celestial Plane
08 The Mythical Garden
09 The Volcano
10 The Abandoned Research Station
11 The Hidden Sea
12 Leafsink Harbor
13 The Leaf Tower
14 The Moon
15 The Infernal Desert
16 The Cursed Pyramid
17 The Inner Cursed Pyramid
18 Kokkaupunki
19 Cursed Kokkaupunki
20 The Dark Glade
21 Black Leaf Hole
22 Dicey Meadows
23 Glinting Thicket
24 Fish Pond
25 Industrial Harbor
26 The Cheese Pub
27 Your House

Sacred Nebula (8)
28 Biotite Forest
29 The Exalted Bridge
30 The Ancient Sanctum
31 Vilewood Cemetery
32 The Lone Tree
33 Spark Range
34 Spark Bubble
35 Spark Portal

Energy Belt (10)
36 Energy Shrine
37 Plasma Forest
38 Blue Planet Edge
39 Green Planet Edge
40 Red Planet Edge
41 Purple Planet Edge
42 Black Planet Edge
43 Terror Graveyard
44 Energy Singularity
45 Fire Fields Portal

Fire Fields (7)
46 The Shadow Cavern
47 The Coal Mine
48 Mount Moltenfury
49 The Fire Temple
50 Flame Brazier
51 The Fire Universe
52 Soul Portal

Soul Realm (7)
53 Soul Temple
54 Soul Crypt
55 The Hollow
56 Soul Forge
57 The Fabric of the Leafverse
58 Quark Portal
59 Primordial Ethos

Quark Ambit / Leafton (7)
60 Quark Nexus
61 Quantum Aether
62 Astral Oasis
63 Dimensional Tapestry
64 Planck Scope
65 Ante Leafton
66 The Leafton Pit

Umbral Cluster (7)
67 Shadow Crystal
68 Tenebris Field
69 Blacklight Verge
70 Sombrynth
71 Latsyrc Wodash
72 Shadow Lighthouse
73 Spiral Walk

Events (5)
74 Cursed Halloween
75 Farm Field
76 Butterfly Field
77 Vial of Life
78 The Doomed Tree
```

## Shop and unlock inventory

### Data model common to every shop

**[WIKI]** Most repeatable prices use `round_or_ceil(base * growth^n)`, where `n` is the current level. The wiki normally specifies whether discounts apply. A generic shop entry therefore needs: stable ID, visibility predicate, unlock predicate, currency ID, base cost, growth/operator, maximum level, purchase quantity rules, discount class, effect opcode/parameters, reset domain, automation category, and description string. Never infer a price from the displayed rounded value when the page provides the underlying expression. [Wiki table conventions](https://leafblowerrevolution.wiki.gg/wiki/Wiki_Editing)

**[INFERRED]** Every shop page on CE should support `+1`, a safe `max`, current/next effect, exact next price, insufficient-funds feedback, and an optional bot priority. `max` must use a monotonic binary/geometric search against the large-number type; repeated subtraction is too slow and may produce different rounding.

### Shop registry

| Shop family | Unlock and currency | Required roles |
| --- | --- | --- |
| Tools | Appears after 30 Basic Leaves; prices span leaves/materials | Buy/equip blowers, swords, shovels and trouts; inspect power/range/special behavior; upgrade tool levels. |
| Leaf shops | First Leaves Shop appears after 50 Basic Leaves; one shop per leaf currency | Unlock next leaf, Tree/Fertilizer/Marketing/value/combo/storage/ALB upgrades, plus stage-specific systems such as Portal, flasks, merging, trading, crafting, relics, energy, Harbor, Mines and Dusk stats. |
| Coin Shop | Unlock Leaf Portal for 300 Gold, Prestige, then spend Coins | Areas, Printers, Converters, automation bots, discounts, leaf/fruit rewards, offline Prestige. |
| Printers | 200 Coins | Printer counts/output per eligible leaf and Printer Printer production. |
| Converters | 200 Coins | Toggle conversion recipes, output/count/speed, start automation and critical output. |
| Flask Shops (7) | Red through Strange, each bought from previous resource | Next science color, converter efficiency, All Leaves++, BLC Science, HP/shield; Black unlocks BLC, Strange unlocks Exotic and stronger converter/BLC upgrades. |
| BLC Shop | Unlock in Black Flask Shop and Crunch | Persistent BLC multipliers, capacity, bots, preservation upgrades, and major feature certificates. |
| Farming | Farming Certificate in Exotic Shop | Seed levels for every eligible leaf, current reward percentage and spawn configuration. |
| Trading | 100k BLC certificate | Offer slots, level range, refresh/delivery timers, accept/collect/automation. |
| Mulch | 25m BLC | Trade caps/optimization, seed/chest/claw/slot/leaf-counter upgrades and other secondary-system scaling. |
| Materials/Alchemy | 250k/15m BLC | Material overview/storage; recipes, brew queue, auto-brew, crit/multicrit. |
| Artifacts/Scrolls | 50m/5m BLC | Spawn timers, inventory and auto-use; scroll inventory/duration/use. |
| MLC Shop | Beat Tower floor 100 and MLC | Tower floors/offline climb, lower-reset preservation, cards/Borbventures, automation and Gem Leaf unlocks. |
| Silver/Gold Token Shops | Enter Tower and defeat normal enemies/bosses | Player HP/damage/drop/taxi; Tower ALBs, Tower rewards, Tower health/damage. |
| Gem Shop | Gems from daily/quests/achievements/trades | Permanent multipliers, preservation, automation, offline systems, time travel and quality-of-life. Paid packs/skins are outside the functional progression requirement. |
| Ancient and Sacred Shops | Obtain each leaf | Pyramid/Witch/material/item upgrades; seeds, Relics, Leafscensions and Sacred progression. |
| Biotite/Malachite/Hematite | Obtain each leaf | Higher entity level caps/focus, damage, Tower floors, crafting, energy and portal preparation. |
| Dice Shop | Dicey Meadows | Dice bag/battlefield/Cursed Dice, Azurite/Niobium, timers/sides/count and Dice converters. |
| Electrical Energy Shop | Unlock Energy in Hematite Shop | Energy storage/charge, relic capacity/damage, Plasma converter, Mirrors and Relic Fragments. |
| Plasma/Harbor Shops | Enter Energy Belt / unlock Harbor | Energy/damage/crafting; Harbor leaves/jobs/ships/items/Journey. |
| Coal/Mines Shops | Enter Fire Fields / buy Coal Mine | Anti-Crumble, damage, crafting, Leafscender Safe Mode; mine searches, power, caves, depth and transmutation. |
| Borbventure Shop | 5k MLC | Adventure slots, roster/backpack, special borbs, packs, ascension and automation. |
| Cards/TCP Shops | 5k MLC | Packs, cap, salvage, ascension/transcension and permanent TCP bonuses. |
| Soul Shop/Forge | Soul Realm / defeat Soul Mirage | Crypt rewards/floors/damage and Empty-to-Soul production/conversion/completion. |
| Banks | Soul Shop unlock, then one bank per galaxy | Soul Particle storage/deposit, boss-card interval/cost/count/rarity, offline mode, Refined Soul Stone boost. |
| Quark/Reactor/Structure Shops | Enter Quark Portal and progress structures | Reactor size/speed/focus/efficiency, Quarkstige, blobs/energy/structures and Leafton unlock. |
| ULC Shop | Defeat Weaver 20 times and ULC | Sacrifice reduction, stable areas, lower-reset multipliers/preservation, late automation/crafting/entity systems. |
| Dusk/Shadow Pit/Shadow Tree | First ULC | Dusk production/combat; sacrifice resources for Pit strength; permanent Shadow stats and ULC preservation. |
| Fishing Shop | Fish Pond for 100 Iridescent Essence | Spots/searches, rods, bait/farms, rarity/length, automation, Tournament/Journey. |
| House | Buy for 300 Cheese | Place/inspect furniture and apply unlocked furniture bonuses. |
| Pub/event shops | Pub for 500 Borbs; event conditions | Minigame improvements, quests, boosters and event-specific persistent upgrades. |

### Shared early shop behavior

**[WIKI]** Early leaf shops generally share Tree (more leaves per spawn step), Fertilizer (faster drops), Marketing/leaf value, next-leaf unlock, ALB count/battery/speed, and leaf-specific reward upgrades. Gold introduces Combo and the Leaf Portal. Void unlocks Red Science. Later shops stop being uniform and become the unlock surface for new mechanics. Base Basic examples are Tree `10 * 1.5^n` (max 30), Fertilizer `10 * 1.5^n` (max 50), and Leaf Marketing `500 * 5^n`; exact variants must be generated from the current per-leaf tables, not guessed. [Leaf Types](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Types) · [Progression/Basics](https://leafblowerrevolution.wiki.gg/wiki/Progression/Basics)

**[WIKI]** Flask shops share: Reduce Converter Resources (10 levels, -1% each), Increase Converter Count (10 levels, doubles input/output), per-converter Output (up to 100 in most shops), All Leaves++ (+20% each), BLC Science (10 levels, +50% each after BLC is unlocked), HP, and Leaf Shield. Black adds `Unlock Big Leaf Crunch`; Strange replaces the next-flask unlock with Exotic Leaves and adds unlimited C++ (+10 converter output) and BLC++ (+300%). [Flask Types](https://leafblowerrevolution.wiki.gg/wiki/Flask_Types)

### Key reset-shop upgrade tables

These are the progression-critical entries whose exact documented costs should be present in the content data. The original shops contain additional convenience/stat entries; the linked pages remain the canonical row-by-row reference.

#### Coin Shop

| Upgrade | Cost / max | Effect |
| --- | --- | --- |
| Unlock Areas / Printers / Converters | 20 / 200 / 200, one level | Opens the three core menus. |
| Auto Tree/Fertilizer/Marketing/Nuclear/ALB | 100 each, one level | Enables corresponding autobuyer. |
| Auto unlock Leaves / Flasks | 500 / 5,000 | Progression unlock autobuyers. |
| Printer Adder | `10 * 1.5^n` | Adds printers. |
| Printer Multiplier | `40 * 2^n` | Multiplies printer output. |
| Converter Count / Output | `10 * 2^n` / `20 * 2.5^n` | Conversion batch size/output. |
| Prestige++ | `5 * 2.5^n` | +25% Prestige reward. |
| Upgrade Discount | `5 * 2.5^n`, max 50 | -1% affected shop costs per level. |
| More Leaves Basic-Void | `2 * 4^n` | +100% matching leaf reward. Exotic/Celestial variants start at 100/200. |
| Fruit Fertilizer / Fruity Fruits | `1 * 1.5^n`, max 50 | +0.5% fruit chance / fruit reward. |
| Fruit Trees | `5 * 1.4^n` | +1% multi-fruit chance; later guaranteed fruit steps. |
| Offline Prestige count / value | `1.5m * 96^n` max 5 / `100k * 48^n` max 50 | One simulated offline Prestige per minute per count level; 0.1% base plus 1% per value level of highest Prestige. It does not reset the active run. |

[Leaf Portal / Coin Shop](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Portal)

#### BLC Shop

| Upgrade | Cost / max | Effect |
| --- | --- | --- |
| Prestige+++++ | `1 * 2^n` | +200% Prestige Coins. |
| BLC++ | `2 * 2^n` | +1 flat BLC base. |
| Converter Transistors | `1 * 3^n`, max 3 | Doubles converter speed. |
| Converter Output | `2 * 2.5^n` | +1 non-static output. |
| Better Printer Ink | `1 * 1.5^n` | +100% printer reward. |
| Unlimited Printer Ink | 25m | Printers survive BLC. |
| Bigger Printer Room | `50m * 3^n`, max 10 | Printer cap x10. |
| Master of Leaves / What the Combo | `1 * 2^n` / `2 * 2^n` | +400% leaves / +200% combo. |
| Crunchy Coins | `400k * 2^n`, max 10 | Provides Coins on BLC, doubling per level. |
| Bigger Bag | `10 * 1.5^n`, max 270 | Raises global resource cap by powers of ten to 1e300. |
| Auto Crunch / Settings / Timer | 100k / 5m / `10k * 1.75^n`, timer max 30 | Timed or threshold BLC; timer starts at five minutes and falls 10 seconds/level. |
| Unique Leaves / Greedy Uniques | 20m / `3m * 1.5^n`, max 22 | Unlock and add active slots. |
| Pets | 1m | Unlock pets. |
| Trading Certificate / slots / education | 100k / `2m * 6^n` max 3 / `20m * 24^n` max 50 | Trading, slots, max trade level. |
| Crafting Certificate / Forge / Hammer | 500k / `250k * 12^n` max 3 / `10k * 3.5^n` max 25 | Crafting, craft level and rarity chance. |
| Artifacts / ALB collect / Offline Artifacts | 50m / 10m / `5m * 15^n` max 2 | Artifact system and collection. |
| Offline Crunches / Offline BLC | `1.5m * 96^n` max 5 / `100k * 48^n` max 50 | Non-resetting offline BLC based on highest BLC. |
| Scrolls / Mulch / Materials / Inspector / Alchemy | 5m / 25m / 250k / 500k / 15m | Opens five major systems. |
| Perma HP Regen / Blow Power Controller | 75m / 25b | Regen in draining areas / manual power percentage. |

[Big Leaf Crunch / BLC Shop](https://leafblowerrevolution.wiki.gg/wiki/Big_Leaf_Crunch)

#### MLC Shop

| Upgrade | Cost / max | Effect |
| --- | --- | --- |
| Unlock Cards / Borbventures | 5k each | Opens the two MLC-era systems. |
| All Leaves+ | `10 * 8^n` | +250% leaf reward. |
| Master of MLC | `10 * 12^n` | +10% MLC. |
| Moar BLC | `5 * 8^n` | +20k BLC. |
| More Tower Floors | `40 * 8^n` | +20 maximum Tower floors. |
| Crunchy Tower | `2k * 1.25^n`, max 100 | +50 retained Tower start floor per level. |
| Crunchy Areas / Coins / BLC | 250k / `300 * 2^n` / `500 * 2^n` | Preserve/reseed lower progression after MLC. |
| Crunchy Pets / Unique Leaves / Printers | 75k / 50k / 15k | Retain or immediately re-enable these systems. |
| Crunchy Seeds Lite | 250k | Keep level 1 of each eligible seed through MLC. |
| Leaf-powered ALBs | 10 | ALBs can use leaves rather than finite charge. |
| Advanced Trading Education | `5m * 5^n` | Raises both min and max trade level. |
| Gem Leaf unlocks | 1k each | Amber, Amethyst, Emerald, Kyanite, Rhodonite, Ruby, Tektite. |

The shop also contains autobuyers, Autofacts, offline Seeds/MLC/Tower, Tower Authority, artifact/crafting persistence, and Token converters. [Mega Leaf Crunch](https://leafblowerrevolution.wiki.gg/wiki/Mega_Leaf_Crunch)

#### ULC Shop

| Upgrade | Cost / max | Effect |
| --- | --- | --- |
| Less Sacrifices | `2.5k * 2^n`, max 3 | One fewer selectable ULC sacrifice per level. First ULC still requires all ten. |
| Stable Areas | 5k | Keep area unlocks through ULC. |
| Crunchy Pyramid | `1k * 1.5^n`, max 10 | Retain a deeper Pyramid start, analogous to Crunchy Tower. |
| All Leaves+ | `50 * 2^n` | +2,500% leaf rewards. |
| Lord of Prestige / BLC / MLC | `25 * 2^n` / `40 * 2^n` / `80 * 2^n` | +1,000% respective lower reset reward. |
| Pet House | 2k | Late pet-slot/pet management progression. |
| Printer Printer +2 | 500 | Printer persistence/production across ULC. |
| ALB Slapper | 750 | Enables automated trout slapping. |

The ULC shop also contains critical-slap upgrades, craft hammer/tier/formula unlocks from Malachite through Quark, Borbventure capacity/autocraft, card and dice upgrades, Equipment Harvester, Leafscender, material improvements and Bigger Reactor. [Ultra Leaf Crunch](https://leafblowerrevolution.wiki.gg/wiki/Ultra_Leaf_Crunch)

### Late shop formulas that should not be lost

- **Electrical Energy:** base storage is 1k. Energy Shop storage and charge cost `1k * 1.5^n`; Max Relics costs `3k * 12^n`; Energelics costs `500 * 1.5^n` and adds 1% Relic damage per 1k stored Energy; Plasma converter unlock costs 3k Plasma Leaves; Mirror Gloss costs `2.5k * 2^n` (5 levels); Relic Fragments cost 100k Energy; Fragment Chance costs `75k * 2^n` (5 levels). [Electrical Energy](https://leafblowerrevolution.wiki.gg/wiki/Electrical_Energy)
- **Quark Reactor:** Reactor Size `2k * 4^n`; Speed `1.5k * 2^n` max 10; Focused `2.5k * 2.25^n` max 20; Efficiency `1.75k * 2^n` max 10; Quark Damage `5k * 3.5^n` max 5; Quark Leaves `500 * 4^n` max 10; Real Damage `5m * 4^n` max 10; Gems Business and Craft Forge cost 5m each. [Quark Reactor](https://leafblowerrevolution.wiki.gg/wiki/Quark_Reactor)
- **Structure Shop:** Fast Funnel `25 * 2.75^n` max 10; Efficient Blobs `50 * 1.75^n` max 20; Structurize `50 * 2.8^n` max 10; Fast Quantity `50 * 2.75^n` max 10; Quantum Damage `200 * 1.15^n`; Quarkstige multiplier `3,500 * 1.2^n`; Real Damage `250 * 4^n` max 10; Quarkventures costs 2k. [Quark Reactor](https://leafblowerrevolution.wiki.gg/wiki/Quark_Reactor)
- **Dusk Shop:** Marketing `100k * 1.25^n`; Fertilizer `50k * 1.25^n` max 50; flat/% Shadow damage `50k * 4^n` max 10 / `100k * 4^n`; flat/% HP `30k * 3^n` / `200k * 3^n`; flat/% Rest `100k * 3^n` / `150k * 3^n`; Enemy HP Lighter `50k * 4^n` max 25; Resistance `100k * 4^n` max 10; Anti-Resistance `1m * 4^n`; Speed `100k * 4^n` max 20; Forge 10m; Hammer `1m * 3^n` max 10. [Dusk Leaf](https://leafblowerrevolution.wiki.gg/wiki/Dusk_Leaf)
- **Banks:** every galaxy has Storage, Auto Deposit, Deposit Duration, Drop Cost, Drop Duration, Card Rarity/Fallback/Count, Offline, Boost, Boost Multiplier and Auto-Deposit Refined Soul Stones. Costs use the same formula by galaxy with multipliers 1x through 6x; do not flatten all banks into one upgrade set. [Banks](https://leafblowerrevolution.wiki.gg/wiki/Banks)

## Reset tiers, formulas, and preservation

### Compact reset matrix

Legend: **K** keep; **R** reset/clear; **C** conditional on a preservation upgrade or selected ULC sacrifice; **N/A** not yet available. This is the normal main save, not a challenge save.

| State group | Prestige | BLC | MLC | ULC |
| --- | :---: | :---: | :---: | :---: |
| Basic-Sand leaf amounts | R | R | R | R |
| Ancient, Sacred and later leaf amounts | K | K | K | R |
| Basic-Exotic shop levels | R | R | R | R |
| Celestial-Benitoite shop levels | K | K | R | R |
| Gem/Ancient-through-Soul shop levels | K | K | K | R |
| Quark Reactor/Shop and Dusk Shop upgrades | N/A/K | N/A/K | N/A/K | K, but their spendable resources/Structures reset as specified |
| Flasks and Flask Shop levels | R | R | R | R |
| Coins/Coin Shop | K | C: Crunchy Coins | C: Crunchy Coins | R |
| BLC/BLC Shop | K | K | C: Crunchy BLC | R |
| MLC/MLC Shop | K | K | K | R |
| ULC/ULC Shop | K | K | K | K |
| Tools owned | C: It's Mine | C: It's Mine | C: It's Mine | C: It's Mine; levels subject to Shadow preservation |
| Printers | K | C: Unlimited Ink | C: Printer +1 | C: Printer +2 |
| Areas | K | K | C: Crunchy Areas | C: Stable Areas |
| Seeds | K | K | C: Crunchy Seeds Lite keeps level 1 | R |
| Active trades | K | K | R | R |
| Pets/Unique ownership | K | K | C: menu re-unlock/preservation | K ownership, but re-buy BLC menu unlock; levels normally reset |
| Equipment/Crafts/Materials/Cards/Dice/Borbventures/Mines/Relics/Leafscensions | K | K | K | C: each belongs to one of ten selectable sacrifice families |
| Artifacts/Scrolls/Chests | K | K | K | mostly R; Compass/Time Crystal/Zoo Necklace remain unlocked |
| Tower current floor / token upgrades | K | K | R unless Crunchy Tower start / R |
| Pyramid/Crypt/Pit run floors | K | K | Pyramid depends on run system | R, with Crunchy Pyramid start support |
| Challenges, medals, milestones, House, curses, Gems | K | K | K | K |
| Fishing and Harbor progression/inventories | K | K | K | K; their areas/unlocks must be repurchased |
| Shadow Crystal/Tree/Pit progression | N/A | N/A | N/A | K |

Sources: [Resets](https://leafblowerrevolution.wiki.gg/wiki/Resets) · [Prestige](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Portal) · [BLC](https://leafblowerrevolution.wiki.gg/wiki/Big_Leaf_Crunch) · [MLC](https://leafblowerrevolution.wiki.gg/wiki/Mega_Leaf_Crunch) · [ULC](https://leafblowerrevolution.wiki.gg/wiki/Ultra_Leaf_Crunch)

### Prestige

- **Unlock:** Gold Shop, 300 Gold Leaves.
- **Reward:** Coins based on collected/current leaf totals, then modified by Prestige++ and other multipliers. **[OPEN]** The current wiki does not publish the complete base reward function or exact aggregation/rounding order; validate it in-game or use an explicitly documented demake formula.
- **Clears:** Basic through Sand leaf amounts, Basic-Exotic leaf-shop purchases, flasks/science, and tools without It's Mine.
- **Keeps:** Coins/shop, Printers, all later reset currencies/shops, Celestial+ shop upgrades, Ancient+ resources, seeds, areas, Gems, artifacts, pets/uniques, crafts, essence levels, materials/equipment/curses, Cheese/Beer/Borbs/Mulch, active trades, tokens, Tower floor, Scrolls/Chests, challenges and House.
- **Safety:** show reward and reset list, require a fresh keypress confirmation, set an in-progress transaction marker, apply once, and save immediately.

### Big Leaf Crunch

- **Unlock:** Black Flask Shop.
- **Reward:** starts from base 1 plus flat BLC upgrades, then percentage multipliers from science/leaves/crafts/pets/unique/challenges/Gem Shop. **[OPEN]** The complete modifier order and rounding are not published on the wiki.
- **Clears:** Prestige Coins/shop unless Crunchy Coins, Basic-Sand leaves and early shops, all flasks/science, tools without It's Mine, Printers without Unlimited Printer Ink.
- **Keeps:** BLC and later currencies/shops; Celestial+ upgrades; Ancient+/Gem leaves and shops; seeds; areas; Gems; artifacts; pets/uniques/crafts/materials/equipment; secondary resources; active trades; tokens/Tower floor; Scrolls/Chests/challenges/House.
- **Offline BLC:** produces fractions of the highest historical BLC without resetting the active run. It must not call the destructive BLC path.

### Mega Leaf Crunch

- **Unlock:** defeat Evil Bob at Tower floor 100.
- **Verified reward formula:**  
  `MLC = (TowerFloorMLC * CurrentBLCMultiplier + CraftedLeavesBonus) * MasterOfMLC * BoosterGame * GemShop`  
  where `TowerFloorMLC = floor(highestBossFloor / 10 - 9)^4`, and `CurrentBLCMultiplier = 1 + floor(log10(current BLC))`; minimum reward is 10. Preserve the documented integer truncation before applying external multipliers. [Mega Leaf Crunch](https://leafblowerrevolution.wiki.gg/wiki/Mega_Leaf_Crunch)
- **Clears:** Basic-Sand amounts; Basic-Benitoite shop levels; flasks; current Tower progress/tokens; lower currencies/shops unless Crunchy upgrades; areas unless Crunchy Areas; printers unless MLC printer preservation; converters restart; seeds except Crunchy Seeds Lite; pet/unique menus without Crunchy unlocks; active trades.
- **Keeps:** MLC/ULC; maximum offline-BLC history; Ancient+/Gem resources and shops; artifacts/crafts after their menu is re-enabled; Equipment/curses/essence levels/materials; Cheese/Beer/Borbs/Mulch; Scrolls/Chests/Gems/challenges/House/Cards.

### Ultra Leaf Crunch

- **Unlock:** reveal after defeating Weaver of Worlds once; perform after 20 Weaver kills.
- **Sacrifices:** Borbventures, Cards, Crafted Leaves, Dice, Equipment, Leafscensions, Materials, Mines, Quarkstiges, and Relics. First ULC requires all ten; `Less Sacrifices` can reduce later selections by up to three.
- **Always clears:** all leaf amounts and Basic-Soul shops, offline leaf maxima, flasks, Tower/Pyramid/Crypt/Pit run progress, tokens/Soul/Energy shops and currencies, Cheese/Beer/Borbs/Borbventure currencies/Mulch, Coin/BLC/MLC currencies and shops, areas without Stable Areas, printers without +2, converters, seeds, offline-reset maxima, active trades, most artifact/scroll inventory, auto-open chest state, and entity levels unless protected by late Shadow rules.
- **Always keeps:** ULC currency/shop; House; challenges/medals/milestones/curses; Gems/shop; Community Leaves; pet/unique ownership (but their BLC menu unlock is repurchased); Quark Reactor/shop excluding Quarks, Quantum Blobs and Structures; Dusk Shop; boosters/distance; Leaf Counter; Fishing; Harbor; Shadow progression. Compass, Time Crystal and Zoo Necklace remain unlocked.
- **Sacrifice-specific preservation:** Card cap/TCP, Borbventure Shop/unlocks and borb rarity, Dice Shop/unlocks, Mine Shop/unlocks/depth, and Master Relic upgrades survive even when their associated inventory is sacrificed. Materials sacrifice does not delete Shadow Crystals.

**[WIKI] ULC component formulas.** The wiki documents per-family score terms, but not a sufficiently clear final sum/product/rounding sequence. Encode the terms independently and mark aggregate behavior for in-game validation:

- sacrifice-count multiplier: `(selected_sacrifices - 1) * 5`;
- Borbventure or Mine items: `sqrt(count / 100)^(1 + rarity / 30)`; packs use a `sqrt(log2(count))` base;
- Cards: `sqrt(count / 250000)^(1 + rarity / 30)`; packs again use a logarithmic base;
- each Crafted Leaf: `sqrt(craft_level / 5)`;
- Dice: `sqrt(count / 100)^(1 + rarity / 30)`;
- Equipment: `sqrt(log10(count))`;
- each Leafscension: `sqrt(log10(count / 1000))^(1 + rarity / 20)`;
- Materials: `sqrt(log10(count / 100))^(1 + (1 - daily_modifier / 10))`;
- Quarkstige contribution: `quarkstige_count / 10`;
- Relics: `sqrt(count / 1000)^(1 + level / 30)`.

### Quarkstige subreset

**[WIKI]** Quarkstige is a local reactor reset, not a fifth global reset. It clears six Quark resources and Quark Leaves, costs 50 of each color for the first reset plus 25 per consecutive reset, awards `250,000 * (n + 1)` Quark Leaves, and yields one Quantum Blob. Each Quantum Blob adds +100% Quark Damage and +2% additional-Quark chance. Save consecutive and all-time counts separately. [Quark Reactor](https://leafblowerrevolution.wiki.gg/wiki/Quark_Reactor)

## Core play and automation systems

### Leaf field, movement, collection, and combo

**[WIKI]** The core action is to apply blower force to physical leaves, move them, and collect them when they leave the field. Higher types are heavier. The player can move independently; the equipped tool determines force, range and special effects. Leaves can hit enemies, combining field play with damage. Combo begins in the Gold shop and rewards continuous collection; fruit, upgrades and tools modify leaf value/spawn/rate. [Blowing](https://leafblowerrevolution.wiki.gg/wiki/Blowing) · [Blowing Power](https://leafblowerrevolution.wiki.gg/wiki/Blowing_Power) · [Leaf Gain](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Gain)

**[OPEN]** The public wiki does not specify exact particle integration, force falloff, mass, collision or spawn RNG. Those should not be presented as verified formulas.

**[INFERRED CE representation]:** simulate a bounded pool of visible particles at a fixed step, with type ID, position, velocity, mass and life. Award currency only on a collection event; never derive saved resources by recounting particles. Preserve the roles of unusual leaves:

- ordinary leaves collect across a screen edge/collection boundary;
- Obsidian and Benitoite form only when required source leaves overlap;
- Plasma gains angular speed around the player and becomes collectible only after its threshold;
- Water ignores screen-edge collection and fills the selected Harbor container;
- Coal has an expiry/decay deadline;
- Empty/Soul are timer-produced and do not need particles.

The main HUD must show current area, equipped tool, the most relevant 3-5 resources, combo, HP/enemy bars when applicable, automation status and a save/error icon. The Resource Overview supplies the complete ledger.

### Tools, shovels, swords, and trouts

**[WIKI]** The tool roster is:

- blowers: Hands, Small Rake, Large Rake, Leaf Blower, Advanced Leaf Blower, Nuclear Leaf Blower, Airplane Turbine, Leaf-Powered Leaf Blower, Large Paint Roller, Rocket Engine, Lazer, Alien Turbine, Ace of Spades, Blowfish, Graphics Card, Drill, Fan, Compressor, Bellows, Celestial Blower, Hightech Drill, Carpenter's Cup, Holy Grail, Hightech Bellows, Hightech Ace of Spades, and Strange Blower;
- swords: Leaf Sword (turn leaf/seed collection into Mulch) and Borb Sword (turn Borbs into Borb Juice);
- shovels: Shovel, Hightech Shovel, Nuclear Shovel, Soul Shovel, with base delays 6/5/4/3.5 seconds and base dig counts 1/2/3/4;
- trouts: Large, Hightech, Nuclear and Soul Trout, used for slap damage and special bosses.

Tools can be upgraded with the matching spawnable material, generally to level 100 and to 150 after Biotite progression. Every level adds spawn chance and Blower Enemy Damage; level 10 gives a tool-specific milestone and some have level-100 effects. It's Mine controls ownership across lower resets. Save owned/equipped bitsets, level per tool, tool mode/power, shovel cooldown and relevant all-time action totals. [Tools](https://leafblowerrevolution.wiki.gg/wiki/Tools) · [Shovelling](https://leafblowerrevolution.wiki.gg/wiki/Shovelling)

### Auto Leaf Blowers (ALBs)

**[WIKI]** Three ALBs can be bought in each of six early shops, for 18 total. They have run charge, recharge rate, speed and blowing power. Later upgrades give leaf power, current tools, enemy contact damage, Tower access, and collection permissions for fruit, seeds, artifacts, Equipment and Scrolls. Pathing has 12 original modes: Default, clockwise/counterclockwise rotation, ZigZag, Stroke, Sin, Cos, Tan, Log25in, target center, target edges and target player. [ALB](https://leafblowerrevolution.wiki.gg/wiki/ALB)

**[INFERRED]** All 18 logical ALBs should contribute automation, but CE may draw only a smaller representative subset. Save per-ALB path ID, charge, phase/target and enabled flag only if behavior differs per unit; otherwise save aggregate levels and deterministically reconstruct positions. The visual cap must never reduce economic output.

### Fruit, seeds, printers, and converters

- **Fruit [WIKI]:** base fruit yields 500 of its matching leaf; later fruit types need their shop unlock. Fruit chance/value/multiple-spawn and ALB collection are upgradeable. Save only long-lived upgrades/statistics, not every transient fruit. [Drops](https://leafblowerrevolution.wiki.gg/wiki/Drops)
- **Seeds [WIKI]:** Farming Certificate costs 5k Exotic. At base a seed has 1% spawn chance per second, with at most 50 on screen, and grants `seed_level%` of current holdings plus modifiers; level 100 is normally 100%. Buying the next level is most efficient when holdings reach `(next_level) * next_price`. MLC clears seeds; Crunchy Seeds Lite keeps level 1. Offline Seeds adds random eligible seed gains. No seeds exist for Azurite, Niobium, Biotite, Malachite, Hematite, Plasma, Water, Coal, Soul, Quark or Dusk. [Leaf Seeds](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Seeds)
- **Printers [WIKI]:** unlocked for 200 Coins and create eligible leaves per second. Store printer count per leaf, global adder/multiplier, cap, Printer Printer rate and preservation flags. Obsidian/Benitoite and later special leaves follow their documented eligibility rather than assuming every currency can print. [Printers](https://leafblowerrevolution.wiki.gg/wiki/Printers)
- **Converters [WIKI]:** unlocked for 200 Coins and continue offline. Core recipes are 100 Basic -> 1 Gold, then the early chain; 10t Exotic -> 1 Celestial; 100 Void -> 1 Red and 100 of each science color -> 1 next color; 10k Black -> 1 Strange; 500k Strange -> 1 Silver Token; 1k Silver -> 1 Gold Token; static recipes include 5k Borbs -> 1 Cheese, 100m Borbs -> 1 Borb Juice, 500 Borb Juice -> 1 Borb Token, 500 Cheese -> 1 Beer, 100 Plasma -> 20 Electrical Energy, plus Dice conversions. Save enabled flags and fractional cycle progress per recipe. Safe Energy Converters must prevent wasting input against a full cap. [Converters](https://leafblowerrevolution.wiki.gg/wiki/Converters)

### Trading

**[WIKI]** The Trading Certificate costs 100k BLC. The default is two offers, refreshed every five minutes; a manual refresh costs two Cheese. A completed trade also gives one Cheese. Trade Education raises maximum level, Advanced Education raises min and max, and delivery starts at two hours with a two-minute floor. Active deliveries survive Prestige/BLC but reset at MLC/ULC. Bearo can accept/collect offers but does not make Trading work offline. [Trading](https://leafblowerrevolution.wiki.gg/wiki/Trading)

Verified formulas/thresholds:

- `TGM = (1 + challenge_bonus) * (1 + global_bonus) * (1 + scroll_bonus)`; Gems are excluded.
- max Gems from an offer is `floor(trade_level / 5)`, min is `floor(trade_level / 10)`, bounded by Gems Business; the current maximum is 20 at level 100 with all ten Gems Business sources.
- after the 10k daily soft cap, trade Gem maximum drops to two unless other bonuses raise the cap.
- Beer reward tiers change at trade levels 1, 17, 33 and 50.

Save the offer RNG state/seed, input/output/cost/level for each visible offer, refresh deadline, accepted-delivery records, daily Gem total/date, min/max level and automation filters. Re-rolling offers after reload would be exploitable.

### General automation registry

**[WIKI]** Automation is distributed across shops rather than one feature. At minimum include:

- early shop autobuyers: Tree, Fertilizer, Marketing, Nuclear Fuel, ALBs, leaf and flask unlocks;
- BLC: auto-Crunch with threshold/timer, autobuy priority/quantity, converter start, area teleport, ALB pathing, auto-dig support;
- MLC/Gems: seed, Tower, artifact/Autofact, Borbventure, Dice, crafting/alchemy, chest and other system bots;
- pets: Bearo trades, Trouto slaps and other passive role automation;
- late: auto Leafscender and Safe Mode, Harbor job/ship claim/refresh, Journey auto-finish/claim, Mines, Fishing, Banks, Quarkstige/reactor, Shadow auto attack/rest/revive/advance/safe advance;
- v2.29.4 background auto play for Slots and Claw, plus Harbor offline work.

**[INFERRED]** Store every automation toggle, numeric threshold, timer remainder, priority and filter. Offline simulation must call deterministic aggregate-rate code, never run the render/particle loop many thousands of times.

## Entity and inventory systems

### Pets

**[WIKI]** Pets unlock for 1m BLC and normally cost 2m BLC each. Current documented roster and primary roles:

| Pet | Primary role | Pet | Primary role |
| --- | --- | --- | --- |
| Autoblowo | ALB damage | Batto | Shadow Crystal stats |
| Bearo | auto Trading/input reduction | Beeo | Nature Season |
| Borbo | Borbventures | Butterflyo | amplifies pets and Unique Leaves |
| Bunnyo | converters | Camelo | chests/Ancient rewards |
| Catto | enemy rewards | Cheesetor | Cheese/general rewards |
| Cursed Cheese | curses | Crabbo | Blower Enemy Damage |
| Deero | printers | Doggo | combo |
| Ducko | material spawn | Elephanto | Dice drops |
| Fisho | damage/rewards/slap | Flamingoo | Electrical Energy |
| Flocko | artifact spawn | Foxo | BLC |
| Hippo | alchemy | Moleo | Mines |
| Monkeyo | blowing power | Mouseo | Cheese from enemies |
| Owlo | merged leaves | Panthero | Tower skip |
| Penguino | trade refresh/delivery | Piggo | Leaf Counter |
| Raccoono | seeds | Sealo | Leafscensions |
| Sharko | Cards | Snekko | player HP |
| Spider Bro | regeneration/resistance | Squirrelo | Celestial Leaves |
| Toucano | material collection | Trouto | auto slap |
| Witcho | Witch rewards |  |  |

Level 1 costs 10 Leaf Essence; early later levels are roughly `3 * level^1.05` according to the page's table. Level 10 doubles the primary effect. Beyond level 10, entity leveling also contributes Blower Enemy Damage, documented as `100 * level * floor(level / 2)` before other focus modifiers. The maximum active-pet count reaches 15 through multiple unlock sources. Save ownership, level, active order, preset/loadout and total level; activation order matters because the last active pet can be displaced. [Pets](https://leafblowerrevolution.wiki.gg/wiki/Pets)

### Unique Leaves

**[WIKI]** Unlock the menu for 20m BLC, then satisfy each leaf's area/resource/equipment conditions. Current roster: Alchemy, Bone, Borb, Crystal, Electrical Energy, Equipment, Fire, Ghost, Glitter, Heart, Holy, Leafscension, Material, Nuclear, Pet, Rainbow, Relic, Robot, Shard, Tool, Unique Unique, Water and Wood Leaves. Their roles cover brewing, daily Gems, reset rewards, pet/tool/equipment/material levels, artifacts, damage, seeds, printers, trades, shards/relics, energy and Harbor. [Unique Leaves](https://leafblowerrevolution.wiki.gg/wiki/Unique_Leaves)

Levels use Cosmic Essence; level 10 costs 260 total and doubles the core bonus. Beyond level 10 they also add Blower Enemy Damage and random-material production. Save discovered/owned, level, active flag, unlock-condition progress and loadout. `Greedy Uniques` controls simultaneous active count; Butterflyo, Unique Unique Leaf, Scrolls and Gem upgrades amplify effects and must be applied in a consistent modifier order.

### Equipment

**[WIKI]** Fifteen types: ALB Flail, Cheese Boots, Cursed Cheese, Ban Hammer, Leaf Armor, Leaf Helm, Leaf Shield, Lil' Doggo, Medkit, Mini Shovel, BLC Ring, Zoo Ring, Trader Suitcase, Viking Borb and Wizard Hat. Sources are Tower enemies, Pub prizes, Shovelling after discovery and Alchemy. All except Zoo Ring stack by count. Levels run to 150 using Water and later Dark Essence; each level also contributes Blower Enemy Damage, and level 10 provides/doubles a milestone effect. [Equipment](https://leafblowerrevolution.wiki.gg/wiki/Equipment)

Save per type: count, level, discovered bit, locked flag where inventory locking applies, and any generated bonus seed/value (the Cursed Cheese bonus is documented as changing on Prestige). Equipment is one selectable ULC sacrifice family.

### Crafted Leaves

**[WIKI]** Crafting unlocks for 500k BLC; each attempt costs five Cheese. Only active inventory leaves apply buffs; backpack capacity, locking, presets and loadouts are functional requirements. Reroll RNG quality with Beer, craft quality with Shards, and properties/shards with Water Essence. Upgrade with Cheese through lower tiers and Shards at Sacred+; at level 30 ascend up to ten times, resetting to level 1 and rerolling RNG quality. Fuse six lower-tier leaves into the next tier. Dusk craft leaves are fusion-only. [Crafting](https://leafblowerrevolution.wiki.gg/wiki/Crafting)

The documented property formula is:

`effect = type_strength * ((craft_quality + rng_quality) / 20) * ((craft_level + (ascension_level + 1) * 60) / 5 + 1) * property_value * (1 + shard_level * 3) * tier^1.5`

For an unascended leaf, substitute `ascension_level = -1`. One shard therefore gives x4, two x7, and ten x31 on that property. Property families unlock by craft tier:

- early: ALB damage, flat BLC, converter crit, absolute resistance, Nuclear Fuel, additional leaves, enemy damage, combo, per-leaf trade, HP, TGM, BLC%, slap, Scroll duration;
- middle: enemy rewards, flat/% MLC, Gem Leaves, resistance, brew crit, Tower floors, curses, Witch rewards;
- Sacred+: brew multicrit, enemy Shards, Relic damage, Tower skip, Dice battlefield, Energy/Quark storage and generation, damage types, brew multiplier, Soul Forge completion and Quark damage.

Shadow Forge requires ascension 10/level 30 and adds tiers 1-9 with `tier^1.5`. Save every leaf field explicitly: stable item ID, type, both qualities, level, ascension, tier, property IDs/rolled values, shard counts, active/backpack/lock flags and loadout membership. Do not regenerate properties from RNG on load.

### Alchemy

**[WIKI]** Unlock Materials for 250k BLC and Alchemy for 15m BLC. Recipe groups include artifacts, Equipment, random materials, Scrolls, card parts, Cosmic/Earth/Leaf/Water/Dark/Light/Strange/Iridescent/Shadow Essences, Curses, six Relic rarities, Shards, Soul Stones/Particles/Entities/Flasks and Refined Soul Stones. Base brew time is 30 seconds with a one-second floor. Brew crit doubles output; multicrit triples and may cascade; multiplied brewing is a separate multiplier. Ancient progression adds an advanced/automatic cauldron. [Alchemy](https://leafblowerrevolution.wiki.gg/wiki/Alchemy)

Save queue recipe/count, progress, auto-repeat filters, known recipes, crit/multicrit stats and any reserved inputs. Deduct inputs transactionally when an item enters the queue, or store a reservation so an interrupted write cannot duplicate them.

## Collectibles, combat floors, and parallel progression

### Materials, Artifacts, Scrolls, and Chests

**Materials [WIKI].** Unlock for 250k BLC. Spawnable materials are Ash, Copper Bar, Iron Bar, Battery, Bat Wing, Bone, Butterfly, Cloud, Dark Matter, Eyeball, Feather, Goo, Leather, Meteor Rock, Moon Crystal, Moon Dust, Mushroom, Mysterious Plant, Oyster, Pearl, Pumice, Rose, Sand, Scarab, Screw, Soul, Spider Web and Wood. Each has a base 0.5% chance per cycle in its designated area; all can appear at reduced chance in Dark Glade. Materials do not despawn, stop spawning at 50 total objects on screen, and respect per-material storage caps. [Materials](https://leafblowerrevolution.wiki.gg/wiki/Materials)

**Artifacts [WIKI].** Unlock for 50m BLC. Current table: Time Crystal, Compass, Water Seal, Zoo Necklace, Halloween Lantern, Nature Rod, Birthday Cake, Blazing Skull, Enchanted Fruit, Gold Suitcase, Gravity Ball, Leafscension Exploit, Mirror, Orb of BLC, Strange Seed Bag, Vital Violin, Vortex, Wind and Wobbly Wings. Each has a discovery flag, area, base spawn period, expiry, inventory maximum, use behavior, auto-use eligibility and offline eligibility. Key unlock artifacts must not be treated as consumables. [Artifacts](https://leafblowerrevolution.wiki.gg/wiki/Artifacts)

**Scrolls [WIKI].** Crafting, Damage, Dice, Leaf, Material, Mulch, Pet, Printers, Seed, Trading, Trout and Unique Leaves Scrolls provide timed bonuses. Save count and remaining duration independently by type. Duration is affected by Sand/crafting upgrades; using a second scroll must follow the original extend/refresh rule rather than silently replacing the timer. [Scrolls](https://leafblowerrevolution.wiki.gg/wiki/Scrolls)

**Chests [WIKI].** Inner Pyramid clears have 5% base chest chance. Common and Uncommon can appear from floor -1; Rare at -5, Epic at -10 and Legendary at -15. Mulched Chests and Camelo can raise spawn chance; Mulched Luck selects rarity using `random_0_to_100 / (1 + mulch_luck)^1.5`, with the rarest eligible tier taking priority. Chests contain several offline-scaled resources. Save unopened count by rarity and auto-open settings; roll contents only on a committed open transaction. [Chests](https://leafblowerrevolution.wiki.gg/wiki/Chests)

### Leaf Tower, Cursed Pyramid, Soul Crypt, and Leafton Pit

- **Leaf Tower [WIKI]:** costs 100b BLC. Clear 10 enemies per floor, or five with Authority; every tenth floor is a boss. Normal/boss enemies yield Silver/Gold Tokens. Evil Bob on floor 100 unlocks MLC. Floors 101+ produce Gem Leaves; floor 120 unlocks the Moon; floor 321 unlocks Equipment Leaf; floor 500 unlocks Panthero and Crunchy Tower. After floor 200, enemies/bosses randomize. Track current, highest, available maximum, start floor, enemies killed on current floor, skip chance and offline floors. [Leaf Tower](https://leafblowerrevolution.wiki.gg/wiki/The_Leaf_Tower)
- **Cursed Pyramid [WIKI]:** costs 50k MLC. Descend negative floors by purchasing floor access with scaling Cheese, Mulch, Beer and Ancient Leaves, then defeating increasingly durable enemies. Each deeper floor doubles enemy health according to the progression guide. Floor -100 opens Black Leaf Hole. Track purchased floor depth, current/highest depth, per-floor clears, taxi/auto state and milestone claims. [Cursed Pyramid](https://leafblowerrevolution.wiki.gg/wiki/The_Cursed_Pyramid) · [Pyramid progression](https://leafblowerrevolution.wiki.gg/wiki/Progression/Pyramid)
- **Soul Crypt [WIKI]:** Soul Temple buys floors using Soul Stones and Soul Keys. Floor 20 opens Hollow/Soul Mirage; floor 100 opens Fabric Warden. Floors reward Soul resources and milestones. Persist purchased/current/highest floor, keys/particles, floor bonus selections, timers and claims. [Soul Crypt](https://leafblowerrevolution.wiki.gg/wiki/The_Soul_Crypt)
- **Leafton Pit [WIKI]:** unlock from Structure Shop. It is another floor/kill track whose Quarklings, rewards and milestones feed Quantum Blobs, Cards and Quark progression. Persist floor, kill counters, reward claims and automation. [Leafton Pit](https://leafblowerrevolution.wiki.gg/wiki/The_Leafton_Pit)

All four screens need floor selector, current/highest/maximum, enemy requirement, expected rewards, milestones and leave/auto controls. The shared floor engine should use data-defined sign/direction, health curve, enemy roster, boss cadence, costs and reset rule rather than four separate hard-coded loops.

### Cards

**[WIKI]** Unlock from MLC Shop for 5k. Every eligible enemy has cards in Common, Uncommon, Rare, Epic, Mythical and Legendary tiers. Cards supply global and enemy-specific bonuses. Base cap is ten per enemy/type/rarity; packs and direct drops add cards, Card Parts support crafting, and excess cards can be salvaged. Ten cards plus Card Parts/Shards ascend a card; repeated ascensions lead to Transcension, which awards TCP for a permanent shop. Every 30 transcensions in a rarity adds cap. Banks later generate boss cards. [Cards](https://leafblowerrevolution.wiki.gg/wiki/Cards)

Save a dense count matrix keyed by enemy and rarity, plus ascension/transcension, cap modifiers, Card Parts, packs by rarity, TCP/shop levels, auto-open/salvage filters, discoveries and lock state. Cards are an optional ULC sacrifice, but Card cap and TCP state persist.

### Borbventures

**[WIKI]** Unlock from MLC Shop for 5k. A default adventure lasts five minutes; refresh is 30 minutes or 50 Borb Juice. Select one or two roster Borbs; success depends on adventure and borb levels. Resources include Borb Juice/Ascension Juice/Tokens, Ascension and Borb Runes, Borbcypher and later Dice/Power/Event/Quark rewards. Special borbs are Borb, Borbiana Jones, Builder, Cool, Ghost, Ninja, Teacher and Viking. Borbs have level, rarity and ascension. [Borbventures](https://leafblowerrevolution.wiki.gg/wiki/Borbventures)

Item types are Cape, Ring, Socks, Trout, Ribbon, Glasses, Backpack, BLC Coin, MLC Coin, Magic Leaf, Pirate Hat, Heat Shield, Leaf Blower, Cursed Cheese and Death Book in six rarities, plus consumable Item Boxes, Recruits, Time Candy and XP Candy. Save roster entries, chosen party, every active adventure/deadline/reward seed, refresh deadline, inventory counts/rarities/locks, packs, autocraft filters and all shop upgrades. Borbventures are one ULC sacrifice family.

### Dice

**[WIKI]** Dicey Meadows opens Dice. Dice items have a type and one of six rarities; examples/required effect families include Alchemy, Battle, BLC, Blower, Borb, Cursed, Energy, Leaf, Leaf Counter, MLC, Trade, Trout, Witch and later-system dice. A normal roll costs Dice Points. The bonus uses the highest recorded average of the last five rolls. Enhancements add die count/sides. A Power Roll spends Power Dice Points and a duplicate item, doubles rolled dice, and cannot consume the last copy. [Dice](https://leafblowerrevolution.wiki.gg/wiki/Dice)

The Dice Battlefield fights leaf-type enemies in Normal/Champion/Elite/Alpha difficulties, unlocks permanent leaf-specific bonuses, and can drop dice. Rarity gates begin at enemy levels 1/15/36/71/106/129. Cursed Dice is a push-your-luck game: save accumulated rolls for permanent thresholds, but rolling six loses the current run; critical chance/multiplier modify rolls. Save each die's type/rarity/count, sides/count enhancements, five-roll ring buffer, best average, locks/bag placement, battlefield enemy/difficulty/kill/bonus state, Cursed Dice current/total/highest/thresholds, RNG and automation. Dice is an optional ULC sacrifice.

### Death Book

**[WIKI]** Unlock at Terror Graveyard for 100k Shards, 500 Light Essence, 500 Dark Essence, 100 Strange Essence, 10 Iridescent Essence and 300 Ascension Juice. It passively records boss kills across areas. Each boss begins with a ten-hour cycle; interval upgrades divide by 1.75 down to about 3m54s, and count upgrades add kills per cycle. Death Book kills feed boss drops, Cards/Banks and Soul resources. Save unlock, per-boss enabled/eligible status, interval/count upgrade, fractional timer and lifetime simulated kills. [Death Book](https://leafblowerrevolution.wiki.gg/wiki/Death_Book)

### Mines

**[WIKI]** Coal Shop unlock costs 5k Coal. Coal veins appear every 60 seconds with level/rarity and produce Coal Bars; Fuel unlocks at vein level 5, Coal Diamonds at 10 and Shiny Coal Diamonds at 16. Transmutations include 100 Bars -> 1 Diamond, 2,500 Diamonds -> 5 Shiny, 50 Diamonds -> 150 Fuel, and 500 Diamonds -> 1 Time Sphere; reverse transmutation is 50% efficient. [The Mines](https://leafblowerrevolution.wiki.gg/wiki/The_Mines)

Mine searches take ten minutes and produce a mine with six caves, level and Common-Legendary quality. Caves consume Bars/time and yield resources/items. Drill Mines produces periodic resources while increasing depletion by 5% up to 99%. Depth Drill supplies milestone bonuses; Mine item bonuses scale by `1 + sqrt(depth) / 5000`. Save current vein and spawn timer, mine list/caves/locks/drill/depletion/reward seeds, all mine item stacks/rarity, transmutation state, Depth and milestones. Mines/inventory can be sacrificed at ULC, while shop/unlocks/depth remain.

### Fishing

**[WIKI]** Unlock Fish Pond for 100 Iridescent Essence. Start with one Common untyped spot and one rod slot. Search charges regenerate every 15 minutes and discover up to four spots; a new spot has a 10% chance of a type. Assign rods, cast, then reel: catch chance reaches 100% after 58 seconds with a nonlinear approach; Lure skips up to eight seconds. A catch yields one fish or `1 + 10 * (level - 1)` trash, XP equal to fish level, and `ceil(length * rarity * 2) * credit_multiplier` Fish Credits with rarity minimum. [Fishing](https://leafblowerrevolution.wiki.gg/wiki/Fishing)

Fish have minimum pond rarity, best length/count and a persistent passive bonus: `base_value * max_length^0.25 * rarity^0.875`. Bait costs/farms improve rarity/minimum length. Rods have type, rarity, level and Tide/Advanced Tide Crystal ascension/transcension. Fishing Tournament gives 15 actions; Tournament rod base value uses `tip + sqrt(fish_caught * 0.1)`, and tournament value is `sqrt(value) * tournament_multiplier`. Journey has 60 stages; completion bonuses scale with `sqrt(completions)` and XP scales by `1.1^completions` according to the page.

Save spots (type/rarity/slots/search), rods/items/locks, assigned rod and cast deadline per spot, bait/farms, fish codex counts and maximum lengths, level/XP/credits/crystals, tournament state/reward seed and Journey. Fishing is always retained through ULC, though the area must be repurchased.

### Industrial Harbor

**[OFFICIAL/WIKI]** Unlock for 1,000 Plasma Leaves. Two jobs start available. Water Leaves must physically enter a container, then be assigned until a job is 100% full before dispatch. Jobs grant Water Crystals/XP; ships use Fuel and have a two-minute base route after the v2.29.1 correction. Divers/ships/items and job automation expand through the Harbor Shop. Harbor now progresses offline. [Official v2.29 announcements](https://steamcommunity.com/app/1468260/announcements/?l=english) · [Harbor](https://leafblowerrevolution.wiki.gg/wiki/Harbor)

Harbor items have Common-Legendary rarity, a stack cap of 99 and square-root count scaling. Current effect families include Battle Die, Blossom, Blower, Borb, Candle, Capacitor, Cauldron, Cursed Die, Diver, Engineer, Magic Leaf, Relic, Trout and Witch, among others in the page table. Journey has 60 stages; a completion gives broad items/resources, first completion adds a pet slot/daily quest, and persistent Blower Enemy Damage/Leaf Value bonuses scale with `sqrt(completions)` while XP scales by `1.1^completions`.

Save unassigned/contained Water Leaves, job offers/fill/dispatched deadlines/reward seeds, Water Crystals, Harbor XP/level, ships/fuel/routes, divers, item stacks/rarity/locks/overflow, shop, automation and Journey. Harbor is always retained through ULC, except that its area/unlock must be repurchased.

### Banks

**[WIKI]** Banks passively acquire boss Cards. Unlock galaxies individually, deposit Soul Particles in each bank, and consume them over time for cards belonging to that galaxy. Shop upgrades alter storage, auto-deposit cadence, drop cost/duration, rarity/fallback/count and offline processing. Refined Soul Stones provide a boost with separate storage and auto-deposit. [Banks](https://leafblowerrevolution.wiki.gg/wiki/Banks)

Save per galaxy: unlock, Soul Particle storage, Refined Soul Stone boost storage/level, all 11 shop levels/toggles, card-generation progress, auto-deposit progress, selected caps and RNG. A bank must not generate boss cards for a galaxy/boss not yet eligible.

### Soul Forge

**[WIKI]** Defeating Soul Mirage unlocks passive Empty Soul Leaves. At 50 they convert to Soul Leaves; upgrades lower threshold to ten and increase production, conversion/completion count, Crypt floors and damage. Soul Leaves feed the shop and Soul-tier crafting. [Soul Forge](https://leafblowerrevolution.wiki.gg/wiki/Soul_Forge)

Save Empty and Soul counts, fractional production timer, conversion threshold/progress, completion count, shop and offline history. Bulk offline evaluation should compute whole conversion batches plus remainder exactly.

### Relics, Leafscensions, and Mirrors

- **Relics [WIKI]:** unlock in Sacred Shop; bosses/Alchemy supply six rarity tiers by leaf type. A relic's bonus is active only when the matching Leafscension level exists. Base cap is ten, Electrical Energy can add ten, and Master Relics can add 30. Non-spawning leaf types receive x5 damage. Relic/Power Fragments upgrade normal/Master Relics. Save count/level per type and rarity, caps, fragments and Master Shop. Relics are an optional ULC sacrifice, but Master upgrades remain. [Relics](https://leafblowerrevolution.wiki.gg/wiki/Relics)
- **Leafscensions [WIKI]:** level 1 consumes `1e300` of a matching eligible leaf; levels 2-6 consume 30 of the previous tier before reductions, down to a floor of one. Current system supports 24 eligible leaf types, automation and Safe Mode that reserves one input leaf. Save count by leaf/tier, active jobs/deadlines, reserve mode and unlocks. Leafscensions are an optional ULC sacrifice. [Leafscensions](https://leafblowerrevolution.wiki.gg/wiki/Leafscensions)
- **Mirrors [WIKI]:** Mirror artifact appears in Energy Singularity after Super-Terror. Place one per area; every minute it generates at the area's efficiency, base 10%. A normal free save can reach three active mirrors; paid supporter slots should be replaced with earnable CE equivalents if functional parity requires six. Unique mirror resources include Dice Points in Dicey Meadows, Energy in Spark/Plasma, Coal Bars/Coal in Coal Mine, Soul resources in Soul Crypt and plant seeds in Vial of Life. Save placement, efficiency, timers and active cap. [Mirrors](https://leafblowerrevolution.wiki.gg/wiki/Mirrors)

### Quark Reactor and Structures

**[WIKI]** Reactor has six Quark colors (Basic, Gold, Strange, Plasma, Soul and Cursed). Size/speed/focus/efficiency govern generation. Quarkstige converts a full color set into Quark Leaves/Quantum Blob. A Quantum Blob increases Quark damage and additional-Quark chance. [Quark Reactor](https://leafblowerrevolution.wiki.gg/wiki/Quark_Reactor)

The Structure chain is:

```text
10,000 Quark Leaves --Funnel--> 1 Quark Blob
Quark Blob -> passive Quark Energy (+100% speed per blob)
Quark Energy --Structurize 1:1--> Structures
Structures --Quantify--> Quantum Blobs
```

Save six Quark balances, Quark Leaves, all blob types, energy/structure balances and partial timers, Quarkstige current/all-time counts, reactor/structure shops, focused color/auto rules and Leafton unlock. ULC keeps the Reactor/shop but removes Quarks, Quantum Blobs and Structures unless a late preservation rule explicitly says otherwise.

### Shadow Crystal, Pit, and Tree

**[WIKI]** Shadow Crystal is turn-based: Attack or Rest, with auto attack/rest/revive/advance plus safe attack/advance. Chance that player acts first is `player_speed / (player_speed + crystal_speed)`. Enemy level formulas are:

- HP: banker's-round `([5 + (3 * (level - 1))^1.7 - flat_reduction] * (1 - 0.01 * lighter))`;
- min damage: `round(1 + (level - 1)^1.5)`; max is `1.5 * min`;
- speed: `round(1 + 1.5 * (level - 1))`;
- resistance: `max(1, 1 + floor(((level - 1) / 10)^1.6) - anti_resistance)`;
- Shadow Essence: `round((round(1 + (level - 1)^1.2) + flat) * (1 + 0.01 * multiplier))`.

Shadow Pit permanently converts resources to strength: 1m Dusk contributes total `sqrt(amount)`, 100 Shadow Essence contributes `sqrt(10 * amount)`, and 25 Shadow Crystals contributes `sqrt(1000 * amount)`. Ascension costs `1 + ascension_count` Light Rods and needs `50 + round_bankers(25 * ascension_count^1.2)` strength. Stat conversions include BED `strength^2`, flat Shadow Damage `floor(strength)`, damage% `sqrt(strength/500)`, HP `floor(strength/10)`, HP% `sqrt(strength/750)`, rest HP `floor(strength/5)`, rest% `sqrt(strength/250)`, speed `floor((strength/5)^0.25)`, speed% `sqrt(strength/750)`, stamina `floor(strength/300)` and stamina% `sqrt(strength/750)`. [Shadow Crystal](https://leafblowerrevolution.wiki.gg/wiki/Shadow_Crystal)

Transmutation is 50 Shadow Essence -> 1 Shadow Crystal and 100 Shadow Crystals -> 1 Light Rod; reverse is 50% efficient. Shadow Tree has three branches: ULC sacrifice/preservation on the left, Shadow combat in the middle, and general bonuses on the right. The preservation branch includes fewer sacrifices; retained/reset counts for Cards, Borbventures, Equipment, Dice, Leafscensions, Materials, Mines, Relics and Quarkstiges; permanent Alchemy; and pet/unique/tool/equipment level rules.

Save current/highest/selected crystal level, HP/stamina, ascension, wins/losses, action/auto flags, Shadow resources/transmutation, Pit deposited totals/strength, every Tree node, boss kills and exact RNG. Because these systems survive ULC, their records belong in the highest reset domain.

## Cheese Pub, House, and minigames

### Cheese Pub

**[WIKI]** The Pub costs 500 Borbs and continues ordinary offline rewards. Required machines/features:

- **Borb Claw:** costs three Cheese, uses a skill/timing input, and awards chests, 100 Borbs, 20 Cheese, leaves or Curses; Mulch upgrades alter claw size, prize count and curses.
- **Slots:** costs three Cheese; three matching categories award that category, with a Mulch pity counter starting at 50 and Zoo Necklace guaranteed after 50 spins.
- **Curse Machine:** free golf-like direction/strength minigame; levels award achievements/Gems.
- **Leaf Counter:** free presses; each 10/100/1,000/10,000 counts adds 0.1%/0.5%/1%/5% blower damage, cumulatively. Mulch/Dice automate presses.
- **Booster Game:** free, one-minute cooldown; distance grants Milk, which buys upgrades/boosters and modifies MLC/other formulas.
- **Bartender:** dialog plus material quests for Beer or Cheese.
- **Event machines:** Anniversary candle game and any event-specific persistent stats.

v2.29.4 allows Slots and Claw auto-passive play. Save pity/spin/claw counts, Counter, Booster distance/Milk/shop/cooldown, quest offers/progress/deadlines, Curse-machine level records and event-game state. [The Cheese Pub](https://leafblowerrevolution.wiki.gg/wiki/The_Cheese_Pub)

### House

**[WIKI]** The House costs 300 Cheese. It displays a grid of discovered furniture/collectibles; many pieces give permanent bonuses (for example the Desk raises converter critical value, Dumbbell reduces enemy damage, leaf furniture gives +25% matching leaf, and a painting improves Cursed Cheese). Save owned/placed bits and selected layout if arrangement is editable. All functional bonuses must apply even if CE renders a compact collection grid rather than a walkable room. [House](https://leafblowerrevolution.wiki.gg/wiki/House)

## Challenges, achievements, rewards, and events

### Challenges

**[WIKI]** Current documented challenge roster:

1. All Manual
2. Bingo
3. Bingo++
4. Claw%
5. Combno
6. Curse Game%
7. Curse Lite%
8. F2P
9. Fishing
10. Hands Only
11. Harbor Hustle
12. Infertile Grounds
13. Obsidian%
14. Petless
15. Printer Maintenance
16. Quarantine
17. Speedblower Revolution
18. Speedblower BLC%
19. Speedblower BLC% Online
20. Speedblower BLC% Online Combo
21. Speedblower MLC%
22. Speedblower Prestige%
23. Speedblower Prestige% Online
24. Speedblower Prestige% Online Combo
25. Trader's Crunch
26. World of Leafcraft

Restrictions cover manual-only play, randomized Bingo goals/seed, no combo/pets/printers/seeds/areas, limited tools, online-only progress and rapid reset targets. Rewards are permanent multipliers/unlocks; repeat completions grant diminishing medals. The current page documents 65 challenge furniture pieces, each +25% leaves (1,625% total), costing 130 medals. Harbor Hustle is current v2.29 scope. [Challenges](https://leafblowerrevolution.wiki.gg/wiki/Challenges)

Save the main game and active challenge as separate logical states with independent timestamps, RNG, options and offline accounting. Do not let a challenge reset or option change mutate the main state; v2.29.7 specifically fixed challenge options overwriting main options. Persist challenge ID, seed, attempt start time, restrictions, generated goals, progress, completion times/count, reward/medal claims and active-state generation. Leaving/abandoning needs confirmation and must not award completion.

### Achievements and milestones

**[WIKI]** The current Achievements page reports 301 achievement families and 2,190 subgoals. Rank thresholds are 1, 10, 40, 100, 200 and 280 achievements, with increasing Gem rewards. Categories cover each leaf/resource, general progress, Tools/Pets/Unique Leaves/Equipment levels, resets, time, systems and social/external actions. [Achievements](https://leafblowerrevolution.wiki.gg/wiki/Achievements)

**[INFERRED]** Encode achievements as data-driven predicates over saved statistics and current state. Preserve all gameplay-achievement roles; replace PC-only actions such as opening web/community links, cloud/account/mobile/supporter actions or platform achievements with calculator-native discovery/control/stat goals, and document the substitution. Save claim/completion bitsets and timestamps; never infer claimed Gem rewards solely from current progress after a content update.

**[WIKI]** Tower, Pyramid, Soul Crypt and Leafton Pit have claimable Milestones with permanent bonuses. Tower has 50 milestones as of v2.29.7. Save eligibility and claimed status separately, because a reset can lower current floor while a previously reached milestone remains claimable/owned. [Milestones](https://leafblowerrevolution.wiki.gg/wiki/Milestones)

### Daily rewards, quests, bounty, and offline progress

**[WIKI]** Daily reward resets at midnight UTC and gives five base Gems, with modifiers, plus Materials and event/Card rewards when enabled. Five Daily Quests award ten Gems each; Gem upgrades can add two slots, and first completions of Fishing, Harbor and Anniversary Journeys add one each. Completing the daily set advances the v2.29.4 Bounty system. Quest types include spending time in an area, blowing leaves, gathering resources, using pets/automation and gaining curses. [Daily Rewards](https://leafblowerrevolution.wiki.gg/wiki/Daily_Rewards)

Save the UTC day ID, claimed flag, generated quest IDs/parameters/progress/claimed flags, rerolls, Bounty rank/progress and daily trade-Gem total. Generate the day's quests once from a saved seed; do not regenerate after relaunch. If RTC time moves backwards, do not issue another reward until the stored day is reached. If it jumps far forward, grant at most the configured current-day reward rather than replaying unlimited missed daily claims.

**[WIKI]** Offline systems include leaves based on recorded maximum per second, enemies, non-destructive offline Prestige/BLC/MLC, seeds, artifacts, Tower floors, converters, Death Book, Soul Forge, Mines/Fishing/Harbor and other explicitly unlocked mechanics. Each subsystem has its own eligibility and cap; offline reset currency is a percentage of the historical highest reset reward and does not actually reset the active run. Harbor has worked offline since v2.29.4. [Offline Rewards](https://leafblowerrevolution.wiki.gg/wiki/Offline_Rewards) · [Official announcements](https://steamcommunity.com/app/1468260/announcements/?l=english)

**[INFERRED offline contract]:**

1. Load and validate a save, read saved UTC/monotonic metadata, clamp negative elapsed to zero and cap excessive elapsed according to product policy.
2. Snapshot all rates/caps/unlocks from the loaded state.
3. Compute each subsystem in dependency order (converters before capped dependent gains where required; Soul Empty->Soul batches exactly; timed jobs/adventures in chronological or closed-form batches).
4. Produce one inspectable reward report; never mutate render particles.
5. Commit the post-offline state to the alternate save generation before marking the reward claimed.
6. Record raw elapsed, credited elapsed and per-system reward for Statistics/debug recovery.

### Events, seasons, community leaves, and boosters

- **Cursed Halloween [WIKI]:** annual October 24-November 1 or a four-hour Lantern activation. Cursed Cheese only takes ALB/trout contact damage. It yields Borb O' Lanterns, Curses and possible Leafscensions, with its own shop/milestones. [Cursed Halloween](https://leafblowerrevolution.wiki.gg/wiki/Cursed_Halloween)
- **Nature Season [WIKI]:** annual May 1-August 1 or a Nature Rod activation. Includes Farm Field, plants/seeds, Vial of Life, flowers/butterflies, Doomed Tree waves, clovers, Nature Gems/Magic Mulch, shop/pass/milestones and a Journey-like long track. [Nature Season](https://leafblowerrevolution.wiki.gg/wiki/Nature_Season)
- **Anniversary [OFFICIAL]:** December content added in v2.29.0: Birthday Cake, Party Tokens/booster, Blow Out the Candles Pub game and a Journey. [v2.29.0 announcement](https://steamcommunity.com/app/1468260/announcements/?l=english)
- **Boosters [WIKI]:** Milk/Booster Game, Water Crystal, Party Token and other temporary boosts need resource, level, duration/cooldown and active multiplier state. Some formulas (including MLC) explicitly consume a Booster Game multiplier.
- **Seasons/Community Leaves [WIKI]:** seasonal rewards and Community Leaves are permanent account-like unlocks in the original. A self-contained CE edition needs deterministic local earning paths and must not depend on online account/server validation.

Save event unlocks, local-calendar activation windows, artifact-activated expiry, resources, shops, milestone/quest/Journey state, minigame records and booster timers. If a calendar event expires mid-session, save before transitioning out and preserve earned permanent bonuses.

## Consolidated documented formula registry

This registry is the minimum host-test set. Each formula should have boundary, monotonicity, serialization and reset tests.

| System | Documented expression/behavior | Rounding/caveat |
| --- | --- | --- |
| Repeatable shop cost | `base * growth^current_level` | Page-specific ceil/round and discount class; use underlying values. |
| Seed pickup | `current_leaf_amount * seed_level%`, plus modifiers | Cap/storage and level-100 behavior; percentage applies to current holdings. |
| Trade Global Multiplier | `(1+challenge) * (1+global) * (1+scroll)` | Excludes Gems. |
| Trade Gems | max `floor(level/5)`, min `floor(level/10)` | Current max 20 with Gems Business; daily soft-cap rule. |
| MLC base | `floor(highest_boss_floor/10 - 9)^4` | Then BLC log multiplier, crafted flat and external multipliers; min 10. |
| MLC current-BLC factor | `1 + floor(log10(current_BLC))` | Define safe behavior at zero. |
| Craft property | `type * (craftQ+rngQ)/20 * ((level+(asc+1)*60)/5+1) * prop * (1+3*shards) * tier^1.5` | Treat asc=0 as -1 for unascended formula per page wording. |
| Chest rarity roll | `random(0,100) / (1+mulched_luck)^1.5` | Rarest eligible threshold wins. |
| Quarkstige reward | `250,000 * (n+1)` Quark Leaves | Cost starts 50 each color and rises 25 per consecutive reset. |
| Mine item scale | `1 + sqrt(depth)/5000` | Multiplies rarity/item base bonus. |
| Fish passive | `base * max_length^0.25 * rarity^0.875` | Per fish species. |
| Fish Credits | `ceil(length * rarity * 2) * multiplier` | Minimum equals rarity. |
| Tournament rod/value | `tip + sqrt(caught*0.1)`; `sqrt(value)*tournament_mult` | Tournament has 15 actions. |
| Fishing/Harbor Journey | permanent bonus ~ `sqrt(completions)`; XP `1.1^completions` | Verify each reward's coefficient from its page table. |
| ULC family scores | formulas listed under ULC above | Final aggregation/order remains **[OPEN]**. |
| Shadow first turn | `player_speed/(player_speed+enemy_speed)` | Handle both zero safely. |
| Shadow enemy stats | level-power formulas listed above | HP uses round-half-even according to wiki. |
| Shadow Pit | Dusk `sqrt(n)`, Essence `sqrt(10n)`, Crystals `sqrt(1000n)` | Deposits are permanent and resource amounts are consumed. |
| Leaf Counter damage | cumulative +0.1/+0.5/+1/+5% for each 10/100/1k/10k counts | All thresholds stack. |

**[OPEN]** Exact base Prestige reward, full BLC aggregation, general damage/slap formula order, leaf-field physics, trade-offer generation, several randomized loot tables, ULC final aggregation, and some late shop caps/rounding are not reliably specified in the public pages. These must be verified against current gameplay or deliberately rebalanced and labeled as demake behavior. Do not invent a value and call it exact parity.

## Calculator-native UI requirements

### Required screen map

The system inventory implies these screens or reusable screen classes:

1. Title/load/recovery/profile and new-game confirmation.
2. Main leaf field, enemy overlay and pause/quick-actions.
3. Resource overview with category filters and rates/caps.
4. Area/galaxy/favorites/portal list and floor selectors.
5. Tool list/equip/upgrade and ALB/pathing/automation.
6. Generic shop view for leaf/flask/reset/special shops.
7. Printers, converters, seeds and Trading.
8. Reset preview/confirmation for Prestige/BLC/MLC/ULC/Quarkstige.
9. Pets, Unique Leaves, Equipment and loadouts.
10. Crafted Leaves/backpack/presets, Alchemy queue and Materials.
11. Artifacts, Scrolls, Chests and drop/codex screens.
12. Tower/Pyramid/Crypt/Pit combat, rewards and milestones.
13. Cards/TCP, Borbventures and Dice submenus.
14. Relics/Leafscensions/Mirrors, Energy, Death Book, Mines and Banks.
15. Fishing and Harbor multi-page control panels.
16. Soul Forge, Quark Reactor/Structures and Shadow Crystal/Pit/Tree.
17. Pub machine selector/minigames/quests and House collection.
18. Challenges, Achievements, Milestones, Daily/Bounty and Events.
19. Statistics, settings, controls, credits/licenses and save diagnostics.

### Interaction contract

**[INFERRED]** A 320x240 layout should use a 16-20 px header, 16-20 px footer/hints, and a scrollable content body. Lists should show 7-10 rows with stable focus, icon/color, short name, current level/count and next cost. A side/detail panel may replace the list on demand rather than shrinking text. Every page needs a visible title, focus rectangle, scroll position, back path and button hints.

Recommended semantic controls, to be finalized consistently with the implementation:

- arrow keys: move player in field; move focus/adjust selector in menus;
- `2nd`: primary action, hold blower, confirm, buy one/use;
- `Alpha`: secondary action, inspect/buy max/context menu;
- `Clear`: back/cancel; from gameplay opens pause rather than exiting immediately;
- `Mode`: main navigation hub;
- `Graph/Trace/Zoom/Window/Y=` or number keys: consistent quick tabs only after shown in the footer;
- `Del`: destructive action only behind a labeled confirmation.

Reset dialogs must display: currency earned, major categories cleared, preservation upgrades applied, selected ULC sacrifices, and `2nd`-then-release-then-`2nd` confirmation. Hard reset needs typed/key-sequence confirmation distinct from normal resets. Inventory salvage, fuse, transmute and event abandonment also need confirmations, with a session-only skip option where safe.

### System-specific UI state

Most UI position should be transient, but save user-facing configuration that changes behavior: resource favorites, area favorites, shop autobuy priority/count, loadouts/presets, inventory locks, converter toggles, trade filters, automation thresholds, selected Harbor job/container, selected fishing spot/rod, Mirror placement, Shadow safe modes and accessibility settings. Reconstruct scroll positions after load only if space permits; they are never progression data.

## Save-data requirements

### Save header and transaction model

**[INFERRED, required by the user brief]** Use two alternating AppVar generations. Each complete save needs:

- magic, schema version, content-data version/build ID and endian/format flags;
- monotonically increasing generation number;
- payload length and CRC-32/checksum over header-critical fields and payload;
- last valid UTC timestamp, credited-offline timestamp and clock-rollback flag;
- active profile/challenge mode and reset-transaction marker;
- RNG state for economy plus independently seeded daily/challenge/minigame streams;
- optional compressed-section directory so one corrupt optional section can be diagnosed without trusting invalid offsets.

Write the inactive generation, close it, reopen and verify length/checksum/schema, then mark/select it as newest. Never overwrite the only validated generation. On load choose the newest fully valid copy, fall back to the other with a visible recovery message, validate ranges/IDs, clamp non-negative resources and discard impossible transient timers. Save immediately after resets, offline grants, inventory-consuming transactions, challenge transition and clean exit.

### Persistent section inventory

| Save section | Required fields | Reset ownership |
| --- | --- | --- |
| Core | player position/HP, play time, current area/tool, settings, tutorial, global statistics, RNG | permanent except transient field objects |
| Resources | every leaf/flask/reset/secondary/event currency, caps, historical max/rate | tagged per reset domain |
| Shops | level per content-defined upgrade, unlock and bot configuration | each upgrade carries reset domain/preservation predicate |
| Areas/floors | unlock/favorite, current/highest/max/start floors, current enemy/kill progress, milestones | conditional MLC/ULC; milestones permanent |
| Field/automation | combo, ALB levels/modes, converter/seed/printer/auto timers, thresholds/priorities | mixed; reconstruct particles |
| Entities | Tools/Pets/Uniques/Equipment ownership, levels, active/loadouts, locks | mixed/ULC preservation |
| Craft/alchemy | complete crafted-item records, backpack/loadouts, queue/reservations, recipes | craft ULC family; recipes/shop rules vary |
| Drops/collectibles | seeds, artifacts timers/counts/discovery, scroll timers, chests, Materials/Essences/Shards | mixed; Materials ULC family |
| Cards | count/ascension/transcension matrices, packs/parts/TCP/caps/filters | Cards ULC family; cap/TCP permanent |
| Borbventures | roster, adventures/deadlines/seeds, inventory/packs/currencies/filters | Borbventure ULC family |
| Dice | bag/roll histories, Battlefield, Cursed Dice, currencies/autos | Dice ULC family |
| Energy/relic | Energy, Mirrors, Relics/Master/Fragments, Leafscensions/jobs | Relic and Leafscension ULC families; selected permanent fields |
| Mines | veins, mine/cave/drill/depletion, items, depth, transmutation/autos | Mine ULC family; shop/unlocks/depth permanent |
| Fishing | spots/rods/bait/fish codex/tournament/Journey/XP | always ULC-permanent |
| Harbor | Water/job/container/ship/fuel/item/Journey/XP/autos | always ULC-permanent |
| Souls/Banks | Crypt, keys/particles/stones, Forge timers, per-galaxy Banks | mostly ULC-cleared with documented exceptions |
| Quark | reactor colors/leaves/blobs/energy/structures/Quarkstiges/shops | Reactor shop permanent; balances and chosen sacrifice conditional |
| ULC/Shadow | ULC totals/shop/sacrifice history; Dusk Shop, Crystal/Pit/Tree and bosses | highest/permanent domain |
| Rewards | achievements, challenges/medals, daily/quests/bounty, events/seasons/community, House/Pub | permanent or event-defined |
| Audit | last reset receipts, last offline receipt, recovery count, migration history | permanent diagnostic, bounded ring buffer |

### Reset implementation requirement

Do not write four hand-maintained lists in four functions. Every persistent field/content record must declare a reset domain plus preservation predicates. The reset preview and reset execution must enumerate the same generated operation list. Unit tests should snapshot representative saves before/after every combination of Crunchy/Stable/Shadow preservation and compare every section, including active trades, seed level 1, menu re-unlocks, artifact discoveries, Fishing/Harbor, Quark Reactor exclusions and selected ULC sacrifices.

### Validation and migration

- reject unknown IDs outside content table bounds; preserve unknown future TLV sections when practical;
- validate large numbers as normalized, non-negative and below the defined exponent cap;
- clamp levels to current maxima only after recording a migration warning; never reinterpret one item ID as another;
- validate item property IDs against item type/tier, rarity ranges, inventory capacity and duplicate stable IDs;
- validate deadlines against saved timestamp and maximum credible durations;
- validate mutually exclusive flags (active challenge/main, one equipped tool, inventory vs backpack);
- migrations must be version-to-version pure functions with host fixtures, not ad hoc edits during load;
- if both copies fail, offer diagnostic/new game and do not silently overwrite either corrupt AppVar until the user confirms.

## Current-system completeness checklist

Before the content enum/schema is frozen, ensure it has independent IDs/records for all of these—not merely a generic menu label:

- 37 named leaf currencies when the seven Gem Leaves, two Dice leaves, Water and Empty/Soul are separate;
- seven Flask resources/shops, four global reset currencies/shops, Quarkstige and the three late Shadow resources;
- 73 non-event area records across Leaf Galaxy, Sacred Nebula, Energy Belt, Fire Fields, Soul Realm, Quark Ambit and Umbral Cluster, plus five seasonal/event areas (78 current area-table rows total);
- Tools (blowers/swords/shovels/trouts), 18 logical ALBs, 37 current documented pets, 23 Unique Leaves and 15 Equipment types;
- crafted item type/quality/property/shard/ascension/tier records rather than only aggregate Crafting levels;
- Card matrix, Borbventure roster/items, Dice bag/battlefield/Cursed Dice, Relics/Leafscensions/Mirrors;
- Death Book, Mines/Depth Drill, Fishing/Tournament/Journey, Harbor jobs/ships/items/Journey, per-galaxy Banks, Soul Forge, Quark Reactor/Structures/Leafton and Shadow Crystal/Pit/Tree;
- Pub machines, House furniture, Challenges, Achievements/subgoals, floor milestones, Daily/Bounty, offline systems and three current event families.

## Known uncertainties and validation queue

Priority PC-build observations before any claim of exact parity:

1. Prestige base reward and its leaf aggregation/rounding.
2. BLC flat-versus-percent modifier ordering and rounding.
3. Final ULC score aggregation across chosen sacrifice terms.
4. Full damage, slap, damage-type, critical, resistance and enemy-reward ordering.
5. Leaf force/mass/merge/Plasma thresholds and exact combo decay.
6. Trade offer generation, caps and RNG persistence.
7. Complete per-shop row/cap audit for late leaf, Gem, Mulch, event and system shops.
8. Exact ULC reset result for each Shadow Tree preservation combination, especially Tools/entity levels, Quark progression and artifacts.
9. Offline ordering/caps for every timed system when several job cycles finish in one absence.
10. Current item/fish/Harbor/Dice/Mine codex tables and all house furniture effects.
11. Challenge-specific restrictions, seeds, goal generation and offline rules.
12. Event behavior outside calendar windows and locally activated artifact windows.

The wiki can be edited after the public build and several pages explicitly contain WIP notes. Freeze a dated content manifest, include its source URL/revision/date for every table, and rerun the official-version audit immediately before release.

## Primary source index

- [Official Steam announcements/current version](https://steamcommunity.com/app/1468260/announcements/?l=english)
- [Steam store scope](https://store.steampowered.com/app/1468260/Leaf_Blower_Revolution__Idle_Game/)
- [Official wiki home](https://leafblowerrevolution.wiki.gg/)
- [Progression index](https://leafblowerrevolution.wiki.gg/wiki/Progression)
- [Areas](https://leafblowerrevolution.wiki.gg/wiki/Areas), [Leaf Types](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Types), [Tools](https://leafblowerrevolution.wiki.gg/wiki/Tools), [ALBs](https://leafblowerrevolution.wiki.gg/wiki/ALB)
- [Resets](https://leafblowerrevolution.wiki.gg/wiki/Resets), [Prestige](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Portal), [BLC](https://leafblowerrevolution.wiki.gg/wiki/Big_Leaf_Crunch), [MLC](https://leafblowerrevolution.wiki.gg/wiki/Mega_Leaf_Crunch), [ULC](https://leafblowerrevolution.wiki.gg/wiki/Ultra_Leaf_Crunch)
- [Printers](https://leafblowerrevolution.wiki.gg/wiki/Printers), [Converters](https://leafblowerrevolution.wiki.gg/wiki/Converters), [Seeds](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Seeds), [Trading](https://leafblowerrevolution.wiki.gg/wiki/Trading)
- [Pets](https://leafblowerrevolution.wiki.gg/wiki/Pets), [Unique Leaves](https://leafblowerrevolution.wiki.gg/wiki/Unique_Leaves), [Equipment](https://leafblowerrevolution.wiki.gg/wiki/Equipment)
- [Crafting](https://leafblowerrevolution.wiki.gg/wiki/Crafting), [Alchemy](https://leafblowerrevolution.wiki.gg/wiki/Alchemy), [Materials](https://leafblowerrevolution.wiki.gg/wiki/Materials), [Artifacts](https://leafblowerrevolution.wiki.gg/wiki/Artifacts)
- [Cards](https://leafblowerrevolution.wiki.gg/wiki/Cards), [Borbventures](https://leafblowerrevolution.wiki.gg/wiki/Borbventures), [Dice](https://leafblowerrevolution.wiki.gg/wiki/Dice), [Death Book](https://leafblowerrevolution.wiki.gg/wiki/Death_Book)
- [Mines](https://leafblowerrevolution.wiki.gg/wiki/The_Mines), [Fishing](https://leafblowerrevolution.wiki.gg/wiki/Fishing), [Harbor](https://leafblowerrevolution.wiki.gg/wiki/Harbor), [Banks](https://leafblowerrevolution.wiki.gg/wiki/Banks)
- [Relics](https://leafblowerrevolution.wiki.gg/wiki/Relics), [Leafscensions](https://leafblowerrevolution.wiki.gg/wiki/Leafscensions), [Mirrors](https://leafblowerrevolution.wiki.gg/wiki/Mirrors), [Electrical Energy](https://leafblowerrevolution.wiki.gg/wiki/Electrical_Energy)
- [Soul Forge](https://leafblowerrevolution.wiki.gg/wiki/Soul_Forge), [Quark Reactor](https://leafblowerrevolution.wiki.gg/wiki/Quark_Reactor), [Shadow Crystal](https://leafblowerrevolution.wiki.gg/wiki/Shadow_Crystal)
- [Challenges](https://leafblowerrevolution.wiki.gg/wiki/Challenges), [Achievements](https://leafblowerrevolution.wiki.gg/wiki/Achievements), [Milestones](https://leafblowerrevolution.wiki.gg/wiki/Milestones), [Offline Rewards](https://leafblowerrevolution.wiki.gg/wiki/Offline_Rewards), [Daily Rewards](https://leafblowerrevolution.wiki.gg/wiki/Daily_Rewards)
