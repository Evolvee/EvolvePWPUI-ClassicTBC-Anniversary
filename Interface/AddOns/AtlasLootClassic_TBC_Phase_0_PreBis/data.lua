-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)
local select = _G.select
local string = _G.string
local format = string.format

-- WoW
local function C_Map_GetAreaInfo(id)
	local d = C_Map.GetAreaInfo(id)
	return d or "GetAreaInfo"..id
end

-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local addonname = ...
local AtlasLoot = _G.AtlasLoot
local data = AtlasLoot.ItemDB:Add(addonname, 1)

local AL = AtlasLoot.Locales
local ALIL = AtlasLoot.IngameLocales

local GetForVersion = AtlasLoot.ReturnForGameVersion

local NORMAL_DIFF = data:AddDifficulty(AL["Normal"], "n", 1, nil, true)
local HEROIC_DIFF = data:AddDifficulty(AL["Heroic"], "h", 2, nil, true)
local ALLIANCE_DIFF, HORDE_DIFF, LOAD_DIFF
if UnitFactionGroup("player") == "Horde" then
	HORDE_DIFF = data:AddDifficulty(FACTION_HORDE, "horde", nil, 1)
	ALLIANCE_DIFF = data:AddDifficulty(FACTION_ALLIANCE, "alliance", nil, 1)
	LOAD_DIFF = HORDE_DIFF
else
	ALLIANCE_DIFF = data:AddDifficulty(FACTION_ALLIANCE, "alliance", nil, 1)
	HORDE_DIFF = data:AddDifficulty(FACTION_HORDE, "horde", nil, 1)
	LOAD_DIFF = ALLIANCE_DIFF
end

local NORMAL_ITTYPE = data:AddItemTableType("Item", "Item")
local SET_ITTYPE = data:AddItemTableType("Set", "Item")

local QUEST_EXTRA_ITTYPE = data:AddExtraItemTableType("Quest")
local PRICE_EXTRA_ITTYPE = data:AddExtraItemTableType("Price")
local SET_EXTRA_ITTYPE = data:AddExtraItemTableType("Set")

local VENDOR_CONTENT = data:AddContentType(AL["Vendor"], ATLASLOOT_DUNGEON_COLOR)
local SET_CONTENT = data:AddContentType(AL["Sets"], ATLASLOOT_PVP_COLOR)
--local WORLD_BOSS_CONTENT = data:AddContentType(AL["World Bosses"], ATLASLOOT_WORLD_BOSS_COLOR)
local COLLECTIONS_CONTENT = data:AddContentType(AL["Collections"], ATLASLOOT_COLLECTIONS_COLOR)
local WORLD_EVENT_CONTENT = data:AddContentType(AL["World Events"], ATLASLOOT_SEASONALEVENTS_COLOR)

data["DruidBalance"] = {
	name = AL["Druid Balance BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32480 }, -- Magnified Moon Specs
{ 2, 24266 }, -- Spellstrike Hood
{ 3, 32057 }, -- Merciless Gladiator's Wyrmhide Helm
{ 4, 31110 }, -- Druidic Helmet of Second Sight
{ 5, 28169 }, -- Mag'hari Ritualist's Horns
{ 6, 32089 }, -- Mana-Binders Cowl
{ 7, 28137 }, -- Gladiator's Wyrmhide Helm
{ 8, 28278 }, -- Incanter's Cowl
{ 9, 28415 }, -- Hood of Oblivion
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27796 }, -- Mana-Etched Spaulders
{ 2, 32059 }, -- Merciless Gladiator's Wyrmhide Spaulders
{ 3, 27778 }, -- Spaulders of Oblivion
{ 4, 30925 }, -- Spaulders of the Torn-heart
{ 5, 27994 }, -- Mantle of Three Terrors
{ 6, 22983 }, -- Rime Covered Mantle
{ 7, 28139 }, -- Gladiator's Wyrmhide Spaulders
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 27981 }, -- Sethekk Oracle Cloak
{ 2, 35497 }, -- Cloak of the Frigid Winds
{ 3, 29369 }, -- Shawl of Shifting Probabilities
{ 4, 31140 }, -- Cloak of Entropy
{ 5, 23050 }, -- Cloak of the Necropolis
{ 6, 22731 }, -- Cloak of the Devoured
{ 7, 24252 }, -- Cloak of the Black Void
{ 8, 25777 }, -- Ogre Slayer's Cover
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21848 }, -- Spellfire Robe
{ 2, 29522 }, -- Windhawk Hauberk
{ 3, 32060 }, -- Merciless Gladiator's Wyrmhide Tunic
{ 4, 31297 }, -- Robe of the Crimson Order
{ 5, 29341 }, -- Auchenai Anchorite's Robe
{ 6, 31340 }, -- Will of Edward the Odd
{ 7, 28342 }, -- Warp Infused Drape
{ 8, 28140 }, -- Gladiator's Wyrmhide Tunic
{ 9, 29129 }, -- Anchorite's Robes
{ 10, 28229 }, -- Incanter's Robe
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29523 }, -- Windhawk Bracers
{ 2, 24250 }, -- Bracers of Havok
{ 3, 27462 }, -- Crimson Bracers of Gloom
{ 4, 29240 }, -- Bands of Negation
{ 5, 21186 }, -- Rockfury Bracers
{ 6, 28174 }, -- Shattrath Wraps
{ 7, 29255 }, -- Bands of Rarefied Magic
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 21847 }, -- Spellfire Gloves
{ 2, 32056 }, -- Merciless Gladiator's Wyrmhide Gloves
{ 3, 27493 }, -- Gloves of the Deadwatcher
{ 4, 27537 }, -- Gloves of Oblivion
{ 5, 24450 }, -- Manaspark Gloves
{ 6, 31149 }, -- Gloves of Pandemonium
{ 7, 27465 }, -- Mana-Etched Gloves
{ 8, 29317 }, -- Tempest's Touch
{ 9, 24452 }, -- Starlight Gauntlets
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 30038 }, -- Belt of Blasting
{ 2, 21846 }, -- Spellfire Belt
{ 3, 24256 }, -- Girdle of Ruination
{ 4, 29524 }, -- Windhawk Belt
{ 5, 29241 }, -- Belt of Depravity
{ 6, 27843 }, -- Glyph-Lined Sash
{ 7, 31461 }, -- A'dal's Gift
{ 8, 24395 }, -- Mindfire Waistband
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 29141 }, -- Tempest Leggings
{ 3, 29142 }, -- Kurenai Kilt
{ 4, 30531 }, -- Breeches of the Occultist
{ 5, 29343 }, -- Haramad's Leggings of the Third Coin
{ 6, 30532 }, -- Kirin Tor Master's Trousers
{ 7, 28212 }, -- Aran's Sorcerous Slacks
{ 8, 27492 }, -- Moonchild Leggings
{ 9, 28185 }, -- Khadgar's Kilt of Abjuration
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 27821 }, -- Extravagant Boots of Malice
{ 2, 28406 }, -- Sigil-Laced Boots
{ 3, 28179 }, -- Shattrath Jumpers
{ 4, 28410 }, -- General's Silk Footguards
{ 5, 29808 }, -- Shimmering Azure Boots
{ 6, 30519 }, -- Boots of the Nexus Warden
{ 7, 29258 }, -- Boots of Ethereal Manipulation
{ 8, 27848 }, -- Embroidered Spellpyre Boots
{ 9, 27914 }, -- Moonstrider Boots
{ 10, 29242 }, -- Boots of Blasphemy
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 33067 }, -- Veteran's Pendant of Conquest
{ 3, 24116 }, -- Eye of the Night
{ 4, 27758 }, -- Hydra-fang Necklace
{ 5, 31692 }, -- Natasha's Ember Necklace
{ 6, 28245 }, -- Pendant of Dominance
{ 7, 29333 }, -- Torc of the Sethekk Prophet
{ 8, 24462 }, -- Luminous Pearls of Insight
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 29172 }, -- Ashyen's Gift
{ 2, 28227 }, -- Sparking Arcanite Ring
{ 3, 21709 }, -- Ring of the Fallen God
{ 4, 23031 }, -- Band of the Inevitable
{ 5, 28555 }, -- Seal of the Exorcist
{ 6, 29352 }, -- Cobalt Band of Tyrigosa
{ 7, 29367 }, -- Ring of Cryptic Dreams
{ 8, 29126 }, -- Seer's Signet
{ 9, 31075 }, -- Evoker's Mark of the Redemption
{ 10, 30366 }, -- Manastorm Band
{ 11, 31290 }, -- Band of Dominion
{ 12, 28394 }, -- Ryngo's Band of Ingenuity
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29370 }, -- Icon of the Silver Crescent
{ 2, 38290 }, -- Dark Iron Smoking Pipe
{ 3, 27683 }, -- Quagmirran's Eye
{ 4, 29132 }, -- Scryer's Bloodgem
{ 5, 19379 }, -- Neltharion's Tear
{ 6, 23046 }, -- The Restrained Essence of Sapphiron
{ 7, 28223 }, -- Arcanist's Stone
{ 8, 26055 }, -- Oculus of the Hidden Eye
{ 9, 30340 }, -- Starkiller's Bauble
{ 10, 12930 }, -- Briarwood Reed
{ 11, 25936 }, -- Terokkar Tablet of Vim
{ 12, 25620 }, -- Ancient Crystal Talisman
{ 13, 25619 }, -- Glowing Crystal Insignia
},
},

{ -- Onehand
name = format(AL["Onehand"], "2"),
[NORMAL_DIFF] = {
{ 1, 32963 }, -- Merciless Gladiator's Gavel
{ 2, 32053 }, -- Merciless Gladiator's Spellblade
{ 3, 23554 }, -- Eternium Runed Blade
{ 4, 30832 }, -- Gavel of Unearthed Secrets
{ 5, 28297 }, -- Gladiator's Spellblade
{ 6, 32450 }, -- Gladiator's Gavel
{ 7, 27543 }, -- Starlight Dagger
{ 8, 28931 }, -- High Warlord's Spellblade
{ 9, 27937 }, -- Sky Breaker
{ 10, 27741 }, -- Bleeding Hollow Warhammer
{ 11, 27868 }, -- Runesong Dagger
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 32055 }, -- Merciless Gladiator's War Staff
{ 2, 24557 }, -- Gladiator's War Staff
{ 3, 35514 }, -- Frostscythe of Lord Ahune
{ 4, 29355 }, -- Terokk's Shadowstaff
{ 5, 27842 }, -- Grand Scepter of the Nexus-Kings
{ 6, 29130 }, -- Auchenai Staff
{ 7, 28935 }, -- High Warlord's War Staff
{ 8, 28341 }, -- Warpstaff of Arcanum
{ 9, 31308 }, -- The Bringer of Death
{ 10, 28188 }, -- Bloodfire Greatstaff
},
},

{ -- Offhand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29271 }, -- Talisman of Kalecgos
{ 2, 29273 }, -- Khadgar's Knapsack
{ 3, 28412 }, -- Lamp of Peaceful Radiance
{ 4, 23049 }, -- Sapphiron's Left Eye
{ 5, 28187 }, -- Star-Heart Lamp
{ 6, 28260 }, -- Manual of the Nethermancer
{ 7, 29330 }, -- The Saga of Terokk
},
},

{ -- Ranged (Idol)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 27518 }, -- Ivory Idol of the Moongoddess
{ 2, 32387 }, -- Idol of the Raven Goddess
{ 3, 31025 }, -- Idol of the Avenger
{ 4, 23197 }, -- Idol of the Moon
},
},

},
}

data["DruidBear"] = {
	name = AL["Druid Bear BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 29502 }, -- Cobrascale Hood
{ 2, 28182 }, -- Helm of the Claw
{ 3, 31968 }, -- Merciless Gladiator's Dragonhide Helm
{ 4, 32478 }, -- Deathblow X11 Goggles
{ 5, 28127 }, -- Gladiator's Dragonhide Helm
{ 6, 32087 }, -- Mask of the Deceiver
{ 7, 32088 }, -- Cowl of Beastly Rage
{ 8, 28224 }, -- Wastewalker Helm
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 35359 }, -- Dragonhide Spaulders
{ 2, 27434 }, -- Mantle of Perenolde
{ 3, 27776 }, -- Shoulderpads of Assassination
{ 4, 31971 }, -- Merciless Gladiator's Dragonhide Spaulders
{ 5, 28129 }, -- Gladiator's Dragonhide Spaulders
{ 6, 32080 }, -- Mantle of Shadowy Embrace
{ 7, 27797 }, -- Wastewalker Shoulderpads
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28256 }, -- Thoriumweave Cloak
{ 2, 24258 }, -- Resolute Cape
{ 3, 28377 }, -- Sergeant's Heavy Cloak
{ 4, 24379 }, -- Bogstrok Scale Cloak
{ 5, 29382 }, -- Blood Knight War Cloak
{ 6, 27878 }, -- Auchenai Death Shroud
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 25689 }, -- Heavy Clefthoof Vest
{ 2, 28204 }, -- Tunic of Assassination
{ 3, 31972 }, -- Merciless Gladiator's Dragonhide Tunic
{ 4, 28130 }, -- Gladiator's Dragonhide Tunic
{ 5, 29525 }, -- Primalstrike Vest
{ 6, 28264 }, -- Wastewalker Tunic
{ 7, 23226 }, -- Ghoul Skin Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 30944 }, -- Umberhowl's Collar
{ 2, 32810 }, -- Veteran's Dragonhide Bracers
{ 3, 32814 }, -- Veteran's Leather Bracers
{ 4, 28978 }, -- Marshal's Dragonhide Bracers
{ 5, 28445 }, -- General's Dragonhide Bracers
{ 6, 28988 }, -- Marshal's Leather Bracers
{ 7, 28424 }, -- General's Leather Bracers
{ 8, 29263 }, -- Forestheart Bracers
{ 9, 32647 }, -- Shard-bound Bracers
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 30943 }, -- Verdant Gloves
{ 2, 30341 }, -- Flesh Handler's Gauntlets
{ 3, 31967 }, -- Merciless Gladiator's Dragonhide Gloves
{ 4, 28126 }, -- Gladiator's Dragonhide Gloves
{ 5, 29507 }, -- Windslayer Wraps
{ 6, 29503 }, -- Cobrascale Gloves
{ 7, 27531 }, -- Wastewalker Gloves
{ 8, 28396 }, -- Gloves of the Unbound
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 30942 }, -- Manimal's Cinch
{ 2, 29264 }, -- Tree-Mender's Belt
{ 3, 29247 }, -- Girdle of the Deathdealer
{ 4, 32802 }, -- Veteran's Leather Belt
{ 5, 32798 }, -- Veteran's Dragonhide Belt
{ 6, 28986 }, -- Marshal's Leather Belt
{ 7, 28423 }, -- General's Leather Belt
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 25690 }, -- Heavy Clefthoof Leggings
{ 2, 31544 }, -- Clefthoof Hide Leggings
{ 3, 31969 }, -- Merciless Gladiator's Dragonhide Legguards
{ 4, 30538 }, -- Midnight Legguards
{ 5, 30535 }, -- Forestwalker Kilt
{ 6, 28128 }, -- Gladiator's Dragonhide Legguards
{ 7, 30941 }, -- Ash Tempered Legguards
{ 8, 30257 }, -- Shattrath Leggings
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 25691 }, -- Heavy Clefthoof Boots
{ 2, 28339 }, -- Boots of the Shifting Sands
{ 3, 29265 }, -- Barkchip Boots
{ 4, 32790 }, -- Veteran's Leather Boots
{ 5, 28987 }, -- Marshal's Leather Boots
{ 6, 28422 }, -- General's Leather Boots
{ 7, 29248 }, -- Shadowstep Striders
{ 8, 31532 }, -- Supple Leather Boots
{ 9, 19381 }, -- Boots of the Shadow Flame
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 29815 }, -- Chain of Glowing Tendrils
{ 2, 28168 }, -- Insignia of the Mag'hari Hero
{ 3, 29381 }, -- Choker of Vile Intent
{ 4, 33066 }, -- Veteran's Pendant of Triumph
{ 5, 28244 }, -- Pendant of Triumph
{ 6, 27779 }, -- Bone Chain Necklace
{ 7, 27546 }, -- Traitor's Noose
{ 8, 29335 }, -- Talon Lord's Collar
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 34837 }, -- The 2 Ring
{ 2, 27436 }, -- Iron Band of the Unbreakable
{ 3, 27925 }, -- Ravenclaw Band
{ 4, 24151 }, -- Mok'Nathal Clan Ring
{ 5, 30834 }, -- Shapeshifter's Signet
{ 6, 29384 }, -- Ring of Unyielding Force
{ 7, 33057 }, -- Veteran's Band of Triumph
{ 8, 31919 }, -- Nexus-Prince's Ring of Balance
{ 9, 28553 }, -- Band of the Exorcist
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28121 }, -- Icon of Unyielding Courage
{ 2, 29383 }, -- Bloodlust Brooch
{ 3, 23836 }, -- Goblin Rocket Launcher
{ 4, 23835 }, -- Gnomish Poultryizer
{ 5, 32658 }, -- Badge of Tenacity
{ 6, 13503 }, -- Alchemist's Stone
{ 7, 19406 }, -- Drake Fang Talisman
{ 8, 28288 }, -- Abacus of Violent Odds
{ 9, 23041 }, -- Slayer's Crest
{ 10, 28034 }, -- Hourglass of the Unraveller
{ 11, 27770 }, -- Argussian Compass
{ 12, 13966 }, -- Mark of Tyranny
{ 13, 29181 }, -- Timelapse Shard
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29171 }, -- Earthwarden
{ 2, 32014 }, -- Merciless Gladiator's Maul
{ 3, 28476 }, -- Gladiator's Maul
{ 4, 29359 }, -- Feral Staff of Lashing
{ 5, 31334 }, -- Staff of Natural Fury
{ 6, 27757 }, -- Greatstaff of the Leviathan
{ 7, 27877 }, -- Draenic Wildstaff
{ 8, 28948 }, -- Grand Marshal's Maul
{ 9, 28919 }, -- High Warlord's Maul
{ 10, 30010 }, -- Fleshling Simulation Staff
{ 11, 28325 }, -- Dreamer's Dragonstaff
},
},

{ -- Ranged (Idol)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 32387 }, -- Idol of the Raven Goddess
{ 2, 23198 }, -- Idol of Brutality
{ 3, 28064 }, -- Idol of the Wild
{ 4, 27744 }, -- Idol of Ursoc
{ 5, 33946 }, -- Merciless Gladiator's Idol of Resolve
{ 6, 33945 }, -- Gladiator's Idol of Resolve
},
},

},
}

data["DruidCat"] = {
	name = AL["Druid Cat BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 8345 }, -- Wolfshead Helm
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 25790 }, -- Expedition Scout's Epaulets
{ 2, 27434 }, -- Mantle of Perenolde
{ 3, 27776 }, -- Shoulderpads of Assassination
{ 4, 27797 }, -- Wastewalker Shoulderpads
{ 5, 27995 }, -- Sun-Gilded Shouldercaps
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 31255 }, -- Cloak of the Craft
{ 2, 27878 }, -- Auchenai Death Shroud
{ 3, 24259 }, -- Vengeance Wrap
{ 4, 29382 }, -- Blood Knight War Cloak
{ 5, 28031 }, -- Nomad's Woven Cloak
{ 6, 28032 }, -- Delicate Green Poncho
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 28204 }, -- Tunic of Assassination
{ 2, 29525 }, -- Primalstrike Vest
{ 3, 24396 }, -- Vest of Vengeance
{ 4, 31972 }, -- Merciless Gladiator's Dragonhide Tunic
{ 5, 28264 }, -- Wastewalker Tunic
{ 6, 29340 }, -- Auchenai Monk's Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32647 }, -- Shard-bound Bracers
{ 2, 28171 }, -- Spymistress's Wristguards
{ 3, 32814 }, -- Veteran's Leather Bracers
{ 4, 32810 }, -- Veteran's Dragonhide Bracers
{ 5, 29246 }, -- Nightfall Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 28396 }, -- Gloves of the Unbound
{ 2, 29507 }, -- Windslayer Wraps
{ 3, 25685 }, -- Fel Leather Gloves
{ 4, 27509 }, -- Handgrips of Assassination
{ 5, 27531 }, -- Wastewalker Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 30372 }, -- Socrethar's Girdle
{ 2, 31464 }, -- Naaru Belt of Precision
{ 3, 29247 }, -- Girdle of the Deathdealer
{ 4, 27760 }, -- Dunewind Sash
{ 5, 27911 }, -- Epoch's Whispering Cinch
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 31544 }, -- Clefthoof Hide Leggings
{ 2, 27837 }, -- Wastewalker Leggings
{ 3, 25687 }, -- Fel Leather Leggings
{ 4, 30538 }, -- Midnight Legguards
{ 5, 27908 }, -- Leggings of Assassination
{ 6, 30535 }, -- Forestwalker Kilt
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 25686 }, -- Fel Leather Boots
{ 2, 31288 }, -- The Master's Treads
{ 3, 32790 }, -- Veteran's Leather Boots
{ 4, 29248 }, -- Shadowstep Striders
{ 5, 30939 }, -- Felboar Hide Shoes
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 24114 }, -- Braided Eternium Chain
{ 2, 31275 }, -- Necklace of Trophies
{ 3, 29381 }, -- Choker of Vile Intent
{ 4, 29119 }, -- Haramad's Bargain
{ 5, 27779 }, -- Bone Chain Necklace
{ 6, 19377 }, -- Prestor's Talisman of Connivery
{ 7, 25562 }, -- Earthen Mark of Razing
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 30365 }, -- Overseer's Signet
{ 2, 30834 }, -- Shapeshifter's Signet
{ 3, 31920 }, -- Shaffar's Band of Brutality
{ 4, 27925 }, -- Ravenclaw Band
{ 5, 30860 }, -- Kaylaan's Signet
{ 6, 31077 }, -- Slayer's Mark of the Redemption
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29383 }, -- Bloodlust Brooch
{ 2, 28034 }, -- Hourglass of the Unraveller
{ 3, 32654 }, -- Crystalforged Trinket
{ 4, 23041 }, -- Slayer's Crest
{ 5, 28121 }, -- Icon of Unyielding Courage
{ 6, 19406 }, -- Drake Fang Talisman
{ 7, 29776 }, -- Core of Ar'kelos
{ 8, 28288 }, -- Abacus of Violent Odds
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 31334 }, -- Staff of Natural Fury
{ 2, 32014 }, -- Merciless Gladiator's Maul
{ 3, 28476 }, -- Gladiator's Maul
{ 4, 29359 }, -- Feral Staff of Lashing
{ 5, 29171 }, -- Earthwarden
{ 6, 27877 }, -- Draenic Wildstaff
{ 7, 28325 }, -- Dreamer's Dragonstaff
{ 8, 30010 }, -- Fleshling Simulation Staff
{ 9, 28948 }, -- Grand Marshal's Maul
{ 10, 28919 }, -- High Warlord's Maul
},
},

{ -- Ranged (Idol)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28372 }, -- Idol of Feral Shadows
{ 2, 29390 }, -- Everbloom Idol
{ 3, 32387 }, -- Idol of the Raven Goddess
{ 4, 28064 }, -- Idol of the Wild
},
},

},
}

data["DruidResto"] = {
	name = AL["Druid Restoration BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32479 }, -- Wonderheal XT40 Shades
{ 2, 31988 }, -- Merciless Gladiator's Kodohide Helm
{ 3, 24264 }, -- Whitemend Hood
{ 4, 31376 }, -- Gladiator's Kodohide Helm
{ 5, 32090 }, -- Cowl of Naaru Blessings
{ 6, 28413 }, -- Hallowed Crown
{ 7, 28348 }, -- Moonglade Cowl
{ 8, 29174 }, -- Watcher's Cowl
{ 9, 29505 }, -- Hood of Primal Life
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21874 }, -- Primal Mooncloth Shoulders
{ 2, 31990 }, -- Merciless Gladiator's Kodohide Spaulders
{ 3, 27775 }, -- Hallowed Pauldrons
{ 4, 31378 }, -- Gladiator's Kodohide Spaulders
{ 5, 27433 }, -- Pauldrons of Sufferance
{ 6, 27737 }, -- Moonglade Shoulders
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 31329 }, -- Lifegiving Cloak
{ 2, 22960 }, -- Cloak of Suturing
{ 3, 27946 }, -- Avian Cloak of Feathers
{ 4, 29354 }, -- Light-Touched Stole of Altruism
{ 5, 29375 }, -- Bishop's Cloak
{ 6, 24254 }, -- White Remedy Cape
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21875 }, -- Primal Mooncloth Robe
{ 2, 29522 }, -- Windhawk Hauberk
{ 3, 31991 }, -- Merciless Gladiator's Kodohide Tunic
{ 4, 31379 }, -- Gladiator's Kodohide Tunic
{ 5, 28230 }, -- Hallowed Garments
{ 6, 28202 }, -- Moonglade Robe
{ 7, 27456 }, -- Raiments of Nature's Breath
{ 8, 27506 }, -- Robe of Effervescent Light
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29183 }, -- Bindings of the Timewalker
{ 2, 29523 }, -- Windhawk Bracers
{ 3, 29249 }, -- Bands of the Benevolent
{ 4, 21604 }, -- Bracelets of Royal Redemption
{ 5, 27827 }, -- Lucid Dream Bracers
{ 6, 22495 }, -- Dreamwalker Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 29506 }, -- Gloves of the Living Touch
{ 2, 31987 }, -- Merciless Gladiator's Kodohide Gloves
{ 3, 31375 }, -- Gladiator's Kodohide Gloves
{ 4, 24393 }, -- Bloody Surgeon's Mitts
{ 5, 25791 }, -- Gloves of Preservation
{ 6, 28268 }, -- Natural Mender's Wraps
{ 7, 29327 }, -- Cryo-mitts
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 30036 }, -- Belt of the Long Road
{ 2, 21873 }, -- Primal Mooncloth Belt
{ 3, 29524 }, -- Windhawk Belt
{ 4, 29250 }, -- Cord of Sanctification
{ 5, 31594 }, -- General's Kodohide Belt
{ 6, 27542 }, -- Cord of Belief
{ 7, 28398 }, -- The Sleeper's Cord
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24261 }, -- Whitemend Pants
{ 2, 30543 }, -- Pontifex Kilt
{ 3, 31343 }, -- Kamaei's Cerulean Skirt
{ 4, 31335 }, -- Pants of Living Growth
{ 5, 28218 }, -- Pontiff's Pantaloons of Prophecy
{ 6, 31989 }, -- Merciless Gladiator's Kodohide Legguards
{ 7, 31377 }, -- Gladiator's Kodohide Legguards
{ 8, 29345 }, -- Haramad's Leg Wraps
{ 9, 30532 }, -- Kirin Tor Master's Trousers
{ 10, 27875 }, -- Hallowed Trousers
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 30035 }, -- Boots of the Long Road
{ 2, 27411 }, -- Slippers of Serenity
{ 3, 29251 }, -- Boots of the Pious
{ 4, 25792 }, -- Curate's Boots
{ 5, 31595 }, -- General's Kodohide Boots
{ 6, 28251 }, -- Boots of the Glade-Keeper
{ 7, 27525 }, -- Jeweled Boots of Sanctification
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 30377 }, -- Karja's Medallion
{ 2, 33068 }, -- Veteran's Pendant of Salvation
{ 3, 31691 }, -- Natasha's Guardian Cord
{ 4, 29374 }, -- Necklace of Eternal Hope
{ 5, 23036 }, -- Necklace of Necropsy
{ 6, 28233 }, -- Necklace of Resplendent Hope
{ 7, 21712 }, -- Amulet of the Fallen God
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 27780 }, -- Ring of Fabled Hope
{ 2, 29168 }, -- Ancestral Band
{ 3, 29169 }, -- Ring of Convalescence
{ 4, 31383 }, -- Spiritualist's Mark of the Sha'tar
{ 5, 29373 }, -- Band of Halos
{ 6, 31923 }, -- Band of the Crystalline Void
{ 7, 29814 }, -- Celestial Jewel Ring
{ 8, 29322 }, -- Keeper's Ring of Piety
{ 9, 28259 }, -- Cosmic Lifeband
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29376 }, -- Essence of the Martyr
{ 2, 38288 }, -- Direbrew Hops
{ 3, 25634 }, -- Oshu'gun Relic
{ 4, 23047 }, -- Eye of the Dead
{ 5, 19395 }, -- Rejuvenating Gem
{ 6, 30841 }, -- Lower City Prayerbook
{ 7, 28190 }, -- Scarab of the Infinite Cycle
{ 8, 24390 }, -- Auslese's Light Channeler
},
},

{ -- Onehand
name = format(AL["Onehand"], "2"),
[NORMAL_DIFF] = {
{ 1, 32964 }, -- Merciless Gladiator's Salvation
{ 2, 32451 }, -- Gladiator's Salvation
{ 3, 23556 }, -- Hand of Eternity
{ 4, 29353 }, -- Shockwave Truncheon
{ 5, 31342 }, -- The Ancient Scepter of Sue-Min
{ 6, 29175 }, -- Gavel of Pure Light
{ 7, 28257 }, -- Hammer of the Penitent
{ 8, 28216 }, -- Dathrohan's Ceremonial Hammer
{ 9, 27538 }, -- Lightsworn Hammer
{ 10, 31304 }, -- The Essence Focuser
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 22632 }, -- Atiesh, Greatstaff of the Guardian
{ 2, 27791 }, -- Serpentcrest Life-Staff
{ 3, 29133 }, -- Seer's Cane
{ 4, 28033 }, -- Epoch-Mender
{ 5, 31289 }, -- Staff of Divine Infusion
},
},

{ -- Offhand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29274 }, -- Tears of Heaven
{ 2, 29170 }, -- Windcaller's Orb
{ 3, 32961 }, -- Merciless Gladiator's Reprieve
{ 4, 23048 }, -- Sapphiron's Right Eye
{ 5, 23029 }, -- Noth's Frigid Heart
{ 6, 27477 }, -- Faol's Signet of Cleansing
{ 7, 27714 }, -- Swamplight Lantern
{ 8, 28213 }, -- Lordaeron Medical Guide
{ 9, 31493 }, -- Netherwing Spiritualist's Charm
{ 10, 28387 }, -- Lamp of Peaceful Repose
},
},

{ -- Ranged (Idol)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 27886 }, -- Idol of the Emerald Queen
{ 2, 32387 }, -- Idol of the Raven Goddess
{ 3, 25643 }, -- Harold's Rejuvenating Broach
},
},

},
}

data["HunterBM"] = {
	name = AL["Hunter Beast Mastery BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 28275 }, -- Beast Lord Helm
{ 2, 32474 }, -- Surestrike Goggles v2.0
{ 3, 22438 }, -- Cryptstalker Headpiece
{ 4, 31109 }, -- Stealther's Helmet of Second Sight
{ 5, 31106 }, -- Stalker's Helmet of Second Sight
{ 6, 31281 }, -- Mask of Veiled Death
{ 7, 27414 }, -- Mok'Nathal Beast-Mask
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27801 }, -- Beast Lord Mantle
{ 2, 25790 }, -- Expedition Scout's Epaulets
{ 3, 22439 }, -- Cryptstalker Spaulders
{ 4, 27797 }, -- Wastewalker Shoulderpads
{ 5, 27434 }, -- Mantle of Perenolde
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 24259 }, -- Vengeance Wrap
{ 2, 29382 }, -- Blood Knight War Cloak
{ 3, 27878 }, -- Auchenai Death Shroud
{ 4, 27892 }, -- Cloak of the Inciter
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 28228 }, -- Beast Lord Cuirass
{ 2, 29525 }, -- Primalstrike Vest
{ 3, 29515 }, -- Ebon Netherscale Breastplate
{ 4, 30933 }, -- Hauberk of Karabor
{ 5, 22436 }, -- Cryptstalker Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29527 }, -- Primalstrike Bracers
{ 2, 29246 }, -- Nightfall Wristguards
{ 3, 25697 }, -- Felstalker Bracers
{ 4, 29517 }, -- Ebon Netherscale Bracers
{ 5, 22443 }, -- Cryptstalker Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27474 }, -- Beast Lord Handguards
{ 2, 16463 }, -- Marshal's Chain Grips
{ 3, 16571 }, -- General's Chain Gloves
{ 4, 30951 }, -- Ar'tor's Mainstay
{ 5, 22441 }, -- Cryptstalker Handguards
{ 6, 30003 }, -- Gloves of the Nether-Stalker
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29526 }, -- Primalstrike Belt
{ 2, 27760 }, -- Dunewind Sash
{ 3, 29516 }, -- Ebon Netherscale Belt
{ 4, 25695 }, -- Felstalker Belt
{ 5, 22442 }, -- Cryptstalker Girdle
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 27874 }, -- Beast Lord Leggings
{ 2, 30538 }, -- Midnight Legguards
{ 3, 27837 }, -- Wastewalker Leggings
{ 4, 22437 }, -- Cryptstalker Legguards
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 25686 }, -- Fel Leather Boots
{ 2, 31288 }, -- The Master's Treads
{ 3, 22440 }, -- Cryptstalker Boots
{ 4, 30401 }, -- Farahlite Studded Boots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 29381 }, -- Choker of Vile Intent
{ 2, 19377 }, -- Prestor's Talisman of Connivery
{ 3, 28343 }, -- Jagged Bark Pendant
{ 4, 25562 }, -- Earthen Mark of Razing
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 30860 }, -- Kaylaan's Signet
{ 2, 31077 }, -- Slayer's Mark of the Redemption
{ 3, 23038 }, -- Band of Unnatural Forces
{ 4, 27925 }, -- Ravenclaw Band
{ 5, 30973 }, -- Band of Anguish
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28288 }, -- Abacus of Violent Odds
{ 2, 29383 }, -- Bloodlust Brooch
{ 3, 28034 }, -- Hourglass of the Unraveller
{ 4, 21670 }, -- Badge of the Swarmguard
{ 5, 28041 }, -- Bladefist's Breadth
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 27846 }, -- Claw of the Watcher
{ 2, 30277 }, -- Ripfang Paw
{ 3, 21673 }, -- Silithid Claw
{ 4, 28263 }, -- Stellaris
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28315 }, -- Stormreaver Warblades
{ 2, 29372 }, -- Void-Talon
{ 3, 23242 }, -- Claw of the Frost Wyrm
{ 4, 29121 }, -- Guile of Khoraazi
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28435 }, -- Mooncleaver
{ 2, 27903 }, -- Sonic Spear
{ 3, 29356 }, -- Quantum Blade
{ 4, 23039 }, -- The Eye of Nerub
{ 5, 29329 }, -- Terokk's Quill
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 31986 }, -- Merciless Gladiator's Crossbow of the Phoenix
{ 2, 29351 }, -- Wrathtide Longbow
{ 3, 22812 }, -- Nerubian Slavemaker
{ 4, 29151 }, -- Veteran's Musket
{ 5, 29152 }, -- Marksman's Bow
{ 6, 31323 }, -- Don Santos' Famous Hunting Rifle
{ 7, 31303 }, -- Valanos' Longbow
},
},

},
}

data["HunterMM"] = {
	name = AL["Hunter Marksmanship BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 28275 }, -- Beast Lord Helm
{ 2, 32474 }, -- Surestrike Goggles v2.0
{ 3, 22438 }, -- Cryptstalker Headpiece
{ 4, 31109 }, -- Stealther's Helmet of Second Sight
{ 5, 31106 }, -- Stalker's Helmet of Second Sight
{ 6, 31281 }, -- Mask of Veiled Death
{ 7, 27414 }, -- Mok'Nathal Beast-Mask
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27801 }, -- Beast Lord Mantle
{ 2, 25790 }, -- Expedition Scout's Epaulets
{ 3, 22439 }, -- Cryptstalker Spaulders
{ 4, 27797 }, -- Wastewalker Shoulderpads
{ 5, 27434 }, -- Mantle of Perenolde
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 24259 }, -- Vengeance Wrap
{ 2, 29382 }, -- Blood Knight War Cloak
{ 3, 27878 }, -- Auchenai Death Shroud
{ 4, 27892 }, -- Cloak of the Inciter
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 28228 }, -- Beast Lord Cuirass
{ 2, 29525 }, -- Primalstrike Vest
{ 3, 29515 }, -- Ebon Netherscale Breastplate
{ 4, 30933 }, -- Hauberk of Karabor
{ 5, 22436 }, -- Cryptstalker Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29527 }, -- Primalstrike Bracers
{ 2, 29246 }, -- Nightfall Wristguards
{ 3, 25697 }, -- Felstalker Bracers
{ 4, 29517 }, -- Ebon Netherscale Bracers
{ 5, 22443 }, -- Cryptstalker Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27474 }, -- Beast Lord Handguards
{ 2, 16463 }, -- Marshal's Chain Grips
{ 3, 16571 }, -- General's Chain Gloves
{ 4, 30951 }, -- Ar'tor's Mainstay
{ 5, 22441 }, -- Cryptstalker Handguards
{ 6, 30003 }, -- Gloves of the Nether-Stalker
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29526 }, -- Primalstrike Belt
{ 2, 27760 }, -- Dunewind Sash
{ 3, 29516 }, -- Ebon Netherscale Belt
{ 4, 25695 }, -- Felstalker Belt
{ 5, 22442 }, -- Cryptstalker Girdle
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 27874 }, -- Beast Lord Leggings
{ 2, 30538 }, -- Midnight Legguards
{ 3, 27837 }, -- Wastewalker Leggings
{ 4, 22437 }, -- Cryptstalker Legguards
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 25686 }, -- Fel Leather Boots
{ 2, 31288 }, -- The Master's Treads
{ 3, 22440 }, -- Cryptstalker Boots
{ 4, 30401 }, -- Farahlite Studded Boots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 29381 }, -- Choker of Vile Intent
{ 2, 19377 }, -- Prestor's Talisman of Connivery
{ 3, 28343 }, -- Jagged Bark Pendant
{ 4, 25562 }, -- Earthen Mark of Razing
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 30860 }, -- Kaylaan's Signet
{ 2, 31077 }, -- Slayer's Mark of the Redemption
{ 3, 23038 }, -- Band of Unnatural Forces
{ 4, 27925 }, -- Ravenclaw Band
{ 5, 30973 }, -- Band of Anguish
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28034 }, -- Hourglass of the Unraveller
{ 2, 29383 }, -- Bloodlust Brooch
{ 3, 28288 }, -- Abacus of Violent Odds
{ 4, 21670 }, -- Badge of the Swarmguard
{ 5, 28041 }, -- Bladefist's Breadth
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 27846 }, -- Claw of the Watcher
{ 2, 30277 }, -- Ripfang Paw
{ 3, 21673 }, -- Silithid Claw
{ 4, 28263 }, -- Stellaris
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28315 }, -- Stormreaver Warblades
{ 2, 29372 }, -- Void-Talon
{ 3, 23242 }, -- Claw of the Frost Wyrm
{ 4, 29121 }, -- Guile of Khoraazi
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28435 }, -- Mooncleaver
{ 2, 27903 }, -- Sonic Spear
{ 3, 29356 }, -- Quantum Blade
{ 4, 23039 }, -- The Eye of Nerub
{ 5, 29329 }, -- Terokk's Quill
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 31986 }, -- Merciless Gladiator's Crossbow of the Phoenix
{ 2, 29351 }, -- Wrathtide Longbow
{ 3, 22812 }, -- Nerubian Slavemaker
{ 4, 29151 }, -- Veteran's Musket
{ 5, 29152 }, -- Marksman's Bow
{ 6, 31323 }, -- Don Santos' Famous Hunting Rifle
{ 7, 31303 }, -- Valanos' Longbow
},
},

},
}

data["HunterSV"] = {
	name = AL["Hunter Survival BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 28275 }, -- Beast Lord Helm
{ 2, 22438 }, -- Cryptstalker Headpiece
{ 3, 31109 }, -- Stealther's Helmet of Second Sight
{ 4, 31106 }, -- Stalker's Helmet of Second Sight
{ 5, 27414 }, -- Mok'Nathal Beast-Mask
{ 6, 32474 }, -- Surestrike Goggles v2.0
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27801 }, -- Beast Lord Mantle
{ 2, 25790 }, -- Expedition Scout's Epaulets
{ 3, 22439 }, -- Cryptstalker Spaulders
{ 4, 27797 }, -- Wastewalker Shoulderpads
{ 5, 27434 }, -- Mantle of Perenolde
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 29382 }, -- Blood Knight War Cloak
{ 2, 24259 }, -- Vengeance Wrap
{ 3, 31255 }, -- Cloak of the Craft
{ 4, 27878 }, -- Auchenai Death Shroud
{ 5, 27892 }, -- Cloak of the Inciter
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 28228 }, -- Beast Lord Cuirass
{ 2, 29525 }, -- Primalstrike Vest
{ 3, 30933 }, -- Hauberk of Karabor
{ 4, 22436 }, -- Cryptstalker Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 25697 }, -- Felstalker Bracers
{ 2, 29246 }, -- Nightfall Wristguards
{ 3, 29527 }, -- Primalstrike Bracers
{ 4, 22443 }, -- Cryptstalker Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27474 }, -- Beast Lord Handguards
{ 2, 30951 }, -- Ar'tor's Mainstay
{ 3, 16463 }, -- Marshal's Chain Grips
{ 4, 16571 }, -- General's Chain Gloves
{ 5, 22441 }, -- Cryptstalker Handguards
{ 6, 30003 }, -- Gloves of the Nether-Stalker
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 27760 }, -- Dunewind Sash
{ 2, 29526 }, -- Primalstrike Belt
{ 3, 25695 }, -- Felstalker Belt
{ 4, 22442 }, -- Cryptstalker Girdle
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 27837 }, -- Wastewalker Leggings
{ 2, 27874 }, -- Beast Lord Leggings
{ 3, 28219 }, -- Emerald-Scale Greaves
{ 4, 27430 }, -- Scaled Greaves of Patience
{ 5, 22437 }, -- Cryptstalker Legguards
{ 6, 30538 }, -- Midnight Legguards
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 29262 }, -- Boots of the Endless Hunt
{ 2, 31288 }, -- The Master's Treads
{ 3, 22440 }, -- Cryptstalker Boots
{ 4, 25686 }, -- Fel Leather Boots
{ 5, 30401 }, -- Farahlite Studded Boots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28343 }, -- Jagged Bark Pendant
{ 2, 19377 }, -- Prestor's Talisman of Connivery
{ 3, 29381 }, -- Choker of Vile Intent
{ 4, 25562 }, -- Earthen Mark of Razing
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 31326 }, -- Truestrike Ring
{ 2, 22961 }, -- Band of Reanimation
{ 3, 27925 }, -- Ravenclaw Band
{ 4, 31277 }, -- Pathfinder's Band
{ 5, 30860 }, -- Kaylaan's Signet
{ 6, 31077 }, -- Slayer's Mark of the Redemption
{ 7, 30973 }, -- Band of Anguish
{ 8, 23038 }, -- Band of Unnatural Forces
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28034 }, -- Hourglass of the Unraveller
{ 2, 29383 }, -- Bloodlust Brooch
{ 3, 28288 }, -- Abacus of Violent Odds
{ 4, 21670 }, -- Badge of the Swarmguard
{ 5, 28041 }, -- Bladefist's Breadth
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28263 }, -- Stellaris
{ 2, 29121 }, -- Guile of Khoraazi
{ 3, 27846 }, -- Claw of the Watcher
{ 4, 30277 }, -- Ripfang Paw
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 32781 }, -- Talon of Anzu
{ 2, 29372 }, -- Void-Talon
{ 3, 28315 }, -- Stormreaver Warblades
{ 4, 23242 }, -- Claw of the Frost Wyrm
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28435 }, -- Mooncleaver
{ 2, 27903 }, -- Sonic Spear
{ 3, 29356 }, -- Quantum Blade
{ 4, 23039 }, -- The Eye of Nerub
{ 5, 29329 }, -- Terokk's Quill
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 29351 }, -- Wrathtide Longbow
{ 2, 29151 }, -- Veteran's Musket
{ 3, 29152 }, -- Marksman's Bow
{ 4, 31986 }, -- Merciless Gladiator's Crossbow of the Phoenix
{ 5, 22812 }, -- Nerubian Slavemaker
{ 6, 31323 }, -- Don Santos' Famous Hunting Rifle
{ 7, 31303 }, -- Valanos' Longbow
},
},

},
}

data["MageArc"] = {
	name = AL["Mage Arcane BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 24266 }, -- Spellstrike Hood
{ 2, 32494 }, -- Destruction Holo-gogs
{ 3, 28415 }, -- Hood of Oblivion
{ 4, 28278 }, -- Incanter's Cowl
{ 5, 28193 }, -- Mana-Etched Crown
{ 6, 28169 }, -- Mag'hari Ritualist's Horns
{ 7, 22498 }, -- Frostfire Circlet
{ 8, 19375 }, -- Mish'undare, Circlet of the Mind Flayer
{ 9, 31104 }, -- Evoker's Helmet of Second Sight
{ 10, 30515 }, -- Junior Technician 3rd Grade Goggles
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27994 }, -- Mantle of Three Terrors
{ 2, 27796 }, -- Mana-Etched Spaulders
{ 3, 30925 }, -- Spaulders of the Torn-heart
{ 4, 27778 }, -- Spaulders of Oblivion
{ 5, 22983 }, -- Rime Covered Mantle
{ 6, 22499 }, -- Frostfire Shoulderpads
{ 7, 28075 }, -- Destroyers' Mantle
{ 8, 30514 }, -- Nether Guards
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 23050 }, -- Cloak of the Necropolis
{ 2, 27981 }, -- Sethekk Oracle Cloak
{ 3, 29369 }, -- Shawl of Shifting Probabilities
{ 4, 22731 }, -- Cloak of the Devoured
{ 5, 31140 }, -- Cloak of Entropy
{ 6, 24252 }, -- Cloak of the Black Void
{ 7, 29813 }, -- Cloak of Woven Energy
{ 8, 25777 }, -- Ogre Slayer's Cover
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21848 }, -- Spellfire Robe
{ 2, 31297 }, -- Robe of the Crimson Order
{ 3, 29341 }, -- Auchenai Anchorite's Robe
{ 4, 28342 }, -- Warp Infused Drape
{ 5, 31340 }, -- Will of Edward the Odd
{ 6, 28232 }, -- Robe of Oblivion
{ 7, 22496 }, -- Frostfire Robe
{ 8, 29780 }, -- Kirin Tor Apprentice's Robes
{ 9, 31717 }, -- Shadowcast Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 27462 }, -- Crimson Bracers of Gloom
{ 2, 32655 }, -- Crystalweave Bracers
{ 3, 28411 }, -- General's Silk Cuffs
{ 4, 24250 }, -- Bracers of Havok
{ 5, 28174 }, -- Shattrath Wraps
{ 6, 27746 }, -- Arcanium Signet Bands
{ 7, 29240 }, -- Bands of Negation
{ 8, 23021 }, -- The Soul Harvester's Bindings
{ 9, 30927 }, -- Earthmender's Bracer of Shattering
{ 10, 30520 }, -- Gold-Trimmed Cuffs
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 21847 }, -- Spellfire Gloves
{ 2, 27493 }, -- Gloves of the Deadwatcher
{ 3, 21585 }, -- Dark Storm Gauntlets
{ 4, 27537 }, -- Gloves of Oblivion
{ 5, 29317 }, -- Tempest's Touch
{ 6, 27465 }, -- Mana-Etched Gloves
{ 7, 30924 }, -- Gloves of the High Magus
{ 8, 30930 }, -- Grips of the Void
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21846 }, -- Spellfire Belt
{ 2, 24256 }, -- Girdle of Ruination
{ 3, 29241 }, -- Belt of Depravity
{ 4, 22730 }, -- Eyestalk Waist Cord
{ 5, 31461 }, -- A'dal's Gift
{ 6, 27795 }, -- Sash of Serpentra
{ 7, 30923 }, -- Grom'tor's Bloodied Bandage
{ 8, 29771 }, -- Kirin'Var Journeyman's Belt
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30531 }, -- Breeches of the Occultist
{ 3, 28185 }, -- Khadgar's Kilt of Abjuration
{ 4, 30532 }, -- Kirin Tor Master's Trousers
{ 5, 28338 }, -- Devil-Stitched Leggings
{ 6, 23070 }, -- Leggings of Polarity
{ 7, 30929 }, -- Soothsayer's Kilt
{ 8, 21852 }, -- Netherweave Pants
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 27821 }, -- Extravagant Boots of Malice
{ 2, 28406 }, -- Sigil-Laced Boots
{ 3, 29258 }, -- Boots of Ethereal Manipulation
{ 4, 28179 }, -- Shattrath Jumpers
{ 5, 22500 }, -- Frostfire Sandals
{ 6, 29242 }, -- Boots of Blasphemy
{ 7, 30519 }, -- Boots of the Nexus Warden
{ 8, 30398 }, -- Boots of the Beneficent
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 27758 }, -- Hydra-fang Necklace
{ 3, 31338 }, -- Charlotte's Ivy
{ 4, 21608 }, -- Amulet of Vek'nilash
{ 5, 29368 }, -- Manasurge Pendant
{ 6, 23057 }, -- Gem of Trapped Innocents
{ 7, 18814 }, -- Choker of the Fire Lord
{ 8, 31692 }, -- Natasha's Ember Necklace
{ 9, 31178 }, -- Amulet of Unstable Power
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 28227 }, -- Sparking Arcanite Ring
{ 2, 31339 }, -- Lola's Eve
{ 3, 21709 }, -- Ring of the Fallen God
{ 4, 29367 }, -- Ring of Cryptic Dreams
{ 5, 29352 }, -- Cobalt Band of Tyrigosa
{ 6, 29172 }, -- Ashyen's Gift
{ 7, 23062 }, -- Frostfire Ring
{ 8, 29126 }, -- Seer's Signet
{ 9, 28555 }, -- Seal of the Exorcist
{ 10, 31075 }, -- Evoker's Mark of the Redemption
{ 11, 30366 }, -- Manastorm Band
{ 12, 32774 }, -- The Black Pearl
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 31856 }, -- Darkmoon Card: Crusade
{ 2, 29132 }, -- Scryer's Bloodgem
{ 3, 29370 }, -- Icon of the Silver Crescent
{ 4, 27683 }, -- Quagmirran's Eye
{ 5, 19339 }, -- Mind Quickening Gem
{ 6, 19379 }, -- Neltharion's Tear
{ 7, 23046 }, -- The Restrained Essence of Sapphiron
{ 8, 28418 }, -- Shiffar's Nexus-Horn
{ 9, 29179 }, -- Xi'ri's Gift
{ 10, 28040 }, -- Vengeance of the Illidari
{ 11, 25620 }, -- Ancient Crystal Talisman
{ 12, 25619 }, -- Glowing Crystal Insignia
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 23554 }, -- Eternium Runed Blade
{ 2, 30787 }, -- Illidari-Bane Mageblade
{ 3, 29153 }, -- Blade of the Archmage
{ 4, 29155 }, -- Stormcaller
{ 5, 31336 }, -- Blade of Wizardry
{ 6, 27905 }, -- Greatsword of Horrid Dreams
{ 7, 27543 }, -- Starlight Dagger
{ 8, 29185 }, -- Continuum Blade
{ 9, 24453 }, -- Zangartooth Shortblade
{ 10, 31142 }, -- Blade of Trapped Knowledge
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 22589 }, -- Atiesh, Greatstaff of the Guardian
{ 2, 29355 }, -- Terokk's Shadowstaff
{ 3, 29130 }, -- Auchenai Staff
{ 4, 28341 }, -- Warpstaff of Arcanum
{ 5, 27842 }, -- Grand Scepter of the Nexus-Kings
{ 6, 31308 }, -- The Bringer of Death
{ 7, 25760 }, -- Battle Mage's Baton
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29271 }, -- Talisman of Kalecgos
{ 2, 32651 }, -- Crystal Orb of Enlightenment
{ 3, 28412 }, -- Lamp of Peaceful Radiance
{ 4, 28187 }, -- Star-Heart Lamp
{ 5, 23049 }, -- Sapphiron's Left Eye
{ 6, 28260 }, -- Manual of the Nethermancer
{ 7, 27534 }, -- Hortus' Seal of Brilliance
{ 8, 31699 }, -- Imbued Draenethyst Crystal
{ 9, 31731 }, -- Mekeda's Gift
},
},

{ -- Ranged (Wand)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28386 }, -- Nether Core's Control Rod
{ 2, 22820 }, -- Wand of Fates
{ 3, 25939 }, -- Voidfire Wand
{ 4, 29350 }, -- The Black Stalk
{ 5, 22821 }, -- Doomfinger
{ 6, 32872 }, -- Illidari Rod of Discipline
{ 7, 27890 }, -- Wand of the Netherwing
{ 8, 31724 }, -- Arakkoa Divining Rod
{ 9, 30523 }, -- Hotshot Cattle Prod
},
},

},
}

data["Mage Fire"] = {
	name = AL["Mage Fire BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 24266 }, -- Spellstrike Hood
{ 2, 32494 }, -- Destruction Holo-gogs
{ 3, 28415 }, -- Hood of Oblivion
{ 4, 28278 }, -- Incanter's Cowl
{ 5, 28193 }, -- Mana-Etched Crown
{ 6, 28169 }, -- Mag'hari Ritualist's Horns
{ 7, 22498 }, -- Frostfire Circlet
{ 8, 19375 }, -- Mish'undare, Circlet of the Mind Flayer
{ 9, 31104 }, -- Evoker's Helmet of Second Sight
{ 10, 30515 }, -- Junior Technician 3rd Grade Goggles
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 30925 }, -- Spaulders of the Torn-heart
{ 2, 27778 }, -- Spaulders of Oblivion
{ 3, 27796 }, -- Mana-Etched Spaulders
{ 4, 22983 }, -- Rime Covered Mantle
{ 5, 27994 }, -- Mantle of Three Terrors
{ 6, 22499 }, -- Frostfire Shoulderpads
{ 7, 28075 }, -- Destroyers' Mantle
{ 8, 30514 }, -- Nether Guards
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 23050 }, -- Cloak of the Necropolis
{ 2, 22731 }, -- Cloak of the Devoured
{ 3, 27981 }, -- Sethekk Oracle Cloak
{ 4, 31140 }, -- Cloak of Entropy
{ 5, 24252 }, -- Cloak of the Black Void
{ 6, 29369 }, -- Shawl of Shifting Probabilities
{ 7, 29813 }, -- Cloak of Woven Energy
{ 8, 25777 }, -- Ogre Slayer's Cover
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21848 }, -- Spellfire Robe
{ 2, 31297 }, -- Robe of the Crimson Order
{ 3, 29341 }, -- Auchenai Anchorite's Robe
{ 4, 28342 }, -- Warp Infused Drape
{ 5, 31340 }, -- Will of Edward the Odd
{ 6, 28232 }, -- Robe of Oblivion
{ 7, 22496 }, -- Frostfire Robe
{ 8, 29780 }, -- Kirin Tor Apprentice's Robes
{ 9, 31717 }, -- Shadowcast Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32655 }, -- Crystalweave Bracers
{ 2, 24250 }, -- Bracers of Havok
{ 3, 27462 }, -- Crimson Bracers of Gloom
{ 4, 28174 }, -- Shattrath Wraps
{ 5, 27746 }, -- Arcanium Signet Bands
{ 6, 29240 }, -- Bands of Negation
{ 7, 23021 }, -- The Soul Harvester's Bindings
{ 8, 30927 }, -- Earthmender's Bracer of Shattering
{ 9, 30520 }, -- Gold-Trimmed Cuffs
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 21847 }, -- Spellfire Gloves
{ 2, 27493 }, -- Gloves of the Deadwatcher
{ 3, 21585 }, -- Dark Storm Gauntlets
{ 4, 27537 }, -- Gloves of Oblivion
{ 5, 29317 }, -- Tempest's Touch
{ 6, 27465 }, -- Mana-Etched Gloves
{ 7, 30924 }, -- Gloves of the High Magus
{ 8, 30930 }, -- Grips of the Void
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21846 }, -- Spellfire Belt
{ 2, 24256 }, -- Girdle of Ruination
{ 3, 29241 }, -- Belt of Depravity
{ 4, 22730 }, -- Eyestalk Waist Cord
{ 5, 31461 }, -- A'dal's Gift
{ 6, 27795 }, -- Sash of Serpentra
{ 7, 30923 }, -- Grom'tor's Bloodied Bandage
{ 8, 29771 }, -- Kirin'Var Journeyman's Belt
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30531 }, -- Breeches of the Occultist
{ 3, 28185 }, -- Khadgar's Kilt of Abjuration
{ 4, 30532 }, -- Kirin Tor Master's Trousers
{ 5, 28338 }, -- Devil-Stitched Leggings
{ 6, 28212 }, -- Aran's Sorcerous Slacks
{ 7, 23070 }, -- Leggings of Polarity
{ 8, 30929 }, -- Soothsayer's Kilt
{ 9, 21852 }, -- Netherweave Pants
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 27821 }, -- Extravagant Boots of Malice
{ 2, 28406 }, -- Sigil-Laced Boots
{ 3, 28179 }, -- Shattrath Jumpers
{ 4, 22500 }, -- Frostfire Sandals
{ 5, 29242 }, -- Boots of Blasphemy
{ 6, 30519 }, -- Boots of the Nexus Warden
{ 7, 30398 }, -- Boots of the Beneficent
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 27758 }, -- Hydra-fang Necklace
{ 3, 31338 }, -- Charlotte's Ivy
{ 4, 18814 }, -- Choker of the Fire Lord
{ 5, 21608 }, -- Amulet of Vek'nilash
{ 6, 29368 }, -- Manasurge Pendant
{ 7, 23057 }, -- Gem of Trapped Innocents
{ 8, 31692 }, -- Natasha's Ember Necklace
{ 9, 31178 }, -- Amulet of Unstable Power
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 21709 }, -- Ring of the Fallen God
{ 2, 29172 }, -- Ashyen's Gift
{ 3, 28227 }, -- Sparking Arcanite Ring
{ 4, 28555 }, -- Seal of the Exorcist
{ 5, 31339 }, -- Lola's Eve
{ 6, 23062 }, -- Frostfire Ring
{ 7, 29126 }, -- Seer's Signet
{ 8, 23025 }, -- Seal of the Damned
{ 9, 23031 }, -- Band of the Inevitable
{ 10, 23237 }, -- Ring of the Eternal Flame
{ 11, 29352 }, -- Cobalt Band of Tyrigosa
{ 12, 31075 }, -- Evoker's Mark of the Redemption
{ 13, 30366 }, -- Manastorm Band
{ 14, 32774 }, -- The Black Pearl
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 31856 }, -- Darkmoon Card: Crusade
{ 2, 29132 }, -- Scryer's Bloodgem
{ 3, 29370 }, -- Icon of the Silver Crescent
{ 4, 19339 }, -- Mind Quickening Gem
{ 5, 19379 }, -- Neltharion's Tear
{ 6, 27683 }, -- Quagmirran's Eye
{ 7, 23046 }, -- The Restrained Essence of Sapphiron
{ 8, 28418 }, -- Shiffar's Nexus-Horn
{ 9, 29179 }, -- Xi'ri's Gift
{ 10, 28040 }, -- Vengeance of the Illidari
{ 11, 25620 }, -- Ancient Crystal Talisman
{ 12, 25619 }, -- Glowing Crystal Insignia
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 23554 }, -- Eternium Runed Blade
{ 2, 30787 }, -- Illidari-Bane Mageblade
{ 3, 29153 }, -- Blade of the Archmage
{ 4, 29155 }, -- Stormcaller
{ 5, 31336 }, -- Blade of Wizardry
{ 6, 27905 }, -- Greatsword of Horrid Dreams
{ 7, 27543 }, -- Starlight Dagger
{ 8, 29185 }, -- Continuum Blade
{ 9, 24453 }, -- Zangartooth Shortblade
{ 10, 31142 }, -- Blade of Trapped Knowledge
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 22589 }, -- Atiesh, Greatstaff of the Guardian
{ 2, 29355 }, -- Terokk's Shadowstaff
{ 3, 29130 }, -- Auchenai Staff
{ 4, 28341 }, -- Warpstaff of Arcanum
{ 5, 27842 }, -- Grand Scepter of the Nexus-Kings
{ 6, 31308 }, -- The Bringer of Death
{ 7, 25760 }, -- Battle Mage's Baton
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29270 }, -- Flametongue Seal
{ 2, 23049 }, -- Sapphiron's Left Eye
{ 3, 32651 }, -- Crystal Orb of Enlightenment
{ 4, 28412 }, -- Lamp of Peaceful Radiance
{ 5, 28187 }, -- Star-Heart Lamp
{ 6, 28260 }, -- Manual of the Nethermancer
{ 7, 27534 }, -- Hortus' Seal of Brilliance
{ 8, 31699 }, -- Imbued Draenethyst Crystal
{ 9, 31731 }, -- Mekeda's Gift
},
},

{ -- Ranged (Wand)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 22821 }, -- Doomfinger
{ 2, 28386 }, -- Nether Core's Control Rod
{ 3, 22820 }, -- Wand of Fates
{ 4, 32872 }, -- Illidari Rod of Discipline
{ 5, 25939 }, -- Voidfire Wand
{ 6, 29350 }, -- The Black Stalk
{ 7, 27890 }, -- Wand of the Netherwing
{ 8, 31724 }, -- Arakkoa Divining Rod
{ 9, 30523 }, -- Hotshot Cattle Prod
},
},

},
}

data["MageFrost"] = {
	name = AL["Mage Frost BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 24266 }, -- Spellstrike Hood
{ 2, 32494 }, -- Destruction Holo-gogs
{ 3, 28169 }, -- Mag'hari Ritualist's Horns
{ 4, 28415 }, -- Hood of Oblivion
{ 5, 28278 }, -- Incanter's Cowl
{ 6, 28193 }, -- Mana-Etched Crown
{ 7, 22498 }, -- Frostfire Circlet
{ 8, 19375 }, -- Mish'undare, Circlet of the Mind Flayer
{ 9, 31104 }, -- Evoker's Helmet of Second Sight
{ 10, 30515 }, -- Junior Technician 3rd Grade Goggles
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21869 }, -- Frozen Shadoweave Shoulders
{ 2, 30925 }, -- Spaulders of the Torn-heart
{ 3, 27778 }, -- Spaulders of Oblivion
{ 4, 27796 }, -- Mana-Etched Spaulders
{ 5, 22983 }, -- Rime Covered Mantle
{ 6, 27994 }, -- Mantle of Three Terrors
{ 7, 22499 }, -- Frostfire Shoulderpads
{ 8, 28075 }, -- Destroyers' Mantle
{ 9, 30514 }, -- Nether Guards
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 23050 }, -- Cloak of the Necropolis
{ 2, 22731 }, -- Cloak of the Devoured
{ 3, 27981 }, -- Sethekk Oracle Cloak
{ 4, 31140 }, -- Cloak of Entropy
{ 5, 24252 }, -- Cloak of the Black Void
{ 6, 29369 }, -- Shawl of Shifting Probabilities
{ 7, 29813 }, -- Cloak of Woven Energy
{ 8, 25777 }, -- Ogre Slayer's Cover
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21871 }, -- Frozen Shadoweave Robe
{ 2, 31297 }, -- Robe of the Crimson Order
{ 3, 29341 }, -- Auchenai Anchorite's Robe
{ 4, 28342 }, -- Warp Infused Drape
{ 5, 31340 }, -- Will of Edward the Odd
{ 6, 28232 }, -- Robe of Oblivion
{ 7, 22496 }, -- Frostfire Robe
{ 8, 29780 }, -- Kirin Tor Apprentice's Robes
{ 9, 31717 }, -- Shadowcast Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32655 }, -- Crystalweave Bracers
{ 2, 24250 }, -- Bracers of Havok
{ 3, 27462 }, -- Crimson Bracers of Gloom
{ 4, 28174 }, -- Shattrath Wraps
{ 5, 27746 }, -- Arcanium Signet Bands
{ 6, 29240 }, -- Bands of Negation
{ 7, 23021 }, -- The Soul Harvester's Bindings
{ 8, 30927 }, -- Earthmender's Bracer of Shattering
{ 9, 30520 }, -- Gold-Trimmed Cuffs
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27493 }, -- Gloves of the Deadwatcher
{ 2, 21585 }, -- Dark Storm Gauntlets
{ 3, 27537 }, -- Gloves of Oblivion
{ 4, 29317 }, -- Tempest's Touch
{ 5, 27465 }, -- Mana-Etched Gloves
{ 6, 30924 }, -- Gloves of the High Magus
{ 7, 30930 }, -- Grips of the Void
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 24256 }, -- Girdle of Ruination
{ 2, 29241 }, -- Belt of Depravity
{ 3, 22730 }, -- Eyestalk Waist Cord
{ 4, 31461 }, -- A'dal's Gift
{ 5, 27795 }, -- Sash of Serpentra
{ 6, 30923 }, -- Grom'tor's Bloodied Bandage
{ 7, 29771 }, -- Kirin'Var Journeyman's Belt
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30531 }, -- Breeches of the Occultist
{ 3, 28185 }, -- Khadgar's Kilt of Abjuration
{ 4, 30532 }, -- Kirin Tor Master's Trousers
{ 5, 28338 }, -- Devil-Stitched Leggings
{ 6, 23070 }, -- Leggings of Polarity
{ 7, 30929 }, -- Soothsayer's Kilt
{ 8, 21852 }, -- Netherweave Pants
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 21870 }, -- Frozen Shadoweave Boots
{ 2, 27821 }, -- Extravagant Boots of Malice
{ 3, 28406 }, -- Sigil-Laced Boots
{ 4, 28179 }, -- Shattrath Jumpers
{ 5, 22500 }, -- Frostfire Sandals
{ 6, 29242 }, -- Boots of Blasphemy
{ 7, 30519 }, -- Boots of the Nexus Warden
{ 8, 30398 }, -- Boots of the Beneficent
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 27758 }, -- Hydra-fang Necklace
{ 3, 31338 }, -- Charlotte's Ivy
{ 4, 18814 }, -- Choker of the Fire Lord
{ 5, 21608 }, -- Amulet of Vek'nilash
{ 6, 29368 }, -- Manasurge Pendant
{ 7, 23057 }, -- Gem of Trapped Innocents
{ 8, 31692 }, -- Natasha's Ember Necklace
{ 9, 31178 }, -- Amulet of Unstable Power
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 21709 }, -- Ring of the Fallen God
{ 2, 29172 }, -- Ashyen's Gift
{ 3, 28227 }, -- Sparking Arcanite Ring
{ 4, 28555 }, -- Seal of the Exorcist
{ 5, 31339 }, -- Lola's Eve
{ 6, 23062 }, -- Frostfire Ring
{ 7, 29126 }, -- Seer's Signet
{ 8, 23025 }, -- Seal of the Damned
{ 9, 23031 }, -- Band of the Inevitable
{ 10, 29352 }, -- Cobalt Band of Tyrigosa
{ 11, 31075 }, -- Evoker's Mark of the Redemption
{ 12, 30366 }, -- Manastorm Band
{ 13, 32774 }, -- The Black Pearl
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 31856 }, -- Darkmoon Card: Crusade
{ 2, 29132 }, -- Scryer's Bloodgem
{ 3, 29370 }, -- Icon of the Silver Crescent
{ 4, 19339 }, -- Mind Quickening Gem
{ 5, 19379 }, -- Neltharion's Tear
{ 6, 27683 }, -- Quagmirran's Eye
{ 7, 23046 }, -- The Restrained Essence of Sapphiron
{ 8, 28418 }, -- Shiffar's Nexus-Horn
{ 9, 29179 }, -- Xi'ri's Gift
{ 10, 28040 }, -- Vengeance of the Illidari
{ 11, 25620 }, -- Ancient Crystal Talisman
{ 12, 25619 }, -- Glowing Crystal Insignia
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 23554 }, -- Eternium Runed Blade
{ 2, 30787 }, -- Illidari-Bane Mageblade
{ 3, 29153 }, -- Blade of the Archmage
{ 4, 29155 }, -- Stormcaller
{ 5, 31336 }, -- Blade of Wizardry
{ 6, 27905 }, -- Greatsword of Horrid Dreams
{ 7, 27543 }, -- Starlight Dagger
{ 8, 29185 }, -- Continuum Blade
{ 9, 24453 }, -- Zangartooth Shortblade
{ 10, 31142 }, -- Blade of Trapped Knowledge
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 22589 }, -- Atiesh, Greatstaff of the Guardian
{ 2, 29355 }, -- Terokk's Shadowstaff
{ 3, 29130 }, -- Auchenai Staff
{ 4, 28341 }, -- Warpstaff of Arcanum
{ 5, 27842 }, -- Grand Scepter of the Nexus-Kings
{ 6, 31308 }, -- The Bringer of Death
{ 7, 25760 }, -- Battle Mage's Baton
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29269 }, -- Sapphiron's Wing Bone
{ 2, 23049 }, -- Sapphiron's Left Eye
{ 3, 28412 }, -- Lamp of Peaceful Radiance
{ 4, 32651 }, -- Crystal Orb of Enlightenment
{ 5, 28187 }, -- Star-Heart Lamp
{ 6, 28260 }, -- Manual of the Nethermancer
{ 7, 27534 }, -- Hortus' Seal of Brilliance
{ 8, 31699 }, -- Imbued Draenethyst Crystal
{ 9, 31731 }, -- Mekeda's Gift
},
},

{ -- Ranged (Wand)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 22821 }, -- Doomfinger
{ 2, 28386 }, -- Nether Core's Control Rod
{ 3, 22820 }, -- Wand of Fates
{ 4, 32872 }, -- Illidari Rod of Discipline
{ 5, 25939 }, -- Voidfire Wand
{ 6, 29350 }, -- The Black Stalk
{ 7, 27890 }, -- Wand of the Netherwing
{ 8, 31724 }, -- Arakkoa Divining Rod
{ 9, 30523 }, -- Hotshot Cattle Prod
},
},

},
}

data["PalHoly"] = {
	name = AL["Paladin Holy BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32472 }, -- Justicebringer 2000 Specs
{ 2, 24264 }, -- Whitemend Hood
{ 3, 32084 }, -- Helmet of the Steadfast Champion
{ 4, 28413 }, -- Hallowed Crown
{ 5, 28348 }, -- Moonglade Cowl
{ 6, 25820 }, -- Metallic Headband of Simm'onz
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21874 }, -- Primal Mooncloth Shoulders
{ 2, 27775 }, -- Hallowed Pauldrons
{ 3, 27433 }, -- Pauldrons of Sufferance
{ 4, 30925 }, -- Spaulders of the Torn-heart
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 31329 }, -- Lifegiving Cloak
{ 2, 29354 }, -- Light-Touched Stole of Altruism
{ 3, 24254 }, -- White Remedy Cape
{ 4, 29375 }, -- Bishop's Cloak
{ 5, 25805 }, -- Mantle of Vivification
{ 6, 25810 }, -- Vicar's Cloak
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21875 }, -- Primal Mooncloth Robe
{ 2, 29522 }, -- Windhawk Hauberk
{ 3, 28230 }, -- Hallowed Garments
{ 4, 28202 }, -- Moonglade Robe
{ 5, 30298 }, -- Void Slayer's Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29523 }, -- Windhawk Bracers
{ 2, 29183 }, -- Bindings of the Timewalker
{ 3, 23539 }, -- Blessed Bracers
{ 4, 21604 }, -- Bracelets of Royal Redemption
{ 5, 29249 }, -- Bands of the Benevolent
{ 6, 28029 }, -- Goldenvine Wraps
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 29506 }, -- Gloves of the Living Touch
{ 2, 27457 }, -- Life Bearer's Gauntlets
{ 3, 28304 }, -- Prismatic Mittens of Mending
{ 4, 29327 }, -- Cryo-mitts
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21873 }, -- Primal Mooncloth Belt
{ 2, 29524 }, -- Windhawk Belt
{ 3, 29250 }, -- Cord of Sanctification
{ 4, 21582 }, -- Grasp of the Old God
{ 5, 30932 }, -- Akama's Sash
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24261 }, -- Whitemend Pants
{ 2, 30543 }, -- Pontifex Kilt
{ 3, 31343 }, -- Kamaei's Cerulean Skirt
{ 4, 30299 }, -- Starcaller's Plated Legguards
{ 5, 30256 }, -- Pants of the Naaru
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 27411 }, -- Slippers of Serenity
{ 2, 29251 }, -- Boots of the Pious
{ 3, 28221 }, -- Boots of the Watchful Heart
{ 4, 27549 }, -- Wavefury Boots
{ 5, 25792 }, -- Curate's Boots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 31691 }, -- Natasha's Guardian Cord
{ 2, 30377 }, -- Karja's Medallion
{ 3, 29374 }, -- Necklace of Eternal Hope
{ 4, 21712 }, -- Amulet of the Fallen God
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 29169 }, -- Ring of Convalescence
{ 2, 29168 }, -- Ancestral Band
{ 3, 27780 }, -- Ring of Fabled Hope
{ 4, 28259 }, -- Cosmic Lifeband
{ 5, 31383 }, -- Spiritualist's Mark of the Sha'tar
{ 6, 29814 }, -- Celestial Jewel Ring
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29376 }, -- Essence of the Martyr
{ 2, 23047 }, -- Eye of the Dead
{ 3, 30841 }, -- Lower City Prayerbook
{ 4, 19395 }, -- Rejuvenating Gem
{ 5, 28190 }, -- Scarab of the Infinite Cycle
{ 6, 25634 }, -- Oshu'gun Relic
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 23556 }, -- Hand of Eternity
{ 2, 29353 }, -- Shockwave Truncheon
{ 3, 31342 }, -- The Ancient Scepter of Sue-Min
{ 4, 29175 }, -- Gavel of Pure Light
{ 5, 25759 }, -- Mogor's Anointing Club
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29274 }, -- Tears of Heaven
{ 2, 22819 }, -- Shield of Condemnation
{ 3, 23048 }, -- Sapphiron's Right Eye
{ 4, 29170 }, -- Windcaller's Orb
{ 5, 27772 }, -- Stormshield of Renewal
{ 6, 27477 }, -- Faol's Signet of Cleansing
{ 7, 31493 }, -- Netherwing Spiritualist's Charm
},
},

{ -- Ranged (Libram)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 23006 }, -- Libram of Light
{ 2, 28296 }, -- Libram of the Lightbringer
{ 3, 25644 }, -- Blessed Book of Nagrand
},
},

},
}

data["PalProt"] = {
	name = AL["Paladin Protection BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32083 }, -- Faceguard of Determination
{ 2, 33697 }, -- Vengeful Gladiator's Lamellar Helm
{ 3, 32473 }, -- Tankatronic Goggles
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 33699 }, -- Vengeful Gladiator's Lamellar Shoulders
{ 2, 27847 }, -- Fanblade Pauldrons
{ 3, 27739 }, -- Spaulders of the Righteous
{ 4, 30291 }, -- Nexus-Guard's Pauldrons
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 33593 }, -- Slikk's Cloak of Placation
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 34945 }, -- Shattrath Protectorate's Breastplate
{ 2, 34939 }, -- Chestplate of Stoicism
{ 3, 33522 }, -- Chestguard of the Stoic Guardian
{ 4, 33695 }, -- Vengeful Gladiator's Lamellar Chestpiece
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 33516 }, -- Bracers of the Ancient Phalanx
{ 2, 29252 }, -- Bracers of Dignity
{ 3, 23538 }, -- Bracers of the Green Fortress
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 33517 }, -- Bonefist Gauntlets
{ 2, 30741 }, -- Topaz-Studded Battlegrips
{ 3, 25788 }, -- Dauntless Handguards
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 33524 }, -- Girdle of the Protector
{ 2, 33279 }, -- Iron-tusk Girdle
{ 3, 30034 }, -- Belt of the Guardian
{ 4, 34941 }, -- Girdle of the Fearless
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 34946 }, -- Inscribed Legplates of the Aldor
{ 2, 33515 }, -- Unwavering Legguards
{ 3, 34940 }, -- Sunguard Legplates
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 34947 }, -- Blue's Greaves of the Righteous Guardian
{ 2, 33523 }, -- Sabatons of the Righteous Defender
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 33296 }, -- Brooch of Deftness
{ 2, 27792 }, -- Steam-Hinge Chain of Valor
{ 3, 35133 }, -- Guardian's Pendant of Dominance
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 34888 }, -- Ring of the Stalwart Protector
{ 2, 34889 }, -- Fused Nethergon Band
{ 3, 29172 }, -- Ashyen's Gift
{ 4, 28407 }, -- Elementium Band of the Sentry
{ 5, 29323 }, -- Andormu's Tear
{ 6, 28265 }, -- Dath'Remar's Ring of Defense
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29370 }, -- Icon of the Silver Crescent
{ 2, 35693 }, -- Figurine - Empyrean Tortoise
{ 3, 27529 }, -- Figurine of the Colossus
{ 4, 32534 }, -- Brooch of the Immortal King
{ 5, 29387 }, -- Gnomeregan Auto-Blocker 600
{ 6, 31858 }, -- Darkmoon Card: Vengeance
{ 7, 34473 }, -- Commendation of Kael'thas
{ 8, 31859 }, -- Darkmoon Card: Madness
{ 9, 23836 }, -- Goblin Rocket Launcher
{ 10, 23835 }, -- Gnomish Poultryizer
{ 11, 32864 }, -- Commander's Badge
{ 12, 34579 }, -- Battlemaster's Audacity
{ 13, 35700 }, -- Figurine - Crimson Serpent
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 33687 }, -- Vengeful Gladiator's Gavel
{ 2, 34611 }, -- Cudgel of Consecration
{ 3, 29153 }, -- Blade of the Archmage
{ 4, 29155 }, -- Stormcaller
{ 5, 30832 }, -- Gavel of Unearthed Secrets
{ 6, 34670 }, -- Seeker's Gavel
{ 7, 31336 }, -- Blade of Wizardry
{ 8, 32660 }, -- Crystalforged Sword
{ 9, 29185 }, -- Continuum Blade
},
},

{ -- Off Hand (Shield)
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 33755 }, -- Vengeful Gladiator's Shield Wall
{ 2, 33661 }, -- Vengeful Gladiator's Barrier
{ 3, 34676 }, -- Dawnforged Defender
{ 4, 34675 }, -- Sunward Crest
{ 5, 29176 }, -- Crest of the Sha'tar
{ 6, 29266 }, -- Azure-Shield of Coldarra
{ 7, 32652 }, -- Ogri'la Aegis
},
},

{ -- Ranged (Libram)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 29388 }, -- Libram of Repentance
{ 2, 33504 }, -- Libram of Divine Purpose
{ 3, 27917 }, -- Libram of the Eternal Rest
},
},

},
}

data["PalRet"] = {
	name = AL["Paladin Retribution BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32461 }, -- Furious Gizmatic Goggles
{ 2, 32087 }, -- Mask of the Deceiver
{ 3, 31105 }, -- Overlord's Helmet of Second Sight
{ 4, 28182 }, -- Helm of the Claw
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 33173 }, -- Ragesteel Shoulders
{ 2, 27771 }, -- Doomplate Shoulderguards
{ 3, 27434 }, -- Mantle of Perenolde
{ 4, 28865 }, -- High Warlord's Scaled Shoulders
{ 5, 28713 }, -- Grand Marshal's Scaled Shoulders
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 24259 }, -- Vengeance Wrap
{ 2, 27878 }, -- Auchenai Death Shroud
{ 3, 27892 }, -- Cloak of the Inciter
{ 4, 28249 }, -- Capacitus' Cloak of Calibration
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 23522 }, -- Ragesteel Breastplate
{ 2, 28403 }, -- Doomplate Chestguard
{ 3, 24396 }, -- Vest of Vengeance
{ 4, 31548 }, -- Blackened Chestplate
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 23537 }, -- Black Felsteel Bracers
{ 2, 28646 }, -- General's Scaled Bracers
{ 3, 29517 }, -- Ebon Netherscale Bracers
{ 4, 27918 }, -- Bands of Syth
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 30341 }, -- Flesh Handler's Gauntlets
{ 2, 18823 }, -- Aged Core Leather Gloves
{ 3, 29509 }, -- Windstrike Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29247 }, -- Girdle of the Deathdealer
{ 2, 27755 }, -- Girdle of Gallantry
{ 3, 27760 }, -- Dunewind Sash
{ 4, 29516 }, -- Ebon Netherscale Belt
{ 5, 27985 }, -- Deathforge Girdle
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 30257 }, -- Shattrath Leggings
{ 2, 31544 }, -- Clefthoof Hide Leggings
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 25686 }, -- Fel Leather Boots
{ 2, 28176 }, -- Sha'tari Wrought Greaves
{ 3, 27867 }, -- Boots of the Unjust
{ 4, 28318 }, -- Obsidian Clodstompers
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 29381 }, -- Choker of Vile Intent
{ 2, 29119 }, -- Haramad's Bargain
{ 3, 31275 }, -- Necklace of Trophies
{ 4, 31695 }, -- Natasha's Choker
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 30834 }, -- Shapeshifter's Signet
{ 2, 29177 }, -- A'dal's Command
{ 3, 31920 }, -- Shaffar's Band of Brutality
{ 4, 30365 }, -- Overseer's Signet
{ 5, 23038 }, -- Band of Unnatural Forces
{ 6, 31380 }, -- Acrobat's Mark of the Sha'tar
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29383 }, -- Bloodlust Brooch
{ 2, 28034 }, -- Hourglass of the Unraveller
{ 3, 28288 }, -- Abacus of Violent Odds
{ 4, 31856 }, -- Darkmoon Card: Crusade
{ 5, 22954 }, -- Kiss of the Spider
{ 6, 23041 }, -- Slayer's Crest
{ 7, 19406 }, -- Drake Fang Talisman
{ 8, 29776 }, -- Core of Ar'kelos
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28429 }, -- Lionheart Champion
{ 2, 28441 }, -- Deep Thunder
{ 3, 29356 }, -- Quantum Blade
{ 4, 31322 }, -- The Hammer of Destiny
{ 5, 23541 }, -- Khorium Champion
{ 6, 22798 }, -- Might of Menethil
{ 7, 27986 }, -- Crow Wing Reaper
},
},

{ -- Ranged (Libram)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 27484 }, -- Libram of Avengement
{ 2, 22401 }, -- Libram of Hope
{ 3, 23203 }, -- Libram of Fervor
{ 4, 22402 }, -- Libram of Grace
},
},

},
}

data["PriestHoly"] = {
	name = AL["Priest Holy BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32090 }, -- Cowl of Naaru Blessings
{ 2, 24264 }, -- Whitemend Hood
{ 3, 28413 }, -- Hallowed Crown
{ 4, 29174 }, -- Watcher's Cowl
{ 5, 31104 }, -- Evoker's Helmet of Second Sight
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 32585 }, -- Swiftheal Mantle
{ 2, 21874 }, -- Primal Mooncloth Shoulders
{ 3, 27775 }, -- Hallowed Pauldrons
{ 4, 27433 }, -- Pauldrons of Sufferance
{ 5, 28250 }, -- Vestia's Pauldrons of Inner Grace
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 29354 }, -- Light-Touched Stole of Altruism
{ 2, 29375 }, -- Bishop's Cloak
{ 3, 24254 }, -- White Remedy Cape
{ 4, 31329 }, -- Lifegiving Cloak
{ 5, 28373 }, -- Cloak of Scintillating Auras
{ 6, 27789 }, -- Cloak of Whispering Shells
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21875 }, -- Primal Mooncloth Robe
{ 2, 28230 }, -- Hallowed Garments
{ 3, 24397 }, -- Raiments of Divine Authority
{ 4, 27506 }, -- Robe of Effervescent Light
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32584 }, -- Swiftheal Wraps
{ 2, 29183 }, -- Bindings of the Timewalker
{ 3, 29249 }, -- Bands of the Benevolent
{ 4, 28174 }, -- Shattrath Wraps
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27536 }, -- Hallowed Handwraps
{ 2, 24393 }, -- Bloody Surgeon's Mitts
{ 3, 28304 }, -- Prismatic Mittens of Mending
{ 4, 29315 }, -- Gloves of Penitence
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 30036 }, -- Belt of the Long Road
{ 2, 21873 }, -- Primal Mooncloth Belt
{ 3, 29250 }, -- Cord of Sanctification
{ 4, 27542 }, -- Cord of Belief
{ 5, 27843 }, -- Glyph-Lined Sash
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 33585 }, -- Achromic Trousers of the Naaru
{ 2, 30727 }, -- Gilded Trousers of Benediction
{ 3, 30543 }, -- Pontifex Kilt
{ 4, 27875 }, -- Hallowed Trousers
{ 5, 24261 }, -- Whitemend Pants
{ 6, 28185 }, -- Khadgar's Kilt of Abjuration
{ 7, 30256 }, -- Pants of the Naaru
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 30035 }, -- Boots of the Long Road
{ 2, 29251 }, -- Boots of the Pious
{ 3, 27411 }, -- Slippers of Serenity
{ 4, 28179 }, -- Shattrath Jumpers
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 30726 }, -- Archaic Charm of Presence
{ 2, 29374 }, -- Necklace of Eternal Hope
{ 3, 30377 }, -- Karja's Medallion
{ 4, 28233 }, -- Necklace of Resplendent Hope
{ 5, 31691 }, -- Natasha's Guardian Cord
{ 6, 27766 }, -- Swampstone Necklace
{ 7, 28419 }, -- Choker of Fluid Thought
{ 8, 29334 }, -- Sethekk Oracle's Focus
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 29373 }, -- Band of Halos
{ 2, 29168 }, -- Ancestral Band
{ 3, 32535 }, -- Gift of the Talonpriests
{ 4, 31923 }, -- Band of the Crystalline Void
{ 5, 31383 }, -- Spiritualist's Mark of the Sha'tar
{ 6, 29322 }, -- Keeper's Ring of Piety
{ 7, 28259 }, -- Cosmic Lifeband
{ 8, 27780 }, -- Ring of Fabled Hope
{ 9, 29814 }, -- Celestial Jewel Ring
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29376 }, -- Essence of the Martyr
{ 2, 19288 }, -- Darkmoon Card: Blue Dragon
{ 3, 28590 }, -- Ribbon of Sacrifice
{ 4, 28190 }, -- Scarab of the Infinite Cycle
{ 5, 23047 }, -- Eye of the Dead
{ 6, 30841 }, -- Lower City Prayerbook
{ 7, 28370 }, -- Bangle of Endless Blessings
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 30732 }, -- Exodar Life-Staff
{ 2, 23556 }, -- Hand of Eternity
{ 3, 29353 }, -- Shockwave Truncheon
{ 4, 31342 }, -- The Ancient Scepter of Sue-Min
{ 5, 29175 }, -- Gavel of Pure Light
{ 6, 31304 }, -- The Essence Focuser
{ 7, 27538 }, -- Lightsworn Hammer
{ 8, 28216 }, -- Dathrohan's Ceremonial Hammer
{ 9, 27791 }, -- Serpentcrest Life-Staff
{ 10, 28033 }, -- Epoch-Mender
{ 11, 29133 }, -- Seer's Cane
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 33325 }, -- Voodoo Shaker
{ 2, 29170 }, -- Windcaller's Orb
{ 3, 29274 }, -- Tears of Heaven
{ 4, 27477 }, -- Faol's Signet of Cleansing
{ 5, 28213 }, -- Lordaeron Medical Guide
{ 6, 27714 }, -- Swamplight Lantern
{ 7, 28387 }, -- Lamp of Peaceful Repose
},
},

{ -- Ranged (Wand)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 27885 }, -- Soul-Wand of the Aldor
{ 2, 29779 }, -- Rejuvenating Scepter
},
},

},
}

data["PriestShadow"] = {
	name = AL["Priest Shadow BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32494 }, -- Destruction Holo-gogs
{ 2, 24266 }, -- Spellstrike Hood
{ 3, 31104 }, -- Evoker's Helmet of Second Sight
{ 4, 28415 }, -- Hood of Oblivion
{ 5, 28183 }, -- Hydromancer's Headwrap
{ 6, 28169 }, -- Mag'hari Ritualist's Horns
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21869 }, -- Frozen Shadoweave Shoulders
{ 2, 27778 }, -- Spaulders of Oblivion
{ 3, 30925 }, -- Spaulders of the Torn-heart
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 24252 }, -- Cloak of the Black Void
{ 2, 32541 }, -- Terokk's Wisdom
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21871 }, -- Frozen Shadoweave Robe
{ 2, 28232 }, -- Robe of Oblivion
{ 3, 31297 }, -- Robe of the Crimson Order
{ 4, 29341 }, -- Auchenai Anchorite's Robe
{ 5, 28342 }, -- Warp Infused Drape
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 24250 }, -- Bracers of Havok
{ 2, 32655 }, -- Crystalweave Bracers
{ 3, 27746 }, -- Arcanium Signet Bands
{ 4, 28174 }, -- Shattrath Wraps
{ 5, 29240 }, -- Bands of Negation
{ 6, 27462 }, -- Crimson Bracers of Gloom
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 29317 }, -- Tempest's Touch
{ 2, 27889 }, -- Jaedenfire Gloves of Annihilation
{ 3, 21585 }, -- Dark Storm Gauntlets
{ 4, 19407 }, -- Ebony Flame Gloves
{ 5, 27493 }, -- Gloves of the Deadwatcher
{ 6, 27465 }, -- Mana-Etched Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 30038 }, -- Belt of Blasting
{ 2, 24256 }, -- Girdle of Ruination
{ 3, 27843 }, -- Glyph-Lined Sash
{ 4, 31461 }, -- A'dal's Gift
{ 5, 22730 }, -- Eyestalk Waist Cord
{ 6, 29241 }, -- Belt of Depravity
{ 7, 24395 }, -- Mindfire Waistband
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30531 }, -- Breeches of the Occultist
{ 3, 30532 }, -- Kirin Tor Master's Trousers
{ 4, 28185 }, -- Khadgar's Kilt of Abjuration
{ 5, 27948 }, -- Trousers of Oblivion
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 21870 }, -- Frozen Shadoweave Boots
{ 2, 28179 }, -- Shattrath Jumpers
{ 3, 35581 }, -- Rocket Boots Xtreme Lite
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 18814 }, -- Choker of the Fire Lord
{ 2, 33921 }, -- Vindicator's Pendant of Dominance
{ 3, 31693 }, -- Natasha's Arcane Filament
{ 4, 24121 }, -- Chain of the Twilight Owl
{ 5, 24116 }, -- Eye of the Night
{ 6, 31692 }, -- Natasha's Ember Necklace
{ 7, 28134 }, -- Brooch of Heightened Potential
{ 8, 20966 }, -- Jade Pendant of Blasting
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 21709 }, -- Ring of the Fallen God
{ 2, 23031 }, -- Band of the Inevitable
{ 3, 29352 }, -- Cobalt Band of Tyrigosa
{ 4, 32941 }, -- Corruptor's Signet
{ 5, 28555 }, -- Seal of the Exorcist
{ 6, 19434 }, -- Band of Dark Dominion
{ 7, 19147 }, -- Ring of Spell Power
{ 8, 29126 }, -- Seer's Signet
{ 9, 31290 }, -- Band of Dominion
{ 10, 31075 }, -- Evoker's Mark of the Redemption
{ 11, 29172 }, -- Ashyen's Gift
{ 12, 34073 }, -- The Horseman's Signet Ring
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29370 }, -- Icon of the Silver Crescent
{ 2, 31856 }, -- Darkmoon Card: Crusade
{ 3, 27683 }, -- Quagmirran's Eye
{ 4, 23046 }, -- The Restrained Essence of Sapphiron
{ 5, 19379 }, -- Neltharion's Tear
{ 6, 25619 }, -- Glowing Crystal Insignia
{ 7, 25620 }, -- Ancient Crystal Talisman
{ 8, 28223 }, -- Arcanist's Stone
{ 9, 25936 }, -- Terokkar Tablet of Vim
{ 10, 30340 }, -- Starkiller's Bauble
{ 11, 29132 }, -- Scryer's Bloodgem
{ 12, 27922 }, -- Mark of Defiance
{ 13, 27924 }, -- Mark of Defiance
{ 14, 38290 }, -- Dark Iron Smoking Pipe
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 30832 }, -- Gavel of Unearthed Secrets
{ 2, 23554 }, -- Eternium Runed Blade
{ 3, 30723 }, -- Talon of the Tempest
{ 4, 33687 }, -- Vengeful Gladiator's Gavel
{ 5, 32963 }, -- Merciless Gladiator's Gavel
{ 6, 32450 }, -- Gladiator's Gavel
{ 7, 27937 }, -- Sky Breaker
{ 8, 27543 }, -- Starlight Dagger
{ 9, 27868 }, -- Runesong Dagger
{ 10, 27741 }, -- Bleeding Hollow Warhammer
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29272 }, -- Orb of the Soul-Eater
{ 2, 29273 }, -- Khadgar's Knapsack
{ 3, 19309 }, -- Tome of Shadow Force
},
},

{ -- Ranged (Wand)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 32872 }, -- Illidari Rod of Discipline
{ 2, 29350 }, -- The Black Stalk
{ 3, 30859 }, -- Wand of the Seer
{ 4, 28386 }, -- Nether Core's Control Rod
{ 5, 27890 }, -- Wand of the Netherwing
},
},

},
}

data["Rogue"] = {
	name = AL["Rogue BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32478 }, -- Deathblow X11 Goggles
{ 2, 28224 }, -- Wastewalker Helm
{ 3, 32087 }, -- Mask of the Deceiver
{ 4, 28182 }, -- Helm of the Claw
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27797 }, -- Wastewalker Shoulderpads
{ 2, 25790 }, -- Expedition Scout's Epaulets
{ 3, 29148 }, -- Blackened Leather Spaulders
{ 4, 29147 }, -- Talbuk Hide Spaulders
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 24259 }, -- Vengeance Wrap
{ 2, 27878 }, -- Auchenai Death Shroud
{ 3, 29382 }, -- Blood Knight War Cloak
{ 4, 28032 }, -- Delicate Green Poncho
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 28264 }, -- Wastewalker Tunic
{ 2, 29525 }, -- Primalstrike Vest
{ 3, 30933 }, -- Hauberk of Karabor
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32647 }, -- Shard-bound Bracers
{ 2, 29246 }, -- Nightfall Wristguards
{ 3, 29527 }, -- Primalstrike Bracers
{ 4, 28171 }, -- Spymistress's Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 25685 }, -- Fel Leather Gloves
{ 2, 27531 }, -- Wastewalker Gloves
{ 3, 30003 }, -- Gloves of the Nether-Stalker
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29247 }, -- Girdle of the Deathdealer
{ 2, 29526 }, -- Primalstrike Belt
{ 3, 30372 }, -- Socrethar's Girdle
{ 4, 31464 }, -- Naaru Belt of Precision
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 27837 }, -- Wastewalker Leggings
{ 2, 25687 }, -- Fel Leather Leggings
{ 3, 31544 }, -- Clefthoof Hide Leggings
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 25686 }, -- Fel Leather Boots
{ 2, 30939 }, -- Felboar Hide Shoes
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 29381 }, -- Choker of Vile Intent
{ 2, 24114 }, -- Braided Eternium Chain
{ 3, 25562 }, -- Earthen Mark of Razing
{ 4, 19377 }, -- Prestor's Talisman of Connivery
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 31920 }, -- Shaffar's Band of Brutality
{ 2, 30834 }, -- Shapeshifter's Signet
{ 3, 31077 }, -- Slayer's Mark of the Redemption
{ 4, 30860 }, -- Kaylaan's Signet
{ 5, 30973 }, -- Band of Anguish
{ 6, 27925 }, -- Ravenclaw Band
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29383 }, -- Bloodlust Brooch
{ 2, 28288 }, -- Abacus of Violent Odds
{ 3, 23041 }, -- Slayer's Crest
{ 4, 22954 }, -- Kiss of the Spider
{ 5, 28034 }, -- Hourglass of the Unraveller
{ 6, 21670 }, -- Badge of the Swarmguard
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 32052 }, -- Merciless Gladiator's Slicer
{ 2, 28438 }, -- Dragonmaw
{ 3, 28295 }, -- Gladiator's Slicer
{ 4, 31332 }, -- Blinkstrike
{ 5, 29124 }, -- Vindicator's Brand
{ 6, 28312 }, -- Gladiator's Shanker
{ 7, 31331 }, -- The Night Blade
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 32027 }, -- Merciless Gladiator's Quickblade
{ 2, 28307 }, -- Gladiator's Quickblade
{ 3, 28189 }, -- Latro's Shifting Sword
{ 4, 29275 }, -- Searing Sunblade
{ 5, 28310 }, -- Gladiator's Shiv
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 29151 }, -- Veteran's Musket
{ 2, 29152 }, -- Marksman's Bow
{ 3, 30279 }, -- Mama's Insurance
{ 4, 30227 }, -- Mark V's Throwing Star
},
},

},
}

data["ShamanEle"] = {
	name = AL["Shaman Elemental BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32476 }, -- Gadgetstorm Goggles
{ 2, 32086 }, -- Storm Master's Helmet
{ 3, 28415 }, -- Hood of Oblivion
{ 4, 28278 }, -- Incanter's Cowl
{ 5, 24266 }, -- Spellstrike Hood
{ 6, 31330 }, -- Lightning Crown
{ 7, 31107 }, -- Shamanistic Helmet of Second Sight
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 32078 }, -- Pauldrons of Wild Magic
{ 2, 30925 }, -- Spaulders of the Torn-heart
{ 3, 27796 }, -- Mana-Etched Spaulders
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 29369 }, -- Shawl of Shifting Probabilities
{ 2, 27981 }, -- Sethekk Oracle Cloak
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 29519 }, -- Netherstrike Breastplate
{ 2, 29522 }, -- Windhawk Hauberk
{ 3, 28191 }, -- Mana-Etched Vestments
{ 4, 31340 }, -- Will of Edward the Odd
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29521 }, -- Netherstrike Bracers
{ 2, 29523 }, -- Windhawk Bracers
{ 3, 24250 }, -- Bracers of Havok
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27465 }, -- Mana-Etched Gloves
{ 2, 27793 }, -- Earth Mantle Handwraps
{ 3, 31149 }, -- Gloves of Pandemonium
{ 4, 31280 }, -- Thundercaller's Gauntlets
{ 5, 30930 }, -- Grips of the Void
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29520 }, -- Netherstrike Belt
{ 2, 24256 }, -- Girdle of Ruination
{ 3, 29524 }, -- Windhawk Belt
{ 4, 31283 }, -- Sash of Sealed Fate
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30541 }, -- Stormsong Kilt
{ 3, 29142 }, -- Kurenai Kilt
{ 4, 29141 }, -- Tempest Leggings
{ 5, 30709 }, -- Pantaloons of Flaming Wrath
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 28406 }, -- Sigil-Laced Boots
{ 2, 28179 }, -- Shattrath Jumpers
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 31692 }, -- Natasha's Ember Necklace
{ 3, 29333 }, -- Torc of the Sethekk Prophet
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 29126 }, -- Seer's Signet
{ 2, 29367 }, -- Ring of Cryptic Dreams
{ 3, 29352 }, -- Cobalt Band of Tyrigosa
{ 4, 31290 }, -- Band of Dominion
{ 5, 29172 }, -- Ashyen's Gift
{ 6, 28227 }, -- Sparking Arcanite Ring
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29370 }, -- Icon of the Silver Crescent
{ 2, 38290 }, -- Dark Iron Smoking Pipe
{ 3, 27683 }, -- Quagmirran's Eye
{ 4, 29179 }, -- Xi'ri's Gift
{ 5, 29132 }, -- Scryer's Bloodgem
{ 6, 28418 }, -- Shiffar's Nexus-Horn
{ 7, 19379 }, -- Neltharion's Tear
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 32450 }, -- Gladiator's Gavel
{ 2, 23554 }, -- Eternium Runed Blade
{ 3, 30832 }, -- Gavel of Unearthed Secrets
{ 4, 27868 }, -- Runesong Dagger
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29273 }, -- Khadgar's Knapsack
{ 2, 29268 }, -- Mazthoril Honor Shield
{ 3, 31287 }, -- Draenei Honor Guard Shield
{ 4, 23049 }, -- Sapphiron's Left Eye
{ 5, 28412 }, -- Lamp of Peaceful Radiance
},
},

{ -- Ranged (Totem)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28248 }, -- Totem of the Void
{ 2, 23199 }, -- Totem of the Storm
{ 3, 29389 }, -- Totem of the Pulsing Earth
},
},

},
}

data["ShamanEnh"] = {
	name = AL["Shaman Enhancement BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32474 }, -- Surestrike Goggles v2.0
{ 2, 32087 }, -- Mask of the Deceiver
{ 3, 28224 }, -- Wastewalker Helm
{ 4, 28182 }, -- Helm of the Claw
{ 5, 31109 }, -- Stealther's Helmet of Second Sight
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27797 }, -- Wastewalker Shoulderpads
{ 2, 27434 }, -- Mantle of Perenolde
{ 3, 29148 }, -- Blackened Leather Spaulders
{ 4, 29147 }, -- Talbuk Hide Spaulders
{ 5, 25790 }, -- Expedition Scout's Epaulets
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 24259 }, -- Vengeance Wrap
{ 2, 27878 }, -- Auchenai Death Shroud
{ 3, 32665 }, -- Crystalweave Cape
{ 4, 27892 }, -- Cloak of the Inciter
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 29525 }, -- Primalstrike Vest
{ 2, 29515 }, -- Ebon Netherscale Breastplate
{ 3, 30933 }, -- Hauberk of Karabor
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29527 }, -- Primalstrike Bracers
{ 2, 29517 }, -- Ebon Netherscale Bracers
{ 3, 32647 }, -- Shard-bound Bracers
{ 4, 25697 }, -- Felstalker Bracers
{ 5, 28171 }, -- Spymistress's Wristguards
{ 6, 30399 }, -- Nightstalker's Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 25685 }, -- Fel Leather Gloves
{ 2, 27509 }, -- Handgrips of Assassination
{ 3, 27825 }, -- Predatory Gloves
{ 4, 30341 }, -- Flesh Handler's Gauntlets
{ 5, 29503 }, -- Cobrascale Gloves
{ 6, 28396 }, -- Gloves of the Unbound
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29526 }, -- Primalstrike Belt
{ 2, 29516 }, -- Ebon Netherscale Belt
{ 3, 29247 }, -- Girdle of the Deathdealer
{ 4, 27911 }, -- Epoch's Whispering Cinch
{ 5, 31462 }, -- Shattrath's Champion Belt
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 31544 }, -- Clefthoof Hide Leggings
{ 2, 25687 }, -- Fel Leather Leggings
{ 3, 30538 }, -- Midnight Legguards
{ 4, 30257 }, -- Shattrath Leggings
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 25686 }, -- Fel Leather Boots
{ 2, 27867 }, -- Boots of the Unjust
{ 3, 31288 }, -- The Master's Treads
{ 4, 29248 }, -- Shadowstep Striders
{ 5, 30939 }, -- Felboar Hide Shoes
{ 6, 30401 }, -- Farahlite Studded Boots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 29381 }, -- Choker of Vile Intent
{ 2, 31695 }, -- Natasha's Choker
{ 3, 27546 }, -- Traitor's Noose
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 30834 }, -- Shapeshifter's Signet
{ 2, 31920 }, -- Shaffar's Band of Brutality
{ 3, 30860 }, -- Kaylaan's Signet
{ 4, 31380 }, -- Acrobat's Mark of the Sha'tar
{ 5, 29379 }, -- Ring of Arathi Warlords
{ 6, 31077 }, -- Slayer's Mark of the Redemption
{ 7, 28323 }, -- Ring of Umbral Doom
{ 8, 30365 }, -- Overseer's Signet
{ 9, 27925 }, -- Ravenclaw Band
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29383 }, -- Bloodlust Brooch
{ 2, 38287 }, -- Empty Mug of Direbrew
{ 3, 28288 }, -- Abacus of Violent Odds
{ 4, 29776 }, -- Core of Ar'kelos
{ 5, 28034 }, -- Hourglass of the Unraveller
{ 6, 25633 }, -- Uniting Charm
{ 7, 25628 }, -- Ogre Mauler's Badge
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28308 }, -- Gladiator's Cleaver
{ 2, 28438 }, -- Dragonmaw
{ 3, 29348 }, -- The Bladefist
{ 4, 28392 }, -- Reflex Blades
{ 5, 27872 }, -- The Harvester of Souls
{ 6, 31139 }, -- Fist of Reckoning
},
},

{ -- Ranged (Totem)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 27815 }, -- Totem of the Astral Winds
},
},

},
}

data["ShamanResto"] = {
	name = AL["Shaman Restoration BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32475 }, -- Living Replicator Specs
{ 2, 24264 }, -- Whitemend Hood
{ 3, 29508 }, -- Living Dragonscale Helm
{ 4, 27759 }, -- Headdress of the Tides
{ 5, 29174 }, -- Watcher's Cowl
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21874 }, -- Primal Mooncloth Shoulders
{ 2, 27826 }, -- Mantle of the Sea Wolf
{ 3, 27775 }, -- Hallowed Pauldrons
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 31329 }, -- Lifegiving Cloak
{ 2, 24254 }, -- White Remedy Cape
{ 3, 27448 }, -- Cloak of the Everliving
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 29522 }, -- Windhawk Hauberk
{ 2, 21875 }, -- Primal Mooncloth Robe
{ 3, 23527 }, -- Earthpeace Breastplate
{ 4, 30298 }, -- Void Slayer's Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29523 }, -- Windhawk Bracers
{ 2, 29183 }, -- Bindings of the Timewalker
{ 3, 28194 }, -- Primal Surge Bracers
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27806 }, -- Fathomheart Gauntlets
{ 2, 28304 }, -- Prismatic Mittens of Mending
{ 3, 29506 }, -- Gloves of the Living Touch
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29524 }, -- Windhawk Belt
{ 2, 21873 }, -- Primal Mooncloth Belt
{ 3, 29250 }, -- Cord of Sanctification
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24261 }, -- Whitemend Pants
{ 2, 30543 }, -- Pontifex Kilt
{ 3, 31343 }, -- Kamaei's Cerulean Skirt
{ 4, 27875 }, -- Hallowed Trousers
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 27411 }, -- Slippers of Serenity
{ 2, 27549 }, -- Wavefury Boots
{ 3, 27525 }, -- Jeweled Boots of Sanctification
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 32531 }, -- Gezzarak's Fang
{ 2, 31691 }, -- Natasha's Guardian Cord
{ 3, 28233 }, -- Necklace of Resplendent Hope
{ 4, 29374 }, -- Necklace of Eternal Hope
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 32535 }, -- Gift of the Talonpriests
{ 2, 29169 }, -- Ring of Convalescence
{ 3, 29168 }, -- Ancestral Band
{ 4, 28259 }, -- Cosmic Lifeband
{ 5, 31923 }, -- Band of the Crystalline Void
{ 6, 29814 }, -- Celestial Jewel Ring
{ 7, 29373 }, -- Band of Halos
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29376 }, -- Essence of the Martyr
{ 2, 38288 }, -- Direbrew Hops
{ 3, 28190 }, -- Scarab of the Infinite Cycle
{ 4, 21625 }, -- Scarab Brooch
{ 5, 23047 }, -- Eye of the Dead
{ 6, 19395 }, -- Rejuvenating Gem
{ 7, 30841 }, -- Lower City Prayerbook
{ 8, 24390 }, -- Auslese's Light Channeler
{ 9, 25634 }, -- Oshu'gun Relic
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 32451 }, -- Gladiator's Salvation
{ 2, 23556 }, -- Hand of Eternity
{ 3, 29353 }, -- Shockwave Truncheon
{ 4, 31342 }, -- The Ancient Scepter of Sue-Min
{ 5, 29175 }, -- Gavel of Pure Light
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29267 }, -- Light-Bearer's Faith Shield
{ 2, 29274 }, -- Tears of Heaven
{ 3, 22819 }, -- Shield of Condemnation
{ 4, 27477 }, -- Faol's Signet of Cleansing
{ 5, 27772 }, -- Stormshield of Renewal
{ 6, 31292 }, -- Crystal Pulse Shield
},
},

{ -- Ranged (Totem)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 27544 }, -- Totem of Spontaneous Regrowth
{ 2, 22396 }, -- Totem of Life
{ 3, 25645 }, -- Totem of the Plains
},
},

},
}

data["WarlockAff"] = {
	name = AL["Warlock Affliction BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32494 }, -- Destruction Holo-gogs
{ 2, 24266 }, -- Spellstrike Hood
{ 3, 31104 }, -- Evoker's Helmet of Second Sight
{ 4, 28278 }, -- Incanter's Cowl
{ 5, 28415 }, -- Hood of Oblivion
{ 6, 28169 }, -- Mag'hari Ritualist's Horns
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21869 }, -- Frozen Shadoweave Shoulders
{ 2, 22507 }, -- Plagueheart Shoulderpads
{ 3, 27796 }, -- Mana-Etched Spaulders
{ 4, 27994 }, -- Mantle of Three Terrors
{ 5, 30925 }, -- Spaulders of the Torn-heart
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 23050 }, -- Cloak of the Necropolis
{ 2, 27981 }, -- Sethekk Oracle Cloak
{ 3, 22731 }, -- Cloak of the Devoured
{ 4, 31140 }, -- Cloak of Entropy
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21871 }, -- Frozen Shadoweave Robe
{ 2, 31297 }, -- Robe of the Crimson Order
{ 3, 22504 }, -- Plagueheart Robe
{ 4, 29341 }, -- Auchenai Anchorite's Robe
{ 5, 28191 }, -- Mana-Etched Vestments
{ 6, 28232 }, -- Robe of Oblivion
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21186 }, -- Rockfury Bracers
{ 2, 24250 }, -- Bracers of Havok
{ 3, 27462 }, -- Crimson Bracers of Gloom
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 31149 }, -- Gloves of Pandemonium
{ 2, 21585 }, -- Dark Storm Gauntlets
{ 3, 27465 }, -- Mana-Etched Gloves
{ 4, 27537 }, -- Gloves of Oblivion
{ 5, 24450 }, -- Manaspark Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 30038 }, -- Belt of Blasting
{ 2, 24256 }, -- Girdle of Ruination
{ 3, 29241 }, -- Belt of Depravity
{ 4, 22730 }, -- Eyestalk Waist Cord
{ 5, 31461 }, -- A'dal's Gift
{ 6, 27795 }, -- Sash of Serpentra
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30531 }, -- Breeches of the Occultist
{ 3, 23070 }, -- Leggings of Polarity
{ 4, 19133 }, -- Fel Infused Leggings
{ 5, 27948 }, -- Trousers of Oblivion
{ 6, 27907 }, -- Mana-Etched Pantaloons
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 21870 }, -- Frozen Shadoweave Boots
{ 2, 27821 }, -- Extravagant Boots of Malice
{ 3, 28406 }, -- Sigil-Laced Boots
{ 4, 28179 }, -- Shattrath Jumpers
{ 5, 22508 }, -- Plagueheart Sandals
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 27758 }, -- Hydra-fang Necklace
{ 3, 21608 }, -- Amulet of Vek'nilash
{ 4, 23057 }, -- Gem of Trapped Innocents
{ 5, 18814 }, -- Choker of the Fire Lord
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 29172 }, -- Ashyen's Gift
{ 2, 28227 }, -- Sparking Arcanite Ring
{ 3, 28555 }, -- Seal of the Exorcist
{ 4, 29126 }, -- Seer's Signet
{ 5, 21709 }, -- Ring of the Fallen God
{ 6, 23031 }, -- Band of the Inevitable
{ 7, 23025 }, -- Seal of the Damned
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29370 }, -- Icon of the Silver Crescent
{ 2, 27683 }, -- Quagmirran's Eye
{ 3, 29132 }, -- Scryer's Bloodgem
{ 4, 19379 }, -- Neltharion's Tear
{ 5, 23046 }, -- The Restrained Essence of Sapphiron
{ 6, 19337 }, -- The Black Book
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 31336 }, -- Blade of Wizardry
{ 2, 30787 }, -- Illidari-Bane Mageblade
{ 3, 29155 }, -- Stormcaller
{ 4, 29153 }, -- Blade of the Archmage
{ 5, 27905 }, -- Greatsword of Horrid Dreams
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 22630 }, -- Atiesh, Greatstaff of the Guardian
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29273 }, -- Khadgar's Knapsack
{ 2, 29272 }, -- Orb of the Soul-Eater
{ 3, 28412 }, -- Lamp of Peaceful Radiance
{ 4, 23049 }, -- Sapphiron's Left Eye
{ 5, 21597 }, -- Royal Scepter of Vek'lor
},
},

{ -- Ranged (Wand)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 22821 }, -- Doomfinger
{ 2, 29350 }, -- The Black Stalk
{ 3, 22820 }, -- Wand of Fates
{ 4, 28386 }, -- Nether Core's Control Rod
},
},

},
}

data["WarlockDemonology"] = {
	name = AL["Warlock Demonology BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32494 }, -- Destruction Holo-gogs
{ 2, 24266 }, -- Spellstrike Hood
{ 3, 31104 }, -- Evoker's Helmet of Second Sight
{ 4, 28278 }, -- Incanter's Cowl
{ 5, 28415 }, -- Hood of Oblivion
{ 6, 28169 }, -- Mag'hari Ritualist's Horns
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21869 }, -- Frozen Shadoweave Shoulders
{ 2, 22507 }, -- Plagueheart Shoulderpads
{ 3, 27796 }, -- Mana-Etched Spaulders
{ 4, 27994 }, -- Mantle of Three Terrors
{ 5, 30925 }, -- Spaulders of the Torn-heart
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 23050 }, -- Cloak of the Necropolis
{ 2, 27981 }, -- Sethekk Oracle Cloak
{ 3, 22731 }, -- Cloak of the Devoured
{ 4, 31140 }, -- Cloak of Entropy
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21871 }, -- Frozen Shadoweave Robe
{ 2, 31297 }, -- Robe of the Crimson Order
{ 3, 22504 }, -- Plagueheart Robe
{ 4, 29341 }, -- Auchenai Anchorite's Robe
{ 5, 28191 }, -- Mana-Etched Vestments
{ 6, 28232 }, -- Robe of Oblivion
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21186 }, -- Rockfury Bracers
{ 2, 24250 }, -- Bracers of Havok
{ 3, 27462 }, -- Crimson Bracers of Gloom
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 21585 }, -- Dark Storm Gauntlets
{ 2, 31149 }, -- Gloves of Pandemonium
{ 3, 27465 }, -- Mana-Etched Gloves
{ 4, 27537 }, -- Gloves of Oblivion
{ 5, 24450 }, -- Manaspark Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 30038 }, -- Belt of Blasting
{ 2, 24256 }, -- Girdle of Ruination
{ 3, 29241 }, -- Belt of Depravity
{ 4, 22730 }, -- Eyestalk Waist Cord
{ 5, 31461 }, -- A'dal's Gift
{ 6, 27795 }, -- Sash of Serpentra
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30531 }, -- Breeches of the Occultist
{ 3, 23070 }, -- Leggings of Polarity
{ 4, 19133 }, -- Fel Infused Leggings
{ 5, 27948 }, -- Trousers of Oblivion
{ 6, 27907 }, -- Mana-Etched Pantaloons
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 21870 }, -- Frozen Shadoweave Boots
{ 2, 27821 }, -- Extravagant Boots of Malice
{ 3, 28406 }, -- Sigil-Laced Boots
{ 4, 28179 }, -- Shattrath Jumpers
{ 5, 22508 }, -- Plagueheart Sandals
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 27758 }, -- Hydra-fang Necklace
{ 3, 21608 }, -- Amulet of Vek'nilash
{ 4, 23057 }, -- Gem of Trapped Innocents
{ 5, 18814 }, -- Choker of the Fire Lord
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 29172 }, -- Ashyen's Gift
{ 2, 28227 }, -- Sparking Arcanite Ring
{ 3, 28555 }, -- Seal of the Exorcist
{ 4, 29126 }, -- Seer's Signet
{ 5, 21709 }, -- Ring of the Fallen God
{ 6, 23031 }, -- Band of the Inevitable
{ 7, 23025 }, -- Seal of the Damned
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 19337 }, -- The Black Book
{ 2, 29370 }, -- Icon of the Silver Crescent
{ 3, 27683 }, -- Quagmirran's Eye
{ 4, 29132 }, -- Scryer's Bloodgem
{ 5, 19379 }, -- Neltharion's Tear
{ 6, 23046 }, -- The Restrained Essence of Sapphiron
},
},

{ -- Onehand
name = format(AL["Onehand"], "2"),
[NORMAL_DIFF] = {
{ 1, 31336 }, -- Blade of Wizardry
{ 2, 30787 }, -- Illidari-Bane Mageblade
{ 3, 29155 }, -- Stormcaller
{ 4, 29153 }, -- Blade of the Archmage
{ 5, 27905 }, -- Greatsword of Horrid Dreams
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 22630 }, -- Atiesh, Greatstaff of the Guardian
},
},

{ -- Offhand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29273 }, -- Khadgar's Knapsack
{ 2, 29272 }, -- Orb of the Soul-Eater
{ 3, 28412 }, -- Lamp of Peaceful Radiance
{ 4, 23049 }, -- Sapphiron's Left Eye
},
},

{ -- Ranged (Wand)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28386 }, -- Nether Core's Control Rod
{ 2, 22821 }, -- Doomfinger
{ 3, 29350 }, -- The Black Stalk
{ 4, 22820 }, -- Wand of Fates
},
},

},
}

data["WarlockDestruction"] = {
	name = AL["Warlock Destruction BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32494 }, -- Destruction Holo-gogs
{ 2, 24266 }, -- Spellstrike Hood
{ 3, 31104 }, -- Evoker's Helmet of Second Sight
{ 4, 28278 }, -- Incanter's Cowl
{ 5, 28415 }, -- Hood of Oblivion
{ 6, 28169 }, -- Mag'hari Ritualist's Horns
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21869 }, -- Frozen Shadoweave Shoulders
{ 2, 22507 }, -- Plagueheart Shoulderpads
{ 3, 27796 }, -- Mana-Etched Spaulders
{ 4, 27994 }, -- Mantle of Three Terrors
{ 5, 30925 }, -- Spaulders of the Torn-heart
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 23050 }, -- Cloak of the Necropolis
{ 2, 27981 }, -- Sethekk Oracle Cloak
{ 3, 22731 }, -- Cloak of the Devoured
{ 4, 31140 }, -- Cloak of Entropy
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21871 }, -- Frozen Shadoweave Robe
{ 2, 21848 }, -- Spellfire Robe
{ 3, 31297 }, -- Robe of the Crimson Order
{ 4, 22504 }, -- Plagueheart Robe
{ 5, 29341 }, -- Auchenai Anchorite's Robe
{ 6, 28191 }, -- Mana-Etched Vestments
{ 7, 28232 }, -- Robe of Oblivion
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21186 }, -- Rockfury Bracers
{ 2, 24250 }, -- Bracers of Havok
{ 3, 27462 }, -- Crimson Bracers of Gloom
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 21847 }, -- Spellfire Gloves
{ 2, 31149 }, -- Gloves of Pandemonium
{ 3, 21585 }, -- Dark Storm Gauntlets
{ 4, 27465 }, -- Mana-Etched Gloves
{ 5, 27537 }, -- Gloves of Oblivion
{ 6, 24450 }, -- Manaspark Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 30038 }, -- Belt of Blasting
{ 2, 21846 }, -- Spellfire Belt
{ 3, 24256 }, -- Girdle of Ruination
{ 4, 22730 }, -- Eyestalk Waist Cord
{ 5, 31461 }, -- A'dal's Gift
{ 6, 27795 }, -- Sash of Serpentra
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30531 }, -- Breeches of the Occultist
{ 3, 23070 }, -- Leggings of Polarity
{ 4, 19133 }, -- Fel Infused Leggings
{ 5, 27948 }, -- Trousers of Oblivion
{ 6, 27907 }, -- Mana-Etched Pantaloons
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 21870 }, -- Frozen Shadoweave Boots
{ 2, 27821 }, -- Extravagant Boots of Malice
{ 3, 28406 }, -- Sigil-Laced Boots
{ 4, 28179 }, -- Shattrath Jumpers
{ 5, 22508 }, -- Plagueheart Sandals
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 27758 }, -- Hydra-fang Necklace
{ 3, 21608 }, -- Amulet of Vek'nilash
{ 4, 23057 }, -- Gem of Trapped Innocents
{ 5, 18814 }, -- Choker of the Fire Lord
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 29172 }, -- Ashyen's Gift
{ 2, 28227 }, -- Sparking Arcanite Ring
{ 3, 28555 }, -- Seal of the Exorcist
{ 4, 29126 }, -- Seer's Signet
{ 5, 23237 }, -- Ring of the Eternal Flame
{ 6, 21709 }, -- Ring of the Fallen God
{ 7, 23031 }, -- Band of the Inevitable
{ 8, 23025 }, -- Seal of the Damned
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29370 }, -- Icon of the Silver Crescent
{ 2, 27683 }, -- Quagmirran's Eye
{ 3, 29132 }, -- Scryer's Bloodgem
{ 4, 19379 }, -- Neltharion's Tear
{ 5, 23046 }, -- The Restrained Essence of Sapphiron
},
},

{ -- Onehand
name = format(AL["Onehand"], "2"),
[NORMAL_DIFF] = {
{ 1, 31336 }, -- Blade of Wizardry
{ 2, 30787 }, -- Illidari-Bane Mageblade
{ 3, 29155 }, -- Stormcaller
{ 4, 29153 }, -- Blade of the Archmage
{ 5, 27905 }, -- Greatsword of Horrid Dreams
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 22630 }, -- Atiesh, Greatstaff of the Guardian
},
},

{ -- Offhand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29270 }, -- Flametongue Seal
{ 2, 29273 }, -- Khadgar's Knapsack
{ 3, 29272 }, -- Orb of the Soul-Eater
{ 4, 28412 }, -- Lamp of Peaceful Radiance
{ 5, 23049 }, -- Sapphiron's Left Eye
{ 6, 21597 }, -- Royal Scepter of Vek'lor
},
},

{ -- Ranged (Wand)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 22128 }, -- Master Firestone
{ 2, 22821 }, -- Doomfinger
{ 3, 29350 }, -- The Black Stalk
{ 4, 22820 }, -- Wand of Fates
{ 5, 28386 }, -- Nether Core's Control Rod
},
},

},
}

data["WarriorArms"] = {
	name = AL["Warrior Arms BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32461 }, -- Furious Gizmatic Goggles
{ 2, 32087 }, -- Mask of the Deceiver
{ 3, 28224 }, -- Wastewalker Helm
{ 4, 28182 }, -- Helm of the Claw
{ 5, 31105 }, -- Overlord's Helmet of Second Sight
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 33173 }, -- Ragesteel Shoulders
{ 2, 27797 }, -- Wastewalker Shoulderpads
{ 3, 27434 }, -- Mantle of Perenolde
{ 4, 25790 }, -- Expedition Scout's Epaulets
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 24259 }, -- Vengeance Wrap
{ 2, 27878 }, -- Auchenai Death Shroud
{ 3, 23045 }, -- Shroud of Dominion
{ 4, 27892 }, -- Cloak of the Inciter
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 24544 }, -- Gladiator's Plate Chestpiece
{ 2, 23522 }, -- Ragesteel Breastplate
{ 3, 28403 }, -- Doomplate Chestguard
{ 4, 30258 }, -- Chestplate of A'dal
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32818 }, -- Veteran's Plate Bracers
{ 2, 23537 }, -- Black Felsteel Bracers
{ 3, 22936 }, -- Wristguards of Vengeance
{ 4, 28171 }, -- Spymistress's Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 25685 }, -- Fel Leather Gloves
{ 2, 27497 }, -- Doomplate Gauntlets
{ 3, 23520 }, -- Ragesteel Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32805 }, -- Veteran's Plate Belt
{ 2, 27985 }, -- Deathforge Girdle
{ 3, 29247 }, -- Girdle of the Deathdealer
{ 4, 31462 }, -- Shattrath's Champion Belt
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 30538 }, -- Midnight Legguards
{ 2, 25687 }, -- Fel Leather Leggings
{ 3, 30257 }, -- Shattrath Leggings
{ 4, 31544 }, -- Clefthoof Hide Leggings
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 32793 }, -- Veteran's Plate Greaves
{ 2, 32648 }, -- Vortex Walking Boots
{ 3, 25686 }, -- Fel Leather Boots
{ 4, 27867 }, -- Boots of the Unjust
{ 5, 28176 }, -- Sha'tari Wrought Greaves
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 33057 }, -- Veteran's Band of Triumph
{ 2, 29381 }, -- Choker of Vile Intent
{ 3, 31695 }, -- Natasha's Choker
{ 4, 27546 }, -- Traitor's Noose
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 23038 }, -- Band of Unnatural Forces
{ 2, 29379 }, -- Ring of Arathi Warlords
{ 3, 30834 }, -- Shapeshifter's Signet
{ 4, 28323 }, -- Ring of Umbral Doom
{ 5, 31077 }, -- Slayer's Mark of the Redemption
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29383 }, -- Bloodlust Brooch
{ 2, 21670 }, -- Badge of the Swarmguard
{ 3, 28034 }, -- Hourglass of the Unraveller
{ 4, 28288 }, -- Abacus of Violent Odds
{ 5, 23041 }, -- Slayer's Crest
},
},

{ -- Onehand
name = format(AL["Onehand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28438 }, -- Dragonmaw
{ 2, 28437 }, -- Drakefist Hammer
{ 3, 28295 }, -- Gladiator's Slicer
{ 4, 27872 }, -- The Harvester of Souls
{ 5, 29124 }, -- Vindicator's Brand
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28429 }, -- Lionheart Champion
{ 2, 29356 }, -- Quantum Blade
{ 3, 28441 }, -- Deep Thunder
{ 4, 24550 }, -- Gladiator's Greatsword
{ 5, 28428 }, -- Lionheart Blade
},
},

{ -- Offhand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 23542 }, -- Fel Edged Battleaxe
{ 2, 28189 }, -- Latro's Shifting Sword
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 30279 }, -- Mama's Insurance
{ 2, 29152 }, -- Marksman's Bow
{ 3, 29151 }, -- Veteran's Musket
},
},

},
}

data["WarriorFury"] = {
	name = AL["Warrior Fury BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32461 }, -- Furious Gizmatic Goggles
{ 2, 32087 }, -- Mask of the Deceiver
{ 3, 28224 }, -- Wastewalker Helm
{ 4, 28182 }, -- Helm of the Claw
{ 5, 31105 }, -- Overlord's Helmet of Second Sight
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 33173 }, -- Ragesteel Shoulders
{ 2, 27797 }, -- Wastewalker Shoulderpads
{ 3, 27434 }, -- Mantle of Perenolde
{ 4, 25790 }, -- Expedition Scout's Epaulets
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 24259 }, -- Vengeance Wrap
{ 2, 27878 }, -- Auchenai Death Shroud
{ 3, 23045 }, -- Shroud of Dominion
{ 4, 27892 }, -- Cloak of the Inciter
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 24544 }, -- Gladiator's Plate Chestpiece
{ 2, 23522 }, -- Ragesteel Breastplate
{ 3, 28403 }, -- Doomplate Chestguard
{ 4, 30258 }, -- Chestplate of A'dal
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32818 }, -- Veteran's Plate Bracers
{ 2, 23537 }, -- Black Felsteel Bracers
{ 3, 22936 }, -- Wristguards of Vengeance
{ 4, 28171 }, -- Spymistress's Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 25685 }, -- Fel Leather Gloves
{ 2, 27497 }, -- Doomplate Gauntlets
{ 3, 23520 }, -- Ragesteel Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32805 }, -- Veteran's Plate Belt
{ 2, 27985 }, -- Deathforge Girdle
{ 3, 29247 }, -- Girdle of the Deathdealer
{ 4, 31462 }, -- Shattrath's Champion Belt
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 30538 }, -- Midnight Legguards
{ 2, 25687 }, -- Fel Leather Leggings
{ 3, 30257 }, -- Shattrath Leggings
{ 4, 31544 }, -- Clefthoof Hide Leggings
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 32793 }, -- Veteran's Plate Greaves
{ 2, 32648 }, -- Vortex Walking Boots
{ 3, 25686 }, -- Fel Leather Boots
{ 4, 27867 }, -- Boots of the Unjust
{ 5, 28176 }, -- Sha'tari Wrought Greaves
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 33057 }, -- Veteran's Band of Triumph
{ 2, 29381 }, -- Choker of Vile Intent
{ 3, 31695 }, -- Natasha's Choker
{ 4, 27546 }, -- Traitor's Noose
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 23038 }, -- Band of Unnatural Forces
{ 2, 29379 }, -- Ring of Arathi Warlords
{ 3, 30834 }, -- Shapeshifter's Signet
{ 4, 28323 }, -- Ring of Umbral Doom
{ 5, 31077 }, -- Slayer's Mark of the Redemption
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29383 }, -- Bloodlust Brooch
{ 2, 21670 }, -- Badge of the Swarmguard
{ 3, 28034 }, -- Hourglass of the Unraveller
{ 4, 28288 }, -- Abacus of Violent Odds
{ 5, 23041 }, -- Slayer's Crest
},
},

{ -- Onehand
name = format(AL["Onehand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28438 }, -- Dragonmaw
{ 2, 28437 }, -- Drakefist Hammer
{ 3, 28295 }, -- Gladiator's Slicer
{ 4, 27872 }, -- The Harvester of Souls
{ 5, 29124 }, -- Vindicator's Brand
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28429 }, -- Lionheart Champion
{ 2, 29356 }, -- Quantum Blade
{ 3, 28441 }, -- Deep Thunder
{ 4, 24550 }, -- Gladiator's Greatsword
{ 5, 28428 }, -- Lionheart Blade
},
},

{ -- Offhand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 23542 }, -- Fel Edged Battleaxe
{ 2, 28189 }, -- Latro's Shifting Sword
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 30279 }, -- Mama's Insurance
{ 2, 29152 }, -- Marksman's Bow
{ 3, 29151 }, -- Veteran's Musket
},
},

},
}

data["WarriorProtection"] = {
	name = AL["Warrior Protection BiS"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 32473 }, -- Tankatronic Goggles
{ 2, 28180 }, -- Myrmidon's Headdress
{ 3, 23519 }, -- Felsteel Helm
{ 4, 27408 }, -- Hope Bearer Helm
{ 5, 28350 }, -- Warhelm of the Bold
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 35411 }, -- Savage Plate Shoulders
{ 2, 27847 }, -- Fanblade Pauldrons
{ 3, 32073 }, -- Spaulders of Dementia
{ 4, 27803 }, -- Shoulderguards of the Bold
{ 5, 29316 }, -- Warchief's Mantle
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 27804 }, -- Devilshark Cape
{ 2, 24253 }, -- Cloak of Eternity
{ 3, 28328 }, -- Mithril-Bark Cloak
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 35407 }, -- Savage Plate Chestpiece
{ 2, 28205 }, -- Breastplate of the Bold
{ 3, 28262 }, -- Jade-Skull Breastplate
{ 4, 25819 }, -- Breastplate of the Warbringer
{ 5, 22416 }, -- Dreadnaught Breastplate
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32818 }, -- Veteran's Plate Bracers
{ 2, 28996 }, -- Marshal's Plate Bracers
{ 3, 29463 }, -- Amber Bands of the Aggressor
{ 4, 27459 }, -- Vambraces of Daring
{ 5, 28167 }, -- Sha'tari Wrought Armguards
{ 6, 30225 }, -- Junior Technician 3rd Grade Bracers
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27475 }, -- Gauntlets of the Bold
{ 2, 32072 }, -- Gauntlets of Dissension
{ 3, 23517 }, -- Felsteel Gloves
{ 4, 29134 }, -- Gauntlets of the Chosen
{ 5, 30375 }, -- Gauntlets of the Vanquisher
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 32805 }, -- Veteran's Plate Belt
{ 2, 28995 }, -- Marshal's Plate Belt
{ 3, 30032 }, -- Red Belt of Battle
{ 4, 27672 }, -- Girdle of the Immovable
{ 5, 29238 }, -- Lion's Heart Girdle
{ 6, 31460 }, -- Sha'tari Vindicator's Waistguard
{ 7, 25922 }, -- Fearless Girdle
{ 8, 22422 }, -- Dreadnaught Waistguard
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 29184 }, -- Timewarden's Leggings
{ 2, 30533 }, -- Vanquisher's Legplates
{ 3, 23518 }, -- Felsteel Leggings
{ 4, 27527 }, -- Greaves of the Shatterer
{ 5, 28175 }, -- Mag'hari Warlord's Legplates
{ 6, 29783 }, -- Legguards of the Resolute Defender
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 32793 }, -- Veteran's Plate Greaves
{ 2, 28997 }, -- Marshal's Plate Greaves
{ 3, 30031 }, -- Red Havoc Boots
{ 4, 29239 }, -- Eaglecrest Warboots
{ 5, 28176 }, -- Sha'tari Wrought Greaves
{ 6, 30386 }, -- Bloodguard's Greaves
{ 7, 22420 }, -- Dreadnaught Sabatons
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 33066 }, -- Veteran's Pendant of Triumph
{ 2, 35511 }, -- Hailstone Pendant
{ 3, 29386 }, -- Necklace of the Juggernaut
{ 4, 29336 }, -- Mark of the Ravenguard
{ 5, 30378 }, -- Thalodien's Charm
{ 6, 31696 }, -- Natasha's Battle Chain
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 30834 }, -- Shapeshifter's Signet
{ 2, 27822 }, -- Crystal Band of Valor
{ 3, 33057 }, -- Veteran's Band of Triumph
{ 4, 28553 }, -- Band of the Exorcist
{ 5, 30006 }, -- Wind Trader's Band
{ 6, 31078 }, -- Protector's Mark of the Redemption
{ 7, 28407 }, -- Elementium Band of the Sentry
{ 8, 23059 }, -- Ring of the Dreadnaught
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 23836 }, -- Goblin Rocket Launcher
{ 2, 23835 }, -- Gnomish Poultryizer
{ 3, 27770 }, -- Argussian Compass
{ 4, 29181 }, -- Timelapse Shard
{ 5, 27891 }, -- Adamantine Figurine
{ 6, 30300 }, -- Dabiri's Enigma
{ 7, 28042 }, -- Regal Protectorate
{ 8, 28121 }, -- Icon of Unyielding Courage
{ 9, 29387 }, -- Gnomeregan Auto-Blocker 600
{ 10, 19406 }, -- Drake Fang Talisman
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28189 }, -- Latro's Shifting Sword
{ 2, 29165 }, -- Warbringer
{ 3, 29362 }, -- The Sun Eater
{ 4, 27980 }, -- Terokk's Nightmace
{ 5, 23577 }, -- The Hungering Cold
{ 6, 29156 }, -- Honor's Call
{ 7, 19019 }, -- Thunderfury, Blessed Blade of the Windseeker
{ 8, 31071 }, -- Grom'tor's Charge
},
},

{ -- Offhand (Shield)
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29266 }, -- Azure-Shield of Coldarra
{ 2, 29176 }, -- Crest of the Sha'tar
{ 3, 32652 }, -- Ogri'la Aegis
{ 4, 32082 }, -- The Fel Barrier
{ 5, 28316 }, -- Aegis of the Sunbird
{ 6, 27887 }, -- Platinum Shield of the Valorous
{ 7, 31490 }, -- Netherwing Protector's Shield
{ 8, 23043 }, -- The Face of Death
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 32756 }, -- Gyro-Balanced Khorium Destroyer
{ 2, 32645 }, -- Crystalline Crossbow
{ 3, 32780 }, -- The Boomstick
{ 4, 34622 }, -- Spinesever
{ 5, 27817 }, -- Starbolt Longbow
{ 6, 30227 }, -- Mark V's Throwing Star
{ 7, 32832 }, -- Scout's Throwing Knives
{ 8, 29115 }, -- Consortium Blaster
{ 9, 28258 }, -- Nethershrike
{ 10, 21459 }, -- Crossbow of Imminent Doom
},
},

},
}

