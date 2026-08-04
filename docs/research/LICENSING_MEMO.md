# Leaf-blowing calculator game: licensing and current-scope memo

**Research cutoff:** 2026-08-03  
**Release posture:** public, source-available TI-84 Plus CE game  
**Status:** practical risk guidance, not legal advice

## Executive decision

Do **not** publicly release the project as **Leaf Blower Revolution CE**, and do not ship any Leaf Blower Revolution code, extracted data, artwork, icons, UI screens, writing, music, sounds, fonts, logos, characters, or save/account integrations unless the relevant rightsholder(s), coordinated through Humble North, give a sufficiently broad written license.

The safest shippable product is a clean-room, calculator-native game with:

- an original title and logo;
- independently written C/C++ code;
- original pixel art, UI, text, lore, characters, areas, and audio;
- renamed and remixed progression layers, resources, tools, pets, achievements, and minigames;
- gameplay ideas such as blowing particles, idle income, shops, automation, prestige resets, crafting, and offline progress, implemented in an independently designed progression;
- a short factual acknowledgment of inspiration and an explicit non-affiliation notice in the README/credits, not on the title screen or store/release title.

This conclusion is conservative. The U.S. Copyright Office says a game's ideas, title, and methods of play are not protected by copyright, while expressive text and graphic art can be; it also treats a videogame's program and audiovisual material as distinct copyrightable components ([Games guidance](https://www.copyright.gov/register/tx-games.html), [Compendium section 807.7(A)](https://www.copyright.gov/comp3/chap800/ch800-performing-arts.pdf#page=90)). Trademark and unfair-competition rules remain separate. The USPTO explains that marks need not be identical to create likely confusion when the goods are related ([likelihood-of-confusion guidance](https://www.uspto.gov/trademarks/search/likelihood-confusion)). Adding only `CE` to the exact name of an existing videogame is therefore a poor public-release posture.

## Rights/source audit

| Material | What was found | Public-reuse conclusion |
|---|---|---|
| Official game source | No official source repository or source-code license was located on the [official site](https://lbr.humblenorth.de/lbr/wp2/), [Steam page](https://store.steampowered.com/app/1468260/Leaf_Blower_Revolution__Idle_Game/), or a [GitHub repository search](https://github.com/search?q=%22Leaf+Blower+Revolution%22&type=repositories). Results were community tools, bots, editors, or unofficial projects, not an official source release. Absence from a search is not proof that no private grant exists. | Treat all original source, compiled resources, and extracted/decompiled game data as proprietary. Do not copy, translate, port, disassemble, or use them. |
| Official EULA/site terms | Humble North's published EULA says the game, patches, DLC, and multiplayer are provided as-is; it does not publish a fan-game, mod, source, or asset redistribution grant ([official EULA](https://humblenorth.de/privacy-policy/)). | No affirmative permission for a demake was found. Free-to-play availability is not a reuse license. |
| Title, logo, studio identity | Steam identifies **Leaf Blower Revolution - Idle Game** and Humble North as developer and publisher ([Steam](https://store.steampowered.com/app/1468260/Leaf_Blower_Revolution__Idle_Game/)); Apple's listing identifies Michael Schuppenies and carries a copyright notice ([App Store](https://apps.apple.com/us/app/leaf-blower-revolution/id6443698340)). The title is in continuing commercial use for the same class of product. | Do not use `Leaf Blower Revolution`, `LBR`, the official logo, or a look-alike logo as the public product/repository/release name without written permission. A disclaimer does not automatically cure confusion. |
| Game art and UI | Official sprites, characters, backgrounds, effects, menus, screenshots, promotional art, icons, and achievement art are audiovisual/pictorial expression. No open asset license was found. | Do not trace, recolor, downsample, pixelate, redraw from, or bundle these assets. A low-resolution copy can still be a copy. Use original compositions and a distinct palette/layout. |
| Audio | Steam sells an official soundtrack DLC, and no open license for music or sound effects was found ([Steam content listing](https://store.steampowered.com/app/1468260/Leaf_Blower_Revolution__Idle_Game/)). | Do not include official music, melodies, recordings, or sound effects. Use original audio or clearly licensed third-party audio with notices. |
| Writing and fictional expression | Lore, dialogue, jokes, item descriptions, achievement copy, quest text, character names/designs, and the distinctive selection/sequence of fictional content are expressive. | Do not copy or closely paraphrase. Write a new setting, voice, terminology, progression narrative, and descriptions. |
| Gameplay ideas and systems | The Copyright Office says game ideas and methods of play are not protected by copyright, although their expression can be ([Games guidance](https://www.copyright.gov/register/tx-games.html); [Circular 33](https://www.copyright.gov/circs/circ33.pdf)). | Independently implement general mechanics. Avoid recreating the whole expressive package one-for-one, and do not copy code or audiovisual presentation. |
| Exact values, formulas, and tables | Individual numbers and mathematical methods are generally functional/factual, but bulk copying of a wiki's selection/arrangement or database may invoke copyright, contractual, or EU database-right questions. | Prefer independently tuned formulas and a new progression order. If exact documented values are essential, transcribe only necessary facts, record provenance, do not copy explanatory prose, and obtain legal review before a parity release. |
| Official wiki prose | The official wiki footer says page content is under **CC BY-SA 4.0 unless otherwise noted** ([wiki snapshot](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Blower_Revolution_Wiki?oldid=11362)). CC BY-SA permits sharing/adaptation with attribution, change indication, ShareAlike, and no added restrictions ([license deed](https://creativecommons.org/licenses/by-sa/4.0/)). | The wiki may be used as a research reference. If prose/tables are actually copied or adapted into distributed documentation/data, identify that material, attribute it, link the license/source, note changes, and license the adaptation compatibly. Prefer original summaries so the game code/data are not unnecessarily entangled with ShareAlike. |
| Images hosted by the wiki | A page-level CC footer cannot safely be assumed to grant rights the uploader did not own. Many game wikis host extracted sprites and screenshots; CC itself warns that other rights may still limit use ([CC BY-SA notices](https://creativecommons.org/licenses/by-sa/4.0/)). | Treat every wiki image depicting original game content as proprietary unless its individual file page supplies credible, compatible provenance from the actual rightsholder. Default policy: use none. |
| Community repos/guides/videos | Third-party publication does not prove that the author owns Leaf Blower Revolution assets or may sublicense them. | Do not import assets/code merely because they are downloadable. Review an explicit license and provenance for every third-party file; otherwise exclude it. |
| TI naming/branding | Texas Instruments allows referential use of its marks but publishes usage and attribution guidance ([TI attribution guidance](https://www.ti.com/legal/terms-conditions/trademarks/attribution-of-marks-in-literature.html)). | Say “compatible with the TI-84 Plus CE graphing calculator”; do not use TI logos or imply TI endorsement. Include a trademark acknowledgment. |

## Current official game scope at the cutoff

The current public version found across official release channels is **v2.29.7**, dated **2026-04-08**. Steam's official announcements list the v2.29.7 changes, and Google Play shows an update date of 2026-04-08; Apple's version history also identifies v2.29.7 ([Steam announcements](https://steamcommunity.com/app/1468260/announcements/?l=english), [Google Play](https://play.google.com/store/apps/details?id=com.ezplugins.leafblowerrevolution&hl=en_US), [App Store](https://apps.apple.com/us/app/leaf-blower-revolution/id6443698340)). Recheck these three sources immediately before release because the game remains actively maintained.

The official Steam description currently advertises 30+ leaf types, 38+ shops, 40+ areas, 32+ pets, 20+ unique leaves, crafting, Cheese Pub minigames, tools, Autoblowers, fruit, prestige, and achievements ([Steam](https://store.steampowered.com/app/1468260/Leaf_Blower_Revolution__Idle_Game/)).

**Wiki attribution for the next list:** adapted from *Leaf Blower Revolution Wiki* contributors, [home/scope revision 11362](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Blower_Revolution_Wiki?oldid=11362), retrieved 2026-08-03, under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). Changes: condensed, regrouped, and converted from navigation tables to prose. This bullet list, and only this adapted list, is offered under CC BY-SA 4.0. No wiki images are included.

The official wiki's current navigation expands the documented scope to:

- leaf blowing, tools, and automatic leaf blowers;
- areas, bosses, enemies, Leaf Tower, Cursed Pyramid, Soul Crypt, Leafton Pit, house, and pub;
- printers, converters, farming, trading, pets, unique leaves, shovelling, crafting, alchemy, Borbventures, dice, Death Book, mines, fishing, banks, Soul Forge, Quark Reactor, and Shadow Crystal;
- Prestige, Big Leaf Crunch, Mega Leaf Crunch, and Ultra Leaf Crunch;
- fruit, seeds, artifacts, scrolls, equipment, tokens, materials, chests, cards, mirrors, relics, and Leafscensions;
- flasks, cheese, beer, gems, Borbs, mulch, shards, electrical energy, souls, offline/daily rewards, achievements, milestones, challenges, seasons, and events;
- progression through Sacred Nebula, Energy Belt, Fire Fields, Soul Realm, Quark Ambit, Leafton Pit, and Umbral Cluster.

Use the [official wiki home/scope snapshot](https://leafblowerrevolution.wiki.gg/wiki/Leaf_Blower_Revolution_Wiki?oldid=11362) and [progression index](https://leafblowerrevolution.wiki.gg/wiki/Progression) as feature-discovery references, not as asset sources.

Recent official release milestones that define the modern scope are:

| Version | Officially introduced/expanded |
|---|---|
| v2.22.0 (2023-12-22) | Banks and passive boss-card progression ([official update index](https://lbr.humblenorth.de/lbr/wp2/category/updates/)) |
| v2.23.0 (2024-02-16) | Leafton Pit and its milestone progression ([official update index](https://lbr.humblenorth.de/lbr/wp2/category/updates/)) |
| v2.24.0 (2024-03-30) | Mines, coal veins, caves, and mining rewards ([official update index](https://lbr.humblenorth.de/lbr/wp2/category/updates/)) |
| v2.25.0 (2024-06-06) | Mirrors, relic fragments, upgradable relics, and Master Relics ([official update index](https://lbr.humblenorth.de/lbr/wp2/category/updates/)) |
| v2.26.0 (2024-12-21) | Ultra Leaf Crunch, ULC coins, Umbral Cluster, six areas, Shadow Crystal, a skill tree, boosters, and 200+ achievements ([official v2.26 notes](https://lbr.humblenorth.de/lbr/wp2/the-ultra-leaf-crunch-update-v2-26-0/)) |
| v2.27.0 (2025-05-09) | Fishing, 24 fish, rods, a Fishing Journey, tournaments, fish currencies, Spiral Walk, and more autobuy systems ([official v2.27 notes](https://lbr.humblenorth.de/lbr/wp2/the-fishing-update-v2-27-0/)) |
| v2.28.0 (2025-08-12) | Account-backed daily/weekly challenges, leaderboard rewards, fishing/offline changes, and more automation/QoL ([official v2.28 notes](https://lbr.humblenorth.de/lbr/wp2/daily-weekly-challenges-qol-v2-28-0/)) |
| v2.29.0 (2025-12-18) | Industrial Harbor, Water Leaves/Crystals, container jobs, ships, harbor inventory/journey, Anniversary event, candle minigame, Party Tokens, and event automation ([official v2.29 notes](https://lbr.humblenorth.de/lbr/wp2/v2-29-0-the-industrial-harbor-anniversary-update/)) |
| v2.29.1–v2.29.7 (2026-01-08 to 2026-04-08) | Harbor job automation and offline progress, Harbor Hustle, daily bounties, passive pub minigames, inventory locking, Leafscender Safe Mode, and fixes/QoL ([official Steam patch feed](https://steamcommunity.com/app/1468260/announcements/?l=english)) |

This table establishes a research baseline only. It is **not** a checklist of content safe to copy. Newly introduced names, characters, art, text, and UI remain subject to the same original-content policy.

## Concrete safe-content policy for this repository

### Green: may be implemented

1. General gameplay concepts: push independently drawn leaf particles with a directional blower; collect resources when particles leave a region; buy upgrades; automate collection; earn offline progress; reset for meta-currency; build shops, crafting, pets/companions, challenges, achievements, statistics, bosses, and minigames.
2. Functional concepts: big-number arithmetic, save checksums, backup saves, area streaming, timers, fixed-point physics, procedural effects, table-driven shop code, and generic input/UI conventions.
3. Generic real-world subjects: ordinary leaves, rakes, fans, blowers, gardens, metals, colors, fruit, scientific concepts, and mathematical notation—rendered and named independently.
4. Original content produced for this project, with source files and authorship/provenance recorded.
5. Third-party libraries/assets only when their license is explicit and compatible, with the required license text and attribution included in the release.

### Amber: only with a provenance record and review

1. Facts or formulas transcribed from the wiki: record page URL, revision/date, exact facts used, and the independent implementation; do not copy prose or table layout.
2. Wiki prose/tables intentionally adapted under CC BY-SA: isolate them in clearly marked documentation/data, add attribution and change notices, and apply the required compatible license to the adaptation.
3. Public-domain or openly licensed art/audio: retain the source URL, author, license/version, download date, and any modification notice. Verify that the uploader owned the work.
4. A factual README sentence identifying Leaf Blower Revolution as inspiration: keep it subordinate, non-promotional, and next to the non-affiliation disclaimer.

### Red: exclude unless written permission expressly covers the use

1. The release/repository/program name `Leaf Blower Revolution CE`, `LBR CE`, or confusingly similar branding.
2. Humble North, Leaf Blower Revolution, Steam, Apple, Google Play, or TI logos/badges.
3. Official or ripped sprites, icons, particles, palettes, backgrounds, screenshots, trailers, fonts, UI frames/layouts, achievement art, music, melodies, or sound effects—including traced, recolored, downscaled, or AI-transformed versions.
4. Official source, decompiled code, object names, room files, packed assets, translation files, save schemas, server protocols, API endpoints, authentication, cloud saves, leaderboards, or DLC entitlements.
5. Copied lore, dialogue, jokes, descriptions, quests, achievement text, distinctive fictional names, character designs, area names, or the same ordered narrative/progression presentation.
6. Fan/community assets lacking an explicit compatible license from someone who demonstrably owns the necessary rights.
7. Claims such as “official,” “port,” “authorized,” “complete LBR,” or “by Humble North,” or screenshots that could imply those claims.

## Replacement brand and content direction

Use **Windfall Workshop CE** only as a provisional internal candidate; it had no obvious exact-title videogame hit in a basic web search, but that is **not** trademark clearance. Before publishing, perform a comprehensive search (federal/state/internet and relevant non-U.S. registers) or have counsel clear the final name. The USPTO recommends a comprehensive clearance search rather than relying only on an exact-match lookup ([clearance guidance](https://www.uspto.gov/trademarks/search/comprehensive-clearance-search-similar-trademarks)).

Recommended original identity:

- **Visual motif:** a hand-built pinwheel/fan moving three asymmetrical leaves into a collection sack; no gold-leaf emblem and no imitation of the official wordmark.
- **Palette:** dusk violet, pine green, copper, cream, and cyan accents; avoid reproducing the source game's screen-by-screen palette.
- **UI:** calculator-native cards, tabs, and key legends designed from the 320×240 constraints, not a miniaturized source-game UI.
- **Tone:** workshop field notes and playful weather science, with entirely new jokes and lore.
- **Characters:** original “Gustlings” (abstract wind sprites) rather than Borbs or look-alike bird pets.

Example terminology map—not a requirement, and each final term should receive a basic clearance search:

| Source-role shorthand used during research | Public-facing original concept |
|---|---|
| Automatic leaf blower / ALB | Auto-Fan |
| Prestige coins | Season Tokens |
| Big/Mega/Ultra Leaf Crunch | Canopy Break / Worldfall / Eclipse Renewal |
| BLC/MLC/ULC shops | Canopy Lab / Horizon Lab / Night Lab |
| Borbs / Borbventures | Gustlings / Gustling Expeditions |
| Cheese Pub | Wayside Shed |
| Leaf Tower | Canopy Spire |
| Cursed Pyramid | Buried Conservatory |
| Quark Reactor | Particle Foundry |
| Shadow Crystal | Nightglass Core |
| Leafscension | Leaf Refining |

Mechanically, progression layers can fill comparable design roles, but their names, fiction, visuals, reward graphs, pacing, formulas, unlock order, and menu presentation should be independently authored. A wholesale one-to-one content clone with only renamed labels is not the recommended policy.

## Required credits/notices

If no wiki text/data is copied, use a notice like:

> Windfall Workshop CE is an independent, unofficial calculator game. It is not endorsed by, sponsored by, or affiliated with Humble North, Michael Schuppenies, Valve, or Texas Instruments. Leaf Blower Revolution was consulted as one inspiration during genre and mechanics research. No Leaf Blower Revolution code, artwork, audio, dialogue, or other game assets are included. Leaf Blower Revolution and associated names and marks belong to their respective owners. TI-84 Plus CE is a trademark of Texas Instruments Incorporated.

If wiki prose/table material is actually copied or adapted, add a specific notice—not merely “thanks to the wiki”:

> Portions of `[identify exact file/section]` are adapted from Leaf Blower Revolution Wiki contributors, `[page title and permanent revision URL]`, retrieved 2026-08-03, licensed under CC BY-SA 4.0. Changes: `[describe]`. The adapted material is distributed under CC BY-SA 4.0: https://creativecommons.org/licenses/by-sa/4.0/ . This attribution does not imply endorsement.

Keep third-party notices in `THIRD_PARTY_NOTICES.md`, include full required license texts in the source and release archives, and generate an asset manifest with one row per asset: path, author, creation/source, license, modification status, and reviewer.

## If the exact demake/title is still desired

Pause public distribution and request written permission through Humble North's [official contact page](https://humblenorth.de/contact/) or the support email listed on its [Google Play page](https://play.google.com/store/apps/details?id=com.ezplugins.leafblowerrevolution&hl=en_US). The grant should expressly cover, at minimum:

- use of the exact title `Leaf Blower Revolution CE`, abbreviations, and any logo;
- each named character, fictional term, area, resource, UI element, sprite, sound, or text allowed;
- creation, modification, compilation, and worldwide distribution of a TI-84 Plus CE derivative game;
- public source hosting, release binaries/AppVars, mirrors, archival sites, screenshots, videos, and release ZIPs;
- whether distribution may be free, donation-supported, or commercial;
- duration, territory, sublicensing needed for hosting, attribution, brand review, update rights, and takedown/termination handling;
- confirmation that Humble North can license any included third-party assets, or an explicit exclusion list.

Do not interpret silence, a Discord reaction, fan-art acceptance, free-to-play status, or informal enthusiasm as this permission. Preserve the written grant with the release records and comply with its exact scope.

## Release gate

Public release is approved under this memo only when all boxes are checked:

- [ ] Final title passed a documented clearance search and is not `Leaf Blower Revolution CE`/`LBR CE`.
- [ ] Repository, program name, AppVar names, icon, screenshots, and ZIP names use the original brand.
- [ ] Code review found no copied/decompiled original-game code, data, strings, or protocols.
- [ ] Asset manifest proves original or compatible-license provenance for every visual/audio/font asset.
- [ ] Search of shipped strings found no distinctive source-game names, lore, dialogue, descriptions, or copied achievements.
- [ ] UI comparison confirms no screen is a close reproduction of the source UI or promotional art.
- [ ] Wiki-derived material, if any, is isolated, attributed, change-marked, and ShareAlike-compliant.
- [ ] `THIRD_PARTY_NOTICES.md`, license texts, non-affiliation notice, and TI trademark acknowledgment ship in both source and release archives.
- [ ] Release notes state the research/version cutoff and do not claim full parity, authorization, or official status.
- [ ] Official Steam/site/store release notes were rechecked for a newer version immediately before feature claims are finalized.
