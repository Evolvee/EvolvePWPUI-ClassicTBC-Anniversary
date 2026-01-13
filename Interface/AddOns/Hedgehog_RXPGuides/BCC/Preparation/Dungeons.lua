RXPGuides.RegisterGuide([[
#classic
#tbc
#group Hedgehogs Burning Crusade Classic Series
#subgroup 2 - Preparation
#name 2 - Dungeons
#next 1 - Introduction

step
    >>|cf00ff00fDungeon Preparation Guide|r
    +Use this guide to ensure you have all necessary consumables for extended dungeon runs.

step << !Warrior !Rogue
  .goto Orgrimmar,45.6,64.0
  .fly Mudsprocket >>Fly to Mudsprocket
  .target Doras

step << !Warrior !Rogue
  .goto Dustwallow Marsh,41.8,74.0
  >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Axel|r|cRXP_BUY_. Buy |r |T132830:0|t[Filtered Draenic Water] |cRXP_BUY_from him.|r
  .collect 28399,100 --Collect Filtered Draenic Water (100)
  .target Axel

step << !Hunter
  .goto Dustwallow Marsh,42.8,72.4
  .fly Orgrimmar >>Fly to Orgrimmar
  .target Dyslix Silvergrub

step << Hunter
  .goto Dustwallow Marsh,42.8,72.4
  .fly Brackenwall Village >>Fly to Brackenwall Village
  .target Dyslix Silvergrub

step << Hunter
  .goto Dustwallow Marsh,35.6,30.2
  >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zanara|r|cRXP_BUY_. Buy |r |T133578:0|t[Wicked Arrow] |cRXP_BUY_from her.|r
  .collect 28053,3200 --Collect Wicked Arrow (3200)
  .target Zanara

step << Hunter
  .goto Dustwallow Marsh,35.6,31.8
  .fly Orgrimmar >>Fly to Orgrimmar
  .target Shardi

step << Druid/Mage/Paladin/Priest/Shaman
  .goto Orgrimmar,45.6,56.8
  >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Horthus|r|cRXP_BUY_. Buy your Class Reagents.|r
  .collect 17026,100 << Druid --Collect Wild Thornroot (100)
  .collect 17038,20 << Druid --Collect Ironwood Seed (20)
  .collect 17020,100 << Mage --Collect Arcane Powder (100)
  .collect 17032,20 << Mage --Collect Rune of Portals (20)
  .collect 17031,20 << Mage --Collect Rune of Teleportation (20)
  .collect 21177,200 << Paladin --Collect Symbol of Kings (200)
  .collect 17033,10 << Paladin --Collect Symbol of Divinity (10)
  .collect 17029,100 << Priest --Collect Sacred Candle (100)
  .collect 17030,10 << Shaman --Collect Ankh (10)
  .target Horthus

step << Rogue
  .goto Orgrimmar,45.6,56.8
  >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy your Poisons.|r
  .collect 8924,80 --Collect Dust of Decay (80)
  .collect 8925,20 --Collect Crystal Vial (20)
  .target Rekkul

step
  >>|cRXP_BUY_Purchase your standard set of consumables.|r
  >>Dungeon grinding takes approximately 40 hours so plan accordingly.
  >>While all dungeons are easy enough to be completed without consumables, they will greatly speed up the process.
  >>The following is a general guideline, adjust quantities as needed based on your class and role.

step
  >>|cRXP_BUY_Flasks|r
  >>Flasks count as both Battle and Guardian Elixirs and persists through death.
  .collect 13511,20 <<Druid/Paladin/Priest/Shaman --Collect Flask of Distilled Wisdom (20)
  .collect 13512,20 <<Druid/Mage/Priest/Shaman/Warlock --Collect Flask of Supreme Power (20)
  .collect 13510,20 <<Druid/Paladin/Warrior --Collect Flask of the Titans (20)

step
  >>|cRXP_BUY_Battle Elixirs|r
  >>Elixirs do not stack with Flasks, and must be reapplied after each death.
  .collect 13454,40 --Collect Greater Arcane Elixir (40)
  .collect 13452,40 --Collect Elixir of the Mongoose (40)

step
  >>|cRXP_BUY_Guardian Elixirs|r
  >>Elixirs do not stack with Flasks, and must be reapplied after each death.
  .collect 20007,40 --Collect Mageblood Potion (40)
  .collect 13447,40 --Collect Elixir of the Sages (40)
  .collect 13445,40 --Collect Elixir of Superior Defense (40)

step
  >>|cRXP_BUY_Food Buffs|r
  .collect 13931,160 --Collect Nightfin Soup (160)
  .collect 21023,160 --Collect Dirge's Kickin' Chimaerok Chops (160)

step
  >>|cRXP_BUY_Miscellaneous Consumables|r
  >>Choose between a combination of the following, ideally you will not require these and they can ba saved for Raiding.
  .collect 20520,20 <<Druid/Hunter/Mage/Paladin/Priest/Shaman/Warlock --Collect Dark Rune (20)
  .collect 12662,20 <<Druid/Hunter/Mage/Paladin/Priest/Shaman/Warlock --Collect Demonic Rune (20)

step
  >>|cRXP_BUY_Weapon Enhancements|r
  .collect 20748,15 <<Druid/Paladin/Priest/Shaman --Collect Brilliant Mana Oil (10)
  .collect 20749,15 <<Druid/Mage/Priest/Shaman/Warlock --Collect Brilliant Wizard Oil (10)
  .collect 18262,60 <<Paladin/Rogue/Warrior --Collect Elemental Sharpening Stone (40)
  .collect 12643,60 <<Druid/Paladin/Rogue/Warrior --Collect Dense Weightstone (40)
]])
