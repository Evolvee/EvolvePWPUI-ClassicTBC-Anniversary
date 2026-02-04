CasualTBCPrep.Items = CasualTBCPrep.Items or {}

local itemsMetadata = {
    [2592] = { name="Wool Cloth", rarity=1, stackSize=20, texture=132911, sources="Low Level Mobs", auctionHouse=true },
    [4306] = { name="Silk Cloth", rarity=1, stackSize=20, texture=132905, sources="Low Level Mobs", auctionHouse=true },
    [4338] = { name="Mageweave Cloth", rarity=1, stackSize=20, texture=132892, sources="Low Level Mobs", auctionHouse=true },
    [7080] = { name="Essence of Water", rarity=2, stackSize=10, texture=136007, quests="9232", sources="EPL Water Elementals", auctionHouse=true },
    [8244] = { name="Flawless Draenethyst Sphere", rarity=3, stackSize=20, texture=134564, quests="2521", sources="Zone Drop in Blasted Lands", auctionHouse=true },
    [9324] = { name="Shadra's Venom", rarity=1, texture=134858, quests="2937", sources="Shadra <The Venom Queen>, The Hinterlands" },
    [10560] = { name="Unstable Trigger", rarity=1, stackSize=10, texture=132488, quests="6026", sources="Engineering", auctionHouse=true },
    [10562] = { name="Hi-Explosive Bomb", rarity=1, stackSize=10, texture=133715, quests="6026", sources="Engineering", auctionHouse=true },
    [10593] = { name="Imperfect Draenethyst Fragment", rarity=2, stackSize=20, texture=134089, quests="3501", sources="Zone Drop in Blasted Lands", auctionHouse=true },
    [11128] = { name="Golden Rod", rarity=1, texture=135147, quests="6026", sources="Blacksmithing", auctionHouse=true },
    [11174] = { name="Lesser Nether Essence", rarity=2, stackSize=10, texture=132871, quests="5891", sources="Enchanting", auctionHouse=true },
    [11184] = { name="Blue Power Crystal", rarity=1, stackSize=100, texture=134133, quests="4284", sources="Lootable objects in Un'Goro Crater", auctionHouse=true },
    [11185] = { name="Green Power Crystal", rarity=1, stackSize=100, texture=134105, quests="4284", sources="Lootable objects in Un'Goro Crater", auctionHouse=true },
    [11186] = { name="Red Power Crystal", rarity=1, stackSize=100, texture=134130, quests="4284", sources="Lootable objects in Un'Goro Crater", auctionHouse=true },
    [11188] = { name="Yellow Power Crystal", rarity=1, stackSize=100, texture=134136, quests="4284", sources="Lootable objects in Un'Goro Crater", auctionHouse=true },
    [11268] = { name="Head of Argelmach", rarity=1, texture=134159, quests="4063", sources="Golem Lord Argelmach, Blackrock Depths" },
    [11269] = { name="Intact Elemental Core", rarity=1, stackSize=10, texture=135231, quests="4063", sources="Golems & Constructs, Blackrock Depths" },
    [11309] = { name="The Heart of the Mountain", rarity=1, texture=134085, quests="4123", sources="The Vault, Blackrock Depths" },
    [11312] = { name="Lost Thunderbrew Recipe", rarity=1, texture=134329, quests="4134", sources="Hurley Blackbreath, Blackrock Depths" },
    [11315] = { name="Bloodpetal Sprout", rarity=1, stackSize=100, texture=134001, quests="4148", sources="Lootable sprout objects in Un'Goro Crater" },
    [11512] = { name="Patch of Tainted Skin", rarity=1, stackSize=20, texture=134346, quests="5890", sources="Skinned from mobs in Felwood with the Cenarion Beacon" },
    [11513] = { name="Tainted Vitriol", rarity=1, stackSize=20, texture=134120, quests="5888", sources="Mined from veins in Felwood with the Cenarion Beacon" },
    [11514] = { name="Fel Creep", rarity=1, stackSize=20, texture=136007, quests="5889", sources="Collected from herbs in Felwood with the Cenarion Beacon" },
    [11515] = { name="Corrupted Soul Shard", rarity=1, stackSize=20, texture=132884, quests="5887", sources="Dropped from mobs in Felwood with the Cenarion Beacon" },
    [12241] = { name="Collected Dragon Egg", rarity=1, stackSize=20, texture=134132, quests="4735", sources="The Rookery, Upper Blackrock Spire" },
    [12263] = { name="Caged Worg Pup", rarity=1, texture=132599, quests="4729", sources="Halycon's Lair, Upper Blackrock Spire" },
    [12287] = { name="Collectronic Module", rarity=1, texture=133014, quests="4735", sources="QUEST_TOOL" },
    [12334] = { name="Frostmaul Shards", rarity=1, stackSize=20, texture=134087, quests="969", sources="Frostwhisper Gorge, Winterspring" },
    [12358] = { name="Darkstone Tablet", rarity=1, texture=134419, quests="4768", sources="The Rookery, Upper Blackrock Spire" },
    [12359] = { name="Thorium Bar", rarity=1, stackSize=20, texture=133221, quests="6026", sources="Mining", auctionHouse=true },
    [12360] = { name="Arcanite Bar", rarity=2, stackSize=20, texture=134459, quests="9230,8728", sources="Alchemy", auctionHouse=true },
    [12361] = { name="Blue Sapphire", rarity=2, stackSize=20, texture=134132, quests="9230,9232,8728", sources="Mining", auctionHouse=true },
    [12530] = { name="Spire Spider Egg", rarity=1, stackSize=20, texture=132833, quests="4862", sources="Skitterweb Tunnels, Lower Blackrock Spire" },
    [12558] = { name="Blue-feathered Necklace", rarity=1, texture=133298, quests="4882,4883", sources="Dropped from Owlbeasts in Winterspring while on the Wild Guardians quest" },
    [12739] = { name="Dalson's Cabinet Key", rarity=1, texture=134246, quests="5060", sources="Farmer Dalson, Western Plaguelands" },
    [12740] = { name="Fifth Mosh'aru Tablet", rarity=1, texture=134421, quests="4788", sources="Hordemar City (Shadow Hunter Vosh'gajin), Lower Blackrock Spire" },
    [12741] = { name="Sixth Mosh'aru Tablet", rarity=1, texture=134417, quests="4788", sources="Hordemar City (War Master Voone), Lower Blackrock Spire" },
    [12800] = { name="Azerothian Diamond", rarity=2, stackSize=20, texture=134094, quests="7667,8728", sources="Mining", auctionHouse=true },
    [12842] = { name="Crudely-written Log", rarity=1, texture=133740, quests="5123", sources="Dropped from High Chief Winterfall in Winterspring while on, or after completing, the High Chief Winterfall quest" },
    [12844] = { name="Argent Dawn Valor Token", rarity=2, stackSize=250, texture=133441, quests="9141,5513,5517", sources="Turning in Scourgestones in WPL or EPL" },
    [12845] = { name="Medallion of Faith", rarity=1, texture=133295, quests="5122", sources="Looted from a Strongbox behind Malor the Zealous, Stratholme Living", auctionHouse=true },
    [12928] = { name="Umi's Mechanical Yeti", rarity=1, texture=133003, quests="5163", sources="QUEST_TOOL" },
    [13172] = { name="Grimm's Premium Tobacco", rarity=1, texture=132761, quests="5214", sources="Ezra Grimm (Summoned from Tobacco Crate), Stratholme Living" },
    [13174] = { name="Plagued Flesh Sample", rarity=1, stackSize=30, texture=134358, quests="5212", sources="Drops from undead mobs, Stratholme" },
    [13176] = { name="Scourge Data", rarity=1, texture=134420, quests="5213", sources="Object inside a random Ziggurat, Stratholme Undead" },
    [13180] = { name="Stratholme Holy Water", rarity=1, stackSize=50, texture=134855, quests="5243", sources="Supply Crates, Stratholme" },
    [13207] = { name="Shadow Lord Fel'dan's Head", rarity=1, texture=134170, quests="5242", sources="Shadow Lord Fel'dan in the Shadow Hold, Felwood " },
    [13251] = { name="Head of Baron Rivendare", rarity=1, texture=136129, quests="5263", sources="Baron Rivendare, Stratholme Undead" },
    [13448] = { name="The Deed to Caer Darrow", rarity=1, texture=134331, quests="5341", sources="Lord Alexei Barov, Scholomance" },
    [13450] = { name="The Deed to Southshore", rarity=1, texture=134332, quests="5341", sources="First big room near bookshelves, Scholomance" },
    [13451] = { name="The Deed to Tarren Mill", rarity=1, texture=134327, quests="5341", sources="On a table right outside the Whelp room, Scholomance" },
    [13469] = { name="Head of Weldon Barov", rarity=1, texture=134173, quests="5342", sources="Weldon Barov at Chillwind Camp, Western Plaguelands" },
    [13471] = { name="The Deed to Brill", rarity=1, texture=134328, quests="5341", sources="Room with Ras Frostwhisper, Scholomance" },
    [13562] = { name="Remains of Trey Lightforge", rarity=1, texture=133639, quests="5385", sources="QUEST_TOOL" },
    [13624] = { name="Soulbound Keepsake", rarity=1, texture=133736, quests="5464,5465", sources="QUEST_TOOL" },
    [14047] = { name="Runecloth", rarity=1, stackSize=20, texture=132903, sources="High level mobs", auctionHouse=true },
    [14342] = { name="Mooncloth", rarity=1, stackSize=20, texture=132895, quests="6032", sources="Tailoring", auctionHouse=true },
    [14344] = { name="Large Brilliant Shard", rarity=3, stackSize=20, texture=132873, quests="8332,8341", sources="Enchanting", auctionHouse=true },
    [14679] = { name="Of Love and Family", rarity=1, texture=134942, quests="5848", sources="On the wall near the Archivist, Stratholme Living" },
    [15767] = { name="Hameya's Key", rarity=1, texture=134245, quests="6024", sources="Infiltrator Hameya at Zul'Mashar, Eastern Plaguelands" },
    [15880] = { name="Head of Ramstein the Gorger", rarity=1, texture=134161, quests="6163", sources="Ramstein, Stratholme Undead" },
    [16672] = { name="Gauntlets of Elements", rarity=3, texture=132945, quests="8942", sources="Pyroguard Emberseer in Upper Blackrock Spire", auctionHouse=true, inCompanionBag=true },
    [16673] = { name="Cord of Elements", rarity=3, texture=132505, quests="8942", sources="Random drop in Lower Blackrock Spire", auctionHouse=true, inCompanionBag=true },
    [16676] = { name="Beaststalker's Gloves", rarity=3, texture=132944, quests="8938", sources="War Master Voone in Lower Blackrock Spire", auctionHouse=true, inCompanionBag=true },
    [16680] = { name="Beaststalker's Belt", rarity=3, texture=132517, quests="8938", sources="Random drop in Lower Blackrock Spire", auctionHouse=true, inCompanionBag=true },
    [16684] = { name="Magister's Gloves", rarity=3, texture=132951, quests="8939", sources="Doctor Theolen Krastinov in Scholomance", auctionHouse=true, inCompanionBag=true },
    [16685] = { name="Magister's Belt", rarity=3, texture=132497, quests="8939", sources="Random drop in LBRS or Stratholme", auctionHouse=true, inCompanionBag=true },
    [16692] = { name="Devout Gloves", rarity=3, texture=132948, quests="8940", sources="Archivist Galford in Stratholme Living", auctionHouse=true, inCompanionBag=true },
    [16696] = { name="Devout Belt", rarity=3, texture=132499, quests="8940", sources="Random drop in Lower Blackrock Spire", auctionHouse=true, inCompanionBag=true },
    [16702] = { name="Dreadmits Belt", rarity=3, texture=132501, quests="8943", sources="Random drop in Stratholme", auctionHouse=true, inCompanionBag=true },
    [16705] = { name="Dreadmist Wraps", rarity=3, texture=132966, quests="8943", sources="Lorekeeper Polkelt or Necromancers in Scholomance", auctionHouse=true, inCompanionBag=true },
    [16712] = { name="Shadowcraft Gloves", rarity=3, texture=132958, quests="8941", sources="Shadow Hunter Vosh'gajin in Lower Blackrock Spire", auctionHouse=true, inCompanionBag=true },
    [16713] = { name="Shadowcraft Belt", rarity=3, texture=132492, quests="8941", sources="Random drop in Lower Blackrock Spire", auctionHouse=true, inCompanionBag=true },
    [16716] = { name="Wildheart Belt", rarity=3, texture=132504, quests="8927", sources="Random drop in Lower Blackrock Spire or Scholomance", auctionHouse=true, inCompanionBag=true },
    [16717] = { name="Wildheart Gloves", rarity=3, texture=132951, quests="8927", sources="The Unforgiven in Stratholme", auctionHouse=true, inCompanionBag=true },
    [16723] = { name="Lightforge Belt", rarity=3, texture=132500, quests="10495", sources="Random drop in Stratholme", auctionHouse=true, inCompanionBag=true },
    [16724] = { name="Lightforge Gauntlets", rarity=3, texture=132953, quests="10495", sources="Timmy the Cruel in Stratholme Living", auctionHouse=true, inCompanionBag=true },
    [16736] = { name="Belt of Valor", rarity=3, texture=132523, quests="8944", sources="Smolderthorn Berserker in Lower Blackrock Spire, Patchwerk mobs in Stratholme Undead", auctionHouse=true, inCompanionBag=true },
    [16737] = { name="Gauntlets of Valor", rarity=3, texture=132960, quests="8944", sources="Ramstein the Gorger in Stratholme Undead", auctionHouse=true, inCompanionBag=true },
    [17114] = { name="Araj's Phylactery Shard", rarity=1, texture=132878, quests="105", sources="Araj the Summoner at Ruins of Andorhal, Western PlagueLands " },
    [18335] = { name="Pristine Black Diamond", rarity=3, stackSize=20, texture=134072, quests="7667", sources="World Drop", auctionHouse=true },
    [18422] = { name="Head of Onyxia", rarity=4, texture=134153, quests="7490,7491", sources="Onyxia, Onyxia's Lair" },
    [18501] = { name="Felvine Shard", rarity=1, texture=132884, quests="5526", sources="On the ground at Alzzin the Wildshaper in DM East" },
    [19002] = { name="Head of Nefarian", rarity=4, texture=134154, quests="7783,7784", sources="Nefarian, Blackwing Lair" },
    [19707] = { name="Red Hakkari Bijou", rarity=3, stackSize=250, texture=132532, quests="8240", sources="Zul'Gurub trash drop", auctionHouse=true },
    [19708] = { name="Blue Hakkari Bijou", rarity=3, stackSize=250, texture=132526, quests="8240", sources="Zul'Gurub trash drop", auctionHouse=true },
    [19709] = { name="Yellow Hakkari Bijou", rarity=3, stackSize=250, texture=132534, quests="8240", sources="Zul'Gurub trash drop", auctionHouse=true },
    [19710] = { name="Orange Hakkari Bijou", rarity=3, stackSize=250, texture=132530, quests="8240", sources="Zul'Gurub trash drop", auctionHouse=true },
    [19711] = { name="Green Hakkari Bijou", rarity=3, stackSize=250, texture=132529, quests="8240", sources="Zul'Gurub trash drop", auctionHouse=true },
    [19712] = { name="Purple Hakkari Bijou", rarity=3, stackSize=250, texture=132531, quests="8240", sources="Zul'Gurub trash drop", auctionHouse=true },
    [19713] = { name="Bronze Hakkari Bijou", rarity=3, stackSize=250, texture=132527, quests="8240", sources="Zul'Gurub trash drop", auctionHouse=true },
    [19714] = { name="Silver Hakkari Bijou", rarity=3, stackSize=250, texture=132533, quests="8240", sources="Zul'Gurub trash drop", auctionHouse=true },
    [19715] = { name="Gold Hakkari Bijou", rarity=3, stackSize=250, texture=132528, quests="8240", sources="Zul'Gurub trash drop", auctionHouse=true },
    [19716] = { name="Primal Hakkari Bindings", rarity=4, texture=132604, quests="8060,8062,8053", sources="Zul'Gurub boss drop" },
    [19717] = { name="Primal Hakkari Armsplint", rarity=4, texture=132617, quests="8063,8056,8058", sources="Zul'Gurub boss drop" },
    [19718] = { name="Primal Hakkari Stanchion", rarity=4, texture=132613, quests="8061,8059,8057", sources="Zul'Gurub boss drop" },
    [19719] = { name="Primal Hakkari Girdle", rarity=4, texture=132501, quests="8072,8074,8078", sources="Zul'Gurub boss drop" },
    [19720] = { name="Primal Hakkari Sash", rarity=4, texture=132496, quests="8070,8076,8064", sources="Zul'Gurub boss drop" },
    [19721] = { name="Primal Hakkari Shawl", rarity=4, texture=135050, quests="8068,8066,8054", sources="Zul'Gurub boss drop" },
    [19722] = { name="Primal Hakkari Tabard", rarity=4, texture=132482, quests="8065,8075,8055", sources="Zul'Gurub boss drop" },
    [19723] = { name="Primal Hakkari Kossack", rarity=4, texture=135011, quests="8069,8077,8079", sources="Zul'Gurub boss drop" },
    [19724] = { name="Primal Hakkari Aegis", rarity=4, texture=132634, quests="8071,8073,8067", sources="Zul'Gurub boss drop" },
    [19802] = { name="Heart of Hakkar", rarity=4, texture=134085, quests="8183", sources="Hakkar, Zul'Gurub" },
    [19880] = { name="Gurubashi Head Collection", rarity=1, texture=133306, quests="8201", sources="Created from 5 Channeler's Heads which drop from Zul'Gurub bosses" },
    [20383] = { name="Head of the Broodlord Lashlayer", rarity=1, texture=136140, quests="8288", sources="Broodlord Lashlayer, Blackwing Lair" },
    [20384] = { name="Silithid Carapace Fragment", rarity=1, stackSize=200, texture=134315, quests="8301", sources="Silithid hive mobs in SIlithus, requires having Agent of Nozdormu in your inventory", auctionHouse=true },
    [20385] = { name="Deathclasp's Pincer", rarity=1, texture=133708, quests="8283", sources="Deathclasp near Bronzebeard Encampment, Silithus" },
    [20394] = { name="Twilight Lexicon - Chapter 1", rarity=1, texture=133738, quests="8279", sources="Twilight Keeper Mayna at Twilight Post, Silithus. Can be looted without the quest" },
    [20395] = { name="Twilight Lexicon - Chapter 2", rarity=1, texture=133733, quests="8279", sources="Twilight Keeper Exeter at Twilight Outpost, Silithus. Can be looted without the quest" },
    [20396] = { name="Twilight Lexicon - Chapter 3", rarity=1, texture=133737, quests="8279", sources="Twilight Keeper Havunth at Twilight Base Camp, Silithus. Can be looted without the quest" },
    [20404] = { name="Encrypted Twilight Text", rarity=1, stackSize=250, texture=134332, quests="8323,8318", sources="Twilight monsters in Silithus", auctionHouse=true },
    [20452] = { name="Smoked Desert Dumplings", rarity=1, stackSize=20, texture=134020, quests="8317", sources="Cooking - Meat drops from worms around Silithus", auctionHouse=true },
    [20453] = { name="Geologist's Transcription Kit", rarity=1, texture=133000, quests="8309", sources="QUEST_TOOL" },
    [20454] = { name="Hive'Zora Rubbing", rarity=1, texture=134946, quests="8309", sources="Inside Hive'Zora, Silithus" },
    [20455] = { name="Hive'Ashi Rubbing", rarity=1, texture=134945, quests="8309", sources="Inside Hive'Ashi, Silithus" },
    [20456] = { name="Hive'Regal Rubbing", rarity=1, texture=134944, quests="8309", sources="Inside Hive'Regal, Silithus" },
    [20457] = { name="Hive'Ashi Silithid Brain", rarity=1, texture=134340, quests="8310", sources="Silithid mobs at Hive'Ashi, Silithus" },
    [20458] = { name="Hive'Zora Silithid Brain", rarity=1, texture=134340, quests="8310", sources="Silithid mobs at Hive'Zora, Silithus" },
    [20459] = { name="Hive'Regal Silithid Brain", rarity=1, texture=134340, quests="8310", sources="Silithid mobs at Hive'Regal, Silithus" },
    [20461] = { name="Brann Bronzebeard's Lost Letter", rarity=1, texture=133463, quests="8308", sources="Silithid mobs at all three hives in Silithus" },
    [20466] = { name="Vyral's Signet Ring", rarity=1, texture=133357, quests="8321", sources="Vyral the Vile inside the Twilight's Run cave, Silithus" },
    [20513] = { name="Abyssal Crest", rarity=2, stackSize=20, texture=133438, quests="8361,8332", sources="Summoned Templar mobs using the 3-piece set, Silithus", auctionHouse=true },
    [20514] = { name="Abyssal Signet", rarity=3, stackSize=20, texture=133378, quests="8341,8348", sources="Summoned Duke mobs using the 3-piece set & medallion, Silithus", auctionHouse=true },
    [20515] = { name="Abyssal Scepter", rarity=4, stackSize=20, texture=135150, quests="8352,9248", sources="Summoned Lord/Baron/Prince/Marshal using 3-pece set, medallion & ring, Silithus", auctionHouse=true },
    [20644] = { name="Nightmare Engulfed Object", rarity=4, texture=136163, quests="8446", sources="Drops from the world boss dragons" },
    [20741] = { name="Deadwood Ritual Totem", rarity=1, texture=136232, quests="8470", sources="Deadwood furbolgs, Felwood" },
    [20742] = { name="Winterfall Ritual Totem", rarity=1, texture=135816, quests="8471", sources="Winterfall furbolgs, Winterspring" },
    [20858] = { name="Stone Scarab", rarity=2, stackSize=250, texture=134936, quests="8558,8708,8691,8696,8702,8701", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20859] = { name="Gold Scarab", rarity=2, stackSize=250, texture=134933, quests="8709,8710,8689,8690,8695,8704,8699", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20860] = { name="Silver Scarab", rarity=2, stackSize=250, texture=134935, quests="8712,8707,8557,8692,8697,8698,8703", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20861] = { name="Bronze Scarab", rarity=2, stackSize=250, texture=134930, quests="8711,8706,8705,8693,8694,8700,8556", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20862] = { name="Crystal Scarab", rarity=2, stackSize=250, texture=134932, quests="8558,8708,8691,8696,8702,8701", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20863] = { name="Clay Scarab", rarity=2, stackSize=250, texture=134931, quests="8709,8710,8689,8690,8695,8704,8699", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20864] = { name="Bone Scarab", rarity=2, stackSize=250, texture=134929, quests="8712,8707,8557,8692,8697,8698,8703", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20865] = { name="Ivory Scarab", rarity=2, stackSize=250, texture=2241756, quests="8711,8706,8705,8693,8694,8700,8556", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20866] = { name="Azure Idol", rarity=3, stackSize=250, texture=134898, quests="8712,8693,8699", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20867] = { name="Onyx Idol", rarity=3, stackSize=250, texture=134905, quests="8710,8557,8701", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20868] = { name="Lambent Idol", rarity=3, stackSize=250, texture=134901, quests="8705,8696,8556", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20869] = { name="Amber Idol", rarity=3, stackSize=250, texture=134897, quests="8711,8706,8694,8704", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20870] = { name="Jasper Idol", rarity=3, stackSize=250, texture=134900, quests="8708,8689,8702", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20871] = { name="Obsidian Idol", rarity=3, stackSize=250, texture=134904, quests="8707,8690,8695,8697", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20872] = { name="Vermillion Idol", rarity=3, stackSize=250, texture=134910, quests="8709,8692,8698,8703", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20873] = { name="Alabaster Idol", rarity=3, stackSize=250, texture=134896, quests="8558,8691,8700", sources="Ruins of Ahn'Qiraj trash drop", auctionHouse=true },
    [20884] = { name="Qiraji Magisterial Ring", rarity=3, texture=134894, quests="8699,8700,8698,8556,8703", sources="Ruins of Ahn'Qiraj boss drop" },
    [20885] = { name="Qiraji Martial Drape", rarity=3, texture=134883, quests="8693,8557,8691,8689", sources="Ruins of Ahn'Qiraj boss drop" },
    [20886] = { name="Qiraji Spiked Hilt", rarity=4, texture=134886, quests="8711,8709,8706,8712,8558", sources="Ruins of Ahn'Qiraj boss drop" },
    [20888] = { name="Qiraji Ceremonial Ring", rarity=3, texture=134893, quests="8697,8702,8701,8704", sources="Ruins of Ahn'Qiraj boss drop" },
    [20889] = { name="Qiraji Regal Drape", rarity=3, texture=132617, quests="8694,8692,8696,8690,8695", sources="Ruins of Ahn'Qiraj boss drop" },
    [20890] = { name="Qiraji Ornate Hilt", rarity=4, texture=134885, quests="8707,8705,8710,8708", sources="Ruins of Ahn'Qiraj boss drop" },
    [21220] = { name="Head of Ossirian the Unscarred", rarity=4, texture=132192, quests="8791", sources="Ossirian the Unscarred, Ruins of Ahn'Qiraj" },
    [21221] = { name="Eye of C'Thun", rarity=4, texture=136152, quests="8802", sources="C'Thun, Temple of Ahn'Qiraj" },
    [21939] = { name="Fel Elemental Rod", rarity=1, texture=135155, quests="8928", sources="Sold by Vi'el for 40g in Darkwhisper Gorge, Winterspring", auctionHouse=true },
    [22216] = { name="Venoxis's Venom Sac", rarity=1, texture=134341, quests="9023", sources="High Priest Venoxis, Zul'Gurub" },
    [22217] = { name="Kurinaxx's Venom Sac", rarity=1, texture=134341, quests="9023", sources="Kurinnaxx, Ruins of Ahn'Qiraj" },
    [22520] = { name="The Phylactery of Kel'Thuzad", rarity=4, texture=134514, quests="9120", sources="Kel'Thuzad, Naxxramas" },
    [22525] = { name="Crypt Fiend Parts", rarity=1, stackSize=250, texture=133571, quests="9124", sources="Various 'Crypt' mobs in Eastern Plaguelands & Stratholme", auctionHouse=true },
    [22526] = { name="Bone Fragments", rarity=1, stackSize=250, texture=133724, quests="9126", sources="Skeleton mobs in WPL, EPL, Stratholme, Scholomance", auctionHouse=true },
    [22527] = { name="Core of Elements", rarity=1, stackSize=250, texture=134139, quests="9128", sources="Various elemental mobs in level 50+ zones", auctionHouse=true },
    [22528] = { name="Dark Iron Scraps", rarity=1, stackSize=250, texture=133614, quests="9131", sources="World drop from many 45+ mobs", auctionHouse=true },
    [22529] = { name="Savage Frond", rarity=1, stackSize=250, texture=136074, quests="9136", sources="World drop from various vine/tree mobs", auctionHouse=true },
    [22682] = { name="Frozen Rune", rarity=3, stackSize=20, texture=134422, quests="9230,9232", sources="Naxxramas", auctionHouse=true },
    [22708] = { name="Fate of Ramaladni", rarity=1, texture=133377, quests="9229", sources="Naxxramas" },
    [23691] = { name="Corrupted Mark of the Lightbringer", rarity=1, texture=135160, quests="9444", sources="QUEST_TOOL" },
    [11116] = { name="A Mangled Journal", rarity=2, texture=133743, quests="3884", sources="Zone Drop in Un'Goro Crater" },
    [8392] = { name="Blasted Boar Lung", rarity=1, stackSize=20, texture=134343, quests="2583,2581,2585", sources="Boars in Blasted Lands", auctionHouse=true },
    [8393] = { name="Scorpok Pincer", rarity=1, stackSize=20, texture=133708, quests="2583,2581,2585", sources="Scorpids in Blasted Lands", auctionHouse=true },
    [8394] = { name="Basilisk Brain", rarity=1, stackSize=20, texture=134340, quests="2583,2601", sources="Basilisks in Blasted Lands", auctionHouse=true },
    [8391] = { name="Snickerfang Jowl", rarity=1, stackSize=20, texture=133972, quests="2581,2603", sources="Hyenas in Blasted Lands", auctionHouse=true },
    [8396] = { name="Vulture Gizzard", rarity=1, stackSize=20, texture=134342, quests="2601,2585,2603", sources="Vultures in Blasted Lands", auctionHouse=true },
    [2820] = { name="Nifty Stopwatch", rarity=2, texture=134376, sources="Badlands Questline" },
    [8529] = { name="Noggenfogger Elixir", rarity=1, stackSize=20, texture=134863, sources="Tanaris Questline" },
    [4984] = { name="Skull of Impending Doom", rarity=2, texture=133729, sources="Questline" },
    [11122] = { name="Carrot on a Stick", rarity=2, texture=134010, sources="Quest in Zul'Farrak" },
    [20558] = { name="Warsong Gulch Mark of Honor", rarity=2, stackSize=100, texture=134420, quests="8430", sources="Battlegrounds" },
    [20559] = { name="Arathi Basin Mark of Honor", rarity=2, stackSize=100, texture=133282, quests="8439", sources="Battlegrounds" },
    [20560] = { name="Alterac Valley Mark of Honor", rarity=2, stackSize=100, texture=133308, quests="8369", sources="Battlegrounds" },
    [7391] = { name="Swift Boots", rarity=2, texture=132542, sources="Leatherworking" },
    [11018] = { name="Un'Goro Soil", rarity=1, stackSize=100, texture=133849, quests="3761", sources="Lootable dirt objects in Un'Goro Crater", auctionHouse=true },
    [10575] = { name="Black Dragonflight Molt", rarity=1, stackSize=10, texture=134430, quests="4022,4023,99019", sources="Searing Gorge Quest or dropped by Burning Steppes elite summoned by Cyrus Therepentous. Used by either of the two Taste of Flame quests" },
    [11371] = { name="Dark Iron Bar", rarity=1, stackSize=20, texture=133233, quests="8947", sources="Mining", auctionHouse=true },
    [12810] = { name="Enchanted Leather", rarity=1, stackSize=20, texture=134418, quests="8947", sources="Enchanting, Darkmoon Faire vendor (limited)", auctionHouse=true },
    [15407] = { name="Cured Rugged Hide", rarity=1, stackSize=20, texture=134355, quests="8947", sources="Leatherworking", auctionHouse=true },
    [21111] = { name="Draconic For Dummies: Volume II", rarity=1, texture=133738, quests="8620", sources="AQ Scepter Questline" },
    [21112] = { name="Magical Book Binding", rarity=1, texture=133686, quests="8620", sources="AQ Scepter Questline" },
    [9061] = { name="Goblin Rocket Fuel", rarity=1, stackSize=20, texture=132621, quests="8586", sources="Alchemy", auctionHouse=true },
    [8150] = { name="Deeprock Salt", rarity=1, stackSize=20, texture=133849, quests="8586", sources="World drop from various mobs", auctionHouse=true },
    [20951] = { name="Narain's Scrying Goggles", rarity=1, texture=133149, quests="8578", sources="AQ Scepter Questline" },
    [18562] = { name="Elementium Ore", rarity=4, stackSize=20, texture=135248, quests="8728", sources="Technicians, Blackwing Lair", auctionHouse=true },
    [21139] = { name="Green Scepter Shard", rarity=4, texture=134106, quests="8741", sources="AQ Scepter Questline" },
    [21138] = { name="Red Scepter Shard", rarity=4, texture=134130, quests="8730", sources="Nefarian, Blackwing Lair" },
    [13350] = { name="Insignia of the Black Guard", rarity=1, texture=133614, quests="5307", sources="Black Guard Swordsmith, Stratholme" },
    [13351] = { name="Crimson Hammersmith's Apron", rarity=1, texture=135019, quests="5305", sources="Crimson Hammersmith, Stratholme" },
    [13352] = { name="Vosh'gajin's Snakestone", rarity=1, texture=134462, quests="5306", sources="Shadow Hunter Vosh'gajin, Lower Blackrock Spire" },
    [18769] = { name="Enchanted Thorium Platemail", rarity=3, texture=133733, quests="7649", sources="Goraluk Anvilcrack, Lower Blackrock Spire and King Gordok, Dire Maul" },
    [18770] = { name="Enchanted Thorium Platemail", rarity=3, texture=133733, quests="7650", sources="Crimson Hammersmith, Stratholme and Rattlegore, Stratholme" },
    [18771] = { name="Enchanted Thorium Platemail", rarity=3, texture=133733, quests="7651", sources="Black Guard Swordsmith, Stratholme and Urok Doomhowl, Lower Blackrock Spire" },
    [18703] = { name="Ancient Petrified Leaf", rarity=4, texture=136085, quests="7632,7634,7635,7630", sources="Drops from Majordomo Executus in The Molten Core" },
    [18705] = { name="Mature Black Dragon Sinew", rarity=4, texture=135894, quests="7632,7634,7635,7630", sources="Drops from Onyxia from Onyxia's Lair. Is not a 100% drop, you don't need a quest to loot it" },
    [18704] = { name="Mature Blue Dragon Sinew", rarity=4, texture=133674, quests="7632,7634,7635,7630", sources="World drop from Azuregos of blue elite dragonkin in Winterspring. This has a very low droprate!" },
    [18952] = { name="Simone's Head", rarity=1, texture=136220, quests="7632,7634,7635,7630", sources="Drops from a special elite from the hunter quest that must be soloed" },
    [18953] = { name="Klinfran's Head", rarity=1, texture=136221, quests="7632,7634,7635,7630", sources="Drops from a special elite from the hunter quest that must be soloed" },
    [18954] = { name="Solenor's Head", rarity=1, texture=136221, quests="7632,7634,7635,7630", sources="Drops from a special elite from the hunter quest that must be soloed" },
    [18955] = { name="Artorius's Head", rarity=1, texture=136221, quests="7632,7634,7635,7630", sources="Drops from a special elite from the hunter quest that must be soloed" },
    [11040] = { name="Morrowgrain", rarity=1, texture=134185, quests="3786", sources="Created from the Evergreen Pouch with 2 Un'goro Soil and some seeds. 10 Min CD.", auctionHouse=true },
    [18364] = { name="The Emerald Dream...", rarity=3, texture=133742, quests="7506", sources="Dire Maul Drop", auctionHouse=true },
    [18361] = { name="The Greatest Race of Hunters", rarity=3, texture=133734, quests="7503", sources="Dire Maul Drop", auctionHouse=true },
    [18358] = { name="The Arcanist's Cookbook", rarity=3, texture=133733, quests="7500", sources="Dire Maul Drop", auctionHouse=true },
    [18359] = { name="The Light and How To Swing It", rarity=3, texture=133743, quests="7501", sources="Dire Maul Drop", auctionHouse=true },
    [18362] = { name="Holy Bologna: What the Light Won't Tell You", rarity=3, texture=133740, quests="7504", sources="Dire Maul Drop", auctionHouse=true },
    [18356] = { name="Garona: A Study on Stealth and Treachery", rarity=3, texture=133738, quests="7498", sources="Dire Maul Drop", auctionHouse=true },
    [18363] = { name="Frost Shock and You", rarity=3, texture=133736, quests="7505", sources="Dire Maul Drop", auctionHouse=true },
    [18360] = { name="Harnessing Shadows", rarity=3, texture=133737, quests="7502", sources="Dire Maul Drop", auctionHouse=true },
    [18357] = { name="Codex of Defense", rarity=3, texture=133739, quests="7499", sources="Dire Maul Drop", auctionHouse=true },
    [18401] = { name="Nostro's Compendium", rarity=3, texture=133743, quests="7507", sources="Dire Maul Drop", auctionHouse=true },
    [17332] = { name="Hand of Shazzrah", rarity=1, texture=132953, quests="6824", sources="Drops from Shazzrah in Molten Core" },
    [17329] = { name="Hand of Lucifron", rarity=1, texture=132960, quests="6824", sources="Drops from Lucifron in Molten Core" },
    [17331] = { name="Hand of Gehennas", rarity=1, texture=135817, quests="6824", sources="Drops from Gehennas in Molten Core" },
    [17330] = { name="Hand of Sulfuron", rarity=1, texture=132937, quests="6824", sources="Drops from Sulfuron in Molten Core" },
    [13544] = { name="Spectral Essence", rarity=2, texture=134337, quests="5462", sources="Reward from Kirtonos the Herald Quest" },
    [18426] = { name="Lethtendris's Web", rarity=1, texture=136113, quests="7489", sources="Drops from Lethtendris in Dire Maul" },
    [17690] = { name="Frostwolf Insignia Rank 1", rarity=2, texture=133283, quests="7163", sources="Alterac Valley Reputation Quest" },
    [17905] = { name="Frostwolf Insignia Rank 2", rarity=2, texture=133283, quests="7164", sources="Alterac Valley Reputation Quest" },
    [17906] = { name="Frostwolf Insignia Rank 3", rarity=2, texture=133284, quests="7165", sources="Alterac Valley Reputation Quest" },
    [17907] = { name="Frostwolf Insignia Rank 4", rarity=3, texture=133285, quests="7166", sources="Alterac Valley Reputation Quest" },
    [17908] = { name="Frostwolf Insignia Rank 5", rarity=3, texture=133286, quests="7167", sources="Alterac Valley Reputation Quest" },
    [12562] = { name="Important Blackrock Documents", rarity=1, texture=134938, quests="4903", sources="LBRS Object" },
    [12840] = { name="Minion's Scourgestone", rarity=1, texture=133447, quests="10590", sources="Killing undead in WPL/EPL (& dungeons) with the Argent Dawn Commision trinket equipped" },
    [18261] = { name="Book of Incantations", rarity=1, texture=133739, quests="7441", sources="Dropped by Pusillin In Dire Maul" },
    [22201] = { name="Reliquary of Purity", rarity=1, texture=132595, quests="5527", sources="Looted from Silithus hive, or given for the folllowup quest" },    
}

for id,i in pairs(itemsMetadata) do
    i.id = id
    if i.stackSize == nil then i.stackSize = 1 end
end

---@param itemID number
function CasualTBCPrep.Items.GetCachedItemName(itemID)
    if not itemID or itemID <= 0 then return "" end

    local iData = itemsMetadata[itemID]
    if iData then
        return iData.name
    end
    return ""
end

---@param itemID number
function CasualTBCPrep.Items.IsItemRelevant(itemID)
    return itemsMetadata[itemID] ~= nil
end

---@param itemID number
function CasualTBCPrep.Items.GetItemDetails(itemID)
    local result = nil

    local iData = itemsMetadata[itemID]

    if iData == nil then
        CasualTBCPrep.NotifyUserError("Couldn't find Item Metadata for ID "..tostring(itemID).." - using wow api defaults.")
        local itemName, itemLink, itemRarity, _, _, _, _, stkSize, _, itemTexture = C_Item.GetItemInfo(itemID)
        iData = { id=itemID, name=itemName, rarity=itemRarity, stackSize=stkSize, texture=itemTexture, sources="Unknown", auctionHouse=false, link=itemLink }
    end
    if iData ~= nil then
        if iData.cached == true then
            result = iData
        else
            result = iData

            local r, g, b = C_Item.GetItemQualityColor(iData.rarity or 1)
            result.colorR,result.colorG,result.colorB = r,g,b
            result.colorHex = string.format("|cFF%02x%02x%02x", r*255, g*255, b*255)
            result.questText = nil

            -- Need to call this for wow client to cache it
            if not result.cached then local _ = C_Item.GetItemInfo(itemID) end

            if "QUEST_TOOL" == iData.sources then
                if iData.quests ~= nil and iData.quests ~= "" then
                    local newSourceStr = "Provided when starting "
                    if string.find(iData.quests, ",") then
                        newSourceStr = newSourceStr.."the following queests: "

                        local isFirstInLoop = true
                        for questIDString in string.gmatch(iData.quests, "([^,]+)") do
                            local questID = tonumber(questIDString)

                            if questID then
                                if CasualTBCPrep.QuestData.IsQuestIDValidForUser(questID) then
                                    local questData = CasualTBCPrep.QuestData.GetQuest(questID)
                                    if questData then
                                        if isFirstInLoop == true then
                                            newSourceStr = newSourceStr..questData.name
                                            isFirstInLoop = false
                                        else
                                            newSourceStr = newSourceStr..", "..questData.name
                                        end
                                    end
                                end
                            end
                        end
                    else
                        local questData = CasualTBCPrep.QuestData.GetQuest(tonumber(iData.quests))
                        if questData then
                            if CasualTBCPrep.QuestData.IsQuestValidForUser(questData) then
                                newSourceStr = newSourceStr .. "the quest "..questData.name
                            end
                        else
                            CasualTBCPrep.NotifyUserError("Item "..tostring(itemID).." has 'quests' set, but the questID doesnt exist in QuestData, ID="..iData.quests)
                            return nil
                        end
                    end

                    result.sources = newSourceStr
                else
                    CasualTBCPrep.NotifyUserError("Item "..tostring(itemID).." has QUEST_TOOL in 'sources' in metadata, but it has no questIDs set.")
                end
            else
                if iData.quests ~= nil and iData.quests ~= "" then
                    local qText = ""

                    if string.find(iData.quests, ",") then
                        local isFirstInLoop = true
                        for questIDString in string.gmatch(iData.quests, "([^,]+)") do
                            local questData = CasualTBCPrep.QuestData.GetQuest(tonumber(questIDString))
                            if questData then
                                if CasualTBCPrep.QuestData.IsQuestValidForUser(questData) then
                                    if isFirstInLoop == true then
                                        qText = qText..questData.name
                                        isFirstInLoop = false
                                    else
                                        qText = qText..", "..questData.name
                                    end
                                end
                            end
                        end

                        qText = CasualTBCPrep.CreateExpText("Quests: ", qText)
                    else
                        local questData = CasualTBCPrep.QuestData.GetQuest(tonumber(iData.quests))
                        if questData then
                            if CasualTBCPrep.QuestData.IsQuestValidForUser(questData) then
                                qText = CasualTBCPrep.CreateExpText("Quest: ", questData.name)
                            end
                        else
                            CasualTBCPrep.NotifyUserError("Item "..tostring(itemID).." has quests' set, but the questID doesnt exist in QuestData, ID="..iData.quests)
                            return nil
                        end
                    end

                    if qText ~= "" then
                        result.questText = qText
                    end
                end
            end
            result.cached = true

            if result.texture == nil or result.texture <= 0 then
                result.texture = 134400 -- inv_misc_question
            end
            itemsMetadata[itemID] = result
        end
    end

    if result then
        if result.texture == nil or result.texture <= 0 then
            result.texture = 134400 -- inv_misc_question
        end
    end
    return result
end

---@param itemID number
function CasualTBCPrep.Items.GetItemDetailsFromWowAPI(itemID)
	return C_Item.GetItemInfo(itemID)
end

---@param itemID number
---@return string|nil
function CasualTBCPrep.Items.TryGetItemLink(itemID)
    return select(2, C_Item.GetItemInfo(itemID))
end

---@param itemID number
---@param includeEquipCount boolean|nil
---@return number,number,number,number
function CasualTBCPrep.Items.GetPlayerItemCount(itemID, includeEquipCount)
    local playerTotalCount = C_Item.GetItemCount(itemID, true, false) or 0
    local playerInvCount = C_Item.GetItemCount(itemID, false, false) or 0
    local playerBankCount = playerTotalCount - playerInvCount

    local playerEquipCount = 0
    if includeEquipCount then
        for slot = 1, 19 do
            if GetInventoryItemID("player", slot) == itemID then
                playerEquipCount = playerEquipCount + 1
            end
        end
    end

    playerTotalCount = playerTotalCount + playerEquipCount
    return playerInvCount,playerBankCount,playerTotalCount,playerEquipCount
end