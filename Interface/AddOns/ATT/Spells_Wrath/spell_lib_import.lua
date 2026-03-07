local addon, ATTdbs = ...

ATTdbs.dbImport = {
	["DRUID"] = {
		{ ["ability"] = 29166, ["cooldown"] = 180, }, -- Innervate --
		{ ["ability"] = 22812, ["cooldown"] = 60, }, -- Barkskin -
		{ ["ability"] = 8983, ["cooldown"] = 60, }, -- Bash --
		{ ["ability"] = 17116, ["cooldown"] = 180, }, -- Nature's Swiftness - talent
		{ ["ability"] = 27009, ["cooldown"] = 60, }, -- Natures Grasp --talent rank
		{ ["ability"] = 33831, ["cooldown"] = 180, }, -- Force of Nature	-talent
		{ ["ability"] = 5229, ["cooldown"] = 60, }, -- Enrage
		--{	["ability"] = 27012, ["cooldown"] = 60,}, -- Hurricane
		{ ["ability"] = 26983, ["cooldown"] = 480, }, -- Tranquility
		{ ["ability"] = 33357, ["cooldown"] = 180, }, -- Dash
		{ ["ability"] = 5209, ["cooldown"] = 180, }, -- Challenging Roar *
		{ ["ability"] = 27048, ["cooldown"] = 20, }, -- Cower *
		{ ["ability"] = 27047, ["cooldown"] = 5, }, -- Growl *
		{ ["ability"] = 9913, ["cooldown"] = 10, }, -- Prowl *
		{ ["ability"] = 26994, ["cooldown"] = 600, }, -- Rebirth * !
		--{	["ability"] = 16864, ["cooldown"] = 10,},  -- Omen of Clarity *
		{ ["ability"] = 16979, ["cooldown"] = 15, }, -- Feral Charge *
		{ ["ability"] = 18562, ["cooldown"] = 15, }, -- Swiftmend * - mod -set bonus
		{ ["ability"] = 53201, ["cooldown"] = 90, }, -- Starfall : New * -mod  -glyph
		{ ["ability"] = 61336, ["cooldown"] = 180, }, -- Survival Instincts : New *
		{ ["ability"] = 50334, ["cooldown"] = 180, }, -- Bersek : New *

	},
	["HUNTER"] = {
		{ ["ability"] = 19503, ["cooldown"] = 30, }, -- Scatter Shot --talent
		{ ["ability"] = 19263, ["cooldown"] = 90, }, -- Deterrence --talent
		{ ["ability"] = 14311, ["cooldown"] = 30, }, -- Freezing Trap -mod
		{ ["ability"] = 13809, ["cooldown"] = 30, }, -- Frost Trap -mod
		{ ["ability"] = 34600, ["cooldown"] = 30, }, -- Snake Trap -mod
		{ ["ability"] = 49067, ["cooldown"] = 30, }, -- Explosive Trap -mod
		{ ["ability"] = 49056, ["cooldown"] = 30, }, -- Immolation Trap
		{ ["ability"] = 34490, ["cooldown"] = 20, }, -- Silencing Shot -- talent
		{ ["ability"] = 27068, ["cooldown"] = 60, }, -- Wyvern Sting -- talent rank
		{ ["ability"] = 19577, ["cooldown"] = 60, }, -- Intimidation -- talent
		{ ["ability"] = 3045, ["cooldown"] = 300, }, -- Rapid Fire --mod
		{ ["ability"] = 5384, ["cooldown"] = 30, }, -- Feign Death
		{ ["ability"] = 19574, ["cooldown"] = 120, }, -- Bestial Wrath
		{ ["ability"] = 23989, ["cooldown"] = 180, }, -- Readiness
		{ ["ability"] = 34477, ["cooldown"] = 30, }, -- Misdirection
		{ ["ability"] = 1543, ["cooldown"] = 20, }, -- Flare
		{ ["ability"] = 14327, ["cooldown"] = 30, }, -- Scare Beast
		{ ["ability"] = 27019, ["cooldown"] = 6, }, -- Arcane Shot *
		{ ["ability"] = 36916, ["cooldown"] = 5, }, -- Mongoose Bite *
		{ ["ability"] = 27021, ["cooldown"] = 10, }, -- Multi-Shot *
		{ ["ability"] = 27014, ["cooldown"] = 6, }, -- Raptor Strike *
		{ ["ability"] = 19801, ["cooldown"] = 8, }, -- Tranquilizing Shot *
		--{	["ability"] = 27022, ["cooldown"] = 60,},  -- Volley *
		{ ["ability"] = 27065, ["cooldown"] = 10, }, -- Aimed Shot *
		{ ["ability"] = 27067, ["cooldown"] = 5, }, -- Counterattack *
		{ ["ability"] = 49012, ["cooldown"] = 60, }, -- Wyvern Sting: New * -mod glyph
		{ ["ability"] = 60192, ["cooldown"] = 30, }, -- Freezing Arrow: New * -mod
		{ ["ability"] = 67481, ["cooldown"] = 60, }, -- Roar of Sacrifice: New *
		{ ["ability"] = 53271, ["cooldown"] = 60, }, -- Master's Call: New *
		{ ["ability"] = 63672, ["cooldown"] = 30, }, -- Black Arrow New *

	},
	["MAGE"] = {
		{ ["ability"] = 1953, ["cooldown"] = 15, }, -- Blink
		{ ["ability"] = 2139, ["cooldown"] = 24, }, -- Counterspell
		{ ["ability"] = 45438, ["cooldown"] = 300, }, -- Ice Block -mod
		{ ["ability"] = 12472, ["cooldown"] = 180, }, -- Icy Veins -- talent
		{ ["ability"] = 31687, ["cooldown"] = 180, }, -- Summon Water Elemental -- talent -mod
		{ ["ability"] = 12043, ["cooldown"] = 120, }, -- Presence of Mind -- talent -mod
		{ ["ability"] = 11129, ["cooldown"] = 120, }, -- Combustion -- talent
		{ ["ability"] = 27087, ["cooldown"] = 10, }, -- Cone of Cold
		{ ["ability"] = 33043, ["cooldown"] = 20, }, -- Dragon's Breath -- talent rank
		{ ["ability"] = 12042, ["cooldown"] = 120, }, -- Arcane Power -- talent
		{ ["ability"] = 11958, ["cooldown"] = 480, }, -- Cold Snap	 -- talent -mod
		{ ["ability"] = 42917, ["cooldown"] = 25, }, -- Frost Nova -mod
		{ ["ability"] = 33405, ["cooldown"] = 30, }, -- Ice Barrier
		{ ["ability"] = 42945, ["cooldown"] = 30, }, -- Blast Wave
		{ ["ability"] = 66, ["cooldown"] = 180, }, -- Invisibility -mod
		--{   ["ability"] = 28734,  ["cooldown"] = 30, ["race"] = {[1] = 10}, }, --Manatap belf
		{ ["ability"] = 32796, ["cooldown"] = 30, }, -- Frost Ward
		{ ["ability"] = 27128, ["cooldown"] = 30, }, -- Fire Ward
		{ ["ability"] = 27079, ["cooldown"] = 8, }, -- Fire Blast
		{ ["ability"] = 12051, ["cooldown"] = 240, }, -- Evocation
		--{	["ability"] = 33938, ["cooldown"] = 6,},  -- Pyroblast	 -- talent *
		{ ["ability"] = 42950, ["cooldown"] = 20, }, -- Dragon's Breath : New
		{ ["ability"] = 44572, ["cooldown"] = 30, }, -- Deep Freeze : New
		{ ["ability"] = 33395, ["cooldown"] = 30, }, --  Freeze : New --pet

	},
	["PALADIN"] = {
		{ ["ability"] = 10308, ["cooldown"] = 60, }, -- Hammer of Justice  -mod
		{ ["ability"] = 10278, ["cooldown"] = 300, }, -- Blessing of Protection -mod
		{ ["ability"] = 1044, ["cooldown"] = 25, }, -- Blessing of Freedom
		--{	["ability"] = 1020, ["cooldown"] = 300,},   -- Divine Shield : Prot only?
		{ ["ability"] = 642, ["cooldown"] = 300, }, -- Divine Shield : NEW -mod
		{ ["ability"] = 498, ["cooldown"] = 180, }, -- Divine Protection : NEW -mod
		{ ["ability"] = 31884, ["cooldown"] = 180, }, -- Avenging Wrath
		{ ["ability"] = 20066, ["cooldown"] = 60, }, -- Repentance
		{ ["ability"] = 31842, ["cooldown"] = 180, }, -- Divine Illumination --talent
		{ ["ability"] = 32700, ["cooldown"] = 30, }, -- Avengers Shield -- talent rank
		{ ["ability"] = 20216, ["cooldown"] = 120, }, -- Divine Favor
		{ ["ability"] = 27139, ["cooldown"] = 30, }, -- Holy Wrath
		--{	["ability"] = 10326, ["cooldown"] = 30,}, -- Turn Evil
		{ ["ability"] = 27154, ["cooldown"] = 1200, }, -- Lay on Hands -mod
		{ ["ability"] = 20271, ["cooldown"] = 10, }, -- Judgement * -mod
		{ ["ability"] = 27180, ["cooldown"] = 6, }, -- Hammer of Wrath *
		{ ["ability"] = 27138, ["cooldown"] = 15, }, -- Exorcism *
		{ ["ability"] = 19752, ["cooldown"] = 600, }, -- Divine Intervention *
		{ ["ability"] = 27173, ["cooldown"] = 8, }, -- Consecration *  Light's Grace!!!!!!! cdr
		{ ["ability"] = 27179, ["cooldown"] = 8, }, -- Holy Shield *
		{ ["ability"] = 48825, ["cooldown"] = 6, }, -- Holy Shock * - new id --mod Glyph
		{ ["ability"] = 31821, ["cooldown"] = 120, }, -- Aura Mastery :New *
		{ ["ability"] = 64205, ["cooldown"] = 120, }, -- Divne Sacrifice :New *
		{ ["ability"] = 48827, ["cooldown"] = 30, }, -- Avenger's Shield :New *
		{ ["ability"] = 66008, ["cooldown"] = 60, }, -- Repentance :New *
		{ ["ability"] = 54428, ["cooldown"] = 60, }, -- Divine Plea :New *
		{ ["ability"] = 6940, ["cooldown"] = 120, }, --  Hand of Sacrifice :New *

	},
	["PRIEST"] = {
		{ ["ability"] = 10890, ["cooldown"] = 30, }, -- Psychic Scream  --mod and glyph?
		{ ["ability"] = 34433, ["cooldown"] = 300, }, -- Shadowfiend --here
		{ ["ability"] = 15487, ["cooldown"] = 45, }, -- Silence  --talent
		{ ["ability"] = 10060, ["cooldown"] = 120, }, -- Power Infusion --talent
		{ ["ability"] = 33206, ["cooldown"] = 180, }, -- Pain Suppression --talent -mod
		{ ["ability"] = 33072, ["cooldown"] = 6, }, -- Holy Shock
		{ ["ability"] = 14751, ["cooldown"] = 180, }, -- Inner Focus -mod
		{ ["ability"] = 6346, ["cooldown"] = 180, }, -- Fear Ward
		--{   ["ability"] = 25467,  ["cooldown"] = 180 ,["race"] = {[1] = 5} ,}, --Devouring Plague --undead
		{ ["ability"] = 25437, ["cooldown"] = 120, }, --Desperate Prayer --human dwarf
		{ ["ability"] = 28734, ["cooldown"] = 30, ["race"] = { [1] = 10 }, }, --Manatap belf
		{ ["ability"] = 28275, ["cooldown"] = 180, }, -- Lightwell
		--{	["ability"] = 15286, ["cooldown"] = 10,}, -- Vampiric Embrace
		{ ["ability"] = 25375, ["cooldown"] = 8, }, --  Mind Blast -mod
		{ ["ability"] = 47585, ["cooldown"] = 120, }, --  Dispersion : New -mod Glyph
		{ ["ability"] = 64044, ["cooldown"] = 120, }, --  Psychic Horror : New
		{ ["ability"] = 48158, ["cooldown"] = 12, }, --  Shadow World: Death : New
		{ ["ability"] = 586, ["cooldown"] = 30, }, --  Fade : New

	},
	["ROGUE"] = {
		{ ["ability"] = 1766, ["cooldown"] = 10, }, -- Kick
		{ ["ability"] = 8643, ["cooldown"] = 20, }, -- Kidney Shot
		{ ["ability"] = 26669, ["cooldown"] = 180, }, -- Evasion
		{ ["ability"] = 31224, ["cooldown"] = 90, }, -- Cloak of Shadows -mod
		{ ["ability"] = 26889, ["cooldown"] = 180, }, -- Vanish  -mod
		{ ["ability"] = 2094, ["cooldown"] = 180, }, -- Blind -mod
		{ ["ability"] = 11305, ["cooldown"] = 180, }, -- Sprint
		{ ["ability"] = 14177, ["cooldown"] = 180, }, -- Cold Blood --talent
		{ ["ability"] = 13750, ["cooldown"] = 180, }, -- Adrenaline Rush --talent
		{ ["ability"] = 13877, ["cooldown"] = 120, }, -- Blade Flurry --talent
		{ ["ability"] = 36554, ["cooldown"] = 30, }, -- Shadowstep --talent -mod
		{ ["ability"] = 14185, ["cooldown"] = 480, }, -- Preparation --talent -mod
		{ ["ability"] = 1725, ["cooldown"] = 30, }, -- Distract
		{ ["ability"] = 27448, ["cooldown"] = 10, }, -- Feint
		{ ["ability"] = 38764, ["cooldown"] = 10, }, -- Gouge *
		{ ["ability"] = 1787, ["cooldown"] = 10, }, -- Stealth * -mod
		{ ["ability"] = 14278, ["cooldown"] = 20, }, -- Ghostly Strike *
		{ ["ability"] = 14183, ["cooldown"] = 20, }, -- Premeditation *
		{ ["ability"] = 14251, ["cooldown"] = 6, }, -- Riposte *
		{ ["ability"] = 51713, ["cooldown"] = 60, }, -- Shadow Dance: New *
		{ ["ability"] = 51690, ["cooldown"] = 120, }, -- Killing Spree: New *
		{ ["ability"] = 51722, ["cooldown"] = 60, }, -- Dismantle
		{ ["ability"] = 57934, ["cooldown"] = 30, }, -- Tricks of the Trade: New *


	},
	["SHAMAN"] = {
		{ ["ability"] = 16188, ["cooldown"] = 180, }, -- Nature's Swiftness --talent --mod set bonus
		{ ["ability"] = 8177, ["cooldown"] = 15, }, -- Grounding Totem
		{ ["ability"] = 30823, ["cooldown"] = 60, }, -- Shamanistic Rage - talent rank
		{ ["ability"] = 16166, ["cooldown"] = 180, }, -- Elemental Mastery - talent
		{ ["ability"] = 25454, ["cooldown"] = 6, }, -- Earth Shock
		{ ["ability"] = 25464, ["cooldown"] = 6, }, -- Frost Shock
		{ ["ability"] = 25457, ["cooldown"] = 6, }, -- Flame Shock
		{ ["ability"] = 16190, ["cooldown"] = 300, }, -- Mana Tide Totem --talent
		{ ["ability"] = 25525, ["cooldown"] = 30, }, -- Stoneclaw Totem
		{ ["ability"] = 2062, ["cooldown"] = 600, }, -- Earth Elemental Totem
		{ ["ability"] = 2894, ["cooldown"] = 600, }, -- Fire Elemental Totem
		{ ["ability"] = 32182, ["cooldown"] = 300, }, -- Heroism	--dranei
		{ ["ability"] = 2825, ["cooldown"] = 300, }, -- Bloodlust	--orc , tauren , troll
		{ ["ability"] = 25442, ["cooldown"] = 6, }, -- Chain Lightning*
		{ ["ability"] = 2484, ["cooldown"] = 15, }, -- Earthbind Totem
		{ ["ability"] = 25547, ["cooldown"] = 10, }, -- Fire Nova Totem*
		{ ["ability"] = 17364, ["cooldown"] = 8, }, -- Stormstrike
		{ ["ability"] = 51490, ["cooldown"] = 45, }, -- Thunderstorm :New -mod glyph
		{ ["ability"] = 57994, ["cooldown"] = 6, }, -- Wind Shear : New -mod
		{ ["ability"] = 51514, ["cooldown"] = 45, }, -- Hex: New

	},
	["WARLOCK"] = {
		{ ["ability"] = 19647, ["cooldown"] = 24, }, -- Spell Lock
		{ ["ability"] = 17928, ["cooldown"] = 40, }, -- Howl of Terror
		{ ["ability"] = 17925, ["cooldown"] = 120, }, -- Death Coil
		{ ["ability"] = 30414, ["cooldown"] = 20, }, -- Shadowfury --talent rank
		{ ["ability"] = 30546, ["cooldown"] = 15, }, -- Shadowburn -- talent rank
		{ ["ability"] = 18708, ["cooldown"] = 180, }, -- Fel Domination --talent
		--{	["ability"] = 18288, ["cooldown"] = 180,}, -- Amplify Curse
		{ ["ability"] = 29858, ["cooldown"] = 180, }, -- Soulshatter
		{ ["ability"] = 30910, ["cooldown"] = 60, }, -- Curse of Doom
		--{	["ability"] = 30545, ["cooldown"] = 60,}, -- Soul Fire
		{ ["ability"] = 28610, ["cooldown"] = 30, }, -- Shadow Ward
		{ ["ability"] = 1122, ["cooldown"] = 600, }, -- Inferno
		{ ["ability"] = 18540, ["cooldown"] = 1800, }, -- Ritual of Doom
		{ ["ability"] = 47847, ["cooldown"] = 20, }, -- Shadowfury : New
		{ ["ability"] = 48011, ["cooldown"] = 8, }, -- Devour Magic : New
		{ ["ability"] = 48020, ["cooldown"] = 30, }, -- Demonic Circle : New

	},
	["WARRIOR"] = {
		{ ["ability"] = 6552, ["cooldown"] = 10, }, -- Pummel
		{ ["ability"] = 23920, ["cooldown"] = 10, }, -- Spell Reflection
		{ ["ability"] = 3411, ["cooldown"] = 30, }, -- Intervene
		{ ["ability"] = 676, ["cooldown"] = 60, }, -- Disarm
		{ ["ability"] = 5246, ["cooldown"] = 120, }, --  Intimidating Shout
		{ ["ability"] = 12292, ["cooldown"] = 180, }, -- Death Wish --talent
		{ ["ability"] = 12975, ["cooldown"] = 180, }, -- Last Stand --talent
		{ ["ability"] = 12809, ["cooldown"] = 30, }, -- Concussion Blow --talent
		{ ["ability"] = 72, ["cooldown"] = 12, }, -- Shield Bash
		{ ["ability"] = 11578, ["cooldown"] = 15, }, -- Charge -mod -glyph 7%
		{ ["ability"] = 871, ["cooldown"] = 300, }, -- Shield Wall
		{ ["ability"] = 2565, ["cooldown"] = 60, }, -- Shield Block
		{ ["ability"] = 20230, ["cooldown"] = 300, }, -- Retaliation
		{ ["ability"] = 1719, ["cooldown"] = 300, }, -- Recklessness
		{ ["ability"] = 12328, ["cooldown"] = 30, }, -- Sweeping Strikes
		{ ["ability"] = 18499, ["cooldown"] = 30, }, -- Berserker Rage
		{ ["ability"] = 25266, ["cooldown"] = 120, }, -- Mocking Blow
		{ ["ability"] = 2687, ["cooldown"] = 60, }, -- Bloodrage *
		{ ["ability"] = 1161, ["cooldown"] = 180, }, -- Challenging Shout *
		{ ["ability"] = 355, ["cooldown"] = 8, }, -- Taunt *
		{ ["ability"] = 1680, ["cooldown"] = 10, }, -- Whirlwind *
		{ ["ability"] = 30335, ["cooldown"] = 4, }, -- Bloodthirst *
		{ ["ability"] = 30330, ["cooldown"] = 6, }, -- Mortal Strike *
		{ ["ability"] = 30356, ["cooldown"] = 6, }, -- Shield Slam *
		{ ["ability"] = 46924, ["cooldown"] = 90, }, -- Blade Storm : New *
		{ ["ability"] = 46968, ["cooldown"] = 20, }, -- Shockwave : New * -mod
		{ ["ability"] = 25275, ["cooldown"] = 30, }, -- intercept : New * -mod

	},
	["DEATHKNIGHT"] = {
		{ ["ability"] = 47528, ["cooldown"] = 10, }, -- Mind Freeze
		{ ["ability"] = 47481, ["cooldown"] = 60, }, -- Gnaw -mod ??
		{ ["ability"] = 48743, ["cooldown"] = 120, }, -- Death Pact
		{ ["ability"] = 49206, ["cooldown"] = 180, }, -- Summon Gargoyle
		{ ["ability"] = 51052, ["cooldown"] = 120, }, -- Anti-Magic Zone
		{ ["ability"] = 49576, ["cooldown"] = 35, }, -- Death Grip
		{ ["ability"] = 48707, ["cooldown"] = 45, }, -- Anti-Magic Shell
		{ ["ability"] = 47476, ["cooldown"] = 120, }, -- Strangulate
		{ ["ability"] = 49039, ["cooldown"] = 120, }, -- Lichborne
		{ ["ability"] = 49203, ["cooldown"] = 60, }, -- Hungering Cold
		{ ["ability"] = 51271, ["cooldown"] = 60, }, -- Unbreakable Armor
		{ ["ability"] = 48792, ["cooldown"] = 120, }, -- Icebound Fortitude
	},

}

ATTdbs.dbRacials = {
	{ ["ability"] = 59752, ["cooldown"] = 120, ["race"] = 1, ["cdshare"] = true },
	{ ["ability"] = 20572, ["cooldown"] = 120, ["race"] = 2 },
	{ ["ability"] = 20594, ["cooldown"] = 120, ["race"] = 3 },
	{ ["ability"] = 58984, ["cooldown"] = 120, ["race"] = 4 }, --changed
	{ ["ability"] = 20577, ["cooldown"] = 120, ["race"] = 5, },
	{ ["ability"] = 7744, ["cooldown"] = 120, ["race"] = 5, ["cdshare"] = true },
	{ ["ability"] = 20549, ["cooldown"] = 120, ["race"] = 6, },
	{ ["ability"] = 20589, ["cooldown"] = 180, ["race"] = 7 }, --to check
	{ ["ability"] = 26297, ["cooldown"] = 105, ["race"] = 8 },
	{ ["ability"] = 28730, ["cooldown"] = 120, ["race"] = 10 },
	{ ["ability"] = 28880, ["cooldown"] = 180, ["race"] = 11 },
}

ATTdbs.dbTrinketsMerge = {
	[37864] = 37864,
	[28237] = 37864,
	[30351] = 37864,
	[30350] = 37864,
	[30349] = 37864,
	[30348] = 37864,
	[28234] = 37864,
	[28235] = 37864,
	[28238] = 37864,
	[28236] = 37864,
	[42123] = 37864,
	[42124] = 37864,
	[51377] = 37864,


	[37865] = 37865,
	[28243] = 37865,
	[30343] = 37865,
	[30344] = 37865,
	[30345] = 37865,
	[30346] = 37865,
	[28242] = 37865,
	[28241] = 37865,
	[28240] = 37865,
	[28239] = 37865,
	[42122] = 37865,
	[42126] = 37865,
	[51378] = 37865,

	[50354] = 50354,
	[50726] = 50354,
}

ATTdbs.dbTrinkets = {
	{ ["ability"] = 42292, ["trinketId"] = 37864, ["cooldown"] = 120, ["isPvPtrinket"] = true, }, --ally
	{ ["ability"] = 42292, ["trinketId"] = 37865, ["cooldown"] = 120, ["isPvPtrinket"] = true, }, -- horde

	{ ["ability"] = 42292, ["trinketId"] = 46083, ["cooldown"] = 120, ["isPvPtrinket"] = true,},
	{ ["ability"] = 42292, ["trinketId"] = 46085, ["cooldown"] = 120, ["isPvPtrinket"] = true,},
	{ ["ability"] = 42292, ["trinketId"] = 46081, ["cooldown"] = 120, ["isPvPtrinket"] = true,},
	{ ["ability"] = 42292, ["trinketId"] = 46084, ["cooldown"] = 120, ["isPvPtrinket"] = true,},
	{ ["ability"] = 42292, ["trinketId"] = 46082, ["cooldown"] = 120, ["isPvPtrinket"] = true,},
	---

	--{ ["ability"] = 35165, ["trinketId"] = 29376, ["cooldown"] = 120, },
	--{ ["ability"] = 35163, ["trinketId"] = 29370, ["cooldown"] = 120, },
	--{ ["ability"] = 35169, ["trinketId"] = 29387, ["cooldown"] = 120, },

	{ ["ability"] = 71607, ["trinketId"] = 50354, ["cooldown"] = 120, }, --?

	{ ["ability"] = 60319, ["trinketId"] = 40531, ["cooldown"] = 120, },

}

ATTdbs.dbItemBonus = {
	[41939] = 41939,
	[22345] = 22345,
	[19621] = 19621,
	[19617] = 19617, 
	[14154] = 14154,
	[41873] = 41873,
	[41874] = 41874,
	[41940] = 41940,
}

ATTdbs.dbSetBonus = {

	[33717] = 44297,
	[33744] = 44297,
	[35053] = 44297,
	[35083] = 44297,
	[41847] = 44297,
	[41872] = 44297,
	[41873] = 44297,
	[41937] = 44297,
	[41938] = 44297,
	[41939] = 44297,

	[16828] = 23556, -- 205
	[16829] = 23556,
	[16830] = 23556,
	[16833] = 23556,
	[16831] = 23556,
	[16834] = 23556,
	[16835] = 23556,
	[16836] = 23556,

	[29087] = 37292, --638
	[29086] = 37292,
	[29090] = 37292,
	[29088] = 37292,
	[29089] = 37292,

	[31041] = 3841700, --678 fix
	[31032] = 3841700,
	[31037] = 3841700,
	[31045] = 3841700,
	[31047] = 3841700,
	[34571] = 3841700,
	[34445] = 3841700,
	[34554] = 3841700,

	[41268] = 38417, --774
	[41269] = 38417,
	[41270] = 38417,
	[41271] = 38417,
	[41272] = 38417,
	[41284] = 38417, --45
	[41319] = 38417,
	[41296] = 38417,
	[41273] = 38417,
	[41308] = 38417,
	[41286] = 38417, --61
	[41320] = 38417,
	[41297] = 38417,
	[41274] = 38417,
	[41309] = 38417,
	[41287] = 38417, --96
	[41321] = 38417,
	[41298] = 38417,
	[41275] = 38417,
	[41310] = 38417,

	[21355] = 26106, --493
	[21353] = 26106,
	[21354] = 26106,
	[21356] = 26106,
	[21357] = 26106,

	[29093] = 37297, --639
	[29094] = 37297,
	[29091] = 37297,
	[29092] = 37297,
	[29095] = 37297,

	[28228] = 37481, --650
	[27474] = 37481,
	[28275] = 37481,
	[27874] = 37481,
	[27801] = 37481,

	[41084] = 61256, --771
	[41140] = 61256,
	[41154] = 61256,
	[41202] = 61256,
	[41214] = 61256,
	[41085] = 61256, -- 42
	[41141] = 61256,
	[41155] = 61256,
	[41203] = 61256,
	[41215] = 61256,
	[41086] = 61256, -- 58
	[41142] = 61256,
	[41156] = 61256,
	[41204] = 61256,
	[41216] = 61256,
	[41087] = 61256, -- 93
	[41143] = 61256,
	[41157] = 61256,
	[41205] = 61256,
	[41217] = 61256,

	[29076] = 37439, -- 648
	[29080] = 37439,
	[29078] = 37439,
	[29079] = 37439,
	[29077] = 37439,

	[22502] = 28763, -- 526
	[22503] = 28763,
	[22498] = 28763,
	[22501] = 28763,
	[22497] = 28763,
	[22496] = 28763,
	[22500] = 28763,
	[22499] = 28763,
	[23062] = 28763,

	[22430] = 28774, -- 528
	[22431] = 28774,
	[22426] = 28774,
	[22428] = 28774,
	[22427] = 28774,
	[22429] = 28774,
	[22425] = 28774,
	[22424] = 28774,
	[23066] = 28774,


	[40780] = 61776, -- 779
	[40798] = 61776,
	[40818] = 61776,
	[40838] = 61776,
	[40858] = 61776,
	[40782] = 61776, -- 50
	[40802] = 61776,
	[40821] = 61776,
	[40842] = 61776,
	[40861] = 61776,
	[40785] = 61776, -- 66
	[40805] = 61776,
	[40825] = 61776,
	[40846] = 61776,
	[40864] = 61776,
	[40788] = 61776, -- 101
	[40808] = 61776,
	[40828] = 61776,
	[40849] = 61776,
	[40869] = 61776,

	[29062] = 37183,
	[29061] = 37183,
	[29065] = 37183,
	[29063] = 37183,
	[29064] = 37183,

	[28203] = 37181,
	[27535] = 37181,
	[28285] = 37181,
	[27839] = 37181,
	[27739] = 37181,

	[16827] = 21874,
	[16824] = 21874,
	[16825] = 21874,
	[16820] = 21874,
	[16821] = 21874,
	[16826] = 21874,
	[16822] = 21874,
	[16823] = 21874,

	[19617] = 24469,
	[19954] = 24469,
	[19836] = 24469,
	[19835] = 24469,
	[19834] = 24469,

	[21359] = 26112,
	[21360] = 26112,
	[21361] = 26112,
	[21362] = 26112,
	[21364] = 26112,

	[40987] = 44299,
	[41004] = 44299,
	[41016] = 44299,
	[41030] = 44299,
	[41041] = 44299,
	[40986] = 44299,
	[40998] = 44299,
	[41010] = 44299,
	[41023] = 44299,
	[41024] = 44299,
	[40989] = 44299,
	[41005] = 44299,
	[41017] = 44299,
	[41031] = 44299,
	[41042] = 44299,
	[40988] = 44299,
	[40999] = 44299,
	[41011] = 44299,
	[41025] = 44299,
	[41036] = 44299,
	[40991] = 44299,
	[41006] = 44299,
	[41018] = 44299,
	[41032] = 44299,
	[41043] = 44299,
	[40990] = 44299,
	[41000] = 44299,
	[41012] = 44299,
	[41026] = 44299,
	[41037] = 44299,
	[40993] = 44299,
	[41007] = 44299,
	[41019] = 44299,
	[41033] = 44299,
	[41044] = 44299,
	[40992] = 44299,
	[41001] = 44299,
	[41013] = 44299,
	[41027] = 44299,
	[41038] = 44299,

	[29032] = 37211,
	[29029] = 37211,
	[29028] = 37211,
	[29030] = 37211,
	[29031] = 37211,

	[35391] = 38466,
	[35392] = 38466,
	[35393] = 38466,
	[35394] = 38466,
	[35395] = 38466,

	[31640] = 38499,
	[31641] = 38499,
	[31642] = 38499,
	[31643] = 38499,
	[31644] = 38499,
	[31646] = 38499,
	[31647] = 38499,
	[31648] = 38499,
	[31649] = 38499,
	[31650] = 38499,

	[41078] = 33018,
	[41134] = 33018,
	[41148] = 33018,
	[41160] = 33018,
	[41208] = 33018,
	[41079] = 33018,
	[41135] = 33018,
	[41149] = 33018,
	[41162] = 33018,
	[41209] = 33018,
	[41080] = 33018,
	[41136] = 33018,
	[41150] = 33018,
	[41198] = 33018,
	[41210] = 33018,
	[41081] = 33018,
	[41137] = 33018,
	[41151] = 33018,
	[41199] = 33018,
	[41211] = 33018,

	[19951] = 24456,
	[19577] = 24456,
	[19824] = 24456,
	[19823] = 24456,
	[19822] = 24456,

	[40778] = 22738,
	[40797] = 22738,
	[40816] = 22738,
	[40836] = 22738,
	[40856] = 22738,
	[40783] = 22738,
	[40801] = 22738,
	[40819] = 22738,
	[40840] = 22738,
	[40859] = 22738,
	[40786] = 22738,
	[40804] = 22738,
	[40823] = 22738,
	[40844] = 22738,
	[40862] = 22738,
	[40789] = 22738,
	[40807] = 22738,
	[40826] = 22738,
	[40847] = 22738,
	[40866] = 22738,
}
