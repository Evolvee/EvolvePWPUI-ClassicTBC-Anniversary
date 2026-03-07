local addon, ATTdbs = ...

ATTdbs.dbImport = {
	["DRUID"] = {
    { ["ability"] = 80964, ["cooldown"] = 60, }, -- Skull Bash (Bear Form)
    { ["ability"] = 78675, ["cooldown"] = 60, }, -- Solar Beam
    { ["ability"] = 5211, ["cooldown"] = 60, }, -- Bash
    { ["ability"] = 22570, ["cooldown"] = 10, }, -- Maim
    { ["ability"] = 16979, ["cooldown"] = 15, }, -- Feral Charge (Bear Form - root)
    { ["ability"] = 49376, ["cooldown"] = 30, }, -- Feral Charge (Cat Form - daze = snare)
    { ["ability"] = 50516, ["cooldown"] = 20, }, -- Typhoon
    { ["ability"] = 22812, ["cooldown"] = 60, }, -- Barkskin
    { ["ability"] = 22842, ["cooldown"] = 180, }, -- Frenzied Regeneration
    { ["ability"] = 16689, ["cooldown"] = 60, }, -- Nature's Grasp
    { ["ability"] = 61336, ["cooldown"] = 180, }, -- Survival Instincts
    { ["ability"] = 18562, ["cooldown"] = 15, }, -- Swiftmend
    { ["ability"] = 467, ["cooldown"] = 45, }, -- Thorns
    { ["ability"] = 33891, ["cooldown"] = 180, }, -- Tree of Life
    { ["ability"] = 740, ["cooldown"] = 480, }, -- Tranquility
    { ["ability"] = 50334, ["cooldown"] = 180, }, -- Berserk
    { ["ability"] = 33831, ["cooldown"] = 180, }, -- Force of Nature
    { ["ability"] = 48505, ["cooldown"] = 90, }, -- Starfall
    { ["ability"] = 78674, ["cooldown"] = 15, }, -- Starsurge
    { ["ability"] = 5217, ["cooldown"] = 30, }, -- Tiger's Fury
    { ["ability"] = 5209, ["cooldown"] = 180, }, -- Challenging Roar (aoe taunt)
    { ["ability"] = 1850, ["cooldown"] = 180, }, -- Dash
    { ["ability"] = 5229, ["cooldown"] = 60, }, -- Enrage
    { ["ability"] = 6795, ["cooldown"] = 8, }, -- Growl (taunt)
    { ["ability"] = 29166, ["cooldown"] = 180, }, -- Innervate
    { ["ability"] = 17116, ["cooldown"] = 180, }, -- Nature's Swiftness
    { ["ability"] = 5215, ["cooldown"] = 10, }, -- Prowl
    { ["ability"] = 20484, ["cooldown"] = 600, }, -- Rebirth
    { ["ability"] = 77761, ["cooldown"] = 120, }, -- Stampeding roar (Bear Form)
	},
	["HUNTER"] = {
    { ["ability"] = 26090, ["cooldown"] = 30, }, -- Pummel (Pet ability used as Command Pet)
--    { ["ability"] = 19801, ["cooldown"] = 0, }, -- Tranquilizing Shot
    { ["ability"] = 1499, ["cooldown"] = 30, }, -- Freezing Trap
    { ["ability"] = 19577, ["cooldown"] = 60, }, -- Intimidation
--    { ["ability"] = 1513, ["cooldown"] = 0, }, -- Scare Beast
    { ["ability"] = 19503, ["cooldown"] = 30, }, -- Scatter Shot
    { ["ability"] = 19386, ["cooldown"] = 60, }, -- Wyvern Sting
    { ["ability"] = 34490, ["cooldown"] = 20, }, -- Silencing Shot
    { ["ability"] = 19263, ["cooldown"] = 120, }, -- Deterrence
    { ["ability"] = 5384, ["cooldown"] = 30, }, -- Feign Death
    { ["ability"] = 23989, ["cooldown"] = 180, }, -- Readiness
--    { ["ability"] = 19434, ["cooldown"] = 0, }, -- Aimed Shot
    { ["ability"] = 19574, ["cooldown"] = 120, }, -- Bestial Wrath
    { ["ability"] = 3674, ["cooldown"] = 30, }, -- Black Arrow
--    { ["ability"] = 53209, ["cooldown"] = 10, }, -- Chimera Shot
--    { ["ability"] = 19306, ["cooldown"] = 5, }, -- Counterattack (active after parrying)
--    { ["ability"] = 53301, ["cooldown"] = 6, }, -- Explosive Shot (Rank 1)
    { ["ability"] = 13813, ["cooldown"] = 30, }, -- Explosive Trap
--    { ["ability"] = 82692, ["cooldown"] = 15, }, -- Focus Fire
    { ["ability"] = 13795, ["cooldown"] = 30, }, -- Immolation Trap
--    { ["ability"] = 34026, ["cooldown"] = 6, }, -- Kill Command
--    { ["ability"] = 53351, ["cooldown"] = 10, }, -- Kill Shot
--    { ["ability"] = 2643, ["cooldown"] = 0, }, -- Multi-Shot
    { ["ability"] = 3045, ["cooldown"] = 300, }, -- Rapid Fire
    { ["ability"] = 34600, ["cooldown"] = 30, }, -- Snake Trap
    { ["ability"] = 51753, ["cooldown"] = 60, }, -- Camouflage
--    { ["ability"] = 5116, ["cooldown"] = 6, }, -- Concussive Shot
    { ["ability"] = 781, ["cooldown"] = 25, }, -- Disengage
--    { ["ability"] = 20736, ["cooldown"] = 8, }, -- Distracting Shot
--    { ["ability"] = 6991, ["cooldown"] = 10, }, -- Feed Pet
    { ["ability"] = 1543, ["cooldown"] = 20, }, -- Flare
    { ["ability"] = 82726, ["cooldown"] = 120, }, -- Fervor
    { ["ability"] = 13809, ["cooldown"] = 30, }, -- Ice Trap
    { ["ability"] = 53271, ["cooldown"] = 45, }, -- Master's Call
    { ["ability"] = 34477, ["cooldown"] = 30, }, -- Misdirection
    -- Pet talent tree
    { ["ability"] = 53480, ["cooldown"] = 60, }, -- Roar of Sacrifice
	},
	["MAGE"] = {
    { ["ability"] = 2139, ["cooldown"] = 24, }, -- Counterspell
    { ["ability"] = 44572, ["cooldown"] = 30, }, -- Deep Freeze
    { ["ability"] = 31661, ["cooldown"] = 20, }, -- Dragon's Breath
    { ["ability"] = 82676, ["cooldown"] = 120, }, -- Ring of Frost
    { ["ability"] = 11113, ["cooldown"] = 15, }, -- Blast Wave
    { ["ability"] = 122, ["cooldown"] = 25, }, -- Frost Nova
    { ["ability"] = 33395, ["cooldown"] = 25, }, -- Freeze (Water Elemental spell)
    { ["ability"] = 45438, ["cooldown"] = 300, }, -- Ice Block
    { ["ability"] = 86948, ["cooldown"] = 60, }, -- Cauterize (Rank 1)
    { ["ability"] = 11958, ["cooldown"] = 480, }, -- Cold Snap
    { ["ability"] = 543, ["cooldown"] = 30, }, -- Mage Ward
    { ["ability"] = 11426, ["cooldown"] = 30, }, -- Ice Barrier
    { ["ability"] = 66, ["cooldown"] = 180, }, -- Invisibility
--    { ["ability"] = 44425, ["cooldown"] = 4, }, -- Arcane Barrage
    { ["ability"] = 12042, ["cooldown"] = 120, }, -- Arcane Power
    { ["ability"] = 11129, ["cooldown"] = 120, }, -- Combustion (no buff, 83853 debuff on target)
--    { ["ability"] = 2136, ["cooldown"] = 8, }, -- Fire Blast
    { ["ability"] = 82731, ["cooldown"] = 60, }, -- Flame Orb
    { ["ability"] = 12472, ["cooldown"] = 180, }, -- Icy Veins
    { ["ability"] = 55342, ["cooldown"] = 180, }, -- Mirror Image
    { ["ability"] = 12043, ["cooldown"] = 120, }, -- Presence of Mind
    { ["ability"] = 31687, ["cooldown"] = 180, }, -- Summon Water Elemental
    { ["ability"] = 80353, ["cooldown"] = 300, }, -- Time Warp
    { ["ability"] = 1953, ["cooldown"] = 15, }, -- Blink
--    { ["ability"] = 120, ["cooldown"] = 10, }, -- Cone of Cold
    { ["ability"] = 12051, ["cooldown"] = 240, }, -- Evocation
--    { ["ability"] = 43987, ["cooldown"] = 300, }, -- Ritual of Refreshment (Rank 1) 
	},
	["PALADIN"] = {
    { ["ability"] = 96231, ["cooldown"] = 10, }, -- Rebuke
    { ["ability"] = 853, ["cooldown"] = 60, }, -- Hammer of Justice
    { ["ability"] = 2812, ["cooldown"] = 15, }, -- Holy Wrath
    { ["ability"] = 20066, ["cooldown"] = 60, }, -- Repentance
    { ["ability"] = 10326, ["cooldown"] = 8, }, -- Turn Evil (Glyph of Turn Evil as talent - no cd w/o it)
    { ["ability"] = 31935, ["cooldown"] = 15, }, -- Avenger's Shield
    { ["ability"] = 642, ["cooldown"] = 300, }, -- Divine Shield
    { ["ability"] = 1022, ["cooldown"] = 300, }, -- Hand of Protection
    { ["ability"] = 6940, ["cooldown"] = 120, }, -- Hand of Sacrifice
    { ["ability"] = 64205, ["cooldown"] = 120, }, -- Divine Sacrifice
    { ["ability"] = 633, ["cooldown"] = 600, }, -- Lay on Hands
    { ["ability"] = 31850, ["cooldown"] = 180, }, -- Ardent Defender
    { ["ability"] = 70940, ["cooldown"] = 180, }, -- Divine Guardian
    { ["ability"] = 498, ["cooldown"] = 60, }, -- Divine Protection
    { ["ability"] = 86150, ["cooldown"] = 300, }, -- Guardian of Ancient Kings
    { ["ability"] = 20925, ["cooldown"] = 30, }, -- Holy Shield
    { ["ability"] = 31821, ["cooldown"] = 120, }, -- Aura Mastery
    { ["ability"] = 31884, ["cooldown"] = 180, }, -- Avenging Wrath
    { ["ability"] = 26573, ["cooldown"] = 30, }, -- Consecration
    { ["ability"] = 31842, ["cooldown"] = 180, }, -- Divine Favor
    { ["ability"] = 85673, ["cooldown"] = 20, }, -- Word of Glory
    { ["ability"] = 85696, ["cooldown"] = 120, }, -- Zealotry
    { ["ability"] = 54428, ["cooldown"] = 120, }, -- Divine Plea
    { ["ability"] = 1044, ["cooldown"] = 25, }, -- Hand of Freedom
    { ["ability"] = 62124, ["cooldown"] = 8, }, -- Hand of Reckoning (taunt)
    { ["ability"] = 1038, ["cooldown"] = 120, }, -- Hand of Salvation
	},
	["PRIEST"] = {
    { ["ability"] = 64044, ["cooldown"] = 120, }, -- Psychic Horror
    { ["ability"] = 8122, ["cooldown"] = 30, }, -- Psychic Scream
    { ["ability"] = 88625, ["cooldown"] = 30, }, -- Holy Word: Chastise
    { ["ability"] = 15487, ["cooldown"] = 45, }, -- Silence
    { ["ability"] = 47788, ["cooldown"] = 180, }, -- Guardian Spirit
    { ["ability"] = 33206, ["cooldown"] = 180, }, -- Pain Suppression
    { ["ability"] = 19236, ["cooldown"] = 120, }, -- Desperate Prayer
    { ["ability"] = 47585, ["cooldown"] = 120, }, -- Dispersion
    { ["ability"] = 64843, ["cooldown"] = 480, }, -- Divine Hymn
    { ["ability"] = 724, ["cooldown"] = 180, }, -- Lightwell
    { ["ability"] = 62618, ["cooldown"] = 180, }, -- Power Word: Barrier
    { ["ability"] = 14751, ["cooldown"] = 30, }, -- Chakra
    { ["ability"] = 89485, ["cooldown"] = 45, }, -- Inner Focus
    { ["ability"] = 10060, ["cooldown"] = 120, }, -- Power Infusion
    { ["ability"] = 34433, ["cooldown"] = 300, }, -- Shadowfiend
    { ["ability"] = 6346, ["cooldown"] = 180, }, -- Fear Ward
    { ["ability"] = 32379, ["cooldown"] = 10, }, -- Shadow Word: Death
    { ["ability"] = 586, ["cooldown"] = 30, }, -- Fade
    { ["ability"] = 64901, ["cooldown"] = 360, }, -- Hymn of Hope
    { ["ability"] = 73325, ["cooldown"] = 90, }, -- Leap of Faith
	},
	["ROGUE"] = {
    { ["ability"] = 1766, ["cooldown"] = 10, }, -- Kick
    { ["ability"] = 2094, ["cooldown"] = 180, }, -- Blind
    { ["ability"] = 1776, ["cooldown"] = 10, }, -- Gouge
    { ["ability"] = 408, ["cooldown"] = 20, }, -- Kidney Shot
    { ["ability"] = 76577, ["cooldown"] = 180, }, -- Smoke Bomb
    { ["ability"] = 51722, ["cooldown"] = 60, }, -- Dismantle
    { ["ability"] = 31228, ["cooldown"] = 90, }, -- Cheat Death
    { ["ability"] = 31224, ["cooldown"] = 120, }, -- Cloak of Shadows
    { ["ability"] = 74001, ["cooldown"] = 120, }, -- Combat Readiness
    { ["ability"] = 5277, ["cooldown"] = 180, }, -- Evasion
    { ["ability"] = 14185, ["cooldown"] = 300, }, -- Preparation
    { ["ability"] = 1856, ["cooldown"] = 180, }, -- Vanish
    { ["ability"] = 13750, ["cooldown"] = 180, }, -- Adrenaline Rush
    { ["ability"] = 14177, ["cooldown"] = 120, }, -- Cold Blood
    { ["ability"] = 51690, ["cooldown"] = 120, }, -- Killing Spree
    { ["ability"] = 14183, ["cooldown"] = 20, }, -- Premeditation
    { ["ability"] = 51713, ["cooldown"] = 60, }, -- Shadow Dance
    { ["ability"] = 79140, ["cooldown"] = 120, }, -- Vendetta
    { ["ability"] = 1725, ["cooldown"] = 30, }, -- Distract
    { ["ability"] = 73981, ["cooldown"] = 60, }, -- Redirect
    { ["ability"] = 36554, ["cooldown"] = 24, }, -- Shadowstep
    { ["ability"] = 2983, ["cooldown"] = 60, }, -- Sprint
    { ["ability"] = 1784, ["cooldown"] = 6, }, -- Stealth
    { ["ability"] = 57934, ["cooldown"] = 30, }, -- Tricks of the Trade

	},
	["SHAMAN"] = {
    { ["ability"] = 57994, ["cooldown"] = 15, }, -- Wind Shear
    { ["ability"] = 51514, ["cooldown"] = 45, }, -- Hex
    { ["ability"] = 51490, ["cooldown"] = 45, }, -- Thunderstorm
    { ["ability"] = 30881, ["cooldown"] = 30, }, -- Nature's Guardian (Rank 1)
    { ["ability"] = 30823, ["cooldown"] = 60, }, -- Shamanistic Rage
    { ["ability"] = 98008, ["cooldown"] = 180, }, -- Spirit Link Totem
    { ["ability"] = 2825, ["cooldown"] = 300, }, -- Bloodlust
    { ["ability"] = 16166, ["cooldown"] = 180, }, -- Elemental Mastery
    { ["ability"] = 51533, ["cooldown"] = 120, }, -- Feral Spirit
    { ["ability"] = 2894, ["cooldown"] = 600, }, -- Fire Elemental Totem
    { ["ability"] = 55198, ["cooldown"] = 180, }, -- Tidal Force
    { ["ability"] = 73680, ["cooldown"] = 15, }, -- Unleash Elements
    { ["ability"] = 8177, ["cooldown"] = 25, }, -- Grounding Totem
    { ["ability"] = 8143, ["cooldown"] = 60, }, -- Tremor Totem
    { ["ability"] = 2062, ["cooldown"] = 600, }, -- Earth Elemental Totem (aoe taunt)
    { ["ability"] = 2484, ["cooldown"] = 15, }, -- Earthbind Totem
    { ["ability"] = 16190, ["cooldown"] = 180, }, -- Mana Tide Totem
    { ["ability"] = 16188, ["cooldown"] = 120, }, -- Nature's Swiftness
    { ["ability"] = 20608, ["cooldown"] = 1800, }, -- Reincarnation (passive)
    { ["ability"] = 79206, ["cooldown"] = 120, }, -- Spiritwalker's Grace
    { ["ability"] = 5730, ["cooldown"] = 20, }, -- Stoneclaw Totem -- (aoe taunt, 50% stun)
	},
	["WARLOCK"] = {
    { ["ability"] = 19647, ["cooldown"] = 24, }, -- Spell Lock
    { ["ability"] = 19505, ["cooldown"] = 15, }, -- Devour Magic
    { ["ability"] = 6789, ["cooldown"] = 120, }, -- Death Coil
    { ["ability"] = 5484, ["cooldown"] = 40, }, -- Howl of Terror
    { ["ability"] = 30283, ["cooldown"] = 20, }, -- Shadowfury
    { ["ability"] = 54785, ["cooldown"] = 45, }, -- Demon Leap (available with Metamorphosis)
    { ["ability"] = 48020, ["cooldown"] = 30, }, -- Demonic Circle: Teleport
    { ["ability"] = 91713, ["cooldown"] = 30, }, -- Nether Ward
    { ["ability"] = 6229, ["cooldown"] = 30, }, -- Shadow Ward
    { ["ability"] = 79268, ["cooldown"] = 30, }, -- Soul Harvest
    { ["ability"] = 50796, ["cooldown"] = 12, }, -- Chaos Bolt
    { ["ability"] = 47193, ["cooldown"] = 60, }, -- Demonic Empowerment
    { ["ability"] = 77801, ["cooldown"] = 120, }, -- Demon Soul
    { ["ability"] = 50589, ["cooldown"] = 30, }, -- Immolation Aura (available with Metamorphosis)
    { ["ability"] = 47241, ["cooldown"] = 180, }, -- Metamorphosis
    { ["ability"] = 86121, ["cooldown"] = 30, }, -- Soul Swap w/ Glyph of Soul Swap (no CD w/o Glyph)
    { ["ability"] = 18540, ["cooldown"] = 600, }, -- Summon Doomguard
    { ["ability"] = 1122, ["cooldown"] = 600, }, -- Summon Infernal
    { ["ability"] = 18708, ["cooldown"] = 180, }, -- Fel Domination
    { ["ability"] = 74434, ["cooldown"] = 45, }, -- Soulburn
    { ["ability"] = 29858, ["cooldown"] = 120, }, -- Soulshatter
    { ["ability"] = 20707, ["cooldown"] = 900, }, -- Soulstone Resurrection (Rank 1) - dummy spell triggered on consuming/using Master Soulstone

	},
	["WARRIOR"] = {
    { ["ability"] = 6552, ["cooldown"] = 10, }, -- Pummel
    { ["ability"] = 100, ["cooldown"] = 15, }, -- Charge (Rank 1)
    { ["ability"] = 12809, ["cooldown"] = 30, }, -- Concussion Blow
    { ["ability"] = 20252, ["cooldown"] = 30, }, -- Intercept
    { ["ability"] = 5246, ["cooldown"] = 120, }, -- Intimidating Shout
    { ["ability"] = 46968, ["cooldown"] = 20, }, -- Shockwave
    { ["ability"] = 85388, ["cooldown"] = 45, }, -- Throwdown
    { ["ability"] = 676, ["cooldown"] = 60, }, -- Disarm
    { ["ability"] = 57755, ["cooldown"] = 60, }, -- Heroic throw (Gag order talent 50/100% silence)
    { ["ability"] = 469, ["cooldown"] = 60, }, -- Commanding Shout
    { ["ability"] = 55694, ["cooldown"] = 180, }, -- Enraged Regeneration
    { ["ability"] = 12975, ["cooldown"] = 180, }, -- Last Stand
    { ["ability"] = 97462, ["cooldown"] = 180, }, -- Rallying Cry
    { ["ability"] = 2565, ["cooldown"] = 60, }, -- Shield Block
    { ["ability"] = 871, ["cooldown"] = 300, }, -- Shield Wall
    { ["ability"] = 46924, ["cooldown"] = 90, }, -- Bladestorm
    { ["ability"] = 86346, ["cooldown"] = 20, }, -- Colossus Smash
    { ["ability"] = 85730, ["cooldown"] = 120, }, -- Deadly Calm
    { ["ability"] = 12292, ["cooldown"] = 180, }, -- Death Wish
    { ["ability"] = 1719, ["cooldown"] = 300, }, -- Recklessness
    { ["ability"] = 20230, ["cooldown"] = 300, }, -- Retaliation
    { ["ability"] = 12328, ["cooldown"] = 60, }, -- Sweeping Strikes
    { ["ability"] = 18499, ["cooldown"] = 30, }, -- Berserker Rage
    { ["ability"] = 3411, ["cooldown"] = 30, }, -- Intervene
    { ["ability"] = 23920, ["cooldown"] = 25, }, -- Spell Reflection
    { ["ability"] = 1161, ["cooldown"] = 180, }, -- Challenging Shout (aoe taunt)
    { ["ability"] = 60970, ["cooldown"] = 30, }, -- Heroic Fury
    { ["ability"] = 6544, ["cooldown"] = 60, }, -- Heroic Leap
    { ["ability"] = 1134, ["cooldown"] = 30, }, -- Inner Rage
    { ["ability"] = 64382, ["cooldown"] = 300, }, -- Shattering Throw
    { ["ability"] = 355, ["cooldown"] = 8, }, -- Taunt

	},
	["DEATHKNIGHT"] = {
    { ["ability"] = 47528, ["cooldown"] = 10, }, -- Mind Freeze
    { ["ability"] = 49203, ["cooldown"] = 60, }, -- Hungering Cold
    { ["ability"] = 47476, ["cooldown"] = 120, }, -- Strangulate
    { ["ability"] = 49576, ["cooldown"] = 35, }, -- Death Grip
    { ["ability"] = 48707, ["cooldown"] = 45, }, -- Anti-Magic Shell
    { ["ability"] = 49222, ["cooldown"] = 60, }, -- Bone Shield
    { ["ability"] = 49028, ["cooldown"] = 90, }, -- Dancing Rune Weapon
    { ["ability"] = 48743, ["cooldown"] = 120, }, -- Death Pact
    { ["ability"] = 48792, ["cooldown"] = 180, }, -- Icebound Fortitude
    { ["ability"] = 48982, ["cooldown"] = 30, }, -- Rune Tap
    { ["ability"] = 55233, ["cooldown"] = 60, }, -- Vampiric Blood
    { ["ability"] = 51052, ["cooldown"] = 120, }, -- Anti-Magic Zone
    { ["ability"] = 42650, ["cooldown"] = 600, }, -- Army of the Dead
    { ["ability"] = 43265, ["cooldown"] = 30, }, -- Death and Decay
    { ["ability"] = 47568, ["cooldown"] = 300, }, -- Empower Rune Weapon
    { ["ability"] = 57330, ["cooldown"] = 20, }, -- Horn of Winter
    { ["ability"] = 77575, ["cooldown"] = 60, }, -- Outbreak
    { ["ability"] = 51271, ["cooldown"] = 60, }, -- Pillar of Frost
    { ["ability"] = 61999, ["cooldown"] = 600, }, -- Raise Ally
    { ["ability"] = 46584, ["cooldown"] = 180, }, -- Raise Dead
    { ["ability"] = 49016, ["cooldown"] = 180, }, -- Unholy Frenzy
    { ["ability"] = 49206, ["cooldown"] = 180, }, -- Summon Gargoyle
    { ["ability"] = 49039, ["cooldown"] = 120, }, -- Lichborne
    { ["ability"] = 45529, ["cooldown"] = 60, }, -- Blood Tap
    { ["ability"] = 56222, ["cooldown"] = 8, }, -- Dark Command (taunt)
    { ["ability"] = 77606, ["cooldown"] = 60, }, -- Dark Simulacrum
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
	[64790] = 37864, 
	[64791] = 37864, 
	[64793] = 37864, 
	[60795] = 37864, 
	[60802] = 37864, --
	[60796] = 37864, 
	[60803] = 37864, --
	[60798] = 37864, 
	[60805] = 37864, --
	[60794] = 37864, 
	[60801] = 37864, --
	[70602] = 37864, --
	[70603] = 37864, --
	[60799] = 37864, 
	[60806] = 37864, --
	[70604] = 37864, --
	[70605] = 37864, --
	[60797] = 37864, 
	[60804] = 37864, --
	[60800] = 37864, 
	[60807] = 37864, --
	[70606] = 37864, --
	[70607] = 37864, --
    [73539] = 37864,
    [73535] = 37864,
    [73536] = 37864,


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
	[64789] = 37865, 
	[64792] = 37865,
	[64794] = 37865, 
	[73538] = 37865,
    [73534] = 37865,
    [73537] = 37865,

	[50354] = 50354,
	[50726] = 50354,
	
	[64740] = 64740,
	[64741] = 64740, 
	[64742] = 64740, 
	[70565] = 64740, 
	[61032] = 64740, 
	[61029] = 64740, 
	[61030] = 64740, 
	[70564] = 64740, 
	[61031] = 64740,
	[70563] = 64740, 
	[61026] = 64740, 
	[61028] = 64740, 
	[61027] = 64740,
	
	[64687] = 64687,
	[64688] = 64687, 
	[64689] = 64687,
	[70519] = 64687, 
	[61034] = 64687,
	[70518] = 64687, 
	[61035] = 64687, 
	[70517] = 64687, 
	[61033] = 64687,


	[68713] = 68713,
	[62471] = 68713,
	[62466] = 68713,

	[68709] = 68709,
	[62463] = 68709,
	[62468] = 68709,
	
	[62464] = 62464,
	[68712] = 62464,
	[62469] = 62464,
	
	[50364] = 50364,
	[50361] = 50364,
}

ATTdbs.dbTrinkets = {
	{ ["ability"] = 42292, ["trinketId"] = 37864, ["cooldown"] = 120, ["isPvPtrinket"] = true, }, --ally
	{ ["ability"] = 42292, ["trinketId"] = 37865, ["cooldown"] = 120, ["isPvPtrinket"] = true, }, -- horde


	{ ["ability"] = 92223, ["trinketId"] = 64740, ["cooldown"] = 120, }, --Tremendous Fortitude
	{ ["ability"] = 92225, ["trinketId"] = 64687, ["cooldown"] = 120, }, -- Badge

	{ ["ability"] = 71607, ["trinketId"] = 50354, ["cooldown"] = 120, }, --?
	{ ["ability"] = 60319, ["trinketId"] = 40531, ["cooldown"] = 120, },

    { ["ability"] = 92222, ["trinketId"] = 68713, ["cooldown"] = 120, }, -- Mirror of Broken Images
    { ["ability"] = 92123, ["trinketId"] = 68709, ["cooldown"] = 120, }, -- Unsolvable Riddle
    { ["ability"] = 92601, ["trinketId"] = 64645, ["cooldown"] = 60, }, -- Tyrande's Favorite Doll
    { ["ability"] = 91828, ["trinketId"] = 62464, ["cooldown"] = 120, }, -- Impatience of Youth
    { ["ability"] = 91836, ["trinketId"] = 59461, ["cooldown"] = 120, }, -- Fury of Angerforge
    { ["ability"] = 91155, ["trinketId"] = 58184, ["cooldown"] = 120, }, -- Core of Ripeness
    { ["ability"] = 92099, ["trinketId"] = 56440, ["cooldown"] = 120, }, -- Skardyn's Grace
    { ["ability"] = 91136, ["trinketId"] = 56290, ["cooldown"] = 120, }, -- Sea Star
    { ["ability"] = 91340, ["trinketId"] = 56285, ["cooldown"] = 60, }, -- Might of the Ocean
    { ["ability"] = 71638, ["trinketId"] = 50364, ["cooldown"] = 120, }, -- Sindragosa's Flawless Fang

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
	---
	[64709] = 61255, --	Trap Shot Cooldown Reduction
	[60424] = 61255,
	[65544] = 61255, 
	[70534] = 61255, 
	
	[64795] = 44297, -- Improved Psychic Scream
	[60468] = 44297, 
	[65556] = 44297, 
	[70608] = 44297, 
	[64838] = 44297, 
	[60473] = 44297, 
	[65577] = 44297, 
	[70643] = 44297, 
	
	[64747] = 33063, -- 	Demonic Circle Cooldown Reduction
	[60478] = 33063,
	[65572] = 33063, 
	[70568] = 33063, 
}

ATTdbs.dbSetBonus = {
-- Druid
[64764] = 38417, -- Bloodthirsty Gladiator's Refuge
[64765] = 38417, -- Bloodthirsty Gladiator's Refuge
[64766] = 38417, -- Bloodthirsty Gladiator's Refuge
[64767] = 38417, -- Bloodthirsty Gladiator's Refuge
[64768] = 38417, -- Bloodthirsty Gladiator's Refuge
[60448] = 38417, -- Vicious Gladiator's Refuge 365
[60449] = 38417, -- Vicious Gladiator's Refuge 365
[60450] = 38417, -- Vicious Gladiator's Refuge 365
[60451] = 38417, -- Vicious Gladiator's Refuge 365
[60452] = 38417, -- Vicious Gladiator's Refuge 365
[65533] = 38417, -- Ruthless Gladiator's Refuge 365
[65534] = 38417, -- Ruthless Gladiator's Refuge 365
[65535] = 38417, -- Ruthless Gladiator's Refuge 365
[65539] = 38417, -- Ruthless Gladiator's Refuge 365
[65540] = 38417, -- Ruthless Gladiator's Refuge 365
[70580] = 38417, -- Vicious Gladiator's Refuge 371
[70581] = 38417, -- Vicious Gladiator's Refuge 371
[70582] = 38417, -- Vicious Gladiator's Refuge 371
[70583] = 38417, -- Vicious Gladiator's Refuge 371
[70584] = 38417, -- Vicious Gladiator's Refuge 371

-- Paladin
[64843] = 61776, -- Bloodthirsty Gladiator's Vindication
[64844] = 61776, -- Bloodthirsty Gladiator's Vindication
[64845] = 61776, -- Bloodthirsty Gladiator's Vindication
[64846] = 61776, -- Bloodthirsty Gladiator's Vindication
[64847] = 61776, -- Bloodthirsty Gladiator's Vindication
[60413] = 61776, -- Vicious Gladiator's Vindication 365
[60414] = 61776, -- Vicious Gladiator's Vindication 365
[60415] = 61776, -- Vicious Gladiator's Vindication 365
[60416] = 61776, -- Vicious Gladiator's Vindication 365
[60417] = 61776, -- Vicious Gladiator's Vindication 365
[65585] = 61776, -- Ruthless Gladiator's Vindication 365
[65586] = 61776, -- Ruthless Gladiator's Vindication 365
[65590] = 61776, -- Ruthless Gladiator's Vindication 365
[65591] = 61776, -- Ruthless Gladiator's Vindication 365
[65592] = 61776, -- Ruthless Gladiator's Vindication 365
[70648] = 61776, -- Vicious Gladiator's Vindication 371
[70649] = 61776, -- Vicious Gladiator's Vindication 371
[70650] = 61776, -- Vicious Gladiator's Vindication 371
[70651] = 61776, -- Vicious Gladiator's Vindication 371
[70652] = 61776, -- Vicious Gladiator's Vindication 371

-- Shaman
[64827] = 44299, -- Bloodthirsty Gladiator's Wartide
[64828] = 44299, -- Bloodthirsty Gladiator's Wartide
[64829] = 44299, -- Bloodthirsty Gladiator's Wartide
[64830] = 44299, -- Bloodthirsty Gladiator's Wartide
[64831] = 44299, -- Bloodthirsty Gladiator's Wartide
[60428] = 44299, -- Vicious Gladiator's Wartide 365
[60429] = 44299, -- Vicious Gladiator's Wartide 365
[60430] = 44299, -- Vicious Gladiator's Wartide 365
[60431] = 44299, -- Vicious Gladiator's Wartide 365
[60432] = 44299, -- Vicious Gladiator's Wartide 365
[65536] = 44299, -- Ruthless Gladiator's Wartide 365
[65567] = 44299, -- Ruthless Gladiator's Wartide 365
[65568] = 44299, -- Ruthless Gladiator's Wartide 365
[65569] = 44299, -- Ruthless Gladiator's Wartide 365
[65570] = 44299, -- Ruthless Gladiator's Wartide 365
[70632] = 44299, -- Vicious Gladiator's Wartide 371
[70633] = 44299, -- Vicious Gladiator's Wartide 371
[70634] = 44299, -- Vicious Gladiator's Wartide 371
[70635] = 44299, -- Vicious Gladiator's Wartide 371
[70636] = 44299, -- Vicious Gladiator's Wartide 371

-- Warlock
[64745] = 23047, -- Bloodthirsty Gladiator's FelShroud
[64746] = 23047, -- Bloodthirsty Gladiator's FelShroud
[64747] = 23047, -- Bloodthirsty Gladiator's FelShroud
[64748] = 23047, -- Bloodthirsty Gladiator's FelShroud
[64749] = 23047, -- Bloodthirsty Gladiator's FelShroud
[60478] = 23047, -- Vicious Gladiator's FelShroud 365
[60479] = 23047, -- Vicious Gladiator's FelShroud 365
[60480] = 23047, -- Vicious Gladiator's FelShroud 365
[60481] = 23047, -- Vicious Gladiator's FelShroud 365
[60482] = 23047, -- Vicious Gladiator's FelShroud 365
[65528] = 23047, -- Ruthless Gladiator's FelShroud 365
[65529] = 23047, -- Ruthless Gladiator's FelShroud 365
[65530] = 23047, -- Ruthless Gladiator's FelShroud 365
[65571] = 23047, -- Ruthless Gladiator's FelShroud 365
[65572] = 23047, -- Ruthless Gladiator's FelShroud 365
[70566] = 23047, -- Vicious Gladiator's FelShroud 371
[70567] = 23047, -- Vicious Gladiator's FelShroud 371
[70568] = 23047, -- Vicious Gladiator's FelShroud 371
[70569] = 23047, -- Vicious Gladiator's FelShroud 371
[70570] = 23047, -- Vicious Gladiator's FelShroud 371

-------
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
