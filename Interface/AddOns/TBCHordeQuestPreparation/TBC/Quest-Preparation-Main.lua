if RXPGuides == nil then
	return
end

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 1-Group Quest Prep Part 1
#displayname Quests Part 1
#next 2-Group Quest Prep Part 2

	--- Tanaris

		step
			#completewith next
			.zone Tanaris >>Travel to |cFFfa9602Tanaris|r
			.zoneskip Tanaris

		step
			.goto Tanaris,67.00,22.40
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
			.accept 3520 >> Accept Screecher Spirits
			.target Yeh'kinya

	--- UnGoro

		step
			#completewith next
			.goto Tanaris,51.60,25.50
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
			.fly Un'Goro Crater>>Fly to Un'Goro Crater
			.target Bulkrek Ragefist
			.zoneskip Un'Goro Crater

		step
			.goto Un'Goro Crater,45.53,8.72
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larion|r
			.accept 4145 >>Accept Larion and Muigin
			.target Larion

		step
			#completewith ungorotrash		
			>>Collect |cRXP_LOOT_Bloodpetal Sprout|r from |cRXP_PICK_Bloodpetal Sprout|r. This is needed for the turn in guide.
			>>|cRXP_WARN_They look like little green vine-covered globes and can be found all over Un'Goro|r
			.collect 11315,1

		step
			#completewith ungorotrash	
			>>Collect |cRXP_LOOT_Un'Goro Soil|r from mobs or |cRXP_PICK_Un'Goro Dirt Piles|r
			>>|cRXP_WARN_The dirt piles can be found all over Un'Goro|r
			.collect 11018,5 
			.isQuestAvailable 4496

		step
			#loop
			.goto Un'Goro Crater,57.60,36.80,0
			.goto Un'Goro Crater,57.60,36.80,60,0
			.goto Un'Goro Crater,64.40,30.80,60,0
			.goto Un'Goro Crater,68.20,24.00,60,0
			.goto Un'Goro Crater,71.20,31.00,60,0
			.goto Un'Goro Crater,74.20,39.60,60,0
			.goto Un'Goro Crater,76.00,47.40,60,0
			.goto Un'Goro Crater,74.20,39.60,60,0
			.goto Un'Goro Crater,69.40,38.00,60,0
			.goto Un'Goro Crater,66.60,35.60,60,0
			.goto Un'Goro Crater,60.00,39.40,60,0
			>>Kill |cRXP_ENEMY_Bloodpetal Threshers|r, |cRXP_ENEMY_Bloodpetal Lashers|r and |cRXP_ENEMY_Bloodpetal Flayers|r
			>>|cRXP_WARN_Their poison deals high damage and they can disarm|r << Warrior/Rogue/Shaman
			>>|cRXP_WARN_Their poison deals high damage and drains mana|r << !Warrior !Rogue !Shaman
			.complete 4145,4 
			.mob +Bloodpetal Thresher
			.complete 4145,1 
			.mob +Bloodpetal Lasher
			.complete 4145,3 
			.mob +Bloodpetal Flayer

		step
			.goto Un'Goro Crater,35.49,43.91
			>>Kill |cRXP_ENEMY_Bloodpetal Trappers|r
			>>|cRXP_WARN_Their poison deals high damage, and they can cast entangling roots|r << Warrior/Rogue/Shaman
			>>|cRXP_WARN_Their poison deals high damage and drains mana. They can cast entangling roots|r << !Warrior !Rogue !Shaman
			.complete 4145,2 
			.mob Bloodpetal Trapper

		step
			#label ungorotrash
			.goto Un'Goro Crater,45.53,8.72
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larion|r
			.turnin 4145 >>Turn in Larion and Muigin
			.accept 4147 >> Accept Marvon's Workshop
			.target Larion

		step		
			>>Collect |cRXP_LOOT_Bloodpetal Sprout|r from |cRXP_PICK_Bloodpetal Sprout|r. This is needed for the turn in guide.
			>>|cRXP_WARN_They look like little green vine-covered globes and can be found all over Un'Goro|r
			.collect 11315,1	

	--- Feralas

		step
			#completewith next
			.goto Un'Goro Crater,45.23,5.82
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
			.fly Feralas >>Fly to |cFFfa9602Feralas|r
			.target Gryfe
			.zoneskip Feralas

		step	
			.goto Feralas,74.90,42.50
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
			.accept 2862 >> Accept War on the Woodpaw
			.target Hadoken Swiftstrider

		step
			#completewith next
			.use 10699 >>Kill |cRXP_ENEMY_Vale Screechers|r
			>>|cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses. Talk to the|r |cRXP_FRIENDLY_Screecher Spirit|r |cRXP_WARN_that appears|r
			.complete 3520,1 
			.mob Rogue Vale Screecher
			.mob Vale Screecher
			.target Screecher Spirit

		step
			.goto Feralas,59.1,45.3,0
			.goto Feralas,59.1,45.3,15,0
			.goto Kalimdor,42.8,70.2,20 >>You have to enter |cFFfa9602Dire Maul|r zone once to be able to accept |cRXP_WARN_A Reliquary of Purity|r in Moonglade.
			>>If you have been to |cFFfa9602Dire Maul|r before, manually complete this step.
			.isQuestAvailable 5527

		step
			#loop
			.goto Feralas,58.39,51.88,0
			.goto Feralas,57.54,48.70,0
			.goto Feralas,55.74,46.71,0
			.goto Feralas,58.45,55.83,0
			.goto Feralas,59.17,61.00,0
			.goto Feralas,58.39,51.88,80,0
			.goto Feralas,57.54,48.70,80,0
			.goto Feralas,55.74,46.71,80,0
			.goto Feralas,58.45,55.83,80,0
			.goto Feralas,59.17,61.00,80,0
			.use 10699 >>Kill |cRXP_ENEMY_Vale Screechers|r
			>>|cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses. Talk to the|r |cRXP_FRIENDLY_Screecher Spirit|r |cRXP_WARN_that appears|r
			.complete 3520,1 
			.mob Rogue Vale Screecher
			.mob Vale Screecher
			.target Screecher Spirit

		step
			#loop
			.goto Feralas,69.05,55.78,0
			.goto Feralas,68.60,54.25,0
			.goto Feralas,71.51,55.98,0
			.goto Feralas,72.42,56.63,0
			.goto Feralas,73.21,56.25,0
			.goto Feralas,74.78,55.14,0
			.goto Feralas,77.47,56.78,0
			.goto Feralas,69.05,55.78,50,0
			.goto Feralas,68.60,54.25,50,0
			.goto Feralas,71.51,55.98,50,0
			.goto Feralas,72.42,56.63,50,0
			.goto Feralas,73.21,56.25,50,0
			.goto Feralas,74.78,55.14,50,0
			.goto Feralas,77.47,56.78,50,0
			>>Kill |cRXP_ENEMY_Woodpaw Gnolls|r. Loot them for their |cRXP_LOOT_Manes|r
			>>|cRXP_ENEMY_Woodpaw Trappers|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
			>>Try to avoid |cRXP_ENEMY_Woodpaw Alphas|r as they are needed in the next quest
			.complete 2862,1 
			.mob Woodpaw Mongrel
			.mob Woodpaw Trapper
			.mob Woodpaw Brute
			.mob Woodpaw Reaver
			.mob Woodpaw Mystic
			.mob Woodpaw Alpha	
			
		step
			.goto Feralas,74.90,42.46
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
			.turnin 2862 >> Turn in War on the Woodpaw
			.accept 2863 >> Accept Alpha Strike
			.target Hadoken Swiftstrider		

		step
			#loop
			.goto Feralas,77.47,56.78,0
			.goto Feralas,74.78,55.14,0
			.goto Feralas,73.21,56.25,0
			.goto Feralas,72.42,56.63,0
			.goto Feralas,71.51,55.98,0
			.goto Feralas,69.05,55.78,0
			.goto Feralas,67.50,55.70,0
			.goto Feralas,77.47,56.78,50,0
			.goto Feralas,74.78,55.14,50,0
			.goto Feralas,73.21,56.25,50,0
			.goto Feralas,72.42,56.63,50,0
			.goto Feralas,71.51,55.98,50,0
			.goto Feralas,69.05,55.78,50,0
			.goto Feralas,67.50,55.70,50,0
			>>Kill |cRXP_ENEMY_Woodpaw Alphas|r within the allotted time
			>>|cRXP_WARN_There's usually one in each camp|r
			>>|cRXP_WARN_This is a timed quest (1hour). Re-accept the quest if you failed it|r
			>>You can also go up the little dirt road in the west
			.complete 2863,1 
			.unitscan Woodpaw Alpha

		step
			.goto Feralas,74.90,42.50
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
			.turnin 2863 >> Turn in Alpha Strike
			.accept 2902 >> Accept Woodpaw Investigation
			.target Hadoken Swiftstrider	

		step
			.goto Feralas,71.60,55.90
			>>Click on the |cRXP_PICK_Woodpaw Battle Map|r, on top of a crate
			.turnin 2902 >> Turn in Woodpaw Investigation
			.accept 2903 >> Accept The Battle Plans

		step
			.goto Feralas,74.90,42.40
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
			.turnin 2903 >> Turn in The Battle Plans
			.accept 7730 >> Accept Zukk'ash Infestation
			.accept 7731 >> Accept Stinglasher
			.target Hadoken Swiftstrider		

		step
			#completewith next
			.goto Feralas,73.38,62.94,0
			>>Kill |cRXP_ENEMY_Zukk'ash Silithid|r. Loot them for their |cRXP_LOOT_Carapace|r
			.complete 7730,1 
			.mob Zukk'ash Worker
			.mob Zukk'ash Wasp
			.mob Zukk'ash Tunneler
			.mob Zukk'ash Stinger

		step
			#loop
			.goto Feralas,73.38,63.24,0
			.goto Feralas,76.36,61.19,0
			.goto Feralas,73.38,63.24,50,0
			.goto Feralas,76.36,61.19,50,0
			>>Kill |cRXP_ENEMY_Stinglasher|r. Loot it for its |cRXP_LOOT_Glands|r
			>>|cRXP_WARN_This mob can be quite hard make sure to have cooldowns available|r
			>>|cRXP_WARN_It patrols inside and outside of the Silithid Hives|r
			.complete 7731,1 
			.unitscan Stinglasher

		step
			#loop
			.goto Feralas,75.21,61.82,0
			.goto Feralas,75.21,61.82,60,0
			.goto Feralas,74.10,62.42,60,0
			.goto Feralas,72.86,62.78,60,0
			>>Kill |cRXP_ENEMY_Zukk'ash Silithid|r. Loot them for their |cRXP_LOOT_Carapace|r
			.complete 7730,1 
			.mob Zukk'ash Worker
			.mob Zukk'ash Wasp
			.mob Zukk'ash Tunneler
			.mob Zukk'ash Stinger

		step
			.goto Feralas,74.90,42.50
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
			.turnin 7730 >> Turn in Zukk'ash Infestation
			.turnin 7731 >> Turn in Stinglasher
			.accept 7732 >> Accept Zukk'ash Report
			.target Hadoken Swiftstrider

	--- Thunder Bluff

		step 
			#completewith next
			.goto Feralas,75.45,44.36
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shyn|r
			.fly Thunder Bluff >> Fly to Thunder Bluff
			.target Shyn
			.zoneskip Thunder Bluff

		step
			#loop
			.goto Thunder Bluff,41.54,57.87,70,0
			.goto Thunder Bluff,52.76,62.07,30,0
			.goto Thunder Bluff,55.63,50.08,70,0
			.goto Thunder Bluff,41.54,57.87,0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bluff Runner Windstrider|r
			>>|cRXP_WARN_He patrols the terraces, so you may have to look around for him|r
			.accept 1000 >>Accept The New Frontier
			.unitscan Bluff Runner Windstrider

		step
			.goto Thunder Bluff,78.50,28.60
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
			.turnin 1000 >>Turn in The New Frontier
			.accept 1123 >>Accept Rabine Saturna
			.target Arch Druid Hamuul Runetotem

	--- Moonglade 1

		step << !Druid
			#completewith next
			.goto Thunder Bluff,47.00,49.82
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
			.fly Moonglade >> Fly to Moonglade
			.target Tal
			.zoneskip Moonglade

		step << Druid
			#completewith next
			.cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
			.zoneskip Moonglade	

		step <<
			.goto Moonglade,51.70,45.00
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine|r
			.turnin 1123
			.accept 1124 >>Accept Wasteland
			.target Rabine Saturna

		step <<
			.goto Moonglade,51.70,45.00
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine|r
			.accept 5527
			.target Rabine Saturna
			.skipgossip	

	--- Felwood

		step
			#completewith next
			.goto Moonglade,32.2,66.6
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faustron|r
			.fly Felwood >>Fly to |cFFfa9602Felwood|r
			.target Faustron
			.zoneskip Felwood

		step
			.goto Felwood,51.20,82.10
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
			.accept 5155 >>Accept Forces of Jaedenar
			.target Greta Mosshoof

		step
			#loop
			.goto Felwood,36.49,61.40,0
			.goto Felwood,38.55,59.14,50,0
			.goto Felwood,36.49,61.40,60,0
			.goto Felwood,35.01,59.83,60,0
			.goto Felwood,36.49,61.40,60,0
			.goto Felwood,38.55,59.14,60,0
			.goto Felwood,36.49,61.40,60,0
			>>Kill |cRXP_ENEMY_Jaedenar Hounds|r, |cRXP_ENEMY_Guardians|r, |cRXP_ENEMY_Adepts|r and |cRXP_ENEMY_Cultists|r
			.complete 5155,1 
			.mob +Jaedenar Hound
			.complete 5155,2 
			.mob +Jaedenar Guardian
			.complete 5155,3 
			.mob +Jaedenar Adept
			.complete 5155,4 
			.mob +Jaedenar Cultist	

		step
			.goto Felwood,51.20,82.20
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
			.turnin 5155 >>Turn in Forces of Jaedenar
			.accept 5157 >>Accept Collection of the Corrupt Water
			.target Greta Mosshoof	

		step
			.goto Felwood,35.20,59.80
			.use 12922 >>Use your |T132788:0|t[Empty Canteen] in the green moonwell
			.complete 5157,1 

		step
			.goto Felwood,51.20,82.10
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
			.turnin 5157 >>Turn in Collection of the Corrupt Water
			.accept 5158 >>Accept Seeking Spiritual Aid
			.target Greta Mosshoof			

	--- Azshara

		step
			#completewith next
			.goto Moonglade,32.2,66.6
			>>|cRXP_WARN_Have hearthstone or summon ready to get back or it is a long run|r
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faustron|r
			.fly Azshara >>Fly to |cFFfa9602Azshara|r
			.target Faustron
			.zoneskip Azshara

		step
			.goto Azshara,79.2,73.6,5,0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
			.accept 6804
			.accept 6805
			.target Duke Hydraxis

	--- Hinterlands/Tarren Mill
	
		step
			#completewith next
			.zone The Hinterlands >>Travel to |cFFfa9602The Hinterlands|r
			.zoneskip The Hinterlands

		step
			#loop
			.goto The Hinterlands,23.5,58.7,60,0
			.goto The Hinterlands,31.6,57.8,60,0
			.goto The Hinterlands,23.5,58.7,0
			.goto The Hinterlands,31.6,57.8,0
			>>Click one of the |cRXP_PICK_Venom Bottles|r in the area and accept the quest |cRXP_WARN_Venom Bottles|r
			.accept 2933
			.skipgossip

		step
			#completewith next
			.zone Hillsbrad Foothills >>Travel to |cFFfa9602Hillsbrad Foothills|r
			.zoneskip Hillsbrad Foothills

		step
			.goto Hillsbrad Foothills,61.4,19.2
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lydon|r
			.turnin 2933
			.accept 2934
			.target Apothecary Lydon	

		step
			#completewith next
			.zone The Hinterlands >>Travel to |cFFfa9602The Hinterlands|r
			.zoneskip The Hinterlands

		step
			#loop
			.goto The Hinterlands,35.8,64.6,60,0
			.goto The Hinterlands,35.6,74.8,60,0
			.goto The Hinterlands,31.0,70.8,60,0
			.goto The Hinterlands,35.8,64.6,0
			.goto The Hinterlands,35.6,74.8,0
			.goto The Hinterlands,31.0,70.8,0
			>>Kill |cRXP_ENEMY_Witherbark Broodguards|r. Loot them for an |cRXP_LOOT_Undamaged Venom Sac|r
			>>|cRXP_WARN_The quest item has a duration of 30min. Make sure to turn it in asap|r
			.complete 2934,1
			.mob Witherbark Broodguard
		
		step
			#completewith next
			.zone Hillsbrad Foothills >>Travel to |cFFfa9602Hillsbrad Foothills|r
			.zoneskip Hillsbrad Foothills

		step
			.goto Hillsbrad Foothills,61.4,19.2
			>>|cRXP_WARN_The quest item has a duration of 30min. Make sure to turn it in asap|r
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lydon|r
			.turnin 2934
			.accept 2935
			.target Apothecary Lydon	
		

	--- Orgrimmar 1

		step
			#completewith next
			.zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
			.zoneskip Orgrimmar

		step
			.goto Orgrimmar,56.50,46.60
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zilzibin|r
			>>|cRXP_WARN_He is located on the upper level in the Drag|r
			.turnin 7732 >> Turn in Zukk'ash Report
			.accept 4494 >>Accept March of the Silithid
			.target Zilzibin Drumlore		

		step
			.goto Orgrimmar,34.96,38.28
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
			.accept 8913 >>Accept An Earnest Proposition << Druid
			.accept 8914 >>Accept An Earnest Proposition << Hunter
			.accept 8915 >>Accept An Earnest Proposition << Mage
			.accept 8916 >>Accept An Earnest Proposition << Priest
			.accept 8917 >>Accept An Earnest Proposition << Rogue
			.accept 8918 >>Accept An Earnest Proposition << Shaman
			.accept 8919 >>Accept An Earnest Proposition << Warlock
			.accept 8920 >>Accept An Earnest Proposition << Warrior
			.target Mokvar

		step
			.goto Orgrimmar,49.58,69.13
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r
			.bankdeposit 11315 >>Deposit |cRXP_LOOT_Bloodpetal Sprout|r for TBC launch
			.target Karus
			.itemcount 11315,1

		step
			.goto Durotar,56.0,74.6	
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r
			.turnin 2935
			.accept 2936
			.target Master Gadrin
			
	--- Ratchet

		step
			#completewith next
			.zone The Barrens >>Travel to |cFFfa9602Ratchet|r
			.zoneskip The Barrens

		step
			.goto The Barrens,62.50,38.70
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv|r
			.turnin 4147 >>Turn in Marvon's Workshop
			.target Liv Rizzlefix
			.accept 4146 >>Accept Zapper Fuel

		step
			.goto The Barrens,65.80,43.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r
			.turnin 5158 >>Turn in Seeking Spiritual Aid
			.accept 5159 >>Accept Cleansed Water Returns to Felwood
			.target Islen Waterseer		

	--- Tanaris

		step
			#completewith next
			.goto The Barrens,63.09,37.16
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
			.fly Tanaris >> Fly to |cFFfa9602Tanaris|r
			.target Bragok
			.zoneskip Tanaris

		step
			.goto Tanaris,50.90,27.00
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
			.turnin 4494 >>Turn in March of the Silithid
			.accept 4496 >>Accept Bungle in the Jungle
			.target Alchemist Pestlezugg
			
		step
			.goto Tanaris,67.00,22.40
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
			.turnin 3520 >>Turn in Screecher Spirits
			.target Yeh'kinya
			.accept 3527 >> Accept The Prophecy of Mosh'aru

		step
			#completewith next
			>>Now you should be looking for a group to |cFFfa9602Zul'Farrak|r. This can be done solo as a level 60
			.goto Tanaris,38.73,20.02
			.subzone 978 >> Enter |cFFfa9602Zul'Farrak|r

		step
			#completewith next
			>>Click the |cRXP_PICK_Tablet of Theka|r within |cFFfa9602Zul'Farrak|r. You can find it close to |cRXP_ENEMY_Theka the Martyr|r
			.complete 2936,1
			.skipgossip			

		step
			>>Kill |cRXP_ENEMY_Theka the Martyr|r. Loot him for the |cRXP_LOOT_First Mosh'aru Tablet|r
			>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Second Mosh'aru Tablet|r
			.complete 3527,1
			.complete 3527,2 
			.mob Theka the Martyr
			.mob Hydromancer Velratha

		step
			>>Click the |cRXP_PICK_Tablet of Theka|r within |cFFfa9602Zul'Farrak|r. You can find it close to |cRXP_ENEMY_Theka the Martyr|r
			.complete 2936,1	
			.skipgossip		

		step
			.goto Tanaris,66.989,22.354
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
			.turnin 3527 >> Turn in The Prophecy of Mosh'aru
			.target Yeh'kinya	
			.accept 4787 >> Accept The Ancient Egg

	--- UnGoro

		step
			#completewith next
			.goto Tanaris,51.60,25.50
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek Ragefist|r
			.fly Un'Goro Crater >> Fly to |cFFfa9602Un'Goro Crater|r
			.target Bulkrek Ragefist
			.zoneskip Un'Goro Crater

		step
			#completewith ungorolast
			>>Collect |cRXP_LOOT_Un'Goro Soil|r from mobs or |cRXP_PICK_Un'Goro Dirt Piles|r
			.collect 11018,5 
			.isQuestAvailable 4496
		
		step
			.goto Un'Goro Crater,63.10,68.60
			>>Click the |cRXP_PICK_Wrecked Raft|r
			.accept 3844 >>Accept It's a Secret to Everybody

		step
			.goto Un'Goro Crater,63.10,69.00
			>>Go underwater, then click the |cRXP_PICK_Small Pack|r
			.turnin 3844 >>Turn in It's a Secret to Everybody
			.accept 3845 >>Accept It's a Secret to Everybody	

		step
			#loop
			.goto Un'Goro Crater,51.74,75.36,0
			.goto Un'Goro Crater,49.44,82.85,40,0
			.goto Un'Goro Crater,50.35,79.55,50,0
			.goto Un'Goro Crater,48.69,76.45,70,0
			.goto Un'Goro Crater,47.58,81.58,70,0
			.goto Un'Goro Crater,49.38,82.32,70,0
			.goto Un'Goro Crater,52.38,84.31,70,0
			.goto Un'Goro Crater,54.03,78.15,70,0
			.goto Un'Goro Crater,51.74,75.36,70,0
			>>Kill |cRXP_ENEMY_Gorishi Silithid|r. Loot them for a |cRXP_LOOT_Gorishi Scent Gland|r
			.complete 4496,1 
			.mob Gorishi Worker
			.mob Gorishi Wasp
			.mob Gorishi Reaver
			.mob Gorishi Tunneler
			.mob Gorishi Stinger
			.mob Gorishi Hive Guard

		step
			#completewith next
			.goto Un'Goro Crater,44.70,8.10
			.use 11107 >>Open |T133653:0|t[A Small Pack] for the following:
			.complete 3845,1 
			.complete 3845,2 
			.complete 3845,3 	

		step
			.goto Un'Goro Crater,44.70,8.10
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
			.turnin 3845 >>Turn in It's a Secret to Everybody
			.accept 3908 >>Accept It's a Secret to Everybody
			.target Linken

		step
			#label ungorolast
			.destroy 11107 >>Destroy |T133653:0|t[A Small Pack]
			.destroy 3108 >>Destroy the |T135427:0|t[Heavy Throwing Daggers]
			.destroy 11108 >>Destroy the |T134944:0|t[Faded Photograph]				

		step
			>>Collect |cRXP_LOOT_Un'Goro Soil|r from mobs or |cRXP_PICK_Un'Goro Dirt Piles|r
			.collect 11018,5 
			.isQuestAvailable 4496

	--- Silithus 1

		step
			#completewith next
			.goto Un'Goro Crater,45.23,5.82
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
			.fly Silithus >>Fly to |cFFfa9602Silithus|r
			.target Gryfe
			.zoneskip Silithus

		step
			.goto Silithus,49.7,37.5,5,0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
			.accept 8284 >> Accept The Twilight Mystery
			.target Geologist Larksbane

		step
			#label scorpidst0
			#loop
			.goto Silithus,64.82,41.47,0
			.goto Silithus,58.38,21.10,0
			.goto Silithus,33.34,35.27,0
			.goto Silithus,36.65,62.73,0
			.goto Silithus,28.52,77.73,0
			.goto Silithus,45.40,80.20,0
			.goto Silithus,58.80,61.99,0
			.goto Silithus,64.82,41.47,90,0
			.goto Silithus,58.38,21.10,90,0
			.goto Silithus,33.34,35.27,90,0
			.goto Silithus,36.65,62.73,90,0
			.goto Silithus,28.52,77.73,90,0
			.goto Silithus,45.40,80.20,90,0
			.goto Silithus,58.80,61.99,90,0
			>>Kill all types of |cRXP_ENEMY_Spiders|r and |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Silithus Venom Samples|r
			.complete 8913,1 << Druid --Silithus Venom Sample (x15)
			.complete 8914,1 << Hunter --Silithus Venom Sample (x15)
			.complete 8915,1 << Mage --Silithus Venom Sample (x15)
			.complete 8916,1 << Priest --Silithus Venom Sample (x15)
			.complete 8917,1 << Rogue --Silithus Venom Sample (x15)
			.complete 8918,1 << Shaman --Silithus Venom Sample (x15)
			.complete 8919,1 << Warlock --Silithus Venom Sample (x15)
			.complete 8920,1 << Warrior --Silithus Venom Sample (x15)
			.mob Sand Skitterer
			.mob Stonelash Pincer
			.mob Stonelash Scorpid
			.mob Stonelash Flayer
			.mob Rock Stalker

		step
			#completewith next
			>>Loot the blue |cRXP_PICK_Glowing Tablets|r on the ground for |cRXP_LOOT_Twilight Tablet Fragments|r
			.complete 8284,1
			.isOnQuest 6805

		step
			#loop
			.goto Silithus,19.50,21.10,0
			.goto Silithus,19.50,21.10,50,0
			.goto Silithus,20.10,15.50,50,0
			.goto Silithus,21.50,12.80,50,0
			.goto Silithus,21.70,9.40,50,0
			.goto Silithus,24.10,9.80,50,0
			.goto Silithus,26.60,13.30,50,0
			.goto Silithus,24.10,15.50,50,0
			.goto Silithus,21.50,22.00,50,0
			>>Kill |cRXP_ENEMY_Dust Stormer|r and |cRXP_ENEMY_Desert Rumbler|r for |cRXP_LOOT_Stormers and Rumblers|r
			.mob Dust Stormer
			.mob Desert Rumbler
			.complete -6805,1
			.complete -6805,2
			
		step
			#label silithus1
			#loop
			.goto Silithus,19.50,21.10,0
			.goto Silithus,19.50,21.10,50,0
			.goto Silithus,20.10,15.50,50,0
			.goto Silithus,21.50,12.80,50,0
			.goto Silithus,21.70,9.40,50,0
			.goto Silithus,24.10,9.80,50,0
			.goto Silithus,26.60,13.30,50,0
			.goto Silithus,24.10,15.50,50,0
			.goto Silithus,21.50,22.00,50,0
			>>Loot the blue |cRXP_PICK_Glowing Tablets|r on the ground for |cRXP_LOOT_Twilight Tablet Fragments|r
			.complete 8284,1 

		step
			.goto Silithus,49.7,37.5,5,0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
			.target Geologist Larksbane
			.turnin 8284

			
	--- Orgrimmar 2

		step
			#completewith next
			.goto Silithus,48.8,36.6
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runk|r
			.fly Orgrimmar >>Fly to |cFFfa9602Orgrimmar|r
			.target Runk
			.zoneskip Orgrimmar
			
		step
			.goto Orgrimmar,34.96,38.28
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
			>>|cRXP_WARN_You will need 20 gold and|r |T132608:0|t[|cRXP_LOOT_Wildheart Bracers|r] |cRXP_WARN_to turn in this quest|r << Druid
			>>|cRXP_WARN_You will need 20 gold and|r |T132616:0|t[|cRXP_LOOT_Beaststalker's Bindings|r] |cRXP_WARN_to turn in this quest|r << Hunter
			>>|cRXP_WARN_You will need 20 gold and|r |T133365:0|t[|cRXP_LOOT_Magister's Bindings|r] |cRXP_WARN_to turn in this quest|r << Mage
			>>|cRXP_WARN_You will need 20 gold and|r |T132520:0|t[|cRXP_LOOT_Devout Bracers|r] |cRXP_WARN_to turn in this quest|r << Priest
			>>|cRXP_WARN_You will need 20 gold and|r |T132606:0|t[|cRXP_LOOT_Shadowcraft Bracers|r] |cRXP_WARN_to turn in this quest|r << Rogue
			>>|cRXP_WARN_You will need 20 gold and|r |T132601:0|t[|cRXP_LOOT_Bindings of Elements|r] |cRXP_WARN_to turn in this quest|r << Shaman
			>>|cRXP_WARN_You will need 20 gold and|r |T132612:0|t[|cRXP_LOOT_Dreadmist Bracers|r] |cRXP_WARN_to turn in this quest|r << Warlock
			>>|cRXP_WARN_You will need 20 gold and|r |T132617:0|t[|cRXP_LOOT_Bracers of Valor|r] |cRXP_WARN_to turn in this quest|r << Warrior
			.collect 16714,1,8913,1 << Druid --Wildheart Bracers (x1)
			.collect 16681,1,8914,1 << Hunter --Beaststalker's Bindings (x1)
			.collect 16683,1,8915,1 << Mage --Magister's Bindings (x1)
			.collect 16697,1,8916,1 << Priest --Devout Bracers (x1)
			.collect 16710,1,8917,1 << Rogue --Shadowcraft Bracers (x1)
			.collect 16671,1,8918,1 << Shaman --Bindings of Elements (x1)
			.collect 16703,1,8919,1 << Warlock --Dreadmist Bracers (x1)
			.collect 16735,1,8920,1 << Warrior --Bracers of Valor (x1)
			.turnin 8913 >>Turn in An Earnest Proposition << Druid
			.turnin 8914 >>Turn in An Earnest Proposition << Hunter
			.turnin 8915 >>Turn in An Earnest Proposition << Mage
			.turnin 8916 >>Turn in An Earnest Proposition << Priest
			.turnin 8917 >>Turn in An Earnest Proposition << Rogue
			.turnin 8918 >>Turn in An Earnest Proposition << Shaman
			.turnin 8919 >>Turn in An Earnest Proposition << Warlock
			.turnin 8920 >>Turn in An Earnest Proposition << Warrior
			.accept 8923 >>Accept A Supernatural Device
			.target Mokvar

		step
			.goto Orgrimmar,55.59,62.92
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
			>>|cRXP_BUY_Collect the following items for the T0,5 questline:|r
			>>1x |T133001:0|t[Delicate Arcanite Converter]
			>>4x |T132864:0|t[Greater Eternal Essence]
			>>10x |T134848:0|t[Stonescale Oil]
			>>4x |T132621:0|t[Goblin Rocket Fuel] - Usually the 8 you get from the quest are enough but you might need more
			>>|cRXP_BUY_Collect the following items for the Scholomance key questline:|r
			>>2x |T133221:0|t[Thorium Bar]
			>>|cRXP_WARN_Buy them from the Auction House if possible|r
			.collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
			.collect 16203,4,8921,1 --Greater Eternal Essence (x4)
			.collect 13423,10,8921,1 --Stonescale Oil (x10)
			.collect 9061,4,8924,1 --Goblin Rocket Fuel (x4)
			.collect 12359,2,5802,1 --Thorium Bar (2x)

		step
			.goto Orgrimmar,49.58,69.13
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r
			.bankdeposit 12359 >> Deposit the |T133221:0|t[Thorium Bar] for later use
			.target Karus
			.itemcount 12359,1
			
		step
			.goto Durotar,56.0,74.6	
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r
			.turnin 2936
			.accept 2937
			.target Master Gadrin	

	--- Tanaris 1

		step
			#completewith next
			.goto Orgrimmar,45.12,63.89,5,0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
			.fly Tanaris >>Fly to |cFFfa9602Tanaris|r
			.target Doras
			.zoneskip Tanaris

		step
			.goto Tanaris,52.47,27.23,5,0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
			.target Mux Manascrambler
			.turnin 8923
			.accept 8921

		step
			.goto Tanaris,50.90,27.00
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
			.turnin 4496 >>Turn in Bungle in the Jungle
			.target Alchemist Pestlezugg

		step
			.goto Tanaris,66.989,22.354
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
			.target Yeh'kinya	
			.accept 4787 >> Accept The Ancient Egg

	--- Burning Steppes

		step
			#completewith next
			.zone Burning Steppes >>Travel to |cFFfa9602Burning Steppes|r
			.zoneskip Burning Steppes

		step
			.goto Burning Steppes,65.2,24.0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
			.accept 4726 >> Accept Broodling Essence
			.target Tinkee Steamboil
		
		step
			#completewith next
			>>Loot |cRXP_LOOT_Volcanic Ash|r on the ground
			>>|cRXP_WARN_They look like large piles of grey dirt and can be found in mainly in Northern Burning Steppes among the lava pools and rivers|r
			.collect 22338,25,8921,1 --Volcanic Ash (x25)

		step
			#completewith next
			.use 12284 >>Use |T133001:0|t[Draco-Incarcinatrix] 900 and Kill |cRXP_ENEMY_Broodlings|r in Burning Steppes
			.complete 4726,1

		step
			.goto Burning Steppes,95.061,31.563
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r and select the option: "I do not possess any proof, Cyrus."
			>>This will spawn a level 54 Elite Dragon at the entrance of the small cave. Kill and loot it for the |T134430:0|t[Black Dragonflight Molt]
			>>|cRXP_ENEMY_Do not turn in|r |cRXP_LOOT_A Taste of Flame|r |cRXP_ENEMY_as it is used for the TBC turnin!|r
			.collect 10575,1
			.accept 4023
			.target Cyrus Therepentous
			.isQuestAvailable 4022
			.isQuestAvailable 4023
			.skipgossip

		step
			.abandon 4023	
			.isOnQuest 4023			

		step
			#completewith next
			>>Loot |cRXP_LOOT_Volcanic Ash|r on the ground
			>>|cRXP_WARN_They look like large piles of grey dirt and can be found in mainly in Northern Burning Steppes among the lava pools and rivers|r
			.collect 22338,25,8921,1 --Volcanic Ash (x25)

		step
			#loop
			.goto Burning Steppes,70.8,28.9,0
			.goto Burning Steppes,78.93,29.24,0
			.goto Burning Steppes,87.79,30.76,0
			.goto Burning Steppes,90.20,36.12,0
			.goto Burning Steppes,89.73,45.91,0
			.goto Burning Steppes,85.38,56.86,0
			.goto Burning Steppes,64.33,60.36,0
			.goto Burning Steppes,54.69,62.45,0
			.goto Burning Steppes,70.8,28.9,60,0
			.goto Burning Steppes,78.93,29.24,60,0
			.goto Burning Steppes,87.79,30.76,60,0
			.goto Burning Steppes,90.20,36.12,60,0
			.goto Burning Steppes,89.73,45.91,60,0
			.goto Burning Steppes,85.38,56.86,60,0
			.goto Burning Steppes,64.33,60.36,60,0
			.goto Burning Steppes,54.69,62.45,60,0
			.use 12284 >>Use |T133001:0|t[Draco-Incarcinatrix] 900 and Kill |cRXP_ENEMY_Broodlings|r in Burning Steppes
			.complete 4726,1

		step
			#loop
			.goto Burning Steppes,71.87,29.57,0
			.goto Burning Steppes,64.74,33.56,0
			.goto Burning Steppes,50.35,35.24,0
			.goto Burning Steppes,52.08,42.58,0
			.goto Burning Steppes,40.66,43.78,0
			.goto Burning Steppes,34.95,47.61,0
			.goto Burning Steppes,23.40,46.28,0
			.goto Burning Steppes,34.32,58.78,0
			.goto Burning Steppes,55.26,47.90,0
			.goto Burning Steppes,71.87,29.57,60,0
			.goto Burning Steppes,64.74,33.56,60,0
			.goto Burning Steppes,50.35,35.24,60,0
			.goto Burning Steppes,52.08,42.58,60,0
			.goto Burning Steppes,40.66,43.78,60,0
			.goto Burning Steppes,34.95,47.61,60,0
			.goto Burning Steppes,23.40,46.28,60,0
			.goto Burning Steppes,34.32,58.78,60,0
			.goto Burning Steppes,55.26,47.90,60,0
			>>Loot |cRXP_LOOT_Volcanic Ash|r on the ground
			>>|cRXP_WARN_They look like large piles of grey dirt and can be found in mainly in Northern Burning Steppes among the lava pools and rivers|r
			.collect 22338,25,8921,1 --Volcanic Ash (x25)

		step
			.goto Burning Steppes,65.2,24.0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
			.turnin 4726 >> Accept Broodling Essence
			.target Tinkee Steamboil
			.accept 4808 >> Accept Felnok Steelspring

	--- Hinterland

		step
			#completewith next
			.goto Burning Steppes,65.6,24.2
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahgruk|r
			.fly The Hinterlands >>Fly to |cFFfa9602The Hinterlands|r
			.target Vahgruk
			.zoneskip The Hinterlands

		step
			.goto The Hinterlands,57.60,86.79
			>>Loot the |cRXP_LOOT_Ancient Egg|r
			.complete 4787,1 

		step
			.goto The Hinterlands,34.2,72.8,60,0
			>> |cRXP_WARN_If you are unable to kill her, you will have to go back for another Parchment in |cFFfa9602Durotar|r!
			.use 9323 >> Use |T134937:0|t[Gadrin's Parchment] to summon |cRXP_ENEMY_Shadra|r. Kill and then loot her for |cRXP_LOOT_Shadra's Venom|r
			.complete 2937,1
			.mob Shadra
			
		step
			.goto Hillsbrad Foothills,61.4,19.2
			>>|cRXP_LOOT_Summoning Shadra|r |cRXP_WARN_can be used as an optional questlog quest for TBC. Check /tbcprep to see if you need it|r
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lydon|r
			.turnin 2937
			.target Apothecary Lydon	

	--- Tanaris 2

		step
			#completewith next
			.subzone 976 >>Travel to Gadgetzan in |cFFfa9602Tanaris|r
			.zoneskip Tanaris

		step
			.goto Tanaris,52.47,27.23
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
			>>|cRXP_WARN_You will need 40 gold to turn in this quest|r
			.turnin 8921 >>Turn in The Ectoplasmic Distiller
			.accept 8924 >>Accept Hunting for Ectoplasm
			.target Mux Manascrambler
		
		step
			.destroy 22338 >>Destroy any extra |T133849:0|t[Volcanic Ash] you still have

		step
			#completewith next
			.use 22320 >> Open |cRXP_LOOT_Mux's Quality Goods|r and keep the |T132621:0|t[Goblin Rocket Fuel] for later
			.collect 9061,8,8924,1

		step
			.goto Tanaris,66.989,22.354
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
			.turnin 4787 >> Turn in The Ancient Egg
			.accept 3528 >> Accept The God Hakkar
			.target Yeh'kinya	

		step
			#completewith next
			.goto 1415,56.3,76.5,0
			.goto 1415,56.3,76.5,15,0
			.goto 1415,56.3,76.3,15,0
			.goto 1415,56.7,75.8,15,0
			.goto 1415,56.8,76.0,15,0
			.goto 1415,57.0,76.0,15,0
			.goto 1415,57.1,75.6,15,0
			.goto 1415,56.8,75.5,15,0
			.goto 1415,56.8,75.3,15,0 
			.goto 1415,56.8,75.2,15,0 >>Now you should be looking for a group to |cFFfa9602The Temple of Atal'Hakkar|r. This can be done as a duo on level 60
			.subzone 1477 >> Enter |cFFfa9602The Temple of Atal'Hakkar|r

		step	
			#completewith next
			>>Kill |cRXP_ENEMY_Deep Lurkers|r, |cRXP_ENEMY_Murk Worms|r and |cRXP_ENEMY_Saturated Oozes|r. Loot them for their |cRXP_LOOT_Atal'ai Haze|r
			>>|cRXP_WARN_Take a right down the stairs at the beginning of the instance to find these mobs|r
			.complete 4146,1 

		step
			>>|cRXP_WARN_Use the|r |T132834:0|t[Egg of Hakkar] |cRXP_WARN_while next to the Dragonflayer Skeleton, then complete the event|r
			>>Kill the minions of |cRXP_ENEMY_Hakkar|r until the |cRXP_ENEMY_Avatar of Hakkar|r joins
			>>Kill the |cRXP_ENEMY_Avatar of Hakkar|r. Loot it for the |T136148:0|t[|cRXP_LOOT_Essence of Hakkar|r]
			>>|cRXP_WARN_Use the|r |T136148:0|t[|cRXP_LOOT_Essence of Hakkar|r] |cRXP_WARN_to fill the|r |T132834:0|t[Egg of Hakkar]
			.collect 10663,1,3528,1 
			.disablecheckbox
			.complete 3528,1 
			.use 10465 
			.use 10663 
			.mob Avatar of Hakkar

		step
			#label sunkentemple
			>>Kill |cRXP_ENEMY_Deep Lurkers|r, |cRXP_ENEMY_Murk Worms|r and |cRXP_ENEMY_Saturated Oozes|r. Loot them for their |cRXP_LOOT_Atal'ai Haze|r
			>>|cRXP_ENEMY_Take a right down the stairs at the beginning of the instance to find these mobs|r
			.complete 4146,1 

		step	
			#completewith next
			.zone Tanaris >>Travel to |cFFfa9602Tanaris|r
			.zoneskip Tanaris

		step
			.goto Tanaris,66.989,22.354
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
			.turnin 3528 >> Turn in The God Hakkar
			.target Yeh'kinya

		step
			.goto Tanaris,66.8,24.0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironboot|r
			.accept 5065
			.target Prospector Ironboot	

		step
			.goto Tanaris,50.90,27.00
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
			.target Alchemist Pestlezugg
			.accept 4507 >>Accept Pawn Captures Queen

	--- Ungoro

		step
			#completewith next
			.goto Tanaris,51.60,25.50
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
			.fly Un'Goro Crater>>Fly to |cFFfa9602Un'Goro Crater|r
			.target Bulkrek Ragefist
			.zoneskip Un'Goro Crater

		step
			.goto Un'Goro Crater,45.53,8.72
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larion|r
			>>|cRXP_ENEMY_Warning:|r |cRXP_WARN_Do not pick up or complete the followup|r |cRXP_LOOT_Bloodpetal Zapper|r|cRXP_WARN_, as this is used for TBC|r
			.turnin 4146 >>Turn in Zapper Fuel
			.target Larion

		step
			.abandon 4509 >> Abandon Calm Before the Storm
			.isOnQuest 4509

		step
			.goto Un'Goro Crater,50.15,79.98,40,0
			.goto Un'Goro Crater,49.74,82.52,30,0
			.goto Un'Goro Crater,45.19,82.20,30,0
			.goto Un'Goro Crater,43.41,80.98
			>>Go deep into the silithid hive, until you reach a tall crystal in a round chamber
			.use 11833 >>Use your |T134809:0|t[Gorishi Queen Lure] to summon the |cRXP_ENEMY_Gorishi Hive Queen|r. Kill her, then loot her |cRXP_LOOT_Gorishi Queen Brain|r
			>>|cRXP_WARN_Proceed with caution, clear the room before summoning the queen, this quest is hard, you have to deal with 3 waves of 3 mobs. Remember to kill mobs outside the room so you can eat/drink after|r
			>>|cRXP_WARN_If you die you will have to abandon the quest and pick it up again in Tanaris|r
			.complete 4507,1 	

	--- Silithus 2

		step
			>>Reach level 60 first for continuing
			.xp 60

		step
			#completewith next
			.goto Un'Goro Crater,45.23,5.82
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
			.fly Silithus >>Fly to |cFFfa9602Silithus|r
			.target Gryfe
			.zoneskip Silithus

		step
			.goto Silithus,48.6,37.9,5,0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huum Wildmane|r
			.target Huum Wildmane
			.accept 8320

		step
			.goto Silithus,49.7,37.5,5,0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
			.target Geologist Larksbane
			.accept 8285

		step
			.goto Silithus,49.20,34.30
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
			.accept 8304
			.target Commander Mar'alith	

		step
			.goto Silithus,67,69.6
			>>Find and speak to |cRXP_FRIENDLY_Hermit Ortell|r (The Deserter)
			.target Hermit Ortell
			.turnin 8285
			.accept 8279

		step
			.goto Silithus,41.30,88.50,10,0
			.goto Silithus,40.80,88.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar|r and |cRXP_FRIENDLY_Frankal|r
			.complete 8304,2 
			.complete 8304,1 
			.target Rutgar Glyphshaper
			.target Frankal Stonebridge
			.skipgossip		

		step
			.goto Silithus,49.20,34.30
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
			.turnin 8304 >>Turn in Dearest Natalia
			.accept 8306
			.target Commander Mar'alith	

		step
			#completewith TwilightLexicon3
			#label TwilightGeolords
			>>Kill |cRXP_ENEMY_Twilight Geolords|r at multiple locations while doing the next quests
			.mob Twilight Geolord
			.complete 8320,1

		step
			.goto Silithus,40.86,42.22
			>>Kill |cRXP_ENEMY_Twilight Keeper Havunth|r. Loot him for his |cRXP_LOOT_Twilight Lexicon Chapter|r
			>>He patrols the east side of the camp that's just southwest of Cenarion Hold
			>>|cRXP_WARN_Be careful, he has very high burst|r
			.complete 8279,3 
			.unitscan Twilight Keeper Havunth
			.mob Twilight Keeper Havunth

		step
			.goto Silithus,26.34,36.62
			>>Kill |cRXP_ENEMY_Twilight Keeper Mayna|r. Loot her for her |cRXP_LOOT_Twilight Lexicon Chapter|r
			>>She patrols the camp far west of Cenarion Hold
			>>|cRXP_WARN_Be careful, she has Psychic Scream (instant fear)|r
			.complete 8279,1 
			.unitscan Twilight Keeper Mayna
			.mob Twilight Keeper Mayna

		step
			.goto Silithus,16.08,86.37
			>>Kill |cRXP_ENEMY_Twilight Keeper Exeter|r. Loot him for his |cRXP_LOOT_Twilight Lexicon Chapter|r
			>>He's at the back of the camp very far to the southwest of Cenarion Hold/northwest of Ahn'Qiraj
			>>|cRXP_WARN_Be careful, he has a stun and mortal strike|r
			.complete 8279,2 
			.unitscan Twilight Keeper Exeter
			.mob Twilight Keeper Exeter

		step
			#label TwilightGeolords
			>>Kill |cRXP_ENEMY_Twilight Geolords|r at the Twilight Camps.
			.mob Twilight Geolord
			.complete 8320,1

		step
			.goto Silithus,41.30,88.50,10,0
			.goto Silithus,40.80,88.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar|r and |cRXP_FRIENDLY_Frankal|r
			.target Rutgar Glyphshaper
			.target Frankal Stonebridge
			.accept 8309
			.accept 8310

		step
			#completewith silithus2
			>> Keep an eye out for |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r] dropped by |cRXP_ENEMY_Hive'Ashi Drones|r. It is part of the TBC turn in.
			.collect 20461
		
		step
			#completewith next
			>>Kill |cRXP_ENEMY_Hive'Zora Bugs|r. Loot them for |cRXP_LOOT_Hive'Zora Silithid Brain|r
			.mob Hive'Zora Reaver
			.mob Hive'Zora Waywatcher
			.mob Hive'Zora Hive Sister
			.mob Hive'Zora Wasp
			.mob Hive'Zora Tunneler
			.complete 8310,2

		step
			.goto Silithus,27.6,66.0,20,0
			.goto Silithus,37.3,62.5,0
			>>Interact with |cRXP_PICK_Hive'Zora Glyph|r
			.complete 8309,2
			.skipgossip	

		step
			>>Kill |cRXP_ENEMY_Hive'Zora Bugs|r. Loot them for |cRXP_LOOT_Hive'Zora Silithid Brain|r
			.mob Hive'Zora Reaver
			.mob Hive'Zora Waywatcher
			.mob Hive'Zora Hive Sister
			.mob Hive'Zora Wasp
			.mob Hive'Zora Tunneler
			.complete 8310,2

		step
			#completewith next
			>>Kill |cRXP_ENEMY_Hive'Ashi Bugs|r. Loot them for |cRXP_LOOT_Hive'Ashi Silithid Brain|r
			.mob Hive'Ashi Defender
			.mob Hive'Ashi Swarmer
			.mob Hive'Ashi Sandstalker
			.mob Hive'Ashi Stinger
			.mob Hive'Ashi Worker
			.mob Hive'Ashi Ambusher
			.mob Hive'Ashi Drone
			.complete 8310,1

		step
			.goto Silithus,48.0,25.0,20,0
			.goto Silithus,50.0,26.0,0
			>>Interact with |cRXP_PICK_Hive'Ashi Glyph|r
			.complete 8309,1
			.skipgossip	

		step
			>>Kill |cRXP_ENEMY_Hive'Ashi Bugs|r. Loot them for |cRXP_LOOT_Hive'Ashi Silithid Brain|r
			.mob Hive'Ashi Defender
			.mob Hive'Ashi Swarmer
			.mob Hive'Ashi Sandstalker
			.mob Hive'Ashi Stinger
			.mob Hive'Ashi Worker
			.mob Hive'Ashi Ambusher
			.mob Hive'Ashi Drone
			.complete 8310,1

		step
			#label silithus2
			.goto Silithus,48.6,37.9
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huum Wildmane|r
			.target Huum Wildmane
			.turnin 8320

		step
			.goto Silithus,81.87,18.93
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo|r
			.target Layo
			.turnin 1124 >>Turn in Wasteland
			.accept 1125 >>Accept The Spirits of Southwind

		step
			#completewith SilithidObject
			>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r
			>>|cRXP_WARN_They have a high chance to spawn a|r |cRXP_ENEMY_Hive'Ashi Drone|r |cRXP_WARN_after dying|r
			.complete 1125,1 
			.mob +Tortured Druid
			.complete 1125,2 
			.mob +Tortured Sentinel

		step
			#completewith next
			.cast 27433 >>|cRXP_WARN_Place the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_on the ground. It lasts for 5 minutes|r
			.use 21946 >>|cRXP_WARN_One|r |T132621:0|t[Goblin Rocket Fuel] |cRXP_WARN_is needed each time you use the|r |T133882:0|t[Ectoplasmic Distiller]
		
		step
			#loop
			.goto Silithus,61.60,48.60,0
			.goto Silithus,61.60,48.60,60,0
			.goto Silithus,63.80,48.60,60,0
			.goto Silithus,63.60,51.60,60,0
			.goto Silithus,62.60,55.60,60,0
			.goto Silithus,62.60,58.60,60,0
			.goto Silithus,60.00,55.80,60,0
			.goto Silithus,60.60,52.80,60,0
			>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r. Loot them for their |cRXP_LOOT_Scorched Ectoplasms|r
			>>|cRXP_WARN_Pull them to the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_as you kill them|r
			.complete 8924,1 --Scorched Ectoplasm (x12)
			.mob Tortured Druid
			.mob Tortured Sentinel

		step
			#label SilithidObject
			.goto Silithus,63.22,55.35
			>>Loot the |cRXP_PICK_Dusty Reliquary|r inside the lodge for the |cRXP_LOOT_Reliquary of Purity|r
			.complete 5527,1 
			.isOnQuest 5527

		step
			#loop
			.goto Silithus,61.60,48.60,0
			.goto Silithus,61.60,48.60,50,0
			.goto Silithus,63.80,48.60,50,0
			.goto Silithus,63.60,51.60,50,0
			.goto Silithus,62.60,55.60,50,0
			.goto Silithus,62.60,58.60,50,0
			.goto Silithus,60.00,55.80,50,0
			.goto Silithus,60.60,52.80,50,0
			>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r
			>>|cRXP_WARN_They have a high chance to spawn a|r |cRXP_ENEMY_Hive'Ashi Drone|r |cRXP_WARN_after dying|r
			.complete 1125,1 
			.mob +Tortured Druid
			.complete 1125,2 
			.mob +Tortured Sentinel

		step
			.goto Silithus,81.87,18.93
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo|r
			.turnin 1125 >>Turn in The Spirits of Southwind
			.target Layo Starstrike

		step
			#completewith silithusglyph
			>>Kill |cRXP_ENEMY_Hive'Regal Bugs|r. Loot them for |cRXP_LOOT_Hive'Regal Silithid Brain|r
			.mob Hive'Ashi Hive Lord
			.mob Hive'Ashi Slavemaker
			.mob Hive'Ashi Ambusher
			.mob Hive'Ashi Spitfire
			.mob Hive'Ashi Burrower
			.complete 8310,3

		step
			#completewith next
			>>|cRXP_ENEMY_Warning:|r |cRXP_WARN_This quest is VERY HARD. Grouping up is highly recommended|r
			>>Kill |cRXP_ENEMY_Mistress Natalia Mar'alith|r for |cRXP_LOOT_Into The Maw of Madness|r
			.mob Mistress Natalia Mar'alith
			.complete 8306,1

		step
			.goto Silithus,55.0,87.0,20,0
			.goto Silithus,52.0,99.0,0
			>>Interact with |cRXP_PICK_Hive'Regal Glyph|r
			.complete 8309,3
			.skipgossip	

		step
			#label silithusglyph
			>>|cRXP_ENEMY_Warning:|r |cRXP_WARN_This quest is VERY HARD. Grouping up is highly recommended|r
			>>Kill |cRXP_ENEMY_Mistress Natalia Mar'alith|r for |cRXP_LOOT_Into The Maw of Madness|r
			.mob Mistress Natalia Mar'alith
			.complete 8306,1

		step
			>>Kill |cRXP_ENEMY_Hive'Regal Bugs|r. Loot them for |cRXP_LOOT_Hive'Regal Silithid Brain|r
			.mob Hive'Ashi Hive Lord
			.mob Hive'Ashi Slavemaker
			.mob Hive'Ashi Ambusher
			.mob Hive'Ashi Spitfire
			.mob Hive'Ashi Burrower
			.complete 8310,3		

		step
			>>|cRXP_WARN_Both,|r |cRXP_LOOT_Glyph Chasing|r |cRXP_WARN_and|r |cRXP_LOOT_Unraveling the Mystery|r |cRXP_WARN_can be used as optional questlog quests for TBC. Check /tbcprep to see if you need these|r
			.goto Silithus,41.30,88.50,10,0
			.goto Silithus,40.80,88.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar|r and |cRXP_FRIENDLY_Frankal|r
			.target Rutgar Glyphshaper
			.turnin 8309
			.target Frankal Stonebridge
			.turnin 8310

	--- Moonglade 2

		step << !Druid
			#completewith next
			.goto Silithus,48.69,36.67
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runk|r
			.fly Moonglade >>Fly to Moonglade
			.target Runk Windtamer
			.zoneskip Moonglade

		step << Druid
			#completewith next
			.cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
			.zoneskip Moonglade	

		step
			.goto Moonglade,51.70,45.00
			>>|cRXP_LOOT_A Reliquary of Purity|r |cRXP_WARN_can be used as an optional questlog quest for TBC. Check /tbcprep to see if you need it|r
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine|r
			.turnin 5527
			.target Rabine Saturna

	--- Winterspring

		step
			#completewith next
			.goto Moonglade,32.2,66.6
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faustron|r
			.fly Winterspring >>Fly to |cFFfa9602Winterspring|r
			.target Faustron
			.zoneskip Winterspring

		step
			.goto Winterspring,61.4,37.0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy Coppergrab|r
			.bankdeposit 11315,20394,20395,20396,20460,20461,20404 >> Deposit all quest items that are either for TBC or later used
			.target Izzy Coppergrab

		step
			.goto Winterspring,61.6,38.6
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
			.turnin 4808 >> Turn in Felnok Steelspring
			.accept 4809 >> Accept Chillwind Horns

		step
			#completewith FelElemRod
			>>Kill |cRXP_ENEMY_Chillwind Chimaera|r and collect |cRXP_LOOT_Uncracked Chillwind Horns|r
			.mob Chillwind Chimaera
			.mob Fledgling Chillwind
			.mob Chillwind Ravager
			.complete 4809,1

		step
			.goto Winterspring,31.269,45.164
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
			.turnin 3908 >>Turn in It's a Secret to Everybody
			.accept 3909 >> Accept The Videre Elixir
			.target Donova Snowden

		step
			#loop
			.goto Winterspring,31.00,36.80,0
			.goto Winterspring,31.00,36.80,50,0
			.goto Winterspring,30.00,35.80,50,0
			.goto Winterspring,31.00,34.80,50,0
			.goto Winterspring,33.60,37.00,50,0	
			>>Kill |cRXP_ENEMY_Winterfall Furbolgs|r until you loot an |T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r]. Use it to accept the quest
			.collect 12771,1,5083 
			.accept 5083 >>Accept Winterfall Firewater
			.use 12771
			.mob Winterfall Pathfinder
			.mob Winterfall Den Watcher
			.mob Winterfall Totemic

		step
			#completewith next
			.cast 27433 >>|cRXP_WARN_Place the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_on the ground. It lasts for 5 minutes|r
			.use 21946 >>|cRXP_WARN_One|r |T132621:0|t[Goblin Rocket Fuel] |cRXP_WARN_is needed each time you use the|r |T133882:0|t[Ectoplasmic Distiller]

		step
			#loop
			.goto Winterspring,55.42,43.41,0
			.goto Winterspring,53.29,43.82,0
			.goto Winterspring,52.60,40.59,0
			.goto Winterspring,55.42,43.41,50,0
			.goto Winterspring,53.29,43.82,50,0
			.goto Winterspring,52.60,40.59,50,0
			>>Kill |cRXP_ENEMY_Suffering Highborne|r and |cRXP_ENEMY_Anguished Highborne|r. Loot them for their |cRXP_LOOT_Frozen Ectoplasms|r
			>>|cRXP_WARN_Pull them to the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_as you kill them|r
			.complete 8924,2 --Frozen Ectoplasm (x12)
			.mob Suffering Highborne
			.mob Anguished Highborne	

		step
			#completewith FelElemRod
			.subzone 2256 >>Travel to Darkwhisper Gorge in |cFFfa9602Winterspring|r

		step
			#completewith next
			+|cRXP_WARN_Be careful! You will encounter level 60 mobs on the way to|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_. Avoid them as much as possible|r

		step
			#label FelElemRod
			.goto Winterspring,58.87,78.40
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vi'el|r
			>>|cRXP_BUY_Buy a|r |T135155:0|t[|cRXP_LOOT_Fel Elemental Rod|r] |cRXP_BUY_from him|r
			>>|cRXP_WARN_This will cost 40 gold|r
			.collect 21939,1,8928,1 --Fel Elemental Rod (x1)
			.target Vi'el

		step
			#loop
			.goto Winterspring,67.0,53.0,0
			.goto Winterspring,60.5,44.5,0
			.goto Winterspring,53.1,37.9,0
			.goto Winterspring,67.0,53.0,50,0
			.goto Winterspring,60.5,44.5,50,0
			.goto Winterspring,53.1,37.9,50,0
			>>Kill |cRXP_ENEMY_Chillwind Chimaera|r and collect |cRXP_LOOT_Uncracked Chillwind Horns|r
			.complete 4809,1
			.mob Chillwind Chimaera
			.mob Fledgling Chillwind
			.mob Chillwind Ravager

		step
			.goto Winterspring,61.3,39.0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessica Redpath|r
			.accept 5601
			.target Jessica Redpath

		step
			.goto Winterspring,61.6,38.6
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
			.turnin 4809 >> Turn in Chillwind Horns
			.accept 4810 >> Accept Return to Tinkee
			.target Felnok Steelspring

	--- Feralas

		step
			#completewith next
			.goto Winterspring,60.4,36.4
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r
			.fly Desolace>>Fly to Desolace
			.target Yugrek
			.zoneskip Desolace

		step
			#completewith next
			.zone Feralas >>Travel to |cFFfa9602Feralas|r
			.zoneskip Feralas

		step
			#completewith next
			.goto Feralas,45.12,25.56
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan|r
			>>|cRXP_BUY_Buy some|r |T134006:0|t[Bait] |cRXP_BUY_from him|r
			.collect 11141,1,3909,1 
			.target Gregan Brewspewer
			.isOnQuest 3909

		step
			.goto Feralas,44.60,10.19
			>>Give some bait to |cRXP_ENEMY_Miblon Snarltooth|r, who's guarding the |cRXP_LOOT_Evoroot|r. Loot the |cRXP_LOOT_Evoroot|r in the Ruins
			>>|cRXP_WARN_You can also get in from the backside of the building|r
			.collect 11242,1,3909,1 
			.unitscan Miblon Snarltooth
			.isOnQuest 3909

		step	
			.isQuestAvailable 3912
			.goto Feralas,45.12,25.56
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
			.accept 4041
			.turnin 4041
			.complete 3909,1 
			.target Gregan Brewspewer
			
	--- Winterspring

		step
			#completewith next
			.goto Feralas,45.4,2.8,50,0
			.goto Desolace,21.6,74.0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalon|r
			.fly Winterspring >>Fly to |cFFfa9602Winterspring|r
			.target Thalon
			.zoneskip Winterspring

		step
			.goto Winterspring,31.269,45.164
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
			.turnin 3909 >> Turn in The Videre Elixir
			.turnin 5083 >>Turn in Winterfall Firewater
			.accept 5084 >>Accept Falling to Corruption
			.target Donova Snowden
			.accept 3912 >> Accept Meet at the Grave

		step
			.goto Felwood,60.20,5.90
			>>Click the |cRXP_PICK_Deadwood Cauldron|r
			>>|cRXP_WARN_This is an instant cast. You can run away from the |cRXP_ENEMY_Deadwood Furbolgs|r after turning it in|r
			.turnin 5084 >>Turn in Falling to Corruption
			.accept 5085 >>Accept Mystery Goo

		step
			.goto Winterspring,31.30,45.10
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
			.turnin 5085 >>Turn in Mystery Goo
			.accept 5086 >>Accept Toxic Horrors
			.target Donova Snowden

		step
			#loop
			.goto Felwood,49.76,27.29,0
			.goto Felwood,50.87,23.72,50,0
			.goto Felwood,49.44,23.39,50,0
			.goto Felwood,48.86,24.80,50,0
			.goto Felwood,49.76,27.29,50,0
			>>Kill |cRXP_ENEMY_Toxic Horrors|r. Loot them for their |cRXP_LOOT_Toxic Horror Droplets|r
			.complete 5086,1 
			.mob Toxic Horror	

		step
			#completewith next
			.goto Felwood,65.16,7.88,40,0
			.goto Felwood,64.67,3.14,40,0
			.goto Felwood,66.40,2.95,40,0
			.goto Felwood,68.24,5.60,40,0
			.goto Felwood,68.73,6.38
			.zone Winterspring >> Travel through Timbermaw Hold to |cRXP_FRIENDLY_Donova|r in Winterspring

		step
			.goto Winterspring,31.30,45.20
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
			.turnin 5086 >>Turn in Toxic Horrors
			.accept 5087 >>Accept Winterfall Runners
			.target Donova Snowden

		step
			#loop
			.goto Winterspring,67.96,37.54,40,0
			.goto Winterspring,66.16,33.66,40,0
			.goto Winterspring,64.37,32.06,40,0
			.goto Winterspring,62.41,25.53,40,0
			.goto Winterspring,61.97,23.00,40,0
			.goto Winterspring,57.30,28.05,40,0
			.goto Winterspring,54.07,30.98,40,0
			.goto Winterspring,53.49,34.13,40,0
			.goto Winterspring,47.81,39.23,40,0
			.goto Winterspring,39.36,41.28,40,0
			.goto Winterspring,30.12,42.57,40,0
			.goto Winterspring,28.01,34.60,40,0
			>>Kill |cRXP_ENEMY_Winterfall Runners|r
			>>|cRXP_WARN_They patrol the road between the Timbermaw Hold tunnel and Winterfall Village northeast of Everlook. Alternatively, run back through the cave to Felwood, and kill the Runner located at the cauldron in Felpaw Village|r
			.complete 5087,1 
			.unitscan Winterfall Runner
			.zoneskip Felwood

		step
			.goto Winterspring,31.30,45.20
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
			.turnin 5087 >>Turn in Winterfall Runners
			.accept 5121 >>Accept High Chief Winterfall
			.target Donova Snowden	

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 2-Group Quest Prep Part 2
#displayname Quests Part 2
#next 3-Blackrock Depths-Main

	--- Western Plaguelands

		step
			#completewith next
			.zone Tirisfal Glades >>Travel to |cFFfa9602Tirisfal Glades|r
			.zoneskip Tirisfal Glades

		step
			.goto Tirisfal Glades,83.1,68.9
			.target High Executor Derrington
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
			.accept 5096 >>Accept Scarlet Diversions
		
		step
			.goto Tirisfal Glades,83.2,69.1
			>>Loot the |cRXP_LOOT_Box of Incendiaries|r next to the fire
			.collect 12814,1
			.isOnQuest 5096

		step
			>> Be careful as the mobs are relatively difficult, and can chain-pull each other here
			>>Burn the command tent down, then use the banner in your inventory on top of it
			.goto Western Plaguelands,40.5,51.8
			.complete 5096,1 			

		step
			.goto Tirisfal Glades,83.1,68.9
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
			.turnin 5096 >>Turn in Scarlet Diversions
			.target High Executor Derrington
			.accept 5098 >>Accept All Along the Watchtowers
			.accept 5228 >>Accept The Scourge Cauldrons		

		step
			.goto Tirisfal Glades,83.03,71.91
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
			.turnin 5228 >>Turn in The Scourge Cauldrons
			.target Shadow Priestess Vandis
			.accept 5229 >>Accept Target: Felstone Field

		step
			>>Kill |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Loot him for the key
			.goto Western Plaguelands,37.12,57.18
			.complete 5229,1 
			.mob Cauldron Lord Bilemaw

		step
			.goto Western Plaguelands,37.22,56.88
			.turnin 5229 >>Turn in Target: Felstone Field
			.accept 5230 >>Accept Return to the Bulwark

		step
			.goto Western Plaguelands,38.40,54.05
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the second floor of the house
			.accept 5021 >>Accept Better Late Than Never
			.target Janice Felstone

		step
			.goto Western Plaguelands,38.8,55.3
			>>Click |cRXP_PICK_Janice's Parcel|r in the barn
			>>|cRXP_WARN_You can click it through the hallway wall if you want to skip the mobs inside|r
			.turnin 5021 >>Turn in Better Late Than Never
			.accept 5023 >>Accept Better Late Than Never	

		step
			>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
			.goto Western Plaguelands,40.15,71.50
			.complete 5098,1 	

		step
			.goto Western Plaguelands,26.41,59.14
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
			.turnin 5230 >>Turn in Return to the Bulwark
			.target Shadow Priestess Vandis
			.accept 5231 >>Accept Target: Dalson's Tears

		step
			>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
			.goto Western Plaguelands,42.28,66.05
			.complete 5098,2

		step
			>>Kill |cRXP_ENEMY_Cauldron Lord Malvinous|r. Loot him for the key
			.goto Western Plaguelands,46.04,52.33
			.complete 5231,1 
			.mob Cauldron Lord Malvinous
			
		step
			.goto Western Plaguelands,46.19,52.01
			.turnin 5231 >>Turn in Target: Dalson's Tears
			.accept 5232 >>Accept Return to the Bulwark

		step
			>>Click the |cRXP_LOOT_Diary|r inside the barn on the ground
			.goto Western Plaguelands,47.79,50.67
			.turnin 5058 >> Turn in Mrs. Dalson's Diary
			.skipgossip

		step
			#completewith next
			>>Kill the |cRXP_ENEMY_Wandering Skeleton|r. Loot it for the |cRXP_LOOT_Outhouse Key|r
			.goto Western Plaguelands,48.0,49.8,70,0
			.collect 12738,1
			.isQuestAvailable 5060
			.mob Wandering Skeleton

		step
			.goto Western Plaguelands,48.16,49.64
			>>Click the outhouse and turn in |cRXP_WARN_Locked Away|r. This will spawn |cRXP_ENEMY_Farmer Dalson|r. Kill him and loot the |cRXP_LOOT_Cabinet Key|r
			>>|cRXP_WARN_Do not turn in the Locked Away followup after you looted the key from Farmer Dalson! This is used in TBC|r
			.collect 12739,1 
			.isQuestAvailable 5060
			.mob Farmer Dalson

		step
			>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
			.goto Western Plaguelands,44.24,63.06
			.complete 5098,3 

		step
			.goto Western Plaguelands,26.40,59.14
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
			.turnin 5232 >>Turn in Return to the Bulwark
			.target Shadow Priestess Vandis
			.accept 5233 >>Accept Target: Writhing Haunt

		step
			>>Kill |cRXP_ENEMY_Cauldron Lord Razarch|r. Loot him for the key
			.goto Western Plaguelands,53.07,65.97
			.complete 5233,1 
			.mob Cauldron Lord Razarch

		step
			.goto Western Plaguelands,53.05,65.71
			.turnin 5233 >>Turn in Target: Writhing Haunt
			.accept 5234 >>Accept Return to the Bulwark

		step
			.goto Western Plaguelands,53.73,64.66
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r
			.accept 4984 >>Accept The Wildlife Suffers Too	

		step
			#loop
			.goto Western Plaguelands,46.80,39.60,0
			.goto Western Plaguelands,46.80,39.60,70,0
			.goto Western Plaguelands,45.80,46.40,70,0
			.goto Western Plaguelands,43.40,54.80,70,0
			.goto Western Plaguelands,46.00,59.20,70,0
			.goto Western Plaguelands,51.60,61.60,70,0
			.goto Western Plaguelands,51.00,53.20,70,0
			.goto Western Plaguelands,50.00,46.60,70,0
			.goto Western Plaguelands,47.80,43.40,70,0
			>>Kill |cRXP_ENEMY_Diseased Wolves|r
			>>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Carrion Lurkers|r|cRXP_WARN_. If necessary, kill them to reset the area|r
			.complete 4984,1 
			.mob Diseased Wolf	

		step
			.goto Western Plaguelands,53.73,64.66
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r
			.turnin 4984 >>Turn in The Wildlife Suffers Too
			.accept 4985 >>Accept The Wildlife Suffers Too
			.target Mulgris Deepriver	
			
		step
			#loop
			.goto Western Plaguelands,56.08,63.26,0
			.goto Western Plaguelands,56.08,63.26,90,0
			.goto Western Plaguelands,60.15,59.93,90,0
			.goto Western Plaguelands,59.43,52.40,90,0
			.goto Western Plaguelands,68.18,46.23,90,0
			>>Kill |cRXP_ENEMY_Diseased Grizzlies|r
			>>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Plague Lurkers|r|cRXP_WARN_. If necessary, kill them to reset the area|r
			.complete 4985,1 
			.mob Diseased Grizzly		
			
		step
			.goto Western Plaguelands,53.73,64.66
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r
			>>|cRXP_ENEMY_Warning:|r |cRXP_WARN_Do not pick up or complete the followup|r |cRXP_LOOT_Glyphed Oaken Branch|r|cRXP_WARN_, as this is used for TBC|r
			.turnin 4985 >>Turn in The Wildlife Suffers Too
			.target Mulgris Deepriver			

		step
			>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
			.goto Western Plaguelands,46.73,71.14
			.complete 5098,4 	

		step
			.goto Western Plaguelands,26.40,59.15
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
			.turnin 5234 >>Turn in Return to the Bulwark
			.target Shadow Priestess Vandis
			.accept 5235 >>Accept Target: Gahrron's Withering

		step
			.goto Western Plaguelands,26.51,56.02
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
			.turnin 5098 >>Turn in All Along the Watchtowers
			.target High Executor Derrington
			.accept 838 >>Accept Scholomance

		step	
			.destroy 12815 >>Destroy |T135432:0|t[Beacon Torch] as you don't need it anymore

		step
			.goto Western Plaguelands,26.67,56.33
			.target Apothecary Dithers
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
			.turnin 838 >>Turn in Scholomance
			.accept 964	

		step
			>>Kill |cRXP_ENEMY_Cauldron Lord Soulwrath|r. Loot him for the key
			.goto Western Plaguelands,62.80,58.76
			.complete 5235,1 
			.mob Cauldron Lord Soulwrath

		step
			#label lastcauldron
			>>|cRXP_ENEMY_Warning:|r |cRXP_WARN_Do not pick up or complete the followup|r |cRXP_LOOT_Return to the Bulwark|r|cRXP_WARN_, as this is used for TBC|r
			.goto Western Plaguelands,62.59,58.55
			.turnin 5235 >>Turn in Target: Gahrron's Withering
		
	--- Eastern Plaguelands

		step
			#loop
			.goto Eastern Plaguelands,7.59,43.57
			.target Tirion Fordring
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
			.accept 5542 >>Accept Demon Dogs
			.accept 5543 >>Accept Blood Tinged Skies
			.accept 5544 >>Accept Carrion Grubbage

		step
			#completewith next
			.abandon 5236 >> Abandon Return to the Bulwark
			.isOnQuest 5236

		step
			#completewith WormMeat
			>>Kill |cRXP_ENEMY_Carrion Worms|r. Loot them for their |cRXP_LOOT_Meat|r
			.complete 5544,1 
			.mob Carrion Worm
			.mob Carrion Devourer
			.mob Carrion Grub

		step
			#completewith Pamela
			>>Kill |cRXP_ENEMY_Plaguebats|r and |cRXP_ENEMY_Plaguehound Runts|r
			.complete 5543,1 
			.mob +Plaguebat
			.complete 5542,1 
			.mob +Plaguehound Runt
					
		step
			.goto Eastern Plaguelands,26.54,74.74
			.target Nathanos Blightcaller
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
			.accept 6042 >>Accept Un-Life's Little Annoyances
			.accept 6022 >>Accept To Kill With Purpose
			.accept 6133 >>Accept The Ranger Lord's Behest

		step	
			.goto Eastern Plaguelands,36.47,90.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
			.turnin -5601 >>Turn in Sister Pamela
			.accept 5149 >>Accept Pamela's Doll
			.target Pamela Redpath

		step
			#loop
			.goto Eastern Plaguelands,38.10,92.24,0
			.goto Eastern Plaguelands,39.64,92.51,0
			.goto Eastern Plaguelands,39.67,90.24,0
			.goto Eastern Plaguelands,38.10,92.24,10,0
			.goto Eastern Plaguelands,39.64,92.51,10,0
			.goto Eastern Plaguelands,39.67,90.24,10,0
			>>Loot the 3 |cRXP_PICK_Doll Parts|r on the floor in ruined buildings
			>>|cRXP_WARN_Clicking the doll pieces can spawn a few|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_which have ice armor and frost shock|r
			.collect 12886,1,5149,1 
			.collect 12888,1,5149,1 
			.collect 12887,1,5149,1 
			.unitscan Ghost of the Past

		step
			.goto Eastern Plaguelands,36.47,90.80
			.use 12886 >>Click |T134164:0|t[Pamela's Doll's Head] to combine the three pieces
			.complete 5149,1 

		step
			#label Pamela
			.goto Eastern Plaguelands,36.47,90.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
			.turnin 5149 >>Turn in Pamela's Doll
			.accept 5152 >>Accept Auntie Marlene
			.target Pamela Redpath

		step
			#loop
			.goto Eastern Plaguelands,40.09,82.83,0
			.goto Eastern Plaguelands,43.06,82.47,0
			.goto Eastern Plaguelands,43.97,74.96,0
			.goto Eastern Plaguelands,36.35,69.28,0
			.goto Eastern Plaguelands,30.46,70.17,0
			.goto Eastern Plaguelands,19.69,68.12,0
			.goto Eastern Plaguelands,18.24,77.03,0
			.goto Eastern Plaguelands,24.94,70.55,0
			.goto Eastern Plaguelands,31.20,72.10,0
			.goto Eastern Plaguelands,34.16,82.21,0
			.goto Eastern Plaguelands,40.09,82.83,70,0
			.goto Eastern Plaguelands,43.06,82.47,70,0
			.goto Eastern Plaguelands,43.97,74.96,70,0
			.goto Eastern Plaguelands,36.35,69.28,70,0
			.goto Eastern Plaguelands,30.46,70.17,70,0
			.goto Eastern Plaguelands,19.69,68.12,70,0
			.goto Eastern Plaguelands,18.24,77.03,70,0
			.goto Eastern Plaguelands,24.94,70.55,70,0
			.goto Eastern Plaguelands,31.20,72.10,70,0
			.goto Eastern Plaguelands,34.16,82.21,70,0
			>>Kill |cRXP_ENEMY_Plaguebats|r and |cRXP_ENEMY_Plaguehound Runts|r
			.complete 5543,1 
			.mob +Plaguebat
			.complete 5542,1 
			.mob +Plaguehound Runt

		step
			.abandon 5241	
			.isOnQuest 5241

		step
			#completewith next
			>>Kill |cRXP_ENEMY_Plaguehound|r and |cRXP_ENEMY_Noxious Plaguebats|r
			.complete 5542,2 
			.mob +Plaguehound
			.complete 6042,1 
			.mob +Noxious Plaguebat

		step
			#completewith RottingUndead
			.subzone 2264 >> Travel to Corrin's Crossing

		step
			#completewith next
			>>Kill |cRXP_ENEMY_Undead|r. Loot them for their |cRXP_LOOT_Living Rot|r.
			>> You will need a total of 7 inventory slots for all Living Rot's as they don't stack
			>>|cRXP_WARN_Groups of elites patrol the north and east road. Invisible mobs patrol inside of Corrin's Crossing, so try to pull mobs out|r
			.collect 15447,7 
			.mob Hate Shrieker
			.mob Scourge Warder
			.mob Stitched Horror
			.mob Gibbering Ghoul
			.mob Unseen Servant
			.mob Dark Caster

		step
			#label RottingUndead
			#loop
			.goto Eastern Plaguelands,58.20,70.20,0
			.goto Eastern Plaguelands,58.20,70.20,25,0
			.goto Eastern Plaguelands,60.40,71.60,25,0
			.goto Eastern Plaguelands,61.00,69.40,25,0
			.goto Eastern Plaguelands,61.40,66.40,25,0
			.goto Eastern Plaguelands,59.40,66.40,25,0
			.goto Eastern Plaguelands,58.00,67.60,25,0
			.use 15454 >>|cRXP_WARN_Use the|r |T133748:0|t[Mortar and Pestle] |cRXP_WARN_before the|r |cRXP_LOOT_Living Rot|r |cRXP_WARN_expires after 10min|r
			.complete 6022,1 

		step
			#loop
			.goto Eastern Plaguelands,62.8,80.4,0
			.goto Eastern Plaguelands,61.31,76.72,0
			.goto Eastern Plaguelands,66.13,80.21,0
			.goto Eastern Plaguelands,62.17,83.83,0
			.goto Eastern Plaguelands,58.75,82.08,0
			.goto Eastern Plaguelands,59.06,76.25,0
			.goto Eastern Plaguelands,62.8,80.4,60,0
			.goto Eastern Plaguelands,61.31,76.72,60,0
			.goto Eastern Plaguelands,66.13,80.21,60,0
			.goto Eastern Plaguelands,62.17,83.83,60,0
			.goto Eastern Plaguelands,58.75,82.08,60,0
			.goto Eastern Plaguelands,59.06,76.25,60,0
			>>Use the |T134856:0|t[Aspect of Neptulon] on |cRXP_ENEMY_Plague Ravager|r and |cRXP_ENEMY_Blighted Surge|r, kill them and loot them for |T132606:0|t[Discordant Bracers]
			.use 17310
			.mob Plague Ravager
			.mob Blighted Surge
			.complete -6804,1

		step
			#loop
			.goto Eastern Plaguelands,77.94,69.64,0
			.goto Eastern Plaguelands,46.14,65.32,70,0
			.goto Eastern Plaguelands,49.24,61.48,70,0
			.goto Eastern Plaguelands,50.26,54.66,70,0
			.goto Eastern Plaguelands,55.24,54.72,70,0
			.goto Eastern Plaguelands,61.47,61.92,70,0
			.goto Eastern Plaguelands,65.18,70.17,70,0
			.goto Eastern Plaguelands,69.94,72.99,70,0
			.goto Eastern Plaguelands,72.99,75.98,70,0
			.goto Eastern Plaguelands,77.94,69.64,70,0
			>>Kill |cRXP_ENEMY_Plaguehound|r and |cRXP_ENEMY_Noxious Plaguebats|r
			.complete 5542,2 
			.mob +Plaguehound
			.complete 6042,1 
			.mob +Noxious Plaguebat		

		step
			#completewith eyeless
			>>Kill |cRXP_ENEMY_Monstrous Plaguebats|r and |cRXP_ENEMY_Frenzied Plaguehounds|r
			>>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Monstrous Plaguebats|r |cRXP_WARN_can silence for 10 seconds in melee range|r << !Rogue !Warrior
			.complete 6042,2 
			.mob +Monstrous Plaguebat
			.complete 5542,3 
			.mob +Frenzied Plaguehound
			.subzoneskip 2272

		step
			#completewith eyeless
			>>Kill |cRXP_ENEMY_Carrion Worms|r. Loot them for their |cRXP_LOOT_Meat|r
			.complete 5544,1 
			.mob Carrion Worm
			.mob Carrion Devourer
			.subzoneskip 2272

		step
			#completewith next
			.cast 27433 >>|cRXP_WARN_Place the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_on the ground. It lasts for 5 minutes|r
			.use 21946 >>|cRXP_WARN_One|r |T132621:0|t[Goblin Rocket Fuel] |cRXP_WARN_is needed each time you use the|r |T133882:0|t[Ectoplasmic Distiller]

		step
			#label eyeless
			.goto Eastern Plaguelands,71.0,30.0
			>>Kill |cRXP_ENEMY_Eyeless Watcher|r and |cRXP_ENEMY_Death Singer|r. Loot them for their |cRXP_LOOT_Stable Ectoplasms|r
			>>|cRXP_WARN_Pull them to the|r |T133882:0|t[Ectoplasmic Distiller] |cRXP_WARN_as you kill them|r
			.complete 8924,3 --Stable Ectoplasm (x12)
			.mob Eyeless Watcher
			.mob Death Singer

		step
			#completewith tablet
			>>Kill |cRXP_ENEMY_Monstrous Plaguebats|r and |cRXP_ENEMY_Frenzied Plaguehounds|r
			>>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Monstrous Plaguebats|r |cRXP_WARN_can silence for 10 seconds in melee range|r << !Rogue !Warrior
			.complete 6042,2 
			.mob +Monstrous Plaguebat
			.complete 5542,3 
			.mob +Frenzied Plaguehound
			.subzoneskip 2273

		step
			#completewith tablet
			>>Kill |cRXP_ENEMY_Carrion Worms|r. Loot them for their |cRXP_LOOT_Meat|r
			.complete 5544,1 
			.mob Carrion Worm
			.mob Carrion Devourer
			.subzoneskip 2273

		step
			#label tablet
			.goto Eastern Plaguelands,72.7,15.7
			>>Loot the |cRXP_LOOT_Fourth Mosh'aru Tablet|r
			.complete 5065,2

		step
			.goto Eastern Plaguelands,72.5,12.9
			>>Loot the |cRXP_LOOT_Third Mosh'aru Tablet|r
			.complete 5065,1

		step
			#completewith quelthalas
			>>Kill |cRXP_ENEMY_Monstrous Plaguebats|r and |cRXP_ENEMY_Frenzied Plaguehounds|r
			>>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Monstrous Plaguebats|r |cRXP_WARN_can silence for 10 seconds in melee range|r << !Rogue !Warrior
			.complete 6042,2 
			.mob +Monstrous Plaguebat
			.complete 5542,3 
			.mob +Frenzied Plaguehound
			.subzoneskip 2276

		step
			#completewith quelthalas
			>>Kill |cRXP_ENEMY_Carrion Worms|r. Loot them for their |cRXP_LOOT_Meat|r
			.complete 5544,1 
			.mob Carrion Worm
			.mob Carrion Devourer
			.subzoneskip 2276
		step
			#completewith next
			.goto Eastern Plaguelands,52.14,18.30,0
			>>Loot the |cRXP_LOOT_Quel'Thalas Registry|r on top of the bench
			.complete 6133,4 

		step
			#label quelthalas
			#loop
			.goto Eastern Plaguelands,52.88,19.18,0
			.goto Eastern Plaguelands,51.75,21.66,40,0
			.goto Eastern Plaguelands,50.73,18.33,40,0
			.goto Eastern Plaguelands,50.89,16.50,40,0
			.goto Eastern Plaguelands,52.97,17.29,40,0
			.goto Eastern Plaguelands,52.88,19.18,40,0
			>>Kill |cRXP_ENEMY_Pathstriders|r, |cRXP_ENEMY_Rangers|r and |cRXP_ENEMY_Woodsmen|r
			>>|cRXP_WARN_These mobs hit very hard for non-elites|r << !Rogue !Druid
			>>|cRXP_WARN_These mobs hit very hard for non-elites; remember Pathstrider's Faerie Fire ability, in case you need to escape|r << Rogue/Druid
			.complete 6133,1 
			.mob +Pathstrider
			.complete 6133,2 
			.mob +Ranger
			.complete 6133,3 
			.mob +Woodsman

		step
			.goto Eastern Plaguelands,52.14,18.30
			>>Loot the |cRXP_LOOT_Quel'Thalas Registry|r on top of the bench
			.complete 6133,4 

		step
			#label WormMeat
			#loop
			.goto Eastern Plaguelands,51.18,39.91,0
			.goto Eastern Plaguelands,69.73,50.55,70,0
			.goto Eastern Plaguelands,70.42,43.50,70,0
			.goto Eastern Plaguelands,70.34,38.47,70,0
			.goto Eastern Plaguelands,67.02,34.41,70,0
			.goto Eastern Plaguelands,62.69,34.72,70,0
			.goto Eastern Plaguelands,50.36,28.49,70,0
			.goto Eastern Plaguelands,51.18,39.91,70,0
			>>Kill |cRXP_ENEMY_Monstrous Plaguebats|r and |cRXP_ENEMY_Frenzied Plaguehounds|r
			>>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Monstrous Plaguebats|r |cRXP_WARN_can silence for 10 seconds in melee range|r << !Rogue !Warrior
			.complete 6042,2 
			.mob +Monstrous Plaguebat
			.complete 5542,3 
			.mob +Frenzied Plaguehound

		step
			#loop
			.goto Eastern Plaguelands,67.02,34.41,0
			.goto Eastern Plaguelands,69.73,50.55,70,0
			.goto Eastern Plaguelands,70.42,43.50,70,0
			.goto Eastern Plaguelands,70.34,38.47,70,0
			.goto Eastern Plaguelands,67.02,34.41,70,0
			.goto Eastern Plaguelands,62.69,34.72,70,0
			.goto Eastern Plaguelands,50.36,28.49,70,0
			.goto Eastern Plaguelands,51.18,39.91,70,0
			>>Kill |cRXP_ENEMY_Carrion Worms|r. Loot them for their |cRXP_LOOT_Meat|r
			.complete 5544,1 
			.mob Carrion Worm
			.mob Carrion Devourer

		step
			.goto Eastern Plaguelands,7.59,43.57
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
			.turnin 5542 >>Turn in Demon Dogs
			.turnin 5543 >>Turn in Blood Tinged Skies
			.turnin 5544 >>Turn in Carrion Grubbage
			.accept 5742 >>Accept Redemption
			.target Tirion Fordring

		step
			.goto Eastern Plaguelands,7.59,43.57
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
			.complete 5742,1 
			.turnin 5742 >>Turn in Redemption
			.accept 5781 >>Accept Of Forgotten Memories
			.target Tirion Fordring
			.skipgossip

		step
			.goto Eastern Plaguelands,26.55,74.72
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
			.turnin 6022 >>Turn in To Kill With Purpose
			.turnin 6042 >>Turn in Un-Life's Little Annoyances
			.turnin 6133 >>Turn in The Ranger Lord's Behest
			.accept 6136
			.accept 6135
			.target Nathanos Blightcaller

		step
			.goto Eastern Plaguelands,28.34,86.79
			>>Click the |cRXP_PICK_Loose Dirt Mound|r to summon |cRXP_ENEMY_Mercutio Filthgorger|r and 3 |cRXP_ENEMY_Crypt Robbers|r. Kill him, then loot him for his |cRXP_LOOT_Hammer|r
			>>|cRXP_WARN_This quest is very dangerous. The|r |cRXP_ENEMY_Crypt Robbers|r |cRXP_WARN_are unusual; they take a LONG time to reset and can re-leash on a split pull|r
			>>|cRXP_WARN_Split pull the pack that spawns with Blizzard. Kite|r |cRXP_ENEMY_Mercutio|r |cRXP_WARN_away until the other mobs break leash|r << Mage
			>>|cRXP_WARN_Split pull the pack that spawns with Rain of Fire. Kite|r |cRXP_ENEMY_Mercutio|r |cRXP_WARN_away until the other mobs break leash|r << Warlock
			>>|cRXP_WARN_Split pull the pack that spawns with Volley. Kite|r |cRXP_ENEMY_Mercutio|r |cRXP_WARN_away until the other mobs break leash|r << Hunter
			>>|cRXP_WARN_Stealth into the middle of the pack that spawns, then de-stealth, immediately aggroing all mobs at once. Keep refreshing leash on|r |cRXP_ENEMY_Mercutio|r |cRXP_WARN_whilst sprinting away from the other mobs|r << Rogue
			>>|cRXP_WARN_Stealth into the middle of the pack that spawns, then de-stealth, immediately aggroing all mobs at once. Keep refreshing leash on|r |cRXP_ENEMY_Mercutio|r |cRXP_WARN_whilst dashing away from the other mobs|r << Druid
			.complete 5781,1 
			.mob Crypt Robber
			.unitscan Mercutio Filthgorger

		step
			.goto Eastern Plaguelands,7.59,43.57
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
			.turnin 5781 >>Turn in Of Forgotten Memories
			.accept 5845 >>Accept Of Lost Honor
			.target Tirion Fordring
			.isQuestComplete 5781

		step	
			#completewith Scholomancefragments
			>>Kill |cRXP_ENEMY_Skeletons|r while doing the next quests for 15x |T133724:0|t[|cRXP_LOOT_Skeletal Fragments|r]
			.collect 14619,15
			.isQuestAvailable 964

		step
			.goto Western Plaguelands,49.2,78.6
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marlene Redpath|r
			.turnin 5152 >> Turn in Auntie Marlene
			.target Marlene Redpath
			.accept 5153 >> Accept A Strange Historian

		step
			.goto Western Plaguelands,49.6,76.8
			>>Loot the |cRXP_LOOT_gravestone|r right outside the house
			.complete 5153,1 

		step
			.goto Western Plaguelands,39.5,66.9
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
			.turnin 5153 >> Turn in A Strange Historian
			.target Chromie
			.accept 5154 >> Accept The Annals of Darrowshire

		step
			.goto Western Plaguelands,43.4,69.6
			>>Loot |cRXP_LOOT_books|r inside the Andorhal town hall until you get the correct one
			.complete 5154,1 
			*|cRXP_WARN_The correct book's pages has a lighter shade of grey on BOTH pages and sometimes the correct book won't spawn|r
			*If you're unlucky, you have to keep looting bad tomes until a good one spawns

		step
			#label Scholomancefragments
			.goto Western Plaguelands,39.5,66.8
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
			.turnin 5154 >> Turn in The Annals of Darrowshire
			.target Chromie
			.accept 5210 >> Accept Brother Carlin

		step	
			>>Kill |cRXP_ENEMY_Skeletons|r for 15x |T133724:0|t[|cRXP_LOOT_Skeletal Fragments|r]
			.collect 14619,15
			.isQuestAvailable 964

		step
			.goto Western Plaguelands,26.67,56.33
			.target Apothecary Dithers
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
			.turnin 838 >>Turn in Scholomance
			.accept 964
			.turnin 964	
			.accept 5514

		step
			.goto Eastern Plaguelands,31.86,69.45
			.line Eastern Plaguelands,30.81,69.8,30.78,70.06,30.75,70.43,30.85,70.95,31.02,71.56,31.15,71.98,31.28,72.36,31.47,72.83,31.66,73.29,31.85,73.75,32.18,74.52,32.41,74.48,33.04,74.22,33.42,74.12,33.75,74.03,33.75,74.03,34.12,73.8,34.47,73.46,34.49,73.02,34.34,72.55,34.29,71.99,34.35,71.76,34.52,71.11,34.56,70.71,34.56,70.02,34.54,69.61,34.63,68.94,34.72,68.33,34.77,67.92,34.79,67.37,34.73,66.89,34.6,66.37,34.37,66.18,34.1,66.01,33.71,65.89,33.21,66.12,32.77,66.22,32.28,66.32,31.88,66.35,31.33,66.22,30.98,66.25,30.66,66.27,30.12,66.15,29.79,65.94,29.35,65.99,29.08,66.3,28.86,66.7,28.55,67.26,28.3,67.74,28.04,68.22,27.7,68.75,27.13,69.27,26.62,69.63,26.48,69.0,26.51,68.24,26.73,67.49,27.16,67.6,27.7,67.86,27.97,68.0,28.32,68.17,28.58,68.34,28.9,68.58,29.22,68.83,29.53,69.1,29.93,69.07,30.27,68.92,30.9,68.89,30.88,69.5
			>>Kill |cRXP_ENEMY_Duskwing|r
			.mob Duskwing
			.complete 6135,1	

		step
			.goto Eastern Plaguelands,81.5,59.8
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
			.turnin 5210 >> Turn in Brother Carlin
			.target Carlin Redpath
			.accept 5181 >> Accept Villains of Darrowshire
			.accept 5168 >> Accept Heroes of Darrowshire

		step
			#label LostSymbol
			.goto Eastern Plaguelands,71.30,33.97
			>>Loot the |cRXP_LOOT_Symbol of Lost Honor|r underwater
			.complete 5845,1 
			.isQuestTurnedIn 5781

			step
			.goto Eastern Plaguelands,58.19,32.11
			.line Eastern Plaguelands,54.81,31.84,54.61,31.87,54.39,31.9,54.13,31.94,53.89,31.98,53.5,32.0,53.22,32.01,53.01,32.05,52.72,32.11,52.98,32.05,53.22,32.01,53.63,32.02,53.83,32.03,54.12,32.02,54.47,31.97,54.76,31.88,55.05,31.85,55.32,31.8,55.58,31.76,55.95,31.74,56.28,31.85,56.5,31.93,56.68,31.99,56.88,32.01,57.08,32.04,57.26,32.06,57.55,32.09,57.84,32.13,58.08,32.14,58.27,32.14,58.54,32.14,58.75,32.12,59.03,32.09,59.27,32.06,59.6,32.02,59.83,32.0,60.03,31.98,60.39,31.91,60.67,32.04,61.01,32.27,61.42,32.6,61.8,32.89,62.18,33.13,62.52,33.4,62.77,33.76,63.04,34.02,63.44,34.25,63.73,34.43,64.11,34.65,64.4,34.88,64.16,34.64,63.87,34.35,63.5,34.0,63.1,33.65,62.86,33.5,62.6,33.33,62.31,33.13,61.94,32.88,61.68,32.7,61.35,32.47,61.06,32.26,60.66,31.97,60.32,31.91,60.03,31.95,59.74,32.03,59.35,32.12,59.0,32.21,58.77,32.22,58.54,32.24,58.3,32.27,58.11,32.3,57.82,32.31,57.51,32.19,57.17,32.02,56.96,31.97,56.72,31.94,56.45,31.9,56.07,31.66,55.79,31.75,55.3,31.87
			>>Kill |cRXP_ENEMY_Borelgore|r
			.mob Borelgore
			.complete 6136,1
		
		step
			.goto Eastern Plaguelands,51.03,49.92
			>>Loot the |cRXP_LOOT_Skull of Horgus|r underwater
			.complete 5181,1 

		step
			>>Loot the |cRXP_LOOT_Shattered Sword of Marduk|r
			.goto Eastern Plaguelands,53.9,65.8
			.complete 5181,2 

		step
			.goto Eastern Plaguelands,26.54,74.74
			.target Nathanos Blightcaller
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
			.turnin 6136
			.turnin 6135

		step
			.goto Eastern Plaguelands,7.59,43.57
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
			.turnin 5845 >> Turn in Of Lost Honor
			.target Tirion Fordring
			.accept 5846 >> Accept Of Love and Family

		step
			.goto Western Plaguelands,63.8,57.2
			>>Loot the |cRXP_LOOT_shield|r on the ground, just outside the barn
			.complete 5168,2 

		step
			.goto Western Plaguelands,65.7,75.4
			.target Artist Renfray
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artist Renfray|r
			.turnin 5846 >> Turn in Of Love and Family
			.accept 5848

		step
			.goto Western Plaguelands,42.5,18.9
			>>Loot the |cRXP_LOOT_Libram|r inside the town hall
			>>|cRXP_ENEMY_Warning:|r|cRXP_WARN_ If you die here, it will be a very long corpse run|r
			>>|cRXP_WARN_Looting the Libram takes 5 seconds|r
			.complete 5168,1 

		step
			.goto Eastern Plaguelands,81.5,59.8
			.target Carlin Redpath
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
			.turnin 5168 >> Turn in Heroes of Darrowshire
			.turnin 5181 >> Turn in Villains of Darrowshire
			.accept 5206

		step
			#loop
			.goto Eastern Plaguelands,79.6,56.8,0
			.goto Eastern Plaguelands,76.4,52.6,0
			.goto Eastern Plaguelands,78.6,45.6,0
			.goto Eastern Plaguelands,81.8,42.2,0
			.goto Eastern Plaguelands,84.4,37.8,0
			.goto Eastern Plaguelands,86.8,44.6,0
			.goto Eastern Plaguelands,79.6,56.8,20,0
			.goto Eastern Plaguelands,76.4,52.6,20,0
			.goto Eastern Plaguelands,78.6,45.6,20,0
			.goto Eastern Plaguelands,81.8,42.2,20,0
			.goto Eastern Plaguelands,84.4,37.8,20,0
			.goto Eastern Plaguelands,86.8,44.6,20,0
			>>Kill |cRXP_ENEMY_Scourge Champion|r. Loot them for their |cRXP_LOOT_Fetid Skull|r
			>>They share spawn with the other mobs around, so kill everything if you can't find them
			.mob Scourge Champion
			.use 13156>>Use the |T134095:0|t[Mystic Crystal] to test the Fetid Skull and with a chance get |cRXP_LOOT_Resonating Skull|r
			.complete 5206,1

		step
			.goto Eastern Plaguelands,81.5,59.8
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
			.turnin 5206
			.target Carlin Redpath
			.accept 5941

		step
			.goto Western Plaguelands,39.46,66.76
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
			.turnin 5941
			.target Chromie	
			.accept 5721
			
		step
			.goto Eastern Plaguelands,39.0,91.2
			>>|cRXP_ENEMY_Warning:|r|cRXP_WARN_ This is a very hard quest. Recommended to group up|r
			>>|cRXP_ENEMY_Do not|r |cRXP_WARN_ turn in|r |cRXP_LOOT_The Battle of Darrowshire|r|cRXP_WARN_, as this is used for TBC|r
			.use 15209 >>Use |T133639:0|t[Relic Bundle] at the Darrowshire Town Square to start the event
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joseph Redpath|r after the event
			.complete 5721,1
			.target Joseph Redpath
			.skipgossip

	--- Undercity 

		step
			#completewith next
			.goto Eastern Plaguelands,80.2,57.0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Georgia|r
			.fly Undercity>>Fly to |cFFfa9602Undercity|r
			.target Georgia
			.zoneskip Undercity
			
		step
			.goto Undercity,48.50,71.90
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cuely|r
			.accept 3568 >>Accept Seeping Corruption
			.target Chemist Cuely
		
	--- Tanaris

		step
			#completewith next
			.zone Tanaris >>Travel to |cFFfa9602Tanaris|r
			.zoneskip Tanaris

		step
			.goto Tanaris,50.88,26.96
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
			.turnin 4507 >>Turn in Pawn Captures Queen
			.target Alchemist Pestlezugg

		step
			.goto Tanaris,51.46,28.81
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krinkle Goodsteel|r
			>>|cRXP_WARN_Turning in this quest requires you to pay 15 Gold|r
			.turnin 5514 >>Turn in Mold Rhymes With...
			.accept 5802 >>Accept Fire Plume Forged
			.target Krinkle Goodsteel

		step
			.goto Tanaris,52.47,27.23
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
			.turnin 8924 >>Turn in Hunting for Ectoplasm
			.accept 8925 >>Accept A Portable Power Source
			.target Mux Manascrambler

		step
			.goto Tanaris,52.30,28.92
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
			.bankdeposit 12840,12841 >>Deposit unneeded items and grab the 2 Thorium Bars which are needed in Un'Goro soon
			.bankwithdraw 12359
			.collect 12359,2,5802,1
			.target Gimblethorn

		step
			.goto Tanaris,66.8,24.0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironboot|r
			.turnin 5065
			.accept 4788
			.target Prospector Ironboot	

		step
			.isOnQuest 3912
			#completewith next
			.goto Tanaris,53.99,28.63,20,0
			.cast 14050 >> |cRXP_WARN_Use the|r |T134813:0|t[Videre Elixir] |cRXP_WARN_at the Tanaris graveyard to kill yourself. Then run to|r |cRXP_FRIENDLY_Gaeriyan|r
			.use 11243 
		
		step	
			.isOnQuest 3912
			.goto Tanaris,53.93,23.33
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaeriyan|r
			>>|cRXP_WARN_You must be dead in order to speak to|r |cRXP_FRIENDLY_Gaeriyan|r
			.turnin 3912 >> Turn in Meet at the Grave
			.accept 3913 >> Accept A Grave Situation
			.target Gaeriyan

		step
			.isQuestTurnedIn 3912
			.goto Tanaris,53.815,29.061
			>>Click the |cRXP_PICK_Conspicuous Gravestone|r
			.turnin 3913 >> Turn in A Grave Situation
			.accept 3914 >> Accept Linken's Sword

		step
			.destroy 11243 >> Delete any remaining |T134813:0|t[Videre Elixirs] you have
			.isQuestTurnedIn 3913

	--- Ungoro		

		step
			#completewith next
			.goto Tanaris,51.60,25.50
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
			.fly Un'Goro Crater>>Fly to Un'Goro Crater
			.target Bulkrek Ragefist
			.zoneskip Un'Goro Crater

		step
			.isQuestTurnedIn 3912
			.goto Un'Goro Crater,44.658,8.098
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
			.turnin 3914 >> Turn in Linken's Sword
			.accept 3941 >> Accept A Gnome's Assistance
			.target Linken	

		step
			.isQuestTurnedIn 3912
			.goto Un'Goro Crater,41.918,2.703
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
			.turnin 3941 >> Turn in A Gnome's Assistance
			.timer 25,A Gnome's Assistance RP
			.accept 3942 >> Accept Linken's Memory
			.target J.D. Collie

		step
			#completewith next
			.goto Un'Goro Crater,49.62,47.56,100 >>Travel to the top of the mountain at Fire Plume Ridge

		step
			.goto Un'Goro Crater,49.28,47.04
			.use 14644 >>|cRXP_WARN_Use the|r |T134457:0|t[Skeleton Key Mold] |cRXP_WARN_at the pool of lava to create the|r |cRXP_LOOT_Unfinished Skeleton Key|r
			.complete 5802,1 --Unfinished Skeleton Key (1)

	--- Felwood

		step
			#completewith next
			.goto Un'Goro Crater,45.23,5.82
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
			.fly Felwood >>Fly to |cFFfa9602Felwood|r
			.target Gryfe
			.zoneskip Felwood

		step
			.goto Felwood,34.80,52.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trull|r
			.accept 4521 >>Accept Wild Guardians
			.target Trull Failbane

		step
			#completewith next
			.goto Felwood,34.4,53.8
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakkar|r
			.fly Winterspring>>Fly to Winterspring
			.target Brakkar
			.zoneskip Winterspring

		step
			.goto Winterspring,61.93,38.37
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
			.accept 5054 >> Accept Ursius of the Shardtooth
			.target Storm Shadowhoof

		step
			#loop
			.goto Winterspring,54.39,37.32,0
			.goto Winterspring,47.46,36.84,0
			.goto Winterspring,38.47,38.19,0
			.goto Winterspring,45.14,42.46,0
			.goto Winterspring,54.39,37.32,80,0
			.goto Winterspring,48.13,34.60,80,0
			.goto Winterspring,47.46,36.84,80,0
			.goto Winterspring,44.39,37.72,80,0
			.goto Winterspring,42.23,37.52,80,0
			.goto Winterspring,38.47,38.19,80,0
			.goto Winterspring,37.08,41.15,80,0
			.goto Winterspring,45.14,42.46,80,0
			>>Kill |cRXP_ENEMY_Ragged Owlbeasts|r west of Everlook
			.complete 4521,2 
			.mob Ragged Owlbeast	

		step	
			#completewith next
			.goto Winterspring,60.67,29.81,0
			.goto Winterspring,58.64,34.51,0
			>>Kill |cRXP_ENEMY_Raging Owlbeasts|r
			.complete 4521,1 
			.mob Raging Owlbeast

		step
			#loop
			.goto Winterspring,63.40,27.04,0
			.goto Winterspring,56.62,32.34,70,0
			.goto Winterspring,60.50,33.02,70,0
			.goto Winterspring,62.55,30.83,70,0
			.goto Winterspring,62.43,28.08,70,0
			.goto Winterspring,63.40,27.04,70,0
			.complete 5054,1 
			.mob Ursius

		step
			#loop
			.goto Winterspring,60.58,29.76,0
			.goto Winterspring,60.58,29.76,50,0
			.goto Winterspring,58.82,27.41,70,0
			.goto Winterspring,56.06,27.83,70,0
			.goto Winterspring,55.97,30.25,70,0
			.goto Winterspring,55.10,32.16,70,0
			>>Kill |cRXP_ENEMY_Raging Owlbeasts|r
			.complete 4521,1 
			.mob Raging Owlbeast	

		step
			.goto Winterspring,61.93,38.37
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
			.turnin 5054 >> Turn in Ursius of the Shardtooth
			.accept 5055 >> Accept Brumeran of the Chillwind
			.target Storm Shadowhoof

		step
			#loop
			.goto Winterspring,58.8,63.5,0
			.goto Winterspring,54.7,46.0,60,0
			.goto Winterspring,56.6,52.4,60,0
			.goto Winterspring,60.5,55.6,60,0
			.goto Winterspring,62.4,58.9,60,0
			.goto Winterspring,58.8,63.5,60,0
			>>Kill |cRXP_ENEMY_Brumeran|r
			.complete 5055,1 
			.mob Brumeran	

		step
			.goto Winterspring,61.93,38.37
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
			.turnin 5055 >> Turn in Brumeran of the Chillwind
			.accept 5056 >> Accept Shy-Rotam
			.target Storm Shadowhoof	

		step
			#completewith next
			.goto Winterspring,60.47,36.30
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r
			.fly Felwood>>Fly to Felwood
			.target Yugrek
			.zoneskip Felwood

		step
			.goto Felwood,34.70,52.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trull|r
			.turnin 4521 >> Turn in Wild Guardians
			.accept 4741 >> Accept Wild Guardians
			.target Trull Failbane	

		step
			#completewith next
			.goto Felwood,34.4,53.8
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakkar|r
			.fly Winterspring>>Fly to Winterspring
			.target Brakkar
			.zoneskip Winterspring

		step
			#loop
			.goto Winterspring,64.96,62.68,0
			.goto Winterspring,63.49,59.25,70,0
			.goto Winterspring,65.01,59.77,70,0
			.goto Winterspring,65.30,61.06,70,0
			.goto Winterspring,64.96,62.68,70,0
			>>Kill |cRXP_ENEMY_Moontouched Owlbeasts|r
			>>|cRXP_WARN_They share spawn with|r |cRXP_ENEMY_Berserk Owlbeast|r |cRXP_WARN_and|r |cRXP_ENEMY_Crazed Owlbeast|r|cRXP_WARN_. If necessary, kill them to reset the area|r
			.complete 4741,1 
			.mob Moontouched Owlbeast	

		step
			#completewith next
			.goto Winterspring,60.47,36.30
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r
			.fly Felwood>>Fly to Felwood
			.target Yugrek
			.zoneskip Felwood

		step
			.goto Felwood,34.80,52.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trull|r
			.turnin 4741 >> Turn in Wild Guardians
			.accept 4721 >> Accept Wild Guardians
			.target Trull Failbane	

		step
			#completewith next
			.goto Felwood,34.4,53.8
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakkar|r
			.fly Winterspring>>Fly to Winterspring
			.target Brakkar
			.zoneskip Winterspring

		step
			#completewith next
			#loop
			.goto Winterspring,51.64,11.34,0
			.goto Winterspring,50.54,14.27,50,0
			.goto Winterspring,48.52,12.15,50,0
			.goto Winterspring,49.72,8.84,50,0
			.goto Winterspring,48.54,7.89,50,0
			.goto Winterspring,49.67,7.03,50,0
			.goto Winterspring,51.94,9.31,50,0
			.goto Winterspring,51.64,11.34,50,0
			>>Kill |cRXP_ENEMY_Frostsabers|r. Loot them for |T133298:0|t[|cRXP_LOOT_Sacred Frostsaber Meat|r]
			.collect 12733,1,5056,1 
			.mob Frostsaber Pride Watcher
			.mob Frostsaber Huntress
			.mob Frostsaber Stalker
			.mob Frostsaber Cub
			.mob Frostsaber
			.isQuestTurnedIn 5055

		step
			.goto Winterspring,49.68,9.75
			.use 12733 >>|cRXP_WARN_Place the|r |T133298:0|t[|cRXP_LOOT_Sacred Frostsaber Meat|r] |cRXP_WARN_at the stone|r
			>>Kill |cRXP_ENEMY_Shy-Rotam|r as he appears
			.complete 5056,1 
			.mob Shy-Rotam
			.isQuestTurnedIn 5055	

		step
			#loop
			.goto Winterspring,64.00,22.60,0
			.goto Winterspring,64.00,22.60,50,0
			.goto Winterspring,65.60,23.20,50,0
			.goto Winterspring,67.60,22.60,50,0
			.goto Winterspring,65.60,19.60,50,0
			.goto Winterspring,63.60,16.20,50,0
			.goto Winterspring,65.60,19.60,50,0
			.goto Winterspring,64.00,20.80,50,0
			>>Kill |cRXP_ENEMY_Berserk Owlbeasts|r. Loot them for a |T133298:0|t[|cRXP_LOOT_Blue-feathered Necklace|r]. Do not accept the quest! It is used in |cRXP_WARN_TBC!|r
			>>|cRXP_WARN_They share spawn with|r |cRXP_ENEMY_Moontouched Owlbeast|r |cRXP_WARN_and|r |cRXP_ENEMY_Crazed Owlbeast|r|cRXP_WARN_. If necessary, kill them to reset the area|r
			.complete 4721,1 
			.collect 12558,1,4721,1
			.mob Berserk Owlbeast	

		step
			.goto Winterspring,69.62,38.31
			>>Kill |cRXP_ENEMY_High Chief Winterfall|r. Loot him for his |T133740:0|t[|cRXP_LOOT_Crudely-written Log|r]. Do not accept the quest! It is used in |cRXP_WARN_TBC!|r
			>>|cRXP_ENEMY_High Chief Winterfall|r |cRXP_WARN_has a 5-10 minute respawn time|r
			.complete 5121,1 
			.collect 12842,1,5121,1
			.mob High Chief Winterfall	

		step
			.goto Winterspring,31.30,45.20
			>>|cRXP_LOOT_High Chief Winterfall|r |cRXP_WARN_can be used as an optional questlog quest for TBC. Check /tbcprep to see if you need it|r
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
			.turnin 5121 >>Turn in High Chief Winterfall
			.target Donova Snowden

		step
			.goto Winterspring,61.93,38.37
			>>|cRXP_LOOT_Shy-Rotam|r |cRXP_WARN_can be used as an optional questlog quest for TBC. Check /tbcprep to see if you need it|r
			>>|cRXP_ENEMY_Do not turn in the follow-up|r |cRXP_LOOT_Past Endeavors|r |cRXP_ENEMY_as it is used for the TBC turnin!|r
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
			.turnin 5056 >> Turn in Shy-Rotam
			.target Storm Shadowhoof
		
		step
			#completewith next
			.goto Winterspring,60.47,36.30
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yugrek|r
			.fly Felwood>>Fly to Felwood
			.target Yugrek
			.zoneskip Felwood

		step
			.goto Felwood,34.80,52.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trull|r
			.turnin 4721 >>Turn in Wild Guardians	
			.target Trull Failbane

		step
			.isQuestTurnedIn 3941
			.goto Felwood,51.350,81.511
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
			.turnin 3942 >> Turn in Linken's Memory
			.accept 4084 >> Accept Silver Heart
			.target Eridan Bluewind

		step
			.goto Felwood,46.70,83.30
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess|r
			.accept 4102 >>Accept Cleansing Felwood
			.target Maybess Riverbreeze

		step
			.goto Felwood,51.20,82.10
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
			.turnin 5159 >>Turn in Cleansed Water Returns to Felwood
			.accept 5165 >>Accept Dousing the Flames of Protection
			.target Greta Mosshoof

		step
			.isOnQuest 4084
			#completewith next
			>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood on the way north. Loot them for their |cRXP_LOOT_Silvery Claws|r
			.complete 4084,1 
			.mob Angerclaw Bear
			.mob Angerclaw Mauler
			.mob Felpaw Wolf
			.mob Felpaw Scavenger
			.subzoneskip 1763

		step
			#completewith next
			.goto Felwood,39.4,58.1,20,0
			.goto Felwood,38.3,60.1,20,0
			.goto Felwood,36.2,61.5,30,0
			.goto Felwood,35.3,60.8,30,0
			.goto Felwood,35.367,58.376
			.subzone 1770 >> Travel to |cFFfa9602Shadow Hold|r within |cFFfa9602Jaedenar|r

		step
			>>Click the four |cRXP_PICK_Braziers|r on the ground
			.complete 5165,1 
			.goto Felwood,36.267,56.297
			.complete 5165,4 
			.goto Felwood,36.484,55.183
			.complete 5165,3 
			.goto Felwood,36.732,53.262
			.complete 5165,2 
			.goto Felwood,37.677,52.685	

		step
			#completewith next
			.goto Felwood,35.44,59.1
			.subzone 1763 >> Get back out of |cFFfa9602Shadow Hold|r to |cFFfa9602Jaedenar|r

		step
			.isOnQuest 4084
			#completewith next
			>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood on the way north. Loot them for their |cRXP_LOOT_Silvery Claws|r
			.complete 4084,1 
			.mob Angerclaw Bear
			.mob Angerclaw Mauler
			.mob Felpaw Wolf
			.mob Felpaw Scavenger

		step
			#loop
			.goto Felwood,46.40,24.60,0
			.goto Felwood,49.20,19.80,0
			.goto Felwood,53.00,20.40,0
			.goto Felwood,52.00,24.80,0
			.goto Felwood,49.60,30.00,0
			.goto Felwood,46.40,24.60,60,0
			.goto Felwood,49.20,19.80,60,0
			.goto Felwood,53.00,20.40,60,0
			.goto Felwood,52.00,24.80,60,0
			.goto Felwood,49.60,30.00,60,0
			>>Kill |cRXP_ENEMY_Irontree Stompers|r or |cRXP_ENEMY_Irontree Wanderers|r. Loot them for their |cRXP_LOOT_Irontree Heart|r
			.complete 4084,2 
			.mob Irontree Stomper
			.mob Irontree Wanderer

		step
			#loop
			.goto Felwood,59.2,20.4,0
			.goto Felwood,56.6,17.4,40,0
			.goto Felwood,57.8,19.2,40,0
			.goto Felwood,57.6,21.8,40,0
			.goto Felwood,59.2,20.4,40,0
			>>Kill |cRXP_ENEMY_Warpwood Moss Flayers|r and |cRXP_ENEMY_Warpwood Shredders|r. Loot them for their |cRXP_LOOT_Blood Ambers|r
			.complete 4102,1 
			.mob Warpwood Moss Flayer
			.mob Warpwood Shredder

		step
			#loop
			.goto Felwood,47.6,15.6,0
			.goto Felwood,41.6,24.6,0
			.goto Felwood,39.0,38.4,0
			.goto Felwood,49.6,33.6,0
			.goto Felwood,55.98,23.58,0
			.goto Felwood,47.6,15.6,60,0
			.goto Felwood,41.6,24.6,60,0
			.goto Felwood,39.0,38.4,60,0
			.goto Felwood,49.6,33.6,60,0
			.goto Felwood,55.98,23.58,60,0
			>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood. Loot them for their |cRXP_LOOT_Silvery Claws|r
			.complete 4084,1 
			.isOnQuest 4084
			.mob Angerclaw Bear
			.mob Angerclaw Mauler
			.mob Felpaw Wolf
			.mob Felpaw Scavenger

		step
			.isQuestTurnedIn 3912
			.goto Felwood,51.350,81.511
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
			.turnin 4084 >> Turn in Silver Heart
			.accept 4005 >> Accept Aquementas
			.target Eridan Bluewind

		step
			.goto Felwood,46.60,83.00
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess|r
			.turnin 4102 >>Turn in Cleansing Felwood
			.target Maybess Riverbreeze	

		step
			.goto Felwood,46.60,83.00
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess|r and get your |T134249:0|t[Cenarion Beacon]
			.collect 11511
			.gossip 9529,0
			.skipgossip 9529,1
			.target Maybess Riverbreeze	

		step
			.goto Felwood,51.20,82.10
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta|r
			.turnin 5165 >>Turn in Dousing the Flames of Protection
			.accept 5242 >>Accept A Final Blow
			.target Greta Mosshoof		

		step
			#completewith next
			.goto Felwood,39.4,58.1,20,0
			.goto Felwood,38.3,60.1,20,0
			.goto Felwood,36.2,61.5,30,0
			.goto Felwood,35.3,60.8,30,0
			.goto Felwood,35.367,58.376
			.subzone 1770 >> Travel to |cFFfa9602Shadow Hold|r within |cFFfa9602Jaedenar|r

		step
			.goto Felwood,35.39,58.74,30,0
			.goto Felwood,38.30,50.50,30,0
			.goto Felwood,38.90,46.80
			>>Kill |cRXP_ENEMY_Shadow Lord Fel'dan|r, |cRXP_ENEMY_Moora|r and |cRXP_ENEMY_Salia|r. Loot |cRXP_ENEMY_Shadow Lord Fel'dan|r for his |cRXP_LOOT_Head|r
			.complete 5242,1 
			.mob +Moora
			.complete 5242,2 
			.mob +Salia
			.complete 5242,3 
			.mob +Shadow Lord Felidan	

	--- Azshara

		step
			#completewith next
			.goto Felwood,34.4,53.8
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakkar|r
			.fly Azshara>>Fly to |cFFfa9602Azshara|r
			.target Brakkar
			.zoneskip Azshara

		step
			#completewith next
			.use 10695 >> Open |T132594:0|t[Box of Empty Vials] for the following:
			.collect 10687,1 
			.collect 10688,1 
			.collect 10689,1 
			.collect 10690,1 
			.itemcount 10695,1

		step
			.goto Azshara,47.50,46.20
			.use 10690 >>Swim in the puddle and use the |T132793:0|t[Empty Vial Labeled #4]
			.complete 3568,4 

		step
			.goto Azshara,48.70,48.50
			.use 10689 >>Swim in the puddle and use the |T132793:0|t[Empty Vial Labeled #3]
			.complete 3568,3 

		step
			.goto Azshara,47.80,51.30
			.use 10688 >>Swim in the puddle and use the |T132793:0|t[Empty Vial Labeled #2]
			.complete 3568,2 
			
		step
			.goto Azshara,47.80,60.80
			.use 10687 >>Swim in the puddle and use the |T132793:0|t[Empty Vial Labeled #1]
			.complete 3568,1 

		step
			.goto Azshara,79.2,73.6,5,0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
			.turnin 6804
			.turnin 6805
			.accept 6821
			.target Duke Hydraxis

	--- Back to Burning Steppes

		step
			#completewith next
			.hs >>Now is a good time to either use HS or buy a summon
			.use 6948
			.zone Badlands >>Travel to |cFFfa9602Kargath|r
			.zoneskip Badlands

		step
			#label KargathBRDQuests
			.goto Badlands,3.03,47.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Theodora Mulvadania|r
			.accept 4061 >> Accept The Rise of the Machines
			.target Hierophant Theodora Mulvadania

		step
			#completewith next
			.goto Badlands,3.98,44.76
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorrik|r
			.fly Flame Crest >> Fly to |cFFfa9602Flame Crest|r
			.target Gorrik
			.zoneskip Burning Steppes

		step
			.goto Burning Steppes,65.2,24.0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
			.turnin 4810 >> Turn in Return to Tinkee
			.accept 4734 >> Accept Egg Freezing
			.target Tinkee Steamboil

		step
			#completewith next
			>>Kill |cRXP_ENEMY_War Reavers|r. Loot them for their |cRXP_LOOT_Shards|r
			.complete 4061,1 
			.mob War Reaver	
			.mob Greater Obsidian Elemental

		step
			.goto Burning Steppes,35.38,57.73
			>>Kill |cRXP_ENEMY_Magma Lord Bokk|r. Loot him for his |cRXP_LOOT_Magma Core|r
			.complete 8925,1 --Magma Core (x1)
			.mob Magma Lord Bokk

		step
			#loop
			.goto Burning Steppes,62.74,34.92,0
			.goto Burning Steppes,57.43,36.36,0
			.goto Burning Steppes,53.03,39.25,0
			.goto Burning Steppes,59.19,40.17,0
			.goto Burning Steppes,63.33,43.19,0
			.goto Burning Steppes,67.37,44.38,0
			.goto Burning Steppes,62.74,34.92,60,0
			.goto Burning Steppes,57.43,36.36,60,0
			.goto Burning Steppes,53.03,39.25,60,0
			.goto Burning Steppes,59.19,40.17,60,0
			.goto Burning Steppes,63.33,43.19,60,0
			.goto Burning Steppes,67.37,44.38,60,0
			>>Kill |cRXP_ENEMY_War Reavers|r. Loot them for their |cRXP_LOOT_Shards|r
			.complete 4061,1 
			.mob War Reaver
			.mob Greater Obsidian Elemental

		step
			#completewith next
			.goto Burning Steppes,65.6,24.2
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahgruk|r
			.fly Badlands >> Fly to |cFFfa9602Kargath|r	
			.target Vahgruk
			.zoneskip Badlands

		step
			.goto Badlands,3.03,47.80
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Theodora Mulvadania|r
			.turnin 4061 >> Turn in The Rise of the Machines
			.target Hierophant Theodora Mulvadania
			.isQuestComplete 4061
			.accept 4062 >> Accept The Rise of the Machines

		step
			.goto Badlands,25.95,44.86
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
			.turnin 4062 >> Turn in The Rise of the Machines
			.accept 4063 >> Accept The Rise of the Machines
			.target Lotwil Veriatus
			.isQuestTurnedIn 4061

	--- Swamp of Sorrows

		step
			#completewith next
			.goto Badlands,3.98,44.76
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorrik|r
			.fly Swamp of Sorrows >> Fly to |cFFfa9602Swamp of Sorrows|r
			.zoneskip Swamp of Sorrows
			.target Gorrik

		step
			.goto Swamp of Sorrows,34.3,66.1
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
			.accept 2784 >> Accept Fall From Grace
			.target Fallen Hero of the Horde

		step
			.abandon 5511 >> Abandon The Key to Scholomance
			.isOnQuest 5511

		step
			>>Listen to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r tell his tale
			.complete 2784,1
			.target Fallen Hero of the Horde
			.skipgossip

		step
			.goto Swamp of Sorrows,34.3,66.1
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
			.turnin 2784 >> Turn in Fall From Grace
			.accept 2621 >> Accept The Disgraced One
			.target Fallen Hero of the Horde

		step
			.goto Swamp of Sorrows,47.8,54.9
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r in Stonard
			.turnin 2621 >> Turn in The Disgraced One
			.accept 2622 >> Accept The Missing Orders
			.target Dispatch Commander Ruag

		step
			.goto Swamp of Sorrows,45.0,57.4
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bengor|r
			.turnin 2622 >> Turn in The Missing Orders
			.accept 2623 >> Accept The Swamp-Talker
			.target Bengor

		step
			.goto Swamp of Sorrows,66.08,77.67,60,0
			.goto Swamp of Sorrows,62.90,87.40
			>>Kill |cRXP_ENEMY_Swamp Talker|r. Loot him for the |cRXP_LOOT_Warchief's Orders|r
			.complete 2623,1 
			.unitscan Swamp Talker

		step
			.goto Swamp of Sorrows,34.30,66.10
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
			.turnin 2623 >>Turn in The Swamp Talker
			.accept 2801 >>Accept A Tale of Sorrow
			.target Fallen Hero of the Horde

		step
			.goto Swamp of Sorrows,34.30,66.00
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r and go through the whole dialogue
			.complete 2801,1 
			.skipgossip 7572,1,1,1	

		step
			.goto Swamp of Sorrows,34.3,66.1
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
			.turnin 2801 >> Turn in A Tale of Sorrow
			.accept 2681 >> Accept The Stones That Bind Us
			.target Fallen Hero of the Horde
			.skipgossip

		step
			#loop
			>>Find a |cRXP_ENEMY_Servant|r and a small dark floating |cRXP_LOOT_crystal|r nearby
			>>Pull the |cRXP_ENEMY_Servant|r close to the |cRXP_LOOT_crystal|r and bring them to around 5% HP, then right-click the |cRXP_LOOT_crystal|r
			.goto Blasted Lands,43.38,10.64,0
			.goto Blasted Lands,41.22,14.43,0
			.goto Blasted Lands,43.3,40.73,0
			.goto Blasted Lands,40.99,40.09,0
			.goto Blasted Lands,38.24,33.88,0
			.goto Blasted Lands,48.33,42.93,0
			.goto Blasted Lands,51.72,57.12,0
			.goto Blasted Lands,53.27,58.82,0
			.goto Blasted Lands,54.09,52.49,0
			.goto Blasted Lands,55.05,48.55,0
			.goto Blasted Lands,61.79,51.17,0
			.goto Blasted Lands,63.09,55.73,0
			.goto Blasted Lands,62.84,56.81,0
			.goto Blasted Lands,64.28,46.82,0
			.goto Blasted Lands,63.33,40.83,0
			.goto Blasted Lands,64.37,34.25,0
			.goto Blasted Lands,43.38,10.64,25,0
			.goto Blasted Lands,41.22,14.43,25,0
			.goto Blasted Lands,43.3,40.73,25,0
			.goto Blasted Lands,40.99,40.09,25,0
			.goto Blasted Lands,38.24,33.88,25,0
			.goto Blasted Lands,48.33,42.93,25,0
			.goto Blasted Lands,51.72,57.12,25,0
			.goto Blasted Lands,53.27,58.82,25,0
			.goto Blasted Lands,54.09,52.49,25,0
			.goto Blasted Lands,55.05,48.55,25,0
			.goto Blasted Lands,61.79,51.17,25,0
			.goto Blasted Lands,63.09,55.73,25,0
			.goto Blasted Lands,62.84,56.81,25,0
			.goto Blasted Lands,64.28,46.82,25,0
			.goto Blasted Lands,63.33,40.83,25,0
			.goto Blasted Lands,64.37,34.25,25,0
			.complete 2681,1
			.complete 2681,2
			.complete 2681,3
			.complete 2681,4
			.mob Servant of Grol
			.mob Servant of Allistarj
			.mob Servant of Sevine
			.mob Servant of Razelikh

		step
			>>|cRXP_LOOT_The Stones That Bind Us|r |cRXP_WARN_can be used as an optional questlog quest for TBC. Check /tbcprep to see if you need it|r
			.goto Swamp of Sorrows,34.3,66.1
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
			.turnin 2681 >> Turn in The Stones That Bind Us
			.target Fallen Hero of the Horde

	--- Tanaris

		step
			#completewith next
			.subzone 976 >>Travel to Gadgetzan in |cFFfa9602Tanaris|r
			.zoneskip Tanaris

		step
			.goto Tanaris,52.47,27.23
			>>|cRXP_ENEMY_Warning:|r |cRXP_WARN_Do not pick up or complete the followup|r |cRXP_LOOT_A Shifty Merchant|r|cRXP_WARN_, as this is used for TBC|r
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
			.turnin 8925 >>Turn in A Portable Power Source
			.target Mux Manascrambler			

		step
			#completewith next
			.use 11617 >> Open |T133647:0|t[Eridan's Supplies] for the following:
			.collect 11173,1 
			.collect 11172,11 
			.collect 11169,1 
			.itemcount 11617,1			

		step
			.isQuestTurnedIn 4084
			.goto Tanaris,68.50,41.40,20,0
			.goto Tanaris,70.43,49.93
			.use 11169 >>Summon |cRXP_ENEMY_Aquementas|r using the |T133742:0|t[Book of Aquor] and kill him
			>>|cRXP_WARN_Stay within the stone circle after you summoned him until the quest completes!|r
			.complete 4005,1 
			.mob Aquementas	

	--- Ungoro

		step
			#completewith next
			.goto Tanaris,51.60,25.50
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
			.fly Un'Goro Crater>>Fly to Un'Goro Crater
			.target Bulkrek Ragefist
			.zoneskip Un'Goro Crater

		step
			.isQuestTurnedIn 4084
			.goto Un'Goro Crater,41.918,2.703
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
			.turnin 4005 >> Turn in Aquementas

		step	
			.destroy 11169 >>Destroy |T133742:0|t[Book of Aquor]

	--- Undercity2

		step
			#completewith next
			.zone Undercity >>Travel to |cFFfa9602Undercity|r
			.zoneskip Undercity
			
		step
			.goto Undercity,48.50,71.90
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cuely|r
			.turnin 3568
			.accept 3569
			.target Chemist Cuely

		step
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thersa Windsong|r
			.turnin 3569 >>Turn in Seeping Corruption
			.target Thersa Windsong
			.goto Undercity,49.03,70.81

		step
			.goto Undercity,67.62,44.16
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Overseer Bauhaus|r
			.turnin 5023 >>Turn in Better Late Than Never
			.target Royal Overseer Bauhaus
			.accept 5049 >>Accept The Jeremiah Blues	

		step
			>>Under the staircase
			.goto Undercity,67.62,44.16
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeremiah Payson|r
			.turnin 5049 >>Turn in The Jeremiah Blues
			.target Jeremiah Payson
			.accept 5050 >>Accept Good Luck Charm	

	--- Western Plaguelands

		step
			#completewith next
			.zone Western Plaguelands >>Travel to |cFFfa9602Western Plaguelands|r
			.zoneskip Western Plaguelands

		step
			.goto Western Plaguelands,26.67,56.33
			.target Apothecary Dithers
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
			.turnin 5802
			.accept 5804

		step
			.goto Western Plaguelands,26.51,56.02
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
			.target High Executor Derrington
			.accept 105

		step
			>>Go to the top floor of the house. Talk to Janice
			.goto Western Plaguelands,38.401,54.053
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Felstone|r
			.turnin 5050 >>Turn in Good Luck Charm
			.target Janice Felstone

		step
			.goto Western Plaguelands,46.5,69.5	
			>>Kill |cRXP_ENEMY_Alas, Andorhal|r. Open the |cRXP_PICK_Araj's Phylactery|r for |cRXP_LOOT_Araj's Phylactery Shard|r and |cRXP_LOOT_Araj's Scarab|r
			.complete 105,1
			.complete 5804,1

		step
			>>|cRXP_ENEMY_Warning:|r |cRXP_WARN_Do not pick up or complete the followup|r |cRXP_LOOT_The Key to Scholomance|r|cRXP_WARN_, as this is used for TBC|r
			.goto Western Plaguelands,26.67,56.33
			.target Apothecary Dithers
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
			.turnin 5804

		step	
			>>|cRXP_LOOT_Alas, Andorhal|r |cRXP_WARN_can be used as an optional questlog quest for TBC. Check /tbcprep to see if you need it|r
			.goto Western Plaguelands,26.51,56.02
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
			.target High Executor Derrington
			.turnin 105
		
]])