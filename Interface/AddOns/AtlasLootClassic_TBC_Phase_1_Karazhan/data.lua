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

data["DruidBalance_P1"] = {
	name = AL["Druid Balance BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 24266 }, -- Spellstrike Hood
{ 2, 28744 }, -- Uni-Mind Headdress
{ 3, 23828 }, -- Gnomish Power Goggles
{ 4, 29093 }, -- Antlers of Malorne
{ 5, 29761 }, -- Helm of the Fallen Defender
{ 6, 28804 }, -- Collar of Cho'gall
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 29095 }, -- Pauldrons of Malorne
{ 2, 29764 }, -- Pauldrons of the Fallen Defender
{ 3, 27796 }, -- Mana-Etched Spaulders
{ 4, 27778 }, -- Spaulders of Oblivion
{ 5, 27738 }, -- Incanter's Pauldrons
{ 6, 31797 }, -- Elekk Hide Spaulders
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28766 }, -- Ruby Drape of the Mysticant
{ 2, 30735 }, -- Ancient Spellcloak of the Highborne
{ 3, 28797 }, -- Brute Cloak of the Ogre-Magi
{ 4, 27981 }, -- Sethekk Oracle Cloak
{ 5, 28570 }, -- Shadow-Cloak of Dalaran
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21848 }, -- Spellfire Robe
{ 2, 29091 }, -- Chestpiece of Malorne
{ 3, 29753 }, -- Chestguard of the Fallen Defender
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29523 }, -- Windhawk Bracers
{ 2, 24250 }, -- Bracers of Havok
{ 3, 28515 }, -- Bands of Nefarious Deeds
{ 4, 28453 }, -- Bracers of the White Stag
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 21847 }, -- Spellfire Gloves
{ 2, 30725 }, -- Anger-Spark Gloves
{ 3, 28507 }, -- Handwraps of Flowing Thought
{ 4, 28780 }, -- Soul-Eater's Handwraps
{ 5, 29092 }, -- Gloves of Malorne
{ 6, 29758 }, -- Gloves of the Fallen Defender
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21846 }, -- Spellfire Belt
{ 2, 24256 }, -- Girdle of Ruination
{ 3, 28799 }, -- Belt of Divine Inspiration
{ 4, 28654 }, -- Malefic Girdle
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30734 }, -- Leggings of the Seventh Circle
{ 3, 28594 }, -- Trial-Fire Trousers
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 28517 }, -- Boots of Foretelling
{ 2, 28585 }, -- Ruby Slippers
{ 3, 27821 }, -- Extravagant Boots of Malice
{ 4, 28406 }, -- Sigil-Laced Boots
{ 5, 30737 }, -- Gold-Leaf Wildboots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28530 }, -- Brooch of Unquenchable Fury
{ 2, 28762 }, -- Adornment of Stolen Souls
{ 3, 28134 }, -- Brooch of Heightened Potential
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 28793 }, -- Band of Crimson Fury
{ 2, 32385 }, -- Magtheridon's Head
{ 3, 28753 }, -- Ring of Recurrence
{ 4, 29172 }, -- Ashyen's Gift
{ 5, 29287 }, -- Violet Signet of the Archmage
{ 6, 28227 }, -- Sparking Arcanite Ring
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29370 }, -- Icon of the Silver Crescent
{ 2, 27683 }, -- Quagmirran's Eye
{ 3, 29132 }, -- Scryer's Bloodgem
{ 4, 19379 }, -- Neltharion's Tear
{ 5, 28789 }, -- Eye of Magtheridon
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28770 }, -- Nathrezim Mindblade
{ 2, 30723 }, -- Talon of the Tempest
{ 3, 30832 }, -- Gavel of Unearthed Secrets
{ 4, 23554 }, -- Eternium Runed Blade
},
},

{ -- Two Hand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28633 }, -- Staff of Infinite Mysteries
},
},

{ -- Off Hand
name = format(AL["Off Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29271 }, -- Talisman of Kalecgos
{ 2, 28734 }, -- Jewel of Infinite Possibilities
{ 3, 28603 }, -- Talisman of Nightbane
},
},

{ -- Ranged (Idol)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 27518 }, -- Ivory Idol of the Moongoddess
},
},

},
}

data["DruidBear_P1"] = {
	name = AL["Druid Bear BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 29098 }, -- Stag-Helm of Malorne
{ 2, 29761 }, -- Helm of the Fallen Defender
{ 3, 28796 }, -- Malefic Mask of the Shadows
{ 4, 28732 }, -- Cowl of Defiance
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 29100 }, -- Mantle of Malorne
{ 2, 29764 }, -- Pauldrons of the Fallen Defender
{ 3, 28755 }, -- Bladed Shoulderpads of the Merciless
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28660 }, -- Gilded Thorium Cloak
{ 2, 28672 }, -- Drape of the Dark Reavers
{ 3, 28777 }, -- Cloak of the Pit Stalker
{ 4, 28256 }, -- Thoriumweave Cloak
{ 5, 24258 }, -- Resolute Cape
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 29096 }, -- Breastplate of Malorne
{ 2, 29753 }, -- Chestguard of the Fallen Defender
{ 3, 28601 }, -- Chestguard of the Conniver
{ 4, 25689 }, -- Heavy Clefthoof Vest
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 28978 }, -- Marshal's Dragonhide Bracers
{ 2, 28445 }, -- General's Dragonhide Bracers
{ 3, 28988 }, -- Marshal's Leather Bracers
{ 4, 28424 }, -- General's Leather Bracers
{ 5, 30944 }, -- Umberhowl's Collar
{ 6, 28514 }, -- Bracers of Maliciousness
{ 7, 29246 }, -- Nightfall Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 29097 }, -- Gauntlets of Malorne
{ 2, 29758 }, -- Gloves of the Fallen Defender
{ 3, 30644 }, -- Grips of Deftness
{ 4, 28506 }, -- Gloves of Dexterous Manipulation
{ 5, 28776 }, -- Liar's Tongue Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29264 }, -- Tree-Mender's Belt
{ 2, 28828 }, -- Gronn-Stitched Girdle
{ 3, 28750 }, -- Girdle of Treachery
{ 4, 28986 }, -- Marshal's Leather Belt
{ 5, 28423 }, -- General's Leather Belt
{ 6, 29247 }, -- Girdle of the Deathdealer
{ 7, 28976 }, -- Marshal's Dragonhide Belt
{ 8, 28443 }, -- General's Dragonhide Belt
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 29099 }, -- Greaves of Malorne
{ 2, 29767 }, -- Leggings of the Fallen Defender
{ 3, 28741 }, -- Skulker's Greaves
{ 4, 30538 }, -- Midnight Legguards
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 30674 }, -- Zierhut's Lost Treads
{ 2, 28545 }, -- Edgewalker Longboots
{ 3, 28987 }, -- Marshal's Leather Boots
{ 4, 28422 }, -- General's Leather Boots
{ 5, 29265 }, -- Barkchip Boots
{ 6, 25691 }, -- Heavy Clefthoof Boots
{ 7, 28339 }, -- Boots of the Shifting Sands
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28509 }, -- Worgen Claw Necklace
{ 2, 29381 }, -- Choker of Vile Intent
{ 3, 28674 }, -- Saberclaw Talisman
{ 4, 28745 }, -- Mithril Chain of Heroism
{ 5, 29386 }, -- Necklace of the Juggernaut
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 29279 }, -- Violet Signet of the Great Protector
{ 2, 28792 }, -- A'dal's Signet of Defense
{ 3, 32385 }, -- Magtheridon's Head
{ 4, 30834 }, -- Shapeshifter's Signet
{ 5, 29384 }, -- Ring of Unyielding Force
{ 6, 28675 }, -- Shermanar Great-Ring
{ 7, 28757 }, -- Ring of a Thousand Marks
{ 8, 28649 }, -- Garona's Signet Ring
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28830 }, -- Dragonspine Trophy
{ 2, 29383 }, -- Bloodlust Brooch
{ 3, 23836 }, -- Goblin Rocket Launcher
{ 4, 23835 }, -- Gnomish Poultryizer
{ 5, 13503 }, -- Alchemist's Stone
{ 6, 19406 }, -- Drake Fang Talisman
{ 7, 29181 }, -- Timelapse Shard
{ 8, 31113 }, -- Violet Badge
},
},

{ -- Two Hand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28658 }, -- Terestian's Stranglestaff
{ 2, 28476 }, -- Gladiator's Maul
{ 3, 29171 }, -- Earthwarden
},
},

{ -- Ranged (Idol)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 23198 }, -- Idol of Brutality
{ 2, 28064 }, -- Idol of the Wild
},
},

},
}

data["DruidCat_P1"] = {
	name = AL["Druid Cat BiS (Phase 1)"],
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
{ 1, 29100 }, -- Mantle of Malorne
{ 2, 29764 }, -- Pauldrons of the Fallen Defender
{ 3, 27797 }, -- Wastewalker Shoulderpads
{ 4, 28755 }, -- Bladed Shoulderpads of the Merciless
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28672 }, -- Drape of the Dark Reavers
{ 2, 24259 }, -- Vengeance Wrap
{ 3, 31255 }, -- Cloak of the Craft
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 29096 }, -- Breastplate of Malorne
{ 2, 29753 }, -- Chestguard of the Fallen Defender
{ 3, 30730 }, -- Terrorweave Tunic
{ 4, 28601 }, -- Chestguard of the Conniver
{ 5, 29525 }, -- Primalstrike Vest
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29246 }, -- Nightfall Wristguards
{ 2, 28171 }, -- Spymistress's Wristguards
{ 3, 21602 }, -- Qiraji Execution Bracers
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 28506 }, -- Gloves of Dexterous Manipulation
{ 2, 30644 }, -- Grips of Deftness
{ 3, 29507 }, -- Windslayer Wraps
{ 4, 27509 }, -- Handgrips of Assassination
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29247 }, -- Girdle of the Deathdealer
{ 2, 28750 }, -- Girdle of Treachery
{ 3, 28828 }, -- Gronn-Stitched Girdle
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 28741 }, -- Skulker's Greaves
{ 2, 31544 }, -- Clefthoof Hide Leggings
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 28545 }, -- Edgewalker Longboots
{ 2, 25686 }, -- Fel Leather Boots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 24114 }, -- Braided Eternium Chain
{ 2, 29381 }, -- Choker of Vile Intent
{ 3, 29119 }, -- Haramad's Bargain
{ 4, 28509 }, -- Worgen Claw Necklace
{ 5, 28745 }, -- Mithril Chain of Heroism
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 30834 }, -- Shapeshifter's Signet
{ 2, 28649 }, -- Garona's Signet Ring
{ 3, 28791 }, -- Ring of the Recalcitrant
{ 4, 32385 }, -- Magtheridon's Head
{ 5, 28757 }, -- Ring of a Thousand Marks
{ 6, 30738 }, -- Ring of Reciprocity
{ 7, 30365 }, -- Overseer's Signet
{ 8, 29283 }, -- Violet Signet of the Master Assassin
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28830 }, -- Dragonspine Trophy
{ 2, 29383 }, -- Bloodlust Brooch
{ 3, 28034 }, -- Hourglass of the Unraveller
},
},

{ -- Two Hand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28658 }, -- Terestian's Stranglestaff
{ 2, 28476 }, -- Gladiator's Maul
},
},

{ -- Ranged (Idol)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 29390 }, -- Everbloom Idol
{ 2, 28372 }, -- Idol of Feral Shadows
},
},

},
}

data["DruidRestoration_P1"] = {
	name = AL["Druid Restoration BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 24264 }, -- Whitemend Hood
{ 2, 29086 }, -- Crown of Malorne
{ 3, 29761 }, -- Helm of the Fallen Defender
{ 4, 28803 }, -- Cowl of Nature's Breath
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21874 }, -- Primal Mooncloth Shoulders
{ 2, 29089 }, -- Shoulderguards of Malorne
{ 3, 29764 }, -- Pauldrons of the Fallen Defender
{ 4, 28612 }, -- Pauldrons of the Solace-Giver
{ 5, 28647 }, -- Forest Wind Shoulderpads
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28765 }, -- Stainless Cloak of the Pure Hearted
{ 2, 31329 }, -- Lifegiving Cloak
{ 3, 28582 }, -- Red Riding Hood's Cloak
{ 4, 22960 }, -- Cloak of Suturing
{ 5, 27946 }, -- Avian Cloak of Feathers
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21875 }, -- Primal Mooncloth Robe
{ 2, 29087 }, -- Chestguard of Malorne
{ 3, 29753 }, -- Chestguard of the Fallen Defender
{ 4, 28600 }, -- Stonebough Jerkin
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29183 }, -- Bindings of the Timewalker
{ 2, 29523 }, -- Windhawk Bracers
{ 3, 28511 }, -- Bands of Indwelling
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 28521 }, -- Mitts of the Treemender
{ 2, 28508 }, -- Gloves of Saintly Blessings
{ 3, 29090 }, -- Handguards of Malorne
{ 4, 29758 }, -- Gloves of the Fallen Defender
{ 5, 29506 }, -- Gloves of the Living Touch
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21873 }, -- Primal Mooncloth Belt
{ 2, 28655 }, -- Cord of Nature's Sustenance
{ 3, 28652 }, -- Cincture of Will
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 30727 }, -- Gilded Trousers of Benediction
{ 2, 24261 }, -- Whitemend Pants
{ 3, 28591 }, -- Earthsoul Leggings
{ 4, 30543 }, -- Pontifex Kilt
{ 5, 28742 }, -- Pantaloons of Repentance
{ 6, 31343 }, -- Kamaei's Cerulean Skirt
{ 7, 29088 }, -- Legguards of Malorne
{ 8, 29767 }, -- Leggings of the Fallen Defender
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 30737 }, -- Gold-Leaf Wildboots
{ 2, 28752 }, -- Forestlord Striders
{ 3, 28663 }, -- Boots of the Incorrupt
{ 4, 25792 }, -- Curate's Boots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 30726 }, -- Archaic Charm of Presence
{ 2, 28822 }, -- Teeth of Gruul
{ 3, 28609 }, -- Emberspur Talisman
{ 4, 28731 }, -- Shining Chain of the Afterworld
{ 5, 30377 }, -- Karja's Medallion
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 29290 }, -- Violet Signet of the Grand Restorer
{ 2, 28763 }, -- Jade Ring of the Everliving
{ 3, 28790 }, -- Naaru Lightwarden's Band
{ 4, 32385 }, -- Magtheridon's Head
{ 5, 30736 }, -- Ring of Flowing Light
{ 6, 27780 }, -- Ring of Fabled Hope
{ 7, 29168 }, -- Ancestral Band
{ 8, 29169 }, -- Ring of Convalescence
{ 9, 31383 }, -- Spiritualist's Mark of the Sha'tar
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29376 }, -- Essence of the Martyr
{ 2, 25634 }, -- Oshu'gun Relic
{ 3, 28590 }, -- Ribbon of Sacrifice
{ 4, 28727 }, -- Pendant of the Violet Eye
{ 5, 28823 }, -- Eye of Gruul
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28771 }, -- Light's Justice
{ 2, 28522 }, -- Shard of the Virtuous
{ 3, 23556 }, -- Hand of Eternity
{ 4, 29353 }, -- Shockwave Truncheon
},
},

{ -- Two Hand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 30732 }, -- Exodar Life-Staff
{ 2, 28782 }, -- Crystalheart Pulse-Staff
{ 3, 28604 }, -- Nightstaff of the Everliving
{ 4, 22632 }, -- Atiesh, Greatstaff of the Guardian
{ 5, 27791 }, -- Serpentcrest Life-Staff
},
},

{ -- Off Hand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29274 }, -- Tears of Heaven
{ 2, 29170 }, -- Windcaller's Orb
{ 3, 28728 }, -- Aran's Soothing Sapphire
{ 4, 28525 }, -- Signet of Unshakable Faith
},
},

{ -- Ranged (Idol)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 27886 }, -- Idol of the Emerald Queen
},
},

},
}

data["HunterBM_P1"] = {
	name = AL["Hunter Beast Mastery BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 28275 }, -- Beast Lord Helm
{ 2, 29081 }, -- Demon Stalker Greathelm
{ 3, 29759 }, -- Helm of the Fallen Hero
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27801 }, -- Beast Lord Mantle
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 24259 }, -- Vengeance Wrap
{ 2, 28777 }, -- Cloak of the Pit Stalker
{ 3, 28672 }, -- Drape of the Dark Reavers
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 28228 }, -- Beast Lord Cuirass
{ 2, 29525 }, -- Primalstrike Vest
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29246 }, -- Nightfall Wristguards
{ 2, 29527 }, -- Primalstrike Bracers
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27474 }, -- Beast Lord Handguards
{ 2, 28506 }, -- Gloves of Dexterous Manipulation
{ 3, 28827 }, -- Gauntlets of the Dragonslayer
{ 4, 25685 }, -- Fel Leather Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 28828 }, -- Gronn-Stitched Girdle
{ 2, 28750 }, -- Girdle of Treachery
{ 3, 29247 }, -- Girdle of the Deathdealer
{ 4, 29526 }, -- Primalstrike Belt
{ 5, 28656 }, -- Girdle of the Prowler
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 30739 }, -- Scaled Greaves of the Marksman
{ 2, 28741 }, -- Skulker's Greaves
{ 3, 30538 }, -- Midnight Legguards
{ 4, 27874 }, -- Beast Lord Leggings
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 28545 }, -- Edgewalker Longboots
{ 2, 25686 }, -- Fel Leather Boots
{ 3, 28746 }, -- Fiend Slayer Boots
{ 4, 28669 }, -- Rapscallion Boots
{ 5, 29248 }, -- Shadowstep Striders
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 29381 }, -- Choker of Vile Intent
{ 2, 28509 }, -- Worgen Claw Necklace
{ 3, 28674 }, -- Saberclaw Talisman
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 28791 }, -- Ring of the Recalcitrant
{ 2, 32385 }, -- Magtheridon's Head
{ 3, 28757 }, -- Ring of a Thousand Marks
{ 4, 28649 }, -- Garona's Signet Ring
{ 5, 31920 }, -- Shaffar's Band of Brutality
{ 6, 30860 }, -- Kaylaan's Signet
{ 7, 31077 }, -- Slayer's Mark of the Redemption
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28830 }, -- Dragonspine Trophy
{ 2, 29383 }, -- Bloodlust Brooch
{ 3, 28288 }, -- Abacus of Violent Odds
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 27846 }, -- Claw of the Watcher
{ 2, 28524 }, -- Emerald Ripper
{ 3, 28584 }, -- Big Bad Wolf's Paw
},
},

{ -- Off Hand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28572 }, -- Blade of the Unrequited
{ 2, 28315 }, -- Stormreaver Warblades
},
},

{ -- Two Hand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28435 }, -- Mooncleaver
{ 2, 28587 }, -- Legacy
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28772 }, -- Sunfury Bow of the Phoenix
{ 2, 30724 }, -- Barrel-Blade Longrifle
{ 3, 28581 }, -- Wolfslayer Sniper Rifle
{ 4, 28504 }, -- Steelhawk Crossbow
},
},

},
}

data["HunterMM_P1"] = {
	name = AL["Hunter Marksmanship BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 28275 }, -- Beast Lord Helm
{ 2, 29081 }, -- Demon Stalker Greathelm
{ 3, 29759 }, -- Helm of the Fallen Hero
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27801 }, -- Beast Lord Mantle
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 24259 }, -- Vengeance Wrap
{ 2, 28777 }, -- Cloak of the Pit Stalker
{ 3, 28672 }, -- Drape of the Dark Reavers
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 28228 }, -- Beast Lord Cuirass
{ 2, 29525 }, -- Primalstrike Vest
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29527 }, -- Primalstrike Bracers
{ 2, 29246 }, -- Nightfall Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27474 }, -- Beast Lord Handguards
{ 2, 28506 }, -- Gloves of Dexterous Manipulation
{ 3, 28827 }, -- Gauntlets of the Dragonslayer
{ 4, 25685 }, -- Fel Leather Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 28828 }, -- Gronn-Stitched Girdle
{ 2, 29247 }, -- Girdle of the Deathdealer
{ 3, 29526 }, -- Primalstrike Belt
{ 4, 28750 }, -- Girdle of Treachery
{ 5, 28656 }, -- Girdle of the Prowler
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 30739 }, -- Scaled Greaves of the Marksman
{ 2, 28741 }, -- Skulker's Greaves
{ 3, 27874 }, -- Beast Lord Leggings
{ 4, 30538 }, -- Midnight Legguards
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 28545 }, -- Edgewalker Longboots
{ 2, 25686 }, -- Fel Leather Boots
{ 3, 28746 }, -- Fiend Slayer Boots
{ 4, 28669 }, -- Rapscallion Boots
{ 5, 29248 }, -- Shadowstep Striders
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 29381 }, -- Choker of Vile Intent
{ 2, 28509 }, -- Worgen Claw Necklace
{ 3, 28674 }, -- Saberclaw Talisman
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 28791 }, -- Ring of the Recalcitrant
{ 2, 32385 }, -- Magtheridon's Head
{ 3, 28757 }, -- Ring of a Thousand Marks
{ 4, 28649 }, -- Garona's Signet Ring
{ 5, 31920 }, -- Shaffar's Band of Brutality
{ 6, 30860 }, -- Kaylaan's Signet
{ 7, 31077 }, -- Slayer's Mark of the Redemption
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28830 }, -- Dragonspine Trophy
{ 2, 29383 }, -- Bloodlust Brooch
{ 3, 28034 }, -- Hourglass of the Unraveller
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 27846 }, -- Claw of the Watcher
{ 2, 28572 }, -- Blade of the Unrequited
{ 3, 28524 }, -- Emerald Ripper
{ 4, 28584 }, -- Big Bad Wolf's Paw
},
},

{ -- Off Hand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28315 }, -- Stormreaver Warblades
},
},

{ -- Two Hand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28435 }, -- Mooncleaver
{ 2, 28587 }, -- Legacy
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28772 }, -- Sunfury Bow of the Phoenix
{ 2, 30724 }, -- Barrel-Blade Longrifle
{ 3, 28581 }, -- Wolfslayer Sniper Rifle
{ 4, 29351 }, -- Wrathtide Longbow
{ 5, 28504 }, -- Steelhawk Crossbow
},
},

},
}

data["HunterSurv_P1"] = {
	name = AL["Hunter Survival BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 28275 }, -- Beast Lord Helm
{ 2, 29081 }, -- Demon Stalker Greathelm
{ 3, 29759 }, -- Helm of the Fallen Hero
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27801 }, -- Beast Lord Mantle
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28672 }, -- Drape of the Dark Reavers
{ 2, 29382 }, -- Blood Knight War Cloak
{ 3, 28777 }, -- Cloak of the Pit Stalker
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 28228 }, -- Beast Lord Cuirass
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 25697 }, -- Felstalker Bracers
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27474 }, -- Beast Lord Handguards
{ 2, 28506 }, -- Gloves of Dexterous Manipulation
{ 3, 28827 }, -- Gauntlets of the Dragonslayer
{ 4, 25685 }, -- Fel Leather Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 28750 }, -- Girdle of Treachery
{ 2, 27760 }, -- Dunewind Sash
{ 3, 29247 }, -- Girdle of the Deathdealer
{ 4, 28656 }, -- Girdle of the Prowler
{ 5, 28828 }, -- Gronn-Stitched Girdle
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 30739 }, -- Scaled Greaves of the Marksman
{ 2, 28741 }, -- Skulker's Greaves
{ 3, 27837 }, -- Wastewalker Leggings
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 28545 }, -- Edgewalker Longboots
{ 2, 28746 }, -- Fiend Slayer Boots
{ 3, 29248 }, -- Shadowstep Striders
{ 4, 28669 }, -- Rapscallion Boots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28343 }, -- Jagged Bark Pendant
{ 2, 28509 }, -- Worgen Claw Necklace
{ 3, 28674 }, -- Saberclaw Talisman
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 28791 }, -- Ring of the Recalcitrant
{ 2, 32385 }, -- Magtheridon's Head
{ 3, 31277 }, -- Pathfinder's Band
{ 4, 28649 }, -- Garona's Signet Ring
{ 5, 27925 }, -- Ravenclaw Band
{ 6, 28757 }, -- Ring of a Thousand Marks
{ 7, 31920 }, -- Shaffar's Band of Brutality
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28830 }, -- Dragonspine Trophy
{ 2, 29383 }, -- Bloodlust Brooch
{ 3, 28034 }, -- Hourglass of the Unraveller
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28263 }, -- Stellaris
{ 2, 27846 }, -- Claw of the Watcher
{ 3, 28524 }, -- Emerald Ripper
{ 4, 28584 }, -- Big Bad Wolf's Paw
},
},

{ -- Off Hand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28572 }, -- Blade of the Unrequited
},
},

{ -- Two Hand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28587 }, -- Legacy
{ 2, 28435 }, -- Mooncleaver
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 30724 }, -- Barrel-Blade Longrifle
{ 2, 28772 }, -- Sunfury Bow of the Phoenix
{ 3, 29351 }, -- Wrathtide Longbow
{ 4, 28581 }, -- Wolfslayer Sniper Rifle
{ 5, 28504 }, -- Steelhawk Crossbow
},
},

},
}

data["MageArcane_P1"] = {
	name = AL["Mage Arcane BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 24266 }, -- Spellstrike Hood
{ 2, 29076 }, -- Collar of the Aldor
{ 3, 29759 }, -- Helm of the Fallen Hero
{ 4, 28744 }, -- Uni-Mind Headdress
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 29079 }, -- Pauldrons of the Aldor
{ 2, 29762 }, -- Pauldrons of the Fallen Hero
{ 3, 27994 }, -- Mantle of Three Terrors
{ 4, 27796 }, -- Mana-Etched Spaulders
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28766 }, -- Ruby Drape of the Mysticant
{ 2, 28797 }, -- Brute Cloak of the Ogre-Magi
{ 3, 30735 }, -- Ancient Spellcloak of the Highborne
{ 4, 23050 }, -- Cloak of the Necropolis
{ 5, 27981 }, -- Sethekk Oracle Cloak
{ 6, 28570 }, -- Shadow-Cloak of Dalaran
{ 7, 29369 }, -- Shawl of Shifting Probabilities
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21848 }, -- Spellfire Robe
{ 2, 29077 }, -- Vestments of the Aldor
{ 3, 29755 }, -- Chestguard of the Fallen Hero
{ 4, 28602 }, -- Robe of the Elder Scribes
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 27462 }, -- Crimson Bracers of Gloom
{ 2, 28411 }, -- General's Silk Cuffs
{ 3, 28515 }, -- Bands of Nefarious Deeds
{ 4, 28477 }, -- Harbinger Bands
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 21847 }, -- Spellfire Gloves
{ 2, 28507 }, -- Handwraps of Flowing Thought
{ 3, 29080 }, -- Gloves of the Aldor
{ 4, 29756 }, -- Gloves of the Fallen Hero
{ 5, 30725 }, -- Anger-Spark Gloves
{ 6, 28780 }, -- Soul-Eater's Handwraps
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21846 }, -- Spellfire Belt
{ 2, 30673 }, -- Inferno Waist Cord
{ 3, 28799 }, -- Belt of Divine Inspiration
{ 4, 28654 }, -- Malefic Girdle
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30734 }, -- Leggings of the Seventh Circle
{ 3, 29078 }, -- Legwraps of the Aldor
{ 4, 29765 }, -- Leggings of the Fallen Hero
{ 5, 28594 }, -- Trial-Fire Trousers
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 28585 }, -- Ruby Slippers
{ 2, 28517 }, -- Boots of Foretelling
{ 3, 28406 }, -- Sigil-Laced Boots
{ 4, 27821 }, -- Extravagant Boots of Malice
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 28530 }, -- Brooch of Unquenchable Fury
{ 3, 28762 }, -- Adornment of Stolen Souls
{ 4, 31338 }, -- Charlotte's Ivy
{ 5, 27758 }, -- Hydra-fang Necklace
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 28793 }, -- Band of Crimson Fury
{ 2, 32385 }, -- Magtheridon's Head
{ 3, 28227 }, -- Sparking Arcanite Ring
{ 4, 31339 }, -- Lola's Eve
{ 5, 21709 }, -- Ring of the Fallen God
{ 6, 28510 }, -- Spectral Band of Innervation
{ 7, 29287 }, -- Violet Signet of the Archmage
{ 8, 28753 }, -- Ring of Recurrence
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 31856 }, -- Darkmoon Card: Crusade
{ 2, 29132 }, -- Scryer's Bloodgem
{ 3, 29370 }, -- Icon of the Silver Crescent
{ 4, 28789 }, -- Eye of Magtheridon
{ 5, 28785 }, -- The Lightning Capacitor
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 30723 }, -- Talon of the Tempest
{ 2, 28802 }, -- Bloodmaw Magus-Blade
{ 3, 28770 }, -- Nathrezim Mindblade
{ 4, 23554 }, -- Eternium Runed Blade
},
},

{ -- Two Hand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28633 }, -- Staff of Infinite Mysteries
{ 2, 22589 }, -- Atiesh, Greatstaff of the Guardian
},
},

{ -- Off Hand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28734 }, -- Jewel of Infinite Possibilities
{ 2, 28603 }, -- Talisman of Nightbane
{ 3, 29271 }, -- Talisman of Kalecgos
{ 4, 28781 }, -- Karaborian Talisman
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28673 }, -- Tirisfal Wand of Ascendancy
{ 2, 28783 }, -- Eredar Wand of Obliteration
{ 3, 28386 }, -- Nether Core's Control Rod
},
},

},
}

data["MageFire_P1"] = {
	name = AL["Mage Fire BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 24266 }, -- Spellstrike Hood
{ 2, 29076 }, -- Collar of the Aldor
{ 3, 29759 }, -- Helm of the Fallen Hero
{ 4, 28744 }, -- Uni-Mind Headdress
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 29079 }, -- Pauldrons of the Aldor
{ 2, 29762 }, -- Pauldrons of the Fallen Hero
{ 3, 30925 }, -- Spaulders of the Torn-heart
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28766 }, -- Ruby Drape of the Mysticant
{ 2, 30735 }, -- Ancient Spellcloak of the Highborne
{ 3, 23050 }, -- Cloak of the Necropolis
{ 4, 28797 }, -- Brute Cloak of the Ogre-Magi
{ 5, 28570 }, -- Shadow-Cloak of Dalaran
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21848 }, -- Spellfire Robe
{ 2, 29077 }, -- Vestments of the Aldor
{ 3, 29755 }, -- Chestguard of the Fallen Hero
{ 4, 28602 }, -- Robe of the Elder Scribes
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 24250 }, -- Bracers of Havok
{ 2, 28515 }, -- Bands of Nefarious Deeds
{ 3, 28477 }, -- Harbinger Bands
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 21847 }, -- Spellfire Gloves
{ 2, 30725 }, -- Anger-Spark Gloves
{ 3, 28507 }, -- Handwraps of Flowing Thought
{ 4, 29080 }, -- Gloves of the Aldor
{ 5, 29756 }, -- Gloves of the Fallen Hero
{ 6, 28780 }, -- Soul-Eater's Handwraps
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21846 }, -- Spellfire Belt
{ 2, 30673 }, -- Inferno Waist Cord
{ 3, 28799 }, -- Belt of Divine Inspiration
{ 4, 28654 }, -- Malefic Girdle
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30734 }, -- Leggings of the Seventh Circle
{ 3, 29078 }, -- Legwraps of the Aldor
{ 4, 29765 }, -- Leggings of the Fallen Hero
{ 5, 28594 }, -- Trial-Fire Trousers
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 28585 }, -- Ruby Slippers
{ 2, 28517 }, -- Boots of Foretelling
{ 3, 28406 }, -- Sigil-Laced Boots
{ 4, 27821 }, -- Extravagant Boots of Malice
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 28530 }, -- Brooch of Unquenchable Fury
{ 3, 28762 }, -- Adornment of Stolen Souls
{ 4, 31338 }, -- Charlotte's Ivy
{ 5, 27758 }, -- Hydra-fang Necklace
{ 6, 18814 }, -- Choker of the Fire Lord
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 21709 }, -- Ring of the Fallen God
{ 2, 28793 }, -- Band of Crimson Fury
{ 3, 32385 }, -- Magtheridon's Head
{ 4, 29172 }, -- Ashyen's Gift
{ 5, 28227 }, -- Sparking Arcanite Ring
{ 6, 28555 }, -- Seal of the Exorcist
{ 7, 31339 }, -- Lola's Eve
{ 8, 29287 }, -- Violet Signet of the Archmage
{ 9, 28753 }, -- Ring of Recurrence
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 31856 }, -- Darkmoon Card: Crusade
{ 2, 29132 }, -- Scryer's Bloodgem
{ 3, 29370 }, -- Icon of the Silver Crescent
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 30723 }, -- Talon of the Tempest
{ 2, 28802 }, -- Bloodmaw Magus-Blade
{ 3, 28770 }, -- Nathrezim Mindblade
{ 4, 23554 }, -- Eternium Runed Blade
},
},

{ -- Two Hand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28633 }, -- Staff of Infinite Mysteries
{ 2, 22589 }, -- Atiesh, Greatstaff of the Guardian
},
},

{ -- Off Hand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29270 }, -- Flametongue Seal
{ 2, 28734 }, -- Jewel of Infinite Possibilities
{ 3, 28781 }, -- Karaborian Talisman
{ 4, 28603 }, -- Talisman of Nightbane
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28673 }, -- Tirisfal Wand of Ascendancy
{ 2, 28783 }, -- Eredar Wand of Obliteration
{ 3, 22821 }, -- Doomfinger
{ 4, 28386 }, -- Nether Core's Control Rod
},
},

},
}

data["MageFrost_P1"] = {
	name = AL["Mage Frost BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 24266 }, -- Spellstrike Hood
{ 2, 29076 }, -- Collar of the Aldor
{ 3, 29759 }, -- Helm of the Fallen Hero
{ 4, 28744 }, -- Uni-Mind Headdress
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21869 }, -- Frozen Shadoweave Shoulders
{ 2, 29079 }, -- Pauldrons of the Aldor
{ 3, 29762 }, -- Pauldrons of the Fallen Hero
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28766 }, -- Ruby Drape of the Mysticant
{ 2, 30735 }, -- Ancient Spellcloak of the Highborne
{ 3, 23050 }, -- Cloak of the Necropolis
{ 4, 28797 }, -- Brute Cloak of the Ogre-Magi
{ 5, 28570 }, -- Shadow-Cloak of Dalaran
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21871 }, -- Frozen Shadoweave Robe
{ 2, 29077 }, -- Vestments of the Aldor
{ 3, 29755 }, -- Chestguard of the Fallen Hero
{ 4, 28602 }, -- Robe of the Elder Scribes
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 24250 }, -- Bracers of Havok
{ 2, 28515 }, -- Bands of Nefarious Deeds
{ 3, 28477 }, -- Harbinger Bands
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 30725 }, -- Anger-Spark Gloves
{ 2, 28507 }, -- Handwraps of Flowing Thought
{ 3, 29080 }, -- Gloves of the Aldor
{ 4, 29756 }, -- Gloves of the Fallen Hero
{ 5, 28780 }, -- Soul-Eater's Handwraps
{ 6, 27493 }, -- Gloves of the Deadwatcher
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 24256 }, -- Girdle of Ruination
{ 2, 30673 }, -- Inferno Waist Cord
{ 3, 28799 }, -- Belt of Divine Inspiration
{ 4, 28654 }, -- Malefic Girdle
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30734 }, -- Leggings of the Seventh Circle
{ 3, 29078 }, -- Legwraps of the Aldor
{ 4, 29765 }, -- Leggings of the Fallen Hero
{ 5, 28594 }, -- Trial-Fire Trousers
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 21870 }, -- Frozen Shadoweave Boots
{ 2, 28585 }, -- Ruby Slippers
{ 3, 28517 }, -- Boots of Foretelling
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28134 }, -- Brooch of Heightened Potential
{ 2, 28530 }, -- Brooch of Unquenchable Fury
{ 3, 28762 }, -- Adornment of Stolen Souls
{ 4, 31338 }, -- Charlotte's Ivy
{ 5, 27758 }, -- Hydra-fang Necklace
{ 6, 18814 }, -- Choker of the Fire Lord
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 21709 }, -- Ring of the Fallen God
{ 2, 28793 }, -- Band of Crimson Fury
{ 3, 32385 }, -- Magtheridon's Head
{ 4, 29172 }, -- Ashyen's Gift
{ 5, 28227 }, -- Sparking Arcanite Ring
{ 6, 28555 }, -- Seal of the Exorcist
{ 7, 31339 }, -- Lola's Eve
{ 8, 29287 }, -- Violet Signet of the Archmage
{ 9, 28753 }, -- Ring of Recurrence
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 31856 }, -- Darkmoon Card: Crusade
{ 2, 29132 }, -- Scryer's Bloodgem
{ 3, 29370 }, -- Icon of the Silver Crescent
{ 4, 30340 }, -- Starkiller's Bauble
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 30723 }, -- Talon of the Tempest
{ 2, 28802 }, -- Bloodmaw Magus-Blade
{ 3, 28770 }, -- Nathrezim Mindblade
{ 4, 23554 }, -- Eternium Runed Blade
},
},

{ -- Two Hand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28633 }, -- Staff of Infinite Mysteries
{ 2, 22589 }, -- Atiesh, Greatstaff of the Guardian
},
},

{ -- Off Hand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29269 }, -- Sapphiron's Wing Bone
{ 2, 28734 }, -- Jewel of Infinite Possibilities
{ 3, 28781 }, -- Karaborian Talisman
{ 4, 28603 }, -- Talisman of Nightbane
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28673 }, -- Tirisfal Wand of Ascendancy
{ 2, 28783 }, -- Eredar Wand of Obliteration
{ 3, 22821 }, -- Doomfinger
{ 4, 28386 }, -- Nether Core's Control Rod
},
},

},
}

data["PaladinHoly_P1"] = {
	name = AL["Paladin Holy BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 30728 }, -- Fathom-Helm of the Deeps
{ 2, 32472 }, -- Justicebringer 2000 Specs
{ 3, 29061 }, -- Justicar Diadem
{ 4, 29760 }, -- Helm of the Fallen Champion
{ 5, 24264 }, -- Whitemend Hood
{ 6, 28803 }, -- Cowl of Nature's Breath
{ 7, 28756 }, -- Headdress of the High Potentate
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 29064 }, -- Justicar Pauldrons
{ 2, 29763 }, -- Pauldrons of the Fallen Champion
{ 3, 21874 }, -- Primal Mooncloth Shoulders
{ 4, 28631 }, -- Dragon-Quake Shoulderguards
{ 5, 28666 }, -- Pauldrons of the Justice-Seeker
{ 6, 28647 }, -- Forest Wind Shoulderpads
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 31329 }, -- Lifegiving Cloak
{ 2, 28765 }, -- Stainless Cloak of the Pure Hearted
{ 3, 28582 }, -- Red Riding Hood's Cloak
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 29062 }, -- Justicar Chestpiece
{ 2, 29754 }, -- Chestguard of the Fallen Champion
{ 3, 21875 }, -- Primal Mooncloth Robe
{ 4, 28662 }, -- Breastplate of the Lightbinder
{ 5, 28735 }, -- Earthblood Chestguard
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29523 }, -- Windhawk Bracers
{ 2, 29183 }, -- Bindings of the Timewalker
{ 3, 23539 }, -- Blessed Bracers
{ 4, 28512 }, -- Bracers of Justice
{ 5, 28503 }, -- Whirlwind Bracers
{ 6, 28511 }, -- Bands of Indwelling
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 28505 }, -- Gauntlets of Renewed Hope
{ 2, 28520 }, -- Gloves of Centering
{ 3, 28521 }, -- Mitts of the Treemender
{ 4, 29065 }, -- Justicar Gloves
{ 5, 29757 }, -- Gloves of the Fallen Champion
{ 6, 29506 }, -- Gloves of the Living Touch
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21873 }, -- Primal Mooncloth Belt
{ 2, 28733 }, -- Girdle of Truth
{ 3, 28655 }, -- Cord of Nature's Sustenance
{ 4, 32985 }, -- Marshal's Ornamented Belt
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 30727 }, -- Gilded Trousers of Benediction
{ 2, 28751 }, -- Heart-Flame Leggings
{ 3, 28748 }, -- Legplates of the Innocent
{ 4, 28591 }, -- Earthsoul Leggings
{ 5, 28742 }, -- Pantaloons of Repentance
{ 6, 24261 }, -- Whitemend Pants
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 30737 }, -- Gold-Leaf Wildboots
{ 2, 28752 }, -- Forestlord Striders
{ 3, 28569 }, -- Boots of Valiance
{ 4, 27411 }, -- Slippers of Serenity
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 30726 }, -- Archaic Charm of Presence
{ 2, 28609 }, -- Emberspur Talisman
{ 3, 31691 }, -- Natasha's Guardian Cord
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 30736 }, -- Ring of Flowing Light
{ 2, 28763 }, -- Jade Ring of the Everliving
{ 3, 28790 }, -- Naaru Lightwarden's Band
{ 4, 32385 }, -- Magtheridon's Head
{ 5, 29169 }, -- Ring of Convalescence
{ 6, 29168 }, -- Ancestral Band
{ 7, 29290 }, -- Violet Signet of the Grand Restorer
{ 8, 27780 }, -- Ring of Fabled Hope
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29376 }, -- Essence of the Martyr
{ 2, 28590 }, -- Ribbon of Sacrifice
{ 3, 23047 }, -- Eye of the Dead
{ 4, 30841 }, -- Lower City Prayerbook
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28771 }, -- Light's Justice
{ 2, 32451 }, -- Gladiator's Salvation
{ 3, 28522 }, -- Shard of the Virtuous
{ 4, 23556 }, -- Hand of Eternity
{ 5, 29353 }, -- Shockwave Truncheon
},
},

{ -- Off Hand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29458 }, -- Aegis of the Vindicator
{ 2, 28728 }, -- Aran's Soothing Sapphire
{ 3, 29274 }, -- Tears of Heaven
{ 4, 22819 }, -- Shield of Condemnation
},
},

{ -- Ranged (Libram)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28592 }, -- Libram of Souls Redeemed
{ 2, 23006 }, -- Libram of Light
},
},

},
}

data["PaladinProtection_P1"] = {
	name = AL["Paladin Protection BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 29068 }, -- Justicar Faceguard
{ 2, 29760 }, -- Helm of the Fallen Champion
{ 3, 32083 }, -- Faceguard of Determination
{ 4, 28593 }, -- Eternium Greathelm
{ 5, 27704 }, -- Gladiator's Lamellar Helm
{ 6, 23536 }, -- Oathkeeper's Helm
{ 7, 23535 }, -- Helm of the Stalwart Defender
{ 8, 28285 }, -- Helm of the Righteous
{ 9, 23519 }, -- Felsteel Helm
{ 10, 28180 }, -- Myrmidon's Headdress
{ 11, 27520 }, -- Greathelm of the Unbreakable
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 29070 }, -- Justicar Shoulderguards
{ 2, 29763 }, -- Pauldrons of the Fallen Champion
{ 3, 28743 }, -- Mantle of Abrahmis
{ 4, 27706 }, -- Gladiator's Lamellar Shoulders
{ 5, 32073 }, -- Spaulders of Dementia
{ 6, 30381 }, -- Kaylaan's Spaulders
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 27804 }, -- Devilshark Cape
{ 2, 28660 }, -- Gilded Thorium Cloak
{ 3, 24253 }, -- Cloak of Eternity
{ 4, 29385 }, -- Farstrider Defender's Cloak
{ 5, 27988 }, -- Burnoose of Shifting Ages
{ 6, 24379 }, -- Bogstrok Scale Cloak
{ 7, 29777 }, -- Cloak of the Valiant Defender
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 29066 }, -- Justicar Chestguard
{ 2, 29754 }, -- Chestguard of the Fallen Champion
{ 3, 28597 }, -- Panzar'Thar Breastplate
{ 4, 27702 }, -- Gladiator's Lamellar Chestpiece
{ 5, 28203 }, -- Breastplate of the Righteous
{ 6, 28262 }, -- Jade-Skull Breastplate
{ 7, 29127 }, -- Vindicator's Hauberk
{ 8, 23507 }, -- Adamantite Breastplate
{ 9, 25819 }, -- Breastplate of the Warbringer
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29252 }, -- Bracers of Dignity
{ 2, 23538 }, -- Bracers of the Green Fortress
{ 3, 28502 }, -- Vambraces of Courage
{ 4, 29463 }, -- Amber Bands of the Aggressor
{ 5, 28167 }, -- Sha'tari Wrought Armguards
{ 6, 27459 }, -- Vambraces of Daring
{ 7, 30400 }, -- Thadell's Bracers
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 29067 }, -- Justicar Handguards
{ 2, 29757 }, -- Gloves of the Fallen Champion
{ 3, 28518 }, -- Iron Gauntlets of the Maiden
{ 4, 30741 }, -- Topaz-Studded Battlegrips
{ 5, 27703 }, -- Gladiator's Lamellar Gauntlets
{ 6, 32072 }, -- Gauntlets of Dissension
{ 7, 23532 }, -- Gauntlets of the Iron Tower
{ 8, 27535 }, -- Gauntlets of the Righteous
{ 9, 23517 }, -- Felsteel Gloves
{ 10, 28390 }, -- Thatia's Self-Correcting Gauntlets
{ 11, 29134 }, -- Gauntlets of the Chosen
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29253 }, -- Girdle of Valorous Deeds
{ 2, 28566 }, -- Crimson Girdle of the Indomitable
{ 3, 27672 }, -- Girdle of the Immovable
{ 4, 31460 }, -- Sha'tari Vindicator's Waistguard
{ 5, 29238 }, -- Lion's Heart Girdle
{ 6, 30371 }, -- Lightwarden's Girdle
{ 7, 30330 }, -- Starcaller's Plated Belt
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 29069 }, -- Justicar Legguards
{ 2, 29766 }, -- Leggings of the Fallen Champion
{ 3, 28621 }, -- Wrynn Dynasty Greaves
{ 4, 27705 }, -- Gladiator's Lamellar Legguards
{ 5, 29184 }, -- Timewarden's Leggings
{ 6, 27839 }, -- Legplates of the Righteous
{ 7, 23518 }, -- Felsteel Leggings
{ 8, 27527 }, -- Greaves of the Shatterer
{ 9, 29783 }, -- Legguards of the Resolute Defender
{ 10, 29774 }, -- Kirin'Var Defender's Chausses
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 29254 }, -- Boots of the Righteous Path
{ 2, 30641 }, -- Boots of Elusion
{ 3, 28747 }, -- Battlescar Boots
{ 4, 29239 }, -- Eaglecrest Warboots
{ 5, 27813 }, -- Boots of the Colossus
{ 6, 30334 }, -- Starcaller's Plated Stompers
{ 7, 32866 }, -- Ascendant's Boots
{ 8, 29325 }, -- Flesh Beast's Metal Greaves
{ 9, 30386 }, -- Bloodguard's Greaves
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 28516 }, -- Barbed Choker of Discipline
{ 2, 28245 }, -- Pendant of Dominance
{ 3, 28530 }, -- Brooch of Unquenchable Fury
{ 4, 29386 }, -- Necklace of the Juggernaut
{ 5, 30378 }, -- Thalodien's Charm
{ 6, 31696 }, -- Natasha's Battle Chain
{ 7, 29173 }, -- Strength of the Untamed
{ 8, 27871 }, -- Maladaar's Blessed Chaplet
{ 9, 29336 }, -- Mark of the Ravenguard
{ 10, 28321 }, -- Enchanted Thorium Torque
{ 11, 25809 }, -- Maimfist's Choker
{ 12, 25803 }, -- Medallion of the Valiant Guardian
{ 13, 24121 }, -- Chain of the Twilight Owl
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 29279 }, -- Violet Signet of the Great Protector
{ 2, 28793 }, -- Band of Crimson Fury
{ 3, 32385 }, -- Magtheridon's Head
{ 4, 28407 }, -- Elementium Band of the Sentry
{ 5, 28675 }, -- Shermanar Great-Ring
{ 6, 28792 }, -- A'dal's Signet of Defense
{ 7, 31319 }, -- Band of Impenetrable Defenses
{ 8, 27822 }, -- Crystal Band of Valor
{ 9, 28211 }, -- Lieutenant's Signet of Lordaeron
{ 10, 29384 }, -- Ring of Unyielding Force
{ 11, 31078 }, -- Protector's Mark of the Redemption
{ 12, 27436 }, -- Iron Band of the Unbreakable
{ 13, 24088 }, -- Delicate Eternium Ring
{ 14, 31924 }, -- Yor's Revenge
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28528 }, -- Moroes' Lucky Pocket Watch
{ 2, 27529 }, -- Figurine of the Colossus
{ 3, 27891 }, -- Adamantine Figurine
{ 4, 32534 }, -- Brooch of the Immortal King
{ 5, 30300 }, -- Dabiri's Enigma
{ 6, 19431 }, -- Styleen's Impeding Scarab
{ 7, 24125 }, -- Figurine - Dawnstone Crab
{ 8, 28042 }, -- Regal Protectorate
{ 9, 23040 }, -- Glyph of Deflection
{ 10, 31858 }, -- Darkmoon Card: Vengeance
{ 11, 27770 }, -- Argussian Compass
{ 12, 24126 }, -- Figurine - Living Ruby Serpent
{ 13, 13503 }, -- Alchemist's Stone
{ 14, 28789 }, -- Eye of Magtheridon
{ 15, 29370 }, -- Icon of the Silver Crescent
{ 16, 23046 }, -- The Restrained Essence of Sapphiron
{ 17, 19379 }, -- Neltharion's Tear
{ 18, 18820 }, -- Talisman of Ephemeral Power
{ 19, 19950 }, -- Zandalarian Hero Charm
},
},

{ -- Main Hand
name = format(AL["Main Hand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28802 }, -- Bloodmaw Magus-Blade
{ 2, 32450 }, -- Gladiator's Gavel
{ 3, 28749 }, -- King's Defender
{ 4, 30832 }, -- Gavel of Unearthed Secrets
{ 5, 29156 }, -- Honor's Call
{ 6, 29165 }, -- Warbringer
{ 7, 27899 }, -- Mana Wrath
{ 8, 27905 }, -- Greatsword of Horrid Dreams
{ 9, 22988 }, -- The End of Dreams
{ 10, 22807 }, -- Wraith Blade
{ 11, 19360 }, -- Lok'amir il Romathis
{ 12, 21622 }, -- Sharpened Silithid Femur
{ 13, 24361 }, -- Spellfire Longsword
{ 14, 24384 }, -- Diamond-Core Sledgemace
},
},

{ -- Off Hand (Shields)
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28825 }, -- Aldori Legacy Defender
{ 2, 28358 }, -- Gladiator's Shield Wall
{ 3, 28606 }, -- Shield of Impenetrable Darkness
{ 4, 32082 }, -- The Fel Barrier
{ 5, 28316 }, -- Aegis of the Sunbird
{ 6, 27449 }, -- Blood Knight Defender
{ 7, 27887 }, -- Platinum Shield of the Valorous
{ 8, 23043 }, -- The Face of Death
},
},

{ -- Ranged (Libram)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 29388 }, -- Libram of Repentance
{ 2, 22401 }, -- Libram of Hope
},
},

},
}

data["PaladinRetribution"] = {
	name = AL["Paladin Retribution BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 29073 }, -- Justicar Crown
{ 2, 29760 }, -- Helm of the Fallen Champion
{ 3, 27881 }, -- Gladiator's Scaled Helm
{ 4, 31105 }, -- Overlord's Helmet of Second Sight
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 29075 }, -- Justicar Shoulderplates
{ 2, 29763 }, -- Pauldrons of the Fallen Champion
{ 3, 30740 }, -- Ripfiend Shoulderplates
{ 4, 28755 }, -- Bladed Shoulderpads of the Merciless
{ 5, 27883 }, -- Gladiator's Scaled Shoulders
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 33122 }, -- Cloak of Darkness
{ 2, 24259 }, -- Vengeance Wrap
{ 3, 27878 }, -- Auchenai Death Shroud
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 29071 }, -- Justicar Breastplate
{ 2, 29754 }, -- Chestguard of the Fallen Champion
{ 3, 30730 }, -- Terrorweave Tunic
{ 4, 29515 }, -- Ebon Netherscale Breastplate
{ 5, 29525 }, -- Primalstrike Vest
{ 6, 28403 }, -- Doomplate Chestguard
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 28795 }, -- Bladespire Warbands
{ 2, 23537 }, -- Black Felsteel Bracers
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 30644 }, -- Grips of Deftness
{ 2, 30341 }, -- Flesh Handler's Gauntlets
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 28779 }, -- Girdle of the Endless Pit
{ 2, 28828 }, -- Gronn-Stitched Girdle
{ 3, 29247 }, -- Girdle of the Deathdealer
{ 4, 28750 }, -- Girdle of Treachery
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
{ 1, 28608 }, -- Ironstriders of Urgency
{ 2, 28545 }, -- Edgewalker Longboots
{ 3, 28746 }, -- Fiend Slayer Boots
{ 4, 25686 }, -- Fel Leather Boots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 29381 }, -- Choker of Vile Intent
{ 2, 28509 }, -- Worgen Claw Necklace
{ 3, 28745 }, -- Mithril Chain of Heroism
{ 4, 29119 }, -- Haramad's Bargain
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 30834 }, -- Shapeshifter's Signet
{ 2, 30738 }, -- Ring of Reciprocity
{ 3, 28757 }, -- Ring of a Thousand Marks
{ 4, 28730 }, -- Mithril Band of the Unscarred
{ 5, 29283 }, -- Violet Signet of the Master Assassin
{ 6, 31920 }, -- Shaffar's Band of Brutality
{ 7, 28649 }, -- Garona's Signet Ring
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29383 }, -- Bloodlust Brooch
{ 2, 28830 }, -- Dragonspine Trophy
{ 3, 28288 }, -- Abacus of Violent Odds
{ 4, 28034 }, -- Hourglass of the Unraveller
{ 5, 28579 }, -- Romulo's Poison Vial
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28429 }, -- Lionheart Champion
{ 2, 30722 }, -- Ethereum Nexus-Reaver
{ 3, 28441 }, -- Deep Thunder
{ 4, 28773 }, -- Gorehowl
{ 5, 24550 }, -- Gladiator's Greatsword
},
},

{ -- Ranged (Libram)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 27484 }, -- Libram of Avengement
},
},

},
}

data["PriestHoly"] = {
	name = AL["Priest Holy BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 29049 }, -- Light-Collar of the Incarnate
{ 2, 29761 }, -- Helm of the Fallen Defender
{ 3, 28756 }, -- Headdress of the High Potentate
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21874 }, -- Primal Mooncloth Shoulders
{ 2, 29054 }, -- Light-Mantle of the Incarnate
{ 3, 29764 }, -- Pauldrons of the Fallen Defender
{ 4, 28612 }, -- Pauldrons of the Solace-Giver
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28765 }, -- Stainless Cloak of the Pure Hearted
{ 2, 29354 }, -- Light-Touched Stole of Altruism
{ 3, 31329 }, -- Lifegiving Cloak
{ 4, 28582 }, -- Red Riding Hood's Cloak
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21875 }, -- Primal Mooncloth Robe
{ 2, 29050 }, -- Robes of the Incarnate
{ 3, 29753 }, -- Chestguard of the Fallen Defender
{ 4, 28578 }, -- Masquerade Gown
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29183 }, -- Bindings of the Timewalker
{ 2, 28511 }, -- Bands of Indwelling
{ 3, 29249 }, -- Bands of the Benevolent
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 28508 }, -- Gloves of Saintly Blessings
{ 2, 29055 }, -- Handwraps of the Incarnate
{ 3, 29758 }, -- Gloves of the Fallen Defender
{ 4, 24393 }, -- Bloody Surgeon's Mitts
{ 5, 27536 }, -- Hallowed Handwraps
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 21873 }, -- Primal Mooncloth Belt
{ 2, 28652 }, -- Cincture of Will
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 30727 }, -- Gilded Trousers of Benediction
{ 2, 28742 }, -- Pantaloons of Repentance
{ 3, 30543 }, -- Pontifex Kilt
{ 4, 29053 }, -- Trousers of the Incarnate
{ 5, 29767 }, -- Leggings of the Fallen Defender
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 28663 }, -- Boots of the Incorrupt
{ 2, 29251 }, -- Boots of the Pious
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 30726 }, -- Archaic Charm of Presence
{ 2, 28822 }, -- Teeth of Gruul
{ 3, 28609 }, -- Emberspur Talisman
{ 4, 28731 }, -- Shining Chain of the Afterworld
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 30736 }, -- Ring of Flowing Light
{ 2, 29290 }, -- Violet Signet of the Grand Restorer
{ 3, 28763 }, -- Jade Ring of the Everliving
{ 4, 28661 }, -- Mender's Heart-Ring
{ 5, 28790 }, -- Naaru Lightwarden's Band
{ 6, 32385 }, -- Magtheridon's Head
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29376 }, -- Essence of the Martyr
{ 2, 28823 }, -- Eye of Gruul
{ 3, 19288 }, -- Darkmoon Card: Blue Dragon
},
},

{ -- Onehand
name = format(AL["Onehand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28771 }, -- Light's Justice
{ 2, 32451 }, -- Gladiator's Salvation
{ 3, 28522 }, -- Shard of the Virtuous
},
},

{ -- Twohand
name = format(AL["Twohand"], "2"),
[NORMAL_DIFF] = {
{ 1, 30732 }, -- Exodar Life-Staff
{ 2, 28782 }, -- Crystalheart Pulse-Staff
{ 3, 28604 }, -- Nightstaff of the Everliving
},
},

{ -- Offhand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29170 }, -- Windcaller's Orb
{ 2, 29274 }, -- Tears of Heaven
{ 3, 28728 }, -- Aran's Soothing Sapphire
{ 4, 28525 }, -- Signet of Unshakable Faith
},
},

{ -- Ranged (Wand)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 28588 }, -- Blue Diamond Witchwand
{ 2, 27885 }, -- Soul-Wand of the Aldor
{ 3, 23009 }, -- Wand of the Whispering Dead
},
},

},
}

data["PriestShadow"] = {
	name = AL["Priest Shadow BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 24266 }, -- Spellstrike Hood
{ 2, 28804 }, -- Collar of Cho'gall
{ 3, 29058 }, -- Soul-Collar of the Incarnate
{ 4, 29761 }, -- Helm of the Fallen Defender
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 21869 }, -- Frozen Shadoweave Shoulders
{ 2, 27778 }, -- Spaulders of Oblivion
{ 3, 29060 }, -- Soul-Mantle of the Incarnate
{ 4, 29764 }, -- Pauldrons of the Fallen Defender
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28570 }, -- Shadow-Cloak of Dalaran
{ 2, 28766 }, -- Ruby Drape of the Mysticant
{ 3, 28797 }, -- Brute Cloak of the Ogre-Magi
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 21871 }, -- Frozen Shadoweave Robe
{ 2, 29056 }, -- Shroud of the Incarnate
{ 3, 29753 }, -- Chestguard of the Fallen Defender
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 28515 }, -- Bands of Nefarious Deeds
{ 2, 28477 }, -- Harbinger Bands
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 28507 }, -- Handwraps of Flowing Thought
{ 2, 28780 }, -- Soul-Eater's Handwraps
{ 3, 30725 }, -- Anger-Spark Gloves
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 28799 }, -- Belt of Divine Inspiration
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 24262 }, -- Spellstrike Pants
{ 2, 30734 }, -- Leggings of the Seventh Circle
{ 3, 28594 }, -- Trial-Fire Trousers
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 21870 }, -- Frozen Shadoweave Boots
{ 2, 28517 }, -- Boots of Foretelling
{ 3, 28585 }, -- Ruby Slippers
{ 4, 28179 }, -- Shattrath Jumpers
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 30666 }, -- Ritssyn's Lost Pendant
{ 2, 24121 }, -- Chain of the Twilight Owl
{ 3, 24116 }, -- Eye of the Night
{ 4, 33921 }, -- Vindicator's Pendant of Dominance
{ 5, 18814 }, -- Choker of the Fire Lord
{ 6, 31693 }, -- Natasha's Arcane Filament
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 21709 }, -- Ring of the Fallen God
{ 2, 23031 }, -- Band of the Inevitable
{ 3, 28753 }, -- Ring of Recurrence
{ 4, 29352 }, -- Cobalt Band of Tyrigosa
{ 5, 28793 }, -- Band of Crimson Fury
{ 6, 32385 }, -- Magtheridon's Head
{ 7, 28555 }, -- Seal of the Exorcist
{ 8, 29287 }, -- Violet Signet of the Archmage
{ 9, 34073 }, -- The Horseman's Signet Ring
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 29370 }, -- Icon of the Silver Crescent
{ 2, 27683 }, -- Quagmirran's Eye
{ 3, 28789 }, -- Eye of Magtheridon
{ 4, 38290 }, -- Dark Iron Smoking Pipe
},
},

{ -- Onehand
name = format(AL["Onehand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28770 }, -- Nathrezim Mindblade
{ 2, 30723 }, -- Talon of the Tempest
{ 3, 33687 }, -- Vengeful Gladiator's Gavel
{ 4, 30832 }, -- Gavel of Unearthed Secrets
{ 5, 23554 }, -- Eternium Runed Blade
},
},

{ -- Offhand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 29272 }, -- Orb of the Soul-Eater
},
},

{ -- Ranged (Wand)
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 32872 }, -- Illidari Rod of Discipline
{ 2, 28673 }, -- Tirisfal Wand of Ascendancy
},
},

},
}

data["Rogue"] = {
	name = AL["Rogue BiS (Phase 1)"],
	ContentType = SET_CONTENT,
items = {
{ -- Head
name = format(AL["Head"], "1"),
[NORMAL_DIFF] = {
{ 1, 29044 }, -- Netherblade Facemask
{ 2, 29760 }, -- Helm of the Fallen Champion
{ 3, 28732 }, -- Cowl of Defiance
{ 4, 28796 }, -- Malefic Mask of the Shadows
},
},

{ -- Shoulders
name = format(AL["Shoulders"], "2"),
[NORMAL_DIFF] = {
{ 1, 27797 }, -- Wastewalker Shoulderpads
{ 2, 29047 }, -- Netherblade Shoulderpads
{ 3, 29763 }, -- Pauldrons of the Fallen Champion
{ 4, 28755 }, -- Bladed Shoulderpads of the Merciless
},
},

{ -- Back
name = format(AL["Back"], "2"),
[NORMAL_DIFF] = {
{ 1, 28672 }, -- Drape of the Dark Reavers
{ 2, 24259 }, -- Vengeance Wrap
{ 3, 28777 }, -- Cloak of the Pit Stalker
},
},

{ -- Chest
name = format(AL["Chest"], "2"),
[NORMAL_DIFF] = {
{ 1, 29045 }, -- Netherblade Chestpiece
{ 2, 29754 }, -- Chestguard of the Fallen Champion
{ 3, 30730 }, -- Terrorweave Tunic
{ 4, 28264 }, -- Wastewalker Tunic
},
},

{ -- Wrist
name = format(AL["Wrist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29246 }, -- Nightfall Wristguards
},
},

{ -- Hands
name = format(AL["Hands"], "2"),
[NORMAL_DIFF] = {
{ 1, 27531 }, -- Wastewalker Gloves
{ 2, 30644 }, -- Grips of Deftness
{ 3, 29048 }, -- Netherblade Gloves
{ 4, 29757 }, -- Gloves of the Fallen Champion
{ 5, 28506 }, -- Gloves of Dexterous Manipulation
},
},

{ -- Waist
name = format(AL["Waist"], "2"),
[NORMAL_DIFF] = {
{ 1, 29247 }, -- Girdle of the Deathdealer
{ 2, 28828 }, -- Gronn-Stitched Girdle
{ 3, 28750 }, -- Girdle of Treachery
},
},

{ -- Legs
name = format(AL["Legs"], "2"),
[NORMAL_DIFF] = {
{ 1, 28741 }, -- Skulker's Greaves
{ 2, 29046 }, -- Netherblade Breeches
{ 3, 29766 }, -- Leggings of the Fallen Champion
{ 4, 27837 }, -- Wastewalker Leggings
},
},

{ -- Feet
name = format(AL["Feet"], "2"),
[NORMAL_DIFF] = {
{ 1, 28545 }, -- Edgewalker Longboots
{ 2, 25686 }, -- Fel Leather Boots
},
},

{ -- Neck
name = format(AL["Neck"], "2"),
[NORMAL_DIFF] = {
{ 1, 29381 }, -- Choker of Vile Intent
{ 2, 24114 }, -- Braided Eternium Chain
{ 3, 28509 }, -- Worgen Claw Necklace
},
},

{ -- Rings
name = format(AL["Rings"], "2"),
[NORMAL_DIFF] = {
{ 1, 28757 }, -- Ring of a Thousand Marks
{ 2, 28649 }, -- Garona's Signet Ring
{ 3, 30738 }, -- Ring of Reciprocity
{ 4, 31920 }, -- Shaffar's Band of Brutality
{ 5, 29283 }, -- Violet Signet of the Master Assassin
{ 6, 28791 }, -- Ring of the Recalcitrant
{ 7, 32385 }, -- Magtheridon's Head
},
},

{ -- Trinkets
name = format(AL["Trinkets"], "2"),
[NORMAL_DIFF] = {
{ 1, 28830 }, -- Dragonspine Trophy
{ 2, 29383 }, -- Bloodlust Brooch
{ 3, 28288 }, -- Abacus of Violent Odds
{ 4, 28579 }, -- Romulo's Poison Vial
},
},

{ -- Onehand
name = format(AL["Onehand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28438 }, -- Dragonmaw
{ 2, 28295 }, -- Gladiator's Slicer
{ 3, 31332 }, -- Blinkstrike
{ 4, 28729 }, -- Spiteblade
{ 5, 30733 }, -- Hope Ender
{ 6, 28768 }, -- Malchazeen
{ 7, 28312 }, -- Gladiator's Shanker
},
},

{ -- Offhand
name = format(AL["Offhand"], "2"),
[NORMAL_DIFF] = {
{ 1, 28307 }, -- Gladiator's Quickblade
{ 2, 28189 }, -- Latro's Shifting Sword
{ 3, 29275 }, -- Searing Sunblade
},
},

{ -- Ranged
name = format(AL["Ranged"], "2"),
[NORMAL_DIFF] = {
{ 1, 29151 }, -- Veteran's Musket
{ 2, 29152 }, -- Marksman's Bow
{ 3, 30724 }, -- Barrel-Blade Longrifle
{ 4, 28772 }, -- Sunfury Bow of the Phoenix
},
},

},
}

data["ShamanElemental"] = {
	name = AL["Shaman Elemental BiS (Phase 1)"],
	ContentType = SET_CONTENT,
	items = {

	{ -- Head
		name = format(AL["Head"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29035 }, -- Cyclone Faceguard
			{ 2, 29760 }, -- Helm of the Fallen Champion
			{ 3, 28583 }, -- Big Bad Wolf's Head
		},
	},

	{ -- Shoulders
		name = format(AL["Shoulders"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29037 }, -- Cyclone Shoulderguards
			{ 2, 29763 }, -- Pauldrons of the Fallen Champion
			{ 3, 32078 }, -- Pauldrons of Wild Magic
		},
	},

	{ -- Back
		name = format(AL["Back"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28797 }, -- Brute Cloak of the Ogre-Magi
			{ 2, 28766 }, -- Ruby Drape of the Mysticant
			{ 3, 30735 }, -- Ancient Spellcloak of the Highborne
		},
	},

	{ -- Chest
		name = format(AL["Chest"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29519 }, -- Netherstrike Breastplate
			{ 2, 29522 }, -- Windhawk Hauberk
			{ 3, 29033 }, -- Cyclone Chestguard
			{ 4, 29754 }, -- Chestguard of the Fallen Champion
		},
	},

	{ -- Wrist
		name = format(AL["Wrist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29521 }, -- Netherstrike Bracers
			{ 2, 29523 }, -- Windhawk Bracers
			{ 3, 28638 }, -- General's Mail Bracers
		},
	},

	{ -- Hands
		name = format(AL["Hands"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28780 }, -- Soul-Eater's Handwraps
			{ 2, 28507 }, -- Handwraps of Flowing Thought
			{ 3, 29034 }, -- Cyclone Handguards
			{ 4, 29757 }, -- Gloves of the Fallen Champion
		},
	},

	{ -- Waist
		name = format(AL["Waist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29520 }, -- Netherstrike Belt
			{ 2, 24256 }, -- Girdle of Ruination
			{ 3, 29524 }, -- Windhawk Belt
			{ 4, 28799 }, -- Belt of Divine Inspiration
		},
	},

	{ -- Legs
		name = format(AL["Legs"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 24262 }, -- Spellstrike Pants
			{ 2, 30734 }, -- Leggings of the Seventh Circle
		},
	},

	{ -- Feet
		name = format(AL["Feet"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28517 }, -- Boots of Foretelling
			{ 2, 28810 }, -- Windshear Boots
			{ 3, 28406 }, -- Sigil-Laced Boots
		},
	},

	{ -- Neck
		name = format(AL["Neck"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28762 }, -- Adornment of Stolen Souls
			{ 2, 28530 }, -- Brooch of Unquenchable Fury
			{ 3, 28134 }, -- Brooch of Heightened Potential
		},
	},

	{ -- Rings
		name = format(AL["Rings"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30667 }, -- Ring of Unrelenting Storms
			{ 2, 28753 }, -- Ring of Recurrence
			{ 3, 29287 }, -- Violet Signet of the Archmage
			{ 4, 29126 }, -- Seer's Signet
			{ 5, 31290 }, -- Band of Dominion
		},
	},

	{ -- Trinkets
		name = format(AL["Trinkets"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28785 }, -- The Lightning Capacitor
			{ 2, 29370 }, -- Icon of the Silver Crescent
			{ 3, 27683 }, -- Quagmirran's Eye
		},
	},

	{ -- One-Hand
		name = format(AL["Onehand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30723 }, -- Talon of the Tempest
			{ 2, 28770 }, -- Nathrezim Mindblade
			{ 3, 32450 }, -- Gladiator's Gavel
		},
	},

	{ -- Off-Hand
		name = format(AL["Offhand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29273 }, -- Khadgar's Knapsack
			{ 2, 29268 }, -- Mazthoril Honor Shield
			{ 3, 28734 }, -- Jewel of Infinite Possibilities
			{ 4, 28603 }, -- Talisman of Nightbane
		},
	},

	{ -- Totem
		name = format(AL["Totems"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28248 }, -- Totem of the Void
		},
	},

	},
}

data["ShamanEnhancement"] = {
	name = AL["Shaman Enhancement BiS (Phase 1)"],
	ContentType = SET_CONTENT,
	items = {

	{ -- Head
		name = format(AL["Head"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29040 }, -- Cyclone Helm
			{ 2, 29760 }, -- Helm of the Fallen Champion
			{ 3, 28732 }, -- Cowl of Defiance
			{ 4, 28224 }, -- Wastewalker Helm
		},
	},

	{ -- Shoulders
		name = format(AL["Shoulders"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29043 }, -- Cyclone Shoulderplates
			{ 2, 29763 }, -- Pauldrons of the Fallen Champion
			{ 3, 28755 }, -- Bladed Shoulderpads of the Merciless
			{ 4, 27797 }, -- Wastewalker Shoulderpads
		},
	},

	{ -- Back
		name = format(AL["Back"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 24259 }, -- Vengeance Wrap
			{ 2, 28672 }, -- Drape of the Dark Reavers
		},
	},

	{ -- Chest
		name = format(AL["Chest"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29038 }, -- Cyclone Breastplate
			{ 2, 29754 }, -- Chestguard of the Fallen Champion
			{ 3, 30730 }, -- Terrorweave Tunic
			{ 4, 29525 }, -- Primalstrike Vest
			{ 5, 29515 }, -- Ebon Netherscale Breastplate
			{ 6, 25997 }, -- Gladiator's Linked Armor
		},
	},

	{ -- Wrist
		name = format(AL["Wrist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28514 }, -- Bracers of Maliciousness
			{ 2, 29527 }, -- Primalstrike Bracers
			{ 3, 29517 }, -- Ebon Netherscale Bracers
		},
	},

	{ -- Hands
		name = format(AL["Hands"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30644 }, -- Grips of Deftness
		},
	},

	{ -- Waist
		name = format(AL["Waist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28828 }, -- Gronn-Stitched Girdle
			{ 2, 29526 }, -- Primalstrike Belt
			{ 3, 29516 }, -- Ebon Netherscale Belt
			{ 4, 29247 }, -- Girdle of the Deathdealer
		},
	},

	{ -- Legs
		name = format(AL["Legs"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28741 }, -- Skulker's Greaves
			{ 2, 31544 }, -- Clefthoof Hide Leggings
		},
	},

	{ -- Feet
		name = format(AL["Feet"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28545 }, -- Edgewalker Longboots
			{ 2, 28746 }, -- Fiend Slayer Boots
			{ 3, 25686 }, -- Fel Leather Boots
		},
	},

	{ -- Neck
		name = format(AL["Neck"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29381 }, -- Choker of Vile Intent
			{ 2, 28509 }, -- Worgen Claw Necklace
		},
	},

	{ -- Rings
		name = format(AL["Rings"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28757 }, -- Ring of a Thousand Marks
			{ 2, 28649 }, -- Garona's Signet Ring
			{ 3, 30834 }, -- Shapeshifter's Signet
			{ 4, 30738 }, -- Ring of Reciprocity
			{ 5, 29283 }, -- Violet Signet of the Master Assassin
		},
	},

	{ -- Trinkets
		name = format(AL["Trinkets"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28830 }, -- Dragonspine Trophy
			{ 2, 29383 }, -- Bloodlust Brooch
		},
	},

	{ -- One-Hand
		name = format(AL["Onehand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28313 }, -- Gladiator's Right Ripper
			{ 2, 28308 }, -- Gladiator's Cleaver
			{ 3, 28767 }, -- The Decapitator
			{ 4, 27872 }, -- The Harvester of Souls
			{ 5, 28944 }, -- Grand Marshal's Cleaver
			{ 6, 28920 }, -- High Warlord's Cleaver
			{ 7, 28657 }, -- Fool's Bane
			{ 8, 28438 }, -- Dragonmaw
			{ 9, 28432 }, -- Black Planar Edge
		},
	},

	{ -- Totem
		name = format(AL["Totems"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 27815 }, -- Totem of the Astral Winds
		},
	},

	},
}

data["ShamanRestoration"] = {
	name = AL["Shaman Restoration BiS (Phase 1)"],
	ContentType = SET_CONTENT,
	items = {

	{ -- Head
		name = format(AL["Head"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29028 }, -- Cyclone Headdress
			{ 2, 29760 }, -- Helm of the Fallen Champion
			{ 3, 30728 }, -- Fathom-Helm of the Deeps
			{ 4, 24264 }, -- Whitemend Hood
		},
	},

	{ -- Shoulders
		name = format(AL["Shoulders"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29031 }, -- Cyclone Shoulderpads
			{ 2, 29763 }, -- Pauldrons of the Fallen Champion
			{ 3, 21874 }, -- Primal Mooncloth Shoulders
			{ 4, 28631 }, -- Dragon-Quake Shoulderguards
		},
	},

	{ -- Back
		name = format(AL["Back"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28765 }, -- Stainless Cloak of the Pure Hearted
			{ 2, 31329 }, -- Lifegiving Cloak
		},
	},

	{ -- Chest
		name = format(AL["Chest"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29522 }, -- Windhawk Hauberk
			{ 2, 21875 }, -- Primal Mooncloth Robe
			{ 3, 29029 }, -- Cyclone Hauberk
			{ 4, 29754 }, -- Chestguard of the Fallen Champion
		},
	},

	{ -- Wrist
		name = format(AL["Wrist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29523 }, -- Windhawk Bracers
			{ 2, 28503 }, -- Whirlwind Bracers
		},
	},

	{ -- Hands
		name = format(AL["Hands"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28520 }, -- Gloves of Centering
			{ 2, 28521 }, -- Mitts of the Treemender
			{ 3, 29032 }, -- Cyclone Gloves
			{ 4, 29757 }, -- Gloves of the Fallen Champion
		},
	},

	{ -- Waist
		name = format(AL["Waist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29524 }, -- Windhawk Belt
			{ 2, 21873 }, -- Primal Mooncloth Belt
			{ 3, 28567 }, -- Belt of Gale Force
		},
	},

	{ -- Legs
		name = format(AL["Legs"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28751 }, -- Heart-Flame Leggings
			{ 2, 28591 }, -- Earthsoul Leggings
			{ 3, 24261 }, -- Whitemend Pants
		},
	},

	{ -- Feet
		name = format(AL["Feet"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30737 }, -- Gold-Leaf Wildboots
			{ 2, 28752 }, -- Forestlord Striders
		},
	},

	{ -- Neck
		name = format(AL["Neck"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28609 }, -- Emberspur Talisman
			{ 2, 30726 }, -- Archaic Charm of Presence
			{ 3, 28822 }, -- Teeth of Gruul
			{ 4, 31691 }, -- Natasha's Guardian Cord
		},
	},

	{ -- Rings
		name = format(AL["Rings"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28763 }, -- Jade Ring of the Everliving
			{ 2, 28790 }, -- Naaru Lightwarden's Band
			{ 3, 32385 }, -- Magtheridon's Head
			{ 4, 29169 }, -- Ring of Convalescence
			{ 5, 29168 }, -- Ancestral Band
			{ 6, 28259 }, -- Cosmic Lifeband
			{ 7, 29814 }, -- Celestial Jewel Ring
			{ 8, 31923 }, -- Band of the Crystalline Void
		},
	},

	{ -- Trinkets
		name = format(AL["Trinkets"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29376 }, -- Essence of the Martyr
			{ 2, 28190 }, -- Scarab of the Infinite Cycle
		},
	},

	{ -- One-Hand
		name = format(AL["Onehand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28771 }, -- Light's Justice
			{ 2, 32451 }, -- Gladiator's Salvation
			{ 3, 28522 }, -- Shard of the Virtuous
		},
	},

	{ -- Off-Hand
		name = format(AL["Offhand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29458 }, -- Aegis of the Vindicator
			{ 2, 28728 }, -- Aran's Soothing Sapphire
			{ 3, 28754 }, -- Triptych Shield of the Ancients
		},
	},

	{ -- Totem
		name = format(AL["Totems"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28523 }, -- Totem of Healing Rains
			{ 2, 27544 }, -- Totem of Spontaneous Regrowth
		},
	},

	},
}

data["WarlockAffliction"] = {
	name = AL["Warlock Affliction BiS (Phase 1)"],
	ContentType = SET_CONTENT,
	items = {

	{ -- Head
		name = format(AL["Head"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28963 }, -- Voidheart Crown
			{ 2, 29759 }, -- Helm of the Fallen Hero
			{ 3, 24266 }, -- Spellstrike Hood
			{ 4, 28744 }, -- Uni-Mind Headdress
		},
	},

	{ -- Shoulders
		name = format(AL["Shoulders"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28967 }, -- Voidheart Mantle
			{ 2, 29762 }, -- Pauldrons of the Fallen Hero
			{ 3, 21869 }, -- Frozen Shadoweave Shoulders
		},
	},

	{ -- Back
		name = format(AL["Back"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28766 }, -- Ruby Drape of the Mysticant
			{ 2, 30735 }, -- Ancient Spellcloak of the Highborne
			{ 3, 28797 }, -- Brute Cloak of the Ogre-Magi
		},
	},

	{ -- Chest
		name = format(AL["Chest"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28964 }, -- Voidheart Robe
			{ 2, 29755 }, -- Chestguard of the Fallen Hero
			{ 3, 21871 }, -- Frozen Shadoweave Robe
			{ 4, 28602 }, -- Robe of the Elder Scribes
		},
	},

	{ -- Wrist
		name = format(AL["Wrist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 24250 }, -- Bracers of Havok
			{ 2, 28515 }, -- Bands of Nefarious Deeds
		},
	},

	{ -- Hands
		name = format(AL["Hands"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28968 }, -- Voidheart Gloves
			{ 2, 29756 }, -- Gloves of the Fallen Hero
			{ 3, 30725 }, -- Anger-Spark Gloves
			{ 4, 28507 }, -- Handwraps of Flowing Thought
			{ 5, 28780 }, -- Soul-Eater's Handwraps
		},
	},

	{ -- Waist
		name = format(AL["Waist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 24256 }, -- Girdle of Ruination
			{ 2, 28799 }, -- Belt of Divine Inspiration
		},
	},

	{ -- Legs
		name = format(AL["Legs"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 24262 }, -- Spellstrike Pants
			{ 2, 28966 }, -- Voidheart Leggings
			{ 3, 29765 }, -- Leggings of the Fallen Hero
			{ 4, 30734 }, -- Leggings of the Seventh Circle
		},
	},

	{ -- Feet
		name = format(AL["Feet"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 21870 }, -- Frozen Shadoweave Boots
			{ 2, 28585 }, -- Ruby Slippers
			{ 3, 28517 }, -- Boots of Foretelling
		},
	},

	{ -- Neck
		name = format(AL["Neck"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28530 }, -- Brooch of Unquenchable Fury
			{ 2, 28134 }, -- Brooch of Heightened Potential
			{ 3, 28762 }, -- Adornment of Stolen Souls
			{ 4, 30666 }, -- Ritssyn's Lost Pendant
		},
	},

	{ -- Rings
		name = format(AL["Rings"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28793 }, -- Band of Crimson Fury
			{ 2, 32385 }, -- Magtheridon's Head
			{ 3, 29172 }, -- Ashyen's Gift
			{ 4, 28227 }, -- Sparking Arcanite Ring
			{ 5, 28753 }, -- Ring of Recurrence
			{ 6, 29287 }, -- Violet Signet of the Archmage
		},
	},

	{ -- Trinkets
		name = format(AL["Trinkets"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 27683 }, -- Quagmirran's Eye
			{ 2, 29370 }, -- Icon of the Silver Crescent
		},
	},

	{ -- Two-Hand
		name = format(AL["Twohand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 22630 }, -- Atiesh, Greatstaff of the Guardian
		},
	},

	{ -- One-Hand
		name = format(AL["Onehand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30723 }, -- Talon of the Tempest
			{ 2, 28802 }, -- Bloodmaw Magus-Blade
			{ 3, 28770 }, -- Nathrezim Mindblade
			{ 4, 28297 }, -- Gladiator's Spellblade
			{ 5, 31336 }, -- Blade of Wizardry
			{ 6, 23554 }, -- Eternium Runed Blade
		},
	},

	{ -- Off-Hand
		name = format(AL["Offhand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29273 }, -- Khadgar's Knapsack
			{ 2, 28734 }, -- Jewel of Infinite Possibilities
		},
	},

	{ -- Wand
		name = format(AL["Wand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28673 }, -- Tirisfal Wand of Ascendancy
			{ 2, 29350 }, -- The Black Stalk
			{ 3, 28783 }, -- Eredar Wand of Obliteration
		},
	},

	},
}

data["WarlockDestruction"] = {
	name = AL["Warlock Destruction BiS (Phase 1)"],
	ContentType = SET_CONTENT,
	items = {

	{ -- Head
		name = format(AL["Head"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28963 }, -- Voidheart Crown
			{ 2, 29759 }, -- Helm of the Fallen Hero
			{ 3, 24266 }, -- Spellstrike Hood
			{ 4, 28744 }, -- Uni-Mind Headdress
		},
	},

	{ -- Shoulders
		name = format(AL["Shoulders"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28967 }, -- Voidheart Mantle
			{ 2, 29762 }, -- Pauldrons of the Fallen Hero
			{ 3, 21869 }, -- Frozen Shadoweave Shoulders
		},
	},

	{ -- Back
		name = format(AL["Back"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28766 }, -- Ruby Drape of the Mysticant
			{ 2, 30735 }, -- Ancient Spellcloak of the Highborne
			{ 3, 28797 }, -- Brute Cloak of the Ogre-Magi
		},
	},

	{ -- Chest
		name = format(AL["Chest"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28964 }, -- Voidheart Robe
			{ 2, 29755 }, -- Chestguard of the Fallen Hero
			{ 3, 21848 }, -- Spellfire Robe
			{ 4, 21871 }, -- Frozen Shadoweave Robe
			{ 5, 28602 }, -- Robe of the Elder Scribes
		},
	},

	{ -- Wrist
		name = format(AL["Wrist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 24250 }, -- Bracers of Havok
			{ 2, 28515 }, -- Bands of Nefarious Deeds
		},
	},

	{ -- Hands
		name = format(AL["Hands"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 21847 }, -- Spellfire Gloves
			{ 2, 28968 }, -- Voidheart Gloves
			{ 3, 29756 }, -- Gloves of the Fallen Hero
			{ 4, 30725 }, -- Anger-Spark Gloves
			{ 5, 28780 }, -- Soul-Eater's Handwraps
			{ 6, 28507 }, -- Handwraps of Flowing Thought
		},
	},

	{ -- Waist
		name = format(AL["Waist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 21846 }, -- Spellfire Belt
			{ 2, 24256 }, -- Girdle of Ruination
			{ 3, 28799 }, -- Belt of Divine Inspiration
		},
	},

	{ -- Legs
		name = format(AL["Legs"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 24262 }, -- Spellstrike Pants
			{ 2, 30734 }, -- Leggings of the Seventh Circle
			{ 3, 28966 }, -- Voidheart Leggings
			{ 4, 29765 }, -- Leggings of the Fallen Hero
		},
	},

	{ -- Feet
		name = format(AL["Feet"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 21870 }, -- Frozen Shadoweave Boots
			{ 2, 28585 }, -- Ruby Slippers
			{ 3, 28517 }, -- Boots of Foretelling
		},
	},

	{ -- Neck
		name = format(AL["Neck"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28530 }, -- Brooch of Unquenchable Fury
			{ 2, 28762 }, -- Adornment of Stolen Souls
			{ 3, 28134 }, -- Brooch of Heightened Potential
			{ 4, 30666 }, -- Ritssyn's Lost Pendant
		},
	},

	{ -- Rings
		name = format(AL["Rings"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28793 }, -- Band of Crimson Fury
			{ 2, 32385 }, -- Magtheridon's Head
			{ 3, 29172 }, -- Ashyen's Gift
			{ 4, 28227 }, -- Sparking Arcanite Ring
			{ 5, 28753 }, -- Ring of Recurrence
			{ 6, 29287 }, -- Violet Signet of the Archmage
		},
	},

	{ -- Trinkets
		name = format(AL["Trinkets"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 27683 }, -- Quagmirran's Eye
			{ 2, 29370 }, -- Icon of the Silver Crescent
			{ 3, 29132 }, -- Scryer's Bloodgem
		},
	},

	{ -- Two-Hand
		name = format(AL["Twohand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 22630 }, -- Atiesh, Greatstaff of the Guardian
		},
	},

	{ -- One-Hand
		name = format(AL["Onehand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30723 }, -- Talon of the Tempest
			{ 2, 28802 }, -- Bloodmaw Magus-Blade
			{ 3, 28770 }, -- Nathrezim Mindblade
			{ 4, 28297 }, -- Gladiator's Spellblade
			{ 5, 31336 }, -- Blade of Wizardry
			{ 6, 23554 }, -- Eternium Runed Blade
		},
	},

	{ -- Off-Hand
		name = format(AL["Offhand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29270 }, -- Flametongue Seal
			{ 2, 29273 }, -- Khadgar's Knapsack
			{ 3, 28734 }, -- Jewel of Infinite Possibilities
		},
	},

	{ -- Wand
		name = format(AL["Wand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28673 }, -- Tirisfal Wand of Ascendancy
			{ 2, 29350 }, -- The Black Stalk
			{ 3, 28783 }, -- Eredar Wand of Obliteration
			{ 4, 28386 }, -- Nether Core's Control Rod
			{ 5, 22128 }, -- Master Firestone
		},
	},

	},
}

data["WarriorArms"] = {
	name = AL["Warrior Arms BiS (Phase 1)"],
	ContentType = SET_CONTENT,
	items = {

	{ -- Head
		name = format(AL["Head"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29021 }, -- Warbringer Battle-Helm
			{ 2, 29761 }, -- Helm of the Fallen Defender
			{ 3, 32087 }, -- Mask of the Deceiver
		},
	},

	{ -- Shoulders
		name = format(AL["Shoulders"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29023 }, -- Warbringer Shoulderplates
			{ 2, 29764 }, -- Pauldrons of the Fallen Defender
			{ 3, 30740 }, -- Ripfiend Shoulderplates
			{ 4, 33173 }, -- Ragesteel Shoulders
		},
	},

	{ -- Back
		name = format(AL["Back"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 24259 }, -- Vengeance Wrap
			{ 2, 30729 }, -- Black-Iron Battlecloak
			{ 3, 28672 }, -- Drape of the Dark Reavers
		},
	},

	{ -- Chest
		name = format(AL["Chest"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29019 }, -- Warbringer Breastplate
			{ 2, 29753 }, -- Chestguard of the Fallen Defender
			{ 3, 30730 }, -- Terrorweave Tunic
			{ 4, 23522 }, -- Ragesteel Breastplate
			{ 5, 24544 }, -- Gladiator's Plate Chestpiece
			{ 6, 31548 }, -- Blackened Chestplate
		},
	},

	{ -- Wrist
		name = format(AL["Wrist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28795 }, -- Bladespire Warbands
			{ 2, 23537 }, -- Black Felsteel Bracers
			{ 3, 28381 }, -- General's Plate Bracers
			{ 4, 30399 }, -- Nightstalker's Wristguards
		},
	},

	{ -- Hands
		name = format(AL["Hands"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28824 }, -- Gauntlets of Martial Perfection
			{ 2, 30644 }, -- Grips of Deftness
			{ 3, 29020 }, -- Warbringer Gauntlets
			{ 4, 29758 }, -- Gloves of the Fallen Defender
			{ 5, 25685 }, -- Fel Leather Gloves
			{ 6, 27497 }, -- Doomplate Gauntlets
		},
	},

	{ -- Waist
		name = format(AL["Waist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28779 }, -- Girdle of the Endless Pit
			{ 2, 28828 }, -- Gronn-Stitched Girdle
			{ 3, 27985 }, -- Deathforge Girdle
		},
	},

	{ -- Legs
		name = format(AL["Legs"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30739 }, -- Scaled Greaves of the Marksman
			{ 2, 28741 }, -- Skulker's Greaves
			{ 3, 29022 }, -- Warbringer Greaves
			{ 4, 29767 }, -- Leggings of the Fallen Defender
			{ 5, 30538 }, -- Midnight Legguards
		},
	},

	{ -- Feet
		name = format(AL["Feet"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28608 }, -- Ironstriders of Urgency
			{ 2, 25686 }, -- Fel Leather Boots
			{ 3, 28545 }, -- Edgewalker Longboots
			{ 4, 30401 }, -- Farahlite Studded Boots
		},
	},

	{ -- Neck
		name = format(AL["Neck"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29381 }, -- Choker of Vile Intent
			{ 2, 29349 }, -- Adamantine Chain of the Unbroken
			{ 3, 28509 }, -- Worgen Claw Necklace
		},
	},

	{ -- Rings
		name = format(AL["Rings"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30738 }, -- Ring of Reciprocity
			{ 2, 28757 }, -- Ring of a Thousand Marks
			{ 3, 28730 }, -- Mithril Band of the Unscarred
			{ 4, 30834 }, -- Shapeshifter's Signet
			{ 5, 28649 }, -- Garona's Signet Ring
			{ 6, 29283 }, -- Violet Signet of the Master Assassin
			{ 7, 29379 }, -- Ring of Arathi Warlords
		},
	},

	{ -- Trinkets
		name = format(AL["Trinkets"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28830 }, -- Dragonspine Trophy
			{ 2, 29383 }, -- Bloodlust Brooch
			{ 3, 21670 }, -- Badge of the Swarmguard
		},
	},

	{ -- One-Hand
		name = format(AL["Onehand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28438 }, -- Dragonmaw
			{ 2, 28657 }, -- Fool's Bane
			{ 3, 28767 }, -- The Decapitator
			{ 4, 23054 }, -- Gressil, Dawn of Ruin
		},
	},

	{ -- Off-Hand
		name = format(AL["Offhand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28729 }, -- Spiteblade
			{ 2, 30733 }, -- Hope Ender
		},
	},

	{ -- Two-Hand
		name = format(AL["Twohand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28429 }, -- Lionheart Champion
			{ 2, 28573 }, -- Despair
			{ 3, 28773 }, -- Gorehowl
		},
	},

	{ -- Ranged
		name = format(AL["Ranged"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30724 }, -- Barrel-Blade Longrifle
			{ 2, 28772 }, -- Sunfury Bow of the Phoenix
			{ 3, 30279 }, -- Mama's Insurance
			{ 4, 29211 }, -- Fitz's Throwing Axe
			{ 5, 22811 }, -- Soulstring
		},
	},

	},
}

data["WarriorFury"] = {
	name = AL["Warrior Fury BiS (Phase 1)"],
	ContentType = SET_CONTENT,
	items = {

	{ -- Head
		name = format(AL["Head"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29021 }, -- Warbringer Battle-Helm
			{ 2, 29761 }, -- Helm of the Fallen Defender
			{ 3, 32087 }, -- Mask of the Deceiver
		},
	},

	{ -- Shoulders
		name = format(AL["Shoulders"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29023 }, -- Warbringer Shoulderplates
			{ 2, 29764 }, -- Pauldrons of the Fallen Defender
			{ 3, 30740 }, -- Ripfiend Shoulderplates
			{ 4, 33173 }, -- Ragesteel Shoulders
		},
	},

	{ -- Back
		name = format(AL["Back"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 24259 }, -- Vengeance Wrap
			{ 2, 30729 }, -- Black-Iron Battlecloak
			{ 3, 28672 }, -- Drape of the Dark Reavers
		},
	},

	{ -- Chest
		name = format(AL["Chest"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29019 }, -- Warbringer Breastplate
			{ 2, 29753 }, -- Chestguard of the Fallen Defender
			{ 3, 30730 }, -- Terrorweave Tunic
			{ 4, 23522 }, -- Ragesteel Breastplate
			{ 5, 24544 }, -- Gladiator's Plate Chestpiece
			{ 6, 31548 }, -- Blackened Chestplate
		},
	},

	{ -- Wrist
		name = format(AL["Wrist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28795 }, -- Bladespire Warbands
			{ 2, 23537 }, -- Black Felsteel Bracers
			{ 3, 28381 }, -- General's Plate Bracers
			{ 4, 30399 }, -- Nightstalker's Wristguards
		},
	},

	{ -- Hands
		name = format(AL["Hands"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28824 }, -- Gauntlets of Martial Perfection
			{ 2, 25685 }, -- Fel Leather Gloves
			{ 3, 30644 }, -- Grips of Deftness
			{ 4, 29020 }, -- Warbringer Gauntlets
			{ 5, 29758 }, -- Gloves of the Fallen Defender
			{ 6, 27497 }, -- Doomplate Gauntlets
		},
	},

	{ -- Waist
		name = format(AL["Waist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28779 }, -- Girdle of the Endless Pit
			{ 2, 28828 }, -- Gronn-Stitched Girdle
			{ 3, 27985 }, -- Deathforge Girdle
		},
	},

	{ -- Legs
		name = format(AL["Legs"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30739 }, -- Scaled Greaves of the Marksman
			{ 2, 28741 }, -- Skulker's Greaves
			{ 3, 30538 }, -- Midnight Legguards
			{ 4, 29022 }, -- Warbringer Greaves
			{ 5, 29767 }, -- Leggings of the Fallen Defender
		},
	},

	{ -- Feet
		name = format(AL["Feet"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28608 }, -- Ironstriders of Urgency
			{ 2, 25686 }, -- Fel Leather Boots
			{ 3, 28545 }, -- Edgewalker Longboots
			{ 4, 30401 }, -- Farahlite Studded Boots
		},
	},

	{ -- Neck
		name = format(AL["Neck"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29381 }, -- Choker of Vile Intent
			{ 2, 29349 }, -- Adamantine Chain of the Unbroken
			{ 3, 28509 }, -- Worgen Claw Necklace
		},
	},

	{ -- Rings
		name = format(AL["Rings"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30738 }, -- Ring of Reciprocity
			{ 2, 28757 }, -- Ring of a Thousand Marks
			{ 3, 28730 }, -- Mithril Band of the Unscarred
			{ 4, 30834 }, -- Shapeshifter's Signet
			{ 5, 28649 }, -- Garona's Signet Ring
			{ 6, 29283 }, -- Violet Signet of the Master Assassin
			{ 7, 29379 }, -- Ring of Arathi Warlords
		},
	},

	{ -- Trinkets
		name = format(AL["Trinkets"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28830 }, -- Dragonspine Trophy
			{ 2, 29383 }, -- Bloodlust Brooch
			{ 3, 21670 }, -- Badge of the Swarmguard
		},
	},

	{ -- One-Hand
		name = format(AL["Onehand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28438 }, -- Dragonmaw
			{ 2, 28657 }, -- Fool's Bane
			{ 3, 28767 }, -- The Decapitator
			{ 4, 23054 }, -- Gressil, Dawn of Ruin
		},
	},

	{ -- Off-Hand
		name = format(AL["Offhand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28729 }, -- Spiteblade
			{ 2, 30733 }, -- Hope Ender
		},
	},

	{ -- Two-Hand
		name = format(AL["Twohand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28429 }, -- Lionheart Champion
			{ 2, 28573 }, -- Despair
			{ 3, 28773 }, -- Gorehowl
		},
	},

	{ -- Ranged
		name = format(AL["Ranged"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30724 }, -- Barrel-Blade Longrifle
			{ 2, 28772 }, -- Sunfury Bow of the Phoenix
			{ 3, 30279 }, -- Mama's Insurance
			{ 4, 29211 }, -- Fitz's Throwing Axe
			{ 5, 22811 }, -- Soulstring
		},
	},

	},
}

data["WarriorProt"] = {
	name = AL["Warrior Protection BiS (Phase 1)"],
	ContentType = SET_CONTENT,
	items = {

	{ -- Head
		name = format(AL["Head"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29011 }, -- Warbringer Greathelm
			{ 2, 29761 }, -- Helm of the Fallen Defender
			{ 3, 24545 }, -- Gladiator's Plate Helm
			{ 4, 29021 }, -- Warbringer Battle-Helm
			{ 5, 30731 }, -- Faceguard of the Endless Watch
			{ 6, 28593 }, -- Eternium Greathelm
		},
	},

	{ -- Shoulders
		name = format(AL["Shoulders"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29023 }, -- Warbringer Shoulderplates
			{ 2, 29764 }, -- Pauldrons of the Fallen Defender
			{ 3, 29016 }, -- Warbringer Shoulderguards
			{ 4, 24546 }, -- Gladiator's Plate Shoulders
			{ 5, 28743 }, -- Mantle of Abrahmis
		},
	},

	{ -- Back
		name = format(AL["Back"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28672 }, -- Drape of the Dark Reavers
			{ 2, 28529 }, -- Royal Cloak of Arathi Kings
			{ 3, 28660 }, -- Gilded Thorium Cloak
			{ 4, 29385 }, -- Farstrider Defender's Cloak
		},
	},

	{ -- Chest
		name = format(AL["Chest"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29012 }, -- Warbringer Chestguard
			{ 2, 29753 }, -- Chestguard of the Fallen Defender
			{ 3, 24544 }, -- Gladiator's Plate Chestpiece
			{ 4, 28597 }, -- Panzar'Thar Breastplate
			{ 5, 28484 }, -- Bulwark of Kings
		},
	},

	{ -- Wrist
		name = format(AL["Wrist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28996 }, -- Marshal's Plate Bracers
			{ 2, 28502 }, -- Vambraces of Courage
			{ 3, 28795 }, -- Bladespire Warbands
			{ 4, 23538 }, -- Bracers of the Green Fortress
		},
	},

	{ -- Hands
		name = format(AL["Hands"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30741 }, -- Topaz-Studded Battlegrips
			{ 2, 30644 }, -- Grips of Deftness
			{ 3, 28518 }, -- Iron Gauntlets of the Maiden
			{ 4, 29017 }, -- Warbringer Handguards
			{ 5, 29758 }, -- Gloves of the Fallen Defender
		},
	},

	{ -- Waist
		name = format(AL["Waist"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28995 }, -- Marshal's Plate Belt
			{ 2, 28566 }, -- Crimson Girdle of the Indomitable
			{ 3, 28779 }, -- Girdle of the Endless Pit
		},
	},

	{ -- Legs
		name = format(AL["Legs"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28621 }, -- Wrynn Dynasty Greaves
			{ 2, 24547 }, -- Gladiator's Plate Legguards
			{ 3, 29015 }, -- Warbringer Legguards
			{ 4, 29767 }, -- Leggings of the Fallen Defender
		},
	},

	{ -- Feet
		name = format(AL["Feet"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28747 }, -- Battlescar Boots
			{ 2, 28608 }, -- Ironstriders of Urgency
			{ 3, 28997 }, -- Marshal's Plate Greaves
			{ 4, 30641 }, -- Boots of Elusion
		},
	},

	{ -- Neck
		name = format(AL["Neck"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29386 }, -- Necklace of the Juggernaut
			{ 2, 28516 }, -- Barbed Choker of Discipline
			{ 3, 28509 }, -- Worgen Claw Necklace
			{ 4, 28244 }, -- Pendant of Triumph
		},
	},

	{ -- Rings
		name = format(AL["Rings"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 29279 }, -- Violet Signet of the Great Protector
			{ 2, 30834 }, -- Shapeshifter's Signet
			{ 3, 28675 }, -- Shermanar Great-Ring
			{ 4, 28792 }, -- A'dal's Signet of Defense
			{ 5, 32385 }, -- Magtheridon's Head
			{ 6, 29384 }, -- Ring of Unyielding Force
			{ 7, 28649 }, -- Garona's Signet Ring
			{ 8, 29283 }, -- Violet Signet of the Master Assassin
		},
	},

	{ -- Trinkets
		name = format(AL["Trinkets"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 23836 }, -- Goblin Rocket Launcher
			{ 2, 23835 }, -- Gnomish Poultryizer
			{ 3, 31113 }, -- Violet Badge
			{ 4, 28121 }, -- Icon of Unyielding Courage
			{ 5, 28579 }, -- Romulo's Poison Vial
		},
	},

	{ -- One-Hand
		name = format(AL["Onehand"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28749 }, -- King's Defender
			{ 2, 28426 }, -- Blazeguard
			{ 3, 29165 }, -- Warbringer
			{ 4, 29362 }, -- The Sun Eater
			{ 5, 28189 }, -- Latro's Shifting Sword
		},
	},

	{ -- Shield
		name = format(AL["Shield"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 28825 }, -- Aldori Legacy Defender
			{ 2, 29176 }, -- Crest of the Sha'tar
			{ 3, 28358 }, -- Gladiator's Shield Wall
			{ 4, 28606 }, -- Shield of Impenetrable Darkness
			{ 5, 29266 }, -- Azure-Shield of Coldarra
		},
	},

	{ -- Ranged
		name = format(AL["Ranged"], "1"),
		[NORMAL_DIFF] = {
			{ 1, 30724 }, -- Barrel-Blade Longrifle
			{ 2, 28319 }, -- Gladiator's War Edge
			{ 3, 28826 }, -- Shuriken of Negation
		},
	},

	},
}
