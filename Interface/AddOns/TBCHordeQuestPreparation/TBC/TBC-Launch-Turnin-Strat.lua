if RXPGuides == nil then
	return
end

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 4 - TBC Launch - Turnin
#name 1-Strat Route Turnin
#displayname Strat Route Turnin
#next Dungeon Grind to 70

--- Beginning / Note

	step
		#completewith next
		+ |cRXP_ENEMY_Go through the following steps thoroughly and make sure you have all of them ready!|r
		>>|cRXP_WARN_Otherwise we cannot guarantee a flawless turnin process|r

	step
		#sticky
		>>|cRXP_WARN_Always mandatory:|r
		+Make sure your |cRXP_ENEMY_Hearthstone|r is set to |cFFfa9602Light's Hope Chapel|r
		+Make sure you have |cRXP_ENEMY_at least 40 free bagslots|r

	step
		>>|cRXP_WARN_If you are using our companion feature:|r
		+Make sure that |cRXP_ENEMY_all BoE items are sent and ready|r in your |cFFfa9602mailbox|r
		>>Send all items that are not soulbound from another character to this one and keep them in the mailbox
		+Open the companion (/tbc companion) and |cRXP_ENEMY_prepare the initial items|r from step 1

--- Kargath

	step	
		#completewith Kargathlast
		.fly Badlands >> Travel to |cFFfa9602Kargath|r
		.zoneskip Badlands

	step
		.goto Badlands,25.8,45.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
		.turnin -4063
		.target Lotwil Veriatus		

	step
		.goto Badlands,3.0,47.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
		.turnin -4768
		.turnin -4134
		.target Shadowmage Vivian Lagrave

	step
		.goto Badlands,5.8,47.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Goretooth|r
		.turnin -4132
		.turnin -4903
		.target Warlord Goretooth

	step
		.goto Badlands,5.8,47.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Goretooth|r
		.accept 4941
		.target Warlord Goretooth
		.isQuestTurnedIn 4903	

	step
		#label Kargathlast
		.goto Badlands,5.8,47.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galamav the Marksman|r. He is up on the Tower.
		.turnin -4724
		.target Galamav the Marksman

--- Flame Crest, Burning Steppes

	step
		#completewith BurningLast
		.goto Badlands,3.98,44.76
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorrik|r
		.fly Flame Crest >> Fly to |cFFfa9602Flame Crest|r
		.target Gorrik
		.zoneskip Burning Steppes
				
	step
		.goto Burning Steppes,65.2,24.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
		.turnin -4735
		.target Tinkee Steamboil

	step
		.goto Burning Steppes,65.2,24.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
		.accept 5522
		.target Tinkee Steamboil	
		.isQuestTurnedIn 4735
		
	step
		.goto Burning Steppes,65.0,23.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
		.turnin -4866	
		.target Ragged John	
		
	step
		.goto Burning Steppes,65.2,23.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
		.turnin -4123	
		.target Maxwort Uberglint		
		
	step
		.goto Burning Steppes,65.9,21.9
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kibler|r
		.turnin -4729	
		.turnin -4862
		.target Kibler

	step
		.goto Burning Steppes,95.061,31.563
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
		.itemcount 10575,1
		.accept 4022
		.turnin 4022
		.target Cyrus Therepentous
		.isQuestAvailable 4022
		.skipgossip			

	step
		#label BurningLast
		.goto Burning Steppes,95.061,31.563
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
		.itemcount 10575,1
		.accept 4023
		.turnin 4023
		.target Cyrus Therepentous
		.isQuestAvailable 4023
		.skipgossip	

--- Silithus		

	step
		#completewith Silithuslast
		.zone Silithus >> Get summon to |cFFfa9602Silithus|r
		.zoneskip Silithus

	step
		.goto Silithus,81.87,18.93
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo|r
		.accept 1126
		.target Layo Starstrike	

	step
		.goto Silithus,51.74,37.91
		+Open your |cRXP_PICK_Mailbox|r and collect your items via "/tbc companion"
		>>Once done, or when you picked up your items yourself, complete this step manually

	step
		.goto Silithus,51.34,38.2
		>>Click the |cRXP_PICK_Wanted Poster|r
		.accept 8283

	step
		.goto Silithus,51.9,39.1
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calandrath|r
		.target Calandrath
		.accept 8307
		.skill cooking,<285,1

	step
		.goto Silithus,67,69.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
		.turnin -8279
		.accept 8287
		.target Hermit Ortell	

	step
		.goto Silithus,67,69.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
		.accept 8323
		.turnin 8323
		.target Hermit Ortell	
		.itemcount 20404,10	

	step
		#completewith RutgarTurnin
		.use 20461 >> Click |T133463:0|t[Brann Bronzebeard's Lost Letter] and accept |cRXP_LOOT_Brann Bronzebeard's Lost Letter|r
		.accept 8308
		.itemcount 20461,1

	step
		.goto Silithus,62.7,75.1,20,0
		.goto Silithus,53.2,88.1,20,0
		.goto Silithus,40.80,88.80
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frankal|r
		.turnin -8310
		.target Frankal Stonebridge

	step
		#label RutgarTurnin
		.goto Silithus,41.3,88.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar|r
		.turnin -8308
		.turnin -8309
		.accept 8314
		.target Rutgar Glyphshaper
		
	step
		.goto Silithus,45.00,92.20
		>>Kill |cRXP_ENEMY_Deathclasp|r an loot him for his |cRXP_LOOT_Pincer|r
		>>|cRXP_WARN_Has a short 2 min respawn timer. The quest is worth ~4½ minutes of SlavePens|r
		.complete 8283,1 
		.unitscan Deathclasp
		.isOnQuest 8283

	step	
		#label TwilightCook2
		.goto Silithus,38.0,45.3,5,0
		>>Interact with |cRXP_PICK_Sandy Cookbook|r
		.skipgossip
		.turnin -8307
		.accept 8313
		.skill cooking,<285,1	

	step	
		.use 21220
		.accept 8791
		.itemcount 21220,1

	step	
		.use 21220
		.goto Silithus,49.2,34.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r	
		.turnin -8791
		.turnin -8306
		.turnin -8287
		.target Commander Mar'alith

	step
		.goto Silithus,49.45,36.44
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
		.turnin -8288
		.target Baristolth of the Shifting Sands	

	step
		.goto Silithus,49.45,36.44
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
		.accept 8301
		.turnin 8301
		.target Baristolth of the Shifting Sands	
		.itemcount 20384,200
		.isQuestTurnedIn 8288

	step	
		.goto Silithus,48.6,37.9
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huum Wildmane|r	
		.turnin -8321
		.accept 8343
		.accept 8331
		.target Huum Wildmane

	step	
		.goto Silithus,51.0,38.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Haro|r	
		.accept 8711 << Paladin
		.turnin 8711 << Paladin
		.accept 8709 << Rogue
		.turnin 8709 << Rogue
		.accept 8706 << Shaman
		.turnin 8706 << Shaman
		.accept 8712 << Hunter
		.turnin 8712 << Hunter
		.accept 8558 << Warrior
		.turnin 8558 << Warrior
		.target Warden Haro
		.itemcount 20886,1
		.reputation 609,exalted,<0,1 

	step	
		.goto Silithus,51.0,38.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Haro|r	
		.accept 8707 << Mage
		.turnin 8707 << Mage
		.accept 8705 << Priest
		.turnin 8705 << Priest
		.accept 8710 << Warlock
		.turnin 8710 << Warlock
		.accept 8708 << Druid
		.turnin 8708 << Druid
		.target Warden Haro
		.itemcount 20890,1
		.reputation 609,exalted,<0,1 		

	step
		.goto Silithus,51.9,39.1
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calandrath|r
		.target Calandrath
		.turnin -8313	

	step	
		.goto Silithus,51.8,39.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calandrath|r	
		.accept 8317
		.turnin 8317
		.itemcount 20452,10
		.skill cooking,<285,1
		.target Calandrath
		.isQuestTurnedIn 8313


	step	
		.goto Silithus,51.8,39.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keyl Swiftclaw|r	
		.accept 8691 << Mage
		.turnin 8691 << Mage
		.accept 8693 << Rogue
		.turnin 8693 << Rogue
		.accept 8689 << Priest
		.turnin 8689 << Priest
		.accept 8557 << Warrior
		.turnin 8557 << Warrior
		.target Keyl Swiftclaw
		.itemcount 20885,1
		.reputation 609,revered,<0,1 	

	step	
		.goto Silithus,51.8,39.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keyl Swiftclaw|r	
		.accept 8695 << Paladin
		.turnin 8695 << Paladin
		.accept 8690 << Shaman
		.turnin 8690 << Shaman
		.accept 8694 << Warlock
		.turnin 8694 << Warlock
		.accept 8692 << Druid
		.turnin 8692 << Druid
		.accept 8696 << Hunter
		.turnin 8696 << Hunter
		.target Keyl Swiftclaw
		.itemcount 20889,1
		.reputation 609,revered,<0,1 
		
	step	
		.goto Silithus,52.0,39.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirk Thunderwood|r	
		.turnin -9023	
		.target Dirk Thunderwood

	step	
		.goto Silithus,51.8,38.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurel Goldleaf|r	
		.turnin -8343
		.turnin -8331
		.target Aurel Goldleaf	
					
	step	
		.goto Silithus,51.8,38.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurel Goldleaf|r	
		.accept 8341
		.turnin 8341
		.target Aurel Goldleaf	
		.reputation 609,revered,<0,1
		.itemcount 14344,5
		.itemcount 20514,3

	step	
		.goto Silithus,51.8,38.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurel Goldleaf|r	
		.accept 8332
		.turnin 8332
		.target Aurel Goldleaf	
		.reputation 609,friendly,<0,1
		.itemcount 14344,1
		.itemcount 20513,3

	step	
		.goto Silithus,51.8,38.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurel Goldleaf|r	
		.accept 9248
		.turnin 9248
		.target Aurel Goldleaf	
		.reputation 609,honored,<0,1
		.itemcount 20515,1	

	step	
		.goto Silithus,51.8,38.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurel Goldleaf|r	
		.accept 8351
		.target Aurel Goldleaf	
		.isQuestTurnedIn 8341

	step	
		.goto Silithus,51.8,38.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurel Goldleaf|r	
		.accept 8349
		.target Aurel Goldleaf	
		.isQuestTurnedIn 8332

	step	
		.goto Silithus,52.0,38.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Yessendra|r	
		.accept 8701 << Rogue
		.turnin 8701 << Rogue
		.accept 8697 << Priest
		.turnin 8697 << Priest
		.accept 8702 << Warlock
		.turnin 8702 << Warlock
		.accept 8704 << Hunter
		.turnin 8704 << Hunter
		.target Windcaller Yessendra
		.itemcount 20888,1
		.reputation 609,honored,<0,1 

	step	
		.goto Silithus,52.0,38.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Yessendra|r	
		.accept 8703 << Paladin
		.turnin 8703 << Paladin
		.accept 8699 << Mage
		.turnin 8699 << Mage
		.accept 8698 << Shaman
		.turnin 8698 << Shaman
		.accept 8700 << Druid
		.turnin 8700 << Druid
		.accept 8556 << Warrior
		.turnin 8555 << Warrior
		.target Windcaller Yessendra
		.itemcount 20884,1
		.reputation 609,honored,<0,1 

	step	
		.goto Silithus,48.58,37.78
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r	
		.accept 8318
		.turnin 8318
		.target Bor Wildmane	
		.itemcount 20404,10	

	step	
		.goto Silithus,48.58,37.78
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r	
		.turnin -8349
		.turnin -8351
		.target Bor Wildmane		

	step	
		.goto Silithus,48.58,37.78
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r	
		.accept 8361
		.turnin 8361
		.target Bor Wildmane	
		.itemcount 20513,1
		.reputation 609,honored,<0,1 	

	step	
		.goto Silithus,48.58,37.78
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r	
		.accept 8348
		.turnin 8348
		.target Bor Wildmane	
		.itemcount 20514,1
		.reputation 609,revered,<0,1 	

	step	
		.goto Silithus,48.58,37.78
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r	
		.accept 8352
		.turnin 8352
		.target Bor Wildmane	
		.itemcount 20515,1
		.reputation 609,revered,<0,1 		

	step
		.goto Silithus,49.7,37.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
		.turnin -8314
		.target Geologist Larksbane

	step
		.goto Silithus,49.7,37.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
		.accept 8315
		.target Geologist Larksbane		
		.isQuestTurnedIn 8314

	step
		.goto Silithus,48,56
		.use 15875 >>Once you get close to |cFFfa9602Bones of Grakkarond|r use the |T136192:0|t[Glyphs of Calling] to start the event
		>>Kill |cRXP_ENEMY_Emissary Roman'khan|r and loot him for |cRXP_LOOT_Crystal Unlocking Mechanism|r
		.complete -8315,1	
		.mob Emissary Roman'khan

	step
		.goto Silithus,49.7,37.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
		.turnin -8315
		.target Geologist Larksbane		
		.isQuestTurnedIn 8314

	step	
		.goto Silithus,49.7,37.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
		.accept 8376 << Paladin
		.turnin 8376 << Paladin
		.accept 8381 << Mage
		.turnin 8381 << Mage
		.accept 8378 << Rogue
		.turnin 8378 << Rogue
		.accept 8379 << Priest
		.turnin 8379 << Priest
		.accept 8380 << Shaman
		.turnin 8380 << Shaman
		.accept 8381 << Warlock
		.turnin 8381 << Warlock
		.accept 8382 << Druid
		.turnin 8382 << Druid
		.accept 8377 << Hunter
		.turnin 8377 << Hunter
		.accept 8316 << Warrior
		.turnin 8316 << Warrior
		.target Geologist Larksbane		
		.isQuestTurnedIn 8315

	step	
		.goto Silithus,50.8,33.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vish Kozus|r	
		.turnin -8283
		.target Vish Kozus

	step
		.goto Silithus,81.87,18.93
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo|r
		.turnin -1126
		.target Layo Starstrike	

	step
		#label Silithuslast
		.goto Silithus,81.87,18.93
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo|r
		.accept 6844
		.target Layo Starstrike	
		.isQuestTurnedIn 1126	

--- Un'Goro

	step
		#completewith Ungorolast
		.zone Un'Goro Crater >>Travel to |cFFfa9602Un'Goro Crater|r
		.zoneskip Un'Goro Crater

	step
		.goto Silithus,86.1,12.0,20,0
		.goto Un'Goro Crater,30.0,10.7,20,0
		.goto Un'Goro Crater,29.6,14.7,20,0
		.goto Un'Goro Crater,33.3,21.3,20,0
		.goto Un'Goro Crater,36.6,20.4,20,0
		.goto Un'Goro Crater,42.5,16.0,20,0
		.goto Un'Goro Crater,43.2,12.9,20,0
		.goto Un'Goro Crater,45.53,8.72
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larion|r
		.accept 4148
		.turnin 4148
		.target Larion
		.itemcount 11315,1

	step
		.goto Un'Goro Crater,41.918,2.703
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
		.accept 4284
		.turnin 4284
		.target J.D. Collie
		.itemcount 11186,7
		.itemcount 11188,7
		.itemcount 11185,7
		.itemcount 11184,7

	step
		.goto Un'Goro Crater,41.918,2.703
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
		.accept 4285
		.accept 4288
		.target J.D. Collie	
		.isQuestTurnedIn 4284	

	step
		.goto Un'Goro Crater,41.918,2.703
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
		.accept 3961
		.target J.D. Collie
		.isQuestTurnedIn 4005	

	step
		.goto Un'Goro Crater,44.70,8.10
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
		.turnin -3961
		.accept 3962
		.target Linken
		.isQuestTurnedIn 4005

	step
		.goto Un'Goro Crater,43.61,8.50
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle|r
		.accept 4492
		.target Spraggle Frock

	step
		.use 11116 >> Click |T133743:0|t[A Mangled Journal] and accept |cRXP_LOOT_Williden's Journal|r
		.accept 3884
		.itemcount 11116,1

	step
		.goto Un'Goro Crater,43.947,7.137
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
		.turnin -3884
		.target Williden Marshal		

	step
		.goto Un'Goro Crater,56.49,12.44
		>>Click the |cRXP_PICK_Northern Crystal Pylon|r
		.complete 4285,1 
		.isOnQuest 4285

	step	
		.goto Un'Goro Crater,48.3,20.9,20,0
		.goto Un'Goro Crater,44.0,34.4,20,0
		.goto Un'Goro Crater,43.5,34.6,20,0
		.goto Un'Goro Crater,39.1,42.4,20,0
		.goto Un'Goro Crater,32.0,48.0,20,0
		.goto Un'Goro Crater,30.94,50.44
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
		.accept 974
		.target Krakle

	step
		.goto Un'Goro Crater,23.87,59.21
		>>Click the |cRXP_PICK_Western Crsytal Pylon|r
		.complete 4288,1
		.isOnQuest 4288
		
	step
		#completewith next
		.goto Un'Goro Crater,26.5,59.5,15,0
		.goto Un'Goro Crater,28.7,60.3,15,0
		.goto Un'Goro Crater,32.5,60.5,15,0
		.goto Un'Goro Crater,37.1,59.3,15,0
		.goto Un'Goro Crater,44.7,55.6,15,0
		.goto Un'Goro Crater,48.9,53.8,15,0
		.goto Un'Goro Crater,50.0,52.9,15,0
		.goto Un'Goro Crater,52.5,51,0,15,0
		.goto Un'Goro Crater,51.90,49.85 >>Travel to |cFFfa9602Fire Plume Ridge|r

	step
		.goto Un'Goro Crater,51.90,49.85
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ringo|r
		.turnin -4492
		.target Ringo		

	step
		#completewith next
		.goto Un'Goro Crater,52.6,51.4,15,0
		.goto Un'Goro Crater,53.0,50.0,15,0
		.goto Un'Goro Crater,52.3,47.2,15,0
		.goto Un'Goro Crater,52.7,45.7,15,0
		.goto Un'Goro Crater,51.6,45.9,15,0
		.goto Un'Goro Crater,51.3,47.4,15,0
		.goto Un'Goro Crater,49.7,45.8 >>Travel to the top of the |cFFfa9602Fire Plume Ridge|r	
		
	step	
		.goto Un'Goro Crater,49.401,49.305
		.cast 14247 >>|cRXP_WARN_Equip the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_in your off-hand|r
		.use 11522 >>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura|r
		>>Kill |cRXP_ENEMY_Blazerunner|r
		.complete 3962,1
		.mob Blazerunner
		.isOnQuest 3962

	step	
		.goto Un'Goro Crater,50.279,49.973
		>>Open the |cRXP_PICK_Ornate Chest|r. Loot it for the |cRXP_LOOT_Golden Flame|r
		.complete 3962,2 
		.isOnQuest 3962

	step
		.goto Un'Goro Crater,49.6,45.7
		.use 12472 >>|cRXP_WARN_Climb up to the top of the volcano, then use|r |T132995:0|t[Krakle's Thermometer]
		.complete 974,1 
		.isOnQuest 974

	step	
		.goto Un'Goro Crater,48.1,47.7,20,0
		.goto Un'Goro Crater,46.7,46.8,20,0
		.goto Un'Goro Crater,31.2,48.0,20,0
		.goto Un'Goro Crater,30.94,50.44
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
		.turnin -974
		.accept 980
		.target Krakle
		
	step
		.goto Un'Goro Crater,43.4,36.4,15,0
		.goto Un'Goro Crater,44.1,36.2,15,0
		.goto Un'Goro Crater,44.70,8.10
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
		.turnin -3962
		.target Linken

	step
		#label Ungorolast
		.goto Un'Goro Crater,41.918,2.703
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
		.turnin -4285
		.turnin -4288
		.target J.D. Collie			

--- Tanaris

	step
		#completewith Tanarislast
		.goto Un'Goro Crater,45.23,5.82
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
		.fly Tanaris >>Fly to |cFFfa9602Tanaris|r
		.target Gryfe
		.zoneskip Tanaris

	step
		.goto Tanaris,52.32,27.81
		+Open your |cRXP_PICK_Mailbox|r and collect your items via "/tbc companion"
		>>Once done, or when you picked up your items yourself, complete this step manually

	step
		.goto Tanaris,52.30,28.92
		+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r and collect your items via "/tbc companion"
		>>Once done, or when you picked up your items yourself, complete this step manually
		.target Gimblethorn
		
	step
		.goto Tanaris,52.47,27.23
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
		.accept 8928
		.turnin 8928
		.target Mux Manascrambler
		.isQuestTurnedIn 8925
		.itemcount 21939,1

	step
		.goto Tanaris,52.47,27.23
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mux Manascrambler|r
		.accept 8978
		.target Mux Manascrambler
		.isQuestTurnedIn 8928	
		
	step
		.goto Tanaris,50.90,27.00
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pestlezugg|r
		.accept 4509
		.target Alchemist Pestlezugg	
		.isQuestTurnedIn 4507

	step
		.goto Tanaris,66.8,24.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironboot|r
		.turnin -4788
		.target Prospector Ironboot

	step
		.goto Tanaris,66.8,24.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironboot|r
		.accept 8181
		.target Prospector Ironboot
		.isQuestTurnedIn 4788		

	step	
		.goto Tanaris,67.0,22.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
		>>|cRXP_WARN_This starts a 1:30-5min respawn, so try to have everyone turn this in at the same time|r
		.turnin -8181
		.target Yeh'kinya

	step	
		.goto Tanaris,67.0,22.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
		.accept 8182
		.target Yeh'kinya
		.isQuestTurnedIn 8181
		
	step
		#completewith Tanarislast
		.goto Tanaris,64.2,51.4
		>>Travel to |cFFfa9602The Caverns of Time|r	
	
	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin -8802
		.target Anachronos	

	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turninmultiple 8757,8752,8747
		>>Choose one of the available quests depending on your needs:
		>>Path of the Conquerer - Agility/Hit
		>>Path of the Invoker - Spelldmg/Healing
		>>Path of the Protector - Defensive
		.target Anachronos
		.reputation 910,neutral,<0,1 

	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8758
		.target Anachronos
		.isQuestTurnedIn 8757
		.reputation 910,friendly,<0,1 

	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8759
		.target Anachronos
		.isQuestTurnedIn 8757
		.reputation 910,honored,<0,1 		

	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8760
		.target Anachronos
		.isQuestTurnedIn 8757
		.reputation 910,revered,<0,1 	
		
	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8761
		.target Anachronos
		.isQuestTurnedIn 8757
		.reputation 910,exalted,<0,1 
		
	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8753
		.target Anachronos
		.isQuestTurnedIn 8752
		.reputation 910,friendly,<0,1 

	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8754
		.target Anachronos
		.isQuestTurnedIn 8752
		.reputation 910,honored,<0,1 		

	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8755
		.target Anachronos
		.isQuestTurnedIn 8752
		.reputation 910,revered,<0,1 	
		
	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8756
		.target Anachronos
		.isQuestTurnedIn 8752
		.reputation 910,exalted,<0,1 
		
	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8748
		.target Anachronos
		.isQuestTurnedIn 8747
		.reputation 910,friendly,<0,1 

	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8749
		.target Anachronos
		.isQuestTurnedIn 8747
		.reputation 910,honored,<0,1 		

	step
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8750
		.target Anachronos
		.isQuestTurnedIn 8747
		.reputation 910,revered,<0,1 	
		
	step
		#label Tanarislast
		.goto Tanaris,64.2,51.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
		.turnin 8751
		.target Anachronos
		.isQuestTurnedIn 8747
		.reputation 910,exalted,<0,1 		

--- Winterspring

	step
		#completewith Winterspringlast
		.zone Winterspring >> Get summon to |cFFfa9602Winterspring|r
		.zoneskip Winterspring

	step
		.goto Winterspring,61.93,38.37
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm Shadowhoof|r
		.turnin -5056
		.accept 5057
		.target Storm Shadowhoof		

	step
		.goto Winterspring,61.93,38.37
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm Shadowhoof|r
		.turnin -5057
		.target Storm Shadowhoof		

	step
		.goto Winterspring,61.919,38.298
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
		.turnin -969
		.target Witch Doctor Mau'ari

	step
		.goto Winterspring,61.35,38.97
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregor Greystone|r
		.accept 6029
		.accept 6030
		.target Gregor Greystone

	step
		.goto Winterspring,61.11,38.44
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harlo Wigglesworth|r
		.accept 6605
		.target Harlo Wigglesworth

	step
		.goto Winterspring,60.88,37.61
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
		.turnin -5163
		.target Umi Rumplesnicker

	step
		#completewith next
		.use 12842 >>Click |T133740:0|t[Crudely-written Log] and accept |cRXP_LOOT_The Final Piece|r
		.accept 5123
		.itemcount 12842,1

	step
		.goto Winterspring,31.27,45.16
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
		.turnin 5123
		.target Donova Snowden
		.itemcount 12842,1		

	step
		.goto Winterspring,31.27,45.16
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
		.accept 5128
		.target Donova Snowden		
		.isQuestTurnedIn 5123

	step
		.goto Winterspring,31.27,45.16
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
		.turnin -5121
		.target Donova Snowden		

	step
		#label Winterspringlast
		.goto Winterspring,31.27,45.16
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
		.turnin -980
		.target Donova Snowden	

	step
		.goto Winterspring,27.91,34.45,20,0
		.goto Felwood,65.69,2.82
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meilosh|r
		.accept 6031 
		.turnin 6031
		.target Meilosh
		.itemcount 14047,30
		.reputation 576,friendly,<0,1

	step
		.goto Winterspring,27.91,34.45,20,0
		.goto Felwood,65.69,2.82
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meilosh|r
		.accept 6032 
		.turnin 6032
		.target Meilosh
		.itemcount 14342,2
		.reputation 576,friendly,<0,1
		.skill tailoring,<280,1
		
	step
		#completewith next
		.use 20741 >>Click |T136232:0|t[Deadwood Ritual Totem] and accept |cRXP_LOOT_Deadwood Ritual Totem|r
		.accept 8470
		.reputation 576,neutral,<0,1
		.itemcount 20741,1
		
	step
		.goto Felwood,65.48,3.47,20,0
		.goto Felwood,65.35,1.37
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernda|r
		>>|cRXP_FRIENDLY_Kernda|r |cRXP_WARN_patrols the lower Timbermaw Hold path|r
		.turnin 8470
		.reputation 576,neutral,<0,1 
		.itemcount 20741,1 
		.target Kernda		

	step
		#completewith next
		.use 20742 >>Click |T135816:0|t[Winterfall Ritual Totem] and accept |cRXP_LOOT_Winterfall Ritual Totem|r
		.accept 8471
		.reputation 576,neutral,<0,1
		.itemcount 20742,1
		
	step
		.goto Felwood,65.48,3.47,20,0
		.goto Felwood,65.35,1.37
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernda|r
		>>|cRXP_FRIENDLY_Kernda|r |cRXP_WARN_patrols the lower Timbermaw Hold path|r
		.turnin 8471
		.reputation 576,neutral,<0,1 
		.itemcount 20742,1 
		.target Kernda			

	step
		.goto Felwood,65.19,2.68
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorn One Eye|r
		.accept 8485
		.reputation 576,exalted,<0,1 
		.target Gorn One Eye	

	step
		#completewith next
		.use 20644 >>Click |T136163:0|t[Nightmare Engulfed Object] and accept |cRXP_LOOT_Shrouded in Nightmare|r
		.accept 8446
		.itemcount 20644,1

	step
		.goto Felwood,65.5,0.9,15,0
		.goto Moonglade,35.7,72.4,15,0
		.goto Moonglade,36.19,41.78
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Remulos|r
		.turnin 8446
		.itemcount 20644,1
		.target Keeper Remulos

	step
		#completewith next
		.goto Felwood,65.5,0.9,15,0
		.goto Moonglade,35.7,72.4,15,0
		.goto Moonglade,40.00,43.59,15,0
		.goto Moonglade,42.13,34.94,5 >>Travel to |cFFfa9602Nighthaven|r
		.subzoneskip 2361
		.subzoneskip 2362

	step
		.goto Moonglade,44.7,35.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
		.turnin -6844
		.target Umber

	step
		.goto Moonglade,44.7,35.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
		.accept 6845
		.target Umber		
		.isQuestTurnedIn 6844

	step
		.goto Moonglade,51.70,45.00
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine|r
		.turnin -5527
		.target Rabine Saturna

	step
		.goto Moonglade,51.70,45.00
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine|r
		.turnin -6845
		.target Rabine Saturna
		
	step
		.goto Moonglade,51.70,45.00
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine|r
		.accept 5526
		.turnin 5526
		.target Rabine Saturna	
		.itemcount 18501,1
		.isQuestTurnedIn 5527
		
	step
		.goto Moonglade,44.7,35.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
		.accept 1185
		.turnin 1185
		.target Umber		
		.isQuestTurnedIn 6845
	
--- Felwood

	step
		#completewith Felwoodlast
		.goto Moonglade,32.2,66.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faustron|r
		.fly Felwood >>Fly to |cFFfa9602Felwood|r
		.target Faustron
		.zoneskip Felwood

	step
		#completewith next
		.use 12558 >>Click |T133298:0|t[Blue-feathered Necklace] and accept |cRXP_LOOT_Guarding Secrets|r
		.accept 4882
		.itemcount 12558,1

	step
		.goto Felwood,34.80,52.80
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trull|r
		.target Trull Failbane
		.turnin 4882
		.accept 4883
		.itemcount 12558,1	

	step
		.goto Felwood,34.20,52.30
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna Hazzard|r
		.turnin -6605
		.target Winna Hazzard	
		
	step
		#completewith Felwoodlast
		.goto Felwood,35.23,50.25,15,0
		.goto Felwood,37.0,49.0,15,0
		.goto Felwood,37.4,49.1,15,0
		.goto Felwood,39.8,53.0,15,0
		.goto Felwood,41.0,57.3,15,0
		.goto Felwood,43.4,74.4,15,0
		.goto Felwood,46.75,83.08,40 >>Travel to |cRXP_FRIENDLY_Maybess Riverbreeze|r

	step
		.goto Felwood,46.75,83.08
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess Riverbreeze|r
		.accept 5891
		.turnin 5891
		.target Maybess Riverbreeze
		.skill enchanting,<205,1
		.itemcount 11174,1

	step
		.goto Felwood,46.75,83.08
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess Riverbreeze|r
		.accept 5889
		.turnin 5889
		.target Maybess Riverbreeze
		.skill herbalism,<250,1
		.itemcount 11514,4	

	step
		.goto Felwood,46.75,83.08
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess Riverbreeze|r
		.accept 5887
		.turnin 5887
		.target Maybess Riverbreeze
		.itemcount 11515,6
		
	step
		.goto Felwood,46.75,83.08
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess Riverbreeze|r
		.accept 5888
		.turnin 5888
		.target Maybess Riverbreeze
		.skill mining,<200,1
		.itemcount 11513,4	
		
	step
		.goto Felwood,46.75,83.08
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybess Riverbreeze|r
		.accept 5890
		.turnin 5890
		.target Maybess Riverbreeze
		.skill skinning,<250,1
		.itemcount 11512,5	

	step
		.goto Felwood,51.18,82.22
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
		.turnin -5242
		.target Greta Mosshoof			
		
	step
		.goto Felwood,51.14,81.76
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
		.turnin -5128
		.target Kelek Skykeeper	

	step
		#label Felwoodlast
		.goto Felwood,51.35,82.01
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
		.turnin -5385
		.target Jessir Moonbow	

--- Orgrimmar
	
	step
		#completewith Orgrimmarlast
		.zone Orgrimmar >>Take Portal or get summon to |cFFfa9602Orgrimmar|r
		.zoneskip Orgrimmar

	step
		.goto Orgrimmar,37.70,87.90
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vehena|r
		.accept 7833
		.turnin 7833
		.target Vehena
		.itemcount 2592,60	

	step
		.goto Orgrimmar,37.70,87.90
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vehena|r
		.accept 7834
		.turnin 7834
		.target Vehena
		.itemcount 4306,60		
		
	step
		.goto Orgrimmar,37.70,87.90
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vehena|r
		.accept 7835
		.turnin 7835
		.target Vehena
		.itemcount 4338,60	
		
	step
		.goto Orgrimmar,37.70,87.90
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vehena|r
		.accept 7836
		.turnin 7836
		.target Vehena
		.itemcount 14047,60	
		.isQuestTurnedIn 7833
		.isQuestTurnedIn 7834
		.isQuestTurnedIn 7835
		
	step
		.goto Orgrimmar,35.0,38.3
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
		.turnin -8978
		.target Mokvar

	step
		.goto Orgrimmar,35.0,38.3
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
		.accept 8927 << Druid
		.accept 8938 << Hunter
		.accept 8939 << Mage
		.accept 8940 << Priest
		.accept 8941 << Rogue
		.accept 8942 << Shaman
		.accept 8943 << Warlock
		.accept 8944 << Warrior
		.accept 10495 << Paladin
		.turnin 8927 << Druid
		.turnin 8938 << Hunter
		.turnin 8939 << Mage
		.turnin 8940 << Priest
		.turnin 8941 << Rogue
		.turnin 8942 << Shaman
		.turnin 8943 << Warlock
		.turnin 8944 << Warrior
		.turnin 10495 << Paladin
		.itemcount 16716,1 << Druid
		.itemcount 16717,1 << Druid
		.itemcount 16680,1 << Hunter
		.itemcount 16676,1 << Hunter
		.itemcount 16685,1 << Mage
		.itemcount 16684,1 << Mage
		.itemcount 16696,1 << Priest
		.itemcount 16692,1 << Priest
		.itemcount 16713,1 << Rogue
		.itemcount 16712,1 << Rogue
		.itemcount 16673,1 << Shaman
		.itemcount 16672,1 << Shaman
		.itemcount 16702,1 << Warlock 
		.itemcount 16705,1 << Warlock 
		.itemcount 16736,1 << Warrior
		.itemcount 16737,1 << Warrior
		.itemcount 16723,1 << Paladin
		.itemcount 16724,1 << Paladin
		.isQuestTurnedIn 8978
		.target Mokvar
	
	step
		.goto Orgrimmar,35.0,38.3
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r
		.accept 8930
		.target Mokvar
		.isQuestTurnedIn 8927 << Druid
		.isQuestTurnedIn 8938 << Hunter
		.isQuestTurnedIn 8939 << Mage
		.isQuestTurnedIn 8940 << Priest
		.isQuestTurnedIn 8941 << Rogue
		.isQuestTurnedIn 8942 << Shaman
		.isQuestTurnedIn 8943 << Warlock
		.isQuestTurnedIn 8944 << Warrior
		.isQuestTurnedIn 10495 << Paladin

	step
		.goto Orgrimmar,34.27,39.35
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
		.complete 4941,1
		.target Eitrigg
		.skipgossip
		.isOnQuest 4941

	step
		.use 18422 >>Click |T134153:0|t[Head of Onyxia] and accept |cRXP_LOOT_Victory for the Horde|r
		.accept 7490
		.itemcount 18422,1

	step
		.use 19002 >>Click |T134154:0|t[Head of Nefarian] and accept |cRXP_LOOT_The Lord of Blackrock|r
		.accept 7783
		.itemcount 19002,1		

	step
		.goto Orgrimmar,31.74,37.82
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
		.turnin -4941
		.turnin -4004
		.turnin -7490
		.turnin -7783
		.turnin -8485
		.target Thrall

	step
		.goto Orgrimmar,31.74,37.82
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
		.accept 7491
		.target Thrall
		.isQuestTurnedIn 7490

	step
		.goto Orgrimmar,31.74,37.82
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
		.accept 7784
		.target Thrall
		.isQuestTurnedIn 7783	
		
	step << Shaman
		.goto Orgrimmar,38.66,35.93
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sagorne Crestrider|r
		.accept 7667
		.turnin 7667
		.target Sagorne Crestrider
		.itemcount 12800,1
		.itemcount 18335,1
	
	step
		.goto Orgrimmar,62.18,40.49
		+Open your |cRXP_PICK_Mailbox|r and collect your items via "/tbc companion"
		>>Once done, or when you picked up your items yourself, complete this step manually

	step
		.goto Orgrimmar,63.61,51.22
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rashona Straglash|r
		.accept 7826
		.turnin 7826
		.target Rashona Straglash
		.itemcount 2592,60	

	step
		.goto Orgrimmar,63.61,51.22
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rashona Straglash|r
		.accept 7827
		.turnin 7827
		.target Rashona Straglash
		.itemcount 4306,60		
		
	step
		.goto Orgrimmar,63.61,51.22
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rashona Straglash|r
		.accept 7831
		.turnin 7831
		.target Rashona Straglash
		.itemcount 4338,60	
		
	step
		.goto Orgrimmar,63.61,51.22
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rashona Straglash|r
		.accept 7824
		.turnin 7824
		.target Rashona Straglash
		.itemcount 14047,60	
		.isQuestTurnedIn 7826
		.isQuestTurnedIn 7827
		.isQuestTurnedIn 7831

	step
		.goto Orgrimmar,55.9,57.5,8,0
		.goto Orgrimmar,56.26,46.68
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zilzibin Drumlore|r
		.turnin -4509
		.target Zilzibin Drumlore

	step
		.goto Orgrimmar,55.9,57.5,8,0
		.goto Orgrimmar,56.26,46.68
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zilzibin Drumlore|r
		.accept 4511
		.target Zilzibin Drumlore
		.isQuestTurnedIn 4509		

	step
		.goto Orgrimmar,51.70,75.49
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Runthak|r
		.turnin -7491
		.target Overlord Runthak

	step
		.goto Orgrimmar,50.93,75.67
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Overlord Saurfang|r
		.turnin -7784
		.target High Overlord Saurfang	

	step
		.goto Orgrimmar,49.58,69.15
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Overlord Saurfang|r
		.turnin -4511
		.target High Overlord Saurfang	

	step
		#label Orgrimmarlast
		.goto Orgrimmar,49.58,69.13
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r and collect your items via "/tbc companion"
		>>Once done, or when you picked up your items yourself, complete this step manually
		.target Karus	

--- Silvermoon City

	step <<tbc
		#completewith Silvermoonlast
		.zone Silvermoon City >>Take Portal or get summon to |cFFfa9602Silvermoon City|r
		.zoneskip Silvermoon City

	step <<tbc
		.goto Silvermoon City,56.6,52.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorim Lightsong|r
		.accept 10359
		.turnin 10359
		.target Sorim Lightsong
		.itemcount 2592,60	

	step <<tbc
		.goto Silvermoon City,56.6,52.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorim Lightsong|r
		.accept 10360
		.turnin 10360
		.target Sorim Lightsong
		.itemcount 4306,60		
		
	step <<tbc
		.goto Silvermoon City,56.6,52.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorim Lightsong|r
		.accept 10361
		.turnin 10361
		.target Sorim Lightsong
		.itemcount 4338,60	
		
	step <<tbc
		.goto Silvermoon City,56.6,52.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorim Lightsong|r
		.accept 10362
		.turnin 10362
		.target Sorim Lightsong
		.itemcount 14047,60	
		.isQuestTurnedIn 10359
		.isQuestTurnedIn 10360
		.isQuestTurnedIn 10361	

	step
		#label Silvermoonlast

--- Azshara

	step
		#completewith Azsharalast
		.zone Azshara >> Get summon to |cFFfa9602Azshara|r
		.zoneskip Azshara

	step
		.goto Azshara,79.2,73.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
		.turnin 6822
		.target Duke Hydraxis		
		.isQuestComplete 6822

	step
		.goto Azshara,79.2,73.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
		.accept 6823
		.turnin 6823
		.target Duke Hydraxis	
		.reputation 749,honored,<0,1	
		.isQuestTurnedIn 6822			

	step
		.goto Azshara,79.2,73.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
		.turnin 6824
		.target Duke Hydraxis		
		.isQuestComplete 6824

	step
		.goto Azshara,79.2,73.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
		.accept 7486
		.target Duke Hydraxis		
		.isQuestTurnedIn 6824		
	
	step
		#label Azsharalast
		.goto Azshara,79.2,74.8
		>>Click the |cRXP_PICK_Hydraxis' Coffer|r and turn in |cRXP_LOOT_A Hero's Reward|r
		.turnin 7486
		.isQuestTurnedIn 6824

--- Go to LHC/EPL	

	step
		#completewith EPL1
		.zone Eastern Plaguelands >> Hearth to |cFFfa9602Lights Hope Chapel|r
		.use 6948
		.zoneskip Eastern Plaguelands

	step
		.goto Eastern Plaguelands,80.92,58.54
		+Open your |cRXP_PICK_Mailbox|r and collect your items via "/tbc companion"
		>>Once done, or when you picked up your items yourself, complete this step manually		
		
	step	
		.goto Eastern Plaguelands,81.6,60.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Miranda Breechlock|r
		.accept 5513
		.turnin 5513
		.target Quartermaster Miranda Breechlock
		.itemcount 12844,10
		.reputation 529,revered,<0,1

	step	
		.goto Eastern Plaguelands,81.6,60.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Miranda Breechlock|r
		.accept 5517
		.turnin 5517
		.target Quartermaster Miranda Breechlock	
		.itemcount 12844,25	
		.reputation 529,exalted,<0,1

	step	
		.goto Eastern Plaguelands,81.4,59.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r	
		.turnin -5251
		.turnin -6030
		.target Duke Nicholas Zverenhoff		

	step	
		.goto Eastern Plaguelands,81.00,59.61
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Craftsman Wilhelm|r	
		.accept 9232
		.turnin 9232
		.target Craftsman Wilhelm
		.reputation 529,revered,<0,1
		.itemcount 22682,2
		.itemcount 7080,2
		.itemcount 12361,2
		.isQuestTurnedIn 9233

	step	
		.goto Eastern Plaguelands,81.4,58.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne|r	
		.accept 9136
		.turnin 9136
		.target Rayne
		.itemcount 22529,30

	step	
		.goto Eastern Plaguelands,81.4,58.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rohan the Assassin|r	
		.accept 9126
		.turnin 9126
		.target Rohan the Assassin		
		.itemcount 22526,30

	step	
		.goto Eastern Plaguelands,81.5,58.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Leopold|r	
		.accept 9124
		.turnin 9124
		.target Huntsman Leopold		
		.itemcount 22525,30

	step	
		.goto Eastern Plaguelands,81.5,58.3
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r	
		.accept 9128
		.turnin 9128
		.target Archmage Angela Dosantos
		.itemcount 22527,30

	step
		#completewith next
		.use 22520 >> Click |T134514:0|t[The Phylactery of Kel'Thuzad] and accept |cRXP_LOOT_The Fall of Kel'Thuzad|r
		.accept 9120
		.itemcount 22520,1

	step	
		.goto Eastern Plaguelands,81.5,58.1
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Inigo Montoy|r	
		.turnin 9120	
		.target Father Inigo Montoy	
		.itemcount 22520,1	

	step	
		.goto Eastern Plaguelands,81.8,58.1
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korfax, Champion of the Light|r	
		.accept 9131
		.turnin 9131
		.target Korfax, Champion of the Light
		.itemcount 22528,30

	step	
		.goto Eastern Plaguelands,81.8,58.1
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korfax, Champion of the Light|r	
		.turnin -9229
		.target Korfax, Champion of the Light
		.isQuestComplete 9033	
		
	step	
		.goto Eastern Plaguelands,81.8,58.1
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korfax, Champion of the Light|r	
		.accept 9230
		.turnin 9230
		.target Korfax, Champion of the Light
		.isQuestComplete 9229
		.itemcount 22682,1
		.itemcount 12361,1
		.itemcount 12360,1
		
	step	
		.goto Eastern Plaguelands,81.7,57.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r	
		.accept 5243
		.turnin 5243
		.target Leonid Barthalomew the Revered
		.itemcount 13180,5	

	step	
		.goto Eastern Plaguelands,81.7,57.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r	
		.turnin -5522
		.target Leonid Barthalomew the Revered		

	step	
		.goto Eastern Plaguelands,81.7,57.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r	
		.accept 5531
		.target Leonid Barthalomew the Revered	
		.isQuestTurnedIn 5522	

	step	
		.goto Eastern Plaguelands,80.6,58.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r	
		.accept 6026
		.turnin 6026
		.target Smokey LaRue
		.itemcount 11128,1
		.itemcount 12359,2
		.itemcount 10562,8
		.itemcount 10560,8

	step
		.goto Eastern Plaguelands,80.6,58.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r	
		.accept 6041
		.target Smokey LaRue
		.isQuestTurnedIn 6026

	step	
		.goto Eastern Plaguelands,80.6,58.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r	
		.accept 5214
		.target Smokey LaRue		

	step	
		.goto Eastern Plaguelands,81.0,57.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Metz|r	
		.accept 9141
		.turnin 9141
		.target Dispatch Commander Metz		
		.itemcount 12844,1

	step	
		.goto Eastern Plaguelands,80.0,57.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Gormok|r	
		.turnin -9665
		.target Emissary Gormok

	step	
		.goto Eastern Plaguelands,81.5,59.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r	
		.turnin -5531
		.accept 5212
		.accept 5529
		.target Betina Bigglezink

	step	
		.goto Eastern Plaguelands,81.5,59.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r	
		.accept 4771
		.target Betina Bigglezink
		.isQuestTurnedIn 5531		

	step
		.goto Eastern Plaguelands,79.60,63.87
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
		.accept 5281
		.target Caretaker Alen

	step
		.goto Eastern Plaguelands,36.4,90.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
		.turnin -5721
		.target Pamela Redpath

	step
		.goto Eastern Plaguelands,36.4,90.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
		.accept 5942
		.target Pamela Redpath
		.isQuestTurnedIn 5721	
		
	step	
		.goto Eastern Plaguelands,36.2,90.4
		>>Click |cRXP_PICK_Joseph's Chest|r
		.turnin -5942		

	step	
		.goto Eastern Plaguelands,28.1,86.1
		>>Click |cRXP_PICK_Mound of Dirt|r
		.turnin -6024
		
	step	
		.goto Eastern Plaguelands,26.6,74.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
		.turnin -6148
		.target Nathanos Blightcaller
		
	step	
		.goto Eastern Plaguelands,26.6,74.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
		.accept 6163
		.target Nathanos Blightcaller	
		.isQuestTurnedIn 6136		

	step	
		#label EPL1
		.goto Eastern Plaguelands,7.6,43.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
		.accept 5846
		.target Tirion Fordring
		.isQuestTurnedIn 5845

	step
		.goto Western Plaguelands,62.59,58.55
		>>Click the |cRXP_PICK_Scourge Cauldron|r
		.accept 5236
		.isQuestTurnedIn 5235

	step
		.goto Western Plaguelands,65.7,75.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artist Renfray|r
		.turnin -5846
		.target Artist Renfray

	step
		.goto Western Plaguelands,65.7,75.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artist Renfray|r
		.accept 5848	
		.target Artist Renfray
		.isQuestTurnedIn 5846	

	step
		.goto Western Plaguelands,70.6,74.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Marduke|r
		.equip 13,13544 >> |cRXP_WARN_Equip the|r |T134337:0|t|cRXP_LOOT_[Spectral Essence]|r
		.accept 5462
		.target Magistrate Marduke
		.isQuestTurnedIn 5461

	step
		#completewith next
		.goto 1415,52.8,26.4
		.subzone 2057 >>Enter |cFFfa9602Scholomance|r

	step
		>>Kill 20 |cRXP_ENEMY_Plagued Hatchlings|r inside |cFFfa9602Scholomance|r
		.mob Plagued Hatchling
		.complete 5529,1
		.isOnQuest 5529

	step
		#completewith next
		>>At least one person in your group needs to have the |cRXP_LOOT_Viewing Room Key|r. If you did not prefarm it you have to kill |cRXP_ENEMY_Rattlegore|r
		.collect 13873
		.mob Rattlegore

	step
		.use 12368 >>Place |T132596:0|t[Dawn's Gambit] in the Viewing Room of |cFFfa9602Scholomance|r and kill |cRXP_ENEMY_Vectus|r
		.complete 4771,1
		.complete 4771,2
		.isOnQuest 4771
		.mob Vectus

	step
		#completewith EPL2
		.zone Eastern Plaguelands >> Hearth to |cFFfa9602Lights Hope Chapel|r
		.use 6948
		.zoneskip Eastern Plaguelands

	step	
		.goto Eastern Plaguelands,81.5,59.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r	
		.turnin -4771
		.turnin -5529
		.target Betina Bigglezink

	step	
		.goto Eastern Plaguelands,81.7,57.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r	
		.turnin -5462
		.target Leonid Barthalomew the Revered	
		
	step	
		.goto Eastern Plaguelands,81.7,57.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r	
		.accept 5463
		.target Leonid Barthalomew the Revered	
		.isQuestTurnedIn 5462		

	step
		#completewith StratholmeEntry1
		.use 15736 >>Use |T133715:0|t[Smokey's Special Compound] to destroy |cRXP_ENEMY_Scourge Ziggurats|r
		>>Try to destroy at least 4 before entering Stratholme
		.complete 6041,1
		
	step
		.goto Eastern Plaguelands,14.45,33.74
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Egan|r
		.turnin -5281
		.target Egan

	step
		.goto Eastern Plaguelands,14.45,33.74
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Egan|r
		.accept 5282
		.target Egan
		.isQuestTurnedIn 5281		

	step
		.goto Eastern Plaguelands,30.86,20.13,0
		.goto Eastern Kingdoms,55.06,17.51
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion Harmon|r
		.use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Anthion|r
		.turnin -8930
		.target Anthion Harmon

	step
		#label EPL2
		.goto Eastern Plaguelands,30.86,20.13,0
		.goto Eastern Kingdoms,55.06,17.51
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion Harmon|r
		.use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Anthion|r
		.accept 8945
		.target Anthion Harmon
		.isQuestTurnedIn 8930		

	step
		#completewith StratholmeLive
		#label StratholmeEntry1
		.goto Eastern Kingdoms,55.12,17.36,8 >> Enter |cFFfa9602Stratholme|r
	
	step
		#completewith StratholmeLive
		.use 13289 >>Use |T135614:0|t[Egan's Blaster] on the |cRXP_WARN_Ghostly Citizen|r and |cRXP_WARN_Spectral Citizen|r inside |cFFfa9602Stratholme|r
		>>When the |cRXP_WARN_Restless Soul|r break free, use the blaster again
		.complete 5282,1
		.isOnQuest 5282
		.mob Spectral Citizen
		.mob Ghostly Citizen
		.mob Restless Soul

	step
		#sticky
		>>Kill |cRXP_ENEMY_any Undead|r inside |cFFfa9602Stratholme|r for |cRXP_LOOT_Plagued Flesh Sample|r
		.complete 5212,1
		.isOnQuest 5212			

	step
		>>Kill |cRXP_ENEMY_Ezra Grimm|r inside |cFFfa9602Stratholme|r for |cRXP_LOOT_Grimm's Premium Tobacco|r
		.mob Ezra Grimm
		.complete 5214,1
		.isOnQuest 5214

	step
		>>Loot the painting |cRXP_LOOT_Of Love and Family|r inside |cFFfa9602Stratholme|r
		.complete 5848,1
		.isOnQuest 5848

	step
		#label StratholmeLive
		>>Kill |cRXP_ENEMY_Balnazzar|r inside |cFFfa9602Stratholme|r for |cRXP_LOOT_Head of Balnazzar|r
		.mob Balnazzar
		.collect 13250,1
		.isQuestTurnedIn 5251
		.isQuestAvailable 5262

	step
		#completewith EPL3
		.zone Eastern Plaguelands >> Hearth to |cFFfa9602Lights Hope Chapel|r
		.use 6948
		.zoneskip Eastern Plaguelands

	step
		#completewith next
		.use 13250 >> Click |T136183:0|t[Head of Balnazzar] and accept |cRXP_LOOT_The Truth Comes Crashing Down|r
		.accept 5262
		.itemcount 13250,1

	step	
		.goto Eastern Plaguelands,81.4,59.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r	
		.turnin 5262
		.accept 5263
		.target Duke Nicholas Zverenhoff	
		.itemcount 13250,1

	step	
		.goto Eastern Plaguelands,81.5,59.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r	
		.turnin -5212
		.accept 5213
		.target Betina Bigglezink
	
	step	
		#label EPL3
		.goto Eastern Plaguelands,80.6,58.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r	
		.turnin -5214
		.target Smokey LaRue		
	
	step
		#completewith next
		.use 15736 >>Use |T133715:0|t[Smokey's Special Compound] to destroy |cRXP_ENEMY_Scourge Ziggurats|r
		.complete 6041,1	

	step
		#completewith StratholmeUndead
		.goto Eastern Plaguelands,47.9,23.9
		.subzone 2017 >>Enter |cFFfa9602Stratholme|r
	
	step
		#completewith StratholmeUndead
		.use 13289 >>Use |T135614:0|t[Egan's Blaster] on the |cRXP_WARN_Ghostly Citizen|r and |cRXP_WARN_Spectral Citizen|r inside |cFFfa9602Stratholme|r
		>>When the |cRXP_WARN_Restless Soul|r break free, use the blaster again
		.complete 5282,1
		.isOnQuest 5282
		.mob Spectral Citizen
		.mob Ghostly Citizen
		.mob Restless Soul

	step
		#completewith StratholmeUndead
		>>Kill |cRXP_ENEMY_Baron Rivendare|r within 45 minutes to save |cRXP_FRIENDLY_Ysida Harmon|r
    	>>|cRXP_WARN_The timer starts as you get the|r |T136129:0|t[The Baron's Ultimatum] |cRXP_WARN_debuff upon entering the undead side|r
		.complete 8945,1
		.isOnQuest 8945	
		.target Ysida Harmon	

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurius|r inside |cFFfa9602Stratholme|r
		.turnin 5122
		.itemcount 12845,1
		.target Aurius

	step
		>>Enter the ziggurats you gain access to after killing |cRXP_ENEMY_Nerub'enkan|r, |cRXP_ENEMY_Baroness Anastari|r and |cRXP_ENEMY_Maleki the Pallid|r. Kill the cultists inside and look for a small box inside. It will randomly spawn in one of the three ziggurats
		>>Loot the box for |T134420:0|t[Scourge Data]
		.complete 5213,1 
		.isOnQuest 5213
		.mob Nerub'enkan
		.mob Baroness Anastari
		.mob Maleki the Pallid

	step
		>>Kill |cRXP_ENEMY_Ramstein|r inside |cFFfa9602Stratholme|r for |cRXP_LOOT_Head of Ramstein the Gorger|r
		.mob Ramstein
		.complete 6163,1
		.isOnQuest 6163		

	step
		>>Kill |cRXP_ENEMY_Baron Rivendare|r inside |cFFfa9602Stratholme|r for |cRXP_LOOT_Head of Baron Rivendare|r
		.mob Baron Rivendare
		.complete 5263,1
		.isOnQuest 5263

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurius|r inside |cFFfa9602Stratholme|r
		>>|cRXP_WARN_This quest is only available if you handed|r |cRXP_FRIENDLY_Aurius|r |cRXP_WARN_a |r|cRXP_LOOT_Medallion of Faith|r |cRXP_WARN_before starting|r
		.accept 5125
		.turnin 5125
		.target Aurius	
		
	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysida Harmon|r
		.turnin -8945
		.target Ysida Harmon	

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysida Harmon|r
		.accept 8946
		.target Ysida Harmon
		.isQuestTurnedIn 8945		

	step
		>>Click on the big symbol on the floor in |cRXP_ENEMY_Baron Rivendare's|r room to turn in the quest
		.turnin -5463
		.mob Baron Rivendare

	step
		#label StratholmeUndead
		>>Click on the big symbol on the floor in |cRXP_ENEMY_Baron Rivendare's|r room to accept the quest
		.accept 5464
		.isQuestTurnedIn 5463

	step
		#completewith EPL4
		.zone Eastern Plaguelands >> Hearth to |cFFfa9602Lights Hope Chapel|r
		.use 6948
		.zoneskip Eastern Plaguelands

	step	
		.goto Eastern Plaguelands,81.4,59.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r	
		.turnin -5263
		.target Duke Nicholas Zverenhoff	

	step	
		.goto Eastern Plaguelands,81.4,59.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r	
		.accept 5264
		.target Duke Nicholas Zverenhoff
		.isQuestTurnedIn 5263

	step	
		.goto Eastern Plaguelands,81.5,59.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r	
		.turnin -5213
		.target Betina Bigglezink

	step	
		.goto Eastern Plaguelands,81.7,58.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
		.target Lord Maxwell Tyrosus	
		.turnin -5264

	step	
		.goto Eastern Plaguelands,81.7,58.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
		.accept 5465
		.target Lord Maxwell Tyrosus	
		.isQuestTurnedIn 5264	
		
	step	
		.goto Eastern Plaguelands,81.8,58.0
		>>Click |cRXP_PICK_the Argent Hold|r
		.turnin -5265	
		
	step	
		#label EPL4
		.goto Eastern Plaguelands,81.7,57.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r	
		.turnin -5464
		.target Leonid Barthalomew the Revered	

	step
		.goto Eastern Plaguelands,80.6,58.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r	
		.turnin -6041
		.target Smokey LaRue

	step
		.goto Eastern Plaguelands,30.86,20.13,0
		.goto Eastern Kingdoms,55.06,17.51
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion Harmon|r
		.use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Anthion|r
		.turnin -8946
		.target Anthion Harmon

	step
		.goto Eastern Plaguelands,30.86,20.13,0
		.goto Eastern Kingdoms,55.06,17.51
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion Harmon|r
		.use 22115 >>|cRXP_WARN_Use the|r |T133878:0|t[Extra-Dimensional Ghost Revealer] |cRXP_WARN_to reveal|r |cRXP_FRIENDLY_Anthion|r
		.accept 8947
		.turnin 8947
		.target Anthion Harmon	
		.isQuestTurnedIn 8946
		.itemcount 11371,3
		.itemcount 12810,20
		.itemcount 14342,3
		.itemcount 15407,4
		
	step
		.goto Eastern Plaguelands,14.45,33.74
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Egan|r
		.turnin -5282
		.target Egan

	step	
		.goto Eastern Plaguelands,7.6,43.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
		.turnin -5848
		.target Tirion Fordring	

	step	
		.goto Eastern Plaguelands,7.6,43.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
		.accept 5861
		.target Tirion Fordring		
		.isQuestTurnedIn 5848	

	step	
		.goto Eastern Plaguelands,26.6,74.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
		.turnin -6163
		.target Nathanos Blightcaller		

	step
		.goto Western Plaguelands,53.73,64.66
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r
		.accept 4987
		.target Mulgris Deepriver	
		.isQuestTurnedIn 4985
		
	step
		.goto Western Plaguelands,50.79,77.85
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myranda the Hag|r
		.turnin -5861
		.target Myranda the Hag	
		
	step
		step
		.goto Western Plaguelands,47.4,49.7
		>>Click the |cRXP_PICK_Locked Cabinet|r on the top floor of the house
		.turnin 5060
		.itemcount 12739,1

	step
		.goto Western Plaguelands,38.40,54.05
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Felstone|r
		>>|cRXP_WARN_Skip this quest if |cRXP_ENEMY_Jabbering Ghoul|r is not up
		.accept 5051
		.target Janice Felstone
		.isQuestTurnedIn 5050

	step
		#loop
		.line Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
		.goto Western Plaguelands,36.80,58.60,0
		.goto Western Plaguelands,36.80,58.60,50,0
		.goto Western Plaguelands,36.40,56.40,50,0
		.goto Western Plaguelands,37.40,55.60,50,0
		.goto Western Plaguelands,38.60,56.20,50,0
		.goto Western Plaguelands,37.80,57.60,50,0
		>>Kill the |cRXP_ENEMY_Jabbering Ghoul|r. Loot it for the |cRXP_LOOT_Good Luck Other-Half-Charm|r
		>>|cRXP_WARN_Skip this quest if |cRXP_ENEMY_Jabbering Ghoul|r is not up
		.use 12722 >> Use it to create the |cRXP_LOOT_Good Luck Good Luck Charm|r
		.complete 5051,1 
		.unitscan Jabbering Ghoul
		.isOnQuest 5051	

	step
		.goto Western Plaguelands,38.40,54.05
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Felstone|r
		.turnin -5051
		.target Janice Felstone

--- Tirisfal Glades

	step
		#completewith Tirisfallast
		.zone Tirisfal Glades >> Travel to |cFFfa9602Tirisfal Glades|r
		.zoneskip Tirisfal Glades

	step
		.goto Tirisfal Glades,83.0,71.9
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priestess Vandis|r
		.turnin -5236
		.target Shadow Priestess Vandis

	step
		.goto Tirisfal Glades,83.1,71.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexi Barov|r
		.turnin -5341	
		.turnin -5342
		.target Alexi Barov

	step
		.goto Tirisfal Glades,83.2,71.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehlar Dawnblade|r
		.turnin -9444
		.target Mehlar Dawnblade			
		
	step
		.goto Tirisfal Glades,83.3,69.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
		.accept 5511
		.turnin 5511
		.target Apothecary Dithers
		.isQuestTurnedIn 5804

	step	
		.goto Tirisfal Glades,83.1,68.9
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
		.turnin -105	
		.target High Executor Derrington

	step	
		#label Tirisfallast
		.goto Tirisfal Glades,83.1,68.9
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r	
		.accept 5238
		.turnin 5238
		.target High Executor Derrington	
		.isQuestTurnedIn 5236	

	step
		.goto Tirisfal Glades,83.19,68.45
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Garush|r
		.turnin -6029
		.target Argent Officer Garush	

--- STV

	step
		#completewith Stranglethornlast
		.zone Stranglethorn Vale >> Get summon to |cFFfa9602Stranglethorn Vale|r
		.zoneskip Stranglethorn Vale
		
	step	
		.goto Stranglethorn Vale,15.0,15.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Molthor|r
		.turnin -8182
		.target Molthor	

	step
		#completewith next
		.use 19802 >>Click |T134085:0|t[Heart of Hakkar] and accept |cRXP_LOOT_The Heart of Hakkar|r
		.accept 8183
		.itemcount 19802,1
		
	step	
		.goto Stranglethorn Vale,15.0,15.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Molthor|r
		>>|cRXP_WARN_This starts a 1:30min RP, so try to have everyone turn this in at the same time, before the RP|r
		.turnin 8183
		.target Molthor
		.itemcount 19802,1

	step	
		.goto Stranglethorn Vale,15.2,15.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exzhal|r
		.turnin -8201	
		.target Exzhal	
		
	step
		.goto Stranglethorn Vale,14.4,15.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vinchaxa|r
		.accept 8240
		.target Vinchaxa

	step
		.goto Stranglethorn Vale,13.4,15.1 
		>> Got to the altar and destroy any Bijou
		.use 19708 >>|cRXP_WARN_Destroy any Bijou|r
		.use 19713
		.use 19715
		.use 19711
		.use 19710
		.use 19712
		.use 19707
		.use 19714
		.use 19709
		.complete 8240,1
		.isOnQuest 8240

	step
		.goto Stranglethorn Vale,14.4,15.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vinchaxa|r
		.turnin -8240
		.target Vinchaxa

	step << Rogue
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r
		.accept 8141
		.turnin 8141
		.target Falthir the Sightless
		.reputation 270,friendly,<0,1

	step << Rogue
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r
		.accept 8142
		.turnin 8142
		.target Falthir the Sightless
		.reputation 270,honored,<0,1	
		
	step << Rogue
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r
		.accept 8143
		.turnin 8143
		.target Falthir the Sightless
		.reputation 270,revered,<0,1	
		
	step << Rogue
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r	
		.accept 8144
		.turnin 8144
		.target Falthir the Sightless
		.reputation 270,exalted,<0,1	
		
	step << Rogue
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r	
		.accept 8063
		.turnin 8063
		.target Falthir the Sightless
		.reputation 270,friendly,>=1
		.itemcount 19717,1

	step << Rogue
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r	
		.accept 8072
		.turnin 8072
		.target Falthir the Sightless
		.reputation 270,honored,>=1
		.itemcount 19719,1

	step << Rogue
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r	
		.accept 8073
		.turnin 8073	
		.target Falthir the Sightless
		.reputation 270,revered,>=1
		.itemcount 19724,1

	step << Hunter
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r
		.accept 8145
		.turnin 8145
		.target Falthir the Sightless
		.reputation 270,friendly,<0,1	
		
	step << Hunter
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r
		.accept 8146
		.turnin 8146
		.target Falthir the Sightless
		.reputation 270,honored,<0,1	
		
	step << Hunter
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r
		.accept 8147
		.turnin 8147
		.target Falthir the Sightless
		.reputation 270,revered,<0,1	
		
	step << Hunter
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r	
		.accept 8148
		.turnin 8148
		.target Falthir the Sightless
		.reputation 270,exalted,<0,1
		
	step << Hunter
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r		
		.accept 8062
		.turnin 8062
		.target Falthir the Sightless
		.reputation 270,friendly,>=1
		.itemcount 19716,1	
		
	step << Hunter
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r		
		.accept 8066
		.turnin 8066
		.target Falthir the Sightless
		.reputation 270,honored,>=1
		.itemcount 19721,1
	
	step << Hunter
		.goto Stranglethorn Vale,14.0,13.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falthir the Sightless|r		
		.accept 8067
		.turnin 8067	
		.target Falthir the Sightless
		.reputation 270,revered,>=1
		.itemcount 19724,1	

	step << Paladin
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r
		.accept 8045
		.turnin 8045	
		.reputation 270,friendly,<0,1
		.target Jin'rokh the Breaker

	step << Paladin
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r
		.accept 8046
		.turnin 8046
		.reputation 270,honored,<0,1
		.target Jin'rokh the Breaker	
		
	step << Paladin
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r
		.accept 8047
		.turnin 8047
		.reputation 270,revered,<0,1
		.target Jin'rokh the Breaker
		
	step << Paladin
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r	
		.accept 8048
		.turnin 8048
		.reputation 270,exalted,<0,1
		.target Jin'rokh the Breaker		
		
	step << Paladin
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r		
		.accept 8053
		.turnin 8053
		.target Jin'rokh the Breaker
		.reputation 270,friendly,<0,1
		.itemcount 19716,1

	step << Paladin
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r		
		.accept 8054
		.turnin 8054
		.target Jin'rokh the Breaker
		.reputation 270,honored,<0,1
		.itemcount 19721,1		

	step << Paladin
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r			
		.accept 8055
		.turnin 8055	
		.target Jin'rokh the Breaker
		.reputation 270,revered,<0,1
		.itemcount 19722,1

	step << Warrior
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r
		.accept 8041
		.turnin 8041
		.target Jin'rokh the Breaker
		.reputation 270,friendly,<0,1

	step << Warrior
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r
		.accept 8042
		.turnin 8042
		.target Jin'rokh the Breaker
		.reputation 270,honored,<0,1
		
	step << Warrior
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r
		.accept 8043
		.turnin 8043
		.target Jin'rokh the Breaker
		.reputation 270,revered,<0,1
		
	step << Warrior
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r
		.accept 8044
		.turnin 8044
		.target Jin'rokh the Breaker
		.reputation 270,exalted,<0,1		
				
	step << Warrior
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r
		.accept 8058
		.turnin 8058
		.target Jin'rokh the Breaker
		.reputation 270,friendly,<0,1
		.itemcount 19717,1
		
	step << Warrior
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r	
		.accept 8078
		.turnin 8078
		.target Jin'rokh the Breaker
		.reputation 270,honored,<0,1
		.itemcount 19719,1

	step << Warrior
		.goto Stranglethorn Vale,15.2,14.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'rokh the Breaker|r		
		.accept 8079
		.turnin 8079
		.target Jin'rokh the Breaker
		.reputation 270,revered,<0,1
		.itemcount 19723,1
		
	step << Warlock
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r
		.accept 8106
		.turnin 8106
		.target Al'tabim the All-Seeing
		.reputation 270,friendly,<0,1

	step << Warlock
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r
		.accept 8107
		.turnin 8107
		.target Al'tabim the All-Seeing
		.reputation 270,honored,<0,1

	step << Warlock
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r
		.accept 8108
		.turnin 8108	
		.target Al'tabim the All-Seeing
		.reputation 270,revered,<0,1

	step << Warlock
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r	
		.accept 8109
		.turnin 8109
		.target Al'tabim the All-Seeing
		.reputation 270,exalted,<0,1

	step << Warlock
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r	
		.accept 8059
		.turnin 8059	
		.target Al'tabim the All-Seeing
		.reputation 270,friendly,>=1
		.itemcount 19718,1

	step << Warlock
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r		
		.accept 8076
		.turnin 8076
		.target Al'tabim the All-Seeing
		.reputation 270,honored,>=1
		.itemcount 19720,1

	step << Warlock
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r		
		.accept 8077
		.turnin 8077		
		.target Al'tabim the All-Seeing
		.reputation 270,revered,>=1
		.itemcount 19723,1
		
	step << Priest
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r
		.accept 8049
		.turnin 8049
		.target Al'tabim the All-Seeing
		.reputation 270,friendly,<0,1

	step << Priest
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r
		.accept 8050
		.turnin 8050
		.target Al'tabim the All-Seeing
		.reputation 270,honored,<0,1

	step << Priest
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r
		.accept 8051
		.turnin 8051
		.target Al'tabim the All-Seeing
		.reputation 270,revered,<0,1

	step << Priest
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r	
		.accept 8052
		.turnin 8052
		.target Al'tabim the All-Seeing
		.reputation 270,exalted,<0,1

	step << Priest
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r
		.accept 8061
		.turnin 8061
		.target Al'tabim the All-Seeing	
		.reputation 270,friendly,>=1
		.itemcount 19718,1

	step << Priest
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r	
		.accept 8070
		.turnin 8070
		.target Al'tabim the All-Seeing
		.reputation 270,honored,>=1
		.itemcount 19720,1		

	step << Priest
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r		
		.accept 8071
		.turnin 8071	
		.target Al'tabim the All-Seeing	
		.reputation 270,revered,>=1
		.itemcount 19724,1

	step << Mage
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r
		.accept 8101
		.turnin 8101
		.target Al'tabim the All-Seeing
		.reputation 270,friendly,<0,1

	step << Mage
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r
		.accept 8102
		.turnin 8102
		.target Al'tabim the All-Seeing
		.reputation 270,honored,<0,1

	step << Mage
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r
		.accept 8103
		.turnin 8103
		.target Al'tabim the All-Seeing
		.reputation 270,revered,<0,1

	step << Mage
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r	
		.accept 8104
		.turnin 8104	
		.target Al'tabim the All-Seeing
		.reputation 270,exalted,<0,1

	step << Mage
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r	
		.accept 8060
		.turnin 8060	
		.target Al'tabim the All-Seeing
		.reputation 270,friendly,>=1
		.itemcount 19716,1

	step << Mage
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r		
		.accept 8068
		.turnin 8068
		.target Al'tabim the All-Seeing
		.reputation 270,honored,>=1
		.itemcount 19721,1

	step << Mage
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Al'tabim the All-Seeing|r			
		.accept 8069
		.turnin 8069		
		.target Al'tabim the All-Seeing
		.reputation 270,revered,>=1
		.itemcount 19723,1

	step << Shaman
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r
		.accept 8116
		.turnin 8116
		.target Maywiki of Zuldazar
		.reputation 270,friendly,<0,1

	step << Shaman
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r
		.accept 8117
		.turnin 8117
		.target Maywiki of Zuldazar
		.reputation 270,honored,<0,1

	step << Shaman
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r
		.accept 8118
		.turnin 8118
		.target Maywiki of Zuldazar
		.reputation 270,revered,<0,1

	step << Shaman
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r	
		.accept 8119
		.turnin 8119
		.target Maywiki of Zuldazar
		.reputation 270,exalted,<0,1

	step << Shaman
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r	
		.accept 8056
		.turnin 8056
		.target Maywiki of Zuldazar
		.reputation 270,friendly,>=1
		.itemcount 19717,1

	step << Shaman
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r		
		.accept 8074
		.turnin 8074
		.target Maywiki of Zuldazar
		.reputation 270,honored,>=1
		.itemcount 19719,1

	step << Shaman
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r				
		.accept 8075
		.turnin 8075
		.target Maywiki of Zuldazar
		.reputation 270,revered,>=1
		.itemcount 19722,1

	step << Druid
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r
		.accept 8110
		.turnin 8110
		.target Maywiki of Zuldazar
		.reputation 270,friendly,<0,1

	step << Druid
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r
		.accept 8111
		.turnin 8111
		.target Maywiki of Zuldazar
		.reputation 270,honored,<0,1

	step << Druid
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r
		.accept 8112
		.turnin 8112
		.target Maywiki of Zuldazar
		.reputation 270,revered,<0,1

	step << Druid
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r	
		.accept 8113
		.turnin 8113	
		.target Maywiki of Zuldazar
		.reputation 270,exalted,<0,1

	step << Druid
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r
		.accept 8057
		.turnin 8057
		.target Maywiki of Zuldazar
		.reputation 270,friendly,>=1
		.itemcount 19718,1

	step << Druid
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r	
		.accept 8064
		.turnin 8064
		.target Maywiki of Zuldazar
		.reputation 270,honored,>=1
		.itemcount 19720,1

	step << Druid
		.goto Stranglethorn Vale,15.2,16.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki of Zuldazar|r		
		.accept 8065
		.turnin 8065
		.target Maywiki of Zuldazar
		.reputation 270,revered,>=1
		.itemcount 19722,1

	step
		#label Stranglethornlast

--- Tarren Mill

	step
		#completewith Hillsbradlast
		.zone Hillsbrad Foothills >> Get summon to |cFFfa9602Hillsbrad Foothills|r
		.zoneskip Hillsbrad Foothills

	step
		.goto Hillsbrad Foothills,62.36,19.75
		+Open your |cRXP_PICK_Mailbox|r and collect your items via "/tbc companion"
		>>Once done, or when you picked up your items yourself, complete this step manually

	step
		.goto Hillsbrad Foothills,61.4,19.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lydon|r
		.turnin -2937
		.target Apothecary Lydon	

	step
		.goto Hillsbrad Foothills,61.4,19.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lydon|r
		.accept 2938
		.target Apothecary Lydon	
		.isQuestTurnedIn 2937
	
	step
		#completewith next
		.zone Alterac Mountains >>Travel to |cFFfa9602Alterac Mountains|r
		.zoneskip Alterac Mountains

	step
		.goto Alterac Mountains,63.84,60.47
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voggah Deathgrip|r
		.turnin -7142
		.target Voggah Deathgrip

	step
		.goto Alterac Mountains,63.84,60.47
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voggah Deathgrip|r
		.accept 8272
		.turnin 8272
		.isQuestTurnedIn 7142
		.target Voggah Deathgrip

	step
		.goto Alterac Mountains,63.08,59.87
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horde Warbringer|r
		.accept 8430
		.turnin 8430
		.target Horde Warbringer
		.itemcount 20558,3

	step
		.goto Alterac Mountains,63.08,59.87
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horde Warbringer|r	
		.accept 8439
		.turnin 8439
		.target Horde Warbringer
		.itemcount 20559,3
		
	step
		.goto Alterac Mountains,63.08,59.87
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horde Warbringer|r
		.accept 8369
		.turnin 8369
		.target Horde Warbringer	
		.itemcount 20560,3

	step
		.goto Alterac Mountains,62.27,58.89
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Laggrond|r
		.accept 7163
		.turnin 7163
		.target Warmaster Laggrond
		.reputation 729,friendly,<0,1 
		.isQuestTurnedIn 7161

	step
		.goto Alterac Mountains,62.2,59.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Laggrond|r
		.accept 7164
		.turnin 7164
		.target Warmaster Laggrond
		.reputation 729,honored,<0,1 
		.isQuestTurnedIn 7161

	step
		.goto Alterac Mountains,62.2,59.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Laggrond|r
		.accept 7165
		.turnin 7165
		.target Warmaster Laggrond
		.reputation 729,revered,<0,1 
		.isQuestTurnedIn 7161

	step
		.goto Alterac Mountains,62.2,59.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Laggrond|r
		.accept 7166
		.turnin 7166
		.target Warmaster Laggrond
		.reputation 729,exalted,<0,1 
		.isQuestTurnedIn 7161

	step
		#label Hillsbradlast
		.goto Alterac Mountains,62.2,59.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Laggrond|r
		.accept 7167
		.turnin 7167
		.target Warmaster Laggrond
		.reputation 729,exalted,<0,1 
		.isQuestTurnedIn 7161

	step
		.goto Alterac Mountains,65.55,55.12
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Teeka Bloodsnarl|r
		.turnin -7101
		.turnin -7124
		.turnin -7082
		.target Corporal Teeka Bloodsnarl			

--- Undercity

	step
		#completewith Undercitylast
		.zone Undercity >>Take Portal or get summon to |cFFfa9602Undercity|r
		.zoneskip Undercity

	step << Warlock
		.goto Undercity,88.9,15.9
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard Kerwin|r
		.trainer >> Train your class spells
		.target Richard Kerwin
		.xp <62,1	

	step
		.goto Undercity,71.65,29.28
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ralston Farnsley|r
		.accept 7813
		.turnin 7813
		.target Ralston Farnsley
		.itemcount 2592,60	

	step
		.goto Undercity,71.65,29.28
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ralston Farnsley|r
		.accept 7814
		.turnin 7814
		.target Ralston Farnsley
		.itemcount 4306,60		
		
	step
		.goto Undercity,71.65,29.28
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ralston Farnsley|r
		.accept 7817
		.turnin 7817
		.target Ralston Farnsley
		.itemcount 4338,60	
		
	step
		.goto Undercity,71.65,29.28
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ralston Farnsley|r
		.accept 7818
		.turnin 7818
		.target Ralston Farnsley
		.itemcount 14047,60	
		.isQuestTurnedIn 7813
		.isQuestTurnedIn 7814
		.isQuestTurnedIn 7817

	step << Rogue
		.goto Undercity,83.8,72.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carolyn Ward|r
		.trainer >> Train your class spells
		.target Carolyn Ward
		.xp <62,1

	step
		#completewith next
		.goto Undercity,47.20,59.69,0
		.goto Undercity,47.20,59.69,12,0
		.goto Undercity,43.55,68.11,12,0
		.goto Undercity,45.20,71.67,12 >>Travel toward |cRXP_FRIENDLY_Master Apothecary Faranell|r

	step
		.goto Undercity,48.80,69.28
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
		.turnin -2938
		.target Master Apothecary Faranell

	step
		.goto Undercity,48.74,71.36
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chemist Cuely|r
		.turnin 3570
		.target Chemist Cuely
		.isQuestAvailable 3570
		.isQuestTurnedIn 3569

	step << Paladin
		.goto Undercity,58.0,90.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Champion Cyssa Dawnrose|r
		.trainer >> Train your class spells
		.target Champion Cyssa Dawnrose
		.xp <62,1	
		
	step
		#label Undercitylast		

--- Thunder Bluff

	step
		#completewith Thunderlast
		.zone Thunder Bluff >> Take Portal to |cFFfa9602Thunder Bluff|r
		.zoneskip Thunder Bluff
		
	step << Mage
		.goto Thunder Bluff,22.8,14.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Shymm|r
		.trainer >> Train your class spells
		.target Archmage Shymm
		.xp <62,1

	step << Priest
		.goto Thunder Bluff,24.5,22.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai Cross|r
		.trainer >> Train your class spells
		.target Malakai Cross
		.xp <62,1
		
	step << Shaman
		.goto Thunder Bluff,22.0,18.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beram Skychaser|r
		.trainer >> Train your class spells
		.target Beram Skychaser
		.xp <62,1

	step
		.goto Thunder Bluff,43.1,42.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rumstag Proudstrider|r
		.accept 7820
		.turnin 7820
		.target Rumstag Proudstrider
		.itemcount 2592,60	

	step
		.goto Thunder Bluff,43.1,42.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rumstag Proudstrider|r
		.accept 7821
		.turnin 7821
		.target Rumstag Proudstrider
		.itemcount 4306,60		
		
	step
		.goto Thunder Bluff,43.1,42.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rumstag Proudstrider|r
		.accept 7822
		.turnin 7822
		.target Rumstag Proudstrider
		.itemcount 4338,60	
		
	step
		.goto Thunder Bluff,43.1,42.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rumstag Proudstrider|r
		.accept 7823
		.turnin 7823
		.target Rumstag Proudstrider
		.itemcount 14047,60	
		.isQuestTurnedIn 7820
		.isQuestTurnedIn 7821
		.isQuestTurnedIn 7822

	step << Druid
		.goto Thunder Bluff,77.1,30,0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kym Wildmane|r
		.trainer >> Train your class spells
		.target Kym Wildmane
		.xp <62,1

	step
		.goto Thunder Bluff,75.7,31.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara Wildmane|r
		.turnin -4987
		.turnin -4883
		.target Nara Wildmane

	step
		#label Thunderlast
		.goto Thunder Bluff,78.50,28.60
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
		.accept 3761
		.turnin 3761
		.target Arch Druid Hamuul Runetotem		
		.itemcount 11018,20

--- Swamp of Sorrows		

	step
		#completewith Swamplast
		.zone Swamp of Sorrows >> Take Portal to |cFFfa9602Swamp of Sorrows|r
		.zoneskip Swamp of Sorrows

	step
		.goto Swamp of Sorrows,45.45,55.08
		+Open your |cRXP_PICK_Mailbox|r and collect your items via "/tbc companion"
		>>Once done, or when you picked up your items yourself, complete this step manually		

	step
		.goto Swamp of Sorrows,34.28,66.17
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
		.turnin -2681
		.target Fallen Hero of the Horde

	step
		.goto Swamp of Sorrows,34.28,66.17
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
		.accept 2702
		.target Fallen Hero of the Horde	
		.isQuestTurnedIn 2681	

	step
		.goto Swamp of Sorrows,33.36,66.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Thund Splithoof|r
		.turnin -2702
		.target Corporal Thund Splithoof

	step
		.goto Swamp of Sorrows,33.36,66.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Thund Splithoof|r
		.accept 2701
		.target Corporal Thund Splithoof	
		.isQuestTurnedIn 2702	
		
	step	
		.goto Swamp of Sorrows,33.5,66.0
		>>Click |cRXP_PICK_Spectral Lockbox|r
		.turnin -2701
		
	step
		#label Swamplast
		.goto Swamp of Sorrows,34.28,66.17
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
		.accept 2721
		.target Fallen Hero of the Horde	
		.isQuestTurnedIn 2701	
		
--- Blasted Lands

	step
		#completewith Blastedlast
		.zone Blasted Lands >> Travel to |cFFfa9602Blasted Lands|r
		.zoneskip Blasted Lands

	step
		.goto Blasted Lands,50.4,14.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
		.accept 2583
		.turnin 2583
		.target Bloodmage Drazial
		.itemcount 8392,3
		.itemcount 8393,2
		.itemcount 8394,1

	step
		.goto Blasted Lands,50.4,14.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
		.accept 2581
		.turnin 2581
		.target Bloodmage Drazial
		.itemcount 8391,3
		.itemcount 8392,2
		.itemcount 8393,1

	step
		.goto Blasted Lands,50.4,14.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
		.accept 2585
		.turnin 2585
		.target Bloodmage Drazial
		.itemcount 8393,3
		.itemcount 8396,2
		.itemcount 8392,1

	step
		.goto Blasted Lands,50.6,14.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
		.accept 2601
		.turnin 2601
		.target Bloodmage Lynnore
		.itemcount 8394,10
		.itemcount 8396,2

	step
		.goto Blasted Lands,50.6,14.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
		.accept 2603
		.turnin 2603
		.target Bloodmage Lynnore
		.itemcount 8396,10
		.itemcount 8391,2

	step
		.goto Blasted Lands,69.6,30.8
		>>Kill |cRXP_ENEMY_Kirith the Damned|r inside the cave
		>>|cRXP_WARN_Skip if he or the spirit is not up as the respawntimer is 5-9min|r
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Kirith|r
		.turnin 2721
		.target Spirit of Kirith
		.mob Kirith the Damned
		.isOnQuest 2721

	step
		.goto Blasted Lands,69.6,30.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Kirith|r
		.accept 2743
		.target Spirit of Kirith
		.mob Kirith the Damned
		.isQuestTurnedIn 2721

	step
		.goto Swamp of Sorrows,34.28,66.17
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
		.turnin -2743
		.target Fallen Hero of the Horde

	step
		.goto Blasted Lands,51.8,35.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
		.accept 2521
		.turnin 2521
		.target Kum'isha the Collector
		.itemcount 8244,1

	step
		.goto Blasted Lands,51.8,35.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
		.accept 3501
		.turnin 3501
		.target Kum'isha the Collector
		.itemcount 10593,1

--- Go through Portal

	step <<tbc
		.goto Blasted Lands,58.0,55.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Dar'toon|r
		.accept 9407
		.target Warlord Dar'toon

	step <<tbc
		#completewith next
		.zone Hellfire Peninsula >> Travel to |cFFfa9602Hellfire Peninsula|r
		.zoneskip Hellfire Peninsula

	step <<tbc
		.zone Hellfire Peninsula >> Go through the Portal to |cFFfa9602Hellfire Peninsula|r and enjoy leveling! :)

]])