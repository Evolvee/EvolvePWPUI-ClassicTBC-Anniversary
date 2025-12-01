local addon, ATTdbs = ...

ATTdbs.cooldownResetters = {
	[GetSpellInfo(11958)] = { -- Cold Snap
		[45438] = 1, -- Ice Block
		[11426] = 1, -- Ice Barrier
		[120] = 1, -- Cone of Cold
		[122] = 1, -- Frost Nova
		[12472] = 1, -- Icy Veins
		[6143] = 1, -- Frost Ward
		[44572] = 1, -- Deep Freeze
		[31687] = 1, -- Summon Water Elemental
		[82676] = 1, -- Ring of Frost
	},
	[GetSpellInfo(45438)] = { -- Ice Block
		--56372, -- Glyph of Ice Block
		[122] = 56372, -- Frost Nova
	},
	[GetSpellInfo(14185)] = { -- 2
		[2983] = 1, -- Sprint
		[1856] = 1, -- Vanish
		[36554] = 1, -- Shadowstep
		---
		--[56819] = 56819, -- Glyph of Preparation
		[1766] = 56819, -- Kick
		[51722] = 56819, -- Dismantle
		[76577] = 56819, -- Smoke Bomb

	},
	[GetSpellInfo(23989)] = { -- Readiness
		["ALL"] = 1, 
	},
	
	[GetSpellInfo(60970)] = { -- Heroic Fury
		[20252] = 1, -- Intercept
	},
	
}


ATTdbs.ShareCD = {

	--[GetSpellInfo(16979)] = { [49376] = 1, },
	--[GetSpellInfo(49376)] = { [16979] = 1, },
	--[GetSpellInfo(43010)] = { [43012] = 1, },
	--[GetSpellInfo(43012)] = { [43010] = 1, },
	--[GetSpellInfo(49231)] = { [49233] = 1, [49236] = 1, },
	--[GetSpellInfo(49233)] = { [49231] = 1, [49233] = 1, },
	--[GetSpellInfo(49236)] = { [49231] = 1, [49236] = 1, },
	--traps
	[GetSpellInfo(1499)] = { [14311] = 1, [13809] = 1, },
	--[GetSpellInfo(14311)] = { [60192] = 1, [13809] = 1, },
	[GetSpellInfo(13809)] = { [1499] = 1, [14311] = 1, },
--	[GetSpellInfo(49067)] = { [49056] = 1, },
--	[GetSpellInfo(49056)] = { [49067] = 1, },

	[GetSpellInfo(871)] = { [1719] = 12, [20230] = 12 }, -- Shield Wall	
	[GetSpellInfo(1719)] = { [871] = 12, [20230] = 12 }, -- Recklessness
	[GetSpellInfo(20230)] = { [1719] = 12, [871] = 12 }, -- Retaliation
	
	[GetSpellInfo(31224)] = {  [74001] = 1 }, -- Cloack of Shadows 
	[GetSpellInfo(74001)] = {  [31224] = 1 }, -- Combat Readiness
	
	[GetSpellInfo(13813)] = {  [13795] = 1, [3674] = 1 }, -- Explosive Trap
	[GetSpellInfo(13795)] = { [13813] = 1, [3674] = 1 }, -- Immolation Trap
	[GetSpellInfo(3674)] = { [13813] = 1, [13795] = 1 }, -- Black Arrow

	[GetSpellInfo(8042)] = { [8042] = 1, [8050] = 1, [8056] = 1 }, -- Earth Shock 
	[GetSpellInfo(8050)] = { [8042] = 1, [8050] = 1, [8056] = 1 }, -- Flame Shock 
	[GetSpellInfo(8056)] = { [8042] = 1, [8050] = 1, [8056] = 1 }, -- Frost Shock
	
	[GetSpellInfo(1122)] = { [1122] = 1, [18540] = 1 }, -- Summon Infernal
	[GetSpellInfo(18540)] = { [1122] = 1, [18540] = 1 }, -- Summon Doomguard
}


ATTdbs.dbModif = {
-- Death Knight
[48982] = { ["mod"] = GetSpellInfo(48985), ["rank"] = { 10, 20, 30, }, }, -- Rune Tap
[49576] = { ["mod"] = GetSpellInfo(49588), ["rank"] = { 5, 10, }, }, -- Death Grip
[46584] = { ["mod"] = GetSpellInfo(52143), ["rank"] = { 60, }, }, -- Raise Dead
[47476] = { ["mod"] = GetSpellInfo(85793), ["rank"] = { 30, 60, }, }, -- Hand of Doom
[45529] = { ["mod"] = GetSpellInfo(94553), ["rank"] = { 15, 30, }, }, -- Improved Blood Tap
-- Druid
[5211] = { ["mod"] = GetSpellInfo(16940), ["rank"] = { 5, 10, }, }, -- Bash
[80964] = { ["mod"] = GetSpellInfo(16940), ["rank"] = { 25, 50, }, }, -- Skull Bash
[740] = { ["mod"] = GetSpellInfo(92363), ["rank"] = { 150, 300, }, }, -- Malfurion's Gift
[16979] = { ["mod"] = GetSpellInfo(94388), ["rank"] = { 1, }, }, -- Feral Charge (Bear)
[49376] = { ["mod"] = GetSpellInfo(94388), ["rank"] = { 2, }, }, -- Feral Charge (Cat)
-- Hunter
[1499] = { ["mod"] = GetSpellInfo(34491), ["rank"] = { 2, 4, 6, }, }, -- Freezing Trap
[13795] = { ["mod"] = GetSpellInfo(34491), ["rank"] = { 2, 4, 6, }, }, -- Immolation Trap
[13809] = { ["mod"] = GetSpellInfo(34491), ["rank"] = { 2, 4, 6, }, }, -- Ice Trap
[13813] = { ["mod"] = GetSpellInfo(34491), ["rank"] = { 2, 4, 6, }, }, -- Explosive Trap
[34600] = { ["mod"] = GetSpellInfo(34491), ["rank"] = { 2, 4, 6, }, }, -- Snake Trap
[3674] = { ["mod"] = GetSpellInfo(34491), ["rank"] = { 2, 4, 6, }, }, -- Black Arrow
[3045] = { ["mod"] = GetSpellInfo(83558), ["rank"] = { 60, 120, }, }, -- Rapid Fire
[781] = { ["mod"] = GetSpellInfo(19286), ["rank"] = { 2, 4, }, }, -- Disengage
-- Mage
[12051] = { ["mod"] = GetSpellInfo(44378), ["rank"] = { 60, 120, }, }, -- Evocation
-- Paladin
[1022] = { ["mod"] = GetSpellInfo(20174), ["rank"] = { 60, 120, }, }, -- Hand of Protection
[31884] = { ["mod"] = GetSpellInfo(93418), ["rank"] = { 30, 60, 20, 40, 60, 20, 40, 60, }, }, -- Avenging Wrath
[86150] = { ["mod"] = GetSpellInfo(31848), ["rank"] = { 40, 80, 120, }, }, -- Guardian of Ancient Kings
[853] = { ["mod"] = GetSpellInfo(20487), ["rank"] = { 10, 20, }, }, -- Hammer of Justice
[633] = { ["mod"] = GetSpellInfo(57955), ["rank"] = { 180, }, }, -- Lay on Hands
[6940] = { ["mod"] = GetSpellInfo(93418), ["rank"] = { 15, 30, }, }, -- Hand of Sacrifice
[498] = { ["mod"] = GetSpellInfo(93418), ["rank"] = { 15, 30, }, }, -- Divine Protection
[85673] = { ["mod"] = GetSpellInfo(85803), ["rank"] = { 5, 10, }, }, -- Word of Glory
-- Priest
[586] = { ["mod"] = GetSpellInfo(15274), ["rank"] = { 3, 6, }, }, -- Fade
[34433] = { ["mod"] = GetSpellInfo(15274), ["rank"] = { 30, 60, }, }, -- Shadowfiend
[8092] = { ["mod"] = GetSpellInfo(15273), ["rank"] = { 0.5, 1.0, 1.5, }, }, -- Mind Blast
[8122] = { ["mod"] = GetSpellInfo(15392), ["rank"] = { 2, 4, }, }, -- Psychic Scream
[17] = { ["mod"] = GetSpellInfo(63574), ["rank"] = { 1, 2, }, }, -- Power Word: Shield
[64843] = { ["mod"] = GetSpellInfo(87430), ["rank"] = { 150, 300, }, }, -- Divine Hymn
-- Rogue
[2094] = { ["mod"] = GetSpellInfo(13981), ["rank"] = { 30, 60, }, }, -- Blind
[1856] = { ["mod"] = GetSpellInfo(13981), ["rank"] = { 30, 60, }, }, -- Vanish
[31224] = { ["mod"] = GetSpellInfo(13981), ["rank"] = { 15, 30, }, }, -- Cloak of Shadows
[74001] = { ["mod"] = GetSpellInfo(13981), ["rank"] = { 15, 30, }, }, -- Combat Readiness
[1784] = { ["mod"] = GetSpellInfo(13975), ["rank"] = { 2, 4, }, }, -- Stealth
[57934] = { ["mod"] = GetSpellInfo(58414), ["rank"] = { 5, 10, }, }, -- Tricks of the Trade
[1725] = { ["mod"] = GetSpellInfo(58414), ["rank"] = { 5, 10, }, }, -- Distract
[36554] = { ["mod"] = GetSpellInfo(58414), ["rank"] = { 5, 10, }, }, -- Shadowstep
[14185] = { ["mod"] = GetSpellInfo(58414), ["rank"] = { 90, 180, }, }, -- Preparation
-- Shaman
[8042] = { ["mod"] = GetSpellInfo(16040), ["rank"] = { 0.5, 1.0, }, }, -- Earth Shock
[8050] = { ["mod"] = GetSpellInfo(16040), ["rank"] = { 0.5, 1.0, 1.0, 2.0, }, }, -- Flame Shock
[8056] = { ["mod"] = GetSpellInfo(16040), ["rank"] = { 0.5, 1.0, 1.0, 2.0, }, }, -- Frost Shock
[57994] = { ["mod"] = GetSpellInfo(16040), ["rank"] = { 5, 10, }, }, -- Wind Shear
[8177] = { ["mod"] = GetSpellInfo(55441), ["rank"] = { -35, }, }, -- Grounding Totem
[51490] = { ["mod"] = GetSpellInfo(63270), ["rank"] = { 10, }, }, -- Thunderstorm
-- Warlock
[7814] = { ["mod"] = GetSpellInfo(18126), ["rank"] = { 3, 6, }, }, -- Lash of Pain
-- Warrior
[871] = { ["mod"] = GetSpellInfo(29598), ["rank"] = { 60, 120, 180, }, }, -- Shield Wall
[100] = { ["mod"] = GetSpellInfo(64976), ["rank"] = { 2, }, }, -- Charge
[2565] = { ["mod"] = GetSpellInfo(29598), ["rank"] = { 10, 20, 30, }, }, -- Shield Block
[20252] = { ["mod"] = GetSpellInfo(29888), ["rank"] = { 5, 10, }, }, -- Intercept
[6544] = { ["mod"] = GetSpellInfo(29888), ["rank"] = { 10, 20, }, }, -- Heroic Leap
[469] = { ["mod"] = GetSpellInfo(12321), ["rank"] = { 15, 30, }, }, -- Booming Voice
[57755] = { ["mod"] = GetSpellInfo(12311), ["rank"] = { 15, 30, }, }, -- Heroic Throw

}

ATTdbs.dbModif2 = {
-- Hunter
[19574] = { ["mod"] = GetSpellInfo(53262), ["rank"] = { .90, .80, .70 }, }, -- Bestial Wrath
[19577] = { ["mod"] = GetSpellInfo(53262), ["rank"] = { .90, .80, .70 }, }, -- Intimidation
[26090] = { ["mod"] = GetSpellInfo(53262), ["rank"] = { .90, .80, .70 }, }, -- Pummel
-- Mage
[120] = { ["mod"] = GetSpellInfo(31670), ["rank"] = { .93, .86, .80 }, }, -- Cone of Cold
[45438] = { ["mod"] = GetSpellInfo(31670), ["rank"] = { .93, .86, .80 }, }, -- Ice Block
[122] = { ["mod"] = GetSpellInfo(31670), ["rank"] = { .93, .86, .80 }, }, -- Frost Nova
[12472] = { ["mod"] = GetSpellInfo(31670), ["rank"] = { .93, .86, .80 }, }, -- Icy Veins
[11958] = { ["mod"] = GetSpellInfo(31670), ["rank"] = { .93, .86, .80, .90, .80 }, }, -- Cold Snap
[11426] = { ["mod"] = GetSpellInfo(31670), ["rank"] = { .93, .86, .80, .90, .80 }, }, -- Ice Barrier
[31687] = { ["mod"] = GetSpellInfo(55091), ["rank"] = { .90, .80 }, }, -- Summon Water Elemental
[12043] = { ["mod"] = GetSpellInfo(44378), ["rank"] = { .88, .75 }, }, -- Presence of Mind
[12042] = { ["mod"] = GetSpellInfo(44378), ["rank"] = { .88, .75 }, }, -- Arcane Power
[66] = { ["mod"] = GetSpellInfo(44378), ["rank"] = { .88, .75 }, }, -- Invisibility
-- Paladin
[1044] = { ["mod"] = GetSpellInfo(85446), ["rank"] = { .9, .8 }, }, -- Hand of Freedom
[1038] = { ["mod"] = GetSpellInfo(85446), ["rank"] = { .9, .8 }, }, -- Hand of Salvation
[6940] = { ["mod"] = GetSpellInfo(85446), ["rank"] = { .9, .8 }, }, -- Hand of Sacrifice
-- Priest
[33076] = { ["mod"] = GetSpellInfo(47562), ["rank"] = { .94, .88, .82, .76, .70 }, }, -- Prayer of Mending
[88625] = { ["mod"] = GetSpellInfo(14898), ["rank"] = { .85, .70 }, }, -- Holy Word: Chastise
[88684] = { ["mod"] = GetSpellInfo(14898), ["rank"] = { .85, .70 }, }, -- Holy Word: Serenity
[88685] = { ["mod"] = GetSpellInfo(14898), ["rank"] = { .85, .70 }, }, -- Holy Word: Sanctuary
-- Warlock
[47193] = { ["mod"] = GetSpellInfo(63117), ["rank"] = { .85, .70 }, }, -- Demonic Empowerment
[47241] = { ["mod"] = GetSpellInfo(63117), ["rank"] = { .85, .70 }, }, -- Metamorphosis
[74434] = { ["mod"] = GetSpellInfo(63117), ["rank"] = { .85, .70 }, }, -- Soulburn
-- Warrior
[18499] = { ["mod"] = GetSpellInfo(46908), ["rank"] = { .90, .80 }, }, -- Berserker Rage
[1719] = { ["mod"] = GetSpellInfo(46908), ["rank"] = { .90, .80 }, }, -- Recklessness
[12292] = { ["mod"] = GetSpellInfo(46908), ["rank"] = { .90, .80 }, }, -- Death Wish


}

ATTdbs.dbModifGlyph = {
-- Druid
[1850] = { ["mod"] = 59219, ["cd"] = 36, ["class"] = 11, }, -- Glyph of Dash ?
[50516] = { ["mod"] = 63056, ["cd"] = 3, ["class"] = 11, }, -- Glyph of Monsoon
[5209] = { ["mod"] = 57858, ["cd"] = 30, ["class"] = 11, }, -- Glyph of Challenging Roar
[48505] = { ["mod"] = 54828, ["cd"] = 30, ["class"] = 11, }, -- Glyph of Starfall
[467] = { ["mod"] = 57862, ["cd"] = 20, ["class"] = 11, }, -- Glyph of Thorns
[5217] = { ["mod"] = 94390, ["cd"] = 3, ["class"] = 11, }, -- Glyph of Tiger's Fury
[48438] = { ["mod"] = 62970, ["cd"] = -2, ["class"] = 11, }, -- Glyph of Wild Growth
-- Hunter
[19574] = { ["mod"] = 56830, ["cd"] = 20, ["class"] = 3, }, -- Glyph of Bestial Wrath
[53209] = { ["mod"] = 63065, ["cd"] = 1, ["class"] = 3, }, -- Glyph of Chimera Shot
[5384] = { ["mod"] = 57903, ["cd"] = 5, ["class"] = 3, }, -- Glyph of Feign Death
[19263] = { ["mod"] = 56850, ["cd"] = 10, ["class"] = 3, }, -- Glyph of Deterrence
[19386] = { ["mod"] = 56848, ["cd"] = 6, ["class"] = 3, }, -- Glyph of Wyvern Sting
[781] = { ["mod"] = 56844, ["cd"] = 5, ["class"] = 3, }, -- Glyph of Wyvern Sting

-- Priest
[47585] = { ["mod"] = 63229, ["cd"] = 45, ["class"] = 5, }, -- Glyph of Dispersion
[47540] = { ["mod"] = 63235, ["cd"] = 2, ["class"] = 5, }, -- Glyph of Penance
[6346] = { ["mod"] = 55678, ["cd"] = 60, ["class"] = 5, }, -- Glyph of Fear Ward
[47788] = { ["mod"] = 63231, ["cd"] = 30, ["class"] = 5, }, -- Glyph of Guardian Spirit
[64044] = { ["mod"] = 55688, ["cd"] = 30, ["class"] = 5, }, -- Glyph of Psychic Horror
[8122] = { ["mod"] = 55676, ["cd"] = -3, ["class"] = 5, }, -- Glyph of Psychic Scream
[586] = { ["mod"] = 55684, ["cd"] = 9, ["class"] = 5, }, -- Glyph of Fade
-- Rogue
[1766] = { ["mod"] = 56805, ["cd"] = -4, ["class"] = 4, }, -- Glyph of Kick
[56819] = { ["mod"] = 56819, ["cd"] = 0, ["class"] = 4, }, -- -- Glyph of Preparation
-- Shaman
[2894] = { ["mod"] = 55455, ["cd"] = 300, ["class"] = 7, }, -- Glyph of Fire Elemental Totem
[51514] = { ["mod"] = 63291, ["cd"] = 10, ["class"] = 7, }, -- Glyph of Hex
-- Warlock
[50796] = { ["mod"] = 63304, ["cd"] = 2, ["class"] = 9, }, -- Glyph of Chaos Bolt
[5484] = { ["mod"] = 56217, ["cd"] = 8, ["class"] = 9, }, -- Glyph of Howl of Terror
[48020] = { ["mod"] = 63309, ["cd"] = 4, ["class"] = 9, }, -- Glyph of Demonic Circle
-- Warrior
[46968] = { ["mod"] = 63325, ["cd"] = 3, ["class"] = 1, }, -- Glyph of Shockwave
[46924] = { ["mod"] = 63324, ["cd"] = 15, ["class"] = 1, }, -- Glyph of Bladestorm
[23920] = { ["mod"] = 63328, ["cd"] = 5, ["class"] = 1, }, -- Glyph of Spell Reflection
[871] = { ["mod"] = 63329, ["cd"] = -120, ["class"] = 1, }, -- Glyph of Shield Wall
[100] = { ["mod"] = 58355, ["cd"] = 1, ["class"] = 1, }, -- Glyph of Rapid Charge

--Paladin
[26573] = { ["mod"] = 54928, ["cd"] = -6, ["class"] = 2, }, -- Glyph of Consecration
--Mage
[31661] = { ["mod"] = 56373, ["cd"] = 3, ["class"] = 8, }, -- Glyph of Dragon's Breath
[56372] = { ["mod"] = 56372, ["cd"] = 0, ["class"] = 8, }, -- Glyph of Ice Block

}

ATTdbs.dbAuraRemoved = {
	[GetSpellInfo(14177)] = true,
	[GetSpellInfo(17116)] = true,
	--[GetSpellInfo(20580)]   = true,
	[GetSpellInfo(16166)] = true,
	[GetSpellInfo(18288)] = true,
	[GetSpellInfo(15473)] = true,
	[GetSpellInfo(14751)] = true,
	--[GetSpellInfo(20216)] = true,
	[GetSpellInfo(12043)] = true,
	--[GetSpellInfo(11129)] = true,
	--[GetSpellInfo(1787)]  = true,
	--[GetSpellInfo(9913)]  = true,
	--[GetSpellInfo(16188)]   = true,
}

ATTdbs.dbRacialShare = {
	[59752] = true,
	[7744] = true,
}

ATTdbs.dbAuraApplied = {
	--[GetSpellInfo(11129)] = true,
}

ATTdbs.dbBannedIds = { --quick fix before converting to ID
	[48445] = true,
}

ATTdbs.dbModifBonus = {
	[48020] = { ["mod"] = { 33063 }, ["cd"] = { 5 }, ["rank"] = { 1 }, },
	[6789] = { ["mod"] = { 23047 }, ["cd"] = { 30 }, ["rank"] = { 4 }, },
	[8122] = { ["mod"] = { 44297 }, ["cd"] = { 3 }, ["rank"] = { 1 }, },

	
	[29166] = { ["mod"] = { 37297 }, ["cd"] = { 48 }, ["rank"] = { 4 }, },
	[17116] = { ["mod"] = { 37292 }, ["cd"] = { 24 }, ["rank"] = { 4 }, },
	[26994] = { ["mod"] = { 26106 }, ["cd"] = { 600 }, ["rank"] = { 5 }, },
	[14311] = { ["mod"] = { 37481, 61256,61255 }, ["cd"] = { 4, 2, 2 }, ["rank"] = { 2, 4, 1 }, },
	[49056] = { ["mod"] = { 37481, 61256, 61255}, ["cd"] = { 4, 2, 2 }, ["rank"] = { 2, 4, 1 }, },
	[13809] = { ["mod"] = { 37481, 61256, 61255}, ["cd"] = { 4, 2, 2 }, ["rank"] = { 2, 4, 1 }, },
	[49067] = { ["mod"] = { 37481, 61256, 61255}, ["cd"] = { 4, 2, 2 }, ["rank"] = { 2, 4, 1 }, },
	[34600] = { ["mod"] = { 37481, 61256, 61255}, ["cd"] = { 4, 2, 2 }, ["rank"] = { 2, 4, 1 }, },
	[63672] = { ["mod"] = { 37481, 61256, 61255}, ["cd"] = { 4, 2, 2 }, ["rank"] = { 2, 4, 1 }, },
	[60192] = { ["mod"] = { 37481, 61256, 61255}, ["cd"] = { 4, 2, 2 }, ["rank"] = { 2, 4, 1 }, },
	[16188] = { ["mod"] = { 37211, 38466, 38499 }, ["cd"] = { 24, 24, 24 }, ["rank"] = { 4, 4, 4 }, },
	[2094] = { ["mod"] = { 24469 }, ["cd"] = { 5 }, ["rank"] = { 3 }, },
	[26669] = { ["mod"] = { 26112 }, ["cd"] = { 60 }, ["rank"] = { 3 }, },
	[8177] = { ["mod"] = { 44299 }, ["cd"] = { 3 }, ["rank"] = { 4 }, },
	[17364] = { ["mod"] = { 33018 }, ["cd"] = { 2 }, ["rank"] = { 4 }, },
	[5246] = { ["mod"] = { 24456 }, ["cd"] = { 15 }, ["rank"] = { 3 }, },
	[42945] = { ["mod"] = { 37439 }, ["cd"] = { 4 }, ["rank"] = { 4 }, },
	[45438] = { ["mod"] = { 37439 }, ["cd"] = { 40 }, ["rank"] = { 4 }, },
	[12043] = { ["mod"] = { 37439 }, ["cd"] = { 24 }, ["rank"] = { 4 }, },
	[12051] = { ["mod"] = { 28763 }, ["cd"] = { 60 }, ["rank"] = { 2 }, },
	[20216] = { ["mod"] = { 37183 }, ["cd"] = { 15 }, ["rank"] = { 4 }, },
	[27154] = { ["mod"] = { 28774 }, ["cd"] = { 720 }, ["rank"] = { 4 }, },
	[31789] = { ["mod"] = { 37181 }, ["cd"] = { 2 }, ["rank"] = { 4 }, }, --not in import short cd
	[20271] = { ["mod"] = { 61776 }, ["cd"] = { 1 }, ["rank"] = { 4 }, },
	[53408] = { ["mod"] = { 61776 }, ["cd"] = { 1 }, ["rank"] = { 4 }, }, --not in import short cd
	[53407] = { ["mod"] = { 61776 }, ["cd"] = { 1 }, ["rank"] = { 4 }, }, --not in import short cd
	[25275] = { ["mod"] = { 22738 }, ["cd"] = { 5 }, ["rank"] = { 4 }, },
	[1856] = { ["mod"] = { 21874 }, ["cd"] = { 30 }, ["rank"] = { 2 }, },
	[26983] = { ["mod"] = { 23556 }, ["cd"] = { 28 }, ["rank"] = { 8 }, }, -- at max rank

	[18562] = { ["mod"] = { 38417, 3841700 }, ["cd"] = { 2, 2 }, ["rank"] = { 4, 2 }, },

	[586] = { ["mod"] = { 14154 }, ["cd"] = { 2 }, ["rank"] = { 1 }, }, --
	[10890] = { ["mod"] = { 41939, 41873, 41874, 41940}, ["cd"] = { 3,3,3,3 }, ["rank"] = { 1,1,1,1 }, }, --
	[1766] = { ["mod"] = { 19617 }, ["cd"] = { 0.5 }, ["rank"] = { 1 }, }, --
	[5384] = { ["mod"] = { 19621 }, ["cd"] = { 2 }, ["rank"] = { 1 }, }, --
	[20608] = { ["mod"] = { 22345 }, ["cd"] = { 600 }, ["rank"] = { 1 }, }, --not in import passive
}