#include "content.h"

#define N(v, e) {static_cast<uint32_t>(v), static_cast<int16_t>(e)}

const ResourceDef RESOURCE_DEFS[RESOURCE_COUNT] = {
        {"Leaves", "Leaf", 3, false}, {"Gold Leaves", "Gold", 10, false},
        {"Platinum Leaves", "Plat", 7, false}, {"Bismuth Leaves", "Bism", 13, false},
        {"Cosmic Leaves", "Cos", 14, false}, {"Void Leaves", "Void", 5, false},
        {"Exotic Leaves", "Exot", 9, false}, {"Celestial Leaves", "Cele", 12, false},
        {"Mythical Leaves", "Myth", 2, false}, {"Lava Leaves", "Lava", 8, false},
        {"Ice Leaves", "Ice", 6, false}, {"Obsidian Leaves", "Obsi", 1, false},
        {"Silicon Leaves", "Sili", 11, false}, {"Benitoite Leaves", "Beni", 4, false},
        {"Moonstone Leaves", "Moon", 7, false}, {"Sand Leaves", "Sand", 15, false},
        {"Ancient Leaves", "Anct", 9, false}, {"Sacred Leaves", "Sacr", 14, false},
        {"Biotite Leaves", "Biot", 3, false}, {"Malachite Leaves", "Mala", 11, false},
        {"Hematite Leaves", "Hema", 8, false}, {"Plasma Leaves", "Plas", 13, false},
        {"Electrical Leaves", "Elec", 10, false}, {"Prestige Coins", "Coin", 10, false},
        {"Red Flasks", "RFlk", 8, false}, {"Orange Flasks", "OFlk", 9, false},
        {"Yellow Flasks", "YFlk", 10, false}, {"Green Flasks", "GFlk", 11, false},
        {"Blue Flasks", "BFlk", 12, false}, {"Purple Flasks", "PFlk", 13, false},
        {"Black Flasks", "KFlk", 0, false}, {"Strange Flasks", "SFlk", 6, false},
        {"BLC Coins", "BLC", 8, true}, {"MLC Coins", "MLC", 13, true},
        {"ULC Coins", "ULC", 14, true}, {"Gems", "Gem", 12, true},
        {"Cheese", "Chz", 10, true}, {"Materials", "Mat", 5, true},
        {"Essence", "Ess", 13, true}, {"Mulch", "Mulch", 4, true},
        {"Borbs", "Borb", 15, true}, {"Card Parts", "Card", 12, true},
        {"Dice Points", "Dice", 7, true}, {"Souls", "Soul", 6, true},
        {"Quarks", "Quark", 11, true}, {"Quantum Blobs", "QBlob", 14, true},
        {"Shadow Crystals", "Shad", 5, true}, {"Energy", "NRG", 10, true},
        {"Beer", "Beer", 9, true}, {"Curses", "Curse", 13, true},
        {"Silver Tokens", "Silv", 7, true}, {"Gold Tokens", "GTok", 10, true},
        {"Shards", "Shard", 6, true}, {"Coal Leaves", "Coal", 5, false},
        {"Coal Bars", "CBar", 7, true}, {"Fish Credits", "Fish", 12, true},
        {"Relic Fragments", "Relic", 14, true}, {"Water Leaves", "Water", 6, true},
        {"Water Crystals", "WCryst", 12, true}, {"Ship Fuel", "Fuel", 9, true},
        {"Party Tokens", "Party", 14, true}, {"Dusk Leaves", "Dusk", 13, false},
        {"Amber Leaves", "Amber", 9, false}, {"Amethyst Leaves", "Ameth", 13, false},
        {"Emerald Leaves", "Emer", 11, false}, {"Kyanite Leaves", "Kyan", 12, false},
        {"Rhodonite Leaves", "Rhod", 14, false}, {"Ruby Leaves", "Ruby", 8, false},
        {"Tektite Leaves", "Tekt", 7, false}, {"Azurite Leaves", "Azur", 6, false},
        {"Niobium Leaves", "Niob", 15, false}, {"Empty Soul Leaves", "Empty", 5, false},
        {"Soul Leaves", "SLeaf", 14, false}, {"Quark Leaves", "QLeaf", 11, false}
};

const char *const SYSTEM_NAMES[SYSTEM_COUNT] = {
        "Tools", "Areas", "Prestige", "Printers", "Converters", "Flasks", "Big Leaf Crunch",
        "Seeds", "Autoblowers", "Pets", "Trading", "Crafting", "Materials", "Alchemy",
        "Artifacts", "Leaf Tower", "Equipment", "Challenges", "Mega Leaf Crunch", "Pyramid",
        "Borbventures", "Cards", "Dice", "Death Book", "Mines", "Fishing", "Ultra Leaf Crunch",
        "Banks", "Soul Forge", "Quark Reactor", "Shadow Crystal", "Galaxies",
        "Fruit & Farming", "Unique Leaves", "Shovelling", "Scrolls", "Chests",
        "Fusion & Ascension", "Leafscensions", "Relics", "Mirrors", "Soul Crypt",
        "Leafton Pit", "Cheese Pub", "House", "Industrial Harbor", "Harbor Jobs",
        "Ships & Divers", "Milestones", "Daily Quests", "Seasons & Events", "Shadow Tree"
};

const AreaDef AREA_DEFS[] = {
        {"Home Garden", RES_LEAVES, RES_LEAVES, N(1000000, 0), SYS_TOOLS, 11},
        {"Neighbors' Garden", RES_GOLD, RES_COINS, N(1000000, 2), SYS_AREAS, 10},
        {"Mountain", RES_PLATINUM, RES_COINS, N(5000000, 3), SYS_AREAS, 6},
        {"Space", RES_COSMIC, RES_COINS, N(1000000, 5), SYS_AREAS, 1},
        {"THE VOID", RES_VOID, RES_COINS, N(2500000, 3), SYS_AREAS, 0},
        {"The Abyss", RES_EXOTIC, RES_STRANGE_FLASK, N(2500000, 4), SYS_FLASKS, 5},
        {"The Celestial Plane", RES_CELESTIAL, RES_BLC, N(1000000, 3), SYS_BLC, 12},
        {"The Mythical Garden", RES_MYTHICAL, RES_BLC, N(5000000, 4), SYS_PETS, 2},
        {"The Volcano", RES_LAVA, RES_BLC, N(5000000, 5), SYS_MATERIALS, 8},
        {"The Abandoned Research Station", RES_ICE, RES_BLC, N(1000000, 6), SYS_MATERIALS, 12},
        {"The Hidden Sea", RES_OBSIDIAN, RES_BLC, N(1000000, 7), SYS_ARTIFACTS, 1},
        {"Leafsink Harbor", RES_BENITOITE, RES_BLC, N(1500000, 8), SYS_TRADING, 6},
        {"The Leaf Tower", RES_AMBER, RES_BLC, N(1000000, 9), SYS_TOWER, 5},
        {"The Moon", RES_MOONSTONE, RES_BLC, N(5000000, 10), SYS_MLC, 6},
        {"The Infernal Desert", RES_SAND, RES_MLC, N(1000000, 3), SYS_MLC, 9},
        {"The Cursed Pyramid", RES_SAND, RES_MLC, N(5000000, 4), SYS_PYRAMID, 9},
        {"The Inner Cursed Pyramid", RES_ANCIENT, RES_MLC, N(1000000, 5), SYS_PYRAMID, 4},
        {"Kokkaupunki", RES_BENITOITE, RES_ESSENCE, N(2000000, 2), SYS_ALCHEMY, 3},
        {"Cursed Kokkaupunki", RES_ANCIENT, RES_ESSENCE, N(2000000, 3), SYS_ALCHEMY, 5},
        {"The Dark Glade", RES_MATERIALS, RES_ESSENCE, N(5000000, 3), SYS_MATERIALS, 2},
        {"Black Leaf Hole", RES_ANCIENT, RES_SHARDS, N(2500000, 2), SYS_PYRAMID, 0},
        {"Dicey Meadows", RES_DICE_POINTS, RES_ESSENCE, N(5000000, 2), SYS_DICE, 11},
        {"Glinting Thicket", RES_AZURITE, RES_DICE_POINTS, N(1000000, 3), SYS_DICE, 10},
        {"Fish Pond", RES_FISH_CREDITS, RES_ESSENCE, N(1000000, 2), SYS_FISHING, 6},
        {"Industrial Harbor", RES_WATER_LEAVES, RES_PLASMA, N(1000000, 3), SYS_HARBOR, 12},
        {"The Cheese Pub", RES_LEAVES, RES_BORBS, N(5000000, 2), SYS_PUB, 9},
        {"Your House", RES_LEAVES, RES_CHEESE, N(3000000, 2), SYS_HOUSE, 4},

        {"Biotite Forest", RES_BIOTITE, RES_SHARDS, N(2500000, 2), SYS_GALAXIES, 3},
        {"The Exalted Bridge", RES_MALACHITE, RES_BIOTITE, N(1000000, 4), SYS_GALAXIES, 7},
        {"The Ancient Sanctum", RES_SACRED, RES_MALACHITE, N(5000000, 4), SYS_RELICS, 4},
        {"Vilewood Cemetery", RES_SACRED, RES_SACRED, N(2500000, 6), SYS_RELICS, 5},
        {"The Lone Tree", RES_MALACHITE, RES_SACRED, N(1000000, 7), SYS_UNIQUE_LEAVES, 2},
        {"Spark Range", RES_HEMATITE, RES_MALACHITE, N(1000000, 8), SYS_MIRRORS, 10},
        {"Spark Bubble", RES_ELECTRICAL, RES_ENERGY, N(1200000, 3), SYS_MIRRORS, 12},
        {"Spark Portal", RES_ELECTRICAL, RES_ENERGY, N(5000000, 3), SYS_GALAXIES, 1},

        {"Energy Shrine", RES_ENERGY, RES_ULC, N(1000000, 2), SYS_GALAXIES, 10},
        {"Plasma Forest", RES_PLASMA, RES_ENERGY, N(5000000, 3), SYS_GALAXIES, 13},
        {"Blue Planet Edge", RES_PLASMA, RES_ENERGY, N(1000000, 4), SYS_DEATH_BOOK, 12},
        {"Green Planet Edge", RES_PLASMA, RES_ENERGY, N(1500000, 4), SYS_DEATH_BOOK, 11},
        {"Red Planet Edge", RES_PLASMA, RES_ENERGY, N(2000000, 4), SYS_DEATH_BOOK, 8},
        {"Purple Planet Edge", RES_PLASMA, RES_ENERGY, N(2500000, 4), SYS_DEATH_BOOK, 13},
        {"Black Planet Edge", RES_PLASMA, RES_ENERGY, N(5000000, 4), SYS_DEATH_BOOK, 0},
        {"Terror Graveyard", RES_ELECTRICAL, RES_ENERGY, N(1000000, 5), SYS_DEATH_BOOK, 5},
        {"Energy Singularity", RES_ENERGY, RES_ENERGY, N(5000000, 5), SYS_MIRRORS, 1},
        {"Fire Fields Portal", RES_ENERGY, RES_ENERGY, N(1000000, 6), SYS_GALAXIES, 8},

        {"The Shadow Cavern", RES_COAL_LEAVES, RES_ENERGY, N(1000000, 6), SYS_MINES, 5},
        {"The Coal Mine", RES_COAL_LEAVES, RES_COAL_LEAVES, N(5000000, 3), SYS_MINES, 4},
        {"Mount Moltenfury", RES_COAL_LEAVES, RES_COAL_BARS, N(1000000, 3), SYS_MINES, 8},
        {"The Fire Temple", RES_COAL_LEAVES, RES_COAL_BARS, N(5000000, 3), SYS_MINES, 9},
        {"Flame Brazier", RES_COAL_LEAVES, RES_COAL_BARS, N(1000000, 4), SYS_RELICS, 8},
        {"The Fire Universe", RES_COAL_LEAVES, RES_COAL_BARS, N(5000000, 4), SYS_GALAXIES, 8},
        {"Soul Portal", RES_SOULS, RES_COAL_BARS, N(1000000, 5), SYS_SOUL_CRYPT, 13},

        {"Soul Temple", RES_SOULS, RES_SOULS, N(1000000, 2), SYS_SOUL_CRYPT, 13},
        {"Soul Crypt", RES_SOULS, RES_SOULS, N(5000000, 2), SYS_SOUL_CRYPT, 5},
        {"The Hollow", RES_EMPTY_SOUL_LEAVES, RES_SOULS, N(1000000, 3), SYS_SOUL_FORGE, 0},
        {"Soul Forge", RES_SOUL_LEAVES, RES_SOULS, N(5000000, 3), SYS_SOUL_FORGE, 14},
        {"The Fabric of the Leafverse", RES_SOULS, RES_SOULS, N(1000000, 4), SYS_SOUL_FORGE, 7},
        {"Quark Portal", RES_QUARKS, RES_SOULS, N(5000000, 4), SYS_QUARK_REACTOR, 1},
        {"Primordial Ethos", RES_SOULS, RES_SOULS, N(1000000, 5), SYS_ULC, 15},

        {"Quark Nexus", RES_QUARK_LEAVES, RES_ENERGY, N(1000000, 6), SYS_QUARK_REACTOR, 1},
        {"Quantum Aether", RES_QUARKS, RES_QUARKS, N(1000000, 3), SYS_QUARK_REACTOR, 12},
        {"Astral Oasis", RES_QUARKS, RES_QUARKS, N(5000000, 3), SYS_QUARK_REACTOR, 10},
        {"Dimensional Tapestry", RES_QUARKS, RES_QUARKS, N(1000000, 4), SYS_QUARK_REACTOR, 13},
        {"Planck Scope", RES_QUANTUM_BLOBS, RES_QUARKS, N(5000000, 4), SYS_QUARK_REACTOR, 6},
        {"Ante Leafton", RES_QUANTUM_BLOBS, RES_QUANTUM_BLOBS, N(5000000, 1), SYS_LEAFTON_PIT, 3},
        {"The Leafton Pit", RES_QUANTUM_BLOBS, RES_QUANTUM_BLOBS, N(1000000, 2), SYS_LEAFTON_PIT, 5},

        {"Shadow Crystal", RES_DUSK_LEAVES, RES_ULC, N(1000000, 3), SYS_SHADOW_CRYSTAL, 13},
        {"Tenebris Field", RES_DUSK_LEAVES, RES_DUSK_LEAVES, N(1000000, 4), SYS_SHADOW_TREE, 5},
        {"Blacklight Verge", RES_DUSK_LEAVES, RES_DUSK_LEAVES, N(5000000, 4), SYS_SHADOW_TREE, 1},
        {"Sombrynth", RES_DUSK_LEAVES, RES_SHADOW_CRYSTALS, N(1000000, 3), SYS_SHADOW_TREE, 13},
        {"Latsyrc Wodash", RES_DUSK_LEAVES, RES_SHADOW_CRYSTALS, N(5000000, 3), SYS_SHADOW_TREE, 5},
        {"Shadow Lighthouse", RES_DUSK_LEAVES, RES_SHADOW_CRYSTALS, N(1000000, 4), SYS_SHADOW_TREE, 7},
        {"Spiral Walk", RES_DUSK_LEAVES, RES_SHADOW_CRYSTALS, N(5000000, 4), SYS_SHADOW_TREE, 14},

        {"Cursed Halloween", RES_CURSES, RES_CURSES, N(1000000, 2), SYS_SEASONS, 13},
        {"Farm Field", RES_PARTY_TOKENS, RES_MATERIALS, N(1000000, 2), SYS_SEASONS, 11},
        {"Butterfly Field", RES_ESSENCE, RES_MATERIALS, N(5000000, 2), SYS_SEASONS, 14},
        {"Vial of Life", RES_PARTY_TOKENS, RES_ESSENCE, N(1000000, 3), SYS_SEASONS, 6},
        {"The Doomed Tree", RES_DUSK_LEAVES, RES_PARTY_TOKENS, N(5000000, 3), SYS_SEASONS, 5}
};
const uint8_t AREA_COUNT = sizeof(AREA_DEFS) / sizeof(AREA_DEFS[0]);

const ToolDef TOOL_DEFS[] = {
        {"Hands", RES_LEAVES, N(1000000, 0), 1000, 24, SYS_TOOLS},
        {"Small Rake", RES_LEAVES, N(5000000, 2), 1400, 28, SYS_TOOLS},
        {"Large Rake", RES_GOLD, N(1000000, 3), 1900, 34, SYS_AREAS},
        {"Leaf Blower", RES_GOLD, N(2500000, 4), 2600, 42, SYS_AREAS},
        {"Advanced Blower", RES_PLATINUM, N(1000000, 5), 3800, 50, SYS_PRINTERS},
        {"Nuclear Blower", RES_BLC, N(1000000, 3), 6000, 58, SYS_BLC},
        {"Leaf Sword", RES_BLC, N(1000000, 6), 9000, 64, SYS_TOWER},
        {"High-Tech Blower", RES_MLC, N(1000000, 3), 14000, 72, SYS_MLC},
        {"Ancient Blower", RES_MLC, N(1000000, 6), 22000, 80, SYS_PYRAMID},
        {"Sacred Blower", RES_ULC, N(1000000, 3), 35000, 88, SYS_ULC},
        {"Quark Blower", RES_QUANTUM_BLOBS, N(1000000, 2), 55000, 96, SYS_QUARK_REACTOR},
        {"Depth Shovel", RES_COAL_BARS, N(1000000, 2), 65000, 90, SYS_SHOVELLING},
        {"Master Trout", RES_FISH_CREDITS, N(1000000, 3), 72000, 100, SYS_FISHING},
        {"Harbor Fan", RES_WATER_CRYSTALS, N(1000000, 2), 82000, 104, SYS_HARBOR},
        {"Shadow Blower", RES_SHADOW_CRYSTALS, N(1000000, 3), 96000, 112, SYS_SHADOW_CRYSTAL},
        {"World Blower", RES_QUANTUM_BLOBS, N(1000000, 4), 120000, 120, SYS_GALAXIES}
};
const uint8_t TOOL_COUNT = sizeof(TOOL_DEFS) / sizeof(TOOL_DEFS[0]);

const UpgradeDef UPGRADE_DEFS[] = {
        {"Blow Power", "Push leaves harder", SHOP_LEAF, RES_LEAVES, N(1000000, 1), 1450, 100, EFFECT_BLOW_POWER, SYS_TOOLS},
        {"Blow Range", "Larger blower radius", SHOP_LEAF, RES_LEAVES, N(5000000, 1), 1600, 20, EFFECT_BLOW_RANGE, SYS_TOOLS},
        {"Movement", "Move blower faster", SHOP_LEAF, RES_LEAVES, N(1000000, 2), 1750, 12, EFFECT_MOVE_SPEED, SYS_TOOLS},
        {"More Leaves", "More leaves spawn", SHOP_LEAF, RES_LEAVES, N(2500000, 2), 1500, 50, EFFECT_SPAWN_RATE, SYS_TOOLS},
        {"Leaf Value", "All leaves worth more", SHOP_GOLD, RES_GOLD, N(1000000, 2), 1800, 80, EFFECT_LEAF_VALUE, SYS_AREAS},
        {"Combo", "Rapid clears multiply value", SHOP_GOLD, RES_GOLD, N(5000000, 2), 2000, 40, EFFECT_COMBO, SYS_AREAS},
        {"Printer Output", "Print unlocked leaves", SHOP_COIN, RES_COINS, N(1000000, 2), 2200, 60, EFFECT_PRINTER, SYS_PRINTERS},
        {"Converter Speed", "Convert flasks faster", SHOP_COIN, RES_COINS, N(2500000, 3), 2400, 50, EFFECT_CONVERTER, SYS_CONVERTERS},
        {"Area Discount", "Areas cost less", SHOP_COIN, RES_COINS, N(1000000, 4), 2600, 25, EFFECT_AREA_DISCOUNT, SYS_AREAS},
        {"Offline Rewards", "Earn while powered off", SHOP_COIN, RES_COINS, N(1000000, 5), 3000, 25, EFFECT_OFFLINE, SYS_PRESTIGE},
        {"Crunchy Coins", "Keep coins after BLC", SHOP_BLC, RES_BLC, N(1000000, 1), 10000, 1, EFFECT_KEEP_COINS, SYS_BLC},
        {"Moar BLC", "Increase BLC rewards", SHOP_BLC, RES_BLC, N(5000000, 1), 2400, 75, EFFECT_BLC_REWARD, SYS_BLC},
        {"Seeds", "Periodic leaf growth", SHOP_BLC, RES_BLC, N(1000000, 3), 3200, 50, EFFECT_SEED, SYS_SEEDS},
        {"ALB Capacity", "Add an autoblower", SHOP_AUTOMATION, RES_BLC, N(1000000, 2), 3500, 8, EFFECT_ALB_COUNT, SYS_AUTOBLOWERS},
        {"ALB Power", "Stronger autoblowers", SHOP_AUTOMATION, RES_BLC, N(2500000, 2), 2100, 80, EFFECT_ALB_POWER, SYS_AUTOBLOWERS},
        {"Trade Education", "Faster, richer trades", SHOP_BLC, RES_BLC, N(1000000, 4), 2600, 40, EFFECT_TRADE, SYS_TRADING},
        {"Craft Forge", "Improve crafted leaves", SHOP_CRAFT, RES_CHEESE, N(1000000, 2), 2200, 100, EFFECT_CRAFT_QUALITY, SYS_CRAFTING},
        {"Blower Damage", "Damage enemies", SHOP_BLC, RES_BLC, N(1000000, 5), 2200, 100, EFFECT_DAMAGE, SYS_TOWER},
        {"Better Pets", "Improve pet bonuses", SHOP_CRAFT, RES_ESSENCE, N(1000000, 2), 2500, 20, EFFECT_PET_POWER, SYS_PETS},
        {"Moar MLC", "Increase MLC rewards", SHOP_MLC, RES_MLC, N(1000000, 1), 2300, 75, EFFECT_MLC_REWARD, SYS_MLC},
        {"Crunchy BLC", "Keep BLC after MLC", SHOP_MLC, RES_MLC, N(5000000, 1), 10000, 1, EFFECT_KEEP_BLC, SYS_MLC},
        {"All Rewards", "Multiply all production", SHOP_MLC, RES_MLC, N(1000000, 3), 2800, 60, EFFECT_ALL_REWARDS, SYS_MLC},
        {"Moar ULC", "Increase ULC rewards", SHOP_ULC, RES_ULC, N(1000000, 1), 2500, 75, EFFECT_ULC_REWARD, SYS_ULC},
        {"Stable Areas", "Keep areas after ULC", SHOP_ULC, RES_ULC, N(5000000, 1), 10000, 1, EFFECT_STABLE_AREAS, SYS_ULC},
        {"Bank Interest", "Boost bank yield", SHOP_ULC, RES_ULC, N(1000000, 3), 3000, 50, EFFECT_BANK, SYS_BANKS},
        {"Quark Output", "Increase reactor output", SHOP_GALAXY, RES_QUANTUM_BLOBS, N(1000000, 1), 2200, 100, EFFECT_QUARK, SYS_QUARK_REACTOR},
        {"Galaxy Rewards", "Boost every galaxy", SHOP_GALAXY, RES_SHADOW_CRYSTALS, N(1000000, 2), 2800, 100, EFFECT_ALL_REWARDS, SYS_GALAXIES},
        {"Fruit Harvest", "Improve fruit and farming", SHOP_AUTOMATION, RES_COINS, N(1000000, 6), 2200, 50, EFFECT_FRUIT, SYS_FRUIT},
        {"Scroll Duration", "Longer timed bonuses", SHOP_CRAFT, RES_MATERIALS, N(1000000, 3), 2400, 50, EFFECT_SCROLL, SYS_SCROLLS},
        {"Harbor Crew", "Faster jobs and ships", SHOP_GALAXY, RES_WATER_CRYSTALS, N(1000000, 1), 2300, 50, EFFECT_HARBOR, SYS_HARBOR},
        {"Shadow Tree", "Permanent dusk bonuses", SHOP_GALAXY, RES_SHADOW_CRYSTALS, N(1000000, 3), 2800, 50, EFFECT_SHADOW_TREE, SYS_SHADOW_TREE},
        {"Less Sacrifices", "Keep one ULC family per level", SHOP_ULC, RES_ULC, N(2500000, 2), 5000, 3, EFFECT_LESS_SACRIFICES, SYS_ULC}
};
const uint8_t UPGRADE_COUNT = sizeof(UPGRADE_DEFS) / sizeof(UPGRADE_DEFS[0]);

const PetDef PET_DEFS[] = {
        {"Autoblowo", "Autoblower power", EFFECT_ALB_POWER, 1250, RES_BLC, N(2000000, 6)},
        {"Bunnyo", "Converter speed", EFFECT_CONVERTER, 1500, RES_BLC, N(2000000, 6)},
        {"Penguino", "Trade speed", EFFECT_TRADE, 1300, RES_BLC, N(2000000, 6)},
        {"Raccoono", "Seed growth", EFFECT_SEED, 1400, RES_BLC, N(2000000, 6)},
        {"Crabbo", "Enemy damage", EFFECT_DAMAGE, 1500, RES_BLC, N(2000000, 6)},
        {"Butterflyo", "All pet effects", EFFECT_PET_POWER, 1200, RES_ESSENCE, N(1000000, 3)},
        {"Bearo", "Automatic trades", EFFECT_TRADE, 1800, RES_ESSENCE, N(1000000, 4)},
        {"Snekko", "Galaxy rewards", EFFECT_ALL_REWARDS, 1500, RES_ULC, N(1000000, 5)},
        {"Foxo", "Fruit harvest", EFFECT_FRUIT, 1400, RES_BLC, N(1000000, 7)},
        {"Owlo", "Scroll duration", EFFECT_SCROLL, 1400, RES_ESSENCE, N(1000000, 4)},
        {"Sluggo", "Material finds", EFFECT_CRAFT_QUALITY, 1350, RES_MATERIALS, N(1000000, 5)},
        {"Batto", "Relic fragments", EFFECT_DAMAGE, 1350, RES_RELIC_FRAGMENTS, N(1000000, 2)},
        {"Camelo", "Chest rewards", EFFECT_ALL_REWARDS, 1450, RES_MULCH, N(1000000, 5)},
        {"Panthero", "Tower combat", EFFECT_DAMAGE, 1700, RES_MLC, N(1000000, 6)},
        {"Monkeyo", "Harbor work", EFFECT_HARBOR, 1500, RES_WATER_CRYSTALS, N(1000000, 3)},
        {"Sharko", "Fishing rewards", EFFECT_ALL_REWARDS, 1500, RES_FISH_CREDITS, N(1000000, 4)}
};
const uint8_t PET_COUNT = sizeof(PET_DEFS) / sizeof(PET_DEFS[0]);

const ChallengeDef CHALLENGE_DEFS[] = {
        {"Speedblower Prestige", "Reach Prestige without autoblowers", SYS_PRESTIGE, 1100},
        {"Speedblower BLC", "Reach BLC with reduced rewards", SYS_BLC, 1150},
        {"Petless", "Reach the Tower without pets", SYS_TOWER, 1200},
        {"No Prestige", "Reach BLC without Prestige", SYS_BLC, 1200},
        {"Trader Crunch", "Complete ten trades", SYS_TRADING, 1250},
        {"Ultra Trial", "Reach ULC with half production", SYS_ULC, 1500}
};
const uint8_t CHALLENGE_COUNT = sizeof(CHALLENGE_DEFS) / sizeof(CHALLENGE_DEFS[0]);

const AchievementDef ACHIEVEMENT_DEFS[] = {
        {"First Leaf", RES_LEAVES, N(1000000, 0)}, {"Leaf Pile", RES_LEAVES, N(1000000, 4)},
        {"Leaf Mountain", RES_LEAVES, N(1000000, 8)}, {"Going Gold", RES_GOLD, N(1000000, 3)},
        {"Prestigious", RES_COINS, N(1000000, 0)}, {"Flask Lab", RES_RED_FLASK, N(1000000, 3)},
        {"Big Crunch", RES_BLC, N(1000000, 0)}, {"Pet Friend", RES_ESSENCE, N(1000000, 1)},
        {"Cheesy", RES_CHEESE, N(1000000, 2)}, {"Tower Climber", RES_SILICON, N(1000000, 5)},
        {"Mega Crunch", RES_MLC, N(1000000, 0)}, {"Ancient", RES_ANCIENT, N(1000000, 4)},
        {"Ultra Crunch", RES_ULC, N(1000000, 0)}, {"Borb Enjoyer", RES_BORBS, N(1000000, 3)},
        {"Card Collector", RES_CARD_PARTS, N(1000000, 3)}, {"High Roller", RES_DICE_POINTS, N(1000000, 3)},
        {"Soulful", RES_SOULS, N(1000000, 3)}, {"Quark Tech", RES_QUARKS, N(1000000, 5)},
        {"Quantum", RES_QUANTUM_BLOBS, N(1000000, 0)}, {"Into Shadow", RES_SHADOW_CRYSTALS, N(1000000, 3)},
        {"Gem Leaf", RES_AMBER, N(1000000, 2)}, {"Glinting", RES_AZURITE, N(1000000, 2)},
        {"Coal Baron", RES_COAL_LEAVES, N(1000000, 4)}, {"Soul Leaves", RES_SOUL_LEAVES, N(1000000, 3)},
        {"Water Worker", RES_WATER_LEAVES, N(1000000, 4)}, {"Harbor Captain", RES_WATER_CRYSTALS, N(1000000, 3)},
        {"Angler", RES_FISH_CREDITS, N(1000000, 3)}, {"Relic Hunter", RES_RELIC_FRAGMENTS, N(1000000, 3)},
        {"Dusk Walker", RES_DUSK_LEAVES, N(1000000, 4)}, {"Pub Regular", RES_BEER, N(1000000, 2)},
        {"Cursed", RES_CURSES, N(1000000, 2)}, {"Anniversary", RES_PARTY_TOKENS, N(1000000, 2)}
};
const uint8_t ACHIEVEMENT_COUNT = sizeof(ACHIEVEMENT_DEFS) / sizeof(ACHIEVEMENT_DEFS[0]);

BigNum content_cost(BigNum base, uint16_t growth_permille, uint16_t level) {
    return bn_geometric_cost(base, growth_permille, level);
}

#undef N
