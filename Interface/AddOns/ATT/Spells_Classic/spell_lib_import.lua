local addon, ATTdbs = ...

ATTdbs.dbImport = {

	["DRUID"] = {
		{ ["ability"] = 29166, ["cooldown"] = 360, }, -- Innervate -- *
		{ ["ability"] = 22812, ["cooldown"] = 60, }, -- Barkskin - *
		{ ["ability"] = 8983, ["cooldown"] = 60, }, -- Bash -- *
		{ ["ability"] = 17116, ["cooldown"] = 180, ["isTalent"] = true, }, -- Nature's Swiftness - talent *
		{ ["ability"] = 5229, ["cooldown"] = 60, }, -- Enrage *
		{ ["ability"] = 5209, ["cooldown"] = 600, }, -- Challenging Roar *
		{ ["ability"] = 9892, ["cooldown"] = 10, }, -- Cower *
		{ ["ability"] = 9821, ["cooldown"] = 300, }, -- Dash *
		{ ["ability"] = 22896, ["cooldown"] = 180, }, -- Frenzied Regeneration *
		{ ["ability"] = 6795, ["cooldown"] = 10, }, -- Growl *
		{ ["ability"] = 17402, ["cooldown"] = 10, }, -- Hurricane * !
		{ ["ability"] = 9913, ["cooldown"] = 10, }, -- Prowl *
		{ ["ability"] = 20748, ["cooldown"] = 1800, }, -- Rebirth * !
		{ ["ability"] = 9863, ["cooldown"] = 300, }, -- Tranquility *
		{ ["ability"] = 16864, ["cooldown"] = 10, }, -- Omen of Clarity *
		{ ["ability"] = 17392, ["cooldown"] = 6, }, -- Faerie Fire (Feral) *
		{ ["ability"] = 16979, ["cooldown"] = 15, ["isTalent"] = true, }, -- Feral Charge *
		{ ["ability"] = 16813, ["cooldown"] = 60, ["isTalent"] = true, }, -- Nature's Grasp * 16689
		{ ["ability"] = 18562, ["cooldown"] = 15, ["isTalent"] = true, }, -- Swiftmend *
	},
	["HUNTER"] = {
		{ ["ability"] = 19503, ["cooldown"] = 30, ["isTalent"] = true, }, -- Scatter Shot --talent *
		{ ["ability"] = 19263, ["cooldown"] = 300, ["isTalent"] = true, }, -- Deterrence --talent *
		{ ["ability"] = 14311, ["cooldown"] = 15, }, -- Freezing Trap *
		{ ["ability"] = 13809, ["cooldown"] = 15, }, -- Frost Trap *
		{ ["ability"] = 19577, ["cooldown"] = 60, ["isTalent"] = true, }, -- Intimidation -- talent *
		{ ["ability"] = 3045, ["cooldown"] = 300, }, -- Rapid Fire * !
		{ ["ability"] = 5384, ["cooldown"] = 30, }, -- Feign Death * !
		{ ["ability"] = 19574, ["cooldown"] = 120, ["isTalent"] = true, }, -- Bestial Wrath *
		{ ["ability"] = 23989, ["cooldown"] = 300, ["isTalent"] = true, }, -- Readiness *
		{ ["ability"] = 1543, ["cooldown"] = 15, }, -- Flare *
		{ ["ability"] = 14327, ["cooldown"] = 30, }, -- Scare Beast *
		{ ["ability"] = 14287, ["cooldown"] = 6, }, -- Arcane Shot *
		{ ["ability"] = 14273, ["cooldown"] = 5, }, -- Disengage *
		{ ["ability"] = 15632, ["cooldown"] = 8, }, -- Distracting Shot *
		{ ["ability"] = 14317, ["cooldown"] = 15, }, -- Explosive Trap *
		{ ["ability"] = 14305, ["cooldown"] = 15, }, -- Immolation Trap *
		{ ["ability"] = 14271, ["cooldown"] = 5, }, -- Mongoose Bite *
		{ ["ability"] = 25294, ["cooldown"] = 10, }, -- Multi-Shot *
		{ ["ability"] = 14266, ["cooldown"] = 6, }, -- Raptor Strike *
		{ ["ability"] = 19801, ["cooldown"] = 20, }, -- Tranquilizing Shot *
		{ ["ability"] = 14295, ["cooldown"] = 60, }, -- Volley *
		{ ["ability"] = 20904, ["cooldown"] = 6, }, -- Aimed Shot *
		{ ["ability"] = 20909, ["cooldown"] = 5, }, -- Counterattack *
		{ ["ability"] = 24133, ["cooldown"] = 120, ["isTalent"] = true, }, -- Wyvern Sting * 19386

	},
	["MAGE"] = {
		{ ["ability"] = 1953, ["cooldown"] = 15, }, -- Blink * !
		{ ["ability"] = 2139, ["cooldown"] = 30, }, -- Counterspell * !
		{ ["ability"] = 12043, ["cooldown"] = 180, ["isTalent"] = true, }, -- Presence of Mind -- talent *
		{ ["ability"] = 11129, ["cooldown"] = 180, ["isTalent"] = true, }, -- Combustion -- talent *
		{ ["ability"] = 12042, ["cooldown"] = 180, ["isTalent"] = true, }, -- Arcane Power -- talent *
		{ ["ability"] = 11958, ["cooldown"] = 300, ["isTalent"] = true, }, -- Ice Block	 -- talent *
		{ ["ability"] = 12472, ["cooldown"] = 300, ["isTalent"] = true, }, -- Cold Snap	 -- talent *
		{ ["ability"] = 28609, ["cooldown"] = 30, }, -- Frost Ward
		{ ["ability"] = 10230, ["cooldown"] = 25, }, -- Frost Nova
		{ ["ability"] = 10225, ["cooldown"] = 30, }, -- Fire Ward
		{ ["ability"] = 10199, ["cooldown"] = 8, }, -- Fire Blast
		{ ["ability"] = 12051, ["cooldown"] = 480, }, -- Evocation
		{ ["ability"] = 10161, ["cooldown"] = 10, }, -- Cone of Cold
		{ ["ability"] = 13021, ["cooldown"] = 45, ["isTalent"] = true, }, -- Blast Wave -- talent * 11113
		{ ["ability"] = 13033, ["cooldown"] = 30, ["isTalent"] = true, }, -- Ice Barrier	 -- talent * 11426
		{ ["ability"] = 12526, ["cooldown"] = 6, }, -- Pyroblast	 -- talent *
	},
	["PALADIN"] = {
		{ ["ability"] = 10308, ["cooldown"] = 60, }, -- Hammer of Justice *
		{ ["ability"] = 10278, ["cooldown"] = 300, }, -- Blessing of Protection *
		{ ["ability"] = 1044, ["cooldown"] = 20, }, -- Blessing of Freedom *
		{ ["ability"] = 1020, ["cooldown"] = 300, }, -- Divine Shield *
		{ ["ability"] = 20066, ["cooldown"] = 60, ["isTalent"] = true, }, -- Repentance *
		{ ["ability"] = 20216, ["cooldown"] = 120, ["isTalent"] = true, }, -- Divine Favor
		{ ["ability"] = 10326, ["cooldown"] = 30, }, -- Turn Undead *
		{ ["ability"] = 5573, ["cooldown"] = 300, }, -- Divine Protection *
		{ ["ability"] = 10310, ["cooldown"] = 3600, }, -- Lay on Hands *
		{ ["ability"] = 20271, ["cooldown"] = 10, }, -- Judgement *
		{ ["ability"] = 10318, ["cooldown"] = 60, }, -- Holy Wrath *
		{ ["ability"] = 24239, ["cooldown"] = 6, }, -- Hammer of Wrath *
		{ ["ability"] = 10314, ["cooldown"] = 15, }, -- Exorcism *
		{ ["ability"] = 19752, ["cooldown"] = 3600, }, -- Divine Intervention *
		{ ["ability"] = 20924, ["cooldown"] = 8, }, -- Consecration *
		{ ["ability"] = 20928, ["cooldown"] = 10, ["isTalent"] = true, }, -- Holy Shield * 20925
		{ ["ability"] = 20930, ["cooldown"] = 30, ["isTalent"] = true, }, -- Holy Shock *	20473
	},
	["PRIEST"] = {
		{ ["ability"] = 10890, ["cooldown"] = 30, }, -- Psychic Scream *
		{ ["ability"] = 15487, ["cooldown"] = 45, ["isTalent"] = true, }, -- Silence  --talent *
		{ ["ability"] = 10060, ["cooldown"] = 180, ["isTalent"] = true, }, -- Power Infusion --talent *
		{ ["ability"] = 14751, ["cooldown"] = 180, ["isTalent"] = true, }, -- Inner Focus *
		{ ["ability"] = 6346, ["cooldown"] = 180, ["race"] = { [1] = 3, }, ["isTalent"] = true, }, -- Fear Ward * -- dwarf
		{ ["ability"] = 27871, ["cooldown"] = 600, ["isTalent"] = true, }, -- Lightwell 724
		{ ["ability"] = 15286, ["cooldown"] = 10, ["isTalent"] = true, }, -- Vampiric Embrace
		{ ["ability"] = 19243, ["cooldown"] = 600, ["race"] = { [1] = 1, [2] = 3, }, ["isTalent"] = true, }, -- Desperate Prayer - human , dwarf
		{ ["ability"] = 19280, ["cooldown"] = 180, }, -- Devouring Plague
		{ ["ability"] = 19293, ["cooldown"] = 300, ["race"] = { [1] = 4, }, ["isTalent"] = true, }, -- Elune's Grace -- night elf
		{ ["ability"] = 10942, ["cooldown"] = 30, }, --  Fade
		{ ["ability"] = 19275, ["cooldown"] = 180, ["race"] = { [1] = 1, }, ["isTalent"] = true, }, -- Feedback -- human
		{ ["ability"] = 10947, ["cooldown"] = 8, }, --  Mind Blast
	},
	["ROGUE"] = {
		{ ["ability"] = 8643, ["cooldown"] = 20, }, -- Kidney Shot *
		{ ["ability"] = 2094, ["cooldown"] = 300, }, -- Blind *
		{ ["ability"] = 11305, ["cooldown"] = 300, }, -- Sprint *
		{ ["ability"] = 14177, ["cooldown"] = 180, ["isTalent"] = true, }, -- Cold Blood --talent *
		{ ["ability"] = 13750, ["cooldown"] = 300, ["isTalent"] = true, }, -- Adrenaline Rush --talent *
		{ ["ability"] = 13877, ["cooldown"] = 120, ["isTalent"] = true, }, -- Blade Flurry --talent *
		{ ["ability"] = 14185, ["cooldown"] = 600, ["isTalent"] = true, }, -- Preparation --talent *
		{ ["ability"] = 1725, ["cooldown"] = 30, }, -- Distract *
		{ ["ability"] = 5277, ["cooldown"] = 300, }, -- Evasion *
		{ ["ability"] = 25302, ["cooldown"] = 10, }, -- Feint *
		{ ["ability"] = 11286, ["cooldown"] = 10, }, -- Gouge *
		{ ["ability"] = 1769, ["cooldown"] = 10, }, -- Kick *
		{ ["ability"] = 1787, ["cooldown"] = 10, }, -- Stealth *
		{ ["ability"] = 1857, ["cooldown"] = 300, }, -- Vanish *
		{ ["ability"] = 14278, ["cooldown"] = 20, ["isTalent"] = true, }, -- Ghostly Strike *
		{ ["ability"] = 14183, ["cooldown"] = 120, ["isTalent"] = true, }, -- Premeditation *
		{ ["ability"] = 14251, ["cooldown"] = 6, }, -- Riposte *
	},
	["SHAMAN"] = {
		{ ["ability"] = 16188, ["cooldown"] = 180, ["isTalent"] = true, }, -- Nature's Swiftness --talent *
		{ ["ability"] = 8177, ["cooldown"] = 15, }, -- Grounding Totem *
		{ ["ability"] = 16166, ["cooldown"] = 180, ["isTalent"] = true, }, -- Elemental Mastery - talent *
		{ ["ability"] = 17359, ["cooldown"] = 300, ["isTalent"] = true, }, -- Mana Tide Totem --talent* 16190
		{ ["ability"] = 10605, ["cooldown"] = 6, }, -- Chain Lightning*
		{ ["ability"] = 10414, ["cooldown"] = 6, }, -- Earth Shock*
		{ ["ability"] = 2484, ["cooldown"] = 15, }, -- Earthbind Totem
		{ ["ability"] = 11315, ["cooldown"] = 15, }, -- Fire Nova Totem*
		{ ["ability"] = 29228, ["cooldown"] = 6, }, -- Flame Shock*
		{ ["ability"] = 10473, ["cooldown"] = 6, }, -- Frost Shock*
		{ ["ability"] = 10428, ["cooldown"] = 30, }, -- Stoneclaw Totem*
		{ ["ability"] = 17364, ["cooldown"] = 20, ["isTalent"] = true, }, -- Stormstrike
		{ ["ability"] = 409324, ["cooldown"] = 60, }, -- Ancestral Guidance*
	},
	["WARLOCK"] = {
		{ ["ability"] = 19647, ["cooldown"] = 30, }, -- Spell Lock
		{ ["ability"] = 17928, ["cooldown"] = 40, }, -- Howl of Terror
		{ ["ability"] = 18708, ["cooldown"] = 900, ["isTalent"] = true, }, -- Fel Domination --talent
		{ ["ability"] = 18288, ["cooldown"] = 180, ["isTalent"] = true, }, -- Amplify Curse
		{ ["ability"] = 28610, ["cooldown"] = 30, }, -- Shadow Ward
		{ ["ability"] = 603, ["cooldown"] = 60, }, -- Curse of Doom
		{ ["ability"] = 17926, ["cooldown"] = 120, }, -- Death Coil
		{ ["ability"] = 1122, ["cooldown"] = 3600, }, -- Inferno
		{ ["ability"] = 18540, ["cooldown"] = 3600, }, -- Ritual of Doom
		{ ["ability"] = 17924, ["cooldown"] = 60, }, -- Soul Fire
		{ ["ability"] = 17962, ["cooldown"] = 10, ["isTalent"] = true, }, -- Conflagrate
		{ ["ability"] = 17877, ["cooldown"] = 15, ["isTalent"] = true, }, -- Shadowburn

	},
	["WARRIOR"] = {
		{ ["ability"] = 6554, ["cooldown"] = 10, }, -- Pummel *
		{ ["ability"] = 676, ["cooldown"] = 60, }, -- Disarm *
		{ ["ability"] = 5246, ["cooldown"] = 180, }, --  Intimidating Shout *
		{ ["ability"] = 12809, ["cooldown"] = 45, ["isTalent"] = true, }, -- Concussion Blow --talent
		{ ["ability"] = 11578, ["cooldown"] = 15, }, -- Charge *
		{ ["ability"] = 871, ["cooldown"] = 1800, }, -- Shield Wall *
		{ ["ability"] = 2565, ["cooldown"] = 5, }, -- Shield Block *
		{ ["ability"] = 20230, ["cooldown"] = 1800, }, -- Retaliation *
		{ ["ability"] = 1719, ["cooldown"] = 1800, }, -- Recklessness *
		{ ["ability"] = 18499, ["cooldown"] = 30, }, -- Berserker Rage *
		{ ["ability"] = 12292, ["cooldown"] = 30, ["isTalent"] = true, }, -- Sweeping Strikes --talent *
		{ ["ability"] = 12975, ["cooldown"] = 600, ["isTalent"] = true, }, -- Last Stand --talent *
		{ ["ability"] = 12328, ["cooldown"] = 180, ["isTalent"] = true, }, -- Death Wish *
		{ ["ability"] = 2687, ["cooldown"] = 60, }, -- Bloodrage *
		{ ["ability"] = 1161, ["cooldown"] = 600, }, -- Challenging Shout *
		{ ["ability"] = 20617, ["cooldown"] = 30, }, -- Intercept *
		{ ["ability"] = 20560, ["cooldown"] = 120, }, -- Mocking Blow *
		{ ["ability"] = 1672, ["cooldown"] = 12, }, -- Shield Bash *
		{ ["ability"] = 355, ["cooldown"] = 10, }, -- Taunt *
		{ ["ability"] = 1680, ["cooldown"] = 10, }, -- Whirlwind *
		{ ["ability"] = 23893, ["cooldown"] = 6, }, -- Bloodthirst *
		{ ["ability"] = 21552, ["cooldown"] = 6, }, -- Mortal Strike *
		{ ["ability"] = 23924, ["cooldown"] = 6, }, -- Shield Slam *
	},

}

ATTdbs.dbRacials = {
	{ ["ability"] = 20600, ["cooldown"] = 180, ["race"] = 1 },
	{ ["ability"] = 20572, ["cooldown"] = 120, ["race"] = 2 },
	{ ["ability"] = 20594, ["cooldown"] = 180, ["race"] = 3 },
	{ ["ability"] = 20580, ["cooldown"] = 10, ["race"] = 4 },
	{ ["ability"] = 20577, ["cooldown"] = 120, ["race"] = 5 },
	{ ["ability"] = 7744, ["cooldown"] = 120, ["race"] = 5, },
	{ ["ability"] = 20549, ["cooldown"] = 120, ["race"] = 6, },
	{ ["ability"] = 20589, ["cooldown"] = 60, ["race"] = 7 },
	{ ["ability"] = 20554, ["cooldown"] = 180, ["race"] = 8 },
}

ATTdbs.dbTrinketsMerge = {

}

ATTdbs.dbTrinkets = {
	{ ["ability"] = 5579, ["trinketId"] = 18854, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 5579, ["trinketId"] = 18856, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23273, ["trinketId"] = 18857, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23273, ["trinketId"] = 18858, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23274, ["trinketId"] = 18859, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23276, ["trinketId"] = 18862, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23276, ["trinketId"] = 18864, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23277, ["trinketId"] = 18863, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 5579, ["trinketId"] = 18834, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 5579, ["trinketId"] = 18846, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 5579, ["trinketId"] = 18845, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23273, ["trinketId"] = 18849, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23273, ["trinketId"] = 18852, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23276, ["trinketId"] = 18851, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23274, ["trinketId"] = 18850, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
	{ ["ability"] = 23277, ["trinketId"] = 18853, ["cooldown"] = 300, ["isPvPtrinket"] = true, },
}
