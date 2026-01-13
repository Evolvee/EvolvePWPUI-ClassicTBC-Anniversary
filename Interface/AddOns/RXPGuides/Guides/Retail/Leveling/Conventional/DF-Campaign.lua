RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup First Playthrough (Campaign) 60-70
#groupweight 10
#name 2) Ohn'ahran Plains Campaign
#displayname Chapter 2 - Ohn'ahran Plains Campaign
#next 3) The Azure Span Campaign
step
#completewith Ohn'ahran Plains Campaign
+Welcome to the Ohn'ahran Plains Guide of RestedXP.
step
#title Dragon Glyph
#completewith next
.goto 2023,78.40,21.18,10 >>Fly through the Dragon Glyph in the air
step
#label Ohn'ahran Plains Campaign
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,77.72,23.93
.turnin 65779 >>Turn in Into the Plains
.accept 65780 >>Accept Proving Oneself
.target Scout Tomul
step
>>Kill the |cff00ecffBlazing Proto-Dragon|r
.goto 2023,78.50,27.21
.complete 65780,1 
step
.goto 2023,78.63,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65780 >>Turn in Proving Oneself
.accept 65783 >>Accept Welcome at Our Fire
.target Scout Tomul
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,85.31,25.41
.turnin 65783 >>Turn in Welcome at Our Fire
.accept 70174 >>Accept The Shikaar
.target Scout Tomul
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,85.74,25.32
.skipgossip 181217,1
.complete 70174,1 
.target Sansok Khan
step
.goto 2023,85.73,25.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.turnin 70174 >>Turn in The Shikaar
.accept 65802 >>Accept Supplies for the Journey
.accept 65801 >>Accept Making Introductions
.target Sansok Khan
step
#title Supply 1
.goto 2023,86.17,25.32
.complete 65802,2,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru or Belika
.goto 2023,85.76,26.59
.skipgossip
.complete 65801,2 
.target Aru
step
#title Pod 1
.goto 2023,85.51,26.88
.complete 65802,1,1 
step
#title Pod 2
.goto 2023,84.98,26.63
.complete 65802,1,2 
step
#title Pod 3
.goto 2023,84.59,27.08
.complete 65802,1,3 
step
#title Supply 2
.goto 2023,84.31,27.19
.complete 65802,2,2 
step
#title Pod 4
.goto 2023,84.29,25.77
.complete 65802,1,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Nuqut
.goto 2023,83.93,25.88
.skipgossip 1
.complete 65801,3 
.target Beastmaster Nuqut
step
#title Pod 5
.goto 2023,83.76,25.09
.complete 65802,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Ehri and Farrier Roscha
.accept 65950 >>Accept Thieving Gorlocs
.goto 2023,84.40,25.01
.accept 65951 >>Accept Sole Supplier
.goto 2023,84.34,25.00
.target Apprentice Ehri
.target Farrier Roscha
step
#completewith next
+|cfff78300Avoid killing Shamans if possible. We need them later.|r
step
>>Kill |cff00ecffMudfins|r in the area. Loot the for the supplies
.goto 2023,82.30,28.97,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.60,30.82
.complete 65950,1 
step
>>Follow the arrow
.goto 2023,80.65,30.87
.complete 65951,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,80.56,30.74
.turnin 65951 >>Turn in Sole Supplier
.turnin 65950 >>Turn in Thieving Gorlocs
.accept 65953 >>Accept The Ora-cull
.accept 65954 >>Accept Release the Hounds
.accept 65955 >>Accept A Centaur's Best Friend
.target Khasar
step
>>Open the cage
.goto 2023,80.56,30.74
.complete 65955,1 
step
#completewith OhnahranPlainsReleaseTheHounds4
>>Kill |cff00ecffMudfin Shamans|r. Loot them for the totems.
.complete 65953,1 
step
#title Bakar Collar 1
.goto 2023,80.63,30.69
.complete 65954,2,1 
step
#title Bakar Freed 1
>>Open the cage
.goto 2023,81.16,29.77
.complete 65954,1,1 
step
#title Bakar Freed 2
>>Open the cage
.goto 2023,81.43,29.69
.complete 65954,1,2 
step
#title Bakar Freed 3
>>Open the cage
.goto 2023,82.22,30.27
.complete 65954,1,3 
step
#title Bakar Collar 2
.goto 2023,82.22,30.43
.complete 65954,2 
step
#label OhnahranPlainsReleaseTheHounds4
#title Bakar Freed 4
>>Open the cage
.goto 2023,82.36,30.56
.complete 65954,1,4 
step
#sticky
#label OhnahranPlainsTheOracull
#title Kill Mudfin Shamans
>>Kill |cff00ecffMudfin Shamans|r. Loot them for the totems.
.goto 2023,81.74,31.64,15,0
.goto 2023,81.99,32.17,15,0
.goto 2023,82.36,32.58,15,0
.goto 2023,81.73,30.81,15,0
#loop
.line 2023,81.74,31.64,81.99,32.17,82.36,32.58,81.73,30.81
.goto 2023,81.74,31.64,18,0
.goto 2023,81.99,32.17,18,0
.goto 2023,82.36,32.58,18,0
.goto 2023,81.73,30.81,18,0
.complete 65953,1 
step
#title Bakar Freed 5
>>Open the cage
.goto 2023,81.25,31.70
.complete 65954,1 
step
#requires OhnahranPlainsTheOracull
#completewith next
.goto 2023,83.08,32.06,10 >>Enter the cave
step
#requires OhnahranPlainsTheOracull
>>Open the cage and wait for Khasar
.goto 2023,83.38,32.40
.complete 65955,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.43,32.33
.turnin 65955 >>Turn in A Centaur's Best Friend
.turnin 65953 >>Turn in The Ora-cull
.turnin 65954 >>Turn in Release the Hounds
.accept 65952 >>Accept A Chief of Legends
.target Khasar
step
#completewith next
.goto 2023,83.08,32.06,10 >>Leave the cave
step
#sticky
#label OhnahranPlainsChiefofLegends
>>Kill |cff00ecffChief Grrlgllmesh|r
.goto 2023,82.10,31.44
.complete 65952,1 
step
>>Loot Chief Grrlgllmesh for the Medallion and use it
.collect 191127,1,66005,1
.goto 2023,82.05,31.45
.accept 66005 >>Accept Medallion of a Fallen Friend
step
#requires OhnahranPlainsChiefofLegends
#completewith next
.goto 2023,83.08,32.06,10 >>Enter the cave
step
#requires OhnahranPlainsChiefofLegends
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.44,32.33
.turnin 65952 >>Turn in A Chief of Legends
.turnin 66005 >>Turn in Medallion of a Fallen Friend
.accept 65949 >>Accept The Sole Mender
.accept 66006 >>Accept Return to Roscha
.target Khasar
step
>>Pick up the supplies
.goto 2023,83.51,32.14
.complete 66006,1 
step
#completewith next
.goto 2023,83.08,32.06,10 >>Leave the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to Timberstep Outpost. Talk to Farrier Roscha
.goto 2023,84.40,25.02
.turnin 65949 >>Turn in The Sole Mender
.turnin 66006 >>Turn in Return to Roscha
.target Farrier Roscha
step
#title Supply 3
.goto 2023,84.34,24.91
.complete 65802,2,3 
step
#title Supply 4
.goto 2023,84.37,23.12
.complete 65802,2 
step
.goto 2023,85.63,20.85
.skipgossip 1
.complete 65801,1 
step
.goto 2023,84.69,22.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul inside the hut
.turnin 65801 >>Turn in Supplies for the Journey
.turnin 65802 >>Turn in Supplies for the Journey
.accept 65803 >>Accept Toward the City
.target Scout Tomul
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,83.15,23.74
.skipgossip
.complete 65803,1 
.target Scout Tomul
step
>>You can ride with him, listen to his story, or fly directly to the first stop.
.goto 2023,75.57,31.84
.complete 65803,3 
step
.goto 2023,75.66,31.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65803 >>Turn in Toward the City
.accept 65804 >>Accept For Food and Rivalry
.target Scout Tomul
step
>>Interact with the Mysterious Paw Print
.goto 2023,76.73,31.89
.accept 70185 >>Accept Mysterious Beast
step
#completewith OhnahranPlainsMysteriousBeast
>>Kill |cff00ecffbeasts|r in the area. Loot them for their meat
*The best source of meat are Mammoths and Stomphoofs.
.complete 65804,1 
step
#completewith next
.goto 2023,77.78,35.39,10 >>Enter the cave
step
#label OhnahranPlainsMysteriousBeast
>>Kill |cff00ecffKonkhular|r. Loot him for his pelt
.goto 2023,78.22,35.24
.complete 70185,1 
.unitscan Konkhular
step
#completewith next
.goto 2023,77.78,35.39,10 >>Leave the cave
step
>>Kill |cff00ecffbeasts|r in the area. Loot them for their meat
*The best source of meat is Mammoths.
.goto 2023,79.22,30.63,40,0
.goto 2023,77.89,29.57,40,0
.goto 2023,74.62,29.06,40,0
.goto 2023,76.08,34.27,40,0
.goto 2023,77.47,32.21,40,0
.goto 40,2023,79.22,30.63,77.89,29.57,74.62,29.06,76.08,34.27,77.47,32.21
.complete 65804,1 
step
#requires OhnahranPlainsForFoodandRivalry
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,75.67,31.68
.turnin 65804 >>Turn in For Food and Rivalry
.turnin 70185 >>Turn in Mysterious Beast
.accept 65940 >>Accept By Broken Road
.target Scout Tomul
step
>>You can ride with him, listen to his story, or fly directly to the second stop.
.goto 2023,70.07,37.84
.complete 65940,2 
step
.goto 2023,69.97,37.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65940 >>Turn in By Broken Road
.accept 65805 >>Accept Connection to Ohn'ahra
.target Ohn Seshteng
step
#completewith OhnahranPlainsConnectiontoRiverReeds
+Follow the loop. Don't complete this step
.goto 2023,68.51,40.13,30,0
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
#completewith OhnahranPlainsConnectiontoRiverReeds
>>Kill |cff00ecffMudwalker Salamanthers|r. Loot them for their heart
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
#completewith next
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
>>Click on |cff00ecffJadethroat Mallards|r
.goto 2023,69.94,37.66,0,0
.complete 65805,2 
step
#label OhnahranPlainsConnectiontoRiverReeds
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
#completewith next
+Follow the loop. Don't complete this step
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
>>Kill |cff00ecffMudwalker Salamanthers|r. Loot them for their heart
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
.goto 2023,69.96,37.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65805 >>Turn in Connection to Ohn'ahra
.accept 66848 >>Accept Omens on the Wind
.target Ohn Seshteng
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,69.96,37.96
.skipgossip 184595,2
.complete 66848,1 
.target Ohn Seshteng
step
>>Place the totems
.goto 2023,69.93,37.62
.complete 66848,2 
step
>>Wait
.goto 2023,69.93,37.62
.complete 66848,3 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng and Sansok Khan
.turnin 66848 >>Turn in Omens on the Wind
.goto 2023,69.96,37.94
.accept 65806 >>Accept Maruukai
.goto 2023,70.02,38.01
.target Ohn Seshteng
.target Sansok Khan
step
>>You can ride on the Stout Riding Bakar, listen to the story, or fly directly to Marrukal.
.goto 2023,61.84,39.83
.complete 65806,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 65806 >>Turn in Maruukai
.accept 66018 >>Accept Clan Nokhud
.accept 66017 >>Accept Clan Ohn'ir
.accept 66016 >>Accept Clan Teerai
.target Sansok Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Windsage Kven
.goto 2023,62.18,36.41
.accept 70337 >>Accept Emberwatch
.target Windsage Kven
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66017 >>Turn in Clan Ohn'ir
.accept 66020 >>Accept Omens and Incense
.target Ohn Seshteng
step
#completewith next
.goto 2023,62.84,34.34,10 >>Leave the building
step
#title Sweetsuckle Bloom 1
>>Pick it up from the ground
.collect 191160,1,66020,1
.goto 2023,63.42,33.82
step
#title Sweetsuckle Bloom 2
>>Pick it up from the ground
.collect 191160,2,66020,1
.goto 2023,63.77,34.42
step
#title Sweetsuckle Bloom 3
>>Pick it up from the ground
.collect 191160,3,66020,1
.goto 2023,63.57,34.73
step
#title Sweetsuckle Bloom 4+5
>>Pick it up from the ground
.collect 191160,5,66020,1
.goto 2023,63.39,34.88
step
>>Use the |T458235:0|t[Sweetsuckle Bloom] in your bags
.use 191160
.goto 2023,62.82,33.69
.complete 66020,1 
step
>>Interact with the Incense Burner
.goto 2023,62.82,33.69
.complete 66020,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66020 >>Turn in Omens and Incense
.target Ohn Seshteng
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66016 >>Turn in Clan Teerai
.accept 66019 >>Accept Honoring Our Ancestors
.target Quariin Dotur
step
>>Pick up the Raw Game Meat
.goto 2023,59.39,37.82
.complete 66019,1 
step
>>Interact with the shade
.goto 2023,59.13,37.57
.complete 66019,2 
step
>>Pick up the Jar of Spices
.goto 2023,59.31,37.29
.complete 66019,3 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.61
.complete 66019,4 
step
>>Pick up the Basket of Spices
.goto 2023,59.39,37.37
.complete 66019,5 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,59.16,37.57
.complete 66019,6 
step
>>Pick up the Pot of Spices
.goto 2023,59.05,37.88
.complete 66019,7 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.58
.complete 66019,8 
step
>>Pick up the Game Meat
.goto 2023,59.14,37.58
.complete 66019,9 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,58.90,37.26
.complete 66019,10 
step
>>Interact with the shade
.goto 2023,59.16,37.10
.complete 66019,11 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66019 >>Turn in Honoring Our Ancestors
.target Qariin Dotur
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul and Guard Bahir
.turnin 66018 >>Turn in Clan Nokhud
.goto 2023,60.38,40.69
.accept 66021 >>Accept Unwelcome Outsider
.goto 2023,60.31,40.75
.target Scout Tomul
.target Guard Bahir
step
>>Kill |cff00ecffNokhud Fighters|r
.goto 2023,58.67,42.21,35,0
.goto 2023,59.83,42.96,35,0
.goto 2023,59.60,41.79
.complete 66021,1 
step
.goto 2023,61.98,41.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Tirren
.accept 65837 >>Accept Trouble In The Pines
.target Beastmaster Tirren
step
.goto 2023,62.43,41.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 66021 >>Turn in Unwelcome Outsider
.target Scout Tomul
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru who is following you
.goto 2023,62.43,41.71
.accept 66969 >>Accept Clans of the Plains
.target Aru
step
#completewith next
.goto 2023,62.80,40.64
.home >>Set your Hearthstone to Maruukai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.complete 66969,1 
.target Sansok Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.gossipoption 56528 
.gossipoption 56515 
.gossipoption 56537 
.gossipoption 56549 
.gossipoption 56554 
.goto 2023,61.43,39.52
.complete 66969,2 
.target Sansok Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 66969 >>Turn in Clans of the Plains
.target Sansok Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Gemisath and talk to him
.goto 2023,61.03,40.43
.accept 66948 >>Accept The Emissary's Arrival
.target Gemisath
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath
.goto 2023,61.03,40.44
.skipgossip 194927,4
.complete 66948,1 
.target Gemisath
step
.goto 2023,61.03,40.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath
.turnin 66948 >>Turn in The Emissary's Arrival
.accept 66022 >>Accept The Khanam Matra
.target Gemisath
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato on the upper level
.goto 2023,60.29,37.89
.skipgossip 186942,1
.complete 66022,1 
.target Khansguard Akato
step
.goto 2023,60.35,38.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato on the upper level
.turnin 66022 >>Turn in The Khanam Matra
.accept 66023 >>Accept Trucebreakers
.target Khansguard Akato
step
.goto 2023,59.52,38.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.accept 66024 >>Accept Covering Their Tails
.target Scout Tomul
step
#completewith next
>>Kill |cff00ecffNokhud Betrayer|r
.complete 66023,1 
step
>>Kill |cff00ecffGuard Bahir|r
.goto 2023,58.06,39.37
.complete 66024,1 
step
>>Kill |cff00ecffNokhud Betrayer|r
.goto 2023,58.85,39.09,30,0
.goto 2023,60.12,37.66,30,0
.goto 2023,62.02,39.35,30,0
.goto 2023,60.60,40.48,30,0
.goto 2023,60.12,37.66
.complete 66023,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato and Khanam Matra Sarest |cfff78300on top of the tower|r
.goto 2023,60.36,38.05
.turnin 66023 >>Turn in Trucebreakers
.turnin 66024 >>Turn in Covering Their Tails
.accept 66025 >>Accept The Nokhud Threat
.timer 19,Roleplay Duration
.target Khansguard Akato
.target Khanam Matra Sarest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest after a short roleplay
.goto 2023,60.00,37.48
.turnin 66025 >>Turn in The Nokhud Threat
.accept 66201 >>Accept Hooves of War
.target Khanam Matra Sarest
step
.pve
.goto 2023,63.47,48.63,10,0
.goto 2023,63.03,48.54
>>Kill |cff00ecffSunscale Behemoth|r in the cave under the small waterfall
.accept 69837 >>Accept Sunscale Behemoth
.complete 69837,1 
step
#completewith next
+Fly to Jebotai using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Jebotai
.goto 2023,41.89,61.80
.turnin 66201 >>Turn in Hooves of War
.accept 66222 >>Accept The Calm Before the Storm
.target Khansguard Jebotai
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>Use Gunshoes. Activate RP-Walk next to the NPCs to talk to them
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.goto 2023,41.62,56.75
.accept 66688 >>Accept Signs of the Wind
.target Elder Nazuun
step
.xp 65.5,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.goto 2023,41.62,56.75
.accept 66687 >>Accept Land of the Apex
.target Elder Nazuun
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quartermaster Gensai
.goto 2023,40.72,56.35
.skipgossip
.complete 66222,2 
.target Quartermaster Gensai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on the WANTED board
.goto 2023,39.56,56.43
.accept 71027 >>Accept WANTED: Mara'nar the Thunderous
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Hojin
.goto 2023,39.44,55.32
.skipgossip
.complete 66222,3 
.target Khansguard Hojin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbalist Agura
.goto 2023,38.49,57.41
.skipgossip
.complete 66222,1 
.target Herbalist Agura
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Khenyug
.goto 2023,37.57,59.45
.skipgossip
.complete 66222,4 
.target Scout Khenyug
step
.goto 2023,41.89,61.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Jebotai
.turnin 66222 >>Turn in The Calm Before the Storm
.accept 70229 >>Accept Boku the Mystic
.target Khansguard Jebotai
step
.goto 2023,36.81,57.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 70229 >>Turn in Boku the Mystic
.accept 66254 >>Accept Pessimistic Mystic
.target Initiate Boku
step
#title Totem 1
>>Place the totem
.goto 2023,36.71,57.12
.complete 66254,1,1 
step
#title Totem 2
>>Place the totem
.goto 2023,36.66,57.72
.complete 66254,1,2 
step
#title Totem 3
>>Place the totem
.goto 2023,37.11,57.85
.complete 66254,1,3 
step
#title Totem 4
>>Place the totem
.goto 2023,37.20,57.26
.complete 66254,1 
step
.goto 2023,36.81,57.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66254 >>Turn in Pessimistic Mystic
.accept 66224 >>Accept Mystic Mystery
.target Initiate Boku
step
>>Fly to Mara'nar the Thunderous. Kill him. Loot him for the plate
.goto 2023,42.26,47.13
.complete 71027,1 
.unitscan Mara'nar
step
.isOnQuest 66687
>>Kill |cff00ecffNimblewing Slyvern|r. Loot them for their talons
.goto 2023,43.28,46.82,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,41.70,44.86,30,0
.goto 2023,41.38,46.80,30,0
#loop
.line 2023,41.70,44.86,42.87,44.07,43.28,46.82,41.38,46.80
.goto 2023,41.70,44.86,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,43.28,46.82,30,0
.goto 2023,41.38,46.80,30,0
.complete 66687,2 
step
.isOnQuest 66687
#completewith next
.goto 2023,43.53,47.95,20 >>Enter the cave
step
.isOnQuest 66687
>>Kill the spiders and the eggs in the cave. Loot them for the webs
.goto 2023,44.04,48.47,20,0
.goto 2023,43.96,49.31,20,0
.goto 2023,43.65,50.35
.complete 66687,1 
step
#completewith next
.goto 2023,43.53,47.95,20 >>Leave the cave
step
#completewith next
.goto 2023,45.19,48.66,10 >>Fly up and enter Skaara's cave
step
.goto 2023,44.91,49.21
.complete 70783,1 
step
>>Pick up Fern Spores, Avian Feathers, and Hollow Reeds on the ground
.goto 2023,44.32,54.34,20,0
.goto 2023,45.56,52.79,20,0
.goto 2023,46.34,53.01,20,0
.goto 2023,46.94,51.43,20,0
.goto 2023,49.15,52.45
.complete 66688,1 
step
.goto 2023,49.34,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Offering Vessel
.turnin 66688 >>Turn in Signs of the Wind
step
#completewith next
.accept 70374 >>Accept Himia, the Blessed
.gossipoption 56476 >>Talk to Himia, The Blessed
.goto 2023,49.34,49.41
step
>>Kill the spawning |cff00ecffElementals|r
.goto 2023,49.34,49.41
.complete 70374,1 
step
.isOnQuest 66687
>>Kill the |cff00ecffThunderspines|r. Loot them for their scales
.goto 2023,50.57,50.14,30,0
.goto 2023,51.33,48.78,30,0
.goto 2023,51.08,47.44,30,0
.goto 2023,50.57,50.14
.complete 66687,3 
step
.goto 2023,41.63,56.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.turnin -66687 >>Turn in Land of the Apex
.turnin 70374 >>Turn in Himia, the Blessed
.target Elder Nazuun
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Khansguard Jebotai and talk to him
.goto 2023,41.89,61.80
.turnin 71027 >>Turn in WANTED: Mara'nar the Thunderous
.target Khansguard Jebotai
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>Use Gunshoes. Activate RP-Walk next to the NPCs to talk to them
step
>>Follow the arrow
.goto 2023,44.33,61.78
.complete 66224,1 
step
>>Interact with Boku's Belongings
.goto 2023,44.55,61.94
.skipgossip
.complete 66224,2 
step
>>Follow the arrow
.goto 2023,46.35,63.15
.complete 66224,3 
step
>>Interact with the Unidentified Centaur
.goto 2023,46.52,63.26
.skipgossip
.complete 66224,4 
step
>>Follow the arrow
.goto 2023,49.09,63.44
.complete 66224,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku and Tigari Khan
.turnin 66224 >>Turn in Mystic Mystery
.goto 2023,49.31,63.22
.accept 70195 >>Accept Taken By Storm
.accept 66225 >>Accept Toting Totems
.goto 2023,49.36,63.14
.target Initiate Boku
.target Tigari Khan
step
#completewith next
>>Kill |cff00ecffNokhud Mystic-Hunter|r and |cff00ecffNokhud Marauders|r. Loot them for their totems
.complete 66225,1 
step
>>Kill |cff00ecffShela the Windbinder|r. Loot her for the orders
.goto 2023,48.90,69.03
.complete 70195,1 
.complete 70195,2 
.unitscan Shela the Windbinder
step
>>Kill |cff00ecffNokhud Mystic-Hunter|r and |cff00ecffNokhud Marauders|r. Loot them for their totems
#loop
.line 2023,50.20,68.72,50.86,67.94,51.60,67.66,48.90,66.86,48.90,66.86
.goto 2023,50.20,68.72,20,0
.goto 2023,50.86,67.94,20,0
.goto 2023,51.60,67.66,20,0
.goto 2023,48.90,66.86,20,0
.goto 2023,48.90,66.86,20,0
.complete 66225,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tigari Khan
.goto 2023,49.36,63.14
.turnin 66225 >>Turn in Taken By Storm
.turnin 70195 >>Turn in Taken By Storm
.accept 66236 >>Accept Catching Wind
.target Tigari Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.goto 2023,58.11,68.97
.turnin 66236 >>Turn in Catching Wind
.accept 66257 >>Accept Fowl Sorcery
.accept 66256 >>Accept Eagle-itarian
.accept 66242 >>Accept Weather Control
.target Initiate Boku
step
#completewith OhnahranPlainsChildWagons
>>Kill |cff00ecffPrimalists|r, |cff00ecffEssences|r, and |cff00ecffInitiates|r
.goto 2023,59.95,66.08,0,0
.complete 66256,2 
.complete 66242,1 
.complete 66242,2 
step
#title Child 1 + Wagon 1
>>Destroy the binding totem and place a wind totem
.goto 2023,58.06,67.43
.complete 66256,1,1 
.complete 66257,1,1 
step
#title Wagon 2
>>Place a wind totem
.goto 2023,59.21,65.51
.complete 66257,1,2 
step
#title Child 2
>>Destroy the binding totem
.goto 2023,59.38,64.94
.complete 66256,1,2 
step
#completewith OhnahranPlainsChildWagons
>>Kill her when you see her
.goto 2023,59.90,67.02,10,0
.goto 2023,59.90,67.02,0,0
.accept 69968 >>Accept Prozela Galeshot
.complete 69968,1 
step
#title Child 3
>>Destroy the binding totem
.goto 2023,60.78,66.94
.complete 66256,1,3 
step
#title Child 4
>>Destroy the binding totem
.goto 2023,61.76,67.17
.complete 66256,1,4 
step
#title Wagon 3
>>Place a wind totem
.goto 2023,61.76,66.65
.complete 66257,1,3 
step
#title Child 5
.goto 2023,59.64,64.03
.complete 66256,1,5 
step
#label OhnahranPlainsChildWagons
#title Child 6 + Wagon 4
>>Destroy the binding totem and place a wind totem
.goto 2023,58.82,61.76
.complete 66256,1 
.complete 66257,1 
step
#sticky
#label OhnahranPlainsEagleWeatherControl
.goto 2023,58.24,64.34,25,0
.goto 2023,58.62,68.30,25,0
.goto 2023,59.95,66.08,25,0
.goto 2023,61.46,65.40,25,0
.goto 2023,59.95,66.08,0,0
.complete 66256,2 
.complete 66242,1 
.complete 66242,2 
step
>>Kill her when you see her
.goto 2023,59.90,67.02
.accept 69968 >>Accept Prozela Galeshot
.complete 69968,1 
.unitscan Prozela Galeshott
step
#title Dragon Glyph: Windsong Rise
.goto 2023,61.49,64.33
.achievement 16576,10 >>Pick up the Dragon Glyph in the air
step
#requires OhnahranPlainsEagleWeatherControl
.goto 2023,60.66,63.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66242 >>Turn in Eagle-itarian
.turnin 66256 >>Turn in Eagle-itarian
.turnin 66257 >>Turn in Fowl Sorcery
.accept 66258 >>Accept Oh No, Ohn'ahra!
.target Initiate Boku
step
>>Kill every mob around Ohn'ahra (the big bird). The easiest (and not a lot slower) is to wait at the waypoint position for the big mobs to spawn
*You can skip the next cutscene
.goto 2023,61.04,64.88
.complete 66258,1 
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>Wait for the roleplay
.complete 66258,2 
step
.goto 2023,61.42,62.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66258 >>Turn in Oh No, Ohn'ahra!
.accept 66259 >>Accept A Storm of Ill Tidings
.target Initiate Boku
step
#completewith next
+Fly to Maruukai with your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,60.00,37.48
.skipgossip 181198,1
.complete 66259,1 
.target Khanam Matra Sarest
step
.goto 2023,60.00,37.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.turnin 66259 >>Turn in A Storm of Ill Tidings
.timer 65,Report Duration
.accept 66327 >>Accept Chasing the Wind
.target Khanam Matra Sarest
step
#completewith next
.goto 2023,60.01,37.48
.gossipoption 107753 >>Talk to Khanam Matra Sarest. |cffffff00Skip this step if he starts talking by himself|r
step
#sticky
#label OhnahranPlainsChasingtheWind
.complete 66327,1 
step
.xp 65.25,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tIgnore the report. Fly to Telemancer Aerilyn and talk to her
.goto 2023,65.99,25.09
.turnin 70337 >>Turn in Emberwatch
.accept 65890 >>Accept The Nelthazan Ruins
.target Telemancer Aerilyn
step
.xp 65.25,1
#completewith OhnahranPlainsToolsoftheTirade
>>Kill mobs in the area
.accept 65892 >>Accept The Sundered Asunder (Bonus Objective)
.complete 65892,1 
step
.xp 65.25,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.00,18.29
.turnin 65890 >>Turn in The Nelthazan Ruins
.accept 65893 >>Accept The Relic Inquiry
.accept 65891 >>Accept Tools of the Tirade
.target Skyscribe Adenedal
step
.isOnQuest 65893
#completewith OhnahranPlainsToolsoftheTirade
>>Kill |cff00ecffTaraseks|r and |cff00ecffSundered mobs|r. Loot them for the fragments
.goto 2023,63.03,17.67,0,0
.complete 65893,1 
step
.isOnQuest 65891
#title Tool Deployed 1
>>Interact with the Waygate Rubble
.goto 2023,63.56,17.18
.complete 65891,1,1 
step
.isOnQuest 65891
#title Tool Deployed 2
>>Interact with the Waygate Rubble
.goto 2023,63.43,16.73
.complete 65891,1,2 
step
.isOnQuest 65891
#title Tool Deployed 3
>>Interact with the Waygate Rubble
.goto 2023,63.50,15.10
.complete 65891,1,3 
step
.isOnQuest 65891
#title Tool Deployed 4
>>Interact with the Waygate Rubble
.goto 2023,63.05,14.78
.complete 65891,1,4 
step
.isOnQuest 65891
#label OhnahranPlainsToolsoftheTirade
#title Tool Deployed 5
>>Interact with the Waygate Rubble
.goto 2023,62.79,15.68
.complete 65891,1 
step
.isOnQuest 65892
#completewith next
>>Kill mobs in the area
.goto 2023,63.57,15.34,0,0
.accept 65892 >>Accept The Sundered Asunder (Bonus Objective)
.complete 65892,1 
step
.isOnQuest 65893
>>Kill |cff00ecffTaraseks|r and |cff00ecffSundered mobs|r. Loot them for the fragments
.goto 2023,62.28,17.53,20,0
.goto 2023,62.90,17.90,20,0
.goto 2023,63.77,16.47,20,0
.goto 2023,63.57,15.34
.complete 65893,1 
step
.isOnQuest 65892
>>Kill mobs in the area
#loop
.line 2023,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.accept 65892 >>Accept The Sundered Asunder (Bonus Objective)
.complete 65892,1 
step
#requires OhnahranPlainsTheSunderedAsunder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.01,18.26
.turnin -65891 >>Turn in Tools of the Tirade
.turnin -65893 >>Turn in The Relic Inquiry
.target Skyscribe Adenadal
step
#requires OhnahranPlainsChasingtheWind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,60.00,37.47
.skipgossip
.complete 66327,2 
.target Khanam Matra Sarest
step
#completewith next
+Fly to Khanam Matra Sarest with your dragonriding mount
step
#label OhnahranPlainsMeetKhananMatra
>>Follow the arrow
.goto 2023,73.04,40.54
.complete 66327,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,73.03,40.58
.turnin 66327 >>Turn in Chasing the Wind
.accept 70244 >>Accept Nokhud Can Come of This
.target Khanam Matra Sarest
step
>>Kill mobs (5%) and heal survivors (10%)
.goto 2023,74.91,41.13,20,0
.goto 2023,74.79,39.48,25,0
.goto 2023,76.00,41.59,20,0
.goto 2023,74.91,41.13
.complete 70244,1 
step
>>Kill |cff00ecffWarmonger Kharad|r
.goto 2023,76.14,40.87
.complete 70244,2 
.unitscan Warmonger Kharad
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
*If you can't turn in the quest, relog!
.goto 2023,76.70,40.93
.turnin 70244 >>Turn in Nokhud Can Come of This
.accept 66329 >>Accept Blowing of the Horn
.target Khanam Matra Sarest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,76.70,40.93
.skipgossip 188068,1
.complete 66329,1 
.target Khanam Matra Sarest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,76.70,40.93
.turnin 66329 >>Turn in Blowing of the Horn
.accept 66328 >>Accept Green Dragon Down
.target Khanam Matra Sarest
step
#completewith next
+Fly to the green dragons with your dragonriding mount
step
>>Follow the arrow
.goto 2023,72.48,49.82
.complete 66328,1 
step
#completewith OhnahranPlainsGreenDragonDown
.goto 2023,72.34,50.33
.gossipoption 56207 >> Talk to Khanam Matra Sarest and fly to the next waypoint 
.timer 50,Listen
.complete 66328,2 
.target Khanam Matra Sarest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sentinel Olekk and Scout Watu
.goto 2023,81.03,58.91
.turnin -65837 >>Turn in Trouble In The Pines
.accept 66681 >>Accept Tempests Abound
.accept 66680 >>Accept Counting Sheep
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo and buy 1 Diced Meat
.goto 2023,80.64,58.76
.buy 193890,1 
.complete 66680,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wish
.goto 2023,81.03,59.53
.skipgossip
.complete 66680,2 
.target Wish
step
#completewith OhnahranPlainsCountingSheep
>>Kill mostly |cff00ecffStags|r, |cff00ecffDoes|r and |cff00ecffVultures|r. Avoid the bears
.complete 66681,1 
step
#completewith OhnahranPlainsCountingSheep
>>Kill a |cff00ecffStormbound Beast|r. Loot it for the Stormbound Shards. Click it in your inventory
.collect 194031,1,66689,1
.accept 66689 >>Accept More Than a Rock
step
#title Argali Saved 1
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali
.goto 2023,80.49,63.11
.use 193892
.complete 66680,3,1 
step
#title Argali Saved 2
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali
.goto 2023,80.60,65.37
.use 193892
.complete 66680,3,2 
step
#title Argali Saved 3
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali
.goto 2023,81.21,65.83
.use 193892
.complete 66680,3,3 
step
#title Argali Saved 4
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali
.goto 2023,81.83,66.19
.use 193892
.complete 66680,3,4 
step
#label OhnahranPlainsCountingSheep
#title Argali Saved 5
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali
.goto 2023,82.45,64.41
.use 193892
.complete 66680,3 
step
>>Kill mostly |cff00ecffStags|r, |cff00ecffDoes|r and |cff00ecffVultures|r. Avoid the bears
.goto 2023,82.39,64.69,25,0
#loop
.line 2023,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.complete 66681,1 
step
>>Kill a |cff00ecffStormbound Beast|r. Loot it for the Stormbound Shards. Click it in your inventory
.collect 194031,1,66689,1
.goto 2023,82.34,64.59
.accept 66689 >>Accept More Than a Rock
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66680 >>Turn in Counting Sheep
.turnin 66681 >>Turn in Tempests Abound
.turnin 66689 >>Turn in More Than A Rock
.accept 66683 >>Accept Last Resort Analysis
.target Scout Watu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Basan
.goto 2023,80.96,59.52
.skipgossip 1
.complete 66683,1 
.target Basan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo
.goto 2023,80.64,58.76
.skipgossip 2
.complete 66683,3 
.target Sondo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nakeena
.goto 2023,80.44,57.89
.skipgossip 2
.complete 66683,2 
.target Nakeena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66683 >>Turn in Last Resort Analysis
.target Scout Watu
step
#completewith OhnahranPlainsWiththeWindatOurBacks
.goto 2023,81.33,59.30
.home >>Set your Hearthstone to Pinewood Post
step
#label OhnahranPlainsGreenDragonDown
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest and Merithra
.turnin 66328 >>Turn in Green Dragon Down
.goto 2023,72.35,50.33
.accept 66344 >>Accept With the Wind at Our Backs
.goto 2023,72.46,50.77
.target Khanam Matra Sarest
.target Merithra
step
#completewith next
+|cfff78300If you're an experienced dragon rider, dismount 5 seconds after talking to Gerithus and use your dragonriding mount to get there.|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gerithus
.goto 2023,72.31,50.70
.skipgossip
.timer 100,Flight Duration
.complete 66344,1 
.target Gerithus
step
#label OhnahranPlainsWiththeWindatOurBacks
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.goto 2023,28.26,57.69
.turnin 66344 >>Turn in With the Wind at Our Backs
.accept 70220 >>Accept Shady Sanctuary
.target Merithra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guard-Captain Alowen
.goto 2023,29.08,55.26
.skipgossip
.complete 70220,1 
.target Guard-Captain Alowen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Isidra
.goto 2023,30.19,55.69
.skipgossip
.complete 70220,3 
.target Isidra the Mender
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sariosa
.goto 2023,29.83,57.65
.skipgossip 1
.complete 70220,2 
.target Sariosa
step
#completewith next
>>|cfff78300Skip this step if you want to use your dragonriding mount instead of flying up to Viranikus|r
.skipgossip
.goto 2023,29.28,56.44,8 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aronus who will fly you to Viranikus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Viranikus
.goto 2023,29.77,59.99
.skipgossip
.complete 70220,5 
.target Viranikus
step
.goto 2023,28.26,57.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.turnin 70220 >>Turn in Shady Sanctuary
.accept 66331 >>Accept The Primalist Front
.target Merithra
step
#completewith next
+Fly to Belika with your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Belika and Boku
.skipgossip
.complete 66331,3 
.goto 2023,27.57,46.00
.complete 66331,2 
.goto 2023,25.72,44.26
.target Belika
.target Boku
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng and |cfff78300immediately leave the vehicle|r
.goto 2023,26.18,40.06
.skipgossip
.complete 66331,4 
.target Ohn Seshteng
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.goto 2023,25.63,40.52
.skipgossip
.complete 66331,5 
.target Merithra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest and Merithra
.goto 2023,25.67,40.43
.turnin 66331 >>Turn in The Primalist Front
.accept 66333 >>Accept Justice for Solethus
.target Khanam Matra Sarest
.target Merithra
step
#completewith OhnahranPlainsDeconstructAdditionalPylons
>>Kill enemies in the area. |cffffff00Use a guild banner when you're about to pull a lot of mobs|r
.complete 66421,1 
step
#completewith OhnahranPlainsJusticeForSelthus
*Possible Warmonger spawn points are marked on your (Mini)map
.goto 2023,24.67,41.17,0
.goto 2023,24.03,40.74,0
.goto 2023,24.21,39.85,0
.goto 2023,24.90,39.76,0
.goto 2023,24.41,38.42,0
.goto 2023,25.45,37.64,0
.complete 66333,1 
step
#title Ballista 1/3
.goto 2023,24.81,39.89
.complete 66333,2,1 
step
#title Ballista 2/3
.goto 2023,24.36,38.48
.complete 66333,2,2 
step
#label OhnahranPlainsJusticeForSelthus
#title Ballista 3/3
.goto 2023,25.44,37.74
.complete 66333,2 
step
*Possible Warmonger spawn points are marked on your (Mini)map
.goto 2023,24.67,41.17,0
.goto 2023,24.03,40.74,0
.goto 2023,24.21,39.85,0
.goto 2023,24.90,39.76,0
.goto 2023,24.41,38.42,0
.goto 2023,25.45,37.64,0
.goto 2023,24.56,40.41,30,0
.goto 2023,24.06,40.75,30,0
.goto 2023,24.20,37.65,30,0
.goto 2023,25.47,37.86,30,0
.goto 2023,24.56,40.41,30,0
.goto 2023,24.06,40.75,30,0
.goto 2023,24.20,37.65,30,0
.goto 2023,25.47,37.86,30,0
.goto 2023,24.56,40.41
.complete 66333,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest next to you (she should be following you)
.turnin 66333 >>Turn in Justice for Solethus
.accept 66784 >>Accept Starve the Storm
.accept 66335 >>Accept Deconstruct Additional Pylons
.target Khanam Matra Sarest
step
>>Fly to the pylon and use your |cffffff00[ExtraActionButton]|r next to the pylon
*To avoid pulling mobs wait for Khanam Matra Sarest before dismounting
.goto 2023,23.93,39.47
.complete 66335,1 
step
>>Kill the three Summoners inside the cave in front of the big portal
.goto 2023,24.76,35.09
.complete 66784,1 
step
>>Fly to the pylon and use your |cffffff00[ExtraActionButton]|r next to the pylon
*To avoid pulling mobs wait for Khanam Matra Sarest before dismounting
.goto 2023,23.11,37.53
.complete 66335,2 
step
#label OhnahranPlainsDeconstructAdditionalPylons
>>Fly to the pylon and use your |cffffff00[ExtraActionButton]|r next to the pylon
*To avoid pulling mobs wait for Khanam Matra Sarest before dismounting
.goto 2023,21.43,37.53
.complete 66335,3 
step
>>Finish the bonus objective
.goto 2023,21.43,37.53
.complete 66421,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest next to you (she should be following you)
.goto 2023,21.43,37.53
.turnin 66335 >>Turn in Deconstruct Additional Pylons
.turnin 66784 >>Turn in Starve the Storm
.accept 66337 >>Accept Stormbreaker
.target Khanam Matra Sarest
step
#completewith next
+Kill the Stormbound Proto-Drake to force Koroleth to dismount
step
>>Kill |cff00ecffKoroleth|r
.goto 2023,22.37,39.81
.complete 66337,1 
.unitscan Koroleth
step
#completewith next
+|cfff78300If you're an experienced dragon rider, dismount 5 seconds after talking to Gerithus and use your dragonriding mount to get there|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gerithus
.goto 2023,22.92,40.23
.skipgossip
.timer 34,Flight Duration
.complete 66337,2 
.target Gerithus
step
.goto 2023,25.65,48.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.turnin 66337 >>Turn in Stormbreaker
.accept 66336 >>Accept The Isle of Emerald
.target Merithra
step
#completewith next
+Fly to Merithra with your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.goto 2023,22.14,50.97
.turnin 66336 >>Turn in The Isle of Emerald
.accept 66783 >>Accept Renewal of Vows
.target Merithra
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,22.29,50.88
.skipgossip 1
.cast 375466 >>Pick up the spear she's holding in her right hand
.target Sansok Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marithra
.goto 2023,22.14,50.98
.skipgossip 188181,1
.complete 66783,1 
.target Marithra
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tigari Khan
.goto 2023,22.36,51.05
.skipgossip 3
.cast 375472 >>Pick up the feather he's holding in his right hand
.target Tigari Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marithra
.goto 2023,22.14,50.98
.skipgossip 188181,1
.complete 66783,2 
.target Marithra
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,22.34,50.96
.skipgossip 3
.timer 5,Roleplay Duration
.cast 375470 >>Pick up the horn she's holding in her right hand
.target Khanam Matra Sarest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marithra
.goto 2023,22.14,50.98
.skipgossip 188181,1
.complete 66783,3 
.target Marithra
step
#completewith OhnahranPlainsRenewalofVows
*You can skip the next cutscene (Esc -> Yes)
step
#completewith next
.goto 2023,22.14,50.98
.cast 391289 >>Pick up the Everbloom Soil from Merithra
step
#label OhnahranPlainsRenewalofVows
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,22.33,50.96
.skipgossip
.complete 66783,4 
.target Khanam Matra Sarest
step
.goto 2023,22.14,50.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.turnin 66783 >>Turn in Renewal of Vows
.accept 66340 >>Accept Into the Azure
.target Merithra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,22.34,50.95
.accept 66339 >>Accept The Nokhud Offensive: The Wind Belongs to the Sky
.target Khanam Matra Sarest
step
#completewith next
.hs >>Hearth to Pinewood Post
step
#completewith next
+Fly to Masud the Wise with your dragonriding mount
step
.goto 2023,71.65,80.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Masud the Wise
.turnin 66340 >>Turn in Into the Azure
.accept 65686 >>Accept To the Azure Span
.target Masud the Wise
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup Threads of Fate 60-70
#name B2Ohn'ahran Plains ToF
#displayname Chapter 2 - Ohn'ahran Plains ToF
#next C3Azure Span ToF
step
#completewith Ohn'ahran Plains Campaign
+Welcome to the Ohn'ahran Plains Guide of RestedXP.
step
.goto 2022,48.27,88.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Taurasza
.accept 65779 >>Accept Into the Plains
step
#label Ohn'ahran Plains Campaign
.goto 2023,77.73,23.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65779 >>Turn in Into the Plains
.accept 65780 >>Accept Proving Oneself
step
>>Kill the |cff00ecffBlazing Proto-Dragon|r
.goto 2023,78.50,27.21
.complete 65780,1 
step
.goto 2023,78.63,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65780 >>Turn in Proving Oneself
.accept 65783 >>Accept Welcome at Our Fire
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,85.31,25.41
.turnin 65783 >>Turn in Welcome at Our Fire
.accept 70174 >>Accept The Shikaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,85.74,25.32
.skipgossip 181217,1
.complete 70174,1 
step
.goto 2023,85.73,25.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.turnin 70174 >>Turn in The Shikaar
.accept 65802 >>Accept Supplies for the Journey
.accept 65801 >>Accept Making Introductions
step
#title Supply 1
.goto 2023,86.17,25.32
.complete 65802,2,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru or Belika
.goto 2023,85.76,26.59
.skipgossip
.complete 65801,2 
step
#title Pod 1
.goto 2023,85.51,26.88
.complete 65802,1,1 
step
#title Pod 2
.goto 2023,84.98,26.63
.complete 65802,1,2 
step
#title Pod 3
.goto 2023,84.59,27.08
.complete 65802,1,3 
step
#title Supply 2
.goto 2023,84.31,27.19
.complete 65802,2,2 
step
#title Pod 4
.goto 2023,84.29,25.77
.complete 65802,1,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Nuqut
.goto 2023,83.93,25.88
.skipgossip 1
.complete 65801,3 
step
#title Pod 5
.goto 2023,83.76,25.09
.complete 65802,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Ehri and Farrier Roscha
.accept 65950 >>Accept Thieving Gorlocs
.goto 2023,84.40,25.01
.accept 65951 >>Accept Sole Supplier
.goto 2023,84.34,25.00
step
#completewith next
+|cfff78300Avoid killing Shamans if possible|r
step
>>Kill |cff00ecffMudfins|r in the area. Loot the for the supplies
.goto 2023,82.30,28.97,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.60,30.82
.complete 65950,1 
step
>>Follow the arrow
.goto 2023,80.65,30.87
.complete 65951,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,80.56,30.74
.turnin 65951 >>Turn in Sole Supplier
.turnin 65950 >>Turn in Thieving Gorlocs
.accept 65953 >>Accept The Ora-cull
.accept 65954 >>Accept Release the Hounds
.accept 65955 >>Accept A Centaur's Best Friend
step
>>Open the cage
.goto 2023,80.56,30.74
.complete 65955,1 
step
#completewith OhnahranPlainsReleaseTheHounds4
>>Kill |cff00ecffMudfin Shamans|r. Loot them for the totems.
.complete 65953,1 
step
#title Bakar Collar 1
.goto 2023,80.63,30.69
.complete 65954,2,1 
step
#title Bakar Freed 1
>>Open the cage
.goto 2023,81.16,29.77
.complete 65954,1,1 
step
#title Bakar Freed 2
>>Open the cage
.goto 2023,81.43,29.69
.complete 65954,1,2 
step
#title Bakar Freed 3
>>Open the cage
.goto 2023,82.22,30.27
.complete 65954,1,3 
step
#title Bakar Collar 2
.goto 2023,82.22,30.43
.complete 65954,2 
step
#label OhnahranPlainsReleaseTheHounds4
#title Bakar Freed 4
>>Open the cage
.goto 2023,82.36,30.56
.complete 65954,1,4 
step
#sticky
#label OhnahranPlainsTheOracull
#title Kill Mudfin Shamans
>>Kill |cff00ecffMudfin Shamans|r. Loot them for the totems.
.goto 2023,81.74,31.64,15,0
.goto 2023,81.99,32.17,15,0
.goto 2023,82.36,32.58,15,0
.goto 2023,81.73,30.81,15,0
#loop
.line 2023,81.74,31.64,81.99,32.17,82.36,32.58,81.73,30.81
.goto 2023,81.74,31.64,18,0
.goto 2023,81.99,32.17,18,0
.goto 2023,82.36,32.58,18,0
.goto 2023,81.73,30.81,18,0
.complete 65953,1 
step
#title Bakar Freed 5
>>Open the cage
.goto 2023,81.25,31.70
.complete 65954,1 
step
#requires OhnahranPlainsTheOracull
#completewith next
.goto 2023,83.08,32.06,10 >>Enter the cave
step
#requires OhnahranPlainsTheOracull
>>Open the cage and wait for Khasar
.goto 2023,83.38,32.40
.complete 65955,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.43,32.33
.turnin 65955 >>Turn in A Centaur's Best Friend
.turnin 65953 >>Turn in The Ora-cull
.turnin 65954 >>Turn in Release the Hounds
.accept 65952 >>Accept A Chief of Legends
step
#completewith next
.goto 2023,83.08,32.06,10 >>Leave the cave
step
#sticky
#label OhnahranPlainsChiefofLegends
>>Kill |cff00ecffChief Grrlgllmesh|r
.goto 2023,82.10,31.44
.complete 65952,1 
step
>>Loot Chief Grrlgllmesh for the Medallion and use it
.collect 191127,1,66005,1
.goto 2023,82.05,31.45
.accept 66005 >>Accept Medallion of a Fallen Friend
step
#requires OhnahranPlainsChiefofLegends
#completewith next
.goto 2023,83.08,32.06,10 >>Enter the cave
step
#requires OhnahranPlainsChiefofLegends
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.44,32.33
.turnin 65952 >>Turn in A Chief of Legends
.turnin 66005 >>Turn in Medallion of a Fallen Friend
.accept 65949 >>Accept The Sole Mender
.accept 66006 >>Accept Return to Roscha
step
>>Pick up the supplies
.goto 2023,83.51,32.14
.complete 66006,1 
step
#completewith next
.goto 2023,83.08,32.06,10 >>Leave the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to Timberstep Outpost. Talk to Farrier Roscha
.goto 2023,84.40,25.02
.turnin 65949 >>Turn in The Sole Mender
.turnin 66006 >>Turn in Return to Roscha
step
#title Supply 3
.goto 2023,84.34,24.91
.complete 65802,2,3 
step
#title Supply 4
.goto 2023,84.37,23.12
.complete 65802,2 
step
.goto 2023,85.63,20.85
.skipgossip 1
.complete 65801,1 
step
.goto 2023,84.69,22.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul inside the hut
.turnin 65801 >>Turn in Supplies for the Journey
.turnin 65802 >>Turn in Supplies for the Journey
.accept 65803 >>Accept Toward the City
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,83.15,23.74
.skipgossip
.complete 65803,1 
step
>>You can ride with him, listen to his story, or fly directly to the first stop.
.goto 2023,75.57,31.84
.complete 65803,3 
step
.goto 2023,75.66,31.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65803 >>Turn in Toward the City
.accept 65804 >>Accept For Food and Rivalry
step
>>Interact with the Mysterious Paw Print
.goto 2023,76.73,31.89
.accept 70185 >>Accept Mysterious Beast
step
#completewith OhnahranPlainsMysteriousBeast
>>Kill |cff00ecffbeasts|r in the area. Loot them for their meat
*The best source of meat are Mammoths and Stomphoofs.
.complete 65804,1 
step
#completewith next
.goto 2023,77.78,35.39,10 >>Enter the cave
step
#label OhnahranPlainsMysteriousBeast
>>Kill |cff00ecffKonkhular|r. Loot him for his pelt
.goto 2023,78.22,35.24
.complete 70185,1 
step
#completewith next
.goto 2023,77.78,35.39,10 >>Leave the cave
step
>>Kill |cff00ecffbeasts|r in the area. Loot them for their meat
*The best source of meat is Mammoths.
.goto 2023,79.22,30.63,40,0
.goto 2023,77.89,29.57,40,0
.goto 2023,74.62,29.06,40,0
.goto 2023,76.08,34.27,40,0
.goto 2023,77.47,32.21,40,0
.goto 40,2023,79.22,30.63,77.89,29.57,74.62,29.06,76.08,34.27,77.47,32.21
.complete 65804,1 
step
#requires OhnahranPlainsForFoodandRivalry
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,75.67,31.68
.turnin 65804 >>Turn in For Food and Rivalry
.turnin 70185 >>Turn in Mysterious Beast
.accept 65940 >>Accept By Broken Road
step
>>You can ride with him, listen to his story, or fly directly to the second stop.
.goto 2023,70.07,37.84
.complete 65940,2 
step
.goto 2023,69.97,37.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65940 >>Turn in By Broken Road
.accept 65805 >>Accept Connection to Ohn'ahra
step
#completewith OhnahranPlainsConnectiontoRiverReeds
+Follow the loop. Don't complete this step
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
#completewith OhnahranPlainsConnectiontoRiverReeds
>>Kill |cff00ecffMudwalker Salamanthers|r. Loot them for their heart
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
#completewith next
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
>>Click on |cff00ecffJadethroat Mallards|r
.goto 2023,69.94,37.66,0,0
.complete 65805,2 
step
#label OhnahranPlainsConnectiontoRiverReeds
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
#completewith next
+Follow the loop. Don't complete this step
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
>>Kill |cff00ecffMudwalker Salamanthers|r. Loot them for their heart
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
.goto 2023,69.96,37.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65805 >>Turn in Connection to Ohn'ahra
.accept 66848 >>Accept Omens on the Wind
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,69.96,37.96
.skipgossip 184595,2
.complete 66848,1 
step
>>Place the totems
.goto 2023,69.93,37.62
.complete 66848,2 
step
>>Wait
.goto 2023,69.93,37.62
.complete 66848,3 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng and Sansok Khan
.turnin 66848 >>Turn in Omens on the Wind
.goto 2023,69.96,37.94
.accept 65806 >>Accept Maruukai
.goto 2023,70.02,38.01
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Telemancer Aerilyn and talk to her
.goto 2023,65.99,25.09
.accept 65890 >>Accept The Nelthazan Ruins
step
#completewith OhnahranPlainsToolsoftheTirade
>>Kill mobs in the area
.accept 65892 >>Accept The Sundered Asunder (Bonus Objective)
.complete 65892,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.00,18.29
.turnin 65890 >>Turn in The Nelthazan Ruins
.accept 65893 >>Accept The Relic Inquiry
.accept 65891 >>Accept Tools of the Tirade
step
#completewith OhnahranPlainsToolsoftheTirade
>>Kill |cff00ecffTaraseks|r and |cff00ecffSundered mobs|r. Loot them for the fragments
.goto 2023,63.03,17.67,0,0
.complete 65893,1 
step
#title Tool Deployed 1
>>Interact with the Waygate Rubble
.goto 2023,63.56,17.18
.complete 65891,1,1 
step
#title Tool Deployed 2
>>Interact with the Waygate Rubble
.goto 2023,63.43,16.73
.complete 65891,1,2 
step
#title Tool Deployed 3
>>Interact with the Waygate Rubble
.goto 2023,63.50,15.10
.complete 65891,1,3 
step
#title Tool Deployed 4
>>Interact with the Waygate Rubble
.goto 2023,63.05,14.78
.complete 65891,1,4 
step
#label OhnahranPlainsToolsoftheTirade
#title Tool Deployed 5
>>Interact with the Waygate Rubble
.goto 2023,62.79,15.68
.complete 65891,1 
step
#completewith next
>>Kill mobs in the area
.goto 2023,63.57,15.34,0,0
.accept 65892 >>Accept The Sundered Asunder (Bonus Objective)
.complete 65892,1 
step
>>Kill |cff00ecffTaraseks|r and |cff00ecffSundered mobs|r. Loot them for the fragments
.goto 2023,62.28,17.53,20,0
.goto 2023,62.90,17.90,20,0
.goto 2023,63.77,16.47,20,0
.goto 2023,63.57,15.34
.complete 65893,1 
step
>>Kill mobs in the area
#loop
.line 2023,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.accept 65892 >>Accept The Sundered Asunder (Bonus Objective)
.complete 65892,1 
step
#requires OhnahranPlainsTheSunderedAsunder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.01,18.26
.turnin 65891 >>Turn in Tools of the Tirade
.turnin 65893 >>Turn in The Relic Inquiry
step
>>You can ride on the Stout Riding Bakar, listen to the story, or fly directly to Marrukal.
.goto 2023,61.84,39.83
.complete 65806,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 65806 >>Turn in Maruukai
.accept 66018 >>Accept Clan Nokhud
.accept 66017 >>Accept Clan Ohn'ir
.accept 66016 >>Accept Clan Teerai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66017 >>Turn in Clan Ohn'ir
.accept 66020 >>Accept Omens and Incense
step
#completewith next
.goto 2023,62.84,34.34,10 >>Leave the building
step
#title Sweetsuckle Bloom 1
>>Pick it up from the ground
.collect 191160,1,66020,1
.goto 2023,63.42,33.82
step
#title Sweetsuckle Bloom 2
>>Pick it up from the ground
.collect 191160,2,66020,1
.goto 2023,63.77,34.42
step
#title Sweetsuckle Bloom 3
>>Pick it up from the ground
.collect 191160,3,66020,1
.goto 2023,63.57,34.73
step
#title Sweetsuckle Bloom 4+5
>>Pick it up from the ground
.collect 191160,5,66020,1
.goto 2023,63.39,34.88
step
>>Use the |T458235:0|t[Sweetsuckle Bloom] in your bags
.use 191160
.goto 2023,62.82,33.69
.complete 66020,1 
step
>>Interact with the Incense Burner
.goto 2023,62.82,33.69
.complete 66020,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66020 >>Turn in Omens and Incense
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66016 >>Turn in Clan Teerai
.accept 66019 >>Accept Honoring Our Ancestors
step
>>Pick up the Raw Game Meat
.goto 2023,59.39,37.82
.complete 66019,1 
step
>>Interact with the shade
.goto 2023,59.13,37.57
.complete 66019,2 
step
>>Pick up the Jar of Spices
.goto 2023,59.31,37.29
.complete 66019,3 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.61
.complete 66019,4 
step
>>Pick up the Basket of Spices
.goto 2023,59.39,37.37
.complete 66019,5 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,59.16,37.57
.complete 66019,6 
step
>>Pick up the Pot of Spices
.goto 2023,59.05,37.88
.complete 66019,7 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.58
.complete 66019,8 
step
>>Pick up the Game Meat
.goto 2023,59.14,37.58
.complete 66019,9 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,58.90,37.26
.complete 66019,10 
step
>>Interact with the shade
.goto 2023,59.16,37.10
.complete 66019,11 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66019 >>Turn in Honoring Our Ancestors
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul and Guard Bahir
.turnin 66018 >>Turn in Clan Nokhud
.goto 2023,60.38,40.69
.accept 66021 >>Accept Unwelcome Outsider
.goto 2023,60.31,40.75
step
>>Kill |cff00ecffNokhud Fighters|r
.goto 2023,58.67,42.21,35,0
.goto 2023,59.83,42.96,35,0
.goto 2023,59.60,41.79
.complete 66021,1 
step
.goto 2023,63.12,34.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Windsage Ordven
.accept 65906 >>Accept A Disgruntled Initiate
step
.goto 2023,61.98,41.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Tirren
.accept 65837 >>Accept Trouble In The Pines
step
.goto 2023,62.43,41.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 66021 >>Turn in Unwelcome Outsider
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru who is following you
.goto 2023,62.43,41.71
.accept 66969 >>Accept Clans of the Plains
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.complete 66969,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.gossipoption 56528 
.gossipoption 56515 
.gossipoption 56537 
.gossipoption 56549 
.gossipoption 56554 
.goto 2023,61.43,39.52
.complete 66969,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 66969 >>Turn in Clans of the Plains
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Gemisath and talk to him
.goto 2023,61.03,40.43
.accept 66948 >>Accept The Emissary's Arrival
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath
.goto 2023,61.03,40.44
.skipgossip 194927,4
.complete 66948,1 
step
.goto 2023,61.03,40.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath
.turnin 66948 >>Turn in The Emissary's Arrival
.accept 66022 >>Accept The Khanam Matra
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato
.goto 2023,60.29,37.89
.skipgossip 186942,1
.complete 66022,1 
step
.goto 2023,60.35,38.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato
.turnin 66022 >>Turn in The Khanam Matra
.accept 66023 >>Accept Trucebreakers
step
.goto 2023,59.52,38.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.accept 66024 >>Accept Covering Their Tails
step
#completewith next
>>Kill |cff00ecffNokhud Betrayer|r
.complete 66023,1 
step
>>Kill |cff00ecffGuard Bahir|r
.goto 2023,58.06,39.37
.complete 66024,1 
step
>>Kill |cff00ecffNokhud Betrayer|r
.goto 2023,58.85,39.09,30,0
.goto 2023,60.12,37.66,30,0
.goto 2023,62.02,39.35,30,0
.goto 2023,60.60,40.48,30,0
.goto 2023,60.12,37.66
.complete 66023,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato and Khanam Matra Sarest |cfff78300on top of the tower|r
.goto 2023,60.36,38.05
.turnin 66023 >>Turn in Trucebreakers
.turnin 66024 >>Turn in Covering Their Tails
.accept 66025 >>Accept The Nokhud Threat
.timer 19,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest after a short roleplay
.goto 2023,60.00,37.48
.turnin 66025 >>Turn in The Nokhud Threat
.accept 66201 >>Accept Hooves of War
step
.goto 2023,63.47,48.63,10,0
.goto 2023,63.03,48.54
>>Kill |cff00ecffSunscale Behemoth|r in the cave under the small waterfall
.accept 69837 >>Accept Sunscale Behemoth
.complete 69837,1 
step
.isWorldQuestAvailable 2023,70549
>>Kill the bees, the plums or use the |cffffff00[ExtraActionButton]|r
.goto 2023,63.41,56.67
.complete 70549,2 
step
#completewith next
+Fly to Jebotai using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Jebotai
.goto 2023,41.89,61.80
.turnin -66201 >>Turn in Hooves of War
step
.isQuestTurnedIn 66201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Jebotai
.goto 2023,41.89,61.80
.accept 66222 >>Accept The Calm Before the Storm
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.goto 2023,41.62,56.75
.accept 66688 >>Accept Signs of the Wind
.accept 66687 >>Accept Land of the Apex
step
.isOnQuest 66222
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quartermaster Gensai
.goto 2023,40.72,56.35
.skipgossip
.complete 66222,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on the WANTED board
.goto 2023,39.56,56.43
.accept 71027 >>Accept WANTED: Mara'nar the Thunderous
step
.isOnQuest 66222
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Hojin
.goto 2023,39.44,55.32
.skipgossip
.complete 66222,3 
step
.isOnQuest 66222
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbalist Agura
.goto 2023,38.49,57.41
.skipgossip
.complete 66222,1 
step
.isOnQuest 66222
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Khenyug
.goto 2023,37.57,59.45
.skipgossip
.complete 66222,4 
step
>>Fly to Mara'nar the Thunderous. Kill him. Loot him for the plate
.goto 2023,42.26,47.13
.complete 71027,1 
step
>>Kill |cff00ecffNimblewing Slyvern|r. Loot them for their talons
.goto 2023,43.28,46.82,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,41.70,44.86,30,0
.goto 2023,41.38,46.80,30,0
#loop
.line 2023,41.70,44.86,42.87,44.07,43.28,46.82,41.38,46.80
.goto 2023,41.70,44.86,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,43.28,46.82,30,0
.goto 2023,41.38,46.80,30,0
.complete 66687,2 
step
#completewith next
.goto 2023,43.53,47.95,20 >>Enter the cave
step
>>Kill the spiders and the eggs in the cave. Loot them for the webs
.goto 2023,44.04,48.47,20,0
.goto 2023,43.96,49.31,20,0
.goto 2023,43.65,50.35
.complete 66687,1 
step
#completewith next
.goto 2023,43.53,47.95,20 >>Leave the cave
step
#completewith next
.goto 2023,45.19,48.66,10 >>Fly up and enter Skaara's cave
step
.goto 2023,44.91,49.21
.complete 70783,1 
step
>>Pick up Fern Spores, Avian Feathers and Hollow Reeds on the ground
.goto 2023,44.32,54.34,25,0
.goto 2023,45.56,52.79,25,0
.goto 2023,46.34,53.01,25,0
.goto 2023,46.94,51.43,25,0
.goto 2023,49.15,52.45
.complete 66688,1 
step
.goto 2023,49.34,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Offering Vessel
.turnin 66688 >>Turn in Signs of the Wind
.accept 70374 >>Accept Himia, the Blessed
step
#completewith next
.gossipoption 56476 >>Talk to Himia, The Blessed
.goto 2023,49.34,49.41
step
>>Kill the spawning |cff00ecffElementals|r
.goto 2023,49.34,49.41
.complete 70374,1 
step
>>Kill the |cff00ecffThunderspines|r. Loot them for their scales
.goto 2023,50.57,50.14,30,0
.goto 2023,51.33,48.78,30,0
.goto 2023,51.08,47.44,30,0
.goto 2023,50.57,50.14
.complete 66687,3 
step
.pvp
.isWorldQuestAvailable 2023,70209
>>Kill the ducks (or players) in the area
.goto 2023,42.87,36.02,35,0
.goto 2023,42.55,34.09,35,0
.goto 2023,46.31,33.35,35,0
#loop
.line 2023,42.87,36.02,42.55,34.09,46.31,33.35,
.goto 2023,42.87,36.02,35,0
.goto 2023,42.55,34.09,35,0
.goto 2023,46.31,33.35,35,0
.complete 70209,1 
step
.goto 2023,41.63,56.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.turnin 66687 >>Turn in Land of the Apex
.turnin 70374 >>Turn in Himia, the Blessed
.accept 66834 >>Accept Rellen, the Learned
step
>>Click on the basket
.goto 2023,40.11,57.86
.complete 66834,1 
step
>>Pick up the torch and use your |cffffff00[ExtraActionButton]|r
.goto 2023,40.21,57.89
.complete 66834,2 
.complete 66834,3 
step
>>Pick up the spear and use your |cffffff00[ExtraActionButton]|r
.goto 2023,40.06,57.77
.complete 66834,4 
.complete 66834,5 
step
>>Pick up the bow and use your |cffffff00[ExtraActionButton]|r
.goto 2023,40.05,57.73
.complete 66834,6 
.complete 66834,7 
step
.goto 2023,41.64,56.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.turnin 66834 >>Turn in Rellen, the Learned
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Khansguard Jebotai and talk to him
.goto 2023,41.89,61.80
.turnin -66222 >>Turn in The Calm Before the Storm
.turnin 71027 >>Turn in WANTED: Mara'nar the Thunderous
step
.goto 2023,40.93,61.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Yuvari
.accept 66651 >>Accept Up to No-khud
step
.goto 2023,39.04,66.01
>>Return to Initiate Zorig
.turnin 66651 >>Turn in Up to No-khud
.accept 66652 >>Accept Return to Mender
step
>>Kill |cff00ecffTombcaller Ganzaya
.goto 2023,37.07,65.70
.complete 66652,1 
step
>>Pick up the spear
.goto 2023,37.03,65.47
.complete 66652,2 
step
.goto 2023,39.05,66.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Zorig
.turnin 66652 >>Turn in Return to Mender
.accept 66654 >>Accept Desecrator Annihilator
.accept 66655 >>Accept Reagents of De-Necromancy
step
#completewith OhnahranPlainsClumpofSacredSoil
>>Kill mobs in the area. Loot them for the weapons and skulls
.complete 66654,2 
.complete 66655,1 
step
#completewith OhnahranPlainsClumpofSacredSoil
>>Kill |cff00ecffCentaur|r in the area
.complete 66654,1 
step
#title Soil 1/6
>>Pick up the Disturbed Sacred Soil
.goto 2023,36.88,64.12
.complete 66655,2,1 
step
#title Soil 2/6
>>Pick up the Disturbed Sacred Soil
.goto 2023,35.92,64.72
.complete 66655,2,2 
step
#title Soil 3/6
>>Pick up the Disturbed Sacred Soil
.goto 2023,35.38,65.32
.complete 66655,2,3 
step
#title Soil 4/6
>>Pick up the Disturbed Sacred Soil
.goto 2023,34.45,65.76
.complete 66655,2,4 
step
#title Soil 5/6
>>Pick up the Disturbed Sacred Soil
.goto 2023,34.33,67.13
.complete 66655,2,5 
step
#label OhnahranPlainsClumpofSacredSoil
#title Soil 6/6
>>Pick up the Disturbed Sacred Soil
.goto 2023,35.07,67.22
.complete 66655,2 
step
#completewith next
>>Kill mobs in the area. Loot them for the weapons and skulls
.goto 2023,34.47,66.86
.complete 66654,2 
.complete 66655,1 
step
>>Kill |cff00ecffCentaur|r in the area
.goto 2023,34.87,69.06,30,0
.goto 2023,36.43,67.85,30,0
.goto 2023,36.41,64.20,30,0
.goto 2023,33.06,67.29,30,0
#loop
.line 2023,34.87,69.06,36.43,67.85,36.41,64.20,33.06,67.29
.goto 2023,34.87,69.06,30,0
.goto 2023,36.43,67.85,30,0
.goto 2023,36.41,64.20,30,0
.goto 2023,33.06,67.29,30,0
.complete 66654,1 
step
>>Kill mobs in the area. Loot them for the weapons and skulls
#loop
.line 2023,34.87,69.06,36.43,67.85,36.41,64.20,33.06,67.29
.goto 2023,34.87,69.06,30,0
.goto 2023,36.43,67.85,30,0
.goto 2023,36.41,64.20,30,0
.goto 2023,33.06,67.29,30,0
.complete 66654,2 
.complete 66655,1 
step
.goto 2023,33.76,65.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Zorig
.turnin 66655 >>Turn in Reagents of De-Necromancy
.turnin 66654 >>Turn in Desecrator Annihilator
.accept 69936 >>Accept Zambul, Head Vandal
step
>>Kill |cff00ecffOverseer Zambul|r
.goto 2023,35.60,65.06,25,0
.goto 2023,36.83,67.88,35,0
.goto 2023,33.91,69.38,35,0
.goto 2023,34.13,66.12,35,0
#loop
.line 2023,35.60,65.06,36.83,67.88,33.91,69.38,34.13,66.12
.goto 2023,35.60,65.06,35,0
.goto 2023,36.83,67.88,35,0
.goto 2023,33.91,69.38,35,0
.goto 2023,34.13,66.12,35,0
.unitscan Overseer Zambul
.complete 69936,1 
step
.goto 2023,33.76,65.36
>>Return to Initiate Zorig
.turnin 69936 >>Turn in Zambul, Head Vandal
step
.goto 2023,56.26,75.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.turnin -65906 >>Turn in A Disgruntled Initiate
.accept 65901 >>Accept Sneaking Out
step
#title Totem 1/3
>>Place the totem
.goto 2023,56.67,76.29
.complete 65901,1,1 
step
#title Totem 2/3
>>Place the totem
.goto 2023,57.36,76.33
.complete 65901,1,2 
step
#title Totem 3/3
>>Place the totem
.goto 2023,57.00,75.47
.complete 65901,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.goto 2023,56.25,75.95
.skipgossip 190014,3
.complete 65901,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow the arrow to the north and talk to Initiate Radiya
.goto 2023,54.78,66.41
.turnin 65901 >>Turn in Sneaking Out
.accept 65907 >>Accept Favorite Fruit
step
>>Pick up the Wild Bushfruits from the bushes on the ground
.goto 2023,54.02,70.80
.complete 65907,1 
step
>>Use |T134001:0|t on the Mudstompers
.goto 2023,54.61,67.59
.use 192743
.complete 65907,2 
step
.goto 2023,54.78,66.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.turnin 65907 >>Turn in Favorite Fruit
.accept 65770 >>Accept A Promise Is A Promise
step
.goto 2023,54.78,66.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya again
.skipgossip
.complete 65770,1 
step
>>Follow the arrow
.goto 2023,52.98,63.88
.complete 65770,2 
step
.goto 2023,52.02,63.24
>>Return to Godoloto
.turnin 65770 >>Turn in A Promise Is A Promise
step
>>Kill her when you see her
.goto 2023,59.90,67.02
.accept 69968 >>Accept Prozela Galeshot
.complete 69968,1 
step
#title Dragon Glyph: Windsong Rise
.goto 2023,61.49,64.33
.achievement 16576,10 >>Pick up the Dragon Glyph in the air
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sentinel Olekk and Scout Watu
.goto 2023,81.03,58.91
.turnin -65837 >>Turn in Trouble In The Pines
.accept 66681 >>Accept Tempests Abound
.accept 66680 >>Accept Counting Sheep
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo and buy 1 Diced Meat
.goto 2023,80.64,58.76
.buy 193890,1
.complete 66680,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wish
.goto 2023,81.03,59.53
.skipgossip
.complete 66680,2 
step
#completewith OhnahranPlainsCountingSheep
>>Kill mostly |cff00ecffStags|r, |cff00ecffDoes|r and |cff00ecffVultures|r. Avoid the bears
.complete 66681,1 
step
#completewith OhnahranPlainsCountingSheep
>>Kill a |cff00ecffStormbound Beast|r. Loot it for the Stormbound Shards. Click it in your inventory
.collect 194031,1,66689,1
.accept 66689 >>Accept More Than a Rock
step
#title Argali Saved 1
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali
.goto 2023,80.49,63.11
.use 193892
.complete 66680,3,1 
step
#title Argali Saved 2
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali
.goto 2023,80.60,65.37
.use 193892
.complete 66680,3,2 
step
#title Argali Saved 3
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali
.goto 2023,81.21,65.83
.use 193892
.complete 66680,3,3 
step
#title Argali Saved 4
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali
.goto 2023,81.83,66.19
.use 193892
.complete 66680,3,4 
step
#label OhnahranPlainsCountingSheep
#title Argali Saved 5
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali
.goto 2023,82.45,64.41
.use 193892
.complete 66680,3 
step
>>Kill mostly |cff00ecffStags|r, |cff00ecffDoes|r and |cff00ecffVultures|r. Avoid the bears
.goto 2023,82.39,64.69,25,0
#loop
.line 2023,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.complete 66681,1 
step
>>Kill a |cff00ecffStormbound Beast|r. Loot it for the Stormbound Shards. Click it in your inventory
.collect 194031,1,66689,1
.goto 2023,82.34,64.59
.accept 66689 >>Accept More Than a Rock
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66680 >>Turn in More Than A Rock
.turnin 66681 >>Turn in Tempests Abound
.turnin 66689 >>Turn in More Than A Rock
.accept 66683 >>Accept Last Resort Analysis
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Basan
.goto 2023,80.96,59.52
.skipgossip 1
.complete 66683,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo
.goto 2023,80.64,58.76
.skipgossip 2
.complete 66683,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nakeena
.goto 2023,80.44,57.89
.skipgossip 2
.complete 66683,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66683 >>Turn in Last Resort Analysis
.accept 65836 >>Accept Show of Storm
step
>>Follow the arrow
.goto 2023,83.62,60.66
.complete 65836,1 
step
>>Kill the |cff00ecffStormed Blackpaw|r
.goto 2023,83.99,60.79
.complete 65836,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,83.98,60.73
.turnin 65836 >>Turn in Show of Storm
.accept 66684 >>Accept Storm Chasing
step
#completewith next
>>Kill the |cff00ecffPrimalist Forces|r
.goto 2023,84.89,62.83,0,0
.complete 66684,1 
step
>>Click on the Storm Pylon
.goto 2023,85.03,64.14
.complete 66684,2 
step
#completewith next
>>Kill the |cff00ecffPrimalist Forces|r
.goto 2023,84.89,62.83
.complete 66684,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,80.85,58.96
.turnin 66684 >>Turn in Storm Chasing
step
.isWorldQuestAvailable 2023,70146
>>Kill mobs in the area
.goto 2023,83.27,55.61,25,0
.goto 2023,83.71,53.87,25,0
.goto 2023,84.92,53.38,25,0
.goto 2023,85.88,54.09,25,0
.goto 2023,84.53,55.87,25,0
#loop
.line 2023,83.27,55.61,83.71,53.87,84.92,53.38,85.88,54.09,84.53,55.87
.goto 2023,83.27,55.61,25,0
.goto 2023,83.71,53.87,25,0
.goto 2023,84.92,53.38,25,0
.goto 2023,85.88,54.09,25,0
.goto 2023,84.53,55.87,25,0
.accept 70146 >>Accept Highlands Rebuttal (Bonus Objective)
.complete 70146,1 
step
.isWorldQuestAvailable 2023,70638
>>Kill |cff00ecffUnleashed Storms|r and |cff00ecffWindfiends|r
.goto 2023,74.09,71.38
.complete 70638,1 
.complete 70638,2 
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup First Playthrough (Campaign) 60-70
#name 4) Thaldraszus Campaign
#displayname Chapter 4 - Thaldraszus Campaign (End)
step
#completewith next
+Welcome to the Thaldraszus Guide of RestedXP.
step
.isOnQuest 66244
.itemcount 140192,1
.cast 222695 >>Use your Dalaran Hearthstone
step << Alliance
.isOnQuest 66244
.itemcount 140192,1
.goto 627,39.55,63.17
.zone 84 >>Take the portal to Stormwind
step << Alliance
.isOnQuest 66244
.itemcount 140192,1
.goto 84,48.88,93.44
.zone 2112 >>Take the portal to Valdrakken
step << Horde
.isOnQuest 66244
.itemcount 140192,1
.goto 627,55.28,24.02
.zone 85 >>Take the portal to Orgrimmar
step << Horde
.isOnQuest 66244
.itemcount 140192,1
.goto 85,57.12,87.38
.zone 2112 >>Take the portal to Valdrakken
step
.isOnQuest 66244
.zoneskip 2024,1
.itemcount 104299,1
#completewith ThaldraszusToValdrakken
.goto 2024,37.02,60.47
.cast 126389 >>Use your Goblin Glider
.cast 148537 >>Afterwards use your Falling Flame
.zone 2025 >>Fly to Thaldraszus
step
.zoneskip 2024,1
.isOnQuest 66244
.itemcount 140192,<1
#completewith ThaldraszusToValdrakken
.goto 2024,37.07,60.82
.fly Pinewood Post, Ohnahran Plains >>Fly to Pinewood Post, Ohnahran Plains
step
.xp 70,1
.goto 2112,48.09,59.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hot Springs Spa Promoter
.accept 72067 >>Accept Relaxation Time!
step
.isOnQuest 66244
#label ThaldraszusToValdrakken
>>Follow the arrow while dragonriding
.goto 2112,54.48,47.90
.complete 66244,1 
step
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2112,58.15,34.90
.turnin -66244 >>Turn in To Valdrakken
.accept 66159 >>Accept A Message Most Dire
.skipgossip 187678,1
.complete 66159,1 
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder and Captain Drine
.turnin 66159 >>Turn in A Message Most Dire
.goto 2112,58.15,34.90
.accept 66166 >>Accept Eyes and Ears
.accept 66163 >>Accept Nowhere to Hide
.goto 2112,59.39,34.83
.target Alexstrasza the Life-Binder
.target Captain Drine
step
#title Dragon Glyph: Valdrakken
.goto 2112,59.52,38.27
.achievement 16578,4 >>Pick up the Dragon Glyph |cffffff00above you above the tower|r
step
#sticky
#label ThaldraszusNowheretoHide
>>Use |T317244:0:0|tRevealing Dragon's Eye
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cff00ff00Valdrakken Citizens|r. The spies are marked on your (mini)map (so open your map and look for the step number!)
.use 198859
.goto 2112,54.72,61.41,0
.goto 2112,51.12,62.54,0
.goto 2112,48.43,58.09,0
.goto 2112,50.54,50.77,0
.goto 2112,48.85,47.73,0
.goto 2112,35.85,56.65,0
.goto 2112,36.17,64.03,0
.goto 2112,41.60,65.28,0
.goto 2112,39.93,71.38,0
.goto 2112,37.98,71.29,0
.goto 2112,49.17,76.43,0
.goto 2112,52.35,76.87,0
.goto 2112,54.31,70.02,0
.goto 2112,40.11,51.80,0
.goto 2112,27.45,60.38,0
.goto 2112,25.16,64.89,0
.goto 2112,32.18,68.50,0
.goto 2112,31.40,62.95,0
.skipgossip
.complete 66163,1 
.complete 66163,2 
step
#completewith next
.goto 2112,55.50,57.34,15 >>Glide down with your dragonriding mount and enter the bank
step
>>Interact with the storage chest
.goto 2112,59.18,54.69
.complete 66166,2 
step
#completewith next
.goto 2112,48.43,49.90,8 >>Enter the inn
step
>>Interact with the Goblet
.goto 2112,46.94,47.74
.complete 66166,3 
step
#completewith next
.goto 2112,47.45,46.22
.home >>Set your Hearthstone to The Roasted Ram
step
#completewith next
.goto 2112,48.43,49.90,8 >>Leave the inn
step
>>Interact with the Consortium Ledger
.goto 2112,34.66,61.30
.complete 66166,1 
step
#requires ThaldraszusNowheretoHide
.goto 2112,54.72,47.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66163 >>Turn in Nowhere to Hide
.turnin 66166 >>Turn in Eyes and Ears
.accept 66167 >>Accept Southern Exposure
.target Captain Drine
step
>>Follow the arrow
.goto 2025,35.80,82.12
.complete 66167,1 
step
>>Interact with Guardian Velomir
.goto 2025,35.85,82.56
.complete 66167,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,35.85,82.56
.turnin 66167 >>Turn in Southern Exposure
.accept 66169 >>Accept Vengeance, Served Hot
.accept 66246 >>Accept The Fog of Battle
.target Guardian Velomir
step
#completewith ThaldraszusLookoutMordren
>>Kill |cff00ecffMagmasworn Primalists|r
.goto 2025,36.65,84.36,0,0
.complete 66169,1 
step
>>Interact with the |cff00ff00Mangled Corpse|r
#title Unit Found 1
.goto 2025,36.25,83.73
.skipgossip
.complete 66246,1,1 
step
#completewith next
+Fly up with your dragonriding mount
step
>>Interact with the |cff00ff00Mangled Corpse|r
#title Unit Found 2
.goto 2025,35.76,84.19
.skipgossip
.complete 66246,1,2 
step
>>Interact with the |cff00ff00Mangled Corpse|r
#title Unit Found 3
.goto 2025,36.46,85.39
.skipgossip
.complete 66246,1,3 
step
#label ThaldraszusLookoutMordren
>>Fly up the tower and kill |cff00ecffLookout Mordren|r. Skip if you deal low damage
.goto 2025,36.80,85.59
.accept 69967 >>Accept Lookout Mordren
.complete 69967,1 
step
#title Dragon Glyph: South Hold Gate
.goto 2025,35.56,85.55
.achievement 16578,3 >>Pick up the Dragon Glyph |cffffff00at the top of the tower|r
step
>>Kill |cff00ecffMagmasworn Primalists|r
.goto 2025,36.67,83.38,20,0
.goto 2025,36.65,84.36,20,0
.goto 2025,36.08,84.59,20,0
.goto 2025,36.67,83.38
.complete 66169,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir.
.goto 2025,37.62,83.08
.turnin 66169 >>Turn in Vengeance, Served Hot
.turnin 66246 >>Turn in The Fog of Battle
.accept 66245 >>Accept Remember the Fallen
.target Guardian Velomir
step
>>Interact with the Magmasworn Spear
.goto 2025,37.85,83.26
.accept 66247 >>Accept Slightly Used Weapons
step
>>Glide down and talk to Private Shikzar. Look for him up & down the road. Skip if you deal low damage
.goto 2025,37.54,86.05,100,0
.goto 2025,37.44,82.26,100,0
.goto 2025,37.54,86.05,100,0
.goto 2025,37.44,82.26
.skipgossip
.accept 70986 >>Accept Private Shikzar
.complete 70986,1 
step
.goto 2025,38.56,83.41
>>Interact with the Coil of Heavy Rope
.accept 66248 >>Accept Tying Things Together
step
#completewith ThaldraszusRemembertheThingsTogether
>>Kill |cff00ecffMagmasworn Rockcleaver|r. Loot them for their spears.
.goto 2025,38.70,84.41,0,0
.complete 66247,1 
step
#title |T1408443:0:0|tSignet 1
>>Interact with the corpse on the ground
.goto 2025,38.89,84.05
.complete 66245,1,1 
step
#title |T1119938:0:0|tRope 1
.goto 2025,39.14,84.03
.complete 66248,1,1 
step
#title |T1408443:0:0|tSignet 2
>>Interact with the corpse on the ground
.goto 2025,39.37,83.93
.complete 66245,1,2 
step
#title |T1119938:0:0|tRope 2
.goto 2025,39.47,83.83
.complete 66248,1,2 
step
#title |T1408443:0:0|tSignet 3
>>Interact with the corpse on the ground
.goto 2025,39.22,83.63
.complete 66245,1,3 
step
#title |T1408443:0:0|tSignet 4
>>Interact with the corpse on the ground
.goto 2025,39.21,83.18
.complete 66245,1,4 
step
#title |T1119938:0:0|tRope 3
.goto 2025,39.45,82.52
.complete 66248,1,3 
step
#title |T1408443:0:0|tSignet 5
>>Interact with the corpse on the ground
.goto 2025,39.69,82.10
.complete 66245,1,5 
step
#title |T1408443:0:0|tSignet 6
>>Interact with the corpse on the ground
.goto 2025,39.47,81.77
.complete 66245,1,6 
step
#title |T1408443:0:0|tSignet 7
>>Interact with the corpse on the ground
.goto 2025,39.00,81.90
.complete 66245,1,7 
step
#title |T1408443:0:0|tSignet 7 + |T1119938:0:0|tRope 4
>>Interact with the corpse on the ground
.goto 2025,39.09,82.54
.complete 66245,1,7 
.complete 66248,1,4 
step
#title |T1119938:0:0|tRope 5
.goto 2025,38.74,82.18
.complete 66248,1 
step
#label ThaldraszusRemembertheThingsTogether
#title |T1408443:0:0|tSignet 8
>>Interact with the corpse on the ground
.goto 2025,39.00,81.90
.complete 66245,1 
step
>>Kill |cff00ecffMagmasworn Rockcleaver|r. Loot them for their spears.
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
#loop
.line 2025,39.24,83.73,39.05,86.20,39.46,82.15,38.47,83.06,39.09,83.09,38.56,84.65
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
.goto 2025,38.56,84.65,20,0
.complete 66247,1 
step
.goto 2025,37.63,83.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.turnin 66245 >>Turn in Remember the Fallen
.turnin 66247 >>Turn in Slightly Used Weapons
.turnin 66248 >>Turn in Tying Things Together
.accept 66249 >>Accept Clear the Sky
.target Guardian Velomir
step
>>Mount the Siege Scorpion
.goto 2025,40.88,83.88
.complete 66249,1 
step
>>Look around and spam |T1412205:0:0|tSiege Bolt (1) to kill |cff00ecffMagmasworn Trueborn|r
.goto 2025,40.88,83.88
.complete 66249,2 
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.56,85.48
.turnin 66249 >>Turn in Clear the Sky
.accept 66250 >>Accept Where's The Chief?
.target Guardian Velomir
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
*You can skip the next cinematic
.goto 2025,40.19,85.16
.skipgossip
.complete 66250,1 
.target Guardian Velomir
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.13
.turnin 66250 >>Turn in Where's The Chief?
.accept 66251 >>Accept Fire Fighter
.target Guardian Velomir
step
>>Use a range ability to pull him down
.goto 2025,40.12,86.61
.complete 66251,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.14
.turnin 66251 >>Turn in Fire Fighter
.accept 66252 >>Accept Reporting In
.target Guardian Velomir
step
#completewith next
.cooldown item,6489,<1,1
.hs >>Hearth to Valdrakken
step
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.goto 2112,55.94,39.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66252 >>Turn in Reporting In
.target Captain Drine
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2112,61.56,39.13
.accept 66320 >>Accept The Flow of Time
.target Nozdormu
step
#title Dragon Glyph: Gelikyr Overlook
.goto 2025,52.70,67.41
.achievement 16578,11 >>Pick up the Dragon Glyph above the lower bridge
step
#title Dragon Glyph: Passage of Time
.goto 2025,55.71,72.20
.achievement 16578,12 >>Pick up the Dragon Glyph at the entrance of the Shifting Sands
step
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie and wait for the roleplay
>>|cffffff00Spend your Dragon Glyphs while waiting for the roleplay|r
.skipgossip 187100,1
.timer 44,Roleplay Duration
.complete 66320,1 
.target Chromie
step
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 66320 >>Turn in The Flow of Time
.target Chromie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2025,57.53,78.79
.accept 66080 >>Accept Temporal Difficulties
.target Andantenormu
step
>>Be careful not to get knocked off
.goto 2025,55.60,77.33
.accept 69873 >>Accept Henlare (Elite Objective)
.complete 69873,1 
step
>>Follow the arrow
.goto 2025,54.99,75.64
.complete 66080,1 
step
.goto 2025,54.96,75.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66080 >>Turn in Temporal Difficulties
.accept 70136 >>Accept Haven't Got Time For the Pain
.target Siaszerathel
step
#sticky
#label ThaldraszusHaventGotTimeForStaff
>>Pick up the staff
.goto 2025,52.72,76.86,0,0
.complete 70136,1 
step
>>Kill the |cff00ecffCrazed Alpha|r
.goto 2025,52.69,76.81
.complete 70136,3 
step
#requires ThaldraszusHaventGotTimeForStaff
>>Pick up the notes
.goto 2025,53.18,77.39
.complete 70136,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,54.96,75.65
.turnin 70136 >>Turn in Haven't Got Time For the Pain
.accept 66082 >>Accept Time in a Bottle
.accept 66081 >>Accept Time is Running Out
.target Siaszerathel
step
#sticky
#label ThaldraszusTimeinaBottle
.goto 2025,54.25,76.62,0,0
>>Kill mobs in the area and run through the Time Mote (glowing orbs)
*Sadly others can steal your orbs :(
.complete 66082,1 
step
#title Collector 1
.goto 2025,55.07,76.76
.complete 66081,1,1 
step
#title Collector 2
.goto 2025,55.57,76.80
.complete 66081,1,2 
step
#title Collector 3
.goto 2025,56.48,78.08
.complete 66081,1,3 
step
#title Collector 4
.goto 2025,55.60,78.95
.complete 66081,1,4 
step
#title Collector 5
.goto 2025,55.02,78.81
.complete 66081,1,5 
step
#title Collector 6
.goto 2025,55.20,77.85
.complete 66081,1,6 
step
#title Collector 7
.goto 2025,54.34,77.86
.complete 66081,1,7 
step
#title Collector 8
.goto 2025,54.25,76.62
.complete 66081,1 
step
#requires ThaldraszusTimeinaBottle
.goto 2025,57.45,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66082 >>Turn in Time in a Bottle
.turnin 66081 >>Turn in Time is Running Out
.timer 10,Roleplay Duration
.target Siaszerathel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu after a short roleplay
.goto 2025,57.52,78.79
.accept 66083 >>Accept Feels Like the First Time
.timer 20,Roleplay Duration
.target Andantenormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Andantenormu and talk to him
.goto 2025,57.58,78.37
.skipgossip
.complete 66083,1 
.target Andantenormu
step
>>Interact with the Temporal Collector
.goto 2025,57.68,78.33
.complete 66083,2 
step
>>Interact with the Crystal Focus
.goto 2025,57.66,78.39
.complete 66083,3 
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>Interact with the Time-Lost Artifact
.goto 2025,57.64,78.46
.complete 66083,4 
.timer 90,Roleplay Duration
step
>>Wait until Andantenormu brings you back. You can also go through the time portal
.complete 66083,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Andantenormu and talk to him
.goto 2025,57.52,78.79
.turnin 66083 >>Turn in Feels Like the First Time
.accept 66084 >>Accept Times Like These
.target Andantenormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,57.45,78.92
.accept 66085 >>Accept If We Could Turn Back Time
.target Siaszerathel
step
#completewith next
.goto 2025,57.62,79.02
.fp >>Get the Shifting Sands Flight Path
step
#completewith ThaldraszusIfWeCouldTurnBackTime
>>Kill mostly |cff00ecffmurlocs|r in the area. Loot them for the residue
.complete 66084,1 
step
>>Interact with the Time Rift
.goto 2025,58.59,78.21
.complete 66085,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,59.80,79.31
.skipgossip
.timer 5,Roleplay Duration
.complete 66085,2 
.target Siaszerathel
step
>>Interact with the Time Rift
.goto 2025,60.00,79.28
.complete 66085,3 
step
>>Interact with the Time Rift
.goto 2025,59.98,77.20
.complete 66085,4 
step
#label ThaldraszusIfWeCouldTurnBackTime
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu
.goto 2025,59.95,77.23
.skipgossip
.complete 66085,5 
.target Aeonormu
step
>>Kill mostly |cff00ecffmurlocs|r in the area. Loot them for the residue
.goto 2025,59.81,78.84,25,0
.goto 2025,58.58,77.11,25,0
.goto 2025,58.30,78.80,25,0
.goto 2025,59.96,79.27,25,0
.goto 2025,59.43,78.17
.complete 66084,1 
step
#requires ThaldraszusTimesLikeThese
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Siaszerathel
.turnin 66084 >>Turn in Times Like These
.goto 2025,57.52,78.79
.turnin 66085 >>Turn in If We Could Turn Back Time
.goto 2025,57.45,78.92
.target Andantenormu
.target Siaszerathel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu
.goto 2025,57.55,78.87
.accept 66087 >>Accept Closing Time
.target Aeonormu
step
>>Focus on the closing Time Rifts and buffing |cff00ff00Bronze Warders|r with the |cffffff00[ExtraActionButton]|r
*You can also kill mobs
.goto 2025,57.17,81.02,20,0
.goto 2025,57.74,81.17,20,0
.goto 2025,56.84,82.16,20,0
.goto 2025,56.95,84.29,20,0
.goto 2025,57.68,84.86,20,0
.goto 2025,57.88,83.81,20,0
.goto 2025,57.88,84.55
.complete 66087,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu and Andantenormu
.turnin 66087 >>Turn in Closing Time
.goto 2025,57.55,78.87
.accept 65935 >>Accept Catching Up to Chromie
.goto 2025,57.52,78.80
.target Andantenormu
.target Aeonormu
step
>>Fly to Chromie
.goto 2025,59.64,81.51
.complete 65935,1 
.target Chromie
step
.goto 2025,59.57,81.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 65935 >>Turn in Catching Up to Chromie
.accept 65948 >>Accept Cracks in Time
.accept 65947 >>Accept Time-Locked Timewalkers
.target Chromie
step
.goto 2025,59.56,82.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.accept 66646 >>Accept Quelling Causalities
.target Andantenormu
step
#completewith ThaldraszusCracksInTime
>>Kill |cff00ecffTimelings|r and |cff00ecffTimeless Causalities|r
.complete 66646,1 
step
#title Timewalker 1
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,59.01,82.77
.complete 65947,1,1 
step
#title Timewalker 2
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,58.72,82.44
.complete 65947,1,2 
step
#title Timewalker 3
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,58.38,82.14
.complete 65947,1,3 
step
#title Timewalker 4
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,58.15,82.86
.complete 65947,1,4 
step
>>Use the |cffffff00[ExtraActionButton]|r and move away from the crystal
.goto 2025,58.46,83.10
.complete 65948,1 
step
>>Interact with the Temporal Crystals on the ground to collect 50 energy.
.goto 2025,58.41,82.98
.complete 65948,3,50 
step
#title Timewalker 5
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.31,81.39
.complete 65947,1,5 
step
>>Use the |cffffff00[ExtraActionButton]|r and move away from the crystal
.goto 2025,60.76,80.48
.complete 65948,2 
step
#completewith ThaldraszusTimeLockedTimewalkers
>>Interact with the Temporal Crystals on the ground to collect the missing 50 energy.
.goto 2025,60.68,80.37,0,0
.complete 65948,3 
step
#title Timewalker 6
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.87,80.02
.complete 65947,1,6 
step
#title Timewalker 7
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.46,79.74
.complete 65947,1,7 
step
#label ThaldraszusTimeLockedTimewalkers
#title Timewalker 8
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.27,80.40
.complete 65947,1 
step
#label ThaldraszusCracksInTime
>>Interact with the Temporal Crystals on the ground to collect the missing 50 energy.
.goto 2025,60.68,80.37
.complete 65948,3 
step
>>Kill |cff00ecffTimelings|r and |cff00ecffTimeless Causalities|r
.goto 2025,58.46,83.10,30,0
.goto 2025,60.25,80.16,30,0
.goto 2025,60.76,80.48
.complete 66646,1 
step
#requires ThaldraszusQuellingCausalities
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Chromie
.turnin 66646 >>Turn in Quelling Causalities
.goto 2025,59.56,82.67
.turnin 65947 >>Turn in Time-Locked Timewalkers
.turnin 65948 >>Turn in Cracks in Time
.accept 65938 >>Accept The Once and Future Team
.goto 2025,59.58,81.75
.target Andantenormu
.target Chromie
step
>>Use the |cffffff00[ExtraActionButton]|r and walk down the ramp
*Make sure to dismount
.goto 2025,60.49,83.26
.complete 65938,1 
step
>>Kill the |cff00ecffGiant Time Elemental|r
.goto 2025,60.68,83.58
.complete 65938,2 
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,59.58,81.71
.turnin 65938 >>Turn in The Once and Future Team
.accept 65962 >>Accept The Never-Final Countdown
.target Chromie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,59.58,81.71
.skipgossip 6
.complete 65962,1 
.target Chromie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2025,60.05,82.45
.turnin 65962 >>Turn in The Never-Final Countdown
.accept 70040 >>Accept Tumbling Through Time
.target Nozdormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi
.goto 2025,59.52,82.51
.skipgossip
.complete 70040,1 
.target Soridormi
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,59.30,82.16
.skipgossip
.complete 70040,3 
.target Siaszerathel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2025,60.19,81.77
.skipgossip
.complete 70040,2 
.target Andantenormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu and wait for the roleplay
.goto 2025,60.06,82.44
.skipgossip 186931,1
.timer 24,Roleplay Duration
.complete 70040,4 
.target Nozdormu
step
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 70040 >>Turn in Tumbling Through Time
.accept 66029 >>Accept Temporal Tuning
.accept 66028 >>Accept To the Future!
.target Nozdormu
step
>>Interact with the Portal to the Primalist Future
.goto 2025,59.83,82.24
.complete 66028,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi and Possible Future You
.turnin 66028 >>Turn in To the Future!
.accept 66030 >>Accept Resistance Isn't Futile
.goto 2085,61.10,50.82
.accept 66031 >>Accept Making Time
.goto 2085,61.45,50.20
.target Soridormi
.target Possible Future You
step
>>Use the |T133240:0|t[Chrono Crystal] near Chromie and Eternus
.goto 2085,46.92,41.15
.use 192749
.complete 66029,1 
step
#completewith ThaldraszusResistanceIsntFutile
+Use the |cffffff00[ExtraActionButton]|r if you need help fighting
step
#completewith ThaldraszusResistanceIsntFutile
>>Kill |cff00ecffHoary Icicles|r or |cff00ecffRestless Icicles|r. Loot them for the essences
*Avoid killing elites
.complete 66031,1 
step
#title Fighter Healed 1
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,44.72,43.63
.complete 66030,1,1 
step
#title Fighter Healed 2
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,43.49,41.13
.complete 66030,1,2 
step
#title Fighter Healed 3
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,44.32,38.42
.complete 66030,1,3 
step
#title Fighter Healed 4
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,46.97,36.33
.complete 66030,1,4 
step
#title Fighter Healed 5
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,46.04,32.44
.complete 66030,1,5 
step
#title Fighter Healed 6
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,50.64,30.28
.complete 66030,1,6 
step
#title Fighter Healed 7
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,52.77,30.22
.complete 66030,1,7 
step
#title Fighter Healed 8
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,54.49,28.54
.complete 66030,1,8 
step
#title Fighter Healed 9
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,52.47,24.21
.complete 66030,1,9 
step
#label ThaldraszusResistanceIsntFutile
#title Fighter Healed 10
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,62.04,28.40
.complete 66030,1,10 
step
>>Kill and LOOT |cff00ecffHoary Icicles|r or |cff00ecffRestless Icicles|r
*Avoid killing elites
.goto 2085,57.87,25.26,20,0
.goto 2085,52.36,24.46,20,0
.goto 2085,56.61,28.14
.complete 66031,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Possible Future You and Soridormi
.turnin 66031 >>Turn in Making Time
.goto 2085,61.47,50.22
.turnin 66030 >>Turn in Resistance Isn't Futile
.goto 2085,61.08,50.83
step
.goto 2085,61.09,50.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi
.accept 66032 >>Accept Return to the Present
.target Soridormi
step
#completewith next
.goto 2085,61.01,50.55
.zone 2025 >>Use the portal back
step
.goto 2025,60.05,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66029 >>Turn in Temporal Tuning
.turnin 66032 >>Turn in Return to the Present
.accept 72519 >>Accept Temporal Two-ning
.accept 66033 >>Accept To the... Past?
.target Nozdormu
step
>>Use the Portal to Azmerloth
.goto 2025,59.97,82.08
.complete 66033,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66033 >>Turn in To the... Past?
.accept 66035 >>Accept Murloc Motes
.goto 2092,59.83,66.15
.accept 66036 >>Accept Mugurlglrlgl! << Alliance
.accept 66704 >>Accept Mugurlglrlgl! << Horde
.goto 2092,59.97,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
#completewith next
+You can only use normal ground mounts here!
step
#completewith ThaldraszusMurlocMotes
>>Kill |cff00ecffDeathling Destroyers|r and |cff00ecffDeathlings|r
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
#title Mote 1
>>Run through the Motes. You may have to jump
.goto 2092,60.05,68.69
.complete 66035,1,1 
step
#title Mote 2
>>Run through the Motes. You may have to jump
.goto 2092,60.62,68.39
.complete 66035,1,2 
step
#title Mote 3
>>Run through the Motes. You may have to jump
.goto 2092,60.71,66.76
.complete 66035,1,3 
step
#title Mote 4
>>Run through the Motes. You may have to jump
.goto 2092,61.27,67.05
.complete 66035,1,4 
step
#title Mote 5
>>Run through the Motes. You may have to jump
.goto 2092,61.61,65.98
.complete 66035,1,5 
step
#title Mote 6
>>Run through the Motes. You may have to jump
.goto 2092,62.54,66.16
.complete 66035,1,6 
step
#title Mote 7
>>Run through the Motes. You may have to jump
.goto 2092,62.72,65.11
.complete 66035,1,7 
step
#title Mote 8
>>Run through the Motes. You may have to jump
.goto 2092,61.85,63.81
.complete 66035,1,8 
step
>>Use |T133240:0|t[Chrono Crystal] near Chromie and Eternus
.goto 2092,61.49,61.76
.use 192749
.complete 72519,1 
step
#title Mote 9
>>Run through the Motes. You may have to jump
.goto 2092,61.22,63.50
.complete 66035,1,9 
step
#title Mote 10
>>Run through the Motes. You may have to jump
.goto 2092,60.28,63.88
.complete 66035,1,10 
step
#title Mote 11
>>Run through the Motes. You may have to jump
.goto 2092,59.25,63.30
.complete 66035,1,11 
step
#label ThaldraszusMurlocMotes
#title Mote 12
>>Run through the Motes. You may have to jump
.goto 2092,58.53,64.12
.complete 66035,1 
step
>>Kill |cff00ecffDeathling Destroyers|r and |cff00ecffDeathlings|r
.goto 2092,58.57,64.94,25,0
.goto 2092,59.25,67.50,25,0
.goto 2092,60.77,67.83,25,0
.goto 2092,61.69,64.23
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66035 >>Turn in Murloc Motes
.goto 2092,59.84,66.14
.turnin 66036 >>Turn in Mugurlglrlgl! << Alliance
.turnin 66704 >>Turn in Mugurlglrlgl! << Horde
.accept 70373 >>Accept Deathwingurlugull! << Alliance
.accept 70371 >>Accept Deathwingurlugull! << Horde
.timer 5,Roleplay Duration
.goto 2092,59.98,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
>>Mount the Hopper after a short roleplay
.goto 2092,59.81,65.71
.complete 70373,1 <<Alliance 
.complete 70371,1 <<Horde 
step
>>Spam |T651086:0|tFisbolts (1). Use (2) and (3) on cooldown.
*Make sure to target Deathwingurlugull.
.complete 70373,2 <<Alliance 
.complete 70371,2 <<Horde 
step
#completewith next
+|cfff78300Leave the vehicle early|r
step <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Varian Wryngrrlgulgll and Andantenormu
.turnin 70373 >>Turn in Deathwingurlugull!
.goto 2092,59.91,65.99
.accept 66037 >>Accept Back to Reality
.goto 2092,59.83,66.14
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
step <<Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrallgrulgulgul and Andantenormu
.turnin 70371 >>Turn in Deathwingurlugull!
.goto 2092,59.97,65.99
.accept 66037 >>Accept Back to Reality
.goto 2092,59.83,66.14
.target Andantenormu
.target Thrallgrulgulgul << Horde
step
#completewith next
.goto 2092,59.72,66.11
.zone 2025 >>Use the Portal to Temporal Conflux
step
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66037 >>Turn in Back to Reality
.turnin 72519 >>Turn in Temporal Two-ning
.accept 66660 >>Accept On Your Mark... Get Set...
.target Nozdormu
step
>>Use the Portal to the Gnoll War
.goto 2025,59.92,82.19
.complete 66660,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2090,43.39,69.22
.turnin 66660 >>Turn in On Your Mark... Get Set...
.accept 66038 >>Accept Race Through Time!
.target Andantenormu
step
#completewith ThaldraszusRaceThroughTime
+|cfff78300Run through the speed boots to gain a movement speed buff and avoid the circles|r
step
.isOnQuest 66038
.goto 2090,43.19,68.05,15,0
.goto 2090,42.97,66.93,15,0
.goto 2090,42.61,65.18,15,0
.goto 2090,41.96,63.82,15,0
.goto 2090,41.58,61.96,15,0
.goto 2090,40.63,59.71,15,0
.goto 2090,40.32,57.88,15,0
.goto 2090,39.65,56.46,15,0
.goto 2090,38.11,54.13,15,0
.goto 2090,37.08,53.36,15,0
.goto 2090,35.78,53.56,15,0
.goto 2090,34.68,53.16,15,0
.goto 2090,33.77,52.04,15,0
.goto 2090,32.83,50.54,15,0
.goto 2090,32.37,49.70
.zone 2091 >>Follow the arrow. Reach the first portal
step
.isOnQuest 66038
.goto 2091,47.16,66.66,15,0
.goto 2091,46.67,67.58,15,0
.goto 2091,45.90,68.25,15,0
.goto 2091,45.16,69.52,15,0
.goto 2091,44.47,69.63,15,0
.goto 2091,43.24,70.61,15,0
.goto 2091,42.02,72.21,15,0
.goto 2091,41.39,73.50,15,0
.goto 2091,40.97,75.02,15,0
.goto 2091,40.34,75.91,15,0
.goto 2091,39.52,76.78
.zone 2088 >>Follow the arrow. Reach the second portal
step
.isOnQuest 66038
.goto 2088,31.30,63.53,15,0
.goto 2088,30.14,63.46,25,0
.goto 2088,28.64,62.93,25,0
.goto 2088,27.67,62.74,25,0
.goto 2088,24.05,60.46,25,0
.goto 2088,22.84,59.25,25,0
.goto 2088,22.11,60.21,25,0
.goto 2088,21.42,59.20,25,0
.goto 2088,19.80,58.69,25,0
.goto 2088,17.92,59.28,25,0
.goto 2088,15.74,58.55,25,0
.goto 2088,15.05,83.53
.zone 2089 >>Follow the arrow. Reach the third portal
step
#label ThaldraszusRaceThroughTime
.goto 2089,43.38,69.19
.complete 66038,1 
step
.goto 2089,52.36,73.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.turnin 66038 >>Turn in Race Through Time!
.accept 66039 >>Accept Chromie Time
.target Andantenormu
step
.itemcount 132516,1
#completewith TheBlackEmpireChromieTime
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
.itemcount 132516,0
#completewith TheBlackEmpireChromieTime
+You can only use normal mounts
step
#completewith next
.goto 2089,57.08,69.02,20,0
.goto 2089,57.44,54.32,20,0
.goto 2089,53.76,43.23,20 >>Follow the arrow
step
#label TheBlackEmpireChromieTime
>>Use |T133240:0|t[Chrono Crystal] near Chromie and Eternus
.goto 2089,53.76,43.23
.use 192749
.complete 66039,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2089,53.41,43.93
.turnin 66039 >>Turn in Chromie Time
.accept 66040 >>Accept Back to the Future
.target Chromie
step
#completewith next
+Don't forget that you can use your |cffffff00[ExtraActionButton]|r
+You can skip the next cutscene (Esc -> Yes)
step
>>Kill the incoming waves
.goto 2089,52.94,44.53
.skipgossip
.complete 66040,1 
.complete 66040,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,60.08,82.42
.skipgossip 1
.complete 66040,3 
.target Chromie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2025,60.05,82.45
.turnin 66040 >>Turn in Back to the Future
.accept 66221 >>Accept Moving On
.target Nozdormu
step
#completewith next
.hs >>Hearth to Valdrakken
step
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza
.goto 2112,58.09,34.76
.skipgossip 187678,1
.complete 66221,1 
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2112,58.09,34.76
.turnin 66221 >>Turn in Moving On
.target Alexstrasza the Life-Binder
step
.pve
.xp 70,1
.goto 2025,50.27,67.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Szareth
.accept 69932 >>Accept Every Life Counts
.accept 69933 >>Accept Curiosity's Price
.target Szareth
step
.pve
.xp 70,1
#completewith ThaldraszusCuriositysPrice
>>Kill |cff00ecffProductive Pollinators|r. Loot them for the pollen
>>Or loot the Magnificent Flowers
.complete 69932,2 
step
.pve
.xp 70,1
#title Sun-Basked Linens 1/6
>>Pick up the Handwoven Basket
.goto 2025,49.60,67.54
.complete 69932,1,1 
step
.pve
.xp 70,1
#title Sun-Basked Linens 2/6
>>Pick up the Handwoven Basket
.goto 2025,49.28,67.47
.complete 69932,1,2 
step
.pve
.xp 70,1
#title Sun-Basked Linens 3/6
>>Pick up the Handwoven Basket
.goto 2025,49.00,67.24
.complete 69932,1,3 
step
.pve
.xp 70,1
#title Sun-Basked Linens 4/6
>>Pick up the Handwoven Basket
.goto 2025,48.80,67.22
.complete 69932,1,4 
step
.pve
.xp 70,1
#title Sun-Basked Linens 5/6
>>Pick up the Handwoven Basket
.goto 2025,49.60,67.54
.complete 69932,1,5 
step
.pve
.xp 70,1
#title Sun-Basked Linens 6/6
>>Pick up the Handwoven Basket
.goto 2025,48.81,67.04
.complete 69932,1 
step
.pve
.xp 70,1
#label ThaldraszusCuriositysPrice
>>Click on the Stubborn Vine and then pull it out by moving away
>>Afterwards kill the Laden Lasher
.complete 69933,1 
.complete 69933,2 
step
.pve
.xp 70,1
>>Kill |cff00ecffProductive Pollinators|r. Loot them for the pollen
>>Or loot the Magnificent Flowers
.goto 2025,49.26,66.42,25,0
.goto 2025,49.89,66.67,25,0
.goto 2025,49.31,66.83
.complete 69932,2 
step
.pve
.xp 70,1
>>Click on the Little Jetstream inside the building
.goto 2025,49.42,67.92
.complete 69932,3 
step
.pve
.xp 70,1
.goto 2025,50.28,67.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Szareth
.turnin 69932 >>Turn in Every Life Counts
.turnin 69933 >>Turn in Curiosity's Price
.accept 69934 >>Accept Bleeding Hearts
.target Szareth
step
.pve
.xp 70,1
#completewith next
.goto 2025,52.99,67.56,15 >>Enter the cave
step
.pve
.xp 70,1
>>Click on the chest in the cave
.goto 2025,53.32,67.52
.complete 69934,1 
step
.pve
.xp 69,1
>>Click on the chest inside the Gelikyr Post
.goto 2025,51.69,69.16
.complete 69934,2 
step
.pve
.goto 2025,51.70,69.26
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Timetender Athekk
.turnin 69934 >>Turn in Bleeding Hearts
.target Timetender Athekk
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.accept 66134 >>Accept Azeroth Pest Control
.target Gryrmpech
step
.xp 70,1
.isOnQuest 66134
>>Kill |cff00ecffAgitated Seedlings|r
.goto 2025,38.34,74.99,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
#loop
.line 2025,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66
.goto 2025,38.34,74.99,18,0
.goto 2025,18.00,38.33,18,0
.goto 2025,75.60,37.69,18,0
.goto 2025,76.04,37.23,18,0
.goto 2025,76.66,38.34,18,0
.goto 2025,74.99,18.00,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
.complete 66134,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66134 >>Turn in Azeroth Pest Control
.accept 66135 >>Accept The Gardener's Apprentice
.target Gryrmpech
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on the Bronze Stopwatch on the ground
.goto 2025,38.91,74.25
.accept 66278 >>Accept One Drakonid's Junk
step
.xp 70,1
>>Click on the Storage Crates, Ruined Barrels, Garden Junk and Scrap Wood to clear the room
.goto 2025,38.94,74.18
.complete 66135,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66135 >>Turn in The Gardener's Apprentice
.turnin 66278 >>Turn in One Drakonid's Junk
.accept 66136 >>Accept Elemental Extract
.accept 66137 >>Accept Lashing Out
.accept 66279 >>Accept New Kid on the Clock
.target Gryrmpech
step
.xp 70,1
>>Click on Lord Basilton on the ground
.goto 2025,37.88,75.44
.complete 66279,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.complete 66279,2 
.target Orizmu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66279 >>Turn in New Kid on the Clock
.accept 66138 >>Accept Like Sands Through the Hourglass
.target Orizmu
step
.xp 70,1
#title Pile of Sand 1/8
>>Pick up the sand on the ground
.goto 2025,35.52,72.78
.complete 66138,1,1 
step
.xp 70,1
#title Pile of Sand 2/8
>>Pick up the sand on the ground
.goto 2025,35.69,72.60
.complete 66138,1,2 
step
.xp 70,1
#title Pile of Sand 4/8
>>Pick up the sand on the ground
.goto 2025,35.83,72.77,-1
.goto 2025,35.81,72.48,-1
.complete 66138,1,4 
step
.xp 70,1
#title Pile of Sand 5/8
>>Pick up the sand on the ground
.goto 2025,36.02,72.57
.complete 66138,1,5 
step
.xp 70,1
#title Pile of Sand 6/8
>>Pick up the sand on the ground
.goto 2025,36.22,72.42
.complete 66138,1,6 
step
.xp 70,1
#title Pile of Sand 7/8
>>Pick up the sand on the ground
.goto 2025,36.47,72.43
.complete 66138,1,7 
step
.xp 70,1
#title Pile of Sand 8/8
>>Pick up the sand on the ground
.goto 2025,36.61,72.69
.complete 66138,1 
step
.xp 70,1
>>Kill |cff00ecffLiskron the Dazzling|r. Skip if you deal low damage
.goto 2025,36.24,72.50
.accept 72116 >>Accept Liskron the Dazzling (Elite Objective)
.complete 72116,1 
step
.xp 70,1
>>Kill |cff00ecffChurning Splahes|r and |cff00ecffHulking Waves|r. Loo them for their essence
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,18,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
#loop
.line 2025,37.51,71.73,37.40,70.99,37.32,69.70,36.88,70.49,36.88,71.21
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,20,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
.complete 66136,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66138 >>Turn in Like Sands Through the Hourglass
.target Orizmu
step
.xp 70,1
>>Kill |cff00ecffLashers in the area|r
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71,67,20,0
#loop
.line 2025,34.73,72.95,33.89,72.63,34.16,71.85,34.60,71,67,34.79,72.37
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71.00,20,0
.goto 2025,67.00,34.79,20,0
.complete 66137,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66136 >>Turn in Elemental Extract
.turnin 66137 >>Turn in Lashing Out
.accept 66139 >>Accept Flame at Last
.target Gryrmpech
step
.xp 70,1
>>Use |T236213:0|t[Concentrated Essence of Water] on the |cff00ecffBlazing Inferno|r and kill it
.goto 2025,35.58,75.16
.complete 66139,1 
.complete 66139,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66139 >>Turn in Flame at Last
.accept 66412 >>Accept Carry On, Basilton
.target Gryrmpech
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Basilton
.goto 2025,37.88,75.44
.complete 66412,1 
.target Lord Basilton
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.47
.turnin 66412 >>Turn in Carry On, Basilton
.target Gryrmpech
step
.xp 70,1
.goto 2022,60.23,72.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Thomas Bright and talk to him
.accept 67100 >>Accept A Gift for Miguel
.target Thomas Bright
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thomas Bright again
.goto 2022,60.23,72.18
.skipgossip 1
.complete 67100,1 
.target Thomas Bright
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.06,58.13
.accept 66435 >>Accept Site Salvage
.accept 66436 >>Accept Unearthed Troublemakers
.target Elementalist Taiyang
step
.xp 70,1
#completewith WakingShoreAKeyElement
>>Kill |cff00ecffEarth Elementals|r
.goto 2022,66.06,58.13,0,0
.complete 66436,1 
step
.xp 70,1
#completewith next
>>Kill |cff00ecffEarth Elementals|r. Loot Orb of Primal Stone. Click it in your bags
.collect 191904,1,66437,1
.accept 66437 >>Accept A Key Element
step
.xp 70,1
#title Spam talk to the explorer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cfff78300Spam talk to a Beleaguered Explorer|r
.goto 2022,67.16,58.32,10,0
.goto 2022,67.53,57.97,10,0
.goto 2022,67.87,57.90,10,0
.goto 2022,67.81,57.37,10,0
.goto 2022,67.60,56.51
.skipgossip
.complete 66435,1 
step
.xp 70,1
#label WakingShoreAKeyElement
>>Kill |cff00ecffEarth Elementals|r. Loot Orb of Primal Stone. Click it in your bags
.collect 191904,1,66437,1
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.accept 66437 >>Accept A Key Element
step
.xp 70,1
>>Kill |cff00ecffEarth Elementals|r
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.goto 2022,67.89,54.73,20,0
.goto 2022,66.06,58.13
.complete 66436,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66436 >>Turn in Unearthed Troublemakers
.turnin 66435 >>Turn in Site Salvage
.turnin 66437 >>Turn in A Key Element
.target Elementalist Taiyang
step
.xp 70,1
.goto 2022,66.57,56.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Tae'shara Bloodwatcher
.accept 66438 >>Accept Lofty Goals
.accept 66441 >>Accept Distilled Effort
.accept 66439 >>Accept Rapid Fire Plans
.target Examiner Tae'shara Bloodwatcher
step
.xp 70,1
.goto 2022,70.49,56.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.accept 70994 >>Accept Drainage Solutions
.target Zikkori
step
.xp 70,1
#completewith next
>>Throw |T3610505:0|t[Zikkori's Water Siphoning Device] under the Glittery Streams
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
.xp 70,1
>>Kill |cff00ecffAcequian|r. Loot it for the orb
.goto 2022,72.17,56.71
.complete 66441,1 
step
.xp 70,1
>>Throw |T3610505:0|t[Zikkori's Water Siphoning Device] under the Glittery Streams
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.goto 2022,70.50,56.84
.turnin 70994 >>Turn in Drainage Solutions
.target Zikkori
step
.xp 70,1
#completewith next
>>Kill |cff00ecffPrimalist Forces|r in the area. Loot them for the Firey Spirits
.goto 2022,68.13,64.19
.complete 67100,2 
step
.xp 70,1
>>Kill |cff00ecffPrimalist Forces|r in the area. Loot them for the flame Fragments
.goto 2022,69.89,64.44
.complete 66439,1 
step
.xp 70,1
>>Kill |cff00ecffPrimalist Forces|r in the area. Loot them for the Firey Spirits
.goto 2022,68.13,64.19
.complete 67100,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Ri'tal
.goto 2022,70.64,63.13
.complete 66438,1 
.target Scout Ri'tal
step
.xp 70,1
>>|cfff78300Hug the right wall|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Francisco
.goto 2022,70.14,61.53
.complete 66438,2 
.target Scout Francisco
step
.xp 70,1
>>|cfff78300Hug the left wall, then follow the arrow|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk
.goto 2022,69.39,61.86,10,0
.goto 2022,69.08,61.66,8,0
.goto 2022,68.27,61.54
.complete 66438,3 
step
.xp 70,1
>>Use the |T135821:0t[Primal Flame Fragments]
.use 192545
.goto 2022,66.59,56.08
.complete 66439,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66438 >>Turn in Lofty Goals
.turnin 66439 >>Turn in Rapid Fire Plans
.turnin 66441 >>Turn in Distilled Effort
.accept 66442 >>Accept Let's Get Theoretical
.target Elementalist Taiyang
step
.xp 70,1
>>Wait at the waypoint until you can use the |cffffff00[ExtraActionButton]|r and use it
.goto 2022,66.56,56.06
.complete 66442,1 
.complete 66442,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.51,55.96
.turnin 66442 >>Turn in Let's Get Theoretical
.accept 66447 >>Accept Beyond the Barrier
.target Elementalist Taiyang
step
.xp 70,1
>>Kill the |cff00ecffDiscrodant Watcher|r
.goto 2022,66.09,55.36
.complete 66447,1 
step
.xp 70,1
>>Click on the rune stone
.goto 2022,66.08,55.03
.complete 66447,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,65.88,57.47
.turnin 66447 >>Turn in Beyond the Barrier
.target Elementalist Taiyang
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Thomas Bright and talk to him
.goto 2022,60.22,72.18
.turnin 67100 >>Turn in A Gift for Miguel
.target Thomas Bright
step
.xp 62.7,1
.goto 2022,37.45,71.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.accept 66003 >>Accept Rings To Bind Them
.target Earthcaller Yevaa
step
.isOnQuest 66003
>>Kill |cff00ecffBlazing Manifestations|r. Loot then for the binding rings
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
#loop
.line 2022,,37.99,71.58,38.15,73.04,37.31,73.68,,36.75,72.98,37.12,71.84,38.05,69.42
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.31,73.68,22,0
.goto 2022,36.75,72.98,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
.complete 66003,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.turnin -66003 >>Turn in Rings To Bind Them
.target Earthcaller Yevaa
step
.isQuestTurnedIn 66003
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.accept 66369 >>Accept The Earthen Ward
.target Earthcaller Yevaa
step
.isOnQuest 66369
>>Click on the Earth Warden
.goto 2022,37.54,71.23
.complete 66369,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.turnin -66369 >>Turn in The Earthen Ward
.target Earthcaller Yevaa
step
.isQuestTurnedIn 66369
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.accept 66368 >>Accept Island In A Storm
.target Earthcaller Yevaa
step
.isOnQuest 66368
#completewith next
>>Kill |cff00ecffBlazing Manifestations|r
.complete 66368,1 
step
.isOnQuest 66368
.goto 2022,37.62,75.10
.complete 66368,2 
.unitscan Melter Igneous
step
.isOnQuest 66368
>>Kill |cff00ecffBlazing Manifestations|r
.goto 2022,37.98,76.02,20,0
.goto 2022,39.58,74.41,20,0
.goto 2022,39.14,73.14,20,0
.goto 2022,38.01,71.79,20,0
.goto 2022,36.55,71.79,20,0
.goto 2022,36.95,73.62,20,0
#loop
.line 2022,37.98,76.02,39.58,74.41,39.14,73.14,38.01,71.79,36.55,71.79,36.95,73.62
.goto 2022,37.98,76.02,25,0
.goto 2022,39.58,74.41,25,0
.goto 2022,39.14,73.14,25,0
.goto 2022,38.01,71.79,25,0
.goto 2022,36.55,71.79,25,0
.goto 2022,36.95,73.62,25,0
.complete 66368,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.78
.turnin -66368 >>Turn in Island In A Storm
.target Earthcaller Yevaa
step
.xp 70,1
#completewith next
.hs >>Hearth to Valdrakken
step
.xp 70,1
.goto 2025,40.42,49.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Spa Concierge
.turnin -72067 >>Turn in Relaxation Time!
.accept 72246 >>Accept Serene Dreams
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 72246 >>Turn in Serene Dreams
.accept 70738 >>Accept The You-ga Class
.goto 2025,40.49,48.93
.accept 70740 >>Accept Steam Cleaning
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith ThaldraszusTheYougaClass
>>Kill |cff00ecffElementals|r
.complete 70740,1 
step
.xp 70,1
.goto 2025,41.47,47.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Misplaced Luggage
.accept 70741 >>Accept Some Favorite Things
step
.xp 70,1
>>Rescue the Youga Instructor
.goto 2025,41.17,47.49
.complete 70738,2 
step
.xp 70,1
#title Belongings Found 2/6
>>Pick up the book on the ground
.goto 2025,41.16,47.43
.complete 70741,1,2 
step
.xp 70,1
#title Student Rescued 1/6
>>Rescue the student
.goto 2025,41.45,47.04
.complete 70738,1,1 
step
.xp 70,1
#title Student Rescued 2/6
>>Rescue the student
.goto 2025,41.06,46.81
.complete 70738,1,2 
step
.xp 70,1
#title Belongings Found 3/6
>>Pick up the Lost S.E.L.F.I.E Camera
.goto 2025,40.72,47.31
.complete 70741,1,3 
step
.xp 70,1
#title Student Rescued 3/6
>>Rescue the student
.goto 2025,40.51,47.31
.complete 70738,1,3 
step
#title Student Rescued 4/6
>>Rescue the student
.goto 2025,40.18,46.94
.complete 70738,1,4 
step
.xp 70,1
#title Belongings Found 4/6
>>Pick up the Stylish Umbrella
.goto 2025,40.10,46.61
.complete 70741,1,4 
step
.xp 70,1
#title Belongings Found 5/6
>>Pick up the Overturned Beach Chair
.goto 2025,40.27,46.16
.complete 70741,1,5 
step
.xp 70,1
#title Student Rescued 5/6
>>Rescue the student
.goto 2025,40.03,45.98
.complete 70738,1,5 
step
.xp 70,1
#title Student Rescued 6/6
>>Rescue the student
.goto 2025,40.81,46.09
.complete 70738,1 
step
.xp 70,1
#label ThaldraszusTheYougaClass
#title Belongings Found 6/6
>>Pick up the Soggy You-ga Pillow
.goto 2025,41.01,45.96
.complete 70741,1 
step
.xp 70,1
>>Kill |cff00ecffElementals|r
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
#loop
.line 2025,39.99,45.69,39.46,47.37,40.46,48.00,41.48,47.33,40.98,45.52
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
.complete 70740,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 70738 >>Turn in The You-ga Class
.turnin 70741 >>Turn in Some Favorite Things
.goto 2025,40.49,48.92
.turnin 70740 >>Turn in Steam Cleaning
.goto 2025,40.46,48.88
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara
.goto 2025,40.49,48.97
.accept 70743 >>Accept Precious Baby
step
.xp 70,1
>>Follow the arrow
.goto 2025,38.90,45.22
.complete 70743,1 
step
.xp 70,1
>>Wait for the roleplay and click on the puppy
.goto 2025,38.90,45.22
.complete 70743,2 
step
.xp 70,1
.goto 2025,38.89,45.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Horrible Mess
.accept 70744 >>Accept Look at the Bones!
step
.xp 70,1
#title Cleaned Mess 2/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.92,45.22
.complete 70744,1,2 
step
.xp 70,1
#title Cleaned Mess 3/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.52,45.73
.complete 70744,1,3 
step
.xp 70,1
#title Cleaned Mess 4/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.65,46.19
.complete 70744,1,4 
step
.xp 70,1
#title Cleaned Mess 5/10
>>Pick up More Horrible Mess off the ground
.goto 2025,37.91,46.22
.complete 70744,1,5 
step
.xp 70,1
#title Cleaned Mess 6/10
>>Pick up More Horrible Mess off the ground
.goto 2025,37.79,46.29
.complete 70744,1,6 
step
.xp 70,1
#title Cleaned Mess 7/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.03,47.10
.complete 70744,1,7 
step
.xp 70,1
#title Cleaned Mess 8/10
>>Pick up More Horrible Mess off the ground
.goto 2025,39.18,47.34
.complete 70744,1,8 
step
.xp 70,1
#title Cleaned Mess 9/10
>>Pick up More Horrible Mess off the ground
.goto 2025,39.56,47.21
.complete 70744,1,9 
step
.xp 70,1
#title Cleaned Mess 10/10
>>Pick up More Horrible Mess off the ground
.goto 2025,39.70,47.88
.complete 70744,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara and Quillius
.turnin 70743 >>Turn in Precious Baby
.turnin 70744 >>Turn in Look at the Bones!
.goto 2025,40.49,48.97
.accept 70745 >>Accept Enforced Relaxation
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith next
.goto 2025,39.69,47.45,20,0
.goto 2025,39.89,48.45,15 >>Enter the cave below
step
.xp 70,1
>>Kill |cff00ecffVadme Blackheart|r. Move out of the fire and water void zones
.goto 2025,40.04,49.05
.complete 70745,1 
step
.xp 70,1
.goto 2025,40.46,48.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quilius
.turnin 70745 >>Turn in Enforced Relaxation
step
+Campaign completed!
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup Threads of Fate 60-70
#name D4Thaldraszus ToF
#displayname Chapter 4 - Thaldraszus ToF (End)
step
.xp 70,1
#completewith next
+Welcome to the Thaldraszus ToF Guide of RestedXP.
step
.xp 70,1
.goto 2112,48.09,59.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hot Springs Spa Promoter
.accept 72067 >>Accept Relaxation Time!
step
.xp 70,1
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2112,58.15,34.90
.accept 66159 >>Accept A Message Most Dire
step
.xp 70,1
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza
.goto 2112,58.15,34.90
.skipgossip 187678,1
.complete 66159,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder and Captain Drine
.turnin 66159 >>Turn in A Message Most Dire
.goto 2112,58.15,34.90
.accept 66166 >>Accept Eyes and Ears
.accept 66163 >>Accept Nowhere to Hide
.goto 2112,59.39,34.83
step
.xp 70,1
#sticky
#label ThaldraszusNowheretoHide
>>Use |T317244:0:0|tRevealing Dragon's Eye
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cff00ff00Valdrakken Citizens|r marked on your (mini)map
.use 198859
.goto 2112,54.72,61.41,0
.goto 2112,51.12,62.54,0
.goto 2112,48.43,58.09,0
.goto 2112,50.54,50.77,0
.goto 2112,48.85,47.73,0
.goto 2112,35.85,56.65,0
.goto 2112,36.17,64.03,0
.goto 2112,41.60,65.28,0
.goto 2112,39.93,71.38,0
.goto 2112,37.98,71.29,0
.goto 2112,49.17,76.43,0
.goto 2112,52.35,76.87,0
.goto 2112,54.31,70.02,0
.goto 2112,40.11,51.80,0
.goto 2112,27.45,60.38,0
.goto 2112,25.16,64.89,0
.goto 2112,32.18,68.50,0
.goto 2112,31.40,62.95,0
.skipgossip
.complete 66163,1 
.complete 66163,2 
step
.xp 70,1
#completewith next
.goto 2112,55.50,57.34,8 >>Glide down with your dragonriding mount and enter the bank
step
.xp 70,1
>>Interact with the storage chest
.goto 2112,59.18,54.69
.complete 66166,2 
step
.xp 70,1
#completewith next
.goto 2112,48.43,49.90,8 >>Enter the inn
step
.xp 70,1
>>Interact with the Goblet
.goto 2112,46.94,47.74
.complete 66166,3 
step
.xp 70,1
#completewith next
.goto 2112,47.45,46.22
.home >>Set your Hearthstone to The Roasted Ram
step
.xp 70,1
#completewith next
.goto 2112,48.43,49.90,8 >>Leave the inn
step
.xp 70,1
>>Interact with the Consortium Ledger
.goto 2112,34.66,61.30
.complete 66166,1 
step
.xp 70,1
#requires ThaldraszusNowheretoHide
.goto 2112,54.72,47.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66163 >>Turn in Nowhere to Hide
.turnin 66166 >>Turn in Eyes and Ears
.accept 66167 >>Accept Southern Exposure
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.accept 66134 >>Accept Azeroth Pest Control
step
.xp 70,1
>>Kill |cff00ecffAgitated Seedlings|r
.goto 2025,38.34,74.99,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
#loop
.line 2025,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66
.goto 2025,38.34,74.99,18,0
.goto 2025,18.00,38.33,18,0
.goto 2025,75.60,37.69,18,0
.goto 2025,76.04,37.23,18,0
.goto 2025,76.66,38.34,18,0
.goto 2025,74.99,18.00,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
.complete 66134,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66134 >>Turn in Azeroth Pest Control
.accept 66135 >>Accept The Gardener's Apprentice
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on the Bronze Stopwatch on the ground
.goto 2025,38.91,74.25
.accept 66278 >>Accept One Drakonid's Junk
step
.xp 70,1
>>Click on the Storage Crates, Ruined Barrels, Garden Junk and Scrap Wood to clear the room
.goto 2025,38.94,74.18
.complete 66135,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66135 >>Turn in The Gardener's Apprentice
.turnin 66278 >>Turn in One Drakonid's Junk
.accept 66136 >>Accept Elemental Extract
.accept 66137 >>Accept Lashing Out
.accept 66279 >>Accept New Kid on the Clock
step
.xp 70,1
>>Click on Lord Basilton on the ground
.goto 2025,37.88,75.44
.complete 66279,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.complete 66279,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66279 >>Turn in New Kid on the Clock
.accept 66138 >>Accept Like Sands Through the Hourglass
step
.xp 70,1
#title Pile of Sand 1/8
>>Pick up the sand on the ground
.goto 2025,35.52,72.78
.complete 66138,1,1 
step
.xp 70,1
#title Pile of Sand 2/8
>>Pick up the sand on the ground
.goto 2025,35.69,72.60
.complete 66138,1,2 
step
.xp 70,1
#title Pile of Sand 2/8
>>Pick up the sand on the ground
.goto 2025,35.69,72.60
.complete 66138,1,2 
step
.xp 70,1
#title Pile of Sand 4/8
>>Pick up the sand on the ground
.goto 2025,35.83,72.77,-1
.goto 2025,35.81,72.48,-1
.complete 66138,1,4 
step
.xp 70,1
#title Pile of Sand 5/8
>>Pick up the sand on the ground
.goto 2025,36.02,72.57
.complete 66138,1,5 
step
.xp 70,1
#title Pile of Sand 6/8
>>Pick up the sand on the ground
.goto 2025,36.22,72.42
.complete 66138,1,6 
step
.xp 70,1
#title Pile of Sand 7/8
>>Pick up the sand on the ground
.goto 2025,36.47,72.43
.complete 66138,1,7 
step
.xp 70,1
#title Pile of Sand 8/8
>>Pick up the sand on the ground
.goto 2025,36.61,72.69
.complete 66138,1 
step
.xp 70,1
>>Kill |cff00ecffLiskron the Dazzling|r. Skip if you deal low damage
.goto 2025,36.24,72.50
.accept 72116 >>Accept Liskron the Dazzling (Elite Objective)
.complete 72116,1 
step
.xp 70,1
>>Kill |cff00ecffChurning Splahes|r and |cff00ecffHulking Waves|r. Loo them for their essence
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,18,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
#loop
.line 2025,37.51,71.73,37.40,70.99,37.32,69.70,36.88,70.49,36.88,71.21
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,20,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
.complete 66136,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66138 >>Turn in Like Sands Through the Hourglass
step
.xp 70,1
>>Kill |cff00ecffLashers in the area|r
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71,67,20,0
#loop
.line 2025,34.73,72.95,33.89,72.63,34.16,71.85,34.60,71,67,34.79,72.37
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71.00,20,0
.goto 2025,67.00,34.79,20,0
.complete 66137,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66136 >>Turn in Elemental Extract
.turnin 66137 >>Turn in Lashing Out
.accept 66139 >>Accept Flame at Last
step
.xp 70,1
>>Use |T236213:0|t[Concentrated Essence of Water] on the |cff00ecffBlazing Inferno|r and kill it
.goto 2025,35.58,75.16
.complete 66139,1 
.complete 66139,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66139 >>Turn in Flame at Last
.accept 66412 >>Accept Carry On, Basilton
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Basilton
.goto 2025,37.88,75.44
.complete 66412,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.47
.turnin 66412 >>Turn in Carry On, Basilton
step
.xp 70,1
>>Follow the arrow
.goto 2025,35.80,82.12
.complete 66167,1 
step
.xp 70,1
>>Interact with Guardian Velomir
.goto 2025,35.85,82.56
.complete 66167,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,35.85,82.56
.turnin 66167 >>Turn in Southern Exposure
.accept 66169 >>Accept Vengeance, Served Hot
.accept 66246 >>Accept The Fog of Battle
step
.xp 70,1
#completewith ThaldraszusLookoutMordren
>>Kill |cff00ecffMagmasworn Primalists|r. Skip if you deal low damage
.goto 2025,36.65,84.36,0,0
.complete 66169,1 
step
.xp 70,1
>>Interact with the |cff00ff00Mangled Corpse|r
#title Unit Found 1
.goto 2025,36.25,83.73
.skipgossip
.complete 66246,1,1 
step
.xp 70,1
#completewith next
+Fly up
step
.xp 70,1
>>Interact with the |cff00ff00Mangled Corpse|r
#title Unit Found 2
.goto 2025,35.76,84.19
.skipgossip
.complete 66246,1,2 
step
.xp 70,1
>>Interact with the |cff00ff00Mangled Corpse|r
#title Unit Found 3
.goto 2025,36.46,85.39
.skipgossip
.complete 66246,1,3 
step
.xp 70,1
#label ThaldraszusLookoutMordren
>>Fly up the tower and kill |cff00ecffLookout Mordren|r. Skip with low damage
.goto 2025,36.80,85.59
.accept 69967 >>Accept Lookout Mordren
.complete 69967,1 
step
.xp 70,1
>>Kill |cff00ecffMagmasworn Primalists|r
.goto 2025,36.67,83.38,20,0
.goto 2025,36.65,84.36,20,0
.goto 2025,36.08,84.59,20,0
.goto 2025,36.67,83.38
.complete 66169,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,37.62,83.08
.turnin 66169 >>Turn in Vengeance, Served Hot
.turnin 66246 >>Turn in The Fog of Battle
.accept 66245 >>Accept Remember the Fallen
step
.xp 70,1
>>Interact with the Magmasworn Spear
.goto 2025,37.85,83.26
.accept 66247 >>Accept Slightly Used Weapons
step
.xp 70,1
>>Glide down and talk to Private Shikzar
.goto 2025,37.54,86.05
.skipgossip
.accept 70986 >>Accept Private Shikzar
.complete 70986,1 
step
.xp 70,1
.goto 2025,38.56,83.41
>>Interact with the Coil of Heavy Rope
.accept 66248 >>Accept Tying Things Together
step
.xp 70,1
#completewith ThaldraszusRemembertheThingsTogether
>>Kill |cff00ecffMagmasworn Rockcleaver|r. Loot them for their spears.
.goto 2025,38.70,84.41,0,0
.complete 66247,1 
step
.xp 70,1
#title |T1408443:0:0|tSignet 1
>>Interact with the corpse on the ground
.goto 2025,38.89,84.05
.complete 66245,1,1 
step
.xp 70,1
#title |T1119938:0:0|tRope 1
.goto 2025,39.14,84.03
.complete 66248,1,1 
step
.xp 70,1
#title |T1408443:0:0|tSignet 2
>>Interact with the corpse on the ground
.goto 2025,39.37,83.93
.complete 66245,1,2 
step
.xp 70,1
#title |T1119938:0:0|tRope 2
.goto 2025,39.47,83.83
.complete 66248,1,2 
step
.xp 70,1
#title |T1408443:0:0|tSignet 3
>>Interact with the corpse on the ground
.goto 2025,39.22,83.63
.complete 66245,1,3 
step
.xp 70,1
#title |T1408443:0:0|tSignet 4
>>Interact with the corpse on the ground
.goto 2025,39.21,83.18
.complete 66245,1,4 
step
.xp 70,1
#title |T1119938:0:0|tRope 3
.goto 2025,39.45,82.52
.complete 66248,1,3 
step
.xp 70,1
#title |T1408443:0:0|tSignet 5
>>Interact with the corpse on the ground
.goto 2025,39.69,82.10
.complete 66245,1,5 
step
.xp 70,1
#title |T1408443:0:0|tSignet 6
>>Interact with the corpse on the ground
.goto 2025,39.47,81.77
.complete 66245,1,6 
step
.xp 70,1
#title |T1408443:0:0|tSignet 7
>>Interact with the corpse on the ground
.goto 2025,39.00,81.90
.complete 66245,1,7 
step
.xp 70,1
#title |T1408443:0:0|tSignet 7 + |T1119938:0:0|tRope 4
>>Interact with the corpse on the ground
.goto 2025,39.09,82.54
.complete 66245,1,7 
.complete 66248,1,4 
step
.xp 70,1
#title |T1119938:0:0|tRope 5
.goto 2025,38.74,82.18
.complete 66248,1 
step
.xp 70,1
#label ThaldraszusRemembertheThingsTogether
#title |T1408443:0:0|tSignet 8
>>Interact with the corpse on the ground
.goto 2025,39.00,81.90
.complete 66245,1 
step
.xp 70,1
>>Kill |cff00ecffMagmasworn Rockcleaver|r. Loot them for their spears.
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
#loop
.line 2025,39.24,83.73,39.05,86.20,39.46,82.15,38.47,83.06,39.09,83.09,38.56,84.65
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
.goto 2025,38.56,84.65,20,0
.complete 66247,1 
step
.xp 70,1
.goto 2025,37.63,83.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.turnin 66245 >>Turn in Remember the Fallen
.turnin 66247 >>Turn in Slightly Used Weapons
.turnin 66248 >>Turn in Tying Things Together
.accept 66249 >>Accept Clear the Sky
step
.xp 70,1
>>Mount the Siege Scorpion
.goto 2025,40.88,83.88
.complete 66249,1 
step
.xp 70,1
>>Look around and spam |T1412205:0:0|tSiege Bolt (1) to kill |cff00ecffMagmasworn Trueborn|r
.goto 2025,40.88,83.88
.complete 66249,2 
step
.xp 70,1
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.56,85.48
.turnin 66249 >>Turn in Clear the Sky
.accept 66250 >>Accept Where's The Chief?
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
*You can skip the next cinematic
.goto 2025,40.19,85.16
.skipgossip
.complete 66250,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.13
.turnin 66250 >>Turn in Where's The Chief?
.accept 66251 >>Accept Fire Fighter
step
.xp 70,1
>>Use a range ability to pull him down
.goto 2025,40.12,86.61
.complete 66251,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.14
.turnin 66251 >>Turn in Fire Fighter
.accept 66252 >>Accept Reporting In
step
.xp 70,1
#completewith next
.cooldown item,6489,>0,1
.hs >>Hearth to Valdrakken
step
.xp 70,1
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.xp 70,1
.goto 2112,55.94,39.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66252 >>Turn in Reporting In
step
.xp 70,1
.goto 2025,40.42,49.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Spa Concierge
.turnin -72067 >>Turn in Relaxation Time!
.accept 72246 >>Accept Serene Dreams
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 72246 >>Turn in Serene Dreams
.accept 70738 >>Accept The You-ga Class
.goto 2025,40.49,48.93
.accept 70740 >>Accept Steam Cleaning
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith ThaldraszusTheYougaClass
>>Kill |cff00ecffElementals|r
.complete 70740,1 
step
.xp 70,1
.goto 2025,41.47,47.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Misplaced Luggage
.accept 70741 >>Accept Some Favorite Things
step
.xp 70,1
>>Rescue the Youga Instructor
.goto 2025,41.17,47.49
.complete 70738,2 
step
.xp 70,1
#title Belongings Found 2/6
>>Pick up the book on the ground
.goto 2025,41.16,47.43
.complete 70741,1,2 
step
.xp 70,1
#title Student Rescued 1/6
>>Rescue the student
.goto 2025,41.45,47.04
.complete 70738,1,1 
step
.xp 70,1
#title Student Rescued 2/6
>>Rescue the student
.goto 2025,41.06,46.81
.complete 70738,1,2 
step
.xp 70,1
#title Belongings Found 3/6
>>Pick up the Lost S.E.L.F.I.E Camera
.goto 2025,40.72,47.31
.complete 70741,1,3 
step
.xp 70,1
#title Student Rescued 3/6
>>Rescue the student
.goto 2025,40.51,47.31
.complete 70738,1,3 
step
.xp 70,1
#title Student Rescued 4/6
>>Rescue the student
.goto 2025,40.18,46.94
.complete 70738,1,4 
step
.xp 70,1
#title Belongings Found 4/6
>>Pick up the Stylish Umbrella
.goto 2025,40.10,46.61
.complete 70741,1,4 
step
.xp 70,1
#title Belongings Found 5/6
>>Pick up the Overturned Beach Chair
.goto 2025,40.27,46.16
.complete 70741,1,5 
step
.xp 70,1
#title Student Rescued 5/6
>>Rescue the student
.goto 2025,40.03,45.98
.complete 70738,1,5 
step
.xp 70,1
#title Student Rescued 6/6
>>Rescue the student
.goto 2025,40.81,46.09
.complete 70738,1 
step
.xp 70,1
#label ThaldraszusTheYougaClass
#title Belongings Found 6/6
>>Pick up the Soggy You-ga Pillow
.goto 2025,41.01,45.96
.complete 70741,1 
step
.xp 70,1
>>Kill |cff00ecffMudgatu|r. Loot him for the sunglasses. Click it in your bags
>>|cffffff00You can only do this quest above lvl 68|r
.goto 2025,40.49,45.34
.collect 200586,1,70377,1
.accept 70377 >>Accept Derelict Fashion
step
.xp 70,1
>>Kill |cff00ecffElementals|r
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
#loop
.line 2025,39.99,45.69,39.46,47.37,40.46,48.00,41.48,47.33,40.98,45.52
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
.complete 70740,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zeldis
.isOnQuest 70377
.goto 2025,39.4,48.4
.turnin 70377 >>Turn in Derelict Fashion
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 70738 >>Turn in The You-ga Class
.turnin 70741 >>Turn in Some Favorite Things
.goto 2025,40.49,48.92
.turnin 70740 >>Turn in Steam Cleaning
.goto 2025,40.46,48.88
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara
.goto 2025,40.49,48.97
.accept 70743 >>Accept Precious Baby
step
.xp 70,1
>>Follow the arrow
.goto 2025,38.90,45.22
.complete 70743,1 
step
.xp 70,1
>>Wait for the roleplay and click on the puppy
.goto 2025,38.90,45.22
.complete 70743,2 
step
.xp 70,1
.goto 2025,38.89,45.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Horrible Mess
.accept 70744 >>Accept Look at the Bones!
step
.xp 70,1
#title Cleaned Mess 2/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.92,45.22
.complete 70744,1,2 
step
.xp 70,1
#title Cleaned Mess 3/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.52,45.73
.complete 70744,1,3 
step
.xp 70,1
#title Cleaned Mess 4/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.65,46.19
.complete 70744,1,4 
step
.xp 70,1
#title Cleaned Mess 5/10
>>Pick up More Horrible Mess off the ground
.goto 2025,37.91,46.22
.complete 70744,1,5 
step
.xp 70,1
#title Cleaned Mess 6/10
>>Pick up More Horrible Mess off the ground
.goto 2025,37.79,46.29
.complete 70744,1,6 
step
.xp 70,1
#title Cleaned Mess 7/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.03,47.10
.complete 70744,1,7 
step
.xp 70,1
#title Cleaned Mess 8/10
>>Pick up More Horrible Mess off the ground
.goto 2025,39.18,47.34
.complete 70744,1,8 
step
.xp 70,1
#title Cleaned Mess 9/10
>>Pick up More Horrible Mess off the ground
.goto 2025,39.56,47.21
.complete 70744,1,9 
step
.xp 70,1
#title Cleaned Mess 10/10
>>Pick up More Horrible Mess off the ground
.goto 2025,39.70,47.88
.complete 70744,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara and Quillius
.turnin 70743 >>Turn in Precious Baby
.turnin 70744 >>Turn in Look at the Bones!
.goto 2025,40.49,48.97
.accept 70745 >>Accept Enforced Relaxation
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith next
.goto 2025,39.69,47.45,20,0
.goto 2025,39.89,48.45,15 >>Enter the cave below
step
.xp 70,1
>>Kill |cff00ecffVadme Blackheart|r. Move out of the fire and water void zones
.goto 2025,40.04,49.05
.complete 70745,1 
step
.xp 70,1
.goto 2025,40.46,48.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quilius
.turnin 70745 >>Turn in Enforced Relaxation
step
.xp 70,1
.goto 2025,50.27,67.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Szareth
.accept 69932 >>Accept Every Life Counts
.accept 69933 >>Accept Curiosity's Price
step
.xp 70,1
#completewith ThaldraszusCuriositysPrice
>>Kill |cff00ecffProductive Pollinators|r. Loot them for the pollen
>>Or loot the Magnificent Flowers
.complete 69932,2 
step
.xp 70,1
#title Sun-Basked Linens 1/6
>>Pick up the Handwoven Basket
.goto 2025,49.60,67.54
.complete 69932,1,1 
step
.xp 70,1
#title Sun-Basked Linens 2/6
>>Pick up the Handwoven Basket
.goto 2025,49.28,67.47
.complete 69932,1,2 
step
.xp 70,1
#title Sun-Basked Linens 3/6
>>Pick up the Handwoven Basket
.goto 2025,49.00,67.24
.complete 69932,1,3 
step
.xp 70,1
#title Sun-Basked Linens 4/6
>>Pick up the Handwoven Basket
.goto 2025,48.80,67.22
.complete 69932,1,4 
step
.xp 70,1
#title Sun-Basked Linens 5/6
>>Pick up the Handwoven Basket
.goto 2025,49.60,67.54
.complete 69932,1,5 
step
.xp 70,1
#title Sun-Basked Linens 6/6
>>Pick up the Handwoven Basket
.goto 2025,48.81,67.04
.complete 69932,1 
step
.xp 70,1
#label ThaldraszusCuriositysPrice
>>Click on the Stubborn Vine and then pull it out by moving away
>>Afterwards kill the Laden Lasher
.goto 2025,48.99,66.90
.complete 69933,1 
.complete 69933,2 
step
.xp 70,1
>>Kill |cff00ecffProductive Pollinators|r. Loot them for the pollen
>>Or loot the Magnificent Flowers
.goto 2025,49.26,66.42,25,0
.goto 2025,49.89,66.67,25,0
.goto 2025,49.31,66.83
.complete 69932,2 
step
.xp 70,1
>>Click on the Little Jetstream inside the building
.goto 2025,49.42,67.92
.complete 69932,3 
step
.xp 70,1
.goto 2025,50.28,67.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Szareth
.turnin 69932 >>Turn in Every Life Counts
.turnin 69933 >>Turn in Curiosity's Price
.accept 69934 >>Accept Bleeding Hearts
step
.xp 70,1
#completewith next
.goto 2025,52.99,67.56,15 >>Enter the cave
step
.xp 70,1
>>Click on the chest in the cave
.goto 2025,53.32,67.52
.complete 69934,2 
step
.xp 70,1
.goto 2025,52.39,68.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Nori
.accept 66448 >>Accept The Wayward Waywatcher
step
.xp 70,1
>>Click on the chest inside the Gelikyr Post
.goto 2025,51.69,69.16
.complete 69934,4 
step
.xp 70,1
.goto 2025,51.70,69.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Timetender Athekk
.turnin 69934 >>Turn in Bleeding Hearts
step
.xp 70,1
.goto 2025,54.68,69.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.turnin 66448 >>Turn in The Wayward Waywatcher
.accept 66100 >>Accept Supplying in Weight
.accept 66230 >>Accept A Sketchy Request
step
.xp 70,1
#completewith ThaldraszusSupplyinginWeight
>>Kill |cff00ecffEmebertooths|r. Loot them for the key
.complete 66230,1 
step
.xp 70,1
#title Supplies 1/6
>>Pick up the Waywatcher Supplies
.goto 2025,55.07,68.67
.complete 66100,1,1 
step
.xp 70,1
#title Supplies 2/6
>>Pick up the Waywatcher Supplies
.goto 2025,55.18,68.11
.complete 66100,1,2 
step
.xp 70,1
#title Supplies 3/6
>>Pick up the Waywatcher Supplies
.goto 2025,55.51,68.43
.complete 66100,1,3 
step
.xp 70,1
#title Supplies 4/6
>>Pick up the Waywatcher Supplies
.goto 2025,55.73,68.11
.complete 66100,1,4 
step
.xp 70,1
#label ThaldraszusSupplyinginWeight
#title Supplies 5/6
>>Pick up the Waywatcher Supplies
.goto 2025,55.54,69.35
.complete 66100,1,5 
step
.xp 70,1
>>Kill |cff00ecffEmebertooths|r. Loot them for the key
.goto 2025,55.51,69.03
.complete 66230,1 
step
.xp 70,1
>>Open the Tarasek Lockbox
.goto 2025,55.53,69.37
.complete 66230,2 
step
.xp 70,1
#title Supplies 6/6
>>Pick up the Waywatcher Supplies
.goto 2025,55.93,68.61
.complete 66100,1 
step
.xp 70,1
.goto 2025,56.95,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.turnin 66100 >>Turn in Supplying in Weight
.turnin 66230 >>Turn in A Sketchy Request
.accept 66456 >>Accept A Poisonous Palette
.accept 66457 >>Accept Ending the Blue Period
step
.xp 70,1
#completewith ThaldraszusEndingtheBluePeriod
>>Kill |cff00ecffEmbertooth Spearhunter|r. Loot them for their spears
.complete 66456,1 
step
.xp 70,1
#completewith next
.goto 2025,55.78,71.02,15 >>Enter the cave
step
.xp 70,1
#label ThaldraszusEndingtheBluePeriod
>>Kill |cff00ecffBluescale|r
.complete 66457,1 
step
.xp 70,1
>>Kill |cff00ecffEmbertooth Spearhunter|r. Loot them for their spears
.goto 2025,55.31,71.58,25,0
.goto 2025,55.27,70.46,25,0
.goto 2025,56.22,69.87,25,0
.goto 2025,56.37,70.42,25,0
.goto 2025,55.75,70.94,25,0
#loop
.line 2025,55.31,71.58,55.27,70.46,56.22,69.87,56.37,70.42,55.75,70.94
.goto 2025,55.31,71.58,30,0
.goto 2025,55.27,70.46,30,0
.goto 2025,56.22,69.87,30,0
.goto 2025,56.37,70.42,30,0
.goto 2025,55.75,70.94,30,0
.complete 66456,1 
step
.xp 70,1
.goto 2025,56.94,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.turnin 66456 >>Turn in A Poisonous Palette
.turnin 66457 >>Turn in Ending the Blue Period
step
.xp 70,1
.goto 2025,56.94,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.accept 66465 >>Accept Cache and Release
.accept 66467 >>Accept Art Imitates Life
step
.xp 70,1
#title Cache Destroyed 1/8
.goto 2025,56.90,66.44
>>Destroy the Spear Cache
.complete 66465,1,1 
step
.xp 70,1
#title Cache Destroyed 2/8
.goto 2025,57.27,66.15
>>Destroy the Spear Cache
.complete 66465,1,2 
step
.xp 70,1
#title Cache Destroyed 3/8
.goto 2025,57.45,66.89
>>Destroy the Spear Cache
.complete 66465,1,3 
step
.xp 70,1
#title Cache Destroyed 4/8
.goto 2025,57.83,66.38
>>Destroy the Spear Cache
.complete 66465,1,4 
step
.xp 70,1
#title Cache Destroyed 5/8
.goto 2025,58.15,66.11
>>Destroy the Spear Cache
.complete 66465,1,5 
step
.xp 70,1
#title Cache Destroyed 6/8
.goto 2025,58.33,66.32
>>Destroy the Spear Cache
.complete 66465,1,6 
step
.xp 70,1
#title Cache Destroyed 7/8
.goto 2025,58.30,66.40
>>Destroy the Spear Cache
.complete 66465,1,7 
step
.xp 70,1
#title Cache Destroyed 8/8
.goto 2025,58.17,66.77
>>Destroy the Spear Cache
.complete 66465,1 
step
.xp 70,1
>>Kill the |cff00ecffGreater Venomsprout|r
.goto 2025,58.30,67.16
.complete 66467,1 
step
.xp 70,1
.goto 2025,54.65,69.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave the cave and talk to Waywatcher Alvi
.turnin 66465 >>Turn in Cache and Release
.turnin 66467 >>Turn in Art Imitates Life
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2112,61.56,39.13
.accept 66320 >>Accept The Flow of Time
.target Nozdormu
step
.xp 70,1
#title Dragon Glyph: Gelikyr Overlook
.goto 2025,52.70,67.41
.achievement 16578,11 >>Pick up the Dragon Glyph above the lower bridge
step
.xp 70,1
#title Dragon Glyph: Passage of Time
.goto 2025,55.71,72.20
.achievement 16578,12 >>Pick up the Dragon Glyph at the entrance of the Shifting Sands
step
.xp 70,1
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie and wait for the roleplay
>>|cffffff00Spend your Dragon Glyphs while waiting for the roleplay|r
.skipgossip 187100,1
.timer 44,Roleplay Duration
.complete 66320,1 
.target Chromie
step
.xp 70,1
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 66320 >>Turn in The Flow of Time
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2025,57.53,78.79
.accept 66080 >>Accept Temporal Difficulties
.target Andantenormu
step
.xp 70,1
>>Be careful not to get knocked off
.goto 2025,55.60,77.33
.accept 69873 >>Accept Henlare (Elite Objective)
.complete 69873,1 
step
.xp 70,1
>>Follow the arrow
.goto 2025,54.99,75.64
.complete 66080,1 
step
.xp 70,1
.goto 2025,54.96,75.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66080 >>Turn in Temporal Difficulties
.accept 70136 >>Accept Haven't Got Time For the Pain
.target Siaszerathel
step
.xp 70,1
#sticky
#label ThaldraszusHaventGotTimeForStaff
>>Pick up the staff
.goto 2025,52.72,76.86,0,0
.complete 70136,1 
step
.xp 70,1
>>Kill the |cff00ecffCrazed Alpha|r
.goto 2025,52.69,76.81
.complete 70136,3 
step
.xp 70,1
#requires ThaldraszusHaventGotTimeForStaff
>>Pick up the notes
.goto 2025,53.18,77.39
.complete 70136,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,54.96,75.65
.turnin 70136 >>Turn in Haven't Got Time For the Pain
.accept 66082 >>Accept Time in a Bottle
.accept 66081 >>Accept Time is Running Out
.target Siaszerathel
step
.xp 70,1
#sticky
#label ThaldraszusTimeinaBottle
.goto 2025,54.25,76.62,0,0
>>Kill mobs in the area and run through the Time Mote (glowing orbs)
*Sadly others can steal your orbs :(
.complete 66082,1 
step
.xp 70,1
#title Collector 1
.goto 2025,55.07,76.76
.complete 66081,1,1 
step
.xp 70,1
#title Collector 2
.goto 2025,55.57,76.80
.complete 66081,1,2 
step
.xp 70,1
#title Collector 3
.goto 2025,56.48,78.08
.complete 66081,1,3 
step
.xp 70,1
#title Collector 4
.goto 2025,55.60,78.95
.complete 66081,1,4 
step
.xp 70,1
#title Collector 5
.goto 2025,55.02,78.81
.complete 66081,1,5 
step
.xp 70,1
#title Collector 6
.goto 2025,55.20,77.85
.complete 66081,1,6 
step
.xp 70,1
#title Collector 7
.goto 2025,54.34,77.86
.complete 66081,1,7 
step
.xp 70,1
#title Collector 8
.goto 2025,54.25,76.62
.complete 66081,1 
step
.xp 70,1
#requires ThaldraszusTimeinaBottle
.goto 2025,57.45,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66082 >>Turn in Time in a Bottle
.turnin 66081 >>Turn in Time is Running Out
.timer 10,Roleplay Duration
.target Siaszerathel
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu after a short roleplay
.goto 2025,57.52,78.79
.accept 66083 >>Accept Feels Like the First Time
.timer 20,Roleplay Duration
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Andantenormu and talk to him
.goto 2025,57.58,78.37
.skipgossip
.complete 66083,1 
.target Andantenormu
step
.xp 70,1
>>Interact with the Temporal Collector
.goto 2025,57.68,78.33
.complete 66083,2 
step
.xp 70,1
>>Interact with the Crystal Focus
.goto 2025,57.66,78.39
.complete 66083,3 
step
.xp 70,1
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
.xp 70,1
>>Interact with the Time-Lost Artifact
.goto 2025,57.64,78.46
.complete 66083,4 
.timer 90,Roleplay Duration
step
.xp 70,1
>>Wait until Andantenormu brings you back. You can also go through the time portal
.complete 66083,5 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Andantenormu and talk to him
.goto 2025,57.52,78.79
.turnin 66083 >>Turn in Feels Like the First Time
.accept 66084 >>Accept Times Like These
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,57.45,78.92
.accept 66085 >>Accept If We Could Turn Back Time
.target Siaszerathel
step
.xp 70,1
#completewith next
.goto 2025,57.62,79.02
.fp >>Get the Shifting Sands Flight Path
step
.xp 70,1
#completewith ThaldraszusIfWeCouldTurnBackTime
>>Kill mostly |cff00ecffmurlocs|r in the area. Loot them for the residue
.complete 66084,1 
step
.xp 70,1
>>Interact with the Time Rift
.goto 2025,58.59,78.21
.complete 66085,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,59.80,79.31
.skipgossip
.timer 5,Roleplay Duration
.complete 66085,2 
.target Siaszerathel
step
.xp 70,1
>>Interact with the Time Rift
.goto 2025,60.00,79.28
.complete 66085,3 
step
.xp 70,1
>>Interact with the Time Rift
.goto 2025,59.98,77.20
.complete 66085,4 
step
.xp 70,1
#label ThaldraszusIfWeCouldTurnBackTime
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu
.goto 2025,59.95,77.23
.skipgossip
.complete 66085,5 
.target Aeonormu
step
.xp 70,1
>>Kill mostly |cff00ecffmurlocs|r in the area. Loot them for the residue
.goto 2025,59.81,78.84,25,0
.goto 2025,58.58,77.11,25,0
.goto 2025,58.30,78.80,25,0
.goto 2025,59.96,79.27,25,0
.goto 2025,59.43,78.17
.complete 66084,1 
step
.xp 70,1
#requires ThaldraszusTimesLikeThese
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Siaszerathel
.turnin 66084 >>Turn in Times Like These
.goto 2025,57.52,78.79
.turnin 66085 >>Turn in If We Could Turn Back Time
.goto 2025,57.45,78.92
.target Andantenormu
.target Siaszerathel
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu
.goto 2025,57.55,78.87
.accept 66087 >>Accept Closing Time
.target Aeonormu
step
.xp 70,1
>>Focus on the closing Time Rifts and buffing |cff00ff00Bronze Warders|r with the |cffffff00[ExtraActionButton]|r
*You can also kill mobs
.goto 2025,57.17,81.02,20,0
.goto 2025,57.74,81.17,20,0
.goto 2025,56.84,82.16,20,0
.goto 2025,56.95,84.29,20,0
.goto 2025,57.68,84.86,20,0
.goto 2025,57.88,83.81,20,0
.goto 2025,57.88,84.55
.complete 66087,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu and Andantenormu
.turnin 66087 >>Turn in Closing Time
.goto 2025,57.55,78.87
.accept 65935 >>Accept Catching Up to Chromie
.goto 2025,57.52,78.80
.target Andantenormu
.target Aeonormu
step
.xp 70,1
>>Fly to Chromie
.goto 2025,59.64,81.51
.complete 65935,1 
.target Chromie
step
.xp 70,1
.goto 2025,59.57,81.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 65935 >>Turn in Catching Up to Chromie
.accept 65948 >>Accept Cracks in Time
.accept 65947 >>Accept Time-Locked Timewalkers
.target Chromie
step
.xp 70,1
.goto 2025,59.56,82.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.accept 66646 >>Accept Quelling Causalities
.target Andantenormu
step
.xp 70,1
#completewith ThaldraszusCracksInTime
>>Kill |cff00ecffTimelings|r and |cff00ecffTimeless Causalities|r
.complete 66646,1 
step
.xp 70,1
#title Timewalker 1
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,59.01,82.77
.complete 65947,1,1 
step
.xp 70,1
#title Timewalker 2
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,58.72,82.44
.complete 65947,1,2 
step
.xp 70,1
#title Timewalker 3
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,58.38,82.14
.complete 65947,1,3 
step
.xp 70,1
#title Timewalker 4
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,58.15,82.86
.complete 65947,1,4 
step
.xp 70,1
>>Use the |cffffff00[ExtraActionButton]|r and move away from the crystal
.goto 2025,58.46,83.10
.complete 65948,1 
step
.xp 70,1
>>Interact with the Temporal Crystals on the ground to collect 50 energy.
.goto 2025,58.41,82.98
.complete 65948,3,50 
step
.xp 70,1
#title Timewalker 5
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.31,81.39
.complete 65947,1,5 
step
.xp 70,1
>>Use the |cffffff00[ExtraActionButton]|r and move away from the crystal
.goto 2025,60.76,80.48
.complete 65948,2 
step
.xp 70,1
#completewith ThaldraszusTimeLockedTimewalkers
>>Interact with the Temporal Crystals on the ground to collect the missing 50 energy.
.goto 2025,60.68,80.37,0,0
.complete 65948,3 
step
.xp 70,1
#title Timewalker 6
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.87,80.02
.complete 65947,1,6 
step
.xp 70,1
#title Timewalker 7
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.46,79.74
.complete 65947,1,7 
step
.xp 70,1
#label ThaldraszusTimeLockedTimewalkers
#title Timewalker 8
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.27,80.40
.complete 65947,1 
step
.xp 70,1
#label ThaldraszusCracksInTime
>>Interact with the Temporal Crystals on the ground to collect the missing 50 energy.
.goto 2025,60.68,80.37
.complete 65948,3 
step
.xp 70,1
>>Kill |cff00ecffTimelings|r and |cff00ecffTimeless Causalities|r
.goto 2025,58.46,83.10,30,0
.goto 2025,60.25,80.16,30,0
.goto 2025,60.76,80.48
.complete 66646,1 
step
.xp 70,1
#requires ThaldraszusQuellingCausalities
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Chromie
.turnin 66646 >>Turn in Quelling Causalities
.goto 2025,59.56,82.67
.turnin 65947 >>Turn in Time-Locked Timewalkers
.turnin 65948 >>Turn in Cracks in Time
.accept 65938 >>Accept The Once and Future Team
.goto 2025,59.58,81.75
.target Andantenormu
.target Chromie
step
.xp 70,1
>>Use the |cffffff00[ExtraActionButton]|r and walk down the ramp
*Make sure to dismount
.goto 2025,60.49,83.26
.complete 65938,1 
step
.xp 70,1
>>Kill the |cff00ecffGiant Time Elemental|r
.goto 2025,60.68,83.58
.complete 65938,2 
step
.xp 70,1
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,59.58,81.71
.turnin 65938 >>Turn in The Once and Future Team
.accept 65962 >>Accept The Never-Final Countdown
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,59.58,81.71
.skipgossip 6
.complete 65962,1 
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2025,60.05,82.45
.turnin 65962 >>Turn in The Never-Final Countdown
.accept 70040 >>Accept Tumbling Through Time
.target Nozdormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi
.goto 2025,59.52,82.51
.skipgossip
.complete 70040,1 
.target Soridormi
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,59.30,82.16
.skipgossip
.complete 70040,3 
.target Siaszerathel
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2025,60.19,81.77
.skipgossip
.complete 70040,2 
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu and wait for the roleplay
.goto 2025,60.06,82.44
.skipgossip 186931,1
.timer 24,Roleplay Duration
.complete 70040,4 
.target Nozdormu
step
.xp 70,1
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 70040 >>Turn in Tumbling Through Time
.accept 66029 >>Accept Temporal Tuning
.accept 66028 >>Accept To the Future!
.target Nozdormu
step
.xp 70,1
>>Interact with the Portal to the Primalist Future
.goto 2025,59.83,82.24
.complete 66028,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi and Possible Future You
.turnin 66028 >>Turn in To the Future!
.accept 66030 >>Accept Resistance Isn't Futile
.goto 2085,61.10,50.82
.accept 66031 >>Accept Making Time
.goto 2085,61.45,50.20
.target Soridormi
.target Possible Future You
step
.xp 70,1
>>Use the |T133240:0|t[Chrono Crystal] near Chromie and Eternus
.goto 2085,46.92,41.15
.use 192749
.complete 66029,1 
step
.xp 70,1
#completewith ThaldraszusResistanceIsntFutile
+Use the |cffffff00[ExtraActionButton]|r if you need help fighting
step
.xp 70,1
#completewith ThaldraszusResistanceIsntFutile
>>Kill |cff00ecffHoary Icicles|r or |cff00ecffRestless Icicles|r. Loot them for the essences
*Avoid killing elites
.complete 66031,1 
step
.xp 70,1
#title Fighter Healed 1
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,44.72,43.63
.complete 66030,1,1 
step
.xp 70,1
#title Fighter Healed 2
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,43.49,41.13
.complete 66030,1,2 
step
.xp 70,1
#title Fighter Healed 3
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,44.32,38.42
.complete 66030,1,3 
step
.xp 70,1
#title Fighter Healed 4
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,46.97,36.33
.complete 66030,1,4 
step
.xp 70,1
#title Fighter Healed 5
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,46.04,32.44
.complete 66030,1,5 
step
.xp 70,1
#title Fighter Healed 6
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,50.64,30.28
.complete 66030,1,6 
step
.xp 70,1
#title Fighter Healed 7
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,52.77,30.22
.complete 66030,1,7 
step
.xp 70,1
#title Fighter Healed 8
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,54.49,28.54
.complete 66030,1,8 
step
.xp 70,1
#title Fighter Healed 9
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,52.47,24.21
.complete 66030,1,9 
step
.xp 70,1
#label ThaldraszusResistanceIsntFutile
#title Fighter Healed 10
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,62.04,28.40
.complete 66030,1,10 
step
.xp 70,1
>>Kill and LOOT |cff00ecffHoary Icicles|r or |cff00ecffRestless Icicles|r
*Avoid killing elites
.goto 2085,57.87,25.26,20,0
.goto 2085,52.36,24.46,20,0
.goto 2085,56.61,28.14
.complete 66031,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Possible Future You and Soridormi
.turnin 66031 >>Turn in Making Time
.goto 2085,61.47,50.22
.turnin 66030 >>Turn in Resistance Isn't Futile
.goto 2085,61.08,50.83
step
.xp 70,1
.goto 2085,61.09,50.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi
.accept 66032 >>Accept Return to the Present
.target Soridormi
step
.xp 70,1
#completewith next
.goto 2085,61.01,50.55
.zone 2025 >>Use the portal back
step
.xp 70,1
.goto 2025,60.05,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66029 >>Turn in Temporal Tuning
.turnin 66032 >>Turn in Return to the Present
.accept 72519 >>Accept Temporal Two-ning
.accept 66033 >>Accept To the... Past?
.target Nozdormu
step
.xp 70,1
>>Use the Portal to Azmerloth
.goto 2025,59.97,82.08
.complete 66033,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66033 >>Turn in To the... Past?
.accept 66035 >>Accept Murloc Motes
.goto 2092,59.83,66.15
.accept 66036 >>Accept Mugurlglrlgl! << Alliance
.accept 66704 >>Accept Mugurlglrlgl! << Horde
.goto 2092,59.97,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
.xp 70,1
#completewith next
+You can only use normal ground mounts here!
step
.xp 70,1
#completewith ThaldraszusMurlocMotes
>>Kill |cff00ecffDeathling Destroyers|r and |cff00ecffDeathlings|r
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
.xp 70,1
#title Mote 1
>>Run through the Motes. You may have to jump
.goto 2092,60.05,68.69
.complete 66035,1,1 
step
.xp 70,1
#title Mote 2
>>Run through the Motes. You may have to jump
.goto 2092,60.62,68.39
.complete 66035,1,2 
step
.xp 70,1
#title Mote 3
>>Run through the Motes. You may have to jump
.goto 2092,60.71,66.76
.complete 66035,1,3 
step
.xp 70,1
#title Mote 4
>>Run through the Motes. You may have to jump
.goto 2092,61.27,67.05
.complete 66035,1,4 
step
.xp 70,1
#title Mote 5
>>Run through the Motes. You may have to jump
.goto 2092,61.61,65.98
.complete 66035,1,5 
step
.xp 70,1
#title Mote 6
>>Run through the Motes. You may have to jump
.goto 2092,62.54,66.16
.complete 66035,1,6 
step
.xp 70,1
#title Mote 7
>>Run through the Motes. You may have to jump
.goto 2092,62.72,65.11
.complete 66035,1,7 
step
.xp 70,1
#title Mote 8
>>Run through the Motes. You may have to jump
.goto 2092,61.85,63.81
.complete 66035,1,8 
step
.xp 70,1
>>Use |T133240:0|t[Chrono Crystal] near Chromie and Eternus
.goto 2092,61.49,61.76
.use 192749
.complete 72519,1 
step
.xp 70,1
#title Mote 9
>>Run through the Motes. You may have to jump
.goto 2092,61.22,63.50
.complete 66035,1,9 
step
.xp 70,1
#title Mote 10
>>Run through the Motes. You may have to jump
.goto 2092,60.28,63.88
.complete 66035,1,10 
step
.xp 70,1
#title Mote 11
>>Run through the Motes. You may have to jump
.goto 2092,59.25,63.30
.complete 66035,1,11 
step
.xp 70,1
#label ThaldraszusMurlocMotes
#title Mote 12
>>Run through the Motes. You may have to jump
.goto 2092,58.53,64.12
.complete 66035,1 
step
.xp 70,1
>>Kill |cff00ecffDeathling Destroyers|r and |cff00ecffDeathlings|r
.goto 2092,58.57,64.94,25,0
.goto 2092,59.25,67.50,25,0
.goto 2092,60.77,67.83,25,0
.goto 2092,61.69,64.23
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66035 >>Turn in Murloc Motes
.goto 2092,59.84,66.14
.turnin 66036 >>Turn in Mugurlglrlgl! << Alliance
.turnin 66704 >>Turn in Mugurlglrlgl! << Horde
.accept 70373 >>Accept Deathwingurlugull! << Alliance
.accept 70371 >>Accept Deathwingurlugull! << Horde
.timer 5,Roleplay Duration
.goto 2092,59.98,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
.xp 70,1
>>Mount the Hopper after a short roleplay
.goto 2092,59.81,65.71
.complete 70373,1 <<Alliance 
.complete 70371,1 <<Horde 
step
.xp 70,1
>>Spam |T651086:0|tFisbolts (1). Use (2) and (3) on cooldown.
*Make sure to target Deathwingurlugull.
.complete 70373,2 <<Alliance 
.complete 70371,2 <<Horde 
step
.xp 70,1
#completewith next
+|cfff78300Leave the vehicle early|r
step <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Varian Wryngrrlgulgll and Andantenormu
.turnin 70373 >>Turn in Deathwingurlugull!
.goto 2092,59.91,65.99
.accept 66037 >>Accept Back to Reality
.goto 2092,59.83,66.14
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
step <<Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrallgrulgulgul and Andantenormu
.turnin 70371 >>Turn in Deathwingurlugull!
.goto 2092,59.97,65.99
.accept 66037 >>Accept Back to Reality
.goto 2092,59.83,66.14
.target Andantenormu
.target Thrallgrulgulgul << Horde
step
.xp 70,1
#completewith next
.goto 2092,59.72,66.11
.zone 2025 >>Use the Portal to Temporal Conflux
step
.xp 70,1
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66037 >>Turn in Back to Reality
.turnin 72519 >>Turn in Temporal Two-ning
.accept 66660 >>Accept On Your Mark... Get Set...
.target Nozdormu
step
.xp 70,1
>>Use the Portal to the Gnoll War
.goto 2025,59.92,82.19
.complete 66660,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2090,43.39,69.22
.turnin 66660 >>Turn in On Your Mark... Get Set...
.accept 66038 >>Accept Race Through Time!
.target Andantenormu
step
.xp 70,1
#completewith ThaldraszusRaceThroughTime
+|cfff78300Run through the speed boots to gain a movement speed buff and avoid the circles|r
step
.xp 70,1
.isOnQuest 66038
.goto 2090,43.19,68.05,15,0
.goto 2090,42.97,66.93,15,0
.goto 2090,42.61,65.18,15,0
.goto 2090,41.96,63.82,15,0
.goto 2090,41.58,61.96,15,0
.goto 2090,40.63,59.71,15,0
.goto 2090,40.32,57.88,15,0
.goto 2090,39.65,56.46,15,0
.goto 2090,38.11,54.13,15,0
.goto 2090,37.08,53.36,15,0
.goto 2090,35.78,53.56,15,0
.goto 2090,34.68,53.16,15,0
.goto 2090,33.77,52.04,15,0
.goto 2090,32.83,50.54,15,0
.goto 2090,32.37,49.70
.zone 2091 >>Follow the arrow. Reach the first portal
step
.xp 70,1
.isOnQuest 66038
.goto 2091,47.16,66.66,15,0
.goto 2091,46.67,67.58,15,0
.goto 2091,45.90,68.25,15,0
.goto 2091,45.16,69.52,15,0
.goto 2091,44.47,69.63,15,0
.goto 2091,43.24,70.61,15,0
.goto 2091,42.02,72.21,15,0
.goto 2091,41.39,73.50,15,0
.goto 2091,40.97,75.02,15,0
.goto 2091,40.34,75.91,15,0
.goto 2091,39.52,76.78
.zone 2088 >>Follow the arrow. Reach the second portal
step
.xp 70,1
.isOnQuest 66038
.goto 2088,31.30,63.53,15,0
.goto 2088,30.14,63.46,25,0
.goto 2088,28.64,62.93,25,0
.goto 2088,27.67,62.74,25,0
.goto 2088,24.05,60.46,25,0
.goto 2088,22.84,59.25,25,0
.goto 2088,22.11,60.21,25,0
.goto 2088,21.42,59.20,25,0
.goto 2088,19.80,58.69,25,0
.goto 2088,17.92,59.28,25,0
.goto 2088,15.74,58.55,25,0
.goto 2088,15.05,83.53
.zone 2089 >>Follow the arrow. Reach the third portal
step
.xp 70,1
#label ThaldraszusRaceThroughTime
.goto 2089,43.38,69.19
.complete 66038,1 
step
.xp 70,1
.goto 2089,52.36,73.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.turnin 66038 >>Turn in Race Through Time!
.accept 66039 >>Accept Chromie Time
.target Andantenormu
step
.xp 70,1
.itemcount 132516,1
#completewith TheBlackEmpireChromieTime
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
.xp 70,1
.itemcount 132516,0
#completewith TheBlackEmpireChromieTime
+You can only use normal mounts
step
.xp 70,1
#completewith next
.goto 2089,57.08,69.02,20,0
.goto 2089,57.44,54.32,20,0
.goto 2089,53.76,43.23,20 >>Follow the arrow
step
.xp 70,1
#label TheBlackEmpireChromieTime
>>Use |T133240:0|t[Chrono Crystal] near Chromie and Eternus
.goto 2089,53.76,43.23
.use 192749
.complete 66039,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2089,53.41,43.93
.turnin 66039 >>Turn in Chromie Time
.accept 66040 >>Accept Back to the Future
.target Chromie
step
.xp 70,1
#completewith next
+Don't forget that you can use your |cffffff00[ExtraActionButton]|r
+You can skip the next cutscene (Esc -> Yes)
step
.xp 70,1
>>Kill the incoming waves
.goto 2089,52.94,44.53
.skipgossip
.complete 66040,1 
.complete 66040,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,60.08,82.42
.skipgossip 1
.complete 66040,3 
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2025,60.05,82.45
.turnin 66040 >>Turn in Back to the Future
.accept 66221 >>Accept Moving On
.target Nozdormu
step
.xp 70,1
#completewith next
.hs >>Hearth to Valdrakken
step
.xp 70,1
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza
.goto 2112,58.09,34.76
.skipgossip 187678,1
.complete 66221,1 
.target Alexstrasza the Life-Binder
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2112,58.09,34.76
.turnin 66221 >>Turn in Moving On
.target Alexstrasza the Life-Binder
step
+Done!
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup First Playthrough (Campaign) 60-70
#displayname Chapter 3 - The Azure Span Campaign
#name 3) The Azure Span Campaign
#next 4) Thaldraszus Campaign
step
#completewith TheAzureSpanTotheAzureSpan
+Welcome to the Azure Span Guide of RestedXP.
step
#title Dragon Glyph: Forkriver Crossing
.goto 2023,70.06,86.98
.achievement 16577,11 >>Pick up the Dragon Glyph in the air
step << !Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones
.goto 2024,41.44,35.62
.turnin 65686 >>Turn in To the Azure Span
.accept 66228 >>Accept Camp Antonidas
.target Glania of the Blessed Ones
step << Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones and Scalecommander Emberthal
.turnin 65686 >>Turn in To the Azure Span
.goto 2024,41.44,35.62
.accept 70746 >>Accept Shades of Blue
.target Glania of the Blessed Ones
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.23,35.88
.accept 67174 >>Accept Arcane Detection
.target Miva Star-Eye
step
>>Interact with the Unassuming Flask
.goto 2024,41.39,35.70
.complete 67174,1 
step
>>Interact with the Dusty Teapot
.goto 2024,41.41,35.84
.complete 67174,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.accept 67177 >>Accept WANTED: Gorger
.target Shala
step
>>Interact with Toolky's Toy Boat
.goto 2024,41.23,36.37
.complete 67174,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.22,35.89
.turnin 67174 >>Turn in Arcane Detection
.accept 67175 >>Accept How To Stop An Exploding Toy Boat
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Julk
.goto 2024,41.21,35.86
.skipgossip
.timer 15,Roleplay Duration
.complete 67175,1 
.target Julk
step
>>After a short roleplay interact with the wand
.goto 2024,41.19,35.91
.complete 67175,2 
step
>>Click on the toy boat
.goto 2024,40.59,36.55
.complete 67175,3 
step
>>Kill |cff00ecffGorger|r. Loot him for his horns
.goto 2024,39.66,37.24
.complete 67177,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.21,35.87
.turnin 67175 >>Turn in How To Stop An Exploding Toy Boat
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.turnin 67177 >>Turn in WANTED: Gorger
.target Shala
step << Dracthyr
>>Follow the arrow to Emberthal
.goto 2024,45.00,41.00
.complete 70746,1 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
.goto 2024,45.00,41.00
.turnin 70746 >>Turn in Shades of Blue
.target Scalecommander Emberthal
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Telash Greywing
.goto 2024,45.65,41.20
.accept 70747 >>Accept The Azure Wizard
.target Telash Greywing
step << Dracthyr
#completwith next
+You can skip the next cutscene (Esc -> Yes)
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.skipgossip 192091,1
.complete 70747,1 
.target Archmage Khadgar
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.turnin 70747 >>Turn in The Azure Wizard
.target Archmage Khadgar
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+Fly to Noriko using your dragonriding mount
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+You can skip the next cutscene (Esc -> Yes)
step << !Dracthyr
#label TheAzureSpanCampAntonidas
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 66228 >>Turn in Camp Antonidas
.target Noriko the All-Remembering
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.accept 67033 >>Accept Assemble the Defenses
.accept 67035 >>Accept Preservation of Knowledge
.target Noriko the All-Remembering
.target Althanus
step
#completewith next
.goto 2024,46.71,39.57
.fp >>Get the Camp Antonidas Flight Path
step
#title |T1499566:0:0|tTome 1 + |T1041232:0:0|tDevice 1
>>Pick up the tome and the device on the ground
.goto 2024,46.13,39.27
.complete 67035,1,1 
.complete 67033,1,1 
step
#title |T1499566:0:0|tTome 2
>>Pick up the tome
.goto 2024,45.73,39.29
.complete 67035,1,2 
step
#title |T1499566:0:0|tTome 3
>>Pick up the tome
.goto 2024,46.03,39.82
.complete 67035,1,3 
step
#title |T1041232:0:0|tDevice 2
.goto 2024,45.86,40.18
.complete 67033,1,2 
step
#title |T1499566:0:0|tTome 4 + |T1041232:0:0|tDevice 3
>>Pick up the tome and the device on the ground
.goto 2024,46.07,40.86
.complete 67035,1 
.complete 67033,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.turnin 67033 >>Turn in Assemble the Defenses
.turnin 67035 >>Turn in Preservation of Knowledge
.accept 67036 >>Accept Wrath of the Kirin Tor
.target Noriko the All-Remembering
.target Althanus
step
#completewith next
.goto 2024,46.29,38.86
.vehicle 192331 >>Enter the Arcane Blaster
step
>> Use |T429383:0:0|tArcane Blast (1) to kill the flying dragons. |cfff78300Don't leave the Arcane Blaster manually|r
.goto 2024,46.29,38.86
.complete 67036,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.turnin 67036 >>Turn in Wrath of the Kirin Tor
.goto 2024,46.64,40.16
.target Noriko the All-Remembering
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Archmage Khadgar and talk to him
.accept 65688 >>Accept Meeting Kalecgos
.goto 2024,46.63,40.19
.target Archmage Khadgar
step
#completewith next
.goto 2024,45.99,38.79
.gossipoption 55328 >>Interact with the Supply Portal
.timer 8,Roleplay Duration
step
>>Wait for the bag and pick it up
.goto 2024,45.95,38.90
.complete 65688,1 
.complete 65688,2 
step
>>Interact with the to WANTED pamphlet
.goto 2024,46.13,39.61
.accept 66488 >>Accept WANTED: Frigellus
step
#completewith next
+Fly to Kalecgos using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,40.92,55.00
.turnin 65688 >>Turn in Meeting Kalecgos
.accept 65689 >>Accept The Many Images of Kalecgos
.target Kalecgos
step
#completewith next
>>Interact with the Crystal Pylon from the waypoint location
*Skip this step if you want to fly up
.goto 2024,40.99,55.06
.complete 65689,1 
step
.goto 2024,41.17,57.81
.complete 65689,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to both Mirror Images of Kalecgos
.goto 2024,40.74,59.04
.turnin 65689 >>Turn in The Many Images of Kalecgos
.accept 65702 >>Accept Driven Mad
.accept 65709 >>Accept Arcane Pruning
step
>>Use the |T133622:0:0|t[Bag of Helpful Goods] or use the |cffffff00[ExtraActionButton]|t
.goto 2024,40.72,59.10
.use 191953
.complete 65709,1 
step
#completewith TheAzureSpanArcanePruning1
>>Kill |cff00ecffElementals|r in the area. Loot them for the Unstable Arcana.
.complete 65702,1 
step
#completewith next
+The Scepter has a very high range so you can use it from at least 30 yards away
step
#label TheAzureSpanArcanePruning1
>>Use the |T1379242:0:0|t[Ley Scepter] near the arcane fields
.use 191952
.complete 65709,2 
.goto 2024,39.57,60.27
step
#completewith next
.goto 2024,38.56,59.75,30 >>Fly up
step
.accept 69864 >>Accept Forgotten Creation
.goto 2024,38.56,59.75
.complete 69864,1 
.goto 2024,38.18,59.03
step
#completewith TheAzureSpanArcanePruning2
>>Kill |cff00ecffElementals|r in the area. Loot them for the Unstable Arcana.
.complete 65702,1 
step
#completewith next
+The Scepter has a very high range so you can use it from at least 30 yards away
step
#label TheAzureSpanArcanePruning2
>>Use the |T1379242:0:0|t[Ley Scepter] near the arcane fields
.use 191952
.complete 65709,3 
.goto 2024,41.18,62.26
step
>>Kill and LOOT the |cff00ecffElementals|r in the area
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,40.42,60.51
.complete 65702,1 
step
.goto 2024,40.69,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Mirror Images of Kalecgos
.turnin 65709 >>Turn in Arcane Pruning
.turnin 65702 >>Turn in Driven Mad
.accept 65852 >>Accept Straight to the Top
step
>>Use the |T133622:0:0|t[Bag of Helpful Goods] next to the arcane field
.goto 2024,39.57,60.25
.use 191978
.complete 65852,1 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2024,39.57,60.25
.complete 65852,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.96,61.46
.turnin 65852 >>Turn in Straight to the Top
.accept 65751 >>Accept Platform Adjustments
.accept 65752 >>Accept Arcane Annoyances
.target Kalecgos
step
#completewith next
+You can also just Click on the wyrms to use the item
step
#sticky
#label TheAzureSpanArcaneAnnoyances
>>Use the |T1373906:0:0|t[Arcane Hook] to pull a wyrm down
.use 194891
.goto 2024,39.91,61.66,0,0
.complete 65752,1 
step
#title Energy 1
>>Destroy the energy
.goto 2024,40.23,62.03
.complete 65751,1,1 
step
#title Energy 2
>>Destroy the energy
.goto 2024,39.58,62.72
.complete 65751,1,2 
step
#title Energy 3
>>Destroy the energy
.goto 2024,39.51,61.52
.complete 65751,1,3 
step
#requires TheAzureSpanArcaneAnnoyances
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.97,61.46
.turnin 65751 >>Turn in Platform Adjustments
.turnin 65752 >>Turn in Arcane Annoyances
.accept 65854 >>Accept Reclaiming the Oathstone
.target Kalecgos
step
#title Dragon Glyph: Azure Archives
>>|cffffff00Don't fly down yet|r
.goto 2024,39.34,63.16
.achievement 16577,2 >>Pick up the Dragon Glyph at the top of the archives
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly down and talk to Kalecgos
.goto 2024,39.44,63.18
.skipgossip
.complete 65854,1 
.target Kalecgos
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sindragosa
.goto 2024,39.48,63.07
.turnin 65854 >>Turn in Reclaiming the Oathstone
.accept 65855 >>Accept Aiding Azure Span
.target Sindragosa
step
#completewith next
.goto 2024,37.84,62.00,15 >>Enter the inn
step
#completewith TheAzureSpanAidingAzureSpan
.goto 2024,37.36,62.43
.home >>Set your Hearthstone to The Conjured Biscuit Inn
step
#completewith next
.goto 2024,37.07,60.82
.fp >>Get the Azure Archives Flight Path
step
#label TheAzureSpanAidingAzureSpan
.goto 2024,37.07,60.82
.complete 65855,1 
step
#completewith next
+Use the flightmaster to fly to Camp Antonidas or use your dragonriding mount (faster)
step
#label TheAzureSpanAidingAzureSpan2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 65855 >>Turn in Aiding Azure Span
.accept 66699 >>Accept Ask the Locals
.target Noriko the All-Remembering
.accept 69904 >>Accept Suspiciously Quiet
step
>>Follow the arrow
.goto 2024,47.67,40.26
.skipgossip
.complete 69904,1 
step
.goto 2024,47.67,40.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Scrumpy
.turnin 69904 >>Turn in Suspiciously Quiet
.accept 66500 >>Accept Ways of Seeing
step
>>Click on the purple rune
.goto 2024,47.77,39.98
.skipgossip
.complete 66500,1 
step
>>Kill |cff00ecffFrigellus|r
.goto 2024,47.95,38.09
.complete 66488,1 
.unitscan Frigellus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Korrikunit
.goto 2024,46.76,38.59
.skipgossip
.complete 66699,1 
.target Korrikunit
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jokomuupat
.goto 2024,46.34,38.15
.skipgossip
.complete 66699,2 
.target Jokomuupat
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Custodian Cynegos
.goto 2024,46.01,38.31
.turnin 66488 >>Turn in WANTED: Frigellus
.target Custodian Cynegos
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arch Enchanter Celeste
.goto 2024,45.99,38.41
.accept 66489 >>Accept Setting the Defense
.target Arch Enchanter Celeste
step
>>Click on the purple rune on the pillar
.goto 2024,46.02,38.62
.skipgossip
.complete 66500,4 
step
>>Use |T135477:0|t[Arch Instructor's Wand] while targeting an |cff00ff00Azure Defender|r
.use 192471
.goto 2024,46.17,38.98
.complete 66489,1 
step
.goto 2024,46.00,38.42
>>Return to Arch Enchanter Celeste
.turnin 66489 >>Turn in Setting the Defense
.target Arch Enchanter Celeste
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk
.goto 2024,45.73,38.84
.skipgossip 190225,1
.complete 66699,3 
.target Babunituk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk
.goto 2024,45.73,38.84
.turnin 66699 >>Turn in Ask the Locals
.accept 65864 >>Accept Catch the Caravan
.target Babunituk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caddy Scattershot
.goto 2024,45.69,39.79
.accept 66671 >>Accept Path to Nowhere
.target Caddy Scattershot
step
>>Click on the purple rune
.goto 2024,46.03,40.95
.skipgossip
.complete 66500,3 
step
>>Click on the purple rune
.goto 2024,47.10,40.37
.skipgossip
.complete 66500,2 
step
.goto 2024,47.67,40.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Scrumpy
.turnin 66500 >>Turn in Ways of Seeing
step
.goto 2024,46.64,40.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.accept 66503 >>Accept For The Love of Others
.skipgossip 183543,1
.complete 66503,1 
step
>>Interact with the Ancient Remains
.goto 2024,47.17,40.28
.complete 66503,2 
step
>>Jump down and kill |cff00ecffEcho of Loss|r
.goto 2024,47.02,40.40
.complete 66503,3 
step
.goto 2024,46.64,40.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGlide down with your dragonriding mount and talk to Noriko the All-Remembering
.turnin 66503 >>Turn in For The Love of Others
step
#completewith next
.goto 2024,35.25,36.98,20 >>Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,35.25,36.98
.skipgossip 186224,1
.timer 19,Roleplay Duration
.complete 65864,1 
.target Brena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Elder Poa
.turnin 65864 >>Turn in Catch the Caravan
.goto 2024,35.25,36.97
.accept 65868 >>Accept Those Aren't for Chewing
.goto 2024,35.36,36.94
.accept 65867 >>Accept Howling in the Big Tree Hills
.accept 65866 >>Accept Snap the Traps
.goto 2024,35.28,36.94
.target Brena
.target Elder Poa
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>Kill |cff00ecffGnolls|r in the area. Loot them for the offerings
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>Interact with traps on the ground
.complete 65866,1 
step
>>Kill |cff00ecffHyenamaster Durgun|r
.goto 2024,35.66,34.73
.complete 65867,1 
.unitscan Hyenamaster Durgun
step
#completewith next
.goto 2024,34.95,32.59,10 >>Enter the cave
step
>>Kill |cff00ecffTrap-Layer Kerwal|r
.goto 2024,34.99,32.18
.complete 65867,2 
.unitscan Trap-Layer Kerwal
step
#completewith next
.goto 2024,34.95,32.59,10 >>Leave the cave
step
#label TheAzureSpanHowlingtheBigTreeHills
>>Kill |cff00ecffBakra the Bully|r
.goto 2024,33.96,33.18
.complete 65867,3 
.unitscan Bakra the Bully
step
#completewith next
>>Interact with traps on the ground
.goto 2024,35.34,33.07,0,0
.complete 65866,1 
step
>>Kill |cff00ecffGnolls|r in the area. Loot them for the offerings
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
>>Interact with traps on the ground
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.complete 65866,1 
step
#requires TheAzureSpanThoseArentForChewing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.goto 2024,34.26,31.30
.turnin 65868 >>Turn in Those Aren't for Chewing
.turnin 65867 >>Turn in Howling in the Big Tree Hills
.turnin 65866 >>Turn in Snap the Traps
.timer 17,Roleplay Duration
.target Hanu
step
#completewith next
+Wait for the short roleplay
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.07
.accept 65871 >>Accept Gnoll Way Out
.accept 65872 >>Accept Ill Gnolls with Ill Intent
.accept 65873 >>Accept Leader of the Shadepaw Pack
.accept 65870 >>Accept Supplies!
.target Hanu
.target Brena
.target Elder Poa
step
#completewith next
.goto 2024,33.95,30.64,12 >>Enter the cave
step
#completewith TheAzureSpanLeaderoftheShadepawPack
>>Kill |cff00ecffGnolls|r in the cave
.goto 2132,45.88,50.78,0,0
.complete 65872,1 
step
>>Pick up the basket
.goto 2132,36.31,93.16
.complete 65870,3 
step
>>Pick up the barrel
.goto 2132,29.17,75.42
.complete 65870,1 
step
#title Tuskarr 1
>>Open the cage
.goto 2132,30.36,59.53
.complete 65871,1,1 
step
>>Investigate Norukks corpse
.goto 2132,41.42,63.83
.complete 65871,2 
step
#title Tuskarr 2
>>Open the cage
.goto 2132,46.26,40.92
.complete 65871,1,2 
step
>>Pick up the barrel
.goto 2132,51.40,36.86
.complete 65870,2 
step
#title Tuskarr 3
>>Open the cage
.goto 2132,38.10,32.11
.complete 65871,1 
step
#label TheAzureSpanLeaderoftheShadepawPack
>>Kill |cff00ecffKargpaw the Fetid|r. Loot him for the totem.
.goto 2132,42.27,14.47
.complete 65873,1 
step
>>Kill |cff00ecffGnolls|r in the cave
.goto 2132,37.06,36.14,20,0
.goto 2132,44.64,36.89,20,0
.goto 2132,48.99,26.78,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,64.62,21.19,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,43.73,42.03,20,0
#loop
.line 2132,36.65,34.61,28.82,48.53,29.37,60.34,38.45,52.88,47.14,55.14,46.56,36.26,61.09,39.17,65.72,24.58
.goto 2132,36.65,34.61,20,0
.goto 2132,28.82,48.53,20,0
.goto 2132,29.37,60.34,20,0
.goto 2132,38.45,52.88,20,0
.goto 2132,47.14,55.14,20,0
.goto 2132,46.56,36.26,20,0
.goto 2132,61.09,39.17,20,0
.goto 2132,65.72,24.58,20,0
.complete 65872,1 
step
#completewith next
.goto 2024,34.92,30.03,10 >>Leave the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.06
.turnin 65870 >>Turn in Supplies!
.turnin 65872 >>Turn in Ill Gnolls with Ill Intent
.turnin 65873 >>Turn in Leader of the Shadepaw Pack
.turnin 65871 >>Turn in Gnoll Way Out
.accept 66239 >>Accept Spreading Decay
.target Hanu
.target Brena
.target Elder Poa
step
#completewith next
+Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,28.69,34.82
.turnin 66239 >>Turn in Spreading Decay
.accept 65869 >>Accept Another Ambush
.target Brena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akiun
.goto 2024,28.68,34.75
.skipgossip
.complete 65869,1 
.target Akiun
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>Use Gunshoes. Activate RP-Walk next to the NPCs to talk to them
step
#title Body 1
>>Interact with the body while mounted
.goto 2024,29.25,33.57
.skipgossip
.complete 65869,2,1 
step
#title Body 2
>>Interact with the body while mounted
.goto 2024,29.17,32.56
.skipgossip
.complete 65869,2,2 
step
#title Body 3
>>Interact with the body while mounted
.goto 2024,28.20,31.86
.skipgossip
.complete 65869,2,3 
step
#title Body 4
>>Interact with the body while mounted
.goto 2024,27.97,32.83
.skipgossip
.complete 65869,2 
step
#title Dragon Glyph: Creektooth Den
.goto 2024,26.73,31.68
.achievement 16577,6 >>Pick up the Dragon Glyph at the top of the big tree
step
.goto 2024,28.78,34.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.turnin 65869 >>Turn in Another Ambush
.accept 66026 >>Accept Urgent Action Required
.target Brena
step
.goto 2024,28.47,35.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Unkimi
.accept 71233 >>Accept Falling Water
.target Unkimi
step
.pve
.goto 2024,22.72,41.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.accept 66262 >>Accept Waste Water Cleanup
step
.pve
>>Click on the Rotting Piles and kill the spawning Muck Elemental
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
#loop
.line 2024,22.45,41.96,22.04,41.66,22.27,41.20,22.83,41.18,23.22,41.16,23.60,41.40,22.81,42.15
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
.complete 66262,1 
step
.pve
.goto 2024,22.72,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66262 >>Turn in Waste Water Cleanup
.accept 66263 >>Accept A Precision Approach
.accept 66264 >>Accept Disarmed and Docile
step
.pve
#completewith next
>>Kill |cff00ecffGnawbone Armaments|r. Loo them for the armaments
.complete 66264,1 
step
.pve
#completewith next
.goto 2024,24.40,39.56,20 >>Enter the cave
step
.pve
#label TheAzureSpanAPrecisionApproach
>>Kill |cff00ecffFlayfist|r
.goto 2024,24.80,39.03
.complete 66263,1 
step
.pve
>>Kill |cff00ecffGnawbone Armaments|r. Loo them for the armaments
.goto 2024,24.40,39.56,25,0
.goto 2024,23.33,39.87,25,0
.goto 2024,22.47,39.95,25,0
.goto 2024,22.09,40.67,25,0
.goto 2024,23.85,40.50,35,0
#loop
.line 2024,24.40,39.56,23.33,39.87,22.47,39.95,22.09,40.67,23.85,40.50
.goto 2024,24.40,39.56,35,0
.goto 2024,23.33,39.87,35,0
.goto 2024,22.47,39.95,35,0
.goto 2024,22.09,40.67,35,0
.goto 2024,23.85,40.50,35,0
.complete 66264,1 
step
.pve
.goto 2024,22.74,41.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66263 >>Turn in A Precision Approach
.turnin 66264 >>Turn in Disarmed and Docile
.accept 66265 >>Accept Who's Next?
.accept 66266 >>Accept Filthy Mongrels
step
.pve
.goto 2024,23.48,41.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Illusory Mage
.accept 66267 >>Accept M.E.T.A.
step
.pve
#completewith TheAzureSpanMETA
>>Kill |cff00ecffMongrels|r and |cff00ecffMatriarchs|r on the side
.complete 66266,2 
.complete 66266,1 
step
.pve
>>Kill |cff00ecffCracktooth|r inside the small cave
.goto 2024,24.20,41.81
.complete 66265,1 
step
.pve
#label TheAzureSpanMETA
>>Kill |cff00ecffGnolls|r in the area. Loot them for keys. You can also pick up the keys from the tents
.goto 2024,23.50,42.43,25,0
.goto 2024,23.73,43.25,25,0
.goto 2024,24.32,42.91,25,0
.goto 2024,23.94,42.02,25,0
#loop
.line 2024,23.50,42.43,23.73,43.25,24.32,42.91,23.94,42.02
.goto 2024,23.50,42.43,30,0
.goto 2024,23.73,43.25,30,0
.goto 2024,24.32,42.91,30,0
.goto 2024,23.94,42.02,30,0
.collect 191736,6,66267,0x1,-1
.complete 66267,1 
step
.pve
>>Finish killing |cff00ecffMongrels|r and |cff00ecffMatriarchs|r
.goto 2024,23.50,42.43,25,0
.goto 2024,23.73,43.25,25,0
.goto 2024,24.32,42.91,25,0
.goto 2024,23.94,42.02,25,0
#loop
.line 2024,23.50,42.43,23.73,43.25,24.32,42.91,23.94,42.02
.goto 2024,23.50,42.43,30,0
.goto 2024,23.73,43.25,30,0
.goto 2024,24.32,42.91,30,0
.goto 2024,23.94,42.02,30,0
.complete 66266,2 
.complete 66266,1 
step
.pve
.goto 2024,22.70,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66266 >>Turn in Filthy Mongrels
.turnin 66265 >>Turn in Who's Next?
.turnin 66267 >>Turn in M.E.T.A.
.accept 66268 >>Accept Third Try's the Charm
.accept 66269 >>Accept Just To Be Sure
step
.pve
#completewith TheAzureSpanThirdTrystheCharm
>>Kill |cff00ecffStormfang elementalists|r
.complete 66269,1 
step
.pve
#completewith next
.goto 2024,22.16,43.51,10 >>Enter the cave
step
.pve
#label TheAzureSpanThirdTrystheCharm
>>Kill |cff00ecffBloodclaw|r
.goto 2024,22.27,43.20
.complete 66268,1 
step
.pve
#completewith TheAzureSpanThirdTrystheCharm
>>Kill |cff00ecffStormfang elementalists|r
.goto 2024,22.27,42.50,25,0
.goto 2024,23.17,42.67,25,0
.goto 2024,23.32,43.28,25,0
.goto 2024,23.22,44.28,25,0
.goto 2024,22.52,43.54,25,0
#loop
.line 2024,22.27,42.50,23.17,42.67,23.32,43.28,23.22,44.28,22.52,43.54
.goto 2024,22.27,42.50,30,0
.goto 2024,23.17,42.67,30,0
.goto 2024,23.32,43.28,30,0
.goto 2024,23.22,44.28,30,0
.goto 2024,22.52,43.54,30,0
.complete 66269,1 
step
.pve
.goto 2024,22.74,41.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66269 >>Turn in Just To Be Sure
.turnin 66268 >>Turn in Third Try's the Charm
step
>>Kill |cff00ecffCascade|r
.goto 2024,23.33,33.60
.accept 72358 >>Accept Cascade (Elite Objective)
.complete 72358,1 
step
#completewith next
+Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,20.59,35.67
.turnin 66026 >>Turn in Urgent Action Required
.timer 24,Roleplay Duration
.target Brena
step
.goto 2024,18.73,24.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 71233 >>Turn in Falling Water
.accept 66837 >>Accept Nothing for Breakfast
.accept 66838 >>Accept It's Cold Up Here
.target Willa Stronghinge
step
.goto 2024,19.04,23.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.accept 66844 >>Accept The Great Shokhari
.target Zon'Wogi
step
#completewith next
.goto 2024,19.16,23.77
.fp >>Get the Three-Falls Lookout Flight Path
step
.goto 2024,18.98,23.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Modurun Sixtoes
.accept 66839 >>Accept It's Brew Time!
.target Modurun Sixtoes
step
#completewith next
>>Kill |cff00ecffbears|r in the area. Loot them for their pelts
.complete 66838,1 
step
>>Focus on picking up Dragon Foil and Blood Berries
.goto 2024,20.46,25.93,25,0
.goto 2024,21.16,25.65,25,0
.goto 2024,21.70,25.54,25,0
.goto 2024,22.23,26.04,25,0
.goto 2024,22.76,26.05,25,0
.goto 2024,22.87,26.70,25,0
.goto 2024,23.23,26.82,25,0
.goto 2024,22.42,27.73,25,0
.goto 2024,21.91,27.83,25,0
.goto 2024,20.85,27.94,25,0
#loop
.line 2024,20.46,25.93,21.16,25.65,21.70,25.54,22.23,26.04,22.76,26.05,22.87,26.70,23.23,26.82,22.42,27.73,21.91,27.83,20.85,27.94
.goto 2024,20.46,25.93,30,0
.goto 2024,21.16,25.65,30,0
.goto 2024,21.70,25.54,30,0
.goto 2024,22.23,26.04,30,0
.goto 2024,22.76,26.05,30,0
.goto 2024,22.87,26.70,30,0
.goto 2024,23.23,26.82,30,0
.goto 2024,22.42,27.73,30,0
.goto 2024,21.91,27.83,30,0
.goto 2024,20.85,27.94,30,0
.complete 66839,1 
step
>>Kill |cff00ecffbears|r in the area. Loot them for their pelts
.goto 2024,20.85,27.94,25,0
.goto 2024,21.91,27.83,25,0
#loop
.line 2024,20.46,25.93,21.16,25.65,21.70,25.54,22.23,26.04,22.76,26.05,22.87,26.70,23.23,26.82,22.42,27.73,21.91,27.83,20.85,27.94
.goto 2024,20.46,25.93,30,0
.goto 2024,21.16,25.65,30,0
.goto 2024,21.70,25.54,30,0
.goto 2024,22.23,26.04,30,0
.goto 2024,22.76,26.05,30,0
.goto 2024,22.87,26.70,30,0
.goto 2024,23.23,26.82,30,0
.goto 2024,22.42,27.73,30,0
.goto 2024,21.91,27.83,30,0
.goto 2024,20.85,27.94,30,0
.complete 66838,1 
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.accept 66843 >>Accept Out of Lukh
.target Branor Broadbraw
step
#completewith next
>>Kill |cff00ecffVorquins|r and |cff00ecffBruffalons|r. Loot them for flanks and meat
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.complete 66837,2 
.complete 66837,1 
step
>>Kill |cff00ecffGloomfur Sasquatch|r inside the cave
.goto 2024,16.01,27.25
.complete 66843,1 
.unitscan Gloomfur Sasquatch
step
>>Kill |cff00ecffVorquins|r and |cff00ecffBruffalons|r. Loot them for flanks and meat
#loop
.line 2024,18.30,26.71,17.52,26.92,16.95,27.55,16.13,27.81,15.98,26.06,17.39,25.96
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.goto 2024,15.98,26.06,30,0
.goto 2024,17.39,25.96,30,0
.complete 66837,2 
.complete 66837,1 
step
>>Kill |cff00ecffSky Vixen Shokhari|r
.goto 2024,13.27,26.50
.complete 66844,1 
.unitscan Sky Vixen Shokhari
step
.goto 2024,18.75,24.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 66837 >>Turn in Nothing for Breakfast
.turnin 66838 >>Turn in It's Cold Up Here
.target Willa Stronghinge
step
.goto 2024,19.03,23.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.turnin 66844 >>Turn in The Great Shokhari
.target Zon'Wogi
step
.goto 2024,18.98,23.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Modurun Sixtoes
.turnin 66839 >>Turn in It's Brew Time!
.target Modurum Sixtoes
step
.goto 2024,18.54,23.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Manny Read
.accept 66840 >>Accept Water Safety
.target Manny Read
step
#title Sample collected 1/3
>>Use the |T134864:0|t[Water Testing Flask] at the waypoint location
.use 193569
.goto 2024,19.38,23.95
.complete 66840,1,1 
step
.goto 2024,19.16,24.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gannar Fullpack
.accept 66841 >>Accept A Shard of the Past
.target Gannar Fullpack
step
#title Sample collected 2/3
>>Use the |T134864:0|t[Water Testing Flask] at the waypoint location
.use 193569
.goto 2024,20.01,24.18
.complete 66840,1,2 
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.turnin 66843 >>Turn in Out of Lukh
.target Branor Broadbraw
step
>>Land on the rock and pick up the Ancient Artifact
.goto 2024,17.61,28.23
.complete 66841,1 
step
#title Sample collected 3/3
>>Use the |T134864:0|t[Water Testing Flask] at the waypoint location
.use 193569
.goto 2024,17.30,23.20
.complete 66840,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Manny Read and Thanessa Silverbloom
.turnin 66840 >>Turn in Water Safety
.goto 2024,18.54,23.67
.turnin 66841 >>Turn in A Shard of the Past
.goto 2024,18.65,23.67
.target Manny Read
.target Thanessa Silverbloom
step
.goto 2024,18.74,24.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guo-Hee Calmwater
.accept 66845 >>Accept Legendary Foil
.target Guo-Hee Calmwater
step
>>Defeat the Mysterious Apparition
.goto 2024,17.26,26.21
.complete 66845,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guo-Hee Calmwater and the Mysterious Apparition
.turnin 66845 >>Turn in Legendary Foil
.goto 2024,18.74,24.42
.accept 66846 >>Accept The Heart of the Deck
.goto 2024,18.77,24.43
.target Guo-Hee Calmwater
.target Mysterious Apparition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Mysterious Apparition and wait for the roleplay
.goto 2024,18.77,24.43
.skipgossip 191741,1
.timer 35,Roleplay Duration
.complete 66846,1 
.target Mysterious Apparition
step
.goto 2024,18.77,24.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mysterious Apparition
.turnin 66846 >>Turn in The Heart of the Deck
.target Mysterious Apparition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos after a short roleplay
.goto 2024,20.53,35.69
.accept 65838 >>Accept Breaching the Brackenhide
.target Kalecgos
step
#completewith TheAzureSpanLeyLitter
>>Kill |cff00ecffBrackenhides|r and destroy their totems (Bonus Objective). |cffffff00Don't focus on finishing this right now.|r
.complete 65841,1 
step
>>Interact with the Rotting Root
.goto 2024,18.89,36.99
.skipgossip
.complete 65838,2 
step
>>Interact with the Rotting Root
.goto 2024,18.38,34.74
.skipgossip
.complete 65838,1 
step
>>Interact with the Rotting Root
.goto 2024,17.59,36.99
.skipgossip
.complete 65838,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.goto 2024,16.75,37.26
.turnin 65838 >>Turn in Breaching the Brackenhide
.accept 65846 >>Accept Ley Litter
.accept 65844 >>Accept Cut Out the Rot
.accept 65845 >>Accept Echoes of the Fallen
.target Kalecgos
.target Norukk
.target Brena
step
#completewith TheAzureSpanLeyLitter
>>|cfff78300Look out for the treants because they are rather uncommon|r
.goto 2024,17.69,37.74,0,0
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#completewith TheAzureSpanEchoesoftheFallen
.complete 65846,1 
step
#title Spirit 1
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses
.use 191928
.goto 2024,17.47,37.07
.complete 65845,1,1 
step
#title Spirit 2
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses
.use 191928
.goto 2024,18.13,37.67
.complete 65845,1,2 
step
#title Spirit 3
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses
.use 191928
.goto 2024,18.52,37.26
.complete 65845,1,3 
step
#title Spirit 4
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses
.use 191928
.goto 2024,17.54,37.93
.complete 65845,1,4 
step
#label TheAzureSpanEchoesoftheFallen
#title Spirit 5
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses
.use 191928
.goto 2024,17.41,38.65
.complete 65845,1 
step
#label TheAzureSpanLeyLitter
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
#loop
.line 2024,17.81,38.52,18.42,38.32,18.69,36.99,17.25,36.85,17.45,38.42
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
.complete 65846,1 
step
#sticky
#label TheAzureSpanStoptheSpread
>>Kill |cff00ecffBrackenhides|r and destroy their totems
.goto 2024,18.53,35.78
.complete 65841,1 
step
>>|cfff78300Possible trean locations are marked on your map|r
.goto 2024,17.2,37.0,0
.goto 2024,17.4,37.8,0
.goto 2024,17.4,39.2,0
.goto 2024,17.6,37.2,0
.goto 2024,17.8,38.8,0
.goto 2024,18.4,38.0,0
.goto 2024,18.6,38.0,0
.goto 2024,18.6,38.6,0
.goto 2024,18.8,36.6,0
.goto 2024,17.2,37.0,0
.goto 2024,17.2,37.40,0
.goto 2024,17.6,37.40,0
.goto 2024,18.8,36.40,0
.goto 2024,17.69,37.74
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#requires TheAzureSpanStoptheSpread
.goto 2024,16.74,37.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.turnin 65846 >>Turn in Ley Litter
.turnin 65844 >>Turn in Cut Out the Rot
.turnin 65845 >>Turn in Echoes of the Fallen
.accept 65848 >>Accept Tome-ward Bound
.target Kalecgos
.target Norukk
.target Brena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and wait for the roleplay
.goto 2024,16.74,37.32
.skipgossip 187873,1
.timer 21,Roleplay Duration
.complete 65848,1 
.target Kalecgos
step
>>Mount the Tome of Spellflinging
.goto 2024,16.71,37.30
.complete 65848,2 
step
>>Spam |T134917:0:0|tTome Charge (1) to move faster
>>Use |T135753:0:0|tArcane Blast (2) to kill the |cff00ecffPurifiers|r
.goto 2024,16.02,38.49
.complete 65848,3,1 
step
>>Spam |T134917:0:0|tTome Charge (1) to move faster
>>Use |T135753:0:0|tArcane Blast (2) to kill the |cff00ecffPurifiers|r
.goto 2024,15.64,37.42
.complete 65848,3,2
step
>>Spam |T134917:0:0|tTome Charge (1) to move faster
>>Use |T135753:0:0|tArcane Blast (2) to kill the |cff00ecffPurifiers|r
.goto 2024,15.22,37.95
.complete 65848,3,3 
step
>>Use |T429383:0:0|tArcane Spirit Beam (1) to kill the |cff00ecffTwisted Ancient|r
.goto 2024,15.40,37.73
.complete 65848,4 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,15.30,39.43
.turnin 65848 >>Turn in Tome-ward Bound
.accept 65847 >>Accept Realignment
.target Kalecgos
step
>>Interact with the Ley Crystal
.goto 2024,15.35,39.50
.complete 65847,1 
step
#title Infection 1
>>Destroy the infection
.goto 2024,15.51,39.31
.complete 65847,2,1 
step
#title Infection 2
>>Destroy the infection
.goto 2024,15.30,39.12
.complete 65847,2,2 
step
#title Infection 3
>>Destroy the infection
.goto 2024,15.07,39.52
.complete 65847,2 
step
#completewith next
.goto 2024,14.97,38.77,15 >>Leave the cave
step
#completewith next
+Fly to Kalecgos using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Brena
.turnin 65847 >>Turn in Realignment
.goto 2024,16.11,41.40
.accept 65849 >>Accept To Iskaara
.goto 2024,16.08,41.45
.target Kalecgos
.target Brena
step
>>Kill |cff00ecffVakril, the Strongest Tuskarr|r
.goto 2024,17.23,41.46
.accept 69872 >>Accept Vakril, the Strongest Tuskarr
.complete 69872,1 
step
#completewith next
+Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,13.24,49.56
.turnin 65849 >>Turn in To Iskaara
.accept 66210 >>Accept Gather the Family
.target Brena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Roki
.goto 2024,13.14,49.26
.accept 72435 >>Accept Orientation: Iskaara
.target Roki
step
#completewith next
.goto 2024,12.78,49.34,8 >>Enter the inn
step
#title |T134450:0:0|tOffering 1
>>Pick up the Stone Sculpture
.goto 2024,12.49,49.45
.complete 66210,1,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.accept 66213 >>Accept The Weave of a Tale
.target Elder Nappa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Poa
.goto 2024,12.41,49.34
.skipgossip 1
.complete 66213,1 
.target Elder Poa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.turnin 66213 >>Turn in The Weave of a Tale
.target Elder Nappa
step
#completewith next
.goto 2024,12.78,49.34,8 >>Leave the inn
step
#title |T134989:0:0|tOffering 2
>>Pick up the Ornamented Shield
.goto 2024,12.46,50.31
.complete 66210,1,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rokkutuk
.goto 2024,13.91,50.08
.complete 72435,2 
.target Rokkutuk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lukoturukk
.goto 2024,14.07,49.45
.accept 71234 >>Accept Nook News
.target Lukoturukk
step
#title |T1126431:0:0|tOffering 3
>>Pick up the Handcrafted Boat
.goto 2024,13.87,49.48
.complete 66210,1,3 
step
#title |T132803:0:0|tOffering 4
>>Pick up the Decorated Teapot
.goto 2024,13.48,48.57
.complete 66210,1 
step
#sticky
#label TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arvik
.goto 2024,13.17,48.53
.complete 72435,1 
.target Arvik
step
>>Interact with the Funeral Boat
.goto 2024,13.14,48.57
.complete 66210,2 
step
#requires TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Norukk
.goto 2024,12.96,48.64
.complete 72435,4 
.target Norukk
step
.pve
.goto 2024,12.89,48.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.accept 66218 >>Accept Scampering Scamps
.target Hanu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tatto
.goto 2024,13.18,48.82
.complete 72435,3 
.target Tatto
step
.goto 2024,13.20,48.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.accept 66217 >>Accept WANTED: Krojek the Shoreprowler
.target Bukarakikk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Murik
.goto 2024,13.14,49.26
.turnin 72435 >>Turn in Orientation: Iskaara
.target Murik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Kalecgos
.turnin 66210 >>Turn in Gather the Family
.goto 2024,13.24,49.56
.accept 65850 >>Accept The Cycle of the Sea
.goto 2024,13.26,49.53
.target Brena
.target Kalecgos
step
#completewith next
.goto 2024,13.24,49.55
.gossipoption 55314 >> Talk to Brena
.timer 72,Roleplay Duration
.target Brena
step
>>Interact with the Funeral Boat after the roleplay
.goto 2024,13.18,49.20,8,0
.goto 2024,13.06,49.52,10,0
.goto 2024,13.16,50.20
.complete 65850,1 
.complete 65850,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,12.94,50.39
.turnin 65850 >>Turn in Gather the Familiy
.accept 65911 >>Accept Azure Alignment
.target Kalecgos
step
>>Kill |cff00ecffKrojek The Shoreprowler|r. |cffffff00You can skip this quest. It is a very hard elite|r
.unitscan Krojek The Shoreprowler
.goto 2024,10.45,53.66
.complete 66217,1 
.unitscan Krojek The Shoreprowler
step
.isQuestComplete 66217
.goto 2024,12.51,49.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.turnin 66217 >>Turn in WANTED: Krojek the Shoreprowler
.target Bukarakikk
step
.abandon 66217 >>Abandon WANTED: Krojek the Shoreprowler
step
.pve
.isOnQuest 66218
.goto 2024,10.59,46.87
.gossipoption 55003 >>Talk to Neelo
.target Neelo
step
.xp 68.5,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wayun
.goto 2024,7.45,44.28
.turnin 71234 >>Turn in Nook News
.target Wayun
step
.xp 68.5,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.accept 66781 >>Accept A Matter of Taste
.target Mordigan Ironjaw
step
.isOnQuest 66781
>>Pick up the Large Stone on the ground
.goto 2024,7.24,45.12
.complete 66781,1 
step
.isQuestComplete 66781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.turnin 66781 >>Turn in A Matter of Taste
.target Mordigan Ironjaw
step
.xp 68.5,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog, Examiner Rowe and Aelnara
.accept 66164 >>Accept Fishy Fingers
.goto 2024,7.65,44.32
.accept 66154 >>Accept Salivatory Samples
.goto 2024,7.67,44.26
.accept 66147 >>Accept Crystals in the Water
.goto 2024,7.64,44.23
.target LOU-C Fitzcog
.target Examiner Rowe
.target Aelnara
step
.isOnQuest 66164
#completewith TheAzureSpanCrystalsintheWater
>>Pick up Stolen Parts on the ground
.complete 66164,1 
step
.isOnQuest 66154
#completewith TheAzureSpanCrystalsintheWater
>>Kill |cff00ecffBrintooths|r. Loot them for Saliva
.complete 66154,1 
step
.isOnQuest 66147
#title Crystal Mined 1/4
.goto 2024,9.86,43.36
.complete 66147,1,1 
step
.isOnQuest 66147
#title Crystal Mined 2/4
.goto 2024,10.36,43.33
.complete 66147,1,2 
step
.isOnQuest 66147
#title Crystal Mined 3/4
.goto 2024,10.68,42.73
.complete 66147,1,3 
step
.isOnQuest 66147
#label TheAzureSpanCrystalsintheWater
#title Crystal Mined 4/4
.goto 2024,10.18,42.29
.complete 66147,1 
step
.isOnQuest 66164
#completewith next
>>Pick up Stolen Parts on the ground
.complete 66164,1 
step
.isOnQuest 66154
>>Kill |cff00ecffBrintooths|r. Loot them for Saliva
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,35,0
.goto 2024,9.77,43.71,35,0
.goto 2024,10.31,43.44,35,0
.goto 2024,10.95,43.44,35,0
.goto 2024,10.28,42.36,35,0
.complete 66154,1 
step
.isOnQuest 66164
>>Pick up Stolen Parts on the ground
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,35,0
.goto 2024,9.77,43.71,35,0
.goto 2024,10.31,43.44,35,0
.goto 2024,10.95,43.44,35,0
.goto 2024,10.28,42.36,35,0
.complete 66164,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Rowe, Aelnara and LOU-C Fitzcog
.turnin -66154 >>Turn in Salivatory Samples
.goto 2024,7.67,44.26
.turnin -66147 >>Turn in Crystals in the Water
.goto 2024,7.64,44.23
.turnin -66164 >>Turn in Fishy Fingers
.goto 2024,7.65,44.32
.target Aelnara
step
.xp 68.5,1
.isQuestTurnedIn 66164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog
.accept 66175 >>Accept Field Experiment
.goto 2024,7.65,44.32
.target LOU-C Fitzcog
step
.isOnQuest 66175
>>Click on the Geoscanner
.goto 2024,7.64,44.33
.complete 66175,1 
.timer 33,Roleplay Duration
step
.pve
.isQuestComplete 66218
.goto 2024,10.59,46.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Neelo
.turnin 66218 >>Turn in Scampering Scamps
.target Neelo
step
.isQuestComplete 66175
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog
.goto 2024,7.64,44.33
.turnin 66175 >>Turn in Field Experiment
.target LOU-C Fitzcog
step
#completewith next
.hs >>Hearth to The Conjured Biscuit Inn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.48,63.02
.turnin 65911 >>Turn in Azure Alignment
.accept 66027 >>Accept Calling the Blue Dragons
.target Kalecgos
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.48,63.02
.skipgossip 186280,1
.complete 66027,1 
.target Kalecgos
step
.goto 2024,39.48,63.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.turnin 66027 >>Turn in Calling the Blue Dragons
.accept 65886 >>Accept To Rhonin's Shield
.target Kalecgos
step
>>Follow the arrow and use the |cffffff00[ExtraActionButton]|r
.goto 2024,41.19,62.27,-1
.goto 2024,39.56,60.26,-1
.goto 2024,38.26,61.50,-1
.complete 65886,2 
step
#title Dragon Glyph: Zelthrak Outpost
>>|cffffff00Follow the arrow and try to stay as high as possible without loosing speed|r
.goto 2024,53.03,48.65
.achievement 16577,8 >>Pick up the Dragon Glyph at the top of a large tree
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.accept 66709 >>Accept Field Medic 101
.target Old Grimtusk
step
>>Remove the spear from Old Grimtusk
.goto 2024,59.26,39.73
.complete 66709,1 
step
>>Pick up the wood
.goto 2024,59.20,39.79
.complete 66709,2 
step
>>Place the Campfire
.goto 2024,59.25,39.77
.complete 66709,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.skipgossip 189963,1
.complete 66709,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.turnin 66709 >>Turn in Field Medic 101
.accept 66715 >>Accept The Extraction
.target Old Grimtusk
step
#completewith TheAzureSpanFrostbiteCausesandSymptoms
>>Kill |cff00ecffGnolls|r and destroy their defenses
.accept 66718 >>Accept Gnolls Must Die (Bonus Objective)
.complete 66718,1 
step
>>Follow the arrow
.goto 2024,58.34,41.83
.complete 66715,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66715 >>Turn in The Extraction
.accept 66703 >>Accept Snowball Effect
.target Frostbite
step
#completewith next
>>Kill |cff00ecffSnowhide Shamans|r. Loot them for the totems
.goto 2024,58.34,42.60,15,0
.complete 66703,1 
step
>>Kill |cff00ecffSnoll the Icebreaker|r
.goto 2024,57.90,44.82
.complete 66718,2 
.unitscan Snoll the Icebreaker
step
>>Kill |cff00ecffSnowhide Shamans|r. Loot them for the totems
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
#loop
.line 2024,58.34,42.64,56.89,42.33,57.64,41.53,58.34,42.64,56.89,42.33,57.64,41.53
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.complete 66703,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66703 >>Turn in Snowball Effect
.accept 67050 >>Accept Frostbite: Causes and Symptoms
.target Frostbite
step
#label TheAzureSpanFrostbiteCausesandSymptoms
>>Place the totems
.goto 2024,58.24,41.95
.complete 67050,1 
step
>>Kill |cff00ecffGnolls|r and destroy their defenses
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,57.70,42.22
.complete 66718,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.complete 67050,2 
.target Old Grimtusk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.turnin 67050 >>Turn in Frostbite: Causes and Symptoms
.accept 66730 >>Accept True Survivors
.target Old Grimtusk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to Grimtusk's Hideout and talk to Old Grimtusk
.goto 2024,58.79,34.91
.turnin 66730 >>Turn in True Survivors
.target Old Grimtusk
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.87
.accept 68639 >>Accept Prowling Polar Predators
.accept 68641 >>Accept Mossing the Mark
.target Callisto Windsor
.target Steria Duskgrove
step
.pve
#completewith TheAzureSpanMossingtheMark
>>Kill |cff00ecffInfected Frigidpelts|r
.complete 68639,1 
step
.pve
#title Drakmoss Clump 1
>>Pick up the Drakmoss
.goto 2024,63.68,30.66
.complete 68641,1,1 
step
.pve
#title Drakmoss Clump 2
>>Pick up the Drakmoss
.goto 2024,63.57,30.96
.complete 68641,1,2 
step
.pve
#title Drakmoss Clump 3
>>Pick up the Drakmoss
.goto 2024,63.53,31.18
.complete 68641,1,3 
step
.pve
#title Drakmoss Clump 4
>>Pick up the Drakmoss
.goto 2024,63.41,31.34
.complete 68641,1,4 
step
.pve
#label TheAzureSpanMossingtheMark
#title Drakmoss Clump 5
>>Pick up the Drakmoss
.goto 2024,63.22,31.35
.complete 68641,1 
step
.pve
>>Kill |cff00ecffInfected Frigidpelts|r
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03,25,0
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03
.complete 68639,1 
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.86
.turnin 68639 >>Turn in Prowling Polar Predators
.turnin 68641 >>Turn in Mossing the Mark
.target Callisto Windsor
.target Steria Duskgrove
step
>>Dragonride to the waypoint location
.goto 2024,65.81,25.33
.complete 65886,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.33
.turnin 65886 >>Turn in To Rhonin's Shield
.accept 65887 >>Accept To the Mountain
.target Drok Scrollstabber
step
.xp 69,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.33
.accept 67299 >>Accept Drakes be Gone
.target Drok Scrollstabber
step
.isOnQuest 67299
#completewith next
.goto 2024,65.71,25.56,10,0
.goto 2024,65.85,26.75,10,0
.goto 2024,66.03,25.60,10,0
.vehicle 192872 >>Enter the Arcane Blaster
step
.isOnQuest 67299
>>Use |T429383:0|tArcane Blast (1) to kill the flying drakes
>>You can use (2) to slow them
.goto 2024,65.71,25.56
.complete 67299,1 
step
.isQuestComplete 67299
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.32
.turnin 67299 >>Turn in Drakes be Gone
.target Drok Scrollstabber
step
#completewith next
.goto 2024,66.00,25.39
.fp >>Get the Rhonin's Shield Flight Path
step
.xp 69,1
.goto 2024,65.39,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.accept 66553 >>Accept Hollow Up
.accept 66554 >>Accept Aggressive Self-Defence
.target Sonova Snowden
step
.xp 69,1
.goto 2024,65.56,16.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tyrnokos Sunstrike
.accept 66622 >>Accept Wayward Tools
.target Tyrnokos Sunstrike
step
.isOnQuest 66622
>>Click on the Wayward Tools (you can do this while mounted)
.target Wayward Tool
.goto 2024,65.96,16.51,25,0
.goto 2024,65.82,17.41,25,0
.goto 2024,65.25,17.23,25,0
.goto 2024,64.82,17.31,25,0
.goto 2024,64.71,16.83,25,0
.complete 66622,1 
step
.isOnQuest 66554
#completewith TheAzureSpanHollowUp
>>Defeat |cff00ecffFurbolgs|r
.complete 66554,1 
step
.isOnQuest 66553
#title Clue 1/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.48,13.27
.complete 66553,1,1 
step
.isOnQuest 66553
#title Clue 2/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.56,12.67
.complete 66553,1,2 
step
.isOnQuest 66553
#title Clue 3/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.81,12.51
.complete 66553,1,3 
step
.isOnQuest 66553
#title Clue 4/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.53,12.18
.complete 66553,1,4 
step
.isOnQuest 66553
#title Clue 5/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.29,12.25
.complete 66553,1,5 
step
.isOnQuest 66553
#label TheAzureSpanHollowUp
#title Clue 6/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.11,13.22
.complete 66553,1 
step
.isOnQuest 66554
>>Defeat |cff00ecffFurbolgs|r
.goto 2024,65.85,12.78,25,0
.goto 2024,66.82,13.47,25,0
.goto 2024,66.96,11.89,25,0
.goto 2024,65.85,12.78
.complete 66554,1 
step
.goto 2024,65.38,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.turnin -66553 >>Turn in Hollow Up
.turnin -66554 >>Turn in Aggressive Self-Defence
.target Sonova Snowden
step
.isQuestTurnedIn 66554
.goto 2024,65.38,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.accept 66555 >>Accept Bear With Me
.target Sonova Snowden
step
.isOnQuest 66555
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.goto 2024,65.38,15.95
.skipgossip 189401,1
.complete 66555,1 
.target Sonova Snowden
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden and Tyrnokos Sunstrike
.turnin -66555 >>Turn in Bear With Me
.goto 2024,65.38,15.95
.turnin -66622 >>Turn in Wayward Tools
.goto 2024,65.57,16.17
.target Sonova Snowden
.target Tyrnokos Sunstrike
step
#title Dragon Glyph: Rhonin's Outpost
.goto 2024,67.65,29.12
.achievement 16577,9 >>Pick up the Dragon Glyph at the top of the tower
step
#completewith next
+Fly to the Summoned Destroyer using your dragonriding mount
step
.goto 2024,70.12,33.26
.accept 69895 >>Accept Summoned Destroyer (Elite Objective)
.complete 69895,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Khadgar
.turnin 65887 >>Turn in To the Mountain
.accept 65943 >>Accept Primal Offensive
.goto 2024,70.01,35.23
.accept 65944 >>Accept Lava Burst
.accept 66647 >>Accept Elemental Unfocus
.goto 2024,70.02,35.34
.target Kalecgos
.target Archmage Khadgar
step
#sticky
#label TheAzureSpanPrimalOffensive
>>Search for mobs in the area shown on your minimap
.goto 2024,72.44,37.27,0,0
.complete 65943,1 
step
#title Lava Orb 1
.goto 2024,71.23,35.69,30,0
.goto 2024,72.26,37.26
.complete 65944,1,1 
step
>>Kill |cff00ecffRuvin Stonegrinder|r. Loot her for the Elemental Focus
.goto 2024,72.51,38.11,30,0
.goto 2024,72.90,38.71
.complete 66647,1 
step
#title Lava Orb 2
.goto 2024,73.11,37.77
.complete 65944,1,2 
step
#title Lava Orb 3
.goto 2024,73.77,38.31
.complete 65944,1 
step
#requires TheAzureSpanPrimalOffensive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar and Kalecgos
.goto 2024,74.46,37.84
.turnin 66647 >>Turn in Elemental Unfocus
.turnin 65944 >>Turn in Lava Burst
.turnin 65943 >>Turn in Primal Offensive
.accept 65958 >>Accept Primal Power
.accept 65977 >>Accept Kirin Tor Recovery
.target Kalecgos
.target Archmage Khadgar
step
#completewith TheAzureSpanKirinTorRecovery
>>Use |T1769011:0:0|t[Elemental Focus] next to corpses of |cff00ecffPrimalists/Elementals|r
>>|cfff78300Avoid killing ELEMENTAL PUNISHERS if you're alone|r.
.use 192479
.goto 2024,75.42,37.92,0,0
.complete 65958,1 
step
#title Mage 1
.goto 2024,74.59,38.58
.complete 65977,1,1 
step
#title Mage 2
.goto 2024,75.27,37.21
.complete 65977,1,2 
step
#title Mage 3
.goto 2024,76.14,37.86
.complete 65977,1,3 
step
#title Mage 4
.goto 2024,75.63,38.37
.complete 65977,1,4 
step
#title Mage 5
.goto 2024,76.02,39.54
.complete 65977,1,5 
step
#label TheAzureSpanKirinTorRecovery
#title Mage 6
.goto 2024,76.57,38.91
.complete 65977,1 
step
>>Use |T1769011:0:0|t[Elemental Focus] next to corpses of |cff00ecffPrimalists/Elementals|r
>>|cfff78300Avoid killing ELEMENTAL PUNISHERS if you're alone|r.
.use 192479
.goto 2024,75.94,37.82,20,0
.goto 2024,75.01,37.74,30,0
.goto 2024,75.49,38.32,20,0
.goto 2024,75.83,39.22,20,0
.goto 2024,75.94,37.82,20,0
.goto 2024,75.01,37.74,30,0
.goto 2024,75.49,38.32,20,0
.goto 2024,75.83,39.22,20,0
.goto 2024,75.42,37.92
.complete 65958,1 
step
#requires TheAzureSpanPrimalPower
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,76.95,39.43
.turnin 65958 >>Turn in Primal Power
.turnin 65977 >>Turn in Kirin Tor Recovery
.accept 66007 >>Accept Free Air
.target Archmage Khadgar
step
#completewith next
.goto 2024,76.95,39.43
.cast 378814 >>Use the |cffffff00[ExtraActionButton]|r
step
#completewith TheAzureSpanFreeAir
+You can destroy Lava Beacons while dug in
step
#title Lava Beacon 1
>>Use |T538536:0:0|tEmber Dash (1) to charge forward
>>Use |T132331:0:0|tHide (2) to hide from the Scouts
>>You can also use spells from your spellbook while transformed
.goto 2024,77.36,39.92
.complete 66007,1,1 
step
#title Lava Beacon 2
>>Use |T538536:0:0|tEmber Dash (1) to charge forward
>>Use |T132331:0:0|tHide (2) to hide from the Scouts
.goto 2024,77.34,38.28
.complete 66007,1,2 
step
#title Lava Beacon 3
>>Use |T538536:0:0|tEmber Dash (1) to charge forward
>>Use |T132331:0:0|tHide (2) to hide from the Scouts
.goto 2024,78.24,37.62
.complete 66007,1,3 
step
#label TheAzureSpanFreeAir
#title Lava Beacon 4
>>Use |T538536:0:0|tEmber Dash (1) to charge forward
>>Use |T132331:0:0|tHide (2) to hide from the Scouts
.goto 2024,78.55,39.05
.complete 66007,1 
step
#completewith next
.goto 2024,78.69,39.62,10 >>Enter the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,78.38,39.98
.turnin 66007 >>Turn in Free Air
.accept 66009 >>Accept In Defense of Vakthros
.target Kalecgos
step
#completewith next
+|cfff78300During |T459027:0|tReaping Flame run through arcane runes|r. They give you a damage immunity for 4s.
step
>>Kill |cff00ecffKorthox|r
.goto 2024,79.27,36.33
.complete 66009,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,77.99,32.47
.turnin 66009 >>Turn in In Defense of Vakthros
.accept 70041 >>Accept The Storm-Eater's Fury
.target Archmage Khadgar
step
>>Mount the Arcane Disc
.goto 2024,78.03,32.44
.complete 70041,1 
step
>>Spam |T135734:0:0|tArcane Blast (1) to kill the primalists
>>Use |T134155:0|tKalecgos's Aid (2) when it is ready
.goto 2024,78.06,32.73
.complete 70041,2 
step
>>Use |T135739:0:0|tAzure Dispel (3) on the grey lightning clouds
.goto 2024,78.06,32.73
.complete 70041,3 
step
>>Use |T134155:0:0|tKalecgos's Aid (2) on cooldown
>>Spam |T135734:0:0|tArcane Blast (1)
.goto 2024,78.06,32.73
.complete 70041,4
step
#completewith next
+|cfff78300Dismount early with (6)!|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,78.22,33.34
.turnin 70041 >>Turn in The Storm-Eater's Fury
.accept 66015 >>Accept The Blue Dragon Oathstone
.target Kalecgos
step
#title Dragon Glyph; Vakthros Range
.goto 2024,72.60,39.69
.achievement 16577,10 >>Pick up the Dragon Glyph
step
#title Dragon Glyph: Lost Ruins
.goto 2024,70.57,46.27
.achievement 16577,4 >>Pick up the Dragon Glyph at the top of the tower
step
.xp 69,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Maddy Scattershot
.accept 66391 >>Accept To the Ruins!
.goto 2024,63.42,58.03
.turnin 66671 >>Turn in Path to Nowhere
.goto 2024,63.22,58.41
.target Rannan Korren
.target Maddy Scattershot
step
.pve
.xp 69,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.accept 66141 >>Accept Broken Traditions, Broken Bodies
.goto 2024,63.20,58.61
.target Garz
step
.isQuestComplete 66391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,65.02,58.61
.turnin 66391 >>Turn in To the Ruins!
.target Rannan Korren
step
.isQuestTurnedIn 66391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.02,58.61
.accept 66353 >>Accept R.A.D. Anomalies
.accept 66352 >>Accept What the Enemy Knows
.target Rannan Korren
.target Lathos Sunband
step
.isOnQuest 66352
#completewith TheAzureSpanRADAnomalies
>>Kill |cff00ecffTarasek Warriors|r and |cff00ecffArcane Manipulator|r. Loot them for the orders
.complete 66352,1 
step
.isOnQuest 66353
#title Record 1/3
>>Use |T134519:0|t[R.A.D] next to the anomalies
.use 191909
.goto 2024,65.52,58.82
.complete 66353,1,1 
step
.isOnQuest 66353
#title Record 2/3
>>Use |T134519:0|t[R.A.D] next to the anomalies
.use 191909
.goto 2024,66.31,59.37
.complete 66353,1,2 
step
.isOnQuest 66353
#label TheAzureSpanRADAnomalies
#title Record 3/3
>>Use |T134519:0|t[R.A.D] next to the anomalies
.use 191909
.goto 2024,66.39,59.72
.complete 66353,1 
step
.isOnQuest 66352
>>Kill |cff00ecffTarasek Warriors|r and |cff00ecffArcane Manipulator|r. Loot them for the orders
.goto 2024,65.09,59.54,20,0
.goto 2024,66.35,59.56,20,0
.goto 2024,65.54,59.28
.complete 66352,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.03,58.67
.turnin -66353 >>Turn in R.A.D. Anomalies
.turnin -66352 >>Turn in What the Enemy Knows
.target Rannan Korren
.target Lathos Sunband
step
.isQuestTurnedIn 66352
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.goto 2024,65.03,58.67
.accept 66422 >>Accept The Expedition Continues!
.target Lathos Sunband
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to the Dragon Console. Talk to Lathos Sunband
.goto 2024,65.64,60.78
.turnin -66422 >>Turn in The Expedition Continues!
.target Lathos Sunband
step
.isQuestTurnedIn 66422
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to the Dragon Console. Talk to Lathos Sunband
.goto 2024,65.64,60.78
.accept 66423 >>Accept Worries and Validations
.target Lathos Sunband
step
.isOnQuest 66423
#title Clue Found 1
>>Interact with the tablet
.goto 2024,65.32,60.80
.complete 66423,1,1 
step
.isOnQuest 66423
#title Clue Found 2
>>Interact with the tablet
.goto 2024,65.86,60.55
.complete 66423,1 
step
.isQuestComplete 66423
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.turnin -66423 >>Turn in Worries and Validations
.goto 2024,65.64,60.79
.target Lathos Sunband
step
.isQuestTurnedIn 66423
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.accept 66425 >>Accept Arcane Overload
.goto 2024,65.63,60.76
.target Rannan Korren
step
.isOnQuest 66425
#title Bubble Dispelled 1
>>Use |T134519:0|t[R.A.D.D.E.R] to dispel the barriers
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.28,61.31
.complete 66425,1,1 
step
.isOnQuest 66425
#title Bubble Dispelled 2
>>Use |T134519:0|t[R.A.D.D.E.R] to dispel the barriers
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.10,61.54
.complete 66425,1,2 
step
.isOnQuest 66425
#title Bubble Dispelled 3
>>Use |T134519:0|t[R.A.D.D.E.R] to dispel the barriers on the second floor
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.18,60.95,10,0
.goto 2024,65.00,61.24,10,0
.goto 2024,65.06,61.14
.complete 66425,1 
step
.isQuestComplete 66425
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.turnin -66425 >>Turn in Arcane Overload
.goto 2024,65.63,60.76
.target Rannan Korren
step
.isQuestTurnedIn 66425
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.accept 66426 >>Accept Running Out of Time
.goto 2024,65.64,60.80
.target Lathos Sunband
step
.isOnQuest 66426
#title Dragon Glyph: Ruins of Karnthar
.goto 2024,68.65,60.42
.achievement 16577,3 >>Pick up the Dragon Glyph at the top of the tower
step
.isOnQuest 66426
>>Follow the arrow and wait for the roleplay
.goto 2024,68.46,60.50
.complete 66426,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.goto 2024,68.46,60.50
.turnin -66426 >>Turn in Running Out of Time
.target Lathos Sunband
step
.isQuestTurnedIn 66426
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.goto 2024,68.46,60.50
.accept 66427 >>Accept A Looming Menace
.target Lathos Sunband
step
.isOnQuest 66427
>>Kill |cff00ecffArcane Manipulator Tharon|r
.goto 2024,68.07,61.59
.complete 66427,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.turnin -66427 >>Turn in A Looming Menace
.goto 2024,68.46,60.50
.target Lathos Sunband
step
.isQuestTurnedIn 66427
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.accept 66428 >>Accept Friendship For Granted
.goto 2024,68.48,60.43
.target Rannan Korren
step
.isOnQuest 66428
>>Use the |T134519:0|t[R.A.D.D.E.R.E.R] next to the console
.use 192475
.goto 2024,68.61,60.39
.complete 66428,1 
step
.isOnQuest 66428
>>Wait for the roleplay
.goto 2024,68.50,60.47
.complete 66428,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,68.50,60.47
.turnin -66428 >>Turn in Friendship For Granted
.target Rannan Korren
step
.isQuestTurnedIn 66428
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,68.50,60.47
.accept 66429 >>Accept I Will Remember
.target Rannan Korren
step
.pve
.xp 69,1
.isOnQuest 66141
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Narn
.goto 2024,65.62,54.84
.skipgossip
.complete 66141,1 
.target Narn
step
.pve
.isQuestComplete 66141
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.goto 2024,63.51,52.97
.turnin 66141 >>Turn in Broken Traditions, Broken Bodies
.target Garz
step
.pve
.xp 69,1
.isQuestTurnedIn 66141
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.goto 2024,63.51,52.97
.accept 66150 >>Accept Rescuing Radza
.accept 66149 >>Accept Elemental Influence
.accept 66148 >>Accept Former Furbolg Family
.target Garz
step
.pve
.isOnQuest 66148
#completewith next
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.complete 66148,1 
step
.pve
.isOnQuest 66149
#title Destroy Totem 1
>>Destroy the Totem
.goto 2024,62.74,51.82
.complete 66149,1,1 
step
.pve
.isOnQuest 66148
#title Kill Furbolgs + Elementals
#completewith next
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.goto 2024,62.71,51.28,15,0
.complete 66148,1 
step
.pve
.isOnQuest 66149
#title Destroy Totem 2
>>Destroy the Totem
.goto 2024,62.29,51.28
.complete 66149,1,2 
step
.pve
.isOnQuest 66148
#title Kill Furbolgs + Elementals
#completewith next
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.goto 2024,62.21,50.66,15,0
.complete 66148,1 
step
.pve
.isOnQuest 66149
#title Destroy Totem 3
>>Destroy the Totem
.goto 2024,62.02,51.75
.complete 66149,1 
step
.pve
.isOnQuest 66150
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
*Defeat the incoming waves of mobs
.goto 2024,60.94,51.46
.skipgossip
.complete 66150,1 
.complete 66150,2 
.target Radza Thunderclaw
step
.pve
.isOnQuest 66148
#title Kill Furbolgs + Elementals
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.goto 2024,61.51,52.07,15,0
.goto 2024,61.47,52.93,15,0
.goto 2024,61.58,54.22,25,0
.goto 2024,61.51,52.07
.complete 66148,1 
step
.pve
.xp 69,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Narn and Radza Thunderclaw (you may have to wait for him)
.goto 2024,60.92,50.54
.turnin -66148 >>Turn in Former Furbolg Family
.turnin -66149 >>Turn in Elemental Influence
.turnin -66150 >>Turn in Rescuing Radza
.target Radza Thunderclaw
.target Narn
step
.pve
.xp 69,1
.isQuestTurnedIn 66150
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
.goto 2024,60.92,50.54
.accept 66151 >>Accept His Stone Heart
.target Radza Thunderclaw
step
.pve
.xp 69,1
.isOnQuest 66151
>>Kill |cff00ecffStoneheart|r. Stay away during his ability "Earth Torrent"
*You can skip this if you deal low damage
.goto 2024,60.47,49.43
.complete 66151,1 
step
.pve
.isQuestComplete 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
.turnin 66151 >>Turn in His Stone Heart
.goto 2024,60.91,50.50
.target Radza Thunderclaw
step
.pve
.isQuestTurnedIn 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.accept 66152 >>Accept Nowhere to Go
.goto 2024,60.99,50.56
.target Garz
step
.pve
.isOnQuest 66152
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to Camp Nowhere. Talk to Garz
.goto 2024,63.20,58.67
.turnin 66152 >>Turn in Nowhere to Go
.target Garz
step
.isQuestComplete 66429
#completewith next
.goto 2024,63.45,58.66
.fp >>Get the Camp Nowhere Flight Path
step
.isQuestComplete 66429
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,63.68,58.91
.turnin 66429 >>Turn in I Will Remember
.target Rannan Korren
step
#completewith next
.hs >>Hearth to The Conjured Biscuit Inn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sindragosa
.goto 2024,39.48,63.06
.skipgossip 186188,1
.complete 66015,1 
.target Sindragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sindragosa and Kalecgos
.turnin 66015 >>Turn in The Blue Dragon Oathstone
.goto 2024,39.48,63.06
.accept 66244 >>Accept To Valdrakken
.goto 2024,39.47,63.05
.target Sindragosa
.target Kalecgos
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup Threads of Fate 60-70
#name C3Azure Span ToF
#displayname Chapter 3 - The Azure Span ToF
#next D4Thaldraszus ToF
step
#completewith TheAzureSpanTotheAzureSpan
+Welcome to the Azure Span Guide of RestedXP.
step
.goto 2023,71.65,80.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Masud the Wise
.accept 65686 >>Accept To the Azure Span
.target Masud the Wise
step
#title Dragon Glyph: Forkriver Crossing
.goto 2023,70.06,86.98
.achievement 16577,11 >>Pick up the Dragon Glyph in the air
step << !Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones
.goto 2024,41.44,35.62
.turnin 65686 >>Turn in To the Azure Span
.accept 66228 >>Accept Camp Antonidas
.target Glania of the Blessed Ones
step << Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones and Scalecommander Emberthal
.turnin 65686 >>Turn in To the Azure Span
.goto 2024,41.44,35.62
.accept 70746 >>Accept Shades of Blue
.target Glania of the Blessed Ones
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.23,35.88
.accept 67174 >>Accept Arcane Detection
.target Miva Star-Eye
step
>>Interact with the Unassuming Flask
.goto 2024,41.39,35.70
.complete 67174,1 
step
>>Interact with the Dusty Teapot
.goto 2024,41.41,35.84
.complete 67174,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.accept 67177 >>Accept WANTED: Gorger
.target Shala
step
>>Interact with Toolky's Toy Boat
.goto 2024,41.23,36.37
.complete 67174,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.22,35.89
.turnin 67174 >>Turn in Arcane Detection
.accept 67175 >>Accept How To Stop An Exploding Toy Boat
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Julk
.goto 2024,41.21,35.86
.skipgossip
.timer 15,Roleplay Duration
.complete 67175,1 
.target Julk
step
>>After a short roleplay interact with the wand
.goto 2024,41.19,35.91
.complete 67175,2 
step
>>Click on the toy boat
.goto 2024,40.59,36.55
.complete 67175,3 
step
>>Kill |cff00ecffGorger|r. Loot him for his horns
.goto 2024,39.66,37.24
.complete 67177,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.21,35.87
.turnin 67175 >>Turn in How To Stop An Exploding Toy Boat
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.turnin 67177 >>Turn in WANTED: Gorger
.target Shala
step << Dracthyr
>>Follow the arrow to Emberthal
.goto 2024,45.00,41.00
.complete 70746,1 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
.goto 2024,45.00,41.00
.turnin 70746 >>Turn in Shades of Blue
.target Scalecommander Emberthal
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Telash Greywing
.goto 2024,45.65,41.20
.accept 70747 >>Accept The Azure Wizard
.target Telash Greywing
step << Dracthyr
#completwith next
+You can skip the next cutscene (Esc -> Yes)
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.skipgossip 192091,1
.complete 70747,1 
.target Archmage Khadgar
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.turnin 70747 >>Turn in The Azure Wizard
.target Archmage Khadgar
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+Fly to Noriko using your dragonriding mount
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+You can skip the next cutscene (Esc -> Yes)
step << !Dracthyr
#label TheAzureSpanCampAntonidas
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 66228 >>Turn in Camp Antonidas
.target Noriko the All-Remembering
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.accept 67033 >>Accept Assemble the Defenses
.accept 67035 >>Accept Preservation of Knowledge
step
#completewith next
.goto 2024,46.71,39.57
.fp >>Get the Camp Antonidas Flight Path
step
#title |T1499566:0:0|tTome 1 + |T1041232:0:0|tDevice 1
>>Pick up the tome and the device on the ground
.goto 2024,46.13,39.27
.complete 67035,1,1 
.complete 67033,1,1 
step
#title |T1499566:0:0|tTome 2
>>Pick up the tome
.goto 2024,45.73,39.29
.complete 67035,1,2 
step
#title |T1499566:0:0|tTome 3
>>Pick up the tome
.goto 2024,46.03,39.82
.complete 67035,1,3 
step
#title |T1041232:0:0|tDevice 2
.goto 2024,45.86,40.18
.complete 67033,1,2 
step
#title |T1499566:0:0|tTome 4 + |T1041232:0:0|tDevice 3
>>Pick up the tome and the device on the ground
.goto 2024,46.07,40.86
.complete 67035,1 
.complete 67033,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.turnin 67033 >>Turn in Assemble the Defenses
.turnin 67035 >>Turn in Preservation of Knowledge
.accept 67036 >>Accept Wrath of the Kirin Tor
step
#completewith next
.goto 2024,46.29,38.86
.vehicle 192331 >>Enter the Arcane Blaster
step
>> Use |T429383:0:0|tArcane Blast (1) to kill the flying dragons. |cfff78300Don't leave the Arcane Blaster manually|r
.goto 2024,46.29,38.86
.complete 67036,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.turnin 67036 >>Turn in Wrath of the Kirin Tor
.goto 2024,46.64,40.16
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Archmage Khadgar and talk to him
.accept 65688 >>Accept Meeting Kalecgos
.goto 2024,46.63,40.19
step
#completewith next
.goto 2024,45.99,38.79
.gossipoption 55328 >>Interact with the Supply Portal
.timer 8,Roleplay Duration
step
>>Wait for the bag and pick it up
.goto 2024,45.95,38.90
.complete 65688,1 
.complete 65688,2 
step
>>Interact with the to WANTED pamphlet
.goto 2024,46.13,39.61
.accept 66488 >>Accept WANTED: Frigellus
step
#completewith next
+Fly to Kalecgos using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,40.92,55.00
.turnin 65688 >>Turn in Meeting Kalecgos
.accept 65689 >>Accept The Many Images of Kalecgos
step
#completewith next
>>Interact with the Crystal Pylon from the waypoint location
*Skip this step if you want to fly up
.goto 2024,40.99,55.06
.complete 65689,1 
step
.goto 2024,41.17,57.81
.complete 65689,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to both Mirror Images of Kalecgos
.goto 2024,40.74,59.04
.turnin 65689 >>Turn in The Many Images of Kalecgos
.accept 65702 >>Accept Driven Mad
.accept 65709 >>Accept Arcane Pruning
step
>>Use the |T133622:0:0|t[Bag of Helpful Goods] or use the |cffffff00[ExtraActionButton]|t
.goto 2024,40.72,59.10
.use 191953
.complete 65709,1 
step
#completewith TheAzureSpanArcanePruning1
>>Kill |cff00ecffElementals|r in the area. Loot them for the Unstable Arcana.
.complete 65702,1 
step
#completewith next
+The Scepter has a very high range so you can use it from at least 30 yards away
step
#label TheAzureSpanArcanePruning1
>>Use the |T1379242:0:0|t[Ley Scepter] near the arcane fields
.use 191952
.complete 65709,2 
.goto 2024,39.57,60.27
step
#completewith next
.goto 2024,38.56,59.75,30 >>Fly up
step
.accept 69864 >>Accept Forgotten Creation
.goto 2024,38.56,59.75
.complete 69864,1 
.goto 2024,38.18,59.03
step
#completewith TheAzureSpanArcanePruning2
>>Kill |cff00ecffElementals|r in the area. Loot them for the Unstable Arcana.
.complete 65702,1 
step
#completewith next
+The Scepter has a very high range so you can use it from at least 30 yards away
step
#label TheAzureSpanArcanePruning2
>>Use the |T1379242:0:0|t[Ley Scepter] near the arcane fields
.use 191952
.complete 65709,3 
.goto 2024,41.18,62.26
step
>>Kill and LOOT the |cff00ecffElementals|r in the area
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,40.42,60.51
.complete 65702,1 
step
.goto 2024,40.69,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Mirror Images of Kalecgos
.turnin 65709 >>Turn in Arcane Pruning
.turnin 65702 >>Turn in Driven Mad
.accept 65852 >>Accept Straight to the Top
step
>>Use the |T133622:0:0|t[Bag of Helpful Goods] next to the arcane field
.goto 2024,39.57,60.25
.use 191978
.complete 65852,1 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2024,39.57,60.25
.complete 65852,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.96,61.46
.turnin 65852 >>Turn in Straight to the Top
.accept 65751 >>Accept Platform Adjustments
.accept 65752 >>Accept Arcane Annoyances
step
#completewith next
+You can also just Click on the wyrms to use the item
step
#sticky
#label TheAzureSpanArcaneAnnoyances
>>Use the |T1373906:0:0|t[Arcane Hook] to pull a wyrm down
.use 194891
.goto 2024,39.91,61.66,0,0
.complete 65752,1 
step
#title Energy 1
>>Destroy the energy
.goto 2024,40.23,62.03
.complete 65751,1,1 
step
#title Energy 2
>>Destroy the energy
.goto 2024,39.58,62.72
.complete 65751,1,2 
step
#title Energy 3
>>Destroy the energy
.goto 2024,39.51,61.52
.complete 65751,1,3 
step
#requires TheAzureSpanArcaneAnnoyances
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.97,61.46
.turnin 65751 >>Turn in Platform Adjustments
.turnin 65752 >>Turn in Arcane Annoyances
.accept 65854 >>Accept Reclaiming the Oathstone
step
>>Fly down and talk to Kalecgos
.goto 2024,39.44,63.18
.skipgossip
.complete 65854,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sindragosa
.goto 2024,39.48,63.07
.turnin 65854 >>Turn in Reclaiming the Oathstone
.accept 65855 >>Accept Aiding Azure Span
step
#completewith next
.goto 2024,37.84,62.00,15 >>Enter the inn
step
#completewith TheAzureSpanAidingAzureSpan
.goto 2024,37.36,62.43
.home >>Set your Hearthstone to The Conjured Biscuit Inn
step
#completewith next
.goto 2024,37.07,60.82
.fp >>Get the Azure Archives Flight Path
step
#label TheAzureSpanAidingAzureSpan
.goto 2024,37.07,60.82
.complete 65855,1 
step
#completewith next
+Use the flightmaster to fly to Camp Antonidas or use your dragonriding mount (faster)
step
#label TheAzureSpanAidingAzureSpan2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 65855 >>Turn in Aiding Azure Span
.accept 66699 >>Accept Ask the Locals
step
>>Kill |cff00ecffFrigellus|r
.goto 2024,47.95,38.09
.complete 66488,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Korrikunit
.goto 2024,46.76,38.59
.skipgossip
.complete 66699,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jokomuupat
.goto 2024,46.34,38.15
.skipgossip
.complete 66699,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Custodian Cynegos
.goto 2024,46.01,38.31
.turnin 66488 >>Turn in WANTED: Frigellus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arch Enchanter Celeste
.goto 2024,45.99,38.41
.accept 66489 >>Accept Setting the Defense
step
>>Use |T135477:0|t[Arch Instructor's Wand] while targeting an |cff00ff00Azure Defender|r
.use 192471
.goto 2024,46.17,38.98
.complete 66489,1 
step
.goto 2024,46.00,38.42
>>Return to Arch Enchanter Celeste
.turnin 66489 >>Turn in Setting the Defense
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk
.goto 2024,45.73,38.84
.skipgossip 190225,1
.complete 66699,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk
.goto 2024,45.73,38.84
.turnin 66699 >>Turn in Ask the Locals
.accept 65864 >>Accept Catch the Caravan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caddy Scattershot
.goto 2024,45.69,39.79
.accept 66671 >>Accept Path to Nowhere
step
#completewith next
.goto 2024,35.25,36.98,20 >>Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,35.25,36.98
.skipgossip 186224,1
.timer 19,Roleplay Duration
.complete 65864,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Elder Poa
.turnin 65864 >>Turn in Catch the Caravan
.goto 2024,35.25,36.97
.accept 65868 >>Accept Those Aren't for Chewing
.goto 2024,35.36,36.94
.accept 65867 >>Accept Howling in the Big Tree Hills
.accept 65866 >>Accept Snap the Traps
.goto 2024,35.28,36.94
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>Kill |cff00ecffGnolls|r in the area. Loot them for the offerings
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>Interact with traps on the ground
.complete 65866,1 
step
>>Kill |cff00ecffHyenamaster Durgun|r
.goto 2024,35.66,34.73
.complete 65867,1 
step
#completewith next
.goto 2024,34.95,32.59,10 >>Enter the cave
step
>>Kill |cff00ecffTrap-Layer Kerwal|r
.goto 2024,34.99,32.18
.complete 65867,2 
step
#completewith next
.goto 2024,34.95,32.59,10 >>Leave the cave
step
#label TheAzureSpanHowlingtheBigTreeHills
>>Kill |cff00ecffBakra the Bully|r
.goto 2024,33.96,33.18
.complete 65867,3 
step
#completewith next
>>Interact with traps on the ground
.goto 2024,35.34,33.07,0,0
.complete 65866,1 
step
>>Kill |cff00ecffGnolls|r in the area. Loot them for the offerings
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
>>Interact with traps on the ground
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.complete 65866,1 
step
#requires TheAzureSpanThoseArentForChewing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.goto 2024,34.26,31.30
.turnin 65868 >>Turn in Those Aren't for Chewing
.turnin 65867 >>Turn in Howling in the Big Tree Hills
.turnin 65866 >>Turn in Snap the Traps
.timer 17,Roleplay Duration
step
#completewith next
+Wait for the short roleplay
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.07
.accept 65871 >>Accept Gnoll Way Out
.accept 65872 >>Accept Ill Gnolls with Ill Intent
.accept 65873 >>Accept Leader of the Shadepaw Pack
.accept 65870 >>Accept Supplies!
step
#completewith next
.goto 2024,33.95,30.64,12 >>Enter the cave
step
#completewith TheAzureSpanLeaderoftheShadepawPack
>>Kill |cff00ecffGnolls|r in the cave
.goto 2132,45.88,50.78,0,0
.complete 65872,1 
step
>>Pick up the basket
.goto 2132,36.31,93.16
.complete 65870,3 
step
>>Pick up the barrel
.goto 2132,29.17,75.42
.complete 65870,1 
step
#title Tuskarr 1
>>Open the cage
.goto 2132,30.36,59.53
.complete 65871,1,1 
step
>>Investigate Norukks corpse
.goto 2132,41.42,63.83
.complete 65871,2 
step
#title Tuskarr 2
>>Open the cage
.goto 2132,46.26,40.92
.complete 65871,1,2 
step
>>Pick up the barrel
.goto 2132,51.40,36.86
.complete 65870,2 
step
#title Tuskarr 3
>>Open the cage
.goto 2132,38.10,32.11
.complete 65871,1 
step
#label TheAzureSpanLeaderoftheShadepawPack
>>Kill |cff00ecffKargpaw the Fetid|r. Loot him for the totem.
.goto 2132,42.27,14.47
.complete 65873,1 
step
>>Kill |cff00ecffGnolls|r in the cave
.goto 2132,37.06,36.14,20,0
.goto 2132,44.64,36.89,20,0
.goto 2132,48.99,26.78,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,64.62,21.19,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,43.73,42.03,20,0
#loop
.line 2132,36.65,34.61,28.82,48.53,29.37,60.34,38.45,52.88,47.14,55.14,46.56,36.26,61.09,39.17,65.72,24.58
.goto 2132,36.65,34.61,20,0
.goto 2132,28.82,48.53,20,0
.goto 2132,29.37,60.34,20,0
.goto 2132,38.45,52.88,20,0
.goto 2132,47.14,55.14,20,0
.goto 2132,46.56,36.26,20,0
.goto 2132,61.09,39.17,20,0
.goto 2132,65.72,24.58,20,0
.complete 65872,1 
step
#completewith next
.goto 2024,34.92,30.03,10 >>Leave the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.06
.turnin 65870 >>Turn in Supplies!
.turnin 65872 >>Turn in Ill Gnolls with Ill Intent
.turnin 65873 >>Turn in Leader of the Shadepaw Pack
.turnin 65871 >>Turn in Gnoll Way Out
.accept 66239 >>Accept Spreading Decay
step
#completewith next
+Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,28.69,34.82
.turnin 66239 >>Turn in Spreading Decay
.accept 65869 >>Accept Another Ambush
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akiun
.goto 2024,28.68,34.75
.skipgossip
.complete 65869,1 
step
#title Body 1
>>Interact with the body while mounted
.goto 2024,29.25,33.57
.skipgossip
.complete 65869,2,1 
step
#title Body 2
>>Interact with the body while mounted
.goto 2024,29.17,32.56
.skipgossip
.complete 65869,2,2 
step
#title Body 3
>>Interact with the body while mounted
.goto 2024,28.20,31.86
.skipgossip
.complete 65869,2,3 
step
#title Body 4
>>Interact with the body while mounted
.goto 2024,27.97,32.83
.skipgossip
.complete 65869,2 
step
.goto 2024,28.78,34.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.turnin 65869 >>Turn in Another Ambush
.accept 66026 >>Accept Urgent Action Required
step
.goto 2024,28.47,35.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Unkimi
.accept 71233 >>Accept Falling Water
step
.goto 2024,22.72,41.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.accept 66262 >>Accept Waste Water Cleanup
step
>>Click on the Rotting Piles and kill the spawning Muck Elemental
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
#loop
.line 2024,22.45,41.96,22.04,41.66,22.27,41.20,22.83,41.18,23.22,41.16,23.60,41.40,22.81,42.15
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
.complete 66262,1 
step
.goto 2024,22.72,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66262 >>Turn in Waste Water Cleanup
.accept 66263 >>Accept A Precision Approach
.accept 66264 >>Accept Disarmed and Docile
step
#completewith next
>>Kill |cff00ecffGnawbone Armaments|r. Loo them for the armaments
.complete 66264,1 
step
#completewith next
.goto 2024,24.40,39.56,20 >>Enter the cave
step
#label TheAzureSpanAPrecisionApproach
>>Kill |cff00ecffFlayfist|r
.goto 2024,24.80,39.03
.complete 66263,1 
step
>>Kill |cff00ecffGnawbone Armaments|r. Loo them for the armaments
.goto 2024,24.40,39.56,25,0
.goto 2024,23.33,39.87,25,0
.goto 2024,22.47,39.95,25,0
.goto 2024,22.09,40.67,25,0
.goto 2024,23.85,40.50,35,0
#loop
.line 2024,24.40,39.56,23.33,39.87,22.47,39.95,22.09,40.67,23.85,40.50
.goto 2024,24.40,39.56,35,0
.goto 2024,23.33,39.87,35,0
.goto 2024,22.47,39.95,35,0
.goto 2024,22.09,40.67,35,0
.goto 2024,23.85,40.50,35,0
.complete 66264,1 
step
.goto 2024,22.74,41.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66263 >>Turn in A Precision Approach
.turnin 66264 >>Turn in Disarmed and Docile
.accept 66265 >>Accept Who's Next?
.accept 66266 >>Accept Filthy Mongrels
step
.goto 2024,23.48,41.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Illusory Mage
.accept 66267 >>Accept M.E.T.A.
step
#completewith TheAzureSpanMETA
>>Kill |cff00ecffMongrels|r and |cff00ecffMatriarchs|r on the side
.complete 66266,2 
.complete 66266,1 
step
>>Kill |cff00ecffCracktooth|r inside the small cave
.goto 2024,24.20,41.81
.complete 66265,1 
step
#label TheAzureSpanMETA
>>Kill |cff00ecffGnolls|r in the area. Loot them for keys. You can also pick up the keys from the tents
.goto 2024,23.50,42.43,25,0
.goto 2024,23.73,43.25,25,0
.goto 2024,24.32,42.91,25,0
.goto 2024,23.94,42.02,25,0
#loop
.line 2024,23.50,42.43,23.73,43.25,24.32,42.91,23.94,42.02
.goto 2024,23.50,42.43,30,0
.goto 2024,23.73,43.25,30,0
.goto 2024,24.32,42.91,30,0
.goto 2024,23.94,42.02,30,0
.collect 191736,6,66267,0x1,-1
.complete 66267,1 
step
>>Finish killing |cff00ecffMongrels|r and |cff00ecffMatriarchs|r
.goto 2024,23.50,42.43,25,0
.goto 2024,23.73,43.25,25,0
.goto 2024,24.32,42.91,25,0
.goto 2024,23.94,42.02,25,0
#loop
.line 2024,23.50,42.43,23.73,43.25,24.32,42.91,23.94,42.02
.goto 2024,23.50,42.43,30,0
.goto 2024,23.73,43.25,30,0
.goto 2024,24.32,42.91,30,0
.goto 2024,23.94,42.02,30,0
.complete 66266,2 
.complete 66266,1 
step
.goto 2024,22.70,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66266 >>Turn in Filthy Mongrels
.turnin 66265 >>Turn in Who's Next?
.turnin 66267 >>Turn in M.E.T.A.
.accept 66268 >>Accept Third Try's the Charm
.accept 66269 >>Accept Just To Be Sure
step
#completewith TheAzureSpanThirdTrystheCharm
>>Kill |cff00ecffStormfang elementalists|r
.complete 66269,1 
step
#completewith next
.goto 2024,22.16,43.51,10 >>Enter the cave
step
#label TheAzureSpanThirdTrystheCharm
>>Kill |cff00ecffBloodclaw|r
.goto 2024,22.27,43.20
.complete 66268,1 
step
#completewith TheAzureSpanThirdTrystheCharm
>>Kill |cff00ecffStormfang elementalists|r
.goto 2024,22.27,42.50,25,0
.goto 2024,23.17,42.67,25,0
.goto 2024,23.32,43.28,25,0
.goto 2024,23.22,44.28,25,0
.goto 2024,22.52,43.54,25,0
#loop
.line 2024,22.27,42.50,23.17,42.67,23.32,43.28,23.22,44.28,22.52,43.54
.goto 2024,22.27,42.50,30,0
.goto 2024,23.17,42.67,30,0
.goto 2024,23.32,43.28,30,0
.goto 2024,23.22,44.28,30,0
.goto 2024,22.52,43.54,30,0
.complete 66269,1 
step
.goto 2024,22.74,41.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66269 >>Turn in Just To Be Sure
.turnin 66268 >>Turn in Third Try's the Charm
step
>>Kill |cff00ecffCascade|r
.goto 2024,23.33,33.60
.accept 72358 >>Accept Cascade (Elite Objective)
.complete 72358,1 
step
#completewith next
+Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,20.59,35.67
.turnin 66026 >>Turn in Urgent Action Required
.timer 24,Roleplay Duration
step
.goto 2024,18.73,24.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 71233 >>Turn in Falling Water
.accept 66837 >>Accept Nothing for Breakfast
.accept 66838 >>Accept It's Cold Up Here
step
.goto 2024,19.04,23.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.accept 66844 >>Accept The Great Shokhari
step
#completewith next
.goto 2024,19.16,23.77
.fp >>Get the Three-Falls Lookout Flight Path
step
.goto 2024,18.98,23.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Modurun Sixtoes
.accept 66839 >>Accept It's Brew Time!
step
#completewith next
>>Kill |cff00ecffbears|r in the area. Loot them for their pelts
.complete 66838,1 
step
>>Focus on picking up Dragon Foil and Blood Berries
.goto 2024,20.46,25.93,25,0
.goto 2024,21.16,25.65,25,0
.goto 2024,21.70,25.54,25,0
.goto 2024,22.23,26.04,25,0
.goto 2024,22.76,26.05,25,0
.goto 2024,22.87,26.70,25,0
.goto 2024,23.23,26.82,25,0
.goto 2024,22.42,27.73,25,0
.goto 2024,21.91,27.83,25,0
.goto 2024,20.85,27.94,25,0
#loop
.line 2024,20.46,25.93,21.16,25.65,21.70,25.54,22.23,26.04,22.76,26.05,22.87,26.70,23.23,26.82,22.42,27.73,21.91,27.83,20.85,27.94
.goto 2024,20.46,25.93,30,0
.goto 2024,21.16,25.65,30,0
.goto 2024,21.70,25.54,30,0
.goto 2024,22.23,26.04,30,0
.goto 2024,22.76,26.05,30,0
.goto 2024,22.87,26.70,30,0
.goto 2024,23.23,26.82,30,0
.goto 2024,22.42,27.73,30,0
.goto 2024,21.91,27.83,30,0
.goto 2024,20.85,27.94,30,0
.complete 66839,1 
step
>>Kill |cff00ecffbears|r in the area. Loot them for their pelts
.goto 2024,20.85,27.94,25,0
.goto 2024,21.91,27.83,25,0
#loop
.line 2024,20.46,25.93,21.16,25.65,21.70,25.54,22.23,26.04,22.76,26.05,22.87,26.70,23.23,26.82,22.42,27.73,21.91,27.83,20.85,27.94
.goto 2024,20.46,25.93,30,0
.goto 2024,21.16,25.65,30,0
.goto 2024,21.70,25.54,30,0
.goto 2024,22.23,26.04,30,0
.goto 2024,22.76,26.05,30,0
.goto 2024,22.87,26.70,30,0
.goto 2024,23.23,26.82,30,0
.goto 2024,22.42,27.73,30,0
.goto 2024,21.91,27.83,30,0
.goto 2024,20.85,27.94,30,0
.complete 66838,1 
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.accept 66843 >>Accept Out of Lukh
step
#completewith next
>>Kill |cff00ecffVorquins|r and |cff00ecffBruffalons|r. Loot them for flanks and meat
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.complete 66837,2 
.complete 66837,1 
step
>>Kill |cff00ecffGloomfur Sasquatch|r inside the cave
.goto 2024,16.01,27.25
.complete 66843,1 
step
>>Kill |cff00ecffVorquins|r and |cff00ecffBruffalons|r. Loot them for flanks and meat
#loop
.line 2024,18.30,26.71,17.52,26.92,16.95,27.55,16.13,27.81,15.98,26.06,17.39,25.96
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.goto 2024,15.98,26.06,30,0
.goto 2024,17.39,25.96,30,0
.complete 66837,2 
.complete 66837,1 
step
>>Kill |cff00ecffSky Vixen Shokhari|r
.goto 2024,13.27,26.50
.complete 66844,1 
step
.goto 2024,18.75,24.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 66837 >>Turn in Nothing for Breakfast
.turnin 66838 >>Turn in It's Cold Up Here
step
.goto 2024,19.03,23.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.turnin 66844 >>Turn in The Great Shokhari
step
.goto 2024,18.98,23.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Modurun Sixtoes
.turnin 66839 >>Turn in It's Brew Time!
step
.goto 2024,18.54,23.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Manny Read
.accept 66840 >>Accept Water Safety
step
#title Sample collected 1/3
>>Use the |T134864:0|t[Water Testing Flask] at the waypoint location
.use 193569
.goto 2024,19.38,23.95
.complete 66840,1,1 
step
.goto 2024,19.16,24.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gannar Fullpack
.accept 66841 >>Accept A Shard of the Past
step
#title Sample collected 2/3
>>Use the |T134864:0|t[Water Testing Flask] at the waypoint location
.use 193569
.goto 2024,20.01,24.18
.complete 66840,1,2 
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.turnin 66843 >>Turn in Out of Lukh
step
>>Land on the rock and pick up the Ancient Artifact
.goto 2024,17.61,28.23
.complete 66841,1 
step
#title Sample collected 3/3
>>Use the |T134864:0|t[Water Testing Flask] at the waypoint location
.use 193569
.goto 2024,17.30,23.20
.complete 66840,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Manny Read and Thanessa Silverbloom
.turnin 66840 >>Turn in Water Safety
.goto 2024,18.54,23.67
.turnin 66841 >>Turn in A Shard of the Past
.goto 2024,18.65,23.67
step
.goto 2024,18.74,24.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guo-Hee Calmwater
.accept 66845 >>Accept Legendary Foil
step
>>Defeat the Mysterious Apparition
.goto 2024,17.26,26.21
.complete 66845,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guo-Hee Calmwater and the Mysterious Apparition
.turnin 66845 >>Turn in Legendary Foil
.goto 2024,18.74,24.42
.accept 66846 >>Accept The Heart of the Deck
.goto 2024,18.77,24.43
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Mysterious Apparition and wait for the roleplay
.goto 2024,18.77,24.43
.skipgossip 191741,1
.timer 35,Roleplay Duration
.complete 66846,1 
step
.goto 2024,18.77,24.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mysterious Apparition
.turnin 66846 >>Turn in The Heart of the Deck
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos after a short roleplay
.goto 2024,20.53,35.69
.accept 65838 >>Accept Breaching the Brackenhide
step
#completewith TheAzureSpanLeyLitter
>>Kill |cff00ecffBrackenhides|r and destroy their totems (Bonus Objective)
.complete 65841,1 
step
>>Interact with the Rotting Root
.goto 2024,18.89,36.99
.skipgossip
.complete 65838,2 
step
>>Interact with the Rotting Root
.goto 2024,18.38,34.74
.skipgossip
.complete 65838,1 
step
>>Interact with the Rotting Root
.goto 2024,17.59,36.99
.skipgossip
.complete 65838,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.goto 2024,16.75,37.26
.turnin 65838 >>Turn in Breaching the Brackenhide
.accept 65846 >>Accept Ley Litter
.accept 65844 >>Accept Cut Out the Rot
.accept 65845 >>Accept Echoes of the Fallen
step
#completewith TheAzureSpanLeyLitter
>>|cfff78300Look out for the treants because they are rather uncommon|r
.goto 2024,17.69,37.74,0,0
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#completewith TheAzureSpanEchoesoftheFallen
.complete 65846,1 
step
#title Spirit 1
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses
.use 191928
.goto 2024,17.47,37.07
.complete 65845,1,1 
step
#title Spirit 2
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses
.use 191928
.goto 2024,18.52,37.26
.complete 65845,1,2 
step
#title Spirit 3
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses
.use 191928
.goto 2024,18.13,37.67
.complete 65845,1,3 
step
#title Spirit 4
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses
.use 191928
.goto 2024,17.54,37.93
.complete 65845,1,4 
step
#label TheAzureSpanEchoesoftheFallen
#title Spirit 5
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses
.use 191928
.goto 2024,17.41,38.65
.complete 65845,1 
step
#label TheAzureSpanLeyLitter
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
#loop
.line 2024,17.81,38.52,18.42,38.32,18.69,36.99,17.25,36.85,17.45,38.42
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
.complete 65846,1 
step
#sticky
#label TheAzureSpanStoptheSpread
>>Kill |cff00ecffBrackenhides|r and destroy their totems
.goto 2024,18.53,35.78
.complete 65841,1 
step
>>|cfff78300Possible trean locations are marked on your map|r
.goto 2024,17.2,37.0,0
.goto 2024,17.4,37.8,0
.goto 2024,17.4,39.2,0
.goto 2024,17.6,37.2,0
.goto 2024,17.8,38.8,0
.goto 2024,18.4,38.0,0
.goto 2024,18.6,38.0,0
.goto 2024,18.6,38.6,0
.goto 2024,18.8,36.6,0
.goto 2024,17.2,37.0,0
.goto 2024,17.2,37.40,0
.goto 2024,17.6,37.40,0
.goto 2024,18.8,36.40,0
.goto 2024,17.69,37.74
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#requires TheAzureSpanStoptheSpread
.goto 2024,16.74,37.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.turnin 65846 >>Turn in Ley Litter
.turnin 65844 >>Turn in Cut Out the Rot
.turnin 65845 >>Turn in Echoes of the Fallen
.accept 65848 >>Accept Tome-ward Bound
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and wait for the roleplay
.goto 2024,16.74,37.32
.skipgossip 187873,1
.timer 21,Roleplay Duration
.complete 65848,1 
step
>>Mount the Tome of Spellflinging
.goto 2024,16.71,37.30
.complete 65848,2 
step
>>Spam |T134917:0:0|tTome Charge (1) to move faster
>>Use |T135753:0:0|tArcane Blast (2) to kill the |cff00ecffPurifiers|r
.goto 2024,16.02,38.49
.complete 65848,3,1 
step
>>Spam |T134917:0:0|tTome Charge (1) to move faster
>>Use |T135753:0:0|tArcane Blast (2) to kill the |cff00ecffPurifiers|r
.goto 2024,15.64,37.42
.complete 65848,3,2
step
>>Spam |T134917:0:0|tTome Charge (1) to move faster
>>Use |T135753:0:0|tArcane Blast (2) to kill the |cff00ecffPurifiers|r
.goto 2024,15.22,37.95
.complete 65848,3,3 
step
>>Use |T429383:0:0|tArcane Spirit Beam (1) to kill the |cff00ecffTwisted Ancient|r
.goto 2024,15.40,37.73
.complete 65848,4 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,15.30,39.43
.turnin 65848 >>Turn in Tome-ward Bound
.accept 65847 >>Accept Realignment
step
>>Interact with the Ley Crystal
.goto 2024,15.35,39.50
.complete 65847,1 
step
#title Infection 1
>>Destroy the infection
.goto 2024,15.51,39.31
.complete 65847,2,1 
step
#title Infection 2
>>Destroy the infection
.goto 2024,15.30,39.12
.complete 65847,2,2 
step
#title Infection 3
>>Destroy the infection
.goto 2024,15.07,39.52
.complete 65847,2 
step
#completewith next
.goto 2024,14.97,38.77,15 >>Leave the cave
step
#completewith next
+Fly to Kalecgos using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Brena
.turnin 65847 >>Turn in Realignment
.goto 2024,16.11,41.40
.accept 65849 >>Accept To Iskaara
.goto 2024,16.08,41.45
step
>>Kill |cff00ecffVakril, the Strongest Tuskarr|r
.goto 2024,17.23,41.46
.accept 69872 >>Accept Vakril, the Strongest Tuskarr
.complete 69872,1 
step
#completewith next
+Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,13.24,49.56
.turnin 65849 >>Turn in To Iskaara
.accept 66210 >>Accept Gather the Family
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Roki
.goto 2024,13.14,49.26
.accept 72435 >>Accept Orientation: Iskaara
step
#completewith next
.goto 2024,12.78,49.34,8 >>Enter the inn
step
#title |T134450:0:0|tOffering 1
>>Pick up the Stone Sculpture
.goto 2024,12.49,49.45
.complete 66210,1,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.accept 66213 >>Accept The Weave of a Tale
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Poa
.goto 2024,12.41,49.34
.skipgossip 1
.complete 66213,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.turnin 66213 >>Turn in The Weave of a Tale
step
#completewith next
.goto 2024,12.78,49.34,8 >>Leave the inn
step
#title |T134989:0:0|tOffering 2
>>Pick up the Ornamented Shield
.goto 2024,12.46,50.31
.complete 66210,1,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rokkutuk
.goto 2024,13.91,50.08
.complete 72435,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lukoturukk
.goto 2024,14.07,49.45
.accept 71234 >>Accept Nook News
step
#title |T1126431:0:0|tOffering 3
>>Pick up the Handcrafted Boat
.goto 2024,13.87,49.48
.complete 66210,1,3 
step
#title |T132803:0:0|tOffering 4
>>Pick up the Decorated Teapot
.goto 2024,13.48,48.57
.complete 66210,1 
step
#sticky
#label TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arvik
.goto 2024,13.17,48.53
.complete 72435,1 
step
>>Interact with the Funeral Boat
.goto 2024,13.14,48.57
.complete 66210,2 
step
#requires TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Norukk
.goto 2024,12.96,48.64
.complete 72435,4 
step
.goto 2024,12.89,48.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.accept 66218 >>Accept Scampering Scamps
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tatto
.goto 2024,13.18,48.82
.complete 72435,3 
step
.goto 2024,13.20,48.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.accept 66217 >>Accept WANTED: Krojek the Shoreprowler
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Murik
.goto 2024,13.14,49.26
.turnin 72435 >>Turn in Orientation: Iskaara
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Kalecgos
.turnin 66210 >>Turn in Gather the Family
.goto 2024,13.24,49.56
.accept 65850 >>Accept The Cycle of the Sea
.goto 2024,13.26,49.53
step
#completewith next
.goto 2024,13.24,49.55
.gossipoption 55314 >> Talk to Brena
.timer 72,Roleplay Duration
step
>>Interact with the Funeral Boat
.goto 2024,13.18,49.20,8,0
.goto 2024,13.06,49.52,10,0
.goto 2024,13.16,50.20
.complete 65850,1 
.complete 65850,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,12.94,50.39
.turnin 65850 >>Turn in Gather the Familiy
.accept 65911 >>Accept Azure Alignment
step
.isOnQuest 66217
>>Kill |cff00ecffKrojek The Shoreprowler|r. |cffffff00You can skip this quest. It is a very hard elite|r
.unitscan Krojek The Shoreprowler
.goto 2024,10.45,53.66
.complete 66217,1 
step
.isQuestComplete 66217
.goto 2024,12.51,49.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.turnin 66217 >>Turn in WANTED: Krojek the Shoreprowler
step
.abandon 66217 >>Abandon WANTED: Krojek the Shoreprowler
step
.isOnQuest 66218
.goto 2024,10.59,46.87
.gossipoption 55003 >>Talk to Neelo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wayun
.goto 2024,7.45,44.28
.turnin 71234 >>Turn in Nook News
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.accept 66781 >>Accept A Matter of Taste
step
>>Pick up the Large Stone on the ground
.goto 2024,7.24,45.12
.complete 66781,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.turnin 66781 >>Turn in A Matter of Taste
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog, Examiner Rowe and Aelnara
.accept 66164 >>Accept Fishy Fingers
.goto 2024,7.65,44.32
.accept 66154 >>Accept Salivatory Samples
.goto 2024,7.67,44.26
.accept 66147 >>Accept Crystals in the Water
.goto 2024,7.64,44.23
step
#completewith TheAzureSpanCrystalsintheWater
>>Pick up Stolen Parts on the ground
.complete 66164,1 
step
#completewith TheAzureSpanCrystalsintheWater
>>Kill |cff00ecffBrintooths|r. Loot them for Saliva
.complete 66154,1 
step
#title Crystal Mined 1/4
.goto 2024,9.86,43.36
.complete 66147,1,1 
step
#title Crystal Mined 2/4
.goto 2024,10.36,43.33
.complete 66147,1,2 
step
#title Crystal Mined 3/4
.goto 2024,10.68,42.73
.complete 66147,1,3 
step
#label TheAzureSpanCrystalsintheWater
#title Crystal Mined 4/4
.goto 2024,10.18,42.29
.complete 66147,1 
step
#completewith next
>>Pick up Stolen Parts on the ground
.complete 66164,1 
step
>>Kill |cff00ecffBrintooths|r. Loot them for Saliva
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,25,0
.goto 2024,9.77,43.71,25,0
.goto 2024,10.31,43.44,25,0
.goto 2024,10.95,43.44,25,0
.goto 2024,10.28,42.36,25,0
.complete 66154,1 
step
>>Pick up Stolen Parts on the ground
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,25,0
.goto 2024,9.77,43.71,25,0
.goto 2024,10.31,43.44,25,0
.goto 2024,10.95,43.44,25,0
.goto 2024,10.28,42.36,25,0
.complete 66164,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Rowe, Aelnara and LOU-C Fitzcog
.turnin 66154 >>Turn in Salivatory Samples
.goto 2024,7.67,44.26
.turnin 66147 >>Turn in Crystals in the Water
.goto 2024,7.64,44.23
.turnin 66164 >>Turn in Fishy Fingers
.accept 66175 >>Accept Field Experiment
.goto 2024,7.65,44.32
step
>>Click on the Geoscanner
.goto 2024,7.64,44.33
.complete 66175,1 
.timer 33,Roleplay Duration
step
.goto 2024,10.59,46.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Neelo
.turnin 66218 >>Turn in Scampering Scamps
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog
.goto 2024,7.64,44.33
.turnin 66175 >>Turn in Field Experiment
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog and Wayun
*|cffffff00You can skip these quests if you have bad gear. It's less efficient with low damage|r
.accept 66177 >>Accept No Dwarf Left Behind
.goto 2024,7.65,44.35
.accept 66232 >>Accept Afront 'Till A Salt
.goto 2024,7.46,44.28
step
.isOnQuest 66232
#completewith TheAzureSpanNoDwarfLeftBehind
>>Kill the |cff00ecffBrinetooths|r in the area. Loot them for the Crystal Flakes
.complete 66232,1 
step
.isOnQuest 66177
>>Pick up Mordigan's Field Notes
.goto 2024,9.38,42.53
.complete 66177,1 
step
.isOnQuest 66177
>>Pick up Mordigan's Field Notes
.goto 2024,10.02,41.30
.complete 66177,2 
step
.isOnQuest 66177
>>Pick up Mordigan's Boots
.goto 2024,9.93,39.68
.complete 66177,3 
step
.isOnQuest 66177
>>Pick up Mordigan's Pants
.goto 2024,10.61,41.25
.complete 66177,4 
step
.isOnQuest 66232
>>Kill the |cff00ecffBrinetooths|r in the area. Loot them for the Crystal Flakes
.goto 2024,10.22,41.79,30,0
.goto 2024,9.34,42.87,30,0
.goto 2024,9.72,40.64,30,0
.goto 2024,10.47,41.14,30,0
#loop
.line 2024,10.22,41.79,9.34,42.87,9.72,40.64,10.47,41.14,
.goto 2024,10.22,41.79,30,0
.goto 2024,9.34,42.87,30,0
.goto 2024,9.72,40.64,30,0
.goto 2024,10.47,41.14,30,0
.complete 66232,1 
step
.goto 2024,10.77,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.turnin -66177 >>Turn in No Dwarf Left Behind
step
.isQuestTurnedIn 66177
.goto 2024,10.77,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.accept 66187 >>Accept Mad Mordigan & The Crystal King
step
.isOnQuest 66232
>>Defeat |cff00ecffMordigan|r inside the cave
.goto 2024,11.19,41.10
.complete 66187,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.goto 2024,10.77,41.18
.turnin -66187 >>Turn in Mad Mordigan & The Crystal King
step
.isQuestTurnedIn 66187
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.goto 2024,10.77,41.18
.accept 66559 >>Accept Back To Camp
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Rowe
.turnin -66559 >>Turn in Back To Camp
.goto 2024,7.67,44.27
.turnin -66232 >>Turn in Afront 'Till A Salt
.goto 2024,7.46,44.28
step
#completewith next
.hs >>Hearth to The Conjured Biscuit Inn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.48,63.02
.turnin 65911 >>Turn in Azure Alignment
.accept 66027 >>Accept Calling the Blue Dragons
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.48,63.02
.skipgossip 186280,1
.complete 66027,1 
step
.goto 2024,39.48,63.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.turnin 66027 >>Turn in Calling the Blue Dragons
.accept 65886 >>Accept To Rhonin's Shield
step
#completewith next
+|cfff78300Pathing in The Azure Span after this point may change a bit|r
step
>>Follow the arrow and use the |cffffff00[ExtraActionButton]|r
.goto 2024,41.19,62.27,-1
.goto 2024,39.56,60.26,-1
.goto 2024,38.26,61.50,-1
.complete 65886,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren, Maddy Scattershot and Garz
.accept 66391 >>Accept To the Ruins!
.goto 2024,63.42,58.03
.turnin 66671 >>Turn in Path to Nowhere
.goto 2024,63.22,58.41
.accept 66141 >>Accept Broken Traditions, Broken Bodies
.goto 2024,63.20,58.61
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.02,58.61
.turnin 66391 >>Turn in To the Ruins!
.accept 66353 >>Accept R.A.D. Anomalies
.accept 66352 >>Accept What the Enemy Knows
step
#completewith TheAzureSpanRADAnomalies
>>Kill |cff00ecffTarasek Warriors|r and |cff00ecffArcane Manipulator|r. Loot them for the orders
.complete 66352,1 
step
#title Record 1/3
>>Use |T134519:0|t[R.A.D] next to the anomalies
.use 191909
.goto 2024,65.52,58.82
.complete 66353,1,1 
step
#title Record 2/3
>>Use |T134519:0|t[R.A.D] next to the anomalies
.use 191909
.goto 2024,66.31,59.37
.complete 66353,1,2 
step
#label TheAzureSpanRADAnomalies
#title Record 3/3
>>Use |T134519:0|t[R.A.D] next to the anomalies
.use 191909
.goto 2024,66.39,59.72
.complete 66353,1 
step
>>Kill |cff00ecffTarasek Warriors|r and |cff00ecffArcane Manipulator|r. Loot them for the orders
.goto 2024,65.09,59.54,20,0
.goto 2024,66.35,59.56,20,0
.goto 2024,65.54,59.28
.complete 66352,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.03,58.67
.turnin 66353 >>Turn in R.A.D. Anomalies
.turnin 66352 >>Turn in What the Enemy Knows
.accept 66422 >>Accept The Expedition Continues!
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to the Dragon Console. Talk to Lathos Sunband
.goto 2024,65.64,60.78
.turnin 66422 >>Turn in The Expedition Continues!
.accept 66423 >>Accept Worries and Validations
step
#title Clue Found 1
>>Interact with the tablet
.goto 2024,65.32,60.80
.complete 66423,1,1 
step
#title Clue Found 2
>>Interact with the tablet
.goto 2024,65.86,60.55
.complete 66423,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband and Rannan Korren
.turnin 66423 >>Turn in Worries and Validations
.goto 2024,65.64,60.79
.accept 66425 >>Accept Arcane Overload
.goto 2024,65.63,60.76
step
#title Bubble Dispelled 1
>>Use |T134519:0|t[R.A.D.D.E.R] to dispel the barriers
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.28,61.31
.complete 66425,1,1 
step
#title Bubble Dispelled 2
>>Use |T134519:0|t[R.A.D.D.E.R] to dispel the barriers
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.10,61.54
.complete 66425,1,2 
step
#title Bubble Dispelled 3
>>Use |T134519:0|t[R.A.D.D.E.R] to dispel the barriers on the second floor
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.18,60.95,10,0
.goto 2024,65.00,61.24,10,0
.goto 2024,65.06,61.14
.complete 66425,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.turnin 66425 >>Turn in Arcane Overload
.goto 2024,65.63,60.76
.accept 66426 >>Accept Running Out of Time
.goto 2024,65.64,60.80
step
#title Dragon Glyph: Ruins of Karnthar
.goto 2024,68.65,60.42
.achievement 16577,3 >>Pick up the Dragon Glyph at the top of the tower
step
>>Follow the arrow and wait for the roleplay
.goto 2024,68.46,60.50
.complete 66426,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.goto 2024,68.46,60.50
.turnin 66426 >>Turn in Running Out of Time
.accept 66427 >>Accept A Looming Menace
step
>>Kill |cff00ecffArcane Manipulator Tharon|r
.goto 2024,68.07,61.59
.complete 66427,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband and Rannan Korren
.turnin 66427 >>Turn in A Looming Menace
.goto 2024,68.46,60.50
.accept 66428 >>Accept Friendship For Granted
.goto 2024,68.48,60.43
step
>>Use the |T134519:0|t[R.A.D.D.E.R.E.R] next to the console
.use 192475
.goto 2024,68.61,60.39
.complete 66428,1 
step
>>Wait for the roleplay
.goto 2024,68.50,60.47
.complete 66428,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,68.50,60.47
.turnin 66428 >>Turn in Friendship For Granted
.accept 66429 >>Accept I Will Remember
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Narn
.goto 2024,65.62,54.84
.skipgossip
.complete 66141,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.goto 2024,63.51,52.97
.turnin 66141 >>Turn in Broken Traditions, Broken Bodies
.accept 66150 >>Accept Rescuing Radza
.accept 66149 >>Accept Elemental Influence
.accept 66148 >>Accept Former Furbolg Family
step
#completewith next
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.complete 66148,1 
step
#title Destroy Totem 1
>>Destroy the Totem
.goto 2024,62.74,51.82
.complete 66149,1,1 
step
#title Kill Furbolgs + Elementals
#completewith next
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.goto 2024,62.71,51.28,15,0
.complete 66148,1 
step
#title Destroy Totem 2
>>Destroy the Totem
.goto 2024,62.29,51.28
.complete 66149,1,2 
step
#title Kill Furbolgs + Elementals
#completewith next
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.goto 2024,62.21,50.66,15,0
.complete 66148,1 
step
#title Destroy Totem 3
>>Destroy the Totem
.goto 2024,62.02,51.75
.complete 66149,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
*Defeat the incoming waves of mobs
.goto 2024,60.94,51.46
.skipgossip
.complete 66150,1 
.complete 66150,2 
step
#title Kill Furbolgs + Elementals
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.goto 2024,61.51,52.07,15,0
.goto 2024,61.47,52.93,15,0
.goto 2024,61.58,54.22,25,0
.goto 2024,61.51,52.07
.complete 66148,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to Narn and Radza Thunderclaw (you may have to wait for him)
.goto 2024,60.92,50.54
.turnin 66148 >>Turn in Former Furbolg Family
.turnin 66149 >>Turn in Elemental Influence
.turnin 66150 >>Turn in Rescuing Radza
.accept 66151 >>Accept His Stone Heart
step
>>Kill |cff00ecffStoneheart|r. Stay away during his ability "Earth Torrent"
*You can skip this if you deal low damage
.goto 2024,60.47,49.43
.complete 66151,1 
step
.isQuestComplete 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
.turnin 66151 >>Turn in His Stone Heart
.goto 2024,60.91,50.50
step
.isQuestTurnedIn 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.accept 66152 >>Accept Nowhere to Go
.goto 2024,60.99,50.56
step
.isOnQuest 66152
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to Camp Nowhere. Talk to Garz
.goto 2024,63.20,58.67
.turnin 66152 >>Turn in Nowhere to Go
step
#completewith next
.goto 2024,63.45,58.66
.fp >>Get the Camp Nowhere Flight Path
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,63.68,58.91
.turnin 66429 >>Turn in I Will Remember
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kattigat and To'tik
.accept 67111 >>Accept The Ailing Apprentice
.goto 2024,67.22,44.41
.accept 67724 >>Accept The Fending Flames
.accept 70856 >>Accept Kill it with Fire
.goto 2024,67.34,44.35
step
#completewith TheAzureSpanTheFendingFlames
>>Use the |T135433:0|t[Flamethrower Torch] to burn the plunderer corpses on the ground
>>You can cancel the flamethrower with ESC
.use 199928
.complete 70856,1 
step
#completewith TheAzureSpanTheFendingFlames
>>Kill |cff00ecffShiverweb Crawlers|r. Loot them for their venom glands
.complete 67111,1 
step
#title Silk 1/4
>>Loot the Spider Silk Cocoon
.goto 2024,68.07,43.04
.complete 67724,1,1 
step
#title Silk 2/4
>>Loot the Spider Silk Cocoon
.goto 2024,68.50,43.61
.complete 67724,1,2 
step
#title Silk 3/4
>>Loot the Spider Silk Cocoon
.goto 2024,68.74,45.39
.complete 67724,1,3 
step
#label TheAzureSpanTheFendingFlames
#title Silk 4/4
>>Loot the Spider Silk Cocoon
.goto 2024,68.48,45.97
.complete 67724,1 
step
>>Kill |cff00ecffShiverweb Crawlers|r. Loot them for their venom glands
.goto 2024,68.86,45.36
.complete 67111,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to To'tik and Kattigat
.turnin 67724 >>Turn in The Fending Flames
.turnin 70856 >>Turn in Kill it with Fire
.goto 2024,67.34,44.35
.turnin 67111 >>Turn in The Ailing Apprentice
.accept 70858 >>Accept Back into the Action
.goto 2024,67.22,44.41
step
>>Click on Alia Sunsor on the ground
.goto 2024,67.23,44.38
.complete 70858,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alia Sunsor
.goto 2024,67.30,44.34
.turnin 70858 >>Turn in Back into the Action
.accept 70859 >>Accept What the Guardian Beholds
step
>>Kill |cff00ecffEdavix|r
.goto 2024,69.53,43.18
.complete 70859,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alia Sunsor
.goto 2024,67.30,44.34
.turnin 70859 >>Turn in What the Guardian Beholds
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.accept 66709 >>Accept Field Medic 101
step
>>Remove the spear from Old Grimtusk
.goto 2024,59.26,39.73
.complete 66709,1 
step
>>Pick up the wood
.goto 2024,59.20,39.79
.complete 66709,2 
step
>>Place the Campfire
.goto 2024,59.25,39.77
.complete 66709,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.skipgossip 189963,1
.complete 66709,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.turnin 66709 >>Turn in Field Medic 101
.accept 66715 >>Accept The Extraction
step
#completewith TheAzureSpanFrostbiteCausesandSymptoms
>>Kill |cff00ecffGnolls|r and destroy their defenses
.accept 66718 >>Accept Gnolls Must Die (Bonus Objective)
.complete 66718,1 
step
>>Follow the arrow
.goto 2024,58.34,41.83
.complete 66715,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66715 >>Turn in The Extraction
.accept 66703 >>Accept Snowball Effect
step
#completewith next
>>Kill |cff00ecffSnowhide Shamans|r. Loot them for the totems
.goto 2024,58.34,42.60,15,0
.complete 66703,1 
step
>>Kill |cff00ecffSnoll the Icebreaker|r
.goto 2024,57.90,44.82
.complete 66718,2 
step
>>Kill |cff00ecffSnowhide Shamans|r. Loot them for the totems
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
#loop
.line 2024,58.34,42.64,56.89,42.33,57.64,41.53,58.34,42.64,56.89,42.33,57.64,41.53
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.complete 66703,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66703 >>Turn in Snowball Effect
.accept 67050 >>Accept Frostbite: Causes and Symptoms
step
#label TheAzureSpanFrostbiteCausesandSymptoms
>>Place the totems
.goto 2024,58.24,41.95
.complete 67050,1 
step
>>Kill |cff00ecffGnolls|r and destroy their defenses
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,57.70,42.22
.complete 66718,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.complete 67050,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.turnin 67050 >>Turn in Frostbite: Causes and Symptoms
.accept 66730 >>Accept True Survivors
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to Grimtusk's Hideout and talk to Old Grimtusk
.goto 2024,58.79,34.91
.turnin 66730 >>Turn in True Survivors
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.87
.accept 68639 >>Accept Prowling Polar Predators
.accept 68641 >>Accept Mossing the Mark
step
#completewith TheAzureSpanMossingtheMark
>>Kill |cff00ecffInfected Frigidpelts|r
.complete 68639,1 
step
#title Drakmoss Clump 1
>>Pick up the Drakmoss
.goto 2024,63.68,30.66
.complete 68641,1,1 
step
#title Drakmoss Clump 2
>>Pick up the Drakmoss
.goto 2024,63.57,30.96
.complete 68641,1,2 
step
#title Drakmoss Clump 3
>>Pick up the Drakmoss
.goto 2024,63.53,31.18
.complete 68641,1,3 
step
#title Drakmoss Clump 4
>>Pick up the Drakmoss
.goto 2024,63.41,31.34
.complete 68641,1,4 
step
#label TheAzureSpanMossingtheMark
#title Drakmoss Clump 5
>>Pick up the Drakmoss
.goto 2024,63.22,31.35
.complete 68641,1 
step
>>Kill |cff00ecffInfected Frigidpelts|r
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03,25,0
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03
.complete 68639,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.86
.turnin 68639 >>Turn in Prowling Polar Predators
.turnin 68641 >>Turn in Mossing the Mark
step
>>Dragonride to the waypoint location
.goto 2024,65.81,25.33
.complete 65886,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.33
.turnin 65886 >>Turn in To Rhonin's Shield
.accept 65887 >>Accept To the Mountain
.accept 67299 >>Accept Drakes be Gone
step
#completewith next
.goto 2024,65.71,25.56,10,0
.goto 2024,65.85,26.75,10,0
.goto 2024,66.03,25.60,10,0
.vehicle 192872 >>Enter the Arcane Blaster
step
>>Use |T429383:0|tArcane Blast (1) to kill the flying drakes
>>You can use (2) to slow them
.goto 2024,65.71,25.56
.complete 67299,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.32
.turnin 67299 >>Turn in Drakes be Gone
step
#completewith next
+Fly to the Summoned Destroyer using your dragonriding mount
step
.goto 2024,70.12,33.26
.accept 69895 >>Accept Summoned Destroyer (Elite Objective)
.complete 69895,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Khadgar
.turnin 65887 >>Turn in To the Mountain
.accept 65943 >>Accept Primal Offensive
.goto 2024,70.01,35.23
.accept 65944 >>Accept Lava Burst
.accept 66647 >>Accept Elemental Unfocus
.goto 2024,70.02,35.34
step
#sticky
#label TheAzureSpanPrimalOffensive
>>Search for mobs in the area shown on your minimap
.goto 2024,72.44,37.27,0,0
.complete 65943,1 
step
#title Lava Orb 1
.goto 2024,71.23,35.69,30,0
.goto 2024,72.26,37.26
.complete 65944,1,1 
step
>>Kill |cff00ecffRuvin Stonegrinder|r. Loot her for the Elemental Focus
.goto 2024,72.51,38.11,30,0
.goto 2024,72.90,38.71
.complete 66647,1 
step
#title Lava Orb 2
.goto 2024,73.11,37.77
.complete 65944,1,2 
step
#title Lava Orb 3
.goto 2024,73.77,38.31
.complete 65944,1 
step
#requires TheAzureSpanPrimalOffensive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar and Kalecgos
.goto 2024,74.46,37.84
.turnin 66647 >>Turn in Elemental Unfocus
.turnin 65944 >>Turn in Lava Burst
.turnin 65943 >>Turn in Primal Offensive
step
.goto 2024,65.39,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.accept 66553 >>Accept Hollow Up
.accept 66554 >>Accept Aggressive Self-Defence
step
.goto 2024,65.56,16.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tyrnokos Sunstrike
.accept 66622 >>Accept Wayward Tools
step
>>Click on the Wayward Tools (you can do this while mounted)
.target Wayward Tool
.goto 2024,65.96,16.51,25,0
.goto 2024,65.82,17.41,25,0
.goto 2024,65.25,17.23,25,0
.goto 2024,64.82,17.31,25,0
.goto 2024,64.71,16.83,25,0
.complete 66622,1 
step
#completewith TheAzureSpanHollowUp
>>Defeat |cff00ecffFurbolgs|r
.complete 66554,1 
step
#title Clue 1/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.48,13.27
.complete 66553,1,1 
step
#title Clue 2/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.56,12.67
.complete 66553,1,2 
step
#title Clue 3/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.81,12.51
.complete 66553,1,3 
step
#title Clue 4/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.53,12.18
.complete 66553,1,4 
step
#title Clue 5/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.29,12.25
.complete 66553,1,5 
step
#label TheAzureSpanHollowUp
#title Clue 6/6
>>Click on the Electrocuted Winterpelt
.goto 2024,66.11,13.22
.complete 66553,1 
step
>>Defeat |cff00ecffFurbolgs|r
.goto 2024,65.85,12.78,25,0
.goto 2024,66.82,13.47,25,0
.goto 2024,66.96,11.89,25,0
.goto 2024,65.85,12.78
.complete 66554,1 
step
.goto 2024,65.38,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.turnin 66553 >>Turn in Hollow Up
.turnin 66554 >>Turn in Aggressive Self-Defence
.accept 66555 >>Accept Bear With Me
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.goto 2024,65.38,15.95
.skipgossip 189401,1
.complete 66555,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden and Tyrnokos Sunstrike
.turnin 66555 >>Turn in Bear With Me
.goto 2024,65.38,15.95
.turnin 66622 >>Turn in Wayward Tools
.goto 2024,65.57,16.17
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup First Playthrough (Campaign) 60-70
#displayname Chapter 1 - The Waking Shores Campaign
#name 1) The Waking Shores Campaign
#next 2) Ohn'ahran Plains Campaign
step << Horde !Dracthyr
>>This should automatically appear in your quest log
.accept 65435 >>Accept The Dragon Isles Await
step << Horde !Dracthyr
#completewith MasterRiding
.goto 85,51.19,63.09,15,0
.goto 85,50.53,61.63,15 >> Take the elevator up to the upper part of Orgrimmar
.skill riding,225,1
step << Horde !Dracthyr
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>Train Expert and Master Riding
.target Maztha
.skill riding,225,1
step << Horde !Dracthyr
#label MasterRiding
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>Train Master Riding
.target Maztha
step << Horde !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
>>Press "Escape" on your keyboard to skip the cinematic
.goto 84,44.08,37.99
.turnin 65435 >>Turn in The Dragon Isles Await
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
.accept 65437 >>Accept Aspectral Invitation
.complete 65437,1 
.turnin 65437 >>Turn in Aspectral Invitation
.goto 85,44.06,37.97
.skipgossip 190239,1
.target Ebyssian
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleida and Cindrethresh
.accept 65443 >>Accept Expeditionary Coordination
.goto 85,44.19,37.79
.accept 72256 >>Accept The Dark Talons
.goto 85,44.04,38.25
.target Naleidea Rivergleam
.target Scalecommander Cindrethresh
step << Horde
.goto 85,38.59,56.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tacha
.complete 65443,2 
.skipgossip
.target Pathfinder Tacha
step << Horde
.goto 85,57.09,54.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Magor
.complete 65443,1 
.skipgossip
.target Boss Magor
step << Horde
.goto 85,70.36,49.01,10,0
.goto 85,71.44,50.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coralie upstairs in The Wyvern's Tail
.complete 65443,3 
.skipgossip
.target Cataloger Coralie
step << Horde
.goto 85,55.08,89.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kodethi on top of the Wall of Orgrimmar
.complete 72256,1 
.target Kodethi
.skipgossip
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea and Khadgar
>>Press "Escape" on your keyboard to skip the cinematic
.turnin 65443 >>Turn in Expeditionary Coordination
.turnin 72256 >>Turn in The Dark Talons
.goto 1,55.81,12.66
.accept 65439 >>Accept Whispers on the Winds
.complete 65439,1 
.goto 1,55.92,12.61
.timer 3,Khadgar Appearance
.skipgossip 193450,1
.target Naleidea Rivergleam
.target Archmage Khadgar
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian and Naleidea
.turnin -65439 >>Turn in Whispers on the Winds
.turnin -70198 >>Turn in The Call of the Isles
.goto 1,55.85,12.74
.accept 65444 >>Accept To the Dragon Isles!
.goto 1,55.81,12.66
.target Ebyssian
.target Naleidea Rivergleam
step << Horde
#completewith next
+You can see the time to arrival above Skarukaru. If you can't see it, talk to her.
step << Horde
.goto 1,55.96,13.18
>>Wait for the Zeppelin to arrive. Talk to Sharukaru if you want to see how long it'll take to arrive
.complete 65444,1 
.skipgossip
.target Sharukaru
step << Horde
.zoneskip 2022
.isOnQuest 65444
.goto 1,55.99,13.33
.zone 1978 >>Go onto the Zeppelin when it arrives. Wait at the waypoint location
step << Horde
#completewith next
.zone 2022 >>Jump off the zeppelin. You will get ported to the front (if not swim to a ship and click on it). |cffffff00When your loading screen was longer then ~15 seconds then don't jump|r.
step << Horde
#label HordeArrivingInDragonIsles
.goto 2022,80.83,27.80
.complete 65444,2 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam, Scalecommander Cindrethresh and Boss Magor
.turnin 65444 >>Turn in To the Dragon Isles!
.accept 65452 >>Accept Explorers in Peril
.goto 2022,80.62,27.60
.accept 65453 >>Accept Primal Pests
.accept 65451 >>Accept Practice Materials
.goto 2022,80.63,27.63
step << Horde
#completewith WakingShoresExplorersInPeril
>>Kill |cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
#completewith WakingShoresExplorersInPeril
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
.complete 65451,1 
step << Horde
>>Destroy the Protodragon Rib Cage
.goto 2022,79.80,28.20,25,0
.goto 2022,80.37,26.34
.complete 65452,1 
step << Horde
>>Rescue Archivist Spearblossom
*Look above you!
.goto 2022,78.71,24.52
.complete 65452,2 
step << Horde
#label WakingShoresExplorersInPeril
>>Help Lazee hanging on the chain
.goto 2022,77.37,29.77
.complete 65452,3 
step << Horde
#completewith next
>>Kill |cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
.goto 2022,77.95,28.09,10,0
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65451,1 
step << Horde
>>Kill |cff00ecffBig Proto Drakes|r
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65453,1 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam
.goto 2022,76.61,33.60
.turnin 65452 >>Turn in Explorers in Peril
.accept 69910 >>Accept Where is Wrathion?
step << Alliance !Dracthyr
>>This should automatically appear in your quest log
.accept 65436 >>Accept The Dragon Isles Await
step << Alliance !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion in Stormwind
.goto 84,79.81,27.04
.turnin 65436 >>Turn in The Dragon Isles Await
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.accept 66577 >>Accept Aspectral Invitation
.goto 84,79.81,27.04
.skipgossip 189569,1
.complete 66577,1 
.turnin 66577 >>Turn in Aspectral Invitation
.target Wrathion
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel and Toddy Whiskers
.accept 72240 >>Accept The Obsidian Warders
.goto 84,79.95,26.95
.target Scalecommander Azurathel
.accept 66589 >>Accept Expeditionary Coordination
.goto 84,79.73,27.35
.target Toddy Whiskers
step << Alliance
>>Go outside the keep slightly so you can mount up
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin
.goto 84,79.45,26.89,3,0
.goto 84,64.12,37.21
.skipgossip 1
.complete 66589,1 
.target Thaelin Darkanvil
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd
.goto 84,63.36,69.91
.skipgossip
.complete 66589,3 
.target Cataloger Wulferd
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
.goto 84,50.91,67.36
.skipgossip
.complete 72240,1 
.target Dervishian
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Pathfinder Jeb
.goto 84,38.26,45.52
.skipgossip
.complete 66589,2 
.target Pathfinder Jeb
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.goto 84,22.70,55.66
.turnin 66589 >>Turn in Expeditionary Coordination
.turnin 72240 >>Turn in The Obsidian Warders
.target Toddy Whiskers
step << Alliance
.goto 84,22.94,56.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.accept 66596 >>Accept Whispers on the Winds
.skipgossip
.complete 66596,1 
.target Archmage Khadgar
step << Alliance
.goto 84,22.92,56.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66596 >>Turn in Whispers on the Winds
.target Wrathion
step << Alliance
.goto 84,22.73,55.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin -70197 >>Turn in The Call of the Isles
.accept 67700 >>Accept To the Dragon Isles!
.target Toddy Whiskers
step << Alliance
>>Wait for the Arrival of the Ship
.goto 84,22.36,55.98
.complete 67700,1 
step << Alliance
.isOnQuest 67700
.goto 84,20.82,53.83
.zone 1978 >>Go to the front of the ship on the large wood plank
step << Alliance
#completewith next
.zone 2022 >>Jump of the ship. You will get ported to the front (if not swim to a ship and click on it). |cffffff00When your loading screen was longer then ~15 seconds then don't jump|r.
step << Alliance
.goto 2022,82.13,31.88
.complete 67700,2 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers, Thaelin Darkanvil and Scalecommander Azurathel
.turnin 67700 >>Turn in To the Dragon Isles!
.accept 70122 >>Accept Explorers in Peril
.goto 2022,82.13,31.88
.accept 70124 >>Accept Practice Materials
.goto 2022,82.09,31.89
.accept 70123 >>Accept Primal Pests
.goto 2022,82.16,31.86
.target Toddy Whiskers
.target Thaelin Darkanvil
.target Scalecommander Azurathel
step << Alliance
#completewith WakingShoresExplorersInPerilCogcatcher
.goto 2022,82.47,32.10,10,0
.goto 2022,82.91,32.54,10 >>Follow the arrow up the mountain
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>Kill |cff00ecffthe Big Proto-Drakes|r
.complete 70123,1 
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
.complete 70124,1 
step << Alliance
#label WakingShoresExplorersInPerilCogcatcher
>>Rescue Professor Cogcatcher
.goto 2022,83.55,33.59
.complete 70122,1 
.target Professor Cogcatcher
step << Alliance
>>Rescue Archivist Rellid whos in the air
.goto 2022,83.01,36.30
.complete 70122,2 
.target Archivist Rellid
step << Alliance
#label WakingShoresExplorersInPerilAlliance
>>Rescue Spelunker Lockeye
.goto 2022,79.54,35.35
.complete 70122,3 
.target Spelunker Lockeye
step << Alliance
#completewith next
>>Kill |cff00ecffthe Big Proto-Drakes|r
.complete 70123,1 
step << Alliance
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70124,1 
step << Alliance
>>Kill |cff00ecffthe Big Proto-Drakes|r
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70123,1 
step << Alliance
.goto 2022,76.63,33.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin 70122 >>Turn in Explorers in Peril
.accept 70125 >>Accept Where is Wrathion?
.target Toddy Whiskers
step
#completewith point1
+We Accept the quests in this area only during roleplay. Strictly follow the arrow for maximum efficieny
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55636 >>Talk to Sendrax 
.timer 17,Roleplay Duration
.target Sendrax
step << Horde
#completewith WakingShorePractiveMaterialsHorde
>>Complete the other steps
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
#completewith WakingShorePractiveMaterialsAlliance
>>Complete the other steps
.goto 2022,76.58,33.66,0,0
.complete 70125,1 << Alliance 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh and Warlord Breka Grimaxe
.accept 66110 >>Accept Give Peace a Chance
.goto 2022,76.36,33.09
.turnin 65453 >>Turn in Primal Pests
.goto 2022,76.28,33.02
step << Horde
#label WakingShorePractiveMaterialsHorde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Boss Magor
.goto 2022,75.94,33.25
.turnin 65451 >>Turn in Practice Materials
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.goto 2022,75.84,33.49
.accept 66101 >>Accept From Such Great Heights
step << Horde
#label WakingShoreInquireMissingDragonsHorde
>>Wait for the roleplay
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
.goto 2022,76.49,34.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin Darkanvil
.turnin 70124 >>Turn in Practice Materials
.target Thaelin Darkanvil
step << Dracthyr Alliance
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>Accept Without Purpose
.target Haephesta
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 192563,1
.complete 70148,1 
.target Kholmar Sunrunner
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 192558,1
.complete 70148,2 
.target Toninaar
step << Alliance
.goto 2022,76.73,34.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.accept 67053 >>Accept Give Peace a Chance
.target Captain Garrick
step << Alliance
.goto 2022,76.75,34.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel
.turnin 70123 >>Turn in Primal Pests
.target Scalecommander Azurathel
step
#label point1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 70125 >>Turn in Where is Wrathion? << Alliance
.turnin 69910 >>Turn in Where is Wrathion? << Horde
.accept 69911 >>Accept Excuse the Mess
.target Sendrax
step << Dracthyr Horde
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>Accept Without Purpose
.target Haephesta
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 1
.complete 70148,1 
.target Kholmar Sunrunner
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Fastrasz
.goto 2022,76.33,35.62
.skipgossip 193393,2
.complete 69911,1 
.target Ambassador Fastrasz
step
>>Interact with the book
.goto 2022,76.28,35.62
.skipgossip 1
.complete 69911,2 
step
>>Interact with the big stone
.goto 2022,75.61,34.17
.complete 69911,3 
step
>>Interact with the brazier
.goto 2022,78.43,31.80
.complete 69911,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 69911 >>Turn in Excuse the Mess
.accept 69912 >>Accept My First Real Emergency!
.target Sendrax
step
#completewith next
+|cfff78300During the roleplay turn in and complete the specified quests|r.
step
#completewith WakingShoreFromSuchGreatHeights
>>Wait for the roleplay
.complete 69912,1 
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55637 >>Talk to Sendrax
.timer 33,Roleplay Duration
.target Sendrax
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.goto 2022,75.84,33.49
.accept 66101 >>Accept From Such Great Heights
.target Aster Cloudgaze
step
>>Mount the disc
.goto 2022,75.9,33.58
.complete 66101,1 
step
>>Use the first ability (1), then press Escape to cancel the cutscene.
.goto 2022,76.42,33.72
.complete 66101,2 
step
>>Use the second ability (2), then press Escape to cancel the cutscene.
.goto 2022,75.70,33.45
.complete 66101,3 
step
>>Use the third ability (3), then press Escape to cancel the cutscene.
.goto 2022,75.87,33.35
.complete 66101,4 
step
#completewith next
+|cfff78300Leave the vehicle immediately|r
step
#label WakingShoreFromSuchGreatHeights
.goto 2022,75.84,33.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.turnin 66101 >>Turn in From Such Great Heights
.target Aster Cloudgaze
step << Alliance
.goto 2022,76.36,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 67053 >>Turn in Give Peace a Chance
.accept 70135 >>Accept Encroaching Elementals
.target Warlord Breka Grimaxe
step
#completewith next
.goto 2022,76.31,34.33,10 >>Follow the waypoint to trigger the next roleplay (which is proximity based)
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.goto 2022,76.73,34.55
.turnin 66110 >>Turn in Give Peace a Chance
.accept 66111 >>Accept Encroaching Elementals
.target Captain Garrick
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 192558,1
.complete 70148,2 
.target Toninaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.goto 2022,76.35,34.64
.accept 66112 >>Accept Always Be Crafting
.target Grun Ashbeard
step
#completewith WakingShorePrimalEarthenCore
>>Kill mostly the |cff00ecffSmall Fire Elementals|r. The Earth elementals are a lot tougher.
.goto 2022,73.89,33.74,0,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step
#completewith next
.goto 2022,75.52,36.34,15,0
.goto 2022,75.78,37.01,10 >>Enter the cave
step
#label WakingShorePrimalEarthenCore
>>Go into the Cave and kill |cff00ecffBaron Crustcore|r. Loot him for the core
.goto 2022,74.88,39.31
.complete 66112,2 
step
#completewith next
.goto 2022,75.78,37.01,20 >>Leave the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Majordomo Selistra
.turnin 69912 >>Turn in My First Real Emergency!
.goto 2022,76.18,34.50
.accept 69914 >>Accept The Djaradin Have Awoken
.goto 2022,76.22,34.53
.target Wrathion
.target Majordomo Selistra
step
#completewith WakingShorePrimalEarthenCore
>>Wait for the roleplay
.skipgossip 193372,1
.complete 69914,1 
step
#completewith next
.goto 2022,76.22,34.53
.gossipoption 55872 >>Talk to Majordomo Selistra
.timer 50,Roleplay Duration
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.goto 2022,76.41,34.45
.accept 69965 >>Accept Quality Assurance
.target Haephesta
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster
.goto 2022,75.85,33.50
.skipgossip 187257,1
.complete 70148,3 
.target Aster Cloudgaze
step
#completewith WakingShoresQualityAssurance
>>Focus on killing the |cff00ecffSmall Fire Elementals|r
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>Interact with the Note on the Wall
.goto 2022,75.05,33.52
.complete 70148,4 
step
#title Geodes Excavated 1
>>Click on the Volcanic Geode
.goto 2022,74.57,33.51
.complete 69965,1,1 
step
#title Geodes Excavated 2
>>Click on the Volcanic Geode
.goto 2022,73.93,33.23
.complete 69965,1,2 
step
#title Geodes Excavated 3
>>Click on the Volcanic Geode
.goto 2022,73.56,32.21
.complete 69965,1,3 
step
#label WakingShorePrimalMoltenCore
>>Kill |cff00ecffBaron Ashflow|r. Loot him for the core
.goto 2022,72.91,32.97
.complete 66112,1 
step
#title Geodes Excavated 4
>>Click on the Volcanic Geode
.goto 2022,72.88,33.73
.complete 69965,1,4 
step
#title Geodes Excavated 5
>>Click on the Volcanic Geode
.goto 2022,72.94,34.12
.complete 69965,1,5 
step
#label WakingShoresQualityAssurance
#title Geodes Excavated 6
>>Click on the Volcanic Geode
.goto 2022,73.63,33.89
.complete 69965,1 
step << Dracthyr
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip 194289,1
.complete 70148,5 
.target Talon Ethrethi
step
>>Kill mostly the |cff00ecffSmall Fire Elementals|r
.goto 2022,74.65,35.28,10,0
#loop
.line 2022,73.62,33.39,74.65,35.28
.goto 2022,73.62,33.39,25,0
.goto 2022,74.65,35.28,25,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip 194289,1
.complete 70148,5 
.target Talon Ethrethi
step
>>Wait for the roleplay
.goto 2022,76.22,34.53
.complete 69914,1 
step
#requires WakingShoresEncroachingElementals
.goto 2022,76.26,34.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.turnin 69914 >>Turn in The Djaradin Have Awoken
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax then immediately turn in the next Quests
.accept 65760 >>Accept Reporting for Duty
.goto 2022,76.26,34.40
.target Sendrax
step
.goto 2022,76.35,34.64
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.turnin 66112 >>Turn in Always Be Crafting
.target Grun Ashbeard
step
.goto 2022,76.41,34.45
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.turnin 69965 >>Turn in Quality Assurance
.turnin 70148 >>Turn in Without Purpose << Dracthyr
.target Haephesta
step << Alliance
.goto 2022,76.37,33.09
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 70135 >>Turn in Encroaching Elementals
.target Warlord Breka Grimaxe
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
*Immediately go there.
.goto 2022,76.73,34.56
.turnin 66111 >>Turn in Encroaching Elementals
.target Captain Garrick
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.27,34.41
.skipgossip 193363,3
.complete 65760,1 
.target Sendrax
step
>>|cfff78300Follow and stay close to Sendrax or the quest will not complete|r
.goto 2022,75.28,36.20,20,0
.goto 2022,73.20,35.96,20,0
.goto 2022,72.29,36.65,20,0
.goto 2022,71.25,40.67
.complete 65760,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65760 >>Turn in Reporting for Duty
.accept 65990 >>Accept Deliver Whelps From Evil
.accept 65989 >>Accept Invader Djaradin
.target Commander Lethanak
step
#sticky
#label WakingShoreInvaderDjaradin
*Focus on killing |cff00ecffQalashi Scavengers|r. They have the least amount of HP
.goto 2022,70.38,44.91,0,0
.complete 65989,1 
step
>>Save the |cff00ff2eWhimpering Whelpling|r
.goto 2022,71.36,44.65
.complete 65990,1,1 
.target Whimpering Whelping
step
>>Save the |cff00ff2eWhimpering Whelpling|r
.goto 2022,70.97,46.21,10,0
.goto 2022,70.87,46.77,10,0
.goto 2022,71.12,46.98,10,0
.goto 2022,70.97,46.63
.complete 65990,1,2 
.target Whimpering Whelpling
step
>>Save the |cff00ff2eWhimpering Whelpling|r
.goto 2022,69.86,45.3
.complete 65990,1,3 
.target Whimpering Whelpling
step
>>Save the |cff00ff2eWhimpering Whelpling|r
.goto 2022,69.38,43.26
.complete 65990,1 
.target Whimpering Whelpling
step
#requires WakingShoreInvaderDjaradin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65989 >>Turn in Invader Djaradin
.turnin 65990 >>Turn in Deliver Whelps From Evil
.accept 65991 >>Accept Time for a Reckoning
.target Commander Lethanak
step
#completewith WakingShoresKilljoyBlacktalinObsidian
>>Kill Djaradin Enemies around the Camp. You can also kill Dragonhunter Igordan multiple times
.goto 2022,62.76,34.50,0,0
.accept 65994 >>Accept Djaradin Djustice (Bonus Objective)
.complete 65994,1 
step
.itemcount 132516,1
#completewith WakingShoreTimeForReckoning
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
#completewith next
.goto 2022,70.59,38.56,10,0
.goto 2022,70.24,38.79,10 >>Follow the way up the mountain
step
#label WakingShoreTimeForReckoning
>>Climb the tower and wait for Wrathion, talk to him
.goto 2022,68.12,36.87,20,0
.goto 2022,66.59,34.58
.complete 65991,1 
step
.goto 2022,66.36,35.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 65991 >>Turn in Time for a Reckoning
.accept 65993 >>Accept Killjoy
.accept 65992 >>Accept Blacktalon Intel
.target Wrathion
step
.itemcount 109076,1
#completewith WakingShoreDragonHunderIgordan
.cast 126389 >>Use a Goblin Glider Kit
step
.itemcount 109076,<1
#completewith WakingShoreDragonHunderIgordan
.goto 2022,65.65,35.16,20 >>Jump down
step
#label WakingShoreDragonHunderIgordan
.goto 2022,64.26,33.05
.accept 66956 >>Accept Dragonhunter Igordan (Elite Objective)
.complete 66956,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Right
.goto 2022,65.09,29.35
.skipgossip 1
.complete 65992,3 
.target Right
step
#completewith next
>>Kill |cff00ecffMeatgrinder Sotok|r. Loot him for the Qualashi Plans. Click it in your bags
.complete 65993,1 
.collect 193874,1
.accept 65995 >>Accept The Obsidian Citadel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Left
.goto 2022,64.11,30.33,30,0
.goto 2022,63.43,28.87
.skipgossip 1
.complete 65992,2 
.target Left
step
>>Kill |cff00ecffMeatgrinder Sotok|r. Loot him for the Qualashi Plans. Click it in your bags
.goto 2022,62.96,29.43
.complete 65993,1 
.collect 193874,1,65995,1
.accept 65995 >>Accept The Obsidian Citadel
.unitscan Meatgrinder Sotok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia
.goto 2022,64.58,30.57,30,0
.goto 2022,64.41,33.29,30,0
.goto 2022,63.03,33.34
.skipgossip
.complete 65992,1 
.target Talonstalker Kavia
step
#label WakingShoresKilljoyBlacktalinObsidian
>>Climb the stairs and talk to Wrathion
.goto 2022,62.62,32.67,24,0
.goto 2022,62.65,33.17
.turnin 65993 >>Turn in Killjoy
.turnin 65992 >>Turn in Blacktalon Intel
.turnin 65995 >>Turn in The Obsidian Citadel
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,62.76,33.11
.accept 65996 >>Accept Veteran Reinforcements
step
>>Kill Djaradin Enemies around the Camp. You can also kill Dragonhunter Igordan multiple times
.goto 2022,62.17,34.69,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,66.00,36.88,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,62.17,34.69
.accept 65994 >>Accept Djaradin Djustice (Bonus Objective)
.complete 65994,1 
.unitscan Dragonhunter Igordan
step
#requires WakingShoreDjaradinDjustice
#completewith next
+|cfff78300Reminder: You can keybind the 'Active Items'|r
+|cfff78300How to Keybind:|r Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
step
#requires WakingShoreDjaradinDjustice
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*Use a heal spell instead if possible
.use 193917
.goto 2022,60.99,35.63
.complete 65996,1,1 
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*Use a heal spell instead if possible
.use 193917
.goto 2022,61.11,36.77
.complete 65996,1,2 
step
.xp >61,1
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>Accept Fighting Fire with... Water
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*Use a heal spell instead if possible
.use 193917
.goto 2022,59.04,34.84
.complete 65996,1,3 
step
.xp >61,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>Accept Fighting Fire with... Water
.target Caretaker Ventraz
step
.isOnQuest 66998
#label WakingShoreFightingFirewithWater
>>Kill fire enemies inside the cave
.goto 2022,59.30,33.30
.complete 66998,1 
step
.isQuestComplete 66998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.10,34.84
.turnin 66998 >>Turn in Fighting Fire with... Water
.target Caretaker Ventraz
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*Use a heal spell instead if possible
.use 193917
.goto 2022,56.64,34.77
.complete 65996,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Azkra
.goto 2022,54.99,30.76
.turnin 65996 >>Turn in Veteran Reinforcements
.accept 65997 >>Accept Chasing Sendrax
.target Caretaker Azkra
step
.goto 2022,54.99,30.77
.complete 65996,2 
.target Sendrax
step
.itemcount 132516,1
#completewith WakingShoreChasingSendrax
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
#completewith next
+You can skip the next cutscene (Esc -> Yes).
step
#label WakingShoreChasingSendrax
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,55.18,24.95
.skipgossip 187406,1
.complete 65997,1 
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,55.18,24.95
.turnin 65997 >>Turn in Chasing Sendrax
.accept 65999 >>Accept Red in Tooth and Claw
.accept 65998 >>Accept Future of the Flights
.target Sendrax
step
>>Interact with the book
.goto 2022,55.26,24.69
.accept 66000 >>Accept Library of Alexstrasza
step
#sticky
#label WakingShoreRedInToothAndClaw
>>Kill |cff00ecffPrimalists/Revenants/Taraseks|r while doing the other objectives
.goto 2022,56.37,22.32,0,0
.complete 65999,1 
step
#completewith WakingShoreFutureoftheFlight
>>Kill |cff00ecffFirava the Rekindler|r when you see her (patrolling in the area)
.goto 2022,56.97,25.28,0,0
.complete 70648,1 
step
>>Interact with the book
.goto 2022,53.36,22.39
.complete 66000,1,1 
step
>>Interact with the book
.goto 2022,53.47,21.99
.complete 66000,1,2 
step
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.12,22.01
.complete 65998,1 
.complete 65998,2,3 
step
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.71
.complete 65998,2,6 
step
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.89,21.36
.complete 65998,2 
step
>>Interact with the book
*Inside the tower
.goto 2022,54.62,20.36
.complete 66000,1,3 
step
>>Interact with the book
*Inside the tower on the second floor
.goto 2022,55.08,20.77,10,0
.goto 2022,55.04,20.3,5,0
.goto 2022,54.6,20.62
.complete 66000,1,4 
step
#label WakingShoreFutureoftheFlight
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.73
.complete 65998,2 
step
>>Kill |cff00ecffFirava the Rekindler|r when you see her (patrolling in the area)
.goto 2022,56.97,25.28
.accept 70648 >>Accept Firava the Rekindler (Elite Objective)
.complete 70648,1 
step
#requires WakingShoreRedInToothAndClaw
#label WakingShoreDontTurnIn1
#completewith WakingShoreRedInToothAndClawLibraryofAlexstrasza
.goto 2022,56.24,22.14,10 >>|cfff78300DON'T TURN IN THE QUESTS|r until you're at the waypoint location
step
#requires WakingShoreRedInToothAndClaw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65998 >>Turn in Library of Alexstrasza
step
#label WakingShoreRedInToothAndClawLibraryofAlexstrasza
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65999 >>Turn in Red in Tooth and Claw
.turnin 66000 >>Turn in Library of Alexstrasza
.accept 66001 >>Accept A Last Hope
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,56.24,22.06
.skipgossip
.timer 16,Roleplay Duration
.complete 66001,1 
step
>>Wait for the Roleplay
.goto 2022,56.92,21.62
.complete 65998,1 
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes] |cfff78300right before clicking on the egg|r
step
>>Interact with the egg
.goto 2022,56.92,21.61
.complete 66001,2 
step
>>Using any ability will drop the egg
.goto 2022,55.21,26.27,30,0
.goto 2022,54.99,30.77
.complete 66001,3 
.timer 18,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,55.10,31.04
.skipgossip 1
.turnin 66001 >>Turn in A Last Hope
.accept 66114 >>Accept For the Benefit of the Queen
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,55.10,31.03
.skipgossip 1
.timer 67,Ride to the Ruby Lifeshrine
.complete 66114,1 
step
#completewith next
+You can skip the next cinematic.
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstraza
.goto 2022,62.34,73.02
.skipgossip 187290,1
.complete 66114,2 
.target Alexstraza the Life-Binder
step
.goto 2022,62.34,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.turnin 66114 >>Turn in For the Benefit of the Queen
.accept 68795 >>Accept Dragonriding
.accept 66115 >>Accept The Mandate of the Red
.target Alexstraza the Life-Binder
step
#completewith WakingShoreMandateOfRed1
.goto 2022,61.90,73.82
.home >>Set your Hearthstone to Ruby Lifeshrine
.target Lifecaller Tzadrak
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes]. |cfff78300Activate RP walk next to the NPCs to make it easier to talk to them|r
step
#label WakingShoreMandateOfRed1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xius
.goto 2022,60.70,74.06
.skipgossip 1
.complete 66115,1 
.target Xius
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akxall
.goto 2022,59.36,72.41
.skipgossip 1
.complete 66115,2 
.target Akxali
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,59.92,69.98,40,0
.goto 2022,58.37,67.12
.skipgossip 193287,1
.timer 26,Roleplay Duration
.complete 68795,1 
.target Lord Andestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.accept 70132 >>Accept Stay a While
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |cffffff00[ExtraActionButton]|r and talk to Veritistrasz again
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,1 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,2 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.turnin 70132 >>Turn in Stay a While
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.turnin 68795 >>Turn in Dragonriding
.accept 65118 >>Accept How to Glide with Your Dragon
.target Lord Andestrasz
step
#completewith WakingShoreHowtoUseMomentumwithYourDragon
+You can use |T134376:0|t[Bronze Timepiece] when you fail the quest
.use 188139
step
>>Use the |T4622499:0:0|t[Renewed Proto-Drake] to learn your first Dragonriding mount and mount up.
.use 194034
.goto 2022,57.66,66.89
.complete 65118,1 
step
>>Walk forward and glide through the yellow rings.
.goto 2022,57.42,60.00
.complete 65118,2 
.complete 65118,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.10
.turnin 65118 >>Turn in How To Dive with Your Dragon
.target Celormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.88
.accept 65120 >>Accept How to Use Momentum with Your Dragon
.target Lord Andestrasz
step
>>Walk forward, aim downwards and follow the yellow rings.
.goto 2022,57.47,59.09
.complete 65120,1 
.complete 65120,2 
.complete 65120,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.09
.turnin 65120 >>Turn in How to Use Momentum with Your Dragon
.target Celormu
step
.goto 2022,57.66,66.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 77345 >>Accept The Need For Higher Velocities
.target Lord Andestrasz
step
>>Use your |cRXP_WARN_Dragonriding Mount|r
.complete 77345,1 
step
>>Follow the yellow rings. Use |T4640490:0|t[Surge Forward] after each one. Don't overuse it.
.goto 2022,56.97,62.83
.complete 77345,2 
step
>>Land on the rock
.goto 2022,57.37,59.01
.complete 77345,3 
step
.goto 2022,57.47,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 77345 >>Turn in The Need For Higher Velocities
.target Celormu
step
.goto 2022,57.66,66.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 68796 >>Accept The Skytop Observatory
.target Lord Andestrasz
step
.goto 2022,57.65,66.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.accept 65133 >>Accept The Skytop Observatory
.target Lord Andestrasz
step
>>Walk forward, aim downwards and follow the yellow rings.
.goto 2022,57.47,59.09
.complete 65133,1 
.complete 65133,2 
.complete 65133,3 
step
#label WakingShoreHowtoUseMomentumwithYourDragon
.goto 2022,57.48,59.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.turnin 65133 >>Turn in How to Use Momentum with Your Dragon
.target Celorumu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.accept 68796 >>Accept The Skytop Observatory
.target Lord Andestrasz
step
#completewith next
.goto 2022,57.81,68.11
.fp >>Get the Ruby Lifeshrine Flight Path
.target Vaknai
step
#sticky
.goto 2022,57.93,68.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 67564 >>Accept Artisan's Courier
.target Haephesta
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.72,66.72
.skipgossip 1
.timer 12,Roleplay Duration
.complete 68796,1 
.target Celormu
step
#completewith next
+You can open your spellbook, click on the Dragonriding skill and hover over the Dragonriding Basics skill if you want to read up on Dragonriding.
step
>>Make sure to fly through every ring
.complete 68796,2 
step
.goto 2022,75.18,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68796 >>Turn in The Skytop Observatory
.accept 68797 >>Accept A New Set of Horns
.target Lord Andestrasz
step
#title Dragon Glyph: Skytop Observatory Rostrum
.goto 2022,74.33,57.56
.achievement 16575,2 >>Pick up the Dragon Glyph in the air
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glensera
.goto 2022,74.11,57.93
.complete 68797,1 
.target Glensera
step
>>Interact with the Rostrum of Transformation (the pentagon on the ground). Cancel it immediately
.goto 2022,74.03,58.16
.complete 68797,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,75.18,54.97
.turnin 68797 >>Turn in A New Set of Horns
.accept 68798 >>Accept Dragon Glyphs and You
.target Lord Andestrasz
step
>>Use your Dragonriding mount and fly through the glyph in the air
.goto 2022,74.35,57.76
.complete 68798,1 
step
#completewith WakingShoreDragpnGlyphandYou
.gossipoption 107095
.gossipoption 107099 >>Talk to Lithragosa to enable your passenger seat
.goto 2022,74.57,56.97
.target Lithragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lithragosa and learn the first skill named 'Drake and Rider Training'
.goto 2022,74.57,56.97
.skipgossip 2
.complete 68798,2 
.complete 68798,3 
.complete 68798,4 
.target Lithragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu. |cffffff00Hold one vigor charge so you can get back faster|r
.goto 2022,73.25,52.06
.complete 68798,5 
.target Celormu
step
#label WakingShoreDragpnGlyphandYou
.goto 2022,75.17,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68798 >>Turn in Dragon Glyphs and You
.accept 68799 >>Accept Return to the Ruby Lifeshrine
.target Lord Andestrasz
step
>>Mount Relastrasza
.goto 2022,75.01,55.58
.complete 68799,1 
.target Relastrasza
step
#title Dragon Glyph: Skytop Observatory Tower
.goto 2022,75.24,57.09
.achievement 16575,1 >>Pick up the Dragon Glyph above you above the tower
step
#completewith next
.hs >>Hearth to Ruby Lifeshrine
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2022,62.34,73.02
.turnin 68799 >>Turn in Return to the Ruby Lifeshrine
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mother Elion
.goto 2022,61.6,68.71
.skipgossip 1
.complete 66115,3 
.target Mother Elion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana
.goto 2022,62.78,70.43
.skipgossip 189260,1
.complete 66115,4 
.target Zahkrana
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana again
.goto 2022,62.78,70.43
.turnin 66115 >>Turn in The Mandate of the Red
.target Zahkrana
step
.goto 2022,62.18,70.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Amella
.accept 70061 >>Accept Training Wings
.target Amella
step
#completewith next
+Glide with your Dragonriding mount to the Ruby Whelpling
step
>>Mount the Ruby Whelpling
.goto 2022,61.09,71.46
.skipgossip 1
.complete 70061,1 
.target Ruby Whelpling
step
#completewith next
+Spam |T135808:0|tBurning Bark (1) to kill enemies, it is aimed where you are looking. Use Speed of Flight (2) to speed up.
step
>>Kill the Enemies in the Area
.complete 70061,4 
.complete 70061,3 
.complete 70061,2 
step
#completewith next
+|cfff78300Leave the vehicle|r
step
#completewith next
+Fly to Majordomo Selistra using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 70061 >>Turn in Training Wings
.goto 2022,62.32,72.90
.accept 66931 >>Accept Who Brought the Ruckus?
.goto 2022,62.34,73.02
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thomas Bright
.goto 2022,60.23,72.18
.turnin 67564 >>Turn in Artisan's Courier
.target Thomas Bright
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>Follow the arrow
.goto 2022,59.46,72.72
.complete 66931,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,59.49,72.61
.turnin 66931 >>Turn in Who Brought the Ruckus?
.accept 66116 >>Accept The Primary Threat
.target Majordomo Selistra
step
>>Glide down to Commander Lethanak in the Frost Area below
.goto 2022,59.44,75.87
.complete 66116,1 
.complete 66116,2 
.target Commander Lethanak
step
.goto 2022,59.41,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.turnin 66116 >>Turn in The Primary Threat
.accept 66118 >>Accept Basalt Assault
.accept 66117 >>Accept Clear the Battlefield (Bonus Objective)
.target Commander Lethanak
step
#completewith WakingShoreCutOfftheHead
>>Kill the Enemies in the Area while doing the other objectives. |cfff78300Don't try to finish it now. You can finish it later|r
.complete 66117,1 
step
.pve
>>Kill the Enraged Cliffs around the waypoints
.goto 2022,60.93,77.56,25,0
.goto 2022,61.27,79.08,25,0
.goto 2022,60.73,78.72,0,0
.complete 66118,1,1 
.target Enraged Cliff
step
.pve
#completewith next
+Mount up and fly to the waypoint location
step
.pve
#label WakingShoreTerillodtheDevout
>>Kill |cff00ecffTerillod|r. Be careful not to get knocked off
.goto 2022,60.64,83.01
.accept 70751 >>Accept Terillod the Devout (Elite Objective)
.complete 70751,1 
step
>>Kill the Big Stone Elemental
.goto 2022,61.27,79.10,25,0
.goto 2022,59.71,78.62,25,0
.goto 2022,57.82,76.81,25,0
.goto 2022,60.65,78.43
.complete 66118,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak and Majordomo Selistra
.turnin 66118 >>Turn in Basalt Assault
.accept 66122 >>Accept Proto-Fight
.goto 2022,59.41,75.88
.accept 66121 >>Accept Egg Evac
.goto 2022,59.49,76.16
.target Commander Lethanak
.target Majordomo Selistra
step
#completewith WakingShoreEggEvac
>>Use the |T135133:0:0|t[Ruby Spear] on Galestrike Proto-Dragons to weaken them
.use 192436
.complete 66122,2 
step
>>Right-Click the Bronze Egg
.goto 2022,56.13,81.29
.complete 66121,1 
step
>>Right-Click the Azure Egg
.goto 2022,57.32,80.64,65,0
.goto 2022,57.35,83.28
.complete 66121,2 
step
>>Right-Click the Emerald Egg
.goto 2022,55.32,83.31
.complete 66121,3 
step
#completewith next
>>Kill Klozicc
.goto 2022,54.77,82.22,15,0
.accept 66960 >>Accept Klozicc the Ascended (Elite Objective)
.complete 66960,1 
step
#label WakingShoreEggEvac
>>Right-Click the Ruby Egg
.goto 2022,54.99,80.95
.complete 66121,4 
step
>>Kill Klozicc
.goto 2022,54.77,82.22
.accept 66960 >>Accept Klozicc the Ascended (Elite Objective)
.complete 66960,1 
step
>>Use the |T135133:0:0|t[Ruby Spear] on Galestrike Proto-Dragons above you to weaken them
.use 192436
.goto 2022,55.03,82.08,35,0
.goto 2022,56.37,80.47,35,0
#loop
.line 2022,55.03,82.08,56.37,55.15,82.96,57.24,82.82,80.47,55.03,82.08,56.37,80.47,55.03,82.08
.goto 2022,55.03,82.08,35,0
.goto 2022,56.37,55.15,35,0
.goto 2022,82.96,57.24,35,0
.goto 2022,82.82,80.47,35,0
.goto 2022,55.03,82.08,35,0
.goto 2022,56.37,80.47,35,0
.goto 2022,55.03,82.08,35,0
.complete 66122,2 
step
.goto 2022,53.68,80.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.turnin 66122 >>Turn in Proto-Fight
.turnin 66121 >>Turn in Egg Evac
.accept 66123 >>Accept Cut Off the Head
.target Majordomo Selistra
step
>>Use the |T135133:0:0|t[Ruby Spear] on Jadzigeth to weaken him
.use 192436
.goto 2022,53.68,83.04
.complete 66123,1 
.unitscan Jadzigeth
step
#label WakingShoreCutOfftheHead
.goto 2022,53.67,80.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalkto Majordomo Selistra
.turnin 66123 >>Turn in Cut Off the Head
.accept 66124 >>Accept Exeunt, Triumphant
.target Majordomo Selistra
step
>>Kill the Enemies in the Area while doing the other objectives
#loop
.line 2022,55.03,82.08,56.37,55.15,82.96,57.24,82.82,80.47,55.03,82.08,56.37,80.47,55.03,82.08
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,55.15,20,0
.goto 2022,82.96,57.24,20,0
.goto 2022,82.82,80.47,20,0
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,80.47,20,0
.goto 2022,55.03,82.08,20,0
.complete 66117,1 
step
#requires WakingShoreCleartheBattlefield
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,46.14,78.54
.skipgossip 187278,1
.complete 66124,1 
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 66124 >>Turn in Exeunt, Triumphant
.goto 2022,45.45,73.04,30,0
.goto 2022,46.14,78.51
.accept 66079 >>Accept Wrathion Awaits
.goto 2022,46.09,78.29
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>|cfff78300ONLY WHEN YOU HAVE NO VIGOR CHARGES LEFT|r use |T1405809:0|t[Gunshoes]
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Scalecommander Emberthal
.turnin 66079 >>Turn in Wrathion Awaits
.goto 2022,42.47,66.84
.accept 72241 >>Accept Lessons from Our Past
.goto 2022,42.47,66.78
.target Wrathion
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Scalecommander. You can skip the cutscene.
.goto 2022,42.47,66.79
.skipgossip 192795,1
.complete 72241,1 
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal and Wrathion
.turnin 72241 >>Turn in Lessons from Our Past
.accept 66048 >>Accept Best Plans and Intentions
.goto 2022,42.47,66.78
.accept 66078 >>Accept Sharp Practice
.goto 2022,42.47,66.84
.target Scaleecommander Emberthal
.target Wrathion
step
#completewith next
.gossipoption 55311 >>Talk to Fao the Relentless then interact with the plan in the tent
.goto 2022,42.41,66.18
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fao the Relentless then interact with the plan in the tent
.goto 2022,42.41,66.06
.skipgossip 1
.complete 66048,1 
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Forgemaster Bazentus
.goto 2022,42.82,66.86
.skipgossip
.complete 66048,4 
.target Forgemaster Bazentus
step
#completewith WakingShoresBestPlansandIntentionsEdres
.gossipoption 55307 >>Talk to Archivist Edress. Do other steps while she talks.
.goto 2022,43.76,67.28
.complete 66048,2 
.target Archivist Edres
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them. You can aggro multiple at once.
.goto 2022,42.56,67.51,20,0
.skipgossip
.complete 66078,1 
step
#label WakingShoresBestPlansandIntentionsEdres
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia then Click on the Binoculars
.goto 2022,42.30,69.29
.complete 66048,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them
.goto 2022,42.56,67.51
.skipgossip
.complete 66078,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the NPCs at the waypoint locations
.complete 66048,1 
.goto 2022,42.41,66.06
.complete 66048,4 
.goto 2022,42.82,66.86
.complete 66048,2 
.goto 2022,43.76,67.28
.complete 66048,3 
.goto 2022,42.23,69.33
.skipgossip
.target Talonstalker Kavia
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66048 >>Turn in Best Plans and Intentions
.turnin 66078 >>Turn in Sharp Practice
.timer 24,Roleplay Duration
.target Wrathion
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Do-Yeon
.goto 2022,42.26,66.25
.fp >>Get the Obsidian Bulwark Flight Path
.target Do-Yeon Shadowrider
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tong the Fixer, repair and sell if you need
.goto 2022,43.12,66.56
.home >>Set your Hearthstone to Obsidian Bulwark
.target Tong the Fixer
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.accept 65957 >>Accept No Time For Heroes
.accept 65956 >>Accept Talon Strike
step
#title Dragon Glyph: Obsidian Bulwark
.goto 2022,40.96,71.89
.achievement 16575,6 >>Pick up the Dragon Glyph at the top of the mountain
step
.pve
.xp 62.7,1
.goto 2022,37.45,71.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.accept 66003 >>Accept Rings To Bind Them
.target Earthcaller Yevaa
step
.pve
.isOnQuest 66003
>>Kill |cff00ecffBlazing Manifestations|r. Loot then for the binding rings
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
#loop
.line 2022,,37.99,71.58,38.15,73.04,37.31,73.68,,36.75,72.98,37.12,71.84,38.05,69.42
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.31,73.68,22,0
.goto 2022,36.75,72.98,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
.complete 66003,1 
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.turnin -66003 >>Turn in Rings To Bind Them
.target Earthcaller Yevaa
step
.pve
.isQuestTurnedIn 66003
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.accept 66369 >>Accept The Earthen Ward
.target Earthcaller Yevaa
step
.pve
.isOnQuest 66369
>>Click on the Earth Warden
.goto 2022,37.54,71.23
.complete 66369,1 
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.turnin -66369 >>Turn in The Earthen Ward
.target Earthcaller Yevaa
step
.pve
.isQuestTurnedIn 66369
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.accept 66368 >>Accept Island In A Storm
.target Earthcaller Yevaa
step
.pve
.isOnQuest 66368
#completewith next
>>Kill |cff00ecffBlazing Manifestations|r
.complete 66368,1 
step
.pve
.isOnQuest 66368
.goto 2022,37.62,75.10
.complete 66368,2 
.unitscan Melter Igneous
step
.pve
.isOnQuest 66368
>>Kill |cff00ecffBlazing Manifestations|r
.goto 2022,37.98,76.02,20,0
.goto 2022,39.58,74.41,20,0
.goto 2022,39.14,73.14,20,0
.goto 2022,38.01,71.79,20,0
.goto 2022,36.55,71.79,20,0
.goto 2022,36.95,73.62,20,0
#loop
.line 2022,37.98,76.02,39.58,74.41,39.14,73.14,38.01,71.79,36.55,71.79,36.95,73.62
.goto 2022,37.98,76.02,25,0
.goto 2022,39.58,74.41,25,0
.goto 2022,39.14,73.14,25,0
.goto 2022,38.01,71.79,25,0
.goto 2022,36.55,71.79,25,0
.goto 2022,36.95,73.62,25,0
.complete 66368,1 
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.78
.turnin -66368 >>Turn in Island In A Storm
.target Earthcaller Yevaa
step
#completewith WakingShoreNoTimeForTalonStrike
+Use the |cffffff00[ExtraActionButton|r for extra damage
step
#completewith WakingShoreNoTimeForHeroes
>>|cfff78300Avoid killing elites|r. Focus on destroying stuff and killing non-elites
.goto 2022,36.43,69.68,20,0
.goto 2022,34.86,61.66,0,0
.complete 65956,1 
step
>>Climb the tower. Kill |cff00ecffPiercer Gigra|r
.goto 2022,35.53,68.47
.complete 65957,1 
.unitscan Piercer Gigra
step
>>Kill |cff00ecffOlphis the Molten|r
.goto 2022,34.79,66.86
.complete 65957,3 
.unitscan Olphis the Molten
step
#title Progress the Bonus Objective
#completewith next
.goto 2022,37.36,63.09,30,0
.goto 2022,36.75,60.09,50 >>Kill everything around you
step
#label WakingShoreNoTimeForHeroes
>>Climb the tower. Kill |cff00ecffModak Flamespit|r
.goto 2022,35.67,60.73
.complete 65957,2 
.unitscan Modak Flamespit
step
#completewith next
+Look for more mobs in the marked area on your map
step
>>|cfff78300Avoid killing elites|r. Focus on destroying stuff and killing non-elites
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.complete 65956,1 
step
#label WakingShoreNoTimeForTalonStrike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,33.99,61.29
.turnin 65957 >>Turn in No Time For Heroes
.turnin 65956 >>Turn in Talon Strike
.accept 65939 >>Accept The Courage of One's Convictions
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,33.99,61.29
.skipgossip 1
.complete 65939,1 
.target Wrathion
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>Follow the arrow starting from the front of the bridge.
.goto 2022,33.54,61.86,50,0
.goto 2022,30.51,60.88
.complete 65939,2 
step
#completewith WakingShoreAShatteredPast
>>Kill |cff00ecffQalashi Forces|r on the side. Don't try to finish this quest
.complete 65939,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,29.14,58.82
.accept 66044 >>Accept Taking the Walls
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,29.14,58.82
.skipgossip 186933,1
.complete 66044,1 
.target Wrathion
step
#completewith WakingShoreTakingTheWalls
+Use your dragonriding mount to fly to the next cannon (or look out for Wrathion)
step
>>Destroy the cannon
.goto 2022,26.81,59.99
.complete 66044,2 
step
>>Destroy the cannon
.goto 2022,29.51,60.99
.complete 66044,3 
step
#label WakingShoreTakingTheWalls
>>Destroy the cannon
.goto 2022,27.79,56.66
.complete 66044,4 
step
>>Patrolling around the area
.goto 2022,26.94,57.07
.complete 66044,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,26.42,58.75
.turnin 66044 >>Turn in Taking the Walls
.accept 66049 >>Accept Obsidian Oathstone
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,27.30,62.58
.skipgossip 187045,1
.complete 66049,1 
.target Wrathion
step
>>Interact with the Oathstone
.goto 2022,27.62,63.34
.complete 66049,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Forgemaster Bazentus after a short roleplay
.turnin 66049 >>Turn in Obsidian Oathstone
.goto 2022,27.30,62.59
.accept 66055 >>Accept A Shattered Past
.goto 2022,27.26,62.80
.target Wrathion
.target Forgemaster Bazentus
step
#label test3
.goto 2022,27.06,60.88
.complete 66055,1 
step
#label WakingShoreAShatteredPast
>>Follow the arrow and pick up the objects on the ground
.goto 2022,27.11,60.51,15,0
.goto 2022,26.02,59.29,15,0
.goto 2022,25.60,59.49,15,0
.goto 2022,23.46,59.87,15,0
.goto 2022,22.76,59.88,15,0
.goto 2022,22.90,58.85,15,0
.goto 2022,23.21,58.94,15,0
.goto 2022,24.28,57.92,15,0
.goto 2022,24.96,58.16,15,0
.goto 2022,25.16,57.05,15,0
.goto 2022,25.01,55.77
.complete 66055,2 
step
#completewith WakingShoreTheCourageofOnesConvictionTurnin
.goto 2022,27.15,60.86,10 >>Leave the vault
step
>>Kill Qalashi Forces on the side
.goto 2022,27.58,61.18,20,0
.goto 2022,27.93,59.07,20,0
.goto 2022,29.38,58.42,20,0
.goto 2022,30.09,60.41
.complete 65939,3 
step
#label WakingShoreTheCourageofOnesConvictionTurnin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Forgemaster Bazentus
.turnin 65939 >>Turn in The Courage of One's Convictions
.goto 2022,27.30,62.58
.turnin 66055 >>Turn in A Shattered Past
.accept 66056 >>Accept Forging A New Future
.goto 2022,27.25,62.81
step
>>Interact with the Forge
.goto 2022,24.62,60.91
.complete 66056,1 
step
>>Pick up coal of the ground or kill |cff00ecffAnimated Cindershards|r and loot them for their coal
.goto 2022,24.48,61.51,10,0
.goto 2022,24.90,61.86,15,0
.goto 2022,25.05,61.43,10,0
.goto 2022,24.79,60.29,10,0
.goto 2022,24.63,59.69,10,0
.goto 2022,25.43,60.57,20,0
.goto 2022,24.48,61.51,10,0
.goto 2022,24.90,61.86,15,0
.goto 2022,24.87,60.80
.complete 66056,2 
step
.goto 2022,24.68,61.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Forgemaster Bazentus
.turnin 66056 >>Turn in Forging A New Future
.accept 66354 >>Accept The Spark
.target Forgemaster Bazentus
step
>>Interact with the Fragments on the forge
.goto 2022,24.60,60.97
.complete 66354,1 
.timer 17,Roleplay Duration
step
>>Wait for the roleplay
.goto 2022,24.60,60.97
.complete 66354,2 
step
>>Pick up the Fragments on the forge
.goto 2022,24.60,60.97
.complete 66354,3 
step
.goto 2022,24.68,61.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Forgemaster Bazentus
.turnin 66354 >>Turn in The Spark
.accept 66057 >>Accept Restoring the Faith
.target Forgemaster Bazentus
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,27.30,62.59
.skipgossip
.complete 66057,1 
.target Wrathion
step
#completewith WakingShoreRestoringFaith
+|cfff78300Don't use movement abilities after landing as your quest progress may become bugged|r.
step
>>Mount Wrathion
.goto 2022,27.09,62.22
.complete 66057,2 
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
#label WakingShoreRestoringFaith
>>Follow the arrow
.goto 2022,24.47,55.66
.complete 66057,3 
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Sabellian
.turnin 66057 >>Turn in Restoring the Faith
.accept 66780 >>Accept Claimant to the Throne
.goto 2022,24.42,55.49
.accept 66779 >>Accept Heir Apparent
.goto 2022,24.25,55.87
.target Wrathion
.target Sabellian
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>Use Gunshoes. Activate RP-Walk next to the NPCs to talk to them
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bazentus
.goto 2022,24.38,57.85
.skipgossip 1
.complete 66779,2 
.target Bazentus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Baskilan
.goto 2022,24.32,58.91
.skipgossip 1
.complete 66779,1 
.target Baskilan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archivist Edress twice
.goto 2022,25.11,56.23
.skipgossip 193456,1
.complete 66779,3 
.complete 66780,3 
.target Archivist Edress
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia (patrolling a little)
.goto 2022,26.40,54.61
.skipgossip 1
.complete 66780,1 
.target Talonstalker Kavia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk either to Left or Right
.goto 2022,25.02,55.19
.skipgossip 1
.complete 66780,2 
.target Left
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Sabellian
.turnin 66780 >>Turn in Claimant to the Throne
.goto 2022,24.42,55.47
.turnin 66779 >>Turn in Heir Apparent
.accept 65793 >>Accept Black Wagon Flight
.goto 2022,24.24,55.87
.target Wrathion
.target Sabellian
step
#completewith next
.goto 2022,24.24,55.87
.cooldown item,6948,>0,1
.hs >>Hearth to Obsidian Bulwark
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sabellian
.goto 2022,43.84,66.44
.skipgossip 1
.complete 65793,1 
.complete 65793,2 
.target Sabellion
step
>>This is an escort quest so |cfff78300stay near the wagon|r and kill the spawning mobs as quickly as possible
.goto 2022,47.97,67.18,20,0
.goto 2022,48.64,65.56,20,0
.goto 2022,49.86,65.60,20,0
.goto 2022,52.35,66.82
.complete 65793,3 
step
#completewith next
.vehicle 187292 >>|cfff78300If you don't want to fly up with your dragonriding mount use the ferry at the bottom (marked on your map with the step number)|r
.goto 2022,56.87,66.52,0
step
.goto 2022,57.96,67.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sabellian
.turnin 65793 >>Turn in Black Wagon Flight
.accept 66785 >>Accept The Last Eggtender
.target Sabellian
step
.goto 2022,61.60,68.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mother Elion
.turnin 66785 >>Turn in The Last Eggtender
.accept 66788 >>Accept Egg-cited for the Future
.target Mother Elion
step
>>Interact with the leaves and weeds
*|cfff78300After interacting with the weeds move away to pull them out|r
.goto 2022,61.51,68.68
.complete 66788,1 
.complete 66788,2 
step
>>Interact with the Ruby Shrineguard
.goto 2022,61.44,69.03
.complete 66788,3 
step
.goto 2022,61.60,68.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mother Elion
.turnin 66788 >>Turn in Egg-cited for the Future
.accept 65791 >>Accept Life-Binder on Duty
.target Mother Elion
step
.goto 2022,62.34,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.turnin 65791 >>Turn in Life-Binder on Duty
.accept 65794 >>Accept A Charge of Care
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstraza
.goto 2022,62.34,73.02
.skipgossip 1
.complete 65794,1 
.target Alexstrasza the Life-Binder
step
.goto 2022,61.57,68.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.turnin 65794 >>Turn in A Charge of Care
.accept 65795 >>Accept Next Steppes
.target Alexstrasza the Life-Binder
step
#title Dragon Glyph: Flashfrost Enclave
.goto 2022,58.13,78.64
.achievement 16575,3 >>Pick up the Dragon Glyph above you above the cave in the air
step
#title Dragon Glyph: Rubyscale Outpost
.goto 2022,48.82,86.73
.achievement 16576,11 >>Pick up the Dragon Glyph in the air
step
.goto 2022,48.28,88.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Taurasza
.turnin 65795 >>Turn in Next Steppes
.accept 65779 >>Accept Into the Plains
.target Ambassador Taurasza
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup Threads of Fate 60-70
#displayname Chapter 1 - The Waking Shores ToF
#name A1The Waking Shores ToF
#next B2Ohn'ahran Plains ToF
step << Horde !Dracthyr
>>This should automatically appear in your quest log
.accept 65435 >>Accept The Dragon Isles Await
step << Horde !Dracthyr
#completewith MasterRiding
.goto 85,51.19,63.09,15,0
.goto 85,50.53,61.63,15 >> Take the elevator up to the upper part of Orgrimmar
.skill riding,225,1
step << Horde !Dracthyr
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>Train Expert and Master Riding
.target Maztha
.skill riding,225,1
step << Horde !Dracthyr
#label MasterRiding
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>Train Master Riding
.target Maztha
step << Horde !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
>>Press "Escape" on your keyboard to skip the cinematic
.goto 84,44.08,37.99
.turnin 65435 >>Turn in The Dragon Isles Await
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
.accept 65437 >>Accept Aspectral Invitation
.complete 65437,1 
.turnin 65437 >>Turn in Aspectral Invitation
.goto 85,44.06,37.97
.skipgossip 190239,1
.target Ebyssian
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleida and Cindrethresh
.accept 65443 >>Accept Expeditionary Coordination
.goto 85,44.19,37.79
.accept 72256 >>Accept The Dark Talons
.goto 85,44.04,38.25
.target Naleidea Rivergleam
.target Scalecommander Cindrethresh
step << Horde
.goto 85,38.59,56.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tacha
.complete 65443,2 
.skipgossip
.target Pathfinder Tacha
step << Horde
.goto 85,57.09,54.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Magor
.complete 65443,1 
.skipgossip
.target Boss Magor
step << Horde
.goto 85,70.36,49.01,10,0
.goto 85,71.44,50.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coralie upstairs in The Wyvern's Tail
.complete 65443,3 
.skipgossip
.target Cataloger Coralie
step << Horde
.goto 85,55.08,89.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kodethi on top of the Wall of Orgrimmar
.complete 72256,1 
.target Kodethi
.skipgossip
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea and Khadgar
>>Press "Escape" on your keyboard to skip the cinematic
.turnin 65443 >>Turn in Expeditionary Coordination
.turnin 72256 >>Turn in The Dark Talons
.goto 1,55.81,12.66
.accept 65439 >>Accept Whispers on the Winds
.complete 65439,1 
.goto 1,55.92,12.61
.timer 3,Khadgar Appearance
.skipgossip 193450,1
.target Naleidea Rivergleam
.target Archmage Khadgar
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian and Naleidea
.turnin -65439 >>Turn in Whispers on the Winds
.turnin -70198 >>Turn in The Call of the Isles
.goto 1,55.85,12.74
.accept 65444 >>Accept To the Dragon Isles!
.goto 1,55.81,12.66
.target Ebyssian
.target Naleidea Rivergleam
step << Horde
#completewith next
+You can see the time to arrival above Skarukaru. If you can't see it, talk to her.
step << Horde
.goto 1,55.96,13.18
>>Wait for the Zeppelin to arrive. Talk to Sharukaru if you want to see how long it'll take to arrive
.complete 65444,1 
step << Horde
#completewith HordeArrivingInDragonIsles
+|cffffff00General Threads of Fate Notes:|r
*- Make sure to spend all your |cff00ecffDragon Glyphs|r in the Dragonriding tree (minimap button)
*- Loot |cff00ecffDjaradin Caches|r, |cff00ecffDecay Covered Chests|r, or |cff00ecffClan Chests|r (they reward xp)
*- Dragonriding races give experience the first time you do them but they're only worth doing in combination with a world quest
*- Most of the good world quests are included in the guide
step << Horde
.zoneskip 2022
.isOnQuest 65444
.goto 1,55.99,13.33
.zone 1978 >>Go onto the Zeppelin when it arrives. Wait at the waypoint location
step << Horde
#completewith next
.zone 2022 >>Jump of the zeppelin. You will get ported to the front (if not swim to a ship and click on it). |cffffff00When your loading screen was longer then ~15 seconds then don't jump|r.
step << Horde
#label HordeArrivingInDragonIsles
.goto 2022,80.83,27.80
.complete 65444,2 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam, Scalecommander Cindrethresh and Boss Magor
.turnin 65444 >>Turn in To the Dragon Isles!
.accept 65452 >>Accept Explorers in Peril
.goto 2022,80.62,27.60
.accept 65453 >>Accept Primal Pests
.accept 65451 >>Accept Practice Materials
.goto 2022,80.63,27.63
step << Horde
#completewith WakingShoresExplorersInPeril
>>Kill |cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
#completewith WakingShoresExplorersInPeril
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
.complete 65451,1 
step << Horde
>>Destroy the Protodragon Rib Cage
.goto 2022,79.80,28.20,25,0
.goto 2022,80.37,26.34
.complete 65452,1 
step << Horde
>>Rescue Archivist Spearblossom
*Look above you!
.goto 2022,78.71,24.52
.complete 65452,2 
step << Horde
.accept 66076 >>Accept Ancient Hornswog (Elite Objective)
.goto 2022,78.17,23.22
.complete 66076,1 
.goto 2022,77.29,22.04
step << Horde
#label WakingShoresExplorersInPeril
>>Help Lazee hanging on the chain
.goto 2022,77.37,29.77
.complete 65452,3 
step << Horde
#completewith next
>>Kill |cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
.goto 2022,77.95,28.09,10,0
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65451,1 
step << Horde
>>Kill |cff00ecffBig Proto Drakes|r
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65453,1 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam
.goto 2022,76.61,33.60
.turnin 65452 >>Turn in Explorers in Peril
.accept 69910 >>Accept Where is Wrathion?
step << Alliance !Dracthyr
>>This should automatically appear in your quest log
.accept 65436 >>Accept The Dragon Isles Await
step << Alliance !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion in Stormwind
.goto 84,79.81,27.04
.turnin 65436 >>Turn in The Dragon Isles Await
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.accept 66577 >>Accept Aspectral Invitation
.goto 84,79.81,27.04
.skipgossip 189569,1
.complete 66577,1 
.turnin 66577 >>Turn in Aspectral Invitation
.target Wrathion
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel and Toddy Whiskers
.accept 72240 >>Accept The Obsidian Warders
.goto 84,79.95,26.95
.target Scalecommander Azurathel
.accept 66589 >>Accept Expeditionary Coordination
.goto 84,79.73,27.35
.target Toddy Whiskers
step << Alliance
>>Go outside the keep slightly so you can mount up
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin
.goto 84,79.45,26.89,3,0
.goto 84,64.12,37.21
.skipgossip 1
.complete 66589,1 
.target Thaelin Darkanvil
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd
.goto 84,63.36,69.91
.skipgossip
.complete 66589,3 
.target Cataloger Wulferd
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
.goto 84,50.91,67.36
.skipgossip
.complete 72240,1 
.target Dervishian
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Pathfinder Jeb
.goto 84,38.26,45.52
.skipgossip
.complete 66589,2 
.target Pathfinder Jeb
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.goto 84,22.70,55.66
.turnin 66589 >>Turn in Expeditionary Coordination
.turnin 72240 >>Turn in The Obsidian Warders
.target Toddy Whiskers
step << Alliance
.goto 84,22.94,56.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.accept 66596 >>Accept Whispers on the Winds
.skipgossip
.complete 66596,1 
.target Archmage Khadgar
step << Alliance
.goto 84,22.92,56.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66596 >>Turn in Whispers on the Winds
.target Wrathion
step << Alliance
>>Wait for the Arrival of the Ship
.goto 84,22.36,55.98
.complete 67700,1 
step << Alliance
.goto 84,22.73,55.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin -70197 >>Turn in The Call of the Isles
.accept 67700 >>Accept To the Dragon Isles!
.target Toddy Whiskers
step << Alliance
#completewith AllianceArrivingDragonIsles
+|cffffff00General Threads of Fate Notes:|r
*- Make sure to spend all your |cff00ecffDragon Glyphs|r in the Dragonriding tree (minimap button)
*- Loot |cff00ecffDjaradin Caches|r, |cff00ecffDecay Covered Chests|r, or |cff00ecffClan Chests|r (they reward xp)
*- Dragonriding races give experience the first time you do them but only do them in combination with a world quest
*- Most of the good world quests are included in the guide
step << Alliance
.isOnQuest 67700
.goto 84,20.82,53.83
.zone 1978 >>Go to the front of the ship on the large wood plank
step << Alliance
#completewith next
.zone 2022 >>Jump of the ship. You will get ported to the front (if not swim to a ship and click on it). |cffffff00When your loading screen was longer then ~15 seconds then don't jump|r.
step << Alliance
#label AllianceArrivingDragonIsles
.goto 2022,82.13,31.88
.complete 67700,2 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers, Thaelin Darkanvil and Scalecommander Azurathel
.turnin 67700 >>Turn in To the Dragon Isles!
.accept 70122 >>Accept Explorers in Peril
.goto 2022,82.13,31.88
.accept 70124 >>Accept Practice Materials
.goto 2022,82.09,31.89
.accept 70123 >>Accept Primal Pests
.goto 2022,82.16,31.86
.target Toddy Whiskers
.target Thaelin Darkanvil
.target Scalecommander Azurathel
step << Alliance
#completewith WakingShoresExplorersInPerilCogcatcher
.goto 2022,82.47,32.10,10,0
.goto 2022,82.91,32.54,10 >>Follow the arrow up the mountain
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>Kill |cff00ecffthe Big Proto-Drakes|r
.complete 70123,1 
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
.complete 70124,1 
step << Alliance
#label WakingShoresExplorersInPerilCogcatcher
>>Rescue Professor Cogcatcher
.goto 2022,83.55,33.59
.complete 70122,1 
.target Professor Cogcatcher
step << Alliance
>>Rescue Archivist Rellid whos in the air
.goto 2022,83.01,36.30
.complete 70122,2 
.target Archivist Rellid
step << Alliance
>>Go inside the Cave over the Bridge. Kill |cff00ecffPrimal Scythid Queen|r
.goto 2022,81.17,37.88
.complete 66074,1 
.unitscan Primal Scythid Queen
step << Alliance
#completewith next
.goto 2022,81.88,36.88,20 >>Leave the cave
step << Alliance
#label WakingShoresExplorersInPerilAlliance
>>Rescue Spelunker Lockeye
.goto 2022,79.54,35.35
.complete 70122,3 
.target Spelunker Lockeye
step << Alliance
#completewith next
>>Kill |cff00ecffthe Big Proto-Drakes|r
.complete 70123,1 
step << Alliance
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70124,1 
step << Alliance
>>Kill |cff00ecffthe Big Proto-Drakes|r
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70123,1 
step << Alliance
.goto 2022,76.63,33.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin 70122 >>Turn in Explorers in Peril
.accept 70125 >>Accept Where is Wrathion?
.target Toddy Whiskers
step
#completewith point1
+We Accept the quests in this area only during roleplay. Strictly follow the arrow for maximum efficieny
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55636 >>Talk to Sendrax 
.timer 17,Roleplay Duration
.target Sendrax
step << Horde
#completewith WakingShorePractiveMaterialsHorde
>>Complete the other steps
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
#completewith WakingShorePractiveMaterialsAlliance
>>Complete the other steps
.goto 2022,76.58,33.66,0,0
.complete 70125,1 << Alliance 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh and Warlord Breka Grimaxe
.accept 66110 >>Accept Give Peace a Chance
.goto 2022,76.36,33.09
.turnin 65453 >>Turn in Primal Pests
.goto 2022,76.28,33.02
step << Horde
#label WakingShorePractiveMaterialsHorde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Boss Magor
.goto 2022,75.94,33.25
.turnin 65451 >>Turn in Practice Materials
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.goto 2022,75.84,33.49
.accept 66101 >>Accept From Such Great Heights
step << Horde
#label WakingShoreInquireMissingDragonsHorde
>>Wait for the roleplay
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
.goto 2022,76.51,34.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kerazal
.daily 70750,72375,72374,72068,72373 >>Accept Aiding the Accord
step << Alliance
.goto 2022,76.49,34.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin Darkanvil
.turnin 70124 >>Turn in Practice Materials
.target Thaelin Darkanvil
step << Dracthyr Alliance
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>Accept Without Purpose
.target Haephesta
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 1
.complete 70148,1 
.target Kholmar Sunrunner
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 1
.complete 70148,2 
.target Toninaar
step << Alliance
.goto 2022,76.73,34.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.accept 67053 >>Accept Give Peace a Chance
.target Captain Garrick
step << Alliance
.goto 2022,76.75,34.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel
.turnin 70123 >>Turn in Primal Pests
.target Scalecommander Azurathel
step
#label point1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 70125 >>Turn in Where is Wrathion? << Alliance
.turnin 69910 >>Turn in Where is Wrathion? << Horde
.accept 72293 >>Accept Adventuring in the Dragon Isles
.target Sendrax
step
>>Click on the scouting map and accept the Waking Shores quest
.goto 2022,76.51,34.24
.accept 72266 >>Accept The Waking Shores
.complete 72293,1 
step << Horde
.goto 2022,76.51,34.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kerazal
.daily 70750,72375,72374,72068,72373 >>Accept Aiding the Accord
step
>>Click on the quest in your quest log under your minimap (reload if you can't turn it in)
.goto 2022,76.58,33.66
.turnin 72293 >>Turn in Adventuring in the Dragon Isles
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 72266 >>Turn in The Waking Shores
.accept 69911 >>Accept Excuse the Mess
step << Dracthyr Horde
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>Accept Without Purpose
.target Haephesta
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 1
.complete 70148,1 
.target Kholmar Sunrunner
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Fastrasz
.goto 2022,76.33,35.62
.skipgossip 193393,2
.complete 69911,1 
.target Ambassador Fastrasz
step
>>Interact with the book
.goto 2022,76.28,35.62
.skipgossip 1
.complete 69911,2 
step
>>Interact with the big stone
.goto 2022,75.61,34.17
.complete 69911,3 
step
>>Interact with the brazier
.goto 2022,78.43,31.80
.complete 69911,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 69911 >>Turn in Excuse the Mess
.accept 69912 >>Accept My First Real Emergency!
.target Sendrax
step
#completewith next
+|cfff78300During the roleplay turn in and complete the specified quests|r.
step
#completewith WakingShoreFromSuchGreatHeights
>>Wait for the roleplay
.complete 69912,1 
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55637 >>Talk to Sendrax
.timer 33,Roleplay Duration
.target Sendrax
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.goto 2022,75.84,33.49
.accept 66101 >>Accept From Such Great Heights
.target Aster Cloudgaze
step
>>Mount the disc
.goto 2022,75.9,33.58
.complete 66101,1 
step
>>Use the first ability (1), then press Escape to cancel the cutscene.
.goto 2022,76.42,33.72
.complete 66101,2 
step
>>Use the second ability (2), then press Escape to cancel the cutscene.
.goto 2022,75.70,33.45
.complete 66101,3 
step
>>Use the third ability (3), then press Escape to cancel the cutscene.
.goto 2022,75.87,33.35
.complete 66101,4 
step
#completewith next
+|cfff78300Leave the vehicle immediately|r
step
#label WakingShoreFromSuchGreatHeights
.goto 2022,75.84,33.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.turnin 66101 >>Turn in From Such Great Heights
.target Aster Cloudgaze
step << Alliance
.goto 2022,76.36,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 67053 >>Turn in Give Peace a Chance
.accept 70135 >>Accept Encroaching Elementals
.target Warlord Breka Grimaxe
step
#completewith next
.goto 2022,76.31,34.33,10 >>Follow the waypoint to trigger the next roleplay (which is proximity based)
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.goto 2022,76.73,34.55
.turnin 66110 >>Turn in Give Peace a Chance
.accept 66111 >>Accept Encroaching Elementals
.target Captain Garrick
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 1
.complete 70148,2 
.target Toninaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.goto 2022,76.35,34.64
.accept 66112 >>Accept Always Be Crafting
.target Grun Ashbeard
step
#completewith WakingShorePrimalEarthenCore
>>Kill mostly the |cff00ecffSmall Fire Elementals|r. The Earth elementals are a lot tougher.
.goto 2022,73.89,33.74,0,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step
#title Dragon Glyph: Wingrest Embassy
.goto 2022,74.91,37.44
.achievement 16575,5 >>Pick up the Dragon Glyph above the small tower
step
#completewith next
.goto 2022,75.52,36.34,15,0
.goto 2022,75.78,37.01,10 >>Enter the cave
step
#label WakingShorePrimalEarthenCore
>>Go into the Cave and kill |cff00ecffBaron Crustcore|r. Loot him for the core
.goto 2022,74.88,39.31
.complete 66112,2 
step
#completewith next
.goto 2022,75.78,37.01,20 >>Leave the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Majordomo Selistra
.turnin 69912 >>Turn in My First Real Emergency!
.goto 2022,76.18,34.50
.accept 69914 >>Accept The Djaradin Have Awoken
.goto 2022,76.22,34.53
.target Wrathion
.target Majordomo Selistra
step
#completewith WakingShorePrimalEarthenCore
>>Wait for the roleplay
.skipgossip 193372,1
.complete 69914,1 
step
#completewith next
.goto 2022,76.22,34.53
.gossipoption 55872 >>Talk to Majordomo Selistra
.timer 50,Roleplay Duration
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.goto 2022,76.41,34.45
.accept 69965 >>Accept Quality Assurance
.target Haephesta
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster
.goto 2022,75.85,33.50
.skipgossip 1
.complete 70148,3 
.target Aster Cloudgaze
step
#completewith WakingShoresQualityAssurance
>>Focus on killing the |cff00ecffSmall Fire Elementals|r
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>Interact with the Note on the Wall
.goto 2022,75.05,33.52
.complete 70148,4 
step
#title Geodes Excavated 1
>>Click on the Volcanic Geode
.goto 2022,74.57,33.51
.complete 69965,1,1 
step
#title Geodes Excavated 2
>>Click on the Volcanic Geode
.goto 2022,73.93,33.23
.complete 69965,1,2 
step
#title Geodes Excavated 3
>>Click on the Volcanic Geode
.goto 2022,73.56,32.21
.complete 69965,1,3 
step
#label WakingShorePrimalMoltenCore
>>Kill |cff00ecffBaron Ashflow|r. Loot him for the core
.goto 2022,72.91,32.97
.complete 66112,1 
step
#title Geodes Excavated 4
>>Click on the Volcanic Geode
.goto 2022,72.88,33.73
.complete 69965,1,4 
step
#title Geodes Excavated 5
>>Click on the Volcanic Geode
.goto 2022,72.94,34.12
.complete 69965,1,5 
step
#label WakingShoresQualityAssurance
#title Geodes Excavated 6
>>Click on the Volcanic Geode
.goto 2022,73.63,33.89
.complete 69965,1 
step << Dracthyr
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip
.complete 70148,5 
.target Talon Ethrethi
step
>>Kill mostly the |cff00ecffSmall Fire Elementals|r
.goto 2022,74.65,35.28,10,0
#loop
.line 2022,73.62,33.39,74.65,35.28
.goto 2022,73.62,33.39,25,0
.goto 2022,74.65,35.28,25,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip
.complete 70148,5 
.target Talon Ethrethi
step
>>Wait for the roleplay
.goto 2022,76.22,34.53
.complete 69914,1 
step
#requires WakingShoresEncroachingElementals
.goto 2022,76.26,34.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.turnin 69914 >>Turn in The Djaradin Have Awoken
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax then immediately turn in the next Quests
.accept 65760 >>Accept Reporting for Duty
.goto 2022,76.26,34.40
.target Sendrax
step
.goto 2022,76.35,34.64
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.turnin 66112 >>Turn in Always Be Crafting
.target Grun Ashbeard
step
.goto 2022,76.41,34.45
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.turnin 69965 >>Turn in Quality Assurance
.turnin 70148 >>Turn in Without Purpose << Dracthyr
.target Haephesta
step << Alliance
.goto 2022,76.37,33.09
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 70135 >>Turn in Encroaching Elementals
.target Warlord Breka Grimaxe
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
*Immediately go there.
.goto 2022,76.73,34.56
.turnin 66111 >>Turn in Encroaching Elementals
.target Captain Garrick
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.27,34.41
.skipgossip 193363,3
.complete 65760,1 
.target Sendrax
step
>>|cfff78300Follow and stay close to Sendrax|r
.goto 2022,75.28,36.20,20,0
.goto 2022,73.20,35.96,20,0
.goto 2022,72.29,36.65,20,0
.goto 2022,71.25,40.67
.complete 65760,2 
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65760 >>Turn in Reporting for Duty
.accept 65990 >>Accept Deliver Whelps From Evil
.accept 65989 >>Accept Invader Djaradin
.target Commander Lethanak
step
#sticky
#label WakingShoreInvaderDjaradin
*Focus on killing |cff00ecffQalashi Scavengers|r. They have the least amount of HP
.goto 2022,70.38,44.91,0,0
.complete 65989,1 
step
>>Save the |cff00ff2eWhimpering Whelpling|r
.goto 2022,71.36,44.65
.complete 65990,1,1 
step
>>Save the |cff00ff2eWhimpering Whelpling|r
.goto 2022,70.97,46.21,10,0
.goto 2022,70.87,46.77,10,0
.goto 2022,71.12,46.98,10,0
.goto 2022,70.97,46.63
.complete 65990,1,2 
step
>>Save the |cff00ff2eWhimpering Whelpling|r
.goto 2022,69.86,45.3
.complete 65990,1,3 
step
>>Save the |cff00ff2eWhimpering Whelpling|r
.goto 2022,69.38,43.26
.complete 65990,1 
step
#requires WakingShoreInvaderDjaradin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65989 >>Turn in Invader Djaradin
.turnin 65990 >>Turn in Deliver Whelps From Evil
.accept 65991 >>Accept Time for a Reckoning
.target Commander Lethanak
step
#completewith WakingShoresKilljoyBlacktalinObsidian
>>Kill Djaradin Enemies around the Camp. You can also kill Dragonhunter Igordan multiple times
.goto 2022,62.76,34.50,0,0
.accept 65994 >>Accept Djaradin Djustice (Bonus Objective)
.complete 65994,1 
.unitscan Dragonhunter Igordan
step
.itemcount 132516,1
#completewith WakingShoreTimeForReckoning
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
#label WakingShoreTimeForReckoning
>>Climb the tower and wait for Wrathion. Talk to him
.goto 2022,68.12,36.87,20,0
.goto 2022,66.59,34.58
.complete 65991,1 
.target Wrathion
step
.goto 2022,66.36,35.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 65991 >>Turn in Time for a Reckoning
.accept 65993 >>Accept Killjoy
.accept 65992 >>Accept Blacktalon Intel
.target Wrathion
step
#label WakingShoreDragonHunderIgordan
>>Kill |cff00ecffDragonhunter Igordan|r. If he's not up than kill some mobs around you until he respawns
.goto 2022,64.26,33.05
.accept 66956 >>Accept Dragonhunter Igordan (Elite Objective)
.complete 66956,1 
.unitscan Dragonhunter Igordan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Right
.goto 2022,65.09,29.35
.skipgossip 1
.complete 65992,3 
step
#completewith next
>>Kill |cff00ecffMeatgrinder Sotok|r. Loot him for the Qualashi Plans. Click it in your bags
.complete 65993,1 
.collect 193874,1
.accept 65995 >>Accept The Obsidian Citadel
.unitscan Meatgrinder Sotok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Left
.goto 2022,64.11,30.33,30,0
.goto 2022,63.43,28.87
.skipgossip 1
.complete 65992,2 
.target Left
step
>>Kill |cff00ecffMeatgrinder Sotok|r. Loot him for the Qualashi Plans. Click it in your bags
.goto 2022,62.96,29.43
.complete 65993,1 
.collect 193874,1,65995,1
.accept 65995 >>Accept The Obsidian Citadel
.unitscan Meatgrinder Sotok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia
.goto 2022,64.58,30.57,30,0
.goto 2022,64.41,33.29,30,0
.goto 2022,63.03,33.34
.skipgossip
.complete 65992,1 
.target Talonstalker Kavia
step
#label WakingShoresKilljoyBlacktalinObsidian
>>Climb the stairs and talk to Wrathion
.goto 2022,62.62,32.67,24,0
.goto 2022,62.65,33.17
.turnin 65993 >>Turn in Killjoy
.turnin 65992 >>Turn in Blacktalon Intel
.turnin 65995 >>Turn in The Obsidian Citadel
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,62.76,33.11
.accept 65996 >>Accept Veteran Reinforcements
.target Majordomo Selistra
step
>>Kill Djaradin Enemies around the Camp. You can also kill Dragonhunter Igordan multiple times
.goto 2022,62.17,34.69,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,66.00,36.88,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,62.17,34.69
.accept 65994 >>Accept Djaradin Djustice (Bonus Objective)
.complete 65994,1 
.unitscan Dragonhunter Igordan
step
#completewith next
+|cfff78300Reminder: You can keybind the 'Active Items'|r
+|cfff78300How to Keybind:|r Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*Use a heal spell instead if possible
.use 193917
.goto 2022,60.99,35.63
.complete 65996,1,1 
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*|cffffff00Use a heal spell instead if possible|r
.use 193917
.goto 2022,61.11,36.77
.complete 65996,1,2 
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>Accept Fighting Fire with... Water
.target Caretaker Ventraz
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*Use a heal spell instead if possible
.use 193917
.goto 2022,59.04,34.84
.complete 65996,1,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>Accept Fighting Fire with... Water
.target Caretaker Ventraz
step
#label WakingShoreFightingFirewithWater
>>Kill fire enemies inside the cave
.goto 2022,59.30,33.30
.complete 66998,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.10,34.84
.turnin 66998 >>Turn in Fighting Fire with... Water
.target Caretaker Ventraz
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*Use a heal spell instead if possible
.use 193917
.goto 2022,56.64,34.77
.complete 65996,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Azkra
.goto 2022,54.99,30.76
.turnin 65996 >>Turn in Veteran Reinforcements
.accept 65997 >>Accept Chasing Sendrax
.target Caretaker Azkra
step
.goto 2022,54.99,30.77
.complete 65996,2 
step
.itemcount 132516,1
#completewith WakingShoreChasingSendrax
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
#completewith next
+You can skip the next cutscene (Esc -> Yes).
step
#label WakingShoreChasingSendrax
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,55.18,24.95
.skipgossip 187406,1
.complete 65997,1 
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,55.18,24.95
.turnin 65997 >>Turn in Chasing Sendrax
.accept 65999 >>Accept Red in Tooth and Claw
.accept 65998 >>Accept Future of the Flights
.target Sendrax
step
>>Interact with the book
.goto 2022,55.26,24.69
.accept 66000 >>Accept Library of Alexstrasza
step
#sticky
#label WakingShoreRedInToothAndClaw
>>Kill |cff00ecffPrimalists/Revenants/Taraseks|r while doing the other objectives
.goto 2022,56.37,22.32,0,0
.complete 65999,1 
step
#completewith WakingShoreFutureoftheFlight
>>Kill |cff00ecffFirava the Rekindler|r when you see her (patrolling in the area)
.goto 2022,56.97,25.28,0,0
.complete 70648,1 
.unitscan Firava the Rekindler
step
>>Interact with the book
.goto 2022,53.36,22.39
.complete 66000,1,1 
step
>>Interact with the book
.goto 2022,53.47,21.99
.complete 66000,1,2 
step
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.12,22.01
.complete 65998,1 
.complete 65998,2,3 
step
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.71
.complete 65998,2,6 
step
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.89,21.36
.complete 65998,2 
step
>>Interact with the book |cffffff00inside the building|r
.goto 2022,54.62,20.36
.complete 66000,1,3 
step
>>Interact with the book |cffffff00inside the building on the second floor|r
.goto 2022,55.08,20.77,10,0
.goto 2022,55.04,20.3,5,0
.goto 2022,54.6,20.62
.complete 66000,1,4 
step
#label WakingShoreFutureoftheFlight
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.73
.complete 65998,2 
step
.isWorldQuestAvailable 2022,69931
>>Fly through the supplies inside the rings
.goto 2022,52.16,20.52
.complete 69931,1 
step
>>Kill |cff00ecffFirava the Rekindler|r when you see her (patrolling in the area)
.goto 2022,56.97,25.28
.accept 70648 >>Accept Firava the Rekindler (Elite Objective)
.complete 70648,1 
.unitscan Firava the Rekindler
step
#requires WakingShoreRedInToothAndClaw
#label WakingShoreDontTurnIn1
#completewith WakingShoreRedInToothAndClawLibraryofAlexstrasza
.goto 2022,56.24,22.14,10 >>|cfff78300DON'T TURN IN THE QUESTS|r until you're at the waypoint location
step
#requires WakingShoreRedInToothAndClaw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65998 >>Turn in Library of Alexstrasza
.target Sendrax
step
#label WakingShoreRedInToothAndClawLibraryofAlexstrasza
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65999 >>Turn in Red in Tooth and Claw
.turnin 66000 >>Turn in Library of Alexstrasza
.accept 66001 >>Accept A Last Hope
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,56.24,22.06
.skipgossip
.timer 16,Roleplay Duration
.complete 66001,1 
step
>>Wait for the Roleplay
.goto 2022,56.92,21.62
.complete 65998,1 
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes] |cfff78300right before clicking on the egg|r
step
>>Interact with the egg
.goto 2022,56.92,21.61
.complete 66001,2 
step
>>Using any ability will drop the egg
.goto 2022,55.21,26.27,30,0
.goto 2022,54.99,30.77
.complete 66001,3 
.timer 18,Roleplay Duration
step
.goto 2022,54.42,30.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Caretaker Zefren
.accept 70179 >>Accept A Two for One Deal
.target Apprentice Caretaker Zefren
step
>>Kill the |cff00ecffEarth Elementals|r in the area. Loot them for the materials
.goto 2022,52.79,31.06,20,0
.goto 2022,51.71,31.55,20,0
.goto 2022,50.42,30.99,20,0
.goto 2022,52.79,31.06
.complete 70179,1 
step
.goto 2022,54.44,30.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Caretaker Zefren
.turnin 70179 >>Turn in A Two for One Deal
.target Apprentice Caretaker Zefren
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,55.10,31.04
.skipgossip 1
.turnin 66001 >>Turn in A Last Hope
.accept 66114 >>Accept For the Benefit of the Queen
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,55.10,31.03
.skipgossip 1
.timer 67,Ride to the Ruby Lifeshrine
.complete 66114,1 
.target Majordomo Selistra
step
#completewith next
+You can skip the next cinematic.
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstraza
.goto 2022,62.34,73.02
.skipgossip 187290,1
.complete 66114,2 
step
.goto 2022,62.34,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.turnin 66114 >>Turn in For the Benefit of the Queen
.accept 68795 >>Accept Dragonriding
.accept 66115 >>Accept The Mandate of the Red
.target Alexstrasza the Life-Binder
step
#completewith WakingShoreMandateOfRed1
.goto 2022,61.90,73.82
.home >>Set your Hearthstone to Ruby Lifeshrine
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes]. |cfff78300Activate RP walk next to the NPCs to make it easier to talk to them|r
step
#label WakingShoreMandateOfRed1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xius
.goto 2022,60.70,74.06
.skipgossip 1
.complete 66115,1 
.target Xius
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akxall
.goto 2022,59.36,72.41
.skipgossip 1
.complete 66115,2 
.target Akxall
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,58.37,67.12
.skipgossip 193287,1
.timer 26,Roleplay Duration
.complete 68795,1 
.target Lord Andestrasz
step
#completewith next
.goto 2022,57.81,68.11
.fp >>Get the Ruby Lifeshrine Flight Path
step
.goto 2022,57.93,68.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 67564 >>Accept Artisan's Courier
.target Haephesta
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thomas Bright
.goto 2022,60.23,72.18
.turnin 67564 >>Turn in Artisan's Courier
.accept 67100 >>Accept A Gift for Miguel
.skipgossip 192574,1
.target Thomas Bright
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thomas Bright again
.goto 2022,60.23,72.18
.skipgossip 192574,1
.complete 67100,1 
.target Thomas Bright
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.turnin 68795 >>Turn in Dragonriding
.accept 65118 >>Accept How to Glide with Your Dragon
.target Lord Andestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cfff78300Ignore the quest for now|r. Fly down and talk to Kolgar Flameguard
.goto 2022,57.12,66.20,25,0
.goto 2022,58.67,67.78
.accept 70239 >>Accept Untold Regrets
.target Kolgar Flameguard
step
.isOnQuest 70239
.use 188134
.cast 361475 >>Use the Bronze Timepiece
step
#completewith WakingShoreHowtoUseMomentumwithYourDragon
+You can use |T134376:0|t[Bronze Timepiece] when you fail the quest
.use 188139
step
>>Use the |T4622499:0:0|t[Renewed Proto-Drake] to learn your first Dragonriding mount and mount up.
.use 194034
.goto 2022,57.66,66.89
.complete 65118,1 
step
>>Walk forward and glide through the yellow rings with your dragonriding mount.
.goto 2022,57.42,60.00
.complete 65118,2 
.complete 65118,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.10
.turnin 65118 >>Turn in How To Dive with Your Dragon
.target Celormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.88
.accept 65120 >>Accept How to Use Momentum with Your Dragon
.target Lord Andestrasz
step
>>Walk forward, aim downwards and follow the yellow rings.
.goto 2022,57.47,59.09
.complete 65120,1 
.complete 65120,2 
.complete 65120,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.09
.turnin 65120 >>Turn in How to Use Momentum with Your Dragon
.target Celormu
step
.goto 2022,57.65,66.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.accept 65133 >>Accept How to Use Momentum with Your Dragon
.target Lord Andestrasz
step
.goto 2022,57.36,65.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bathoras
.turnin 70239 >>Turn in Untold Regrets
.skipgossip 194805,1
.target Bathoras
step
.isQuestTurnedIn 70239
.use 188169
.cast 361748 >>Use the Bronze Timepiece
step
>>Walk forward, aim downwards and follow the yellow rings
.goto 2022,57.47,59.09
.complete 65133,1 
.complete 65133,2 
.complete 65133,3 
step
#label WakingShoreHowtoUseMomentumwithYourDragon
.goto 2022,57.48,59.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.turnin 65133 >>Turn in How to Use Momentum with Your Dragon
.target Celormu
step
.goto 2022,57.66,66.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 77345 >>Accept The Need For Higher Velocities
.target Lord Andestrasz
step
>>Use your |cRXP_WARN_Dragonriding Mount|r
.complete 77345,1 
step
>>Follow the yellow rings. Use |T4640490:0|t[Surge Forward] after each one. Don't overuse it.
.goto 2022,56.97,62.83
.complete 77345,2 
step
>>Land on the rock
.goto 2022,57.37,59.01
.complete 77345,3 
step
.goto 2022,57.47,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 77345 >>Turn in The Need For Higher Velocities
.target Celormu
step
.goto 2022,57.66,66.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 68796 >>Accept The Skytop Observatory
.target Lord Andestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.accept 68796 >>Accept The Skytop Observatory
.target Lord Andestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.accept 70132 >>Accept Stay a While
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |cffffff00[ExtraActionButton]|r and talk to Veritistrasz again
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,1 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,2 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.turnin 70132 >>Turn in Stay a While
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.72,66.72
.skipgossip 1
.timer 12,Roleplay Duration
.complete 68796,1 
.target Celormu
step
#completewith next
+You can open your spellbook and click on the Dragonriding skill and hover over the Dragonriding Basics skill if you want to read up on Dragonriding.
step
>>Make sure to fly through every ring
.complete 68796,2 
step
.goto 2022,75.18,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68796 >>Turn in The Skytop Observatory
.accept 68797 >>Accept A New Set of Horns
.target Lord Andestrasz
step
#title Dragon Glyph: Skytop Observatory Rostrum
.goto 2022,74.33,57.56
.achievement 16575,2 >>Pick up the Dragon Glyph in the air
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glensera
.goto 2022,74.11,57.93
.complete 68797,1 
.target Glensera
step
>>Interact with the Rostrum of Transformation (the pentagon on the ground). Cancel it immediately
.goto 2022,74.03,58.16
.complete 68797,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,75.18,54.97
.turnin 68797 >>Turn in A New Set of Horns
.accept 68798 >>Accept Dragon Glyphs and You
.target Lord Andestrasz
step
>>Use your Dragonriding mount and fly through the glyph in the air
.goto 2022,74.35,57.76
.complete 68798,1 
step
#completewith WakingShoreDragpnGlyphandYou
.gossipoption 107095
.gossipoption 107099 >>Talk to Lithragosa to enable your passenger seat
.goto 2022,74.57,56.97
.target Lithragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lithragosa and learn the first skill named 'Drake and Rider Training'
.goto 2022,74.57,56.97
.skipgossip 2
.complete 68798,2 
.complete 68798,3 
.complete 68798,4 
.target Lithragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,73.25,52.06
.complete 68798,5 
.target Celormu
step
#label WakingShoreDragpnGlyphandYou
.goto 2022,75.17,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68798 >>Turn in Dragon Glyphs and You
.accept 68799 >>Accept Return to the Ruby Lifeshrine
.target Lord Andestrasz
step
>>Mount Relastrasza
.goto 2022,75.01,55.58
.complete 68799,1 
.target Relastrasza
step
#title Dragon Glyph: Skytop Observatory Tower
.goto 2022,75.24,57.09
.achievement 16575,1 >>Pick up the Dragon Glyph above you above the tower
step
#completewith next
+Follow the arrow with your dragonriding mount. Aim down
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.06,58.13
.accept 66435 >>Accept Site Salvage
.accept 66436 >>Accept Unearthed Troublemakers
.target Elementalist Taiyang
step
#completewith WakingShoreAKeyElement
.isWorldQuestAvailable 2022,67113
>>Pick up the Dragon Artifacts on the ground and kill |cff00ecffEarth Elementals|r
.goto 2022,66.06,58.13,0,0
.complete 67113,1 
.complete 67113,2 
step
#completewith WakingShoreAKeyElement
>>Kill |cff00ecffEarth Elementals|r
.goto 2022,66.06,58.13,0,0
.complete 66436,1 
step
#completewith next
>>Kill |cff00ecffEarth Elementals|r. Loot Orb of Primal Stone. Click it in your bags
.collect 191904,1,66437,1
.accept 66437 >>Accept A Key Element
step
#title Spam talk to the explorer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cfff78300Spam talk to a Beleaguered Explorer|r
.goto 2022,67.16,58.32,10,0
.goto 2022,67.53,57.97,10,0
.goto 2022,67.87,57.90,10,0
.goto 2022,67.81,57.37,10,0
.goto 2022,67.60,56.51
.skipgossip
.complete 66435,1 
step
#label WakingShoreAKeyElement
>>Kill |cff00ecffEarth Elementals|r. Loot Orb of Primal Stone. Click it in your bags
.collect 191904,1,66437,1
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.accept 66437 >>Accept A Key Element
step
>>Kill |cff00ecffEarth Elementals|r
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.goto 2022,67.89,54.73,20,0
.goto 2022,66.06,58.13
.complete 66436,1 
step
.isWorldQuestAvailable 2022,67113
>>Pick up the Dragon Artifacts on the ground and kill |cff00ecffEarth Elementals|r
.goto 2022,66.06,58.13,0,0
.complete 67113,1 
.complete 67113,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66436 >>Turn in Unearthed Troublemakers
.turnin 66435 >>Turn in Site Salvage
.turnin 66437 >>Turn in A Key Element
.target Elementalist Taiyang
step
.goto 2022,66.59,56.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Tae'shara Bloodwatcher, Elementalist Taiyang, and Acadia Chistlestone
.accept 66438 >>Accept Lofty Goals
.accept 66441 >>Accept Distilled Effort
.accept 66439 >>Accept Rapid Fire Plans
.target Examiner Tae'shara Bloodwatcher
.target Elementalist Taiyang
.target Acadia Chistlestone
step
.goto 2022,70.49,56.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.accept 70994 >>Accept Drainage Solutions
.target Zikkori
step
#completewith next
>>Throw |T3610505:0|t[Zikkori's Water Siphoning Device] under the Glittery Streams
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
>>Kill |cff00ecffAcequian|r. Loot it for the orb
.goto 2022,72.17,56.71
.complete 66441,1 
.unitscan Acequian
step
>>Throw |T3610505:0|t[Zikkori's Water Siphoning Device] under the Glittery Streams
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.goto 2022,70.50,56.84
.turnin 70994 >>Turn in Drainage Solutions
.target Zikkori
step
#completewith next
>>Kill |cff00ecffPrimalist Forces|r in the area. Loot them for the Firey Spirits
.complete 67100,2 
step
>>Kill |cff00ecffPrimalist Forces|r in the area. Loot them for the flame Fragments
.goto 2022,68.40,63.15,30,0
.goto 2022,69.35,64.39,30,0
.goto 2022,68.26,64.59,30,0
.goto 2022,69.90,64.44,30,0
.goto 2022,69.84,65.71,30,0
#loop
.line 2022,68.40,63.15,69.35,64.39,68.26,64.59,69.90,64.44,69.84,65.71
.goto 2022,68.40,63.15,30,0
.goto 2022,69.35,64.39,30,0
.goto 2022,68.26,64.59,30,0
.goto 2022,69.90,64.44,30,0
.goto 2022,69.84,65.71,30,0
.complete 66439,1 
step
>>Kill |cff00ecffPrimalist Forces|r in the area. Loot them for the Firey Spirits
.goto 2022,68.13,64.19
.complete 67100,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Ri'tal
.goto 2022,70.64,63.13
.skipgossip
.complete 66438,1 
.target Scout Ri'tal
step
>>|cfff78300Hug the right wall|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Francisco
.goto 2022,70.14,61.53
.skipgossip
.complete 66438,2 
.target Scout Francisco
step
>>|cfff78300Hug the left wall, then follow the arrow. Dodge the whirlwinds|r
.goto 2022,69.39,61.86,10,0
.goto 2022,69.08,61.66,8,0
.goto 2022,68.27,61.54
.complete 66438,3 
step
>>Use the |T135821:0|t[Primal Flame Fragments]
.use 192545
.goto 2022,66.59,56.08
.complete 66439,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66438 >>Turn in Lofty Goals
.turnin 66439 >>Turn in Rapid Fire Plans
.turnin 66441 >>Turn in Distilled Effort
.accept 66442 >>Accept Let's Get Theoretical
.target Elementalist Taiyang
step
>>Wait at the waypoint until you can use the |cffffff00[ExtraActionButton]|r and use it
.goto 2022,66.56,56.06
.skipgossip
.complete 66442,1 
.complete 66442,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.51,55.96
.turnin 66442 >>Turn in Let's Get Theoretical
.accept 66447 >>Accept Beyond the Barrier
.target Elementalist Taiyang
step
>>Kill the |cff00ecffDiscrodant Watcher|r
.goto 2022,66.09,55.36
.complete 66447,1 
.unitscan Discordant Watcher
step
>>Click on the rune stone
.goto 2022,66.08,55.03
.complete 66447,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,65.88,57.47
.turnin 66447 >>Turn in Beyond the Barrier
.target Elementalist Taiyang
step
#completewith next
.hs >>Hearth to Ruby Lifeshrine
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2022,62.34,73.02
.turnin 68799 >>Turn in Return to the Ruby Lifeshrine
.target Alexstrasza the Life-Binder
step
.isWorldQuestAvailable 2022,70410
>>Talk to X and complete the race
.goto 2022,62.80,74.00
.complete 70410,1 
step
.isWorldQuestAvailable 2022,70382
>>Talk to X and complete the race
.goto 2022,63.20,70.80
.complete 70382,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mother Elion
.goto 2022,61.6,68.71
.skipgossip 1
.complete 66115,3 
.target Mother Elion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana
.goto 2022,62.78,70.43
.skipgossip 189260,1
.complete 66115,4 
.target Zahkrana
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana again
.goto 2022,62.78,70.43
.turnin 66115 >>Turn in The Mandate of the Red
.target Zahkrana
step
.goto 2022,62.18,70.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Amella
.accept 70061 >>Accept Training Wings
.target Amella
step
#completewith next
+Glide with your Dragonriding mount to the Ruby Whelpling
step
>>Mount the Ruby Whelpling
.goto 2022,61.09,71.46
.skipgossip 1
.complete 70061,1 
step
#completewith next
+Spam |T135808:0|tBurning Bark (1) to kill enemies at range
+Use |T136045:0|tCall of Life (3) for when enemies are in meele range
step
>>Kill the Enemies in the Area
.complete 70061,4 
.complete 70061,3 
.complete 70061,2 
step
#completewith next
+|cfff78300Leave the vehicle|r
step
#completewith next
+Fly to Majordomo Selistra using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 70061 >>Turn in Training Wings
.goto 2022,62.32,72.90
.accept 66931 >>Accept Who Brought the Ruckus?
.goto 2022,62.34,73.02
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Thomas Bright and talk to him
.goto 2022,60.22,72.18
.turnin 67100 >>Turn in A Gift for Miguel
.target Thomas Bright
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>Follow the arrow
.goto 2022,59.46,72.72
.complete 66931,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,59.49,72.61
.turnin 66931 >>Turn in Who Brought the Ruckus?
.accept 66116 >>Accept The Primary Threat
.target Majordomo Selistra
step
>>Glide down to Commander Lethanak in the Frost Area below
.goto 2022,59.44,75.87
.complete 66116,1 
.complete 66116,2 
.target Commander Lethanak
step
.goto 2022,59.41,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.turnin 66116 >>Turn in The Primary Threat
.accept 66118 >>Accept Basalt Assault
.accept 66117 >>Accept Clear the Battlefield (Bonus Objective)
.target Commander Lethanak
step
#completewith WakingShoreCutOfftheHead
>>Kill the Enemies in the Area while doing the other objectives
.complete 66117,1 
step
.pve
>>Kill the Enraged Cliffs around the waypoint
.goto 2022,60.93,77.56,25,0
.goto 2022,61.27,79.08,25,0
.goto 2022,60.73,78.72,0,0
.complete 66118,1,1 
step
.pve
#completewith next
+Mount up and fly to the waypoint location
step
.pve
#label WakingShoreTerillodtheDevout
>>Kill |cff00ecffTerillod|r. Be careful not to get knocked off
.goto 2022,60.64,83.01
.accept 70751 >>Accept Terillod the Devout (Elite Objective)
.complete 70751,1 
.unitscan Terillod
step
>>Kill the Big Stone Elementals
.goto 2022,61.27,79.10,25,0
.goto 2022,59.71,78.62,25,0
.goto 2022,57.82,76.81,25,0
.goto 2022,60.65,78.43
.complete 66118,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak and Majordomo Selistra
.turnin 66118 >>Turn in Basalt Assault
.accept 66122 >>Accept Proto-Fight
.goto 2022,59.41,75.88
.accept 66121 >>Accept Egg Evac
.goto 2022,59.49,76.16
.target Commander Lethanak
.target Majordomo Selistra
step
#completewith WakingShoreEggEvac
>>Use the |T135133:0:0|t[Ruby Spear] on Galestrike Proto-Dragons to weaken them
.use 192436
.complete 66122,2 
step
>>Right-Click the Bronze Egg
.goto 2022,56.13,81.29
.complete 66121,1 
step
>>Right-Click the Azure Egg
.goto 2022,57.35,83.28
.complete 66121,2 
step
>>Right-Click the Emerald Egg
.goto 2022,55.32,83.31
.complete 66121,3 
step
#completewith next
>>Kill Klozicc
.goto 2022,54.77,82.22,15,0
.accept 66960 >>Accept Klozicc the Ascended (Elite Objective)
.complete 66960,1 
.unitscan Klozicc the Ascended
step
#label WakingShoreEggEvac
>>Right-Click the Ruby Egg
.goto 2022,54.99,80.95
.complete 66121,4 
step
>>Kill Klozicc
.goto 2022,54.77,82.22
.accept 66960 >>Accept Klozicc the Ascended (Elite Objective)
.complete 66960,1 
.unitscan Klozicc the Ascended
step
>>Use the |T135133:0:0|t[Ruby Spear] on Galestrike Proto-Dragons above you to weaken them
.use 192436
.goto 2022,55.03,82.08,35,0
.goto 2022,56.37,80.47,35,0
#loop
.line 2022,55.03,82.08,55.15,82.96,57.24,82.82,55.32,79.65
.goto 2022,55.03,82.08,35,0
.goto 2022,55.15,82.96,35,0
.goto 2022,57.24,82.82,35,0
.goto 2022,55.32,79.65,35,0
.complete 66122,2 
step
.goto 2022,53.68,80.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.turnin 66122 >>Turn in Proto-Fight
.turnin 66121 >>Turn in Egg Evac
.accept 66123 >>Accept Cut Off the Head
.target Majordomo Selistra
step
>>Use the |T135133:0:0|t[Ruby Spear] on Jadzigeth to weaken him
.use 192436
.goto 2022,53.68,83.04
.complete 66123,1 
.unitscan Jadzigeth
step
#label WakingShoreCutOfftheHead
.goto 2022,53.67,80.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.turnin 66123 >>Turn in Cut Off the Head
.accept 66124 >>Accept Exeunt, Triumphant
.target Majordomo Selistra
step
>>Kill the Enemies in the Area while doing the other objectives
#loop
.line 2022,55.03,82.08,56.37,55.15,82.96,57.24,82.82,80.47,55.03,82.08,56.37,80.47,55.03,82.08
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,55.15,20,0
.goto 2022,82.96,57.24,20,0
.goto 2022,82.82,80.47,20,0
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,80.47,20,0
.goto 2022,55.03,82.08,20,0
.complete 66117,1 
step
#requires WakingShoreCleartheBattlefield
.goto 2022,48.48,78.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hauler Bennet
.accept 66963 >>Accept Out For Delivery
.target Hauler Bennet
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,46.14,78.54
.skipgossip 187278,1
.complete 66124,1 
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 66124 >>Turn in Exeunt, Triumphant
.goto 2022,46.14,78.51
.accept 66079 >>Accept Wrathion Awaits
.goto 2022,46.09,78.29
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Scalecommander Emberthal
.turnin 66079 >>Turn in Wrathion Awaits
.goto 2022,42.47,66.84
.accept 72241 >>Accept Lessons from Our Past
.goto 2022,42.47,66.78
.target Wrathion
.target Scalecommander Emberthal
step
#completewith next
+You can skip the next cutscene.
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Scalecommander
.goto 2022,42.47,66.79
.skipgossip 192795,1
.complete 72241,1 
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal and Wrathion
.turnin 72241 >>Turn in Lessons from Our Past
.accept 66048 >>Accept Best Plans and Intentions
.goto 2022,42.47,66.78
.accept 66078 >>Accept Sharp Practice
.goto 2022,42.47,66.84
.target Wrathion
.target Scalecommander Emberthal
step
#completewith next
.gossipoption 55311 >>Talk to Fao the Relentless
.goto 2022,42.41,66.18
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fao the Relentless then interact with the plan in the tent
.goto 2022,42.41,66.06
.skipgossip 1
.complete 66048,1 
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Forgemaster Bazentus
.goto 2022,42.82,66.86
.skipgossip
.complete 66048,4 
.target Forgemaster Bazentus
step
#completewith WakingShoresBestPlansandIntentionsEdres
.gossipoption 55307 >>Talk to Archivist Edress
.goto 2022,43.76,67.28
.complete 66048,2 
.target Archivist Edres
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them
.goto 2022,42.56,67.51,20,0
.skipgossip
.complete 66078,1 
step
#label WakingShoresBestPlansandIntentionsEdres
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia then click on the Binoculars
.gossipoption 54996
.goto 2022,42.30,69.29
.complete 66048,3 
.goto 2022,42.23,69.33
.target Talonstalker Kavia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them
.goto 2022,42.56,67.51
.skipgossip
.complete 66078,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the NPCs at the waypoint locations
.complete 66048,1 
.goto 2022,42.41,66.06
.complete 66048,4 
.goto 2022,42.82,66.86
.complete 66048,2 
.goto 2022,43.76,67.28
.complete 66048,3 
.goto 2022,42.23,69.33
.skipgossip
.target Fao the Relentless
.target Forgemaster Bazentus
.target Archivist Edres
.target Talonstalker Kavia
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66048 >>Turn in Best Plans and Intentions
.turnin 66078 >>Turn in Sharp Practice
.target Wrathion
step
.isWorldQuestAvailable 2022,70413
>>Talk to X and complete the race
.goto 2022,42.00,67.20
.complete 70413,1 
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.accept 65957 >>Accept No Time For Heroes
.accept 65956 >>Accept Talon Strike
step
.goto 2022,37.45,71.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.accept 66003 >>Accept Rings To Bind Them
.target Earthcaller Yevaa
step
>>Kill |cff00ecffBlazing Manifestations|r. Loot then for the binding rings
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
#loop
.line 2022,,37.99,71.58,38.15,73.04,37.31,73.68,,36.75,72.98,37.12,71.84,38.05,69.42
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.31,73.68,22,0
.goto 2022,36.75,72.98,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
.complete 66003,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.turnin 66003 >>Turn in Rings To Bind Them
.accept 66369 >>Accept The Earthen Ward
.target Earthcaller Yevaa
step
>>Click on the Earth Warden
.goto 2022,37.54,71.23
.complete 66369,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.turnin 66369 >>Turn in The Earthen Ward
.accept 66368 >>Accept Island In A Storm
.target Earthcaller Yevaa
step
#completewith next
>>Kill |cff00ecffBlazing Manifestations|r
.complete 66368,1 
step
.goto 2022,37.62,75.10
.complete 66368,2 
.unitscan Melter Igneous
step
>>Kill |cff00ecffBlazing Manifestations|r
.goto 2022,37.98,76.02,20,0
.goto 2022,39.58,74.41,20,0
.goto 2022,39.14,73.14,20,0
.goto 2022,38.01,71.79,20,0
.goto 2022,36.55,71.79,20,0
.goto 2022,36.95,73.62,20,0
#loop
.line 2022,37.98,76.02,39.58,74.41,39.14,73.14,38.01,71.79,36.55,71.79,36.95,73.62
.goto 2022,37.98,76.02,25,0
.goto 2022,39.58,74.41,25,0
.goto 2022,39.14,73.14,25,0
.goto 2022,38.01,71.79,25,0
.goto 2022,36.55,71.79,25,0
.goto 2022,36.95,73.62,25,0
.complete 66368,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.78
.turnin 66368 >>Turn in Island In A Storm
.target Earthcaller Yevaa
step
#completewith WakingShoreNoTimeForTalonStrike
+Use the |cffffff00[ExtraActionButton|r for extra damage
step
#completewith WakingShoreNoTimeForHeroes
>>|cfff78300Avoid killing elites|r. Focus on destroying stuff and killing non-elites
.goto 2022,36.43,69.68,20,0
.goto 2022,34.86,61.66,0,0
.complete 65956,1 
step
>>Climb the tower. Kill |cff00ecffPiercer Gigra|r
.goto 2022,35.53,68.47
.complete 65957,1 
.unitscan Piercer Gigra
step
>>Kill |cff00ecffOlphis the Molten|r
.goto 2022,34.79,66.86
.complete 65957,3 
.unitscan Olphis the Molten
step
.isOnQuest 65956
#title Progress the Bonus Objective
#completewith next
.goto 2022,37.36,63.09,30,0
.goto 2022,36.75,60.09,50 >>Kill everything around you
step
#label WakingShoreNoTimeForHeroes
>>Climb the tower. Kill |cff00ecffModak Flamespit|r
.goto 2022,35.67,60.73
.complete 65957,2 
.unitscan Modak Flamespit
step
.goto 2022,37.11,55.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthmender Govrum
.accept 70414 >>Accept Shaky Grounds
step
>>Use the |T136108:0|t[Shattering Totem] on the Trapped Cavestones in the lava
.use 198980
.goto 2022,36.61,55.90
.complete 70414,1 
step
.goto 2022,37.11,55.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthmender Govrum
.turnin 70414 >>Turn in Shaky Grounds
step
.goto 2022,39.43,48.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ingot
.accept 65687 >>Accept Punching Up
.accept 65690 >>Accept A Cultist's Misgivings
step
>>Follow the arrow
.goto 2022,37.45,46.70
.complete 65690,1 
step
.goto 2022,37.43,46.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.turnin 65690 >>Turn in A Cultist's Misgivings
.accept 65782 >>Accept Under Lock and Key
step
#completewith next
>>Kill |cff00ecffWorldbreaker Guards|r. Loot them for the key
.complete 65782,1 
step
>>Kill |cff00ecffDragonkins|r in the area
.goto 2022,38.28,47.37,25,0
.goto 2022,38.16,48.63,25,0
.goto 2022,36.16,48.01,25,0
.goto 2022,34.45,48.72,25,0
#loop
.line 2022,38.28,47.37,38.16,48.63,36.16,48.01,34.45,48.72
.goto 2022,38.28,47.37,35,0
.goto 2022,38.16,48.63,35,0
.goto 2022,36.16,48.01,35,0
.goto 2022,34.45,48.72,35,0
.complete 65687,1 
step
#completewith next
>>Kill |cff00ecffWorldbreaker Guards|r. Loot them for the key
.goto 2022,36.16,48.01,25,0
.goto 2022,34.45,48.72,25,0
.goto 2022,38.16,48.63,25,0
.goto 2022,38.28,47.37,25,0
#loop
.line 2022,38.28,47.37,38.16,48.63,36.16,48.01,34.45,48.72
.goto 2022,38.28,47.37,35,0
.goto 2022,38.16,48.63,35,0
.goto 2022,36.16,48.01,35,0
.goto 2022,34.45,48.72,35,0
.complete 65782,1 
step
>>Open the cage
.goto 2022,37.43,46.66
.complete 65782,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ingot and Ayasanth after a short roleplay
.turnin 65687 >>Turn in Punching Up
.goto 2022,37.33,46.65
.turnin 65782 >>Turn in Under Lock and Key
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.accept 65691 >>Accept The Shadow of His Wings
.goto 2022,37.35,46.62
step
.pve
#completewith next
.goto 2022,35.63,47.95,20 >>Enter the cave
step
.pve
>>Wait for the roleplay and kill |cff00ecffCygenoth the Corrupted|r
.goto 2022,35.04,45.47
.complete 65691,1 
.complete 65691,2 
step
.pve
.goto 2022,39.56,48.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.turnin 65691 >>Turn in The Shadow of His Wings
step
#completewith next
+Look for more mobs in the marked area on your map
step
>>|cfff78300Avoid killing elites|r. Focus on destroying stuff and killing non-elites
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.complete 65956,1 
step
#label WakingShoreNoTimeForTalonStrike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,33.99,61.29
.turnin 65957 >>Turn in No Time For Heroes
.turnin 65956 >>Turn in Talon Strike
.accept 65939 >>Accept The Courage of One's Convictions
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,33.99,61.29
.skipgossip 1
.complete 65939,1 
.target Wrathion
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>Follow the arrow starting from the front of the bridge.
.goto 2022,33.54,61.86,50,0
.goto 2022,30.51,60.88
.complete 65939,2 
step
#completewith WakingShoresTakingtheWalls
>>Kill |cff00ecffQalashi Forces|r on the side. Don't try to finish this quest
.complete 65939,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,29.14,58.82
.accept 66044 >>Accept Taking the Walls
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,29.14,58.82
.skipgossip 186933,1
.complete 66044,1 
.target Wrathion
step
#completewith WakingShoreTakingTheWalls
+Use your dragonriding mount to fly to the next cannon (or look out for Wrathion)
step
>>Destroy the cannon
.goto 2022,26.81,59.99
.complete 66044,2 
step
>>Destroy the cannon
.goto 2022,29.51,60.99
.complete 66044,3 
step
#label WakingShoreTakingTheWalls
>>Destroy the cannon
.goto 2022,27.79,56.66
.complete 66044,4 
step
#label WakingShoresTakingtheWalls
>>Patrolling around the area
.goto 2022,26.94,57.07
.complete 66044,5 
step
>>Kill |cff00ecffQalashi Forces|r on the side. Don't try to finish this quest
.goto 2022,27.46,61.25,30,0
.goto 2022,26.42,58.75
.complete 65939,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,26.42,58.75
.turnin 66044 >>Turn in Taking the Walls
.turnin 65939 >>Turn in The Courage of One's Convictions
step
.goto 2022,48.48,82.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd
.turnin 66963 >>Turn in Out For Delivery
.accept 66524 >>Accept Amateur Protography
.target Cataloger Wulferd
step
.goto 2022,45.93,81.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Iyali
.accept 69897 >>Accept Behavior Analysis "Homework"
step
>>Use |T1109100:0|t[Wulferd's Award-Winning Camera] and then use Catalog (1) while looking at the Hungry Proto-Drake |cffffff00when he is directly in front of the waypoint position|r
.target Hungry Proto-Drake
.use 192465
.goto 2022,43.80,78.35
.complete 66524,3 
step
>>Use |T1109100:0|t[Wulferd's Award-Winning Camera] and then use Catalog (1) while looking at the Optimistic Whelp when he starts flying
.target Optimistic Whelp
.use 192465
.goto 2022,44.86,78.05
.complete 66524,2 
step
#title Sleeping Whelp 1/3
>>Click on the Sleeping Whelp
.goto 2022,42.55,79.36
.complete 69897,1,1 
step
#title Sleeping Whelp 2/3
>>Click on the Sleeping Whelp
.goto 2022,42.40,82.57
.complete 69897,1,2 
step
>>Use |T1109100:0|t[Wulferd's Award-Winning Camera] and then use Catalog (1) while looking at the Proto-Dragon Egg
.use 192465
.goto 2022,45.41,82.14
.complete 66524,1 
step
#title Sleeping Whelp 3/3
>>Click on the Sleeping Whelp
.goto 2022,43.53,84.96
.complete 69897,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd and Dervishian
.turnin 66524 >>Turn in Amateur Protography
.accept 66525 >>Accept Competitive Protography
.goto 2022,39.03,83.25
.accept 66526 >>Accept Preserving the Wilds
.goto 2022,39.08,83.27
.target Cataloger Wulferd
.target Dervishian
step
#completewith next
>>Kill the |cff00ecffPrimalists|r in the area
.complete 66526,1 
step
>>Use |T1109100:0|t[Wulferd's Award-Winning Camera] and then use Catalog (1) while looking at the Infused Proto-Dragon Egg
.use 192465
.goto 2022,38.32,80.76
.complete 66525,1 
step
>>Use |T1109100:0|t[Wulferd's Award-Winning Camera], look up and then use Catalog (1) while looking at the Infused Proto-Drake
>>If it doesn't work try to get closer
.unitscan Infused Proto-Drake
.use 192465
.goto 2022,38.60,81.24
.complete 66525,2 
step
>>Kill the |cff00ecffPrimalists|r in the area
.goto 2022,38.32,80.76
.complete 66526,1 
step
.goto 2022,39.01,83.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd and Dervishian
.turnin 66525 >>Turn in Competitive Protography
.turnin 66526 >>Turn in Preserving the Wilds
.accept 66527 >>Accept Professional Protography
.target Cataloger Wulferd
.target Dervishian
step
>>Go onto the spring
.goto 2022,38.95,83.39
.complete 66527,1 
step
>>Follow the spotlights then use |T1109100:0|t[Wulferd's Award-Winning Camera] and then use Catalog (1)
.use 192465
.goto 2022,38.77,84.04
.complete 66527,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd and Dervishian
.goto 2022,39.03,83.26
.turnin 66527 >>Turn in Professional Protography
.accept 66528 >>Accept King Without a Crown
.target Cataloger Wulferd
.target Dervishian
step
>>Click on the Charred Foreclaw
.goto 2022,38.84,83.51
.complete 66528,2 
step
>>Click on the Severed Spine
.goto 2022,39.13,83.94
.complete 66528,1 
step
>>Click on the Cracked Rib
.goto 2022,39.39,84.03
.complete 66528,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
.goto 2022,39.08,83.28
.turnin 66528 >>Turn in King Without a Crown
.accept 66529 >>Accept A Thousand Words
.target Dervishian
step
>>Use |T1109100:0|t[Wulferd's Award-Winning Camera] and use Catalog (1) while looking at Dervishian
.goto 2022,38.92,83.52
.use 192465
.complete 66529,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
.goto 2022,38.72,83.69
.turnin 66529 >>Turn in A Thousand Words
.target Dervishian
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Iyali
.goto 2022,45.90,81.44
.skipgossip 193500,1
.complete 69897,2 
.target Iyali
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Iyali
.goto 2022,45.90,81.44
.turnin 69897 >>Turn in Behavior Analysis "Homework"
.target Iyali
step
.isWorldQuestAvailable 2022,70412
>>Talk to X and complete the race
.goto 2022,47.00,85.60
.complete 70412,1 
step
.isWorldQuestAvailable 2022,70418
>>Talk to X and complete the race
.goto 2022,42.60,94.40
.complete 70418,1 
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup Threads of Fate Multibox 60-70
#name B2Ohn'ahran Plains Multibox
#displayname Chapter 2 - Ohn'ahran Plains Multibox
#next C3Azure Span Multibox
step
#completewith Ohn'ahran Plains Campaign
+Welcome to the Ohn'ahran Plains Guide of RestedXP.
step
.goto 2022,48.27,88.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Taurasza
.accept 65779 >>Accept Into the Plains
step
#label Ohn'ahran Plains Campaign
.goto 2023,77.73,23.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65779 >>Turn in Into the Plains
.accept 65780 >>Accept Proving Oneself
step
>>Kill the |cff00ecffBlazing Proto-Dragon|r
.goto 2023,78.50,27.21
.complete 65780,1 
step
.goto 2023,78.63,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65780 >>Turn in Proving Oneself
.accept 65783 >>Accept Welcome at Our Fire
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,85.31,25.41
.turnin 65783 >>Turn in Welcome at Our Fire
.accept 70174 >>Accept The Shikaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,85.74,25.32
.skipgossip 181217,1
.complete 70174,1 
step
.goto 2023,85.73,25.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.turnin 70174 >>Turn in The Shikaar
.accept 65802 >>Accept Supplies for the Journey
.accept 65801 >>Accept Making Introductions
step
#title Supply 1
>>Pick up the provivions |cffffff00(not shared)|r
.goto 2023,86.17,25.32
.complete 65802,2,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru or Belika |cffffff00(not shared)|r
.goto 2023,85.76,26.59
.skipgossip
.complete 65801,2 
step
#title Pod 1
>>Pick up the pod |cffffff00(not shared)|r
.goto 2023,85.51,26.88
.complete 65802,1,1 
step
#title Pod 2
>>Pick up the pod |cffffff00(not shared)|r
.goto 2023,84.98,26.63
.complete 65802,1,2 
step
#title Pod 3
>>Pick up the pod |cffffff00(not shared)|r
.goto 2023,84.59,27.08
.complete 65802,1,3 
step
#title Supply 2
>>Pick up the provivions |cffffff00(not shared)|r
.goto 2023,84.31,27.19
.complete 65802,2,2 
step
#title Pod 4
>>Pick up the pod |cffffff00(not shared)|r
.goto 2023,84.29,25.77
.complete 65802,1,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Nuqut |cffffff00(not shared)|r
.goto 2023,83.93,25.88
.skipgossip 1
.complete 65801,3 
step
#title Pod 5
>>Pick up the pod |cffffff00(not shared)|r
.goto 2023,83.76,25.09
.complete 65802,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Ehri and Farrier Roscha
.accept 65950 >>Accept Thieving Gorlocs
.goto 2023,84.40,25.01
.accept 65951 >>Accept Sole Supplier
.goto 2023,84.34,25.00
step
#completewith next
+|cfff78300Avoid killing Shamans if possible|r
step
>>Kill |cff00ecffMudfins|r in the area. Loot the for the supplies |cffffff00(not shared)|r
.goto 2023,82.30,28.97,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.60,30.82
.complete 65950,1 
step
>>Follow the arrow
.goto 2023,80.65,30.87
.complete 65951,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,80.56,30.74
.turnin 65951 >>Turn in Sole Supplier
.turnin 65950 >>Turn in Thieving Gorlocs
.accept 65953 >>Accept The Ora-cull
.accept 65954 >>Accept Release the Hounds
.accept 65955 >>Accept A Centaur's Best Friend
step
>>Open the cage
.goto 2023,80.56,30.74
.complete 65955,1 
step
#completewith OhnahranPlainsReleaseTheHounds4
>>Kill |cff00ecffMudfin Shamans|r. Loot them for the totems.
.complete 65953,1 
step
#title Bakar Collar 1
>>Pick up the collar |cffffff00(not shared)|r
.goto 2023,80.63,30.69
.complete 65954,2,1 
step
#title Bakar Freed 1
>>Open the cage
.goto 2023,81.16,29.77
.complete 65954,1,1 
step
#title Bakar Freed 2
>>Open the cage
.goto 2023,81.43,29.69
.complete 65954,1,2 
step
#title Bakar Freed 3
>>Open the cage
.goto 2023,82.22,30.27
.complete 65954,1,3 
step
#title Bakar Collar 2
>>Pick up the collar |cffffff00(not shared)|r
.goto 2023,82.22,30.43
.complete 65954,2 
step
#label OhnahranPlainsReleaseTheHounds4
#title Bakar Freed 4
>>Open the cage
.goto 2023,82.36,30.56
.complete 65954,1,4 
step
#sticky
#label OhnahranPlainsTheOracull
#title Kill Mudfin Shamans
>>Kill |cff00ecffMudfin Shamans|r. Loot them for the totems. |cffffff00(not shared)|r
.goto 2023,81.74,31.64,15,0
.goto 2023,81.99,32.17,15,0
.goto 2023,82.36,32.58,15,0
.goto 2023,81.73,30.81,15,0
#loop
.line 2023,81.74,31.64,81.99,32.17,82.36,32.58,81.73,30.81
.goto 2023,81.74,31.64,18,0
.goto 2023,81.99,32.17,18,0
.goto 2023,82.36,32.58,18,0
.goto 2023,81.73,30.81,18,0
.complete 65953,1 
step
#title Bakar Freed 5
>>Open the cage
.goto 2023,81.25,31.70
.complete 65954,1 
step
#requires OhnahranPlainsTheOracull
#completewith next
.goto 2023,83.08,32.06,10 >>Enter the cave
step
#requires OhnahranPlainsTheOracull
>>Open the cage and wait for Khasar
.goto 2023,83.38,32.40
.complete 65955,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.43,32.33
.turnin 65955 >>Turn in A Centaur's Best Friend
.turnin 65953 >>Turn in The Ora-cull
.turnin 65954 >>Turn in Release the Hounds
.accept 65952 >>Accept A Chief of Legends
step
#completewith next
.goto 2023,83.08,32.06,10 >>Leave the cave
step
#sticky
#label OhnahranPlainsChiefofLegends
>>Kill |cff00ecffChief Grrlgllmesh|r
.goto 2023,82.10,31.44
.complete 65952,1 
step
>>Loot Chief Grrlgllmesh for the Medallion and use it |cffffff00(not shared)|r
.collect 191127,1,66005,1
.goto 2023,82.05,31.45
.accept 66005 >>Accept Medallion of a Fallen Friend
step
#requires OhnahranPlainsChiefofLegends
#completewith next
.goto 2023,83.08,32.06,10 >>Enter the cave
step
#requires OhnahranPlainsChiefofLegends
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.44,32.33
.turnin 65952 >>Turn in A Chief of Legends
.turnin 66005 >>Turn in Medallion of a Fallen Friend
.accept 65949 >>Accept The Sole Mender
.accept 66006 >>Accept Return to Roscha
step
>>Pick up the supplies
.goto 2023,83.51,32.14
.complete 66006,1 
step
#completewith next
.goto 2023,83.08,32.06,10 >>Leave the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to Timberstep Outpost. Talk to Farrier Roscha
.goto 2023,84.42,25.03
.turnin 65949 >>Turn in The Sole Mender
.turnin 66006 >>Turn in Return to Roscha
step
#title Supply 3
>>Pick up the provivions |cffffff00(not shared)|r
.goto 2023,84.34,24.91
.complete 65802,2,3 
step
#title Supply 4
>>Pick up the provivions |cffffff00(not shared)|r
.goto 2023,84.37,23.12
.complete 65802,2 
step
.goto 2023,85.63,20.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng |cffffff00(not shared)|r
.skipgossip 1
.complete 65801,1 
step
.goto 2023,84.69,22.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul inside the hut
.turnin 65801 >>Turn in Supplies for the Journey
.turnin 65802 >>Turn in Supplies for the Journey
.accept 65803 >>Accept Toward the City
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,83.17,23.77
.skipgossip
.complete 65803,1 
step
>>You can ride with him, listen to his story, or fly directly to the first stop.
.goto 2023,75.57,31.84
.complete 65803,3 
step
.goto 2023,75.70,31.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65803 >>Turn in Toward the City
.accept 65804 >>Accept For Food and Rivalry
step
>>Interact with the Mysterious Paw Print
.goto 2023,76.73,31.89
.accept 70185 >>Accept Mysterious Beast
step
#completewith OhnahranPlainsMysteriousBeast
>>Kill |cff00ecffbeasts|r in the area. Loot them for their meat
*The best source of meat are Mammoths and Stomphoofs.
.complete 65804,1 
step
#completewith next
.goto 2023,77.78,35.39,10 >>Enter the cave
step
#label OhnahranPlainsMysteriousBeast
>>Kill |cff00ecffKonkhular|r. Loot him for his pelt |cffffff00(not shared)|r
.goto 2023,78.22,35.24
.complete 70185,1 
step
#completewith next
.goto 2023,77.78,35.39,10 >>Leave the cave
step
>>Kill |cff00ecffbeasts|r in the area. Loot them for their meat |cffffff00(not shared)|r
*The best source of meat is Mammoths.
.goto 2023,79.22,30.63,40,0
.goto 2023,77.89,29.57,40,0
.goto 2023,74.62,29.06,40,0
.goto 2023,76.08,34.27,40,0
.goto 2023,77.47,32.21,40,0
.goto 40,2023,79.22,30.63,77.89,29.57,74.62,29.06,76.08,34.27,77.47,32.21
.complete 65804,1 
step
#requires OhnahranPlainsForFoodandRivalry
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,75.67,31.68
.turnin 65804 >>Turn in For Food and Rivalry
.turnin 70185 >>Turn in Mysterious Beast
.accept 65940 >>Accept By Broken Road
step
>>You can ride with him, listen to his story, or fly directly to the second stop.
.goto 2023,70.07,37.84
.complete 65940,2 
step
.goto 2023,69.97,37.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65940 >>Turn in By Broken Road
.accept 65805 >>Accept Connection to Ohn'ahra
step
#completewith OhnahranPlainsConnectiontoRiverReeds
+Follow the loop. Don't complete this step
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
#completewith OhnahranPlainsConnectiontoRiverReeds
>>Kill |cff00ecffMudwalker Salamanthers|r. Loot them for their heart
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
#completewith next
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
>>Click on |cff00ecffJadethroat Mallards|r
.goto 2023,69.94,37.66,0,0
.complete 65805,2 
step
#label OhnahranPlainsConnectiontoRiverReeds
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
#completewith next
+Follow the loop. Don't complete this step
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
>>Kill |cff00ecffMudwalker Salamanthers|r. Loot them for their heart
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
.goto 2023,69.96,37.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65805 >>Turn in Connection to Ohn'ahra
.accept 66848 >>Accept Omens on the Wind
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,69.96,37.96
.skipgossip 184595,2
.complete 66848,1 
step
>>Place the totems
.goto 2023,69.93,37.62
.complete 66848,2 
step
>>Wait
.goto 2023,69.93,37.62
.complete 66848,3 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng and Sansok Khan
.turnin 66848 >>Turn in Omens on the Wind
.goto 2023,69.96,37.94
.accept 65806 >>Accept Maruukai
.goto 2023,70.02,38.01
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Telemancer Aerilyn and talk to her
.goto 2023,65.97,25.09
.accept 65890 >>Accept The Nelthazan Ruins
step
#completewith OhnahranPlainsToolsoftheTirade
>>Kill mobs in the area
.accept 65892 >>Accept The Sundered Asunder (Bonus Objective)
.complete 65892,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.00,18.29
.turnin 65890 >>Turn in The Nelthazan Ruins
.accept 65893 >>Accept The Relic Inquiry
.accept 65891 >>Accept Tools of the Tirade
step
#completewith OhnahranPlainsToolsoftheTirade
>>Kill |cff00ecffTaraseks|r and |cff00ecffSundered mobs|r. Loot them for the fragments |cffffff00(not shared)|r
.goto 2023,63.03,17.67,0,0
.complete 65893,1 
step
#title Tool Deployed 1
>>Interact with the Waygate Rubble
.goto 2023,63.56,17.18
.complete 65891,1,1 
step
#title Tool Deployed 2
>>Interact with the Waygate Rubble
.goto 2023,63.43,16.73
.complete 65891,1,2 
step
#title Tool Deployed 3
>>Interact with the Waygate Rubble
.goto 2023,63.50,15.10
.complete 65891,1,3 
step
#title Tool Deployed 4
>>Interact with the Waygate Rubble
.goto 2023,63.05,14.78
.complete 65891,1,4 
step
#label OhnahranPlainsToolsoftheTirade
#title Tool Deployed 5
>>Interact with the Waygate Rubble
.goto 2023,62.79,15.68
.complete 65891,1 
step
#completewith next
>>Kill mobs in the area
.goto 2023,63.57,15.34,0,0
.accept 65892 >>Accept The Sundered Asunder (Bonus Objective)
.complete 65892,1 
step
>>Kill |cff00ecffTaraseks|r and |cff00ecffSundered mobs|r. Loot them for the fragments |cffffff00(not shared)|r
.goto 2023,62.28,17.53,20,0
.goto 2023,62.90,17.90,20,0
.goto 2023,63.77,16.47,20,0
.goto 2023,63.57,15.34
.complete 65893,1 
step
>>Kill mobs in the area
#loop
.line 2023,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.accept 65892 >>Accept The Sundered Asunder (Bonus Objective)
.complete 65892,1 
step
#requires OhnahranPlainsTheSunderedAsunder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.01,18.26
.turnin 65891 >>Turn in Tools of the Tirade
.turnin 65893 >>Turn in The Relic Inquiry
step
>>You can ride on the Stout Riding Bakar, listen to the story, or fly directly to Marrukal.
.goto 2023,61.84,39.83
.complete 65806,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 65806 >>Turn in Maruukai
.accept 66018 >>Accept Clan Nokhud
.accept 66017 >>Accept Clan Ohn'ir
.accept 66016 >>Accept Clan Teerai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66017 >>Turn in Clan Ohn'ir
.accept 66020 >>Accept Omens and Incense
step
#completewith next
.goto 2023,62.84,34.34,10 >>Leave the building
step
#title Sweetsuckle Bloom 1
>>Pick it up from the ground |cffffff00(not shared)|r
.collect 191160,1,66020,1
.goto 2023,63.42,33.82
step
#title Sweetsuckle Bloom 2
>>Pick it up from the ground |cffffff00(not shared)|r
.collect 191160,2,66020,1
.goto 2023,63.77,34.42
step
#title Sweetsuckle Bloom 3
>>Pick it up from the ground |cffffff00(not shared)|r
.collect 191160,3,66020,1
.goto 2023,63.57,34.73
step
#title Sweetsuckle Bloom 4+5
>>Pick it up from the ground |cffffff00(not shared)|r
.collect 191160,5,66020,1
.goto 2023,63.39,34.88
step
>>Use the |T458235:0|t[Sweetsuckle Bloom] in your bags |cffffff00(not shared)|r
.use 191160
.goto 2023,62.82,33.69
.complete 66020,1 
step
>>Interact with the Incense Burner |cffffff00(not shared)|r
.goto 2023,62.82,33.69
.complete 66020,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66020 >>Turn in Omens and Incense
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66016 >>Turn in Clan Teerai
.accept 66019 >>Accept Honoring Our Ancestors
step
>>Pick up the Raw Game Meat
.goto 2023,59.39,37.82
.complete 66019,1 
step
>>Interact with the shade
.goto 2023,59.13,37.57
.complete 66019,2 
step
>>Pick up the Jar of Spices
.goto 2023,59.31,37.29
.complete 66019,3 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.61
.complete 66019,4 
step
>>Pick up the Basket of Spices
.goto 2023,59.39,37.37
.complete 66019,5 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,59.16,37.57
.complete 66019,6 
step
>>Pick up the Pot of Spices
.goto 2023,59.05,37.88
.complete 66019,7 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.58
.complete 66019,8 
step
>>Pick up the Game Meat
.goto 2023,59.14,37.58
.complete 66019,9 
step
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2023,58.90,37.26
.complete 66019,10 
step
>>Interact with the shade
.goto 2023,59.16,37.10
.complete 66019,11 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66019 >>Turn in Honoring Our Ancestors
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul and Guard Bahir
.turnin 66018 >>Turn in Clan Nokhud
.goto 2023,60.38,40.69
.accept 66021 >>Accept Unwelcome Outsider
.goto 2023,60.31,40.75
step
>>Kill |cff00ecffNokhud Fighters|r
.goto 2023,58.67,42.21,35,0
.goto 2023,59.83,42.96,35,0
.goto 2023,59.60,41.79
.complete 66021,1 
step
.goto 2023,63.12,34.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Windsage Ordven
.accept 65906 >>Accept A Disgruntled Initiate
step
.goto 2023,61.98,41.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Tirren
.accept 65837 >>Accept Trouble In The Pines
step
.goto 2023,62.43,41.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 66021 >>Turn in Unwelcome Outsider
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru who is following you
.goto 2023,62.43,41.71
.accept 66969 >>Accept Clans of the Plains
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan |cffffff00(not shared)|r
.goto 2023,61.44,39.52
.complete 66969,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan |cffffff00(not shared)|r
.gossipoption 56528 
.gossipoption 56515 
.gossipoption 56537 
.gossipoption 56549 
.gossipoption 56554 
.goto 2023,61.43,39.52
.complete 66969,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 66969 >>Turn in Clans of the Plains
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Gemisath and talk to him
.goto 2023,61.03,40.43
.accept 66948 >>Accept The Emissary's Arrival
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath |cffffff00(not shared)|r
.goto 2023,61.03,40.44
.skipgossip 194927,4
.complete 66948,1 
step
.goto 2023,61.03,40.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath
.turnin 66948 >>Turn in The Emissary's Arrival
.accept 66022 >>Accept The Khanam Matra
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato |cffffff00(not shared)|r
.goto 2023,60.29,37.89
.skipgossip 186942,1
.complete 66022,1 
step
.goto 2023,60.35,38.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato
.turnin 66022 >>Turn in The Khanam Matra
.accept 66023 >>Accept Trucebreakers
step
.goto 2023,59.52,38.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.accept 66024 >>Accept Covering Their Tails
step
#completewith next
>>Kill |cff00ecffNokhud Betrayer|r
.complete 66023,1 
step
>>Kill |cff00ecffGuard Bahir|r
.goto 2023,58.06,39.37
.complete 66024,1 
step
>>Kill |cff00ecffNokhud Betrayer|r
.goto 2023,58.85,39.09,30,0
.goto 2023,60.12,37.66,30,0
.goto 2023,62.02,39.35,30,0
.goto 2023,60.60,40.48,30,0
.goto 2023,60.12,37.66
.complete 66023,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato and Khanam Matra Sarest |cfff78300on top of the tower|r
.goto 2023,60.36,38.05
.turnin 66023 >>Turn in Trucebreakers
.turnin 66024 >>Turn in Covering Their Tails
.accept 66025 >>Accept The Nokhud Threat
.timer 19,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest after a short roleplay
.goto 2023,60.00,37.48
.turnin 66025 >>Turn in The Nokhud Threat
.accept 66201 >>Accept Hooves of War
.target Khanam Matra Sarest
step
.goto 2023,63.47,48.63,10,0
.goto 2023,63.03,48.54
>>Kill |cff00ecffSunscale Behemoth|r in the cave under the small waterfall
.accept 69837 >>Accept Sunscale Behemoth
.complete 69837,1 
step
.isWorldQuestAvailable 2023,70549
>>Kill the bees or the plums or use the |cffffff00[ExtraActionButton]|r |cffffff00(not shared)|r
.goto 2023,63.41,56.67
.complete 70549,2 
step
#completewith next
+Fly to Jebotai using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.goto 2023,41.62,56.75
.accept 66688 >>Accept Signs of the Wind
.accept 66687 >>Accept Land of the Apex
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Jebotai
.goto 2023,41.89,61.80
.turnin 66201 >>Turn in Hooves of War
.accept 66222 >>Accept The Calm Before the Storm
.target Khansguard Jebotai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quartermaster Gensai
.goto 2023,40.72,56.35
.skipgossip
.complete 66222,2 
.target Quartermaster Gensai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on the WANTED board
.goto 2023,39.56,56.43
.accept 71027 >>Accept WANTED: Mara'nar the Thunderous
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Hojin
.goto 2023,39.44,55.32
.skipgossip
.complete 66222,3 
.target Khansguard Hojin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbalist Agura
.goto 2023,38.49,57.41
.skipgossip
.complete 66222,1 
.target Herbalist Agura
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Khenyug
.goto 2023,37.57,59.45
.skipgossip
.complete 66222,4 
.target Scout Khenyug
step
>>Fly to Mara'nar the Thunderous. Kill him. Loot him for the plate |cffffff00(not shared)|r
.goto 2023,42.26,47.13
.complete 71027,1 
step
>>Kill |cff00ecffNimblewing Slyvern|r. Loot them for their talons |cffffff00(not shared)|r
.goto 2023,43.28,46.82,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,41.70,44.86,30,0
.goto 2023,41.38,46.80,30,0
#loop
.line 2023,41.70,44.86,42.87,44.07,43.28,46.82,41.38,46.80
.goto 2023,41.70,44.86,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,43.28,46.82,30,0
.goto 2023,41.38,46.80,30,0
.complete 66687,2 
step
#completewith next
.goto 2023,43.53,47.95,20 >>Enter the cave
step
>>Kill the spiders and the eggs in the cave. Loot them for the webs |cffffff00(not shared, make sure your other characters are done with the Slyvern Talons)|r
.goto 2023,44.04,48.47,20,0
.goto 2023,43.96,49.31,20,0
.goto 2023,43.65,50.35
.complete 66687,1 
step
#completewith next
.goto 2023,43.53,47.95,20 >>Leave the cave |cffffff00(not shared, make sure your other characters are done with the Shadespinner's Web)|r
step
#completewith next
.goto 2023,45.19,48.66,10 >>Fly up and enter Skaara's cave
step
.goto 2023,44.91,49.21
.complete 70783,1 
step
>>Pick up Fern Spores, Avian Feathers and Hollow Reeds on the ground |cffffff00(not shared)|r
.goto 2023,44.32,54.34,25,0
.goto 2023,45.56,52.79,25,0
.goto 2023,46.34,53.01,25,0
.goto 2023,46.94,51.43,25,0
.goto 2023,49.15,52.45
.complete 66688,1 
step
.goto 2023,49.34,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Offering Vessel
.turnin 66688 >>Turn in Signs of the Wind
.accept 70374 >>Accept Himia, the Blessed
step
#completewith next
.gossipoption 56476 >>Talk to Himia, The Blessed
.goto 2023,49.34,49.41
step
>>Kill the spawning |cff00ecffElementals|r
.goto 2023,49.34,49.41
.complete 70374,1 
step
>>Kill the |cff00ecffThunderspines|r. Loot them for their scales
.goto 2023,50.57,50.14,30,0
.goto 2023,51.33,48.78,30,0
.goto 2023,51.08,47.44,30,0
.goto 2023,50.57,50.14
.complete 66687,3 
step
.pvp
.isWorldQuestAvailable 2023,70209
>>Kill the ducks (or players) in the area
.goto 2023,42.87,36.02,35,0
.goto 2023,42.55,34.09,35,0
.goto 2023,46.31,33.35,35,0
#loop
.line 2023,42.87,36.02,42.55,34.09,46.31,33.35,
.goto 2023,42.87,36.02,35,0
.goto 2023,42.55,34.09,35,0
.goto 2023,46.31,33.35,35,0
.complete 70209,1 
step
.goto 2023,41.63,56.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.turnin 66687 >>Turn in Land of the Apex
.turnin 70374 >>Turn in Himia, the Blessed
.accept 66834 >>Accept Rellen, the Learned
step
>>Click on the basket
.goto 2023,40.11,57.86
.complete 66834,1 
step
>>Pick up the torch and use your |cffffff00[ExtraActionButton]|r
.goto 2023,40.21,57.89
.complete 66834,2 
.complete 66834,3 
step
>>Pick up the spear and use your |cffffff00[ExtraActionButton]|r
.goto 2023,40.06,57.77
.complete 66834,4 
.complete 66834,5 
step
>>Pick up the bow and use your |cffffff00[ExtraActionButton]|r
.goto 2023,40.05,57.73
.complete 66834,6 
.complete 66834,7 
step
.goto 2023,41.64,56.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.turnin 66834 >>Turn in Rellen, the Learned
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Khansguard Jebotai and talk to him
.goto 2023,41.89,61.80
.turnin 66222 >>Turn in The Calm Before the Storm
.turnin 71027 >>Turn in WANTED: Mara'nar the Thunderous
.accept 70229 >>Accept Boku the Mystic
.target Khansguard Jebotai
step
.goto 2023,36.81,57.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 70229 >>Turn in Boku the Mystic
.accept 66254 >>Accept Pessimistic Mystic
.target Initiate Boku
step
#title Totem 1
>>Place the totem |cffffff00(not shared)|r
.goto 2023,36.71,57.12
.complete 66254,1,1 
step
#title Totem 2
>>Place the totem |cffffff00(not shared)|r
.goto 2023,36.66,57.72
.complete 66254,1,2 
step
#title Totem 3
>>Place the totem |cffffff00(not shared)|r
.goto 2023,37.11,57.85
.complete 66254,1,3 
step
#title Totem 4
>>Place the totem |cffffff00(not shared)|r
.goto 2023,37.20,57.26
.complete 66254,1 
step
.goto 2023,36.81,57.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66254 >>Turn in Pessimistic Mystic
.accept 66224 >>Accept Mystic Mystery
.target Initiate Boku
step
.goto 2023,40.95,61.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Yuvari
.accept 66651 >>Accept Up to No-khud
step
.goto 2023,39.04,66.01
>>Return to Initiate Zorig
.turnin 66651 >>Turn in Up to No-khud
.accept 66652 >>Accept Return to Mender
step
>>Kill |cff00ecffTombcaller Ganzaya
.goto 2023,37.07,65.70
.complete 66652,1 
step
>>Pick up the spear |cffffff00(not shared)|r
.goto 2023,37.03,65.47
.complete 66652,2 
step
.goto 2023,39.05,66.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Zorig
.turnin 66652 >>Turn in Return to Mender
step
>>Follow the arrow |cffffff00(not shared)|r
.goto 2023,44.33,61.78
.complete 66224,1 
step
>>Interact with Boku's Belongings |cffffff00(not shared)|r
.goto 2023,44.55,61.94
.skipgossip
.complete 66224,2 
step
>>Follow the arrow |cffffff00(not shared)|r
.goto 2023,46.35,63.15
.complete 66224,3 
step
>>Interact with the Unidentified Centaur |cffffff00(not shared)|r
.goto 2023,46.52,63.26
.skipgossip
.complete 66224,4 
step
>>Follow the arrow |cffffff00(not shared)|r
.goto 2023,49.09,63.44
.complete 66224,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku and Tigari Khan
.turnin 66224 >>Turn in Mystic Mystery
.goto 2023,49.31,63.22
.accept 70195 >>Accept Taken By Storm
.accept 66225 >>Accept Toting Totems
.goto 2023,49.36,63.14
.target Initiate Boku
.target Tigari Khan
step
#completewith next
>>Kill |cff00ecffNokhud Mystic-Hunter|r and |cff00ecffNokhud Marauders|r. Loot them for their totems |cffffff00(not shared)|r
.complete 66225,1 
step
>>Kill |cff00ecffShela the Windbinder|r. Loot her for the orders |cffffff00(not shared)|r
.goto 2023,48.90,69.03
.complete 70195,1 
.complete 70195,2 
.unitscan Shela the Windbinder
step
>>Kill |cff00ecffNokhud Mystic-Hunter|r and |cff00ecffNokhud Marauders|r. Loot them for their totems
#loop
.line 2023,50.20,68.72,50.86,67.94,51.60,67.66,48.90,66.86,48.90,66.86
.goto 2023,50.20,68.72,20,0
.goto 2023,50.86,67.94,20,0
.goto 2023,51.60,67.66,20,0
.goto 2023,48.90,66.86,20,0
.goto 2023,48.90,66.86,20,0
.complete 66225,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tigari Khan
.goto 2023,49.36,63.14
.turnin 66225 >>Turn in Taken By Storm
.turnin 70195 >>Turn in Taken By Storm
.accept 66236 >>Accept Catching Wind
.target Tigari Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.goto 2023,58.11,68.97
.turnin 66236 >>Turn in Catching Wind
.accept 66257 >>Accept Fowl Sorcery
.accept 66256 >>Accept Eagle-itarian
.accept 66242 >>Accept Weather Control
.target Initiate Boku
step
#completewith OhnahranPlainsChildWagons
>>Kill |cff00ecffPrimalists|r, |cff00ecffEssences|r, and |cff00ecffInitiates|r
.goto 2023,59.95,66.08,0,0
.complete 66256,2 
.complete 66242,1 
.complete 66242,2 
step
#title Child 1 + Wagon 1
>>Destroy the binding totem and place a wind totem
.goto 2023,58.06,67.43
.complete 66256,1,1 
.complete 66257,1,1 
step
#title Wagon 2
>>Place a wind totem
.goto 2023,59.21,65.51
.complete 66257,1,2 
step
#title Child 2
>>Destroy the binding totem
.goto 2023,59.38,64.94
.complete 66256,1,2 
step
#completewith OhnahranPlainsChildWagons
>>Kill her when you see her
.goto 2023,59.90,67.02,10,0
.goto 2023,59.90,67.02,0,0
.accept 69968 >>Accept Prozela Galeshot
.complete 69968,1 
step
#title Child 3
>>Destroy the binding totem
.goto 2023,60.78,66.94
.complete 66256,1,3 
step
#title Child 4
>>Destroy the binding totem
.goto 2023,61.76,67.17
.complete 66256,1,4 
step
#title Wagon 3
>>Place a wind totem
.goto 2023,61.76,66.65
.complete 66257,1,3 
step
#title Child 5
.goto 2023,59.64,64.03
.complete 66256,1,5 
step
#label OhnahranPlainsChildWagons
#title Child 6 + Wagon 4
>>Destroy the binding totem and place a wind totem
.goto 2023,58.82,61.76
.complete 66256,1 
.complete 66257,1 
step
#sticky
#label OhnahranPlainsEagleWeatherControl
.goto 2023,58.24,64.34,25,0
.goto 2023,58.62,68.30,25,0
.goto 2023,59.95,66.08,25,0
.goto 2023,61.46,65.40,25,0
.goto 2023,59.95,66.08,0,0
.complete 66256,2 
.complete 66242,1 
.complete 66242,2 
step
>>Kill her when you see her
.goto 2023,59.90,67.02
.accept 69968 >>Accept Prozela Galeshot
.complete 69968,1 
.unitscan Prozela Galeshott
step
#title Dragon Glyph: Windsong Rise
.goto 2023,61.49,64.33
.achievement 16576,10 >>Pick up the Dragon Glyph in the air
step
#requires OhnahranPlainsEagleWeatherControl
.goto 2023,60.66,63.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66242 >>Turn in Eagle-itarian
.turnin 66256 >>Turn in Eagle-itarian
.turnin 66257 >>Turn in Fowl Sorcery
.accept 66258 >>Accept Oh No, Ohn'ahra!
.target Initiate Boku
step
>>Kill every mob around Ohn'ahra (the big bird). The easiest (and not a lot slower) is to wait at the waypoint position for the big mobs to spawn
*You can skip the next cutscene
.goto 2023,61.04,64.88
.complete 66258,1 
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>Wait for the roleplay
.complete 66258,2 
step
.goto 2023,61.42,62.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66258 >>Turn in Oh No, Ohn'ahra!
step
.goto 2023,56.26,75.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.turnin -65906 >>Turn in A Disgruntled Initiate
.accept 65901 >>Accept Sneaking Out
step
#title Totem 1/3
>>Place the totem
.goto 2023,56.67,76.29
.complete 65901,1,1 
step
#title Totem 2/3
>>Place the totem
.goto 2023,57.36,76.33
.complete 65901,1,2 
step
#title Totem 3/3
>>Place the totem
.goto 2023,57.00,75.47
.complete 65901,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.goto 2023,56.25,75.95
.skipgossip 190014,3
.complete 65901,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFollow the arrow to the north and talk to Initiate Radiya
.goto 2023,54.78,66.41
.turnin 65901 >>Turn in Sneaking Out
.accept 65907 >>Accept Favorite Fruit
step
>>Pick up the Wild Bushfruits from the bushes on the ground |cffffff00(you can leave your other characters at the quest giver)|r
.goto 2023,54.02,70.80
.complete 65907,1 
step
>>Use |T134001:0|t[Wild Bushfruit] on the Mudstompers
.goto 2023,54.61,67.59
.use 192743
.complete 65907,2 
step
.goto 2023,54.78,66.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.turnin 65907 >>Turn in Favorite Fruit
.accept 65770 >>Accept A Promise Is A Promise
step
.goto 2023,54.78,66.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya again
.skipgossip
.complete 65770,1 
step
>>Follow the arrow
.goto 2023,52.98,63.88
.complete 65770,2 
step
.goto 2023,52.02,63.24
>>Return to Godoloto
.turnin 65770 >>Turn in A Promise Is A Promise
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sentinel Olekk and Scout Watu
.goto 2023,81.03,58.91
.turnin -65837 >>Turn in Trouble In The Pines
.accept 66681 >>Accept Tempests Abound
.accept 66680 >>Accept Counting Sheep
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo and buy 1 Diced Meat
.goto 2023,80.64,58.76
.buy 193890,1
.complete 66680,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wish
.goto 2023,81.03,59.53
.skipgossip
.complete 66680,2 
step
#completewith OhnahranPlainsCountingSheep
>>Kill mostly |cff00ecffStags|r, |cff00ecffDoes|r and |cff00ecffVultures|r. Avoid the bears
.complete 66681,1 
step
#completewith OhnahranPlainsCountingSheep
>>Kill a |cff00ecffStormbound Beast|r. Loot it for the Stormbound Shards. Click it in your inventory |cffffff00(not shared)|r
.collect 194031,1,66689,1
.accept 66689 >>Accept More Than a Rock
step
#title Argali Saved 1
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali |cffffff00(not shared)|r
.goto 2023,80.49,63.11
.use 193892
.complete 66680,3,1 
step
#title Argali Saved 2
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali |cffffff00(not shared)|r
.goto 2023,80.60,65.37
.use 193892
.complete 66680,3,2 
step
#title Argali Saved 3
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali |cffffff00(not shared)|r
.goto 2023,81.21,65.83
.use 193892
.complete 66680,3,3 
step
#title Argali Saved 4
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali |cffffff00(not shared)|r
.goto 2023,81.83,66.19
.use 193892
.complete 66680,3,4 
step
#label OhnahranPlainsCountingSheep
#title Argali Saved 5
>>Use |T135158:0|t[Wish's Wistle] on Lost Argali |cffffff00(not shared)|r
.goto 2023,82.45,64.41
.use 193892
.complete 66680,3 
step
>>Kill mostly |cff00ecffStags|r, |cff00ecffDoes|r and |cff00ecffVultures|r. Avoid the bears
.goto 2023,82.39,64.69,25,0
#loop
.line 2023,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.complete 66681,1 
step
>>Kill a |cff00ecffStormbound Beast|r. Loot it for the Stormbound Shards. Click it in your inventory |cffffff00(not shared)|r
.collect 194031,1,66689,1
.goto 2023,82.34,64.59
.accept 66689 >>Accept More Than a Rock
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66680 >>Turn in More Than A Rock
.turnin 66681 >>Turn in Tempests Abound
.turnin 66689 >>Turn in More Than A Rock
.accept 66683 >>Accept Last Resort Analysis
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Basan
.goto 2023,80.96,59.52
.skipgossip 1
.complete 66683,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo
.goto 2023,80.64,58.76
.skipgossip 2
.complete 66683,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nakeena
.goto 2023,80.44,57.89
.skipgossip 2
.complete 66683,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66683 >>Turn in Last Resort Analysis
.accept 65836 >>Accept Show of Storm
step
>>Follow the arrow
.goto 2023,83.62,60.66
.complete 65836,1 
step
>>Kill the |cff00ecffStormed Blackpaw|r
.goto 2023,83.99,60.79
.complete 65836,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,83.98,60.73
.turnin 65836 >>Turn in Show of Storm
.accept 66684 >>Accept Storm Chasing
step
#completewith next
>>Kill the |cff00ecffPrimalist Forces|r
.goto 2023,84.89,62.83,0,0
.complete 66684,1 
step
>>Click on the Storm Pylon
.goto 2023,85.03,64.14
.complete 66684,2 
step
#completewith next
>>Kill the |cff00ecffPrimalist Forces|r
.goto 2023,84.89,62.83
.complete 66684,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,80.85,58.96
.turnin 66684 >>Turn in Storm Chasing
step
.isWorldQuestAvailable 2023,70146
>>Kill mobs in the area
.goto 2023,83.27,55.61,25,0
.goto 2023,83.71,53.87,25,0
.goto 2023,84.92,53.38,25,0
.goto 2023,85.88,54.09,25,0
.goto 2023,84.53,55.87,25,0
#loop
.line 2023,83.27,55.61,83.71,53.87,84.92,53.38,85.88,54.09,84.53,55.87
.goto 2023,83.27,55.61,25,0
.goto 2023,83.71,53.87,25,0
.goto 2023,84.92,53.38,25,0
.goto 2023,85.88,54.09,25,0
.goto 2023,84.53,55.87,25,0
.accept 70146 >>Accept Highlands Rebuttal (Bonus Objective)
.complete 70146,1 
step
.isWorldQuestAvailable 2023,70638
>>Kill |cff00ecffUnleashed Storms|r and |cff00ecffWindfiends|r
.goto 2023,74.09,71.38
.complete 70638,1 
.complete 70638,2 
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup Threads of Fate Multibox 60-70
#name D4Thaldraszus Multibox
#displayname Chapter 4 - Thaldraszus Multibox (End)
step
.xp 70,1
#completewith next
+Welcome to the Thaldraszus ToF Guide of RestedXP.
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.accept 66134 >>Accept Azeroth Pest Control
step
.xp 70,1
>>Kill |cff00ecffAgitated Seedlings|r
.goto 2025,38.34,74.99,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
#loop
.line 2025,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66
.goto 2025,38.34,74.99,18,0
.goto 2025,18.00,38.33,18,0
.goto 2025,75.60,37.69,18,0
.goto 2025,76.04,37.23,18,0
.goto 2025,76.66,38.34,18,0
.goto 2025,74.99,18.00,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
.complete 66134,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66134 >>Turn in Azeroth Pest Control
.accept 66135 >>Accept The Gardener's Apprentice
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on the Bronze Stopwatch on the ground |cffffff00(not shared)|r
.goto 2025,38.91,74.25
.accept 66278 >>Accept One Drakonid's Junk
step
.xp 70,1
>>Click on the Storage Crates, Ruined Barrels, Garden Junk and Scrap Wood to clear the room
.goto 2025,38.94,74.18
.complete 66135,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66135 >>Turn in The Gardener's Apprentice
.turnin 66278 >>Turn in One Drakonid's Junk
.accept 66136 >>Accept Elemental Extract
.accept 66137 >>Accept Lashing Out
.accept 66279 >>Accept New Kid on the Clock
step
.xp 70,1
>>Click on Lord Basilton on the ground
.goto 2025,37.88,75.44
.complete 66279,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.complete 66279,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66279 >>Turn in New Kid on the Clock
.accept 66138 >>Accept Like Sands Through the Hourglass
step
.xp 70,1
#title Pile of Sand 1/8
>>Pick up the sand on the ground
.goto 2025,35.52,72.78
.complete 66138,1,1 
step
.xp 70,1
#title Pile of Sand 2/8
>>Pick up the sand on the ground
.goto 2025,35.69,72.60
.complete 66138,1,2 
step
.xp 70,1
#title Pile of Sand 2/8
>>Pick up the sand on the ground
.goto 2025,35.69,72.60
.complete 66138,1,2 
step
.xp 70,1
#title Pile of Sand 4/8
>>Pick up the sand on the ground
.goto 2025,35.83,72.77,-1
.goto 2025,35.81,72.48,-1
.complete 66138,1,4 
step
.xp 70,1
#title Pile of Sand 5/8
>>Pick up the sand on the ground
.goto 2025,36.02,72.57
.complete 66138,1,5 
step
.xp 70,1
#title Pile of Sand 6/8
>>Pick up the sand on the ground
.goto 2025,36.22,72.42
.complete 66138,1,6 
step
.xp 70,1
#title Pile of Sand 7/8
>>Pick up the sand on the ground
.goto 2025,36.47,72.43
.complete 66138,1,7 
step
.xp 70,1
#title Pile of Sand 8/8
>>Pick up the sand on the ground
.goto 2025,36.61,72.69
.complete 66138,1 
step
.xp 70,1
>>Kill |cff00ecffLiskron the Dazzling|r. Skip if you deal low damage
.goto 2025,36.24,72.50
.accept 72116 >>Accept Liskron the Dazzling (Elite Objective)
.complete 72116,1 
step
.xp 70,1
>>Kill |cff00ecffChurning Splahes|r and |cff00ecffHulking Waves|r. Loo them for their essence |cffffff00(not shared)|r
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,18,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
#loop
.line 2025,37.51,71.73,37.40,70.99,37.32,69.70,36.88,70.49,36.88,71.21
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,20,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
.complete 66136,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66138 >>Turn in Like Sands Through the Hourglass
step
.xp 70,1
>>Kill |cff00ecffLashers in the area|r
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71,67,20,0
#loop
.line 2025,34.73,72.95,33.89,72.63,34.16,71.85,34.60,71,67,34.79,72.37
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71.00,20,0
.goto 2025,67.00,34.79,20,0
.complete 66137,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66136 >>Turn in Elemental Extract
.turnin 66137 >>Turn in Lashing Out
.accept 66139 >>Accept Flame at Last
step
.xp 70,1
>>Use |T236213:0|t[Concentrated Essence of Water] on the |cff00ecffBlazing Inferno|r and kill it
.goto 2025,35.58,75.16
.complete 66139,1 
.complete 66139,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66139 >>Turn in Flame at Last
.accept 66412 >>Accept Carry On, Basilton
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Basilton
.goto 2025,37.88,75.44
.complete 66412,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.47
.turnin 66412 >>Turn in Carry On, Basilton
step
.xp 70,1
.goto 2112,48.09,59.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hot Springs Spa Promoter
.accept 72067 >>Accept Relaxation Time!
step
.xp 70,1
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2112,58.15,34.90
.accept 66159 >>Accept A Message Most Dire
.skipgossip 187678,1
.complete 66159,1 
.target Alexstrasza the Life-Binder
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder and Captain Drine
.turnin 66159 >>Turn in A Message Most Dire
.goto 2112,58.15,34.90
.accept 66166 >>Accept Eyes and Ears
.accept 66163 >>Accept Nowhere to Hide
.goto 2112,59.39,34.83
.target Alexstrasza the Life-Binder
.target Captain Drine
step
.xp 70,1
#title Dragon Glyph: Valdrakken
.goto 2112,59.52,38.27
.achievement 16578,4 >>Pick up the Dragon Glyph |cffffff00above you above the tower|r
step
.xp 70,1
#sticky
#label ThaldraszusNowheretoHide
>>Use |T317244:0:0|tRevealing Dragon's Eye |cffffff00on every character|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cff00ff00Valdrakken Citizens|r marked on your (mini)map
.use 198859
.goto 2112,54.72,61.41,0
.goto 2112,51.12,62.54,0
.goto 2112,48.43,58.09,0
.goto 2112,50.54,50.77,0
.goto 2112,48.85,47.73,0
.goto 2112,35.85,56.65,0
.goto 2112,36.17,64.03,0
.goto 2112,41.60,65.28,0
.goto 2112,39.93,71.38,0
.goto 2112,37.98,71.29,0
.goto 2112,49.17,76.43,0
.goto 2112,52.35,76.87,0
.goto 2112,54.31,70.02,0
.goto 2112,40.11,51.80,0
.goto 2112,27.45,60.38,0
.goto 2112,25.16,64.89,0
.goto 2112,32.18,68.50,0
.goto 2112,31.40,62.95,0
.skipgossip
.complete 66163,1 
.complete 66163,2 
step
.xp 70,1
#completewith next
.goto 2112,55.50,57.34,15 >>Glide down with your dragonriding mount and enter the bank
step
.xp 70,1
>>Interact with the storage chest
.goto 2112,59.18,54.69
.complete 66166,2 
step
.xp 70,1
#completewith next
.goto 2112,48.43,49.90,8 >>Enter the inn
step
.xp 70,1
>>Interact with the Goblet
.goto 2112,46.94,47.74
.complete 66166,3 
step
.xp 70,1
#completewith next
.goto 2112,47.45,46.22
.home >>Set your Hearthstone to The Roasted Ram
step
.xp 70,1
#completewith next
.goto 2112,48.43,49.90,8 >>Leave the inn
step
.xp 70,1
>>Interact with the Consortium Ledger |cffffff00(you could search for the Infiltrators on your other characters during the cast)|r
.goto 2112,34.66,61.30
.complete 66166,1 
step
.xp 70,1
#requires ThaldraszusNowheretoHide
.goto 2112,54.72,47.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66163 >>Turn in Nowhere to Hide
.turnin 66166 >>Turn in Eyes and Ears
.accept 66167 >>Accept Southern Exposure
.target Captain Drine
step
.xp 70,1
>>Follow the arrow
.goto 2025,35.80,82.12
.complete 66167,1 
step
.xp 70,1
>>Interact with Guardian Velomir
.goto 2025,35.85,82.56
.complete 66167,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,35.85,82.56
.turnin 66167 >>Turn in Southern Exposure
.accept 66169 >>Accept Vengeance, Served Hot
.accept 66246 >>Accept The Fog of Battle
.target Guardian Velomir
step
.xp 70,1
#completewith ThaldraszusLookoutMordren
>>Kill |cff00ecffMagmasworn Primalists|r
.goto 2025,36.65,84.36,0,0
.complete 66169,1 
step
.xp 70,1
>>Interact with the |cff00ff00Mangled Corpse|r |cffffff00(not shared)|r
#title Unit Found 1
.goto 2025,36.25,83.73
.skipgossip
.complete 66246,1,1 
step
.xp 70,1
#completewith next
+Fly up with your dragonriding mount
step
.xp 70,1
>>Interact with the |cff00ff00Mangled Corpse|r |cffffff00(not shared)|r
#title Unit Found 2
.goto 2025,35.76,84.19
.skipgossip
.complete 66246,1,2 
step
.xp 70,1
>>Interact with the |cff00ff00Mangled Corpse|r |cffffff00(not shared)|r
#title Unit Found 3
.goto 2025,36.46,85.39
.skipgossip
.complete 66246,1,3 
step
.xp 70,1
#label ThaldraszusLookoutMordren
>>Fly up the tower and kill |cff00ecffLookout Mordren|r. Skip if you deal low damage
.goto 2025,36.80,85.59
.accept 69967 >>Accept Lookout Mordren
.complete 69967,1 
step
.xp 70,1
>>Kill |cff00ecffMagmasworn Primalists|r
.goto 2025,36.67,83.38,20,0
.goto 2025,36.65,84.36,20,0
.goto 2025,36.08,84.59,20,0
.goto 2025,36.67,83.38
.complete 66169,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir.
.goto 2025,37.62,83.08
.turnin 66169 >>Turn in Vengeance, Served Hot
.turnin 66246 >>Turn in The Fog of Battle
.accept 66245 >>Accept Remember the Fallen
.target Guardian Velomir
step
.xp 70,1
>>Interact with the Magmasworn Spear
.goto 2025,37.85,83.26
.accept 66247 >>Accept Slightly Used Weapons
step
.xp 70,1
>>Glide down and talk to Private Shikzar. Look for him up & down the road. Skip if you deal low damage
.goto 2025,37.54,86.05,100,0
.goto 2025,37.44,82.26,100,0
.goto 2025,37.54,86.05,100,0
.goto 2025,37.44,82.26
.skipgossip
.accept 70986 >>Accept Private Shikzar
.complete 70986,1 
step
.xp 70,1
.goto 2025,38.56,83.41
>>Interact with the Coil of Heavy Rope
.accept 66248 >>Accept Tying Things Together
step
.xp 70,1
#completewith ThaldraszusRemembertheThingsTogether
>>Kill |cff00ecffMagmasworn Rockcleaver|r. Loot them for their spears. |cffffff00(not shared)|r
.goto 2025,38.70,84.41,0,0
.complete 66247,1 
step
.xp 70,1
#title |T1408443:0:0|tSignet 1
>>Interact with the corpse on the ground |cffffff00(not shared)|r
.goto 2025,38.89,84.05
.complete 66245,1,1 
step
.xp 70,1
#title |T1119938:0:0|tRope 1
>>Loot the rope |cffffff00(not shared)|r
.goto 2025,39.14,84.03
.complete 66248,1,1 
step
.xp 70,1
#title |T1408443:0:0|tSignet 2
>>Interact with the corpse on the ground |cffffff00(not shared)|r
.goto 2025,39.37,83.93
.complete 66245,1,2 
step
.xp 70,1
#title |T1119938:0:0|tRope 2
>>Loot the rope |cffffff00(not shared)|r
.goto 2025,39.47,83.83
.complete 66248,1,2 
step
.xp 70,1
#title |T1408443:0:0|tSignet 3
>>Interact with the corpse on the ground |cffffff00(not shared)|r
.goto 2025,39.22,83.63
.complete 66245,1,3 
step
.xp 70,1
#title |T1408443:0:0|tSignet 4
>>Interact with the corpse on the ground |cffffff00(not shared)|r
.goto 2025,39.21,83.18
.complete 66245,1,4 
step
.xp 70,1
#title |T1119938:0:0|tRope 3
>>Loot the rope |cffffff00(not shared)|r
.goto 2025,39.45,82.52
.complete 66248,1,3 
step
.xp 70,1
#title |T1408443:0:0|tSignet 5
>>Interact with the corpse on the ground |cffffff00(not shared)|r
.goto 2025,39.69,82.10
.complete 66245,1,5 
step
.xp 70,1
#title |T1408443:0:0|tSignet 6
>>Interact with the corpse on the ground |cffffff00(not shared)|r
.goto 2025,39.47,81.77
.complete 66245,1,6 
step
.xp 70,1
#title |T1408443:0:0|tSignet 7
>>Interact with the corpse on the ground |cffffff00(not shared)|r
.goto 2025,39.00,81.90
.complete 66245,1,7 
step
.xp 70,1
#title |T1408443:0:0|tSignet 7 + |T1119938:0:0|tRope 4
>>Interact with the corpse on the ground |cffffff00(not shared)|r
.goto 2025,39.09,82.54
.complete 66245,1,7 
.complete 66248,1,4 
step
.xp 70,1
#title |T1119938:0:0|tRope 5
>>Loot the rope |cffffff00(not shared)|r
.goto 2025,38.74,82.18
.complete 66248,1 
step
.xp 70,1
#label ThaldraszusRemembertheThingsTogether
#title |T1408443:0:0|tSignet 8
>>Interact with the corpse on the ground |cffffff00(not shared)|r
.goto 2025,39.00,81.90
.complete 66245,1 
step
.xp 70,1
>>Kill |cff00ecffMagmasworn Rockcleaver|r. Loot them for their spears. |cffffff00(not shared)|r
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
#loop
.line 2025,39.24,83.73,39.05,86.20,39.46,82.15,38.47,83.06,39.09,83.09,38.56,84.65
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
.goto 2025,38.56,84.65,20,0
.complete 66247,1 
step
.xp 70,1
.goto 2025,37.63,83.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.turnin 66245 >>Turn in Remember the Fallen
.turnin 66247 >>Turn in Slightly Used Weapons
.turnin 66248 >>Turn in Tying Things Together
.accept 66249 >>Accept Clear the Sky
.target Guardian Velomir
step
.xp 70,1
>>Mount the Siege Scorpion |cffffff00(not shared, enter the siege scorpion with each character, the killing is shared)|r
.goto 2025,40.88,83.88
.complete 66249,1 
step
.xp 70,1
>>Look around and spam |T1412205:0:0|tSiege Bolt (1) to kill |cff00ecffMagmasworn Trueborn|r
.goto 2025,40.88,83.88
.complete 66249,2 
step
.xp 70,1
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.56,85.48
.turnin 66249 >>Turn in Clear the Sky
.accept 66250 >>Accept Where's The Chief?
.target Guardian Velomir
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
*You can skip the next cinematic
.goto 2025,40.19,85.16
.skipgossip
.complete 66250,1 
.target Guardian Velomir
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.13
.turnin 66250 >>Turn in Where's The Chief?
.accept 66251 >>Accept Fire Fighter
.target Guardian Velomir
step
.xp 70,1
>>Use a range ability to pull him down
.goto 2025,40.12,86.61
.complete 66251,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.14
.turnin 66251 >>Turn in Fire Fighter
.accept 66252 >>Accept Reporting In
.target Guardian Velomir
step
.xp 70,1
#completewith next
.cooldown item,6489,>0,1
.hs >>Hearth to Valdrakken
step
.xp 70,1
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.xp 70,1
.goto 2112,55.94,39.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66252 >>Turn in Reporting In
.target Captain Drine
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2112,61.56,39.13
.accept 66320 >>Accept The Flow of Time
.target Nozdormu
step
.xp 70,1
.goto 2025,40.42,49.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Spa Concierge
.turnin -72067 >>Turn in Relaxation Time!
.accept 72246 >>Accept Serene Dreams
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 72246 >>Turn in Serene Dreams
.accept 70738 >>Accept The You-ga Class
.goto 2025,40.49,48.93
.accept 70740 >>Accept Steam Cleaning
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith ThaldraszusTheYougaClass
>>Kill |cff00ecffElementals|r
.complete 70740,1 
step
.xp 70,1
.goto 2025,41.47,47.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Misplaced Luggage
.accept 70741 >>Accept Some Favorite Things
step
.xp 70,1
>>Rescue the Youga Instructor |cffffff00(not shared)|r
.goto 2025,41.17,47.49
.complete 70738,2 
step
.xp 70,1
#title Belongings Found 2/6
>>Pick up the book on the ground |cffffff00(not shared)|r
.goto 2025,41.16,47.43
.complete 70741,1,2 
step
.xp 70,1
#title Student Rescued 1/6
>>Rescue the student |cffffff00(not shared)|r
.goto 2025,41.45,47.04
.complete 70738,1,1 
step
.xp 70,1
#title Student Rescued 2/6
>>Rescue the student |cffffff00(not shared)|r
.goto 2025,41.06,46.81
.complete 70738,1,2 
step
.xp 70,1
#title Belongings Found 3/6
>>Pick up the Lost S.E.L.F.I.E Camera |cffffff00(not shared)|r
.goto 2025,40.72,47.31
.complete 70741,1,3 
step
.xp 70,1
#title Student Rescued 3/6
>>Rescue the student |cffffff00(not shared)|r
.goto 2025,40.51,47.31
.complete 70738,1,3 
step
.xp 70,1
#title Student Rescued 4/6
>>Rescue the student |cffffff00(not shared)|r
.goto 2025,40.18,46.94
.complete 70738,1,4 
step
.xp 70,1
#title Belongings Found 4/6
>>Pick up the Stylish Umbrella |cffffff00(not shared)|r
.goto 2025,40.10,46.61
.complete 70741,1,4 
step
.xp 70,1
#title Belongings Found 5/6
>>Pick up the Overturned Beach Chair
.goto 2025,40.27,46.16
.complete 70741,1,5 
step
.xp 70,1
#title Student Rescued 5/6
>>Rescue the student |cffffff00(not shared)|r
.goto 2025,40.03,45.98
.complete 70738,1,5 
step
.xp 70,1
#title Student Rescued 6/6
>>Rescue the student |cffffff00(not shared)|r
.goto 2025,40.81,46.09
.complete 70738,1 
step
.xp 70,1
#label ThaldraszusTheYougaClass
#title Belongings Found 6/6
>>Pick up the Soggy You-ga Pillow |cffffff00(not shared)|r
.goto 2025,41.01,45.96
.complete 70741,1 
step
.xp 70,1
>>Kill |cff00ecffElementals|r
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
#loop
.line 2025,39.99,45.69,39.46,47.37,40.46,48.00,41.48,47.33,40.98,45.52
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
.complete 70740,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 70738 >>Turn in The You-ga Class
.turnin 70741 >>Turn in Some Favorite Things
.goto 2025,40.49,48.92
.turnin 70740 >>Turn in Steam Cleaning
.goto 2025,40.46,48.88
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara
.goto 2025,40.49,48.97
.accept 70743 >>Accept Precious Baby
step
.xp 70,1
>>Follow the arrow
.goto 2025,38.90,45.22
.complete 70743,1 
step
.xp 70,1
>>Wait for the roleplay and click on the puppy |cffffff00(not shared)|r
.goto 2025,38.90,45.22
.complete 70743,2 
step
.xp 70,1
.goto 2025,38.89,45.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Horrible Mess
.accept 70744 >>Accept Look at the Bones!
step
.xp 70,1
#title Cleaned Mess 2/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.92,45.22
.complete 70744,1,2 
step
.xp 70,1
#title Cleaned Mess 3/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.52,45.73
.complete 70744,1,3 
step
.xp 70,1
#title Cleaned Mess 4/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.65,46.19
.complete 70744,1,4 
step
.xp 70,1
#title Cleaned Mess 5/10
>>Pick up More Horrible Mess off the ground
.goto 2025,37.91,46.22
.complete 70744,1,5 
step
.xp 70,1
#title Cleaned Mess 6/10
>>Pick up More Horrible Mess off the ground
.goto 2025,37.79,46.29
.complete 70744,1,6 
step
.xp 70,1
#title Cleaned Mess 7/10
>>Pick up More Horrible Mess off the ground
.goto 2025,38.03,47.10
.complete 70744,1,7 
step
.xp 70,1
#title Cleaned Mess 8/10
>>Pick up More Horrible Mess off the ground
.goto 2025,39.18,47.34
.complete 70744,1,8 
step
.xp 70,1
#title Cleaned Mess 9/10
>>Pick up More Horrible Mess off the ground
.goto 2025,39.56,47.21
.complete 70744,1,9 
step
.xp 70,1
#title Cleaned Mess 10/10
>>Pick up More Horrible Mess off the ground
.goto 2025,39.70,47.88
.complete 70744,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara and Quillius
.turnin 70743 >>Turn in Precious Baby
.turnin 70744 >>Turn in Look at the Bones!
.goto 2025,40.49,48.97
.accept 70745 >>Accept Enforced Relaxation
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith next
.goto 2025,39.69,47.45,20,0
.goto 2025,39.89,48.45,15 >>Enter the cave below
step
.xp 70,1
>>Kill |cff00ecffVadme Blackheart|r. Move out of the fire and water void zones
.goto 2025,40.04,49.05
.complete 70745,1 
step
.xp 70,1
.goto 2025,40.46,48.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quilius
.turnin 70745 >>Turn in Enforced Relaxation
step
.xp 70,1
.goto 2025,54.68,69.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.accept 66100 >>Accept Supplying in Weight
.accept 66230 >>Accept A Sketchy Request
step
.xp 70,1
#completewith ThaldraszusSupplyinginWeight
>>Kill |cff00ecffEmebertooths|r. Loot them for the key
.complete 66230,1 
step
.xp 70,1
#title Supplies 1/6
>>Pick up the Waywatcher Supplies |cffffff00(not shared)|r
.goto 2025,55.07,68.67
.complete 66100,1,1 
step
.xp 70,1
#title Supplies 2/6
>>Pick up the Waywatcher Supplies |cffffff00(not shared)|r
.goto 2025,55.18,68.11
.complete 66100,1,2 
step
.xp 70,1
#title Supplies 3/6
>>Pick up the Waywatcher Supplies |cffffff00(not shared)|r
.goto 2025,55.51,68.43
.complete 66100,1,3 
step
.xp 70,1
#title Supplies 4/6
>>Pick up the Waywatcher Supplies |cffffff00(not shared)|r
.goto 2025,55.73,68.11
.complete 66100,1,4 
step
.xp 70,1
#label ThaldraszusSupplyinginWeight
#title Supplies 5/6
>>Pick up the Waywatcher Supplies |cffffff00(not shared)|r
.goto 2025,55.54,69.35
.complete 66100,1,5 
step
.xp 70,1
>>Kill |cff00ecffEmebertooths|r. Loot them for the key |cffffff00(not shared)|r
.goto 2025,55.51,69.03
.complete 66230,1 
step
.xp 70,1
>>Open the Tarasek Lockbox |cffffff00(not shared)|r
.goto 2025,55.53,69.37
.complete 66230,2 
step
.xp 70,1
#title Supplies 6/6
>>Pick up the Waywatcher Supplies |cffffff00(not shared)|r
.goto 2025,55.93,68.61
.complete 66100,1 
step
.xp 70,1
.goto 2025,56.95,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.turnin 66100 >>Turn in Supplying in Weight
.turnin 66230 >>Turn in A Sketchy Request
.accept 66456 >>Accept A Poisonous Palette
.accept 66457 >>Accept Ending the Blue Period
step
.xp 70,1
#completewith ThaldraszusEndingtheBluePeriod
>>Kill |cff00ecffEmbertooth Spearhunter|r. Loot them for their spears
.complete 66456,1 
step
.xp 70,1
#completewith next
.goto 2025,55.78,71.02,15 >>Enter the cave
step
.xp 70,1
#label ThaldraszusEndingtheBluePeriod
>>Kill |cff00ecffBluescale|r
.complete 66457,1 
step
.xp 70,1
>>Kill |cff00ecffEmbertooth Spearhunter|r. Loot them for their spears
.goto 2025,55.31,71.58,25,0
.goto 2025,55.27,70.46,25,0
.goto 2025,56.22,69.87,25,0
.goto 2025,56.37,70.42,25,0
.goto 2025,55.75,70.94,25,0
#loop
.line 2025,55.31,71.58,55.27,70.46,56.22,69.87,56.37,70.42,55.75,70.94
.goto 2025,55.31,71.58,30,0
.goto 2025,55.27,70.46,30,0
.goto 2025,56.22,69.87,30,0
.goto 2025,56.37,70.42,30,0
.goto 2025,55.75,70.94,30,0
.complete 66456,1 
step
.xp 70,1
.goto 2025,56.94,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.turnin 66456 >>Turn in A Poisonous Palette
.turnin 66457 >>Turn in Ending the Blue Period
step
.xp 70,1
.goto 2025,56.94,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.accept 66465 >>Accept Cache and Release
.accept 66467 >>Accept Art Imitates Life
step
.xp 70,1
#title Cache Destroyed 1/8
.goto 2025,56.90,66.44
>>Destroy the Spear Cache
.complete 66465,1,1 
step
.xp 70,1
#title Cache Destroyed 2/8
.goto 2025,57.27,66.15
>>Destroy the Spear Cache
.complete 66465,1,2 
step
.xp 70,1
#title Cache Destroyed 3/8
.goto 2025,57.45,66.89
>>Destroy the Spear Cache
.complete 66465,1,3 
step
.xp 70,1
#title Cache Destroyed 4/8
.goto 2025,57.83,66.38
>>Destroy the Spear Cache
.complete 66465,1,4 
step
.xp 70,1
#title Cache Destroyed 5/8
.goto 2025,58.15,66.11
>>Destroy the Spear Cache
.complete 66465,1,5 
step
.xp 70,1
#title Cache Destroyed 6/8
.goto 2025,58.33,66.32
>>Destroy the Spear Cache
.complete 66465,1,6 
step
.xp 70,1
#title Cache Destroyed 7/8
.goto 2025,58.30,66.40
>>Destroy the Spear Cache
.complete 66465,1,7 
step
.xp 70,1
#title Cache Destroyed 8/8
.goto 2025,58.17,66.77
>>Destroy the Spear Cache
.complete 66465,1 
step
.xp 70,1
>>Kill the |cff00ecffGreater Venomsprout|r
.goto 2025,58.30,67.16
.complete 66467,1 
step
.xp 70,1
.goto 2025,54.65,69.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave the cave and talk to Waywatcher Alvi
.turnin 66465 >>Turn in Cache and Release
.turnin 66467 >>Turn in Art Imitates Life
step
.xp 70,1
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie and wait for the roleplay |cffffff00(not shared)|r
>>|cffffff00Spend your Dragon Glyphs while waiting for the roleplay|r
.skipgossip 187100,1
.timer 44,Roleplay Duration
.complete 66320,1 
.target Chromie
step
.xp 70,1
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 66320 >>Turn in The Flow of Time
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2025,57.53,78.79
.accept 66080 >>Accept Temporal Difficulties
.target Andantenormu
step
.xp 70,1
>>Be careful not to get knocked off
.goto 2025,55.60,77.33
.accept 69873 >>Accept Henlare (Elite Objective)
.complete 69873,1 
step
.xp 70,1
>>Follow the arrow
.goto 2025,54.99,75.64
.complete 66080,1 
step
.xp 70,1
.goto 2025,54.96,75.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66080 >>Turn in Temporal Difficulties
.accept 70136 >>Accept Haven't Got Time For the Pain
.target Siaszerathel
step
.xp 70,1
#sticky
#label ThaldraszusHaventGotTimeForStaff
>>Pick up the staff |cffffff00(not shared)|r
.goto 2025,52.72,76.86,0,0
.complete 70136,1 
step
.xp 70,1
>>Kill the |cff00ecffCrazed Alpha|r
.goto 2025,52.69,76.81
.complete 70136,3 
step
.xp 70,1
#requires ThaldraszusHaventGotTimeForStaff
>>Pick up the notes |cffffff00(not shared)|r
.goto 2025,53.18,77.39
.complete 70136,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,54.96,75.65
.turnin 70136 >>Turn in Haven't Got Time For the Pain
.accept 66082 >>Accept Time in a Bottle
.accept 66081 >>Accept Time is Running Out
.target Siaszerathel
step
.xp 70,1
#sticky
#label ThaldraszusTimeinaBottle
.goto 2025,54.25,76.62,0,0
>>Kill mobs in the area and run through the Time Mote (glowing orbs)
*Sadly others can steal your orbs :(
.complete 66082,1 
step
.xp 70,1
#title Collector 1
>>Pick up the collector |cffffff00(not shared)|r
.goto 2025,55.07,76.76
.complete 66081,1,1 
step
.xp 70,1
#title Collector 2
>>Pick up the collector |cffffff00(not shared)|r
.goto 2025,55.57,76.80
.complete 66081,1,2 
step
.xp 70,1
#title Collector 3
>>Pick up the collector |cffffff00(not shared)|r
.goto 2025,56.48,78.08
.complete 66081,1,3 
step
.xp 70,1
#title Collector 4
>>Pick up the collector |cffffff00(not shared)|r
.goto 2025,55.60,78.95
.complete 66081,1,4 
step
.xp 70,1
#title Collector 5
>>Pick up the collector |cffffff00(not shared)|r
.goto 2025,55.02,78.81
.complete 66081,1,5 
step
.xp 70,1
#title Collector 6
>>Pick up the collector |cffffff00(not shared)|r
.goto 2025,55.20,77.85
.complete 66081,1,6 
step
.xp 70,1
#title Collector 7
>>Pick up the collector |cffffff00(not shared)|r
.goto 2025,54.34,77.86
.complete 66081,1,7 
step
.xp 70,1
#title Collector 8
>>Pick up the collector |cffffff00(not shared)|r
.goto 2025,54.25,76.62
.complete 66081,1 
step
.xp 70,1
#requires ThaldraszusTimeinaBottle
.goto 2025,57.45,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66082 >>Turn in Time in a Bottle
.turnin 66081 >>Turn in Time is Running Out
.timer 10,Roleplay Duration
.target Siaszerathel
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu after a short roleplay
.goto 2025,57.52,78.79
.accept 66083 >>Accept Feels Like the First Time
.timer 20,Roleplay Duration
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Andantenormu and talk to him |cffffff00(not shared)|r
.goto 2025,57.58,78.37
.skipgossip
.complete 66083,1 
.target Andantenormu
step
.xp 70,1
>>Interact with the Temporal Collector |cffffff00(not shared)|r
.goto 2025,57.68,78.33
.complete 66083,2 
step
.xp 70,1
>>Interact with the Crystal Focus |cffffff00(not shared)|r
.goto 2025,57.66,78.39
.complete 66083,3 
step
.xp 70,1
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
.xp 70,1
>>Interact with the Time-Lost Artifact |cffffff00(not shared)|r
.goto 2025,57.64,78.46
.complete 66083,4 
.timer 90,Roleplay Duration
step
.xp 70,1
>>Wait until Andantenormu brings you back. You can also go through the time portal |cffffff00(not shared)|r
.complete 66083,5 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Andantenormu and talk to him
.goto 2025,57.52,78.79
.turnin 66083 >>Turn in Feels Like the First Time
.accept 66084 >>Accept Times Like These
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,57.45,78.92
.accept 66085 >>Accept If We Could Turn Back Time
.target Siaszerathel
step
.xp 70,1
#completewith next
.goto 2025,57.62,79.02
.fp >>Get the Shifting Sands Flight Path
step
.xp 70,1
#completewith ThaldraszusIfWeCouldTurnBackTime
>>Kill mostly |cff00ecffmurlocs|r in the area. Loot them for the residue |cffffff00(not shared)|r
.complete 66084,1 
step
.xp 70,1
>>Interact with the Time Rift
.goto 2025,58.59,78.21
.complete 66085,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel |cffffff00(not shared)|r
.goto 2025,59.80,79.31
.skipgossip
.timer 5,Roleplay Duration
.complete 66085,2 
.target Siaszerathel
step
.xp 70,1
>>Interact with the Time Rift
.goto 2025,60.00,79.28
.complete 66085,3 
step
.xp 70,1
>>Interact with the Time Rift
.goto 2025,59.98,77.20
.complete 66085,4 
step
.xp 70,1
#label ThaldraszusIfWeCouldTurnBackTime
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu |cffffff00(not shared)|r
.goto 2025,59.95,77.23
.skipgossip
.complete 66085,5 
.target Aeonormu
step
.xp 70,1
>>Kill mostly |cff00ecffmurlocs|r in the area. Loot them for the residue |cffffff00(not shared)|r
.goto 2025,59.81,78.84,25,0
.goto 2025,58.58,77.11,25,0
.goto 2025,58.30,78.80,25,0
.goto 2025,59.96,79.27,25,0
.goto 2025,59.43,78.17
.complete 66084,1 
step
.xp 70,1
#requires ThaldraszusTimesLikeThese
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Siaszerathel
.turnin 66084 >>Turn in Times Like These
.goto 2025,57.52,78.79
.turnin 66085 >>Turn in If We Could Turn Back Time
.goto 2025,57.45,78.92
.target Andantenormu
.target Siaszerathel
step
.xp 70,1
>>Focus on the closing Time Rifts and buffing |cff00ff00Bronze Warders|r with the |cffffff00[ExtraActionButton]|r
*You can also kill mobs
.goto 2025,57.17,81.02,20,0
.goto 2025,57.74,81.17,20,0
.goto 2025,56.84,82.16,20,0
.goto 2025,56.95,84.29,20,0
.goto 2025,57.68,84.86,20,0
.goto 2025,57.88,83.81,20,0
.goto 2025,57.88,84.55
.complete 66087,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu and Andantenormu
.turnin 66087 >>Turn in Closing Time
.goto 2025,57.55,78.87
.accept 65935 >>Accept Catching Up to Chromie
.goto 2025,57.52,78.80
.target Andantenormu
.target Aeonormu
step
.xp 70,1
>>Fly to Chromie
.goto 2025,59.64,81.51
.complete 65935,1 
.target Chromie
step
.xp 70,1
.goto 2025,59.57,81.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 65935 >>Turn in Catching Up to Chromie
.accept 65948 >>Accept Cracks in Time
.accept 65947 >>Accept Time-Locked Timewalkers
.target Chromie
step
.xp 70,1
.goto 2025,59.56,82.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.accept 66646 >>Accept Quelling Causalities
.target Andantenormu
step
.xp 70,1
#completewith ThaldraszusCracksInTime
>>Kill |cff00ecffTimelings|r and |cff00ecffTimeless Causalities|r
.complete 66646,1 
step
.xp 70,1
#title Timewalker 1
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,59.01,82.77
.complete 65947,1,1 
step
.xp 70,1
#title Timewalker 2
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,58.72,82.44
.complete 65947,1,2 
step
.xp 70,1
#title Timewalker 3
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,58.38,82.14
.complete 65947,1,3 
step
.xp 70,1
#title Timewalker 4
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,58.15,82.86
.complete 65947,1,4 
step
.xp 70,1
>>Use the |cffffff00[ExtraActionButton]|r and move away from the crystal |cffffff00(not shared)|r
.goto 2025,58.46,83.10
.complete 65948,1 
step
.xp 70,1
>>Interact with the Temporal Crystals on the ground to collect 50 energy. |cffffff00(not shared)|r
.goto 2025,58.41,82.98
.complete 65948,3,50 
step
.xp 70,1
#title Timewalker 5
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.31,81.39
.complete 65947,1,5 
step
.xp 70,1
>>Use the |cffffff00[ExtraActionButton]|r and move away from the crystal |cffffff00(not shared)|r
.goto 2025,60.76,80.48
.complete 65948,2 
step
.xp 70,1
#completewith ThaldraszusTimeLockedTimewalkers
>>Interact with the Temporal Crystals on the ground to collect the missing 50 energy. |cffffff00(not shared)|r
.goto 2025,60.68,80.37,0,0
.complete 65948,3 
step
.xp 70,1
#title Timewalker 6
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.87,80.02
.complete 65947,1,6 
step
.xp 70,1
#title Timewalker 7
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.46,79.74
.complete 65947,1,7 
step
.xp 70,1
#label ThaldraszusTimeLockedTimewalkers
#title Timewalker 8
>>Use the |cffffff00[ExtraActionButton]|r
.goto 2025,60.27,80.40
.complete 65947,1 
step
.xp 70,1
#label ThaldraszusCracksInTime
>>Interact with the Temporal Crystals on the ground to collect the missing 50 energy.
.goto 2025,60.68,80.37
.complete 65948,3 
step
.xp 70,1
>>Kill |cff00ecffTimelings|r and |cff00ecffTimeless Causalities|r
.goto 2025,58.46,83.10,30,0
.goto 2025,60.25,80.16,30,0
.goto 2025,60.76,80.48
.complete 66646,1 
step
.xp 70,1
#requires ThaldraszusQuellingCausalities
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Chromie
.turnin 66646 >>Turn in Quelling Causalities
.goto 2025,59.56,82.67
.turnin 65947 >>Turn in Time-Locked Timewalkers
.turnin 65948 >>Turn in Cracks in Time
.accept 65938 >>Accept The Once and Future Team
.goto 2025,59.58,81.75
.target Andantenormu
.target Chromie
step
.xp 70,1
>>Use the |cffffff00[ExtraActionButton]|r and walk down the ramp
*Make sure to dismount
.goto 2025,60.49,83.26
.complete 65938,1 
step
.xp 70,1
>>Kill the |cff00ecffGiant Time Elemental|r
.goto 2025,60.68,83.58
.complete 65938,2 
step
.xp 70,1
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,59.58,81.71
.turnin 65938 >>Turn in The Once and Future Team
.accept 65962 >>Accept The Never-Final Countdown
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie |cffffff00(not shared)|r
.goto 2025,59.58,81.71
.skipgossip 6
.complete 65962,1 
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2025,60.05,82.45
.turnin 65962 >>Turn in The Never-Final Countdown
.accept 70040 >>Accept Tumbling Through Time
.target Nozdormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi |cffffff00(not shared)|r
.goto 2025,59.52,82.51
.skipgossip
.complete 70040,1 
.target Soridormi
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel |cffffff00(not shared)|r
.goto 2025,59.30,82.16
.skipgossip
.complete 70040,3 
.target Siaszerathel
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu |cffffff00(not shared)|r
.goto 2025,60.19,81.77
.skipgossip
.complete 70040,2 
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu and wait for the roleplay |cffffff00(not shared)|r
.goto 2025,60.06,82.44
.skipgossip 186931,1
.timer 24,Roleplay Duration
.complete 70040,4 
.target Nozdormu
step
.xp 70,1
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 70040 >>Turn in Tumbling Through Time
.accept 66029 >>Accept Temporal Tuning
.accept 66028 >>Accept To the Future!
.target Nozdormu
step
.xp 70,1
>>Interact with the Portal to the Primalist Future |cffffff00(not shared)|r
.goto 2025,59.83,82.24
.complete 66028,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi and Possible Future You
.turnin 66028 >>Turn in To the Future!
.accept 66030 >>Accept Resistance Isn't Futile
.goto 2085,61.10,50.82
.accept 66031 >>Accept Making Time
.goto 2085,61.45,50.20
.target Soridormi
.target Possible Future You
step
.xp 70,1
>>Use the |T133240:0|t[Chrono Crystal] near Chromie and Eternus |cffffff00(not shared)|r
.goto 2085,46.92,41.15
.use 192749
.complete 66029,1 
step
.xp 70,1
#completewith ThaldraszusResistanceIsntFutile
+Use the |cffffff00[ExtraActionButton]|r if you need help fighting
step
.xp 70,1
#completewith ThaldraszusResistanceIsntFutile
>>Kill |cff00ecffHoary Icicles|r or |cff00ecffRestless Icicles|r. Loot them for the essences |cffffff00(not shared)|r
*Avoid killing elites
.complete 66031,1 
step
.xp 70,1
#title Fighter Healed 1
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,44.72,43.63
.complete 66030,1,1 
step
.xp 70,1
#title Fighter Healed 2
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,43.49,41.13
.complete 66030,1,2 
step
.xp 70,1
#title Fighter Healed 3
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,44.32,38.42
.complete 66030,1,3 
step
.xp 70,1
#title Fighter Healed 4
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,46.97,36.33
.complete 66030,1,4 
step
.xp 70,1
#title Fighter Healed 5
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,46.04,32.44
.complete 66030,1,5 
step
.xp 70,1
#title Fighter Healed 6
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,50.64,30.28
.complete 66030,1,6 
step
.xp 70,1
#title Fighter Healed 7
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,52.77,30.22
.complete 66030,1,7 
step
.xp 70,1
#title Fighter Healed 8
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,54.49,28.54
.complete 66030,1,8 
step
.xp 70,1
#title Fighter Healed 9
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,52.47,24.21
.complete 66030,1,9 
step
.xp 70,1
#label ThaldraszusResistanceIsntFutile
#title Fighter Healed 10
>>Use |T133675:0|t[Bandages] or healing spells to heal |cff00ff00Injured Resistance Fighters|r
.use 192467
.goto 2085,62.04,28.40
.complete 66030,1,10 
step
.xp 70,1
>>Kill and LOOT |cff00ecffHoary Icicles|r or |cff00ecffRestless Icicles|r
*Avoid killing elites
.goto 2085,57.87,25.26,20,0
.goto 2085,52.36,24.46,20,0
.goto 2085,56.61,28.14
.complete 66031,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Possible Future You and Soridormi
.turnin 66031 >>Turn in Making Time
.goto 2085,61.47,50.22
.turnin 66030 >>Turn in Resistance Isn't Futile
.goto 2085,61.08,50.83
step
.xp 70,1
.goto 2085,61.09,50.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi
.accept 66032 >>Accept Return to the Present
.target Soridormi
step
.xp 70,1
#completewith next
.goto 2085,61.01,50.55
.zone 2025 >>Use the portal back
step
.xp 70,1
.goto 2025,60.05,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66029 >>Turn in Temporal Tuning
.turnin 66032 >>Turn in Return to the Present
.accept 72519 >>Accept Temporal Two-ning
.accept 66033 >>Accept To the... Past?
.target Nozdormu
step
.xp 70,1
>>Use the Portal to Azmerloth
.goto 2025,59.97,82.08
.complete 66033,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66033 >>Turn in To the... Past?
.accept 66035 >>Accept Murloc Motes
.goto 2092,59.83,66.15
.accept 66036 >>Accept Mugurlglrlgl! << Alliance
.accept 66704 >>Accept Mugurlglrlgl! << Horde
.goto 2092,59.97,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
.xp 70,1
#completewith next
+You can only use normal ground mounts here!
step
.xp 70,1
#completewith ThaldraszusMurlocMotes
>>Kill |cff00ecffDeathling Destroyers|r and |cff00ecffDeathlings|r
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
.xp 70,1
#title Mote 1
>>Run through the Motes. You may have to jump
.goto 2092,60.05,68.69
.complete 66035,1,1 
step
.xp 70,1
#title Mote 2
>>Run through the Motes. You may have to jump
.goto 2092,60.62,68.39
.complete 66035,1,2 
step
.xp 70,1
#title Mote 3
>>Run through the Motes. You may have to jump
.goto 2092,60.71,66.76
.complete 66035,1,3 
step
.xp 70,1
#title Mote 4
>>Run through the Motes. You may have to jump
.goto 2092,61.27,67.05
.complete 66035,1,4 
step
.xp 70,1
#title Mote 5
>>Run through the Motes. You may have to jump
.goto 2092,61.61,65.98
.complete 66035,1,5 
step
.xp 70,1
#title Mote 6
>>Run through the Motes. You may have to jump
.goto 2092,62.54,66.16
.complete 66035,1,6 
step
.xp 70,1
#title Mote 7
>>Run through the Motes. You may have to jump
.goto 2092,62.72,65.11
.complete 66035,1,7 
step
.xp 70,1
#title Mote 8
>>Run through the Motes. You may have to jump
.goto 2092,61.85,63.81
.complete 66035,1,8 
step
.xp 70,1
>>Use |T133240:0|t[Chrono Crystal] near Chromie and Eternus |cffffff00(not shared)|r
.goto 2092,61.49,61.76
.use 192749
.complete 72519,1 
step
.xp 70,1
#title Mote 9
>>Run through the Motes. You may have to jump
.goto 2092,61.22,63.50
.complete 66035,1,9 
step
.xp 70,1
#title Mote 10
>>Run through the Motes. You may have to jump
.goto 2092,60.28,63.88
.complete 66035,1,10 
step
.xp 70,1
#title Mote 11
>>Run through the Motes. You may have to jump
.goto 2092,59.25,63.30
.complete 66035,1,11 
step
.xp 70,1
#label ThaldraszusMurlocMotes
#title Mote 12
>>Run through the Motes. You may have to jump
.goto 2092,58.53,64.12
.complete 66035,1 
step
.xp 70,1
>>Kill |cff00ecffDeathling Destroyers|r and |cff00ecffDeathlings|r
.goto 2092,58.57,64.94,25,0
.goto 2092,59.25,67.50,25,0
.goto 2092,60.77,67.83,25,0
.goto 2092,61.69,64.23
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66035 >>Turn in Murloc Motes
.goto 2092,59.84,66.14
.turnin 66036 >>Turn in Mugurlglrlgl! << Alliance
.turnin 66704 >>Turn in Mugurlglrlgl! << Horde
.accept 70373 >>Accept Deathwingurlugull! << Alliance
.accept 70371 >>Accept Deathwingurlugull! << Horde
.timer 5,Roleplay Duration
.goto 2092,59.98,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
.xp 70,1
>>Mount the Hopper after a short roleplay |cffffff00(not shared)|r
.goto 2092,59.81,65.71
.complete 70373,1 <<Alliance 
.complete 70371,1 <<Horde 
step
.xp 70,1
>>Spam |T651086:0|tFisbolts (1). Use (2) and (3) on cooldown.
*Make sure to target Deathwingurlugull.
.complete 70373,2 <<Alliance 
.complete 70371,2 <<Horde 
step
.xp 70,1
#completewith next
+|cfff78300Leave the vehicle early|r
step <<Alliance
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Varian Wryngrrlgulgll and Andantenormu
.turnin 70373 >>Turn in Deathwingurlugull!
.goto 2092,59.91,65.99
.accept 66037 >>Accept Back to Reality
.goto 2092,59.83,66.14
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
step <<Horde
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrallgrulgulgul and Andantenormu
.turnin 70371 >>Turn in Deathwingurlugull!
.goto 2092,59.97,65.99
.accept 66037 >>Accept Back to Reality
.goto 2092,59.83,66.14
.target Andantenormu
.target Thrallgrulgulgul << Horde
step
.xp 70,1
#completewith next
.goto 2092,59.72,66.11
.zone 2025 >>Use the Portal to Temporal Conflux
step
.xp 70,1
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66037 >>Turn in Back to Reality
.turnin 72519 >>Turn in Temporal Two-ning
step
+Done!
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup Threads of Fate Multibox 60-70
#name C3Azure Span Multibox
#displayname Chapter 3 - The Azure Span Multibox
#next D4Thaldraszus Multibox
step
#completewith TheAzureSpanTotheAzureSpan
+Welcome to the Azure Span Guide of RestedXP.
step
.goto 2023,71.65,80.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Masud the Wise
.accept 65686 >>Accept To the Azure Span
.target Masud the Wise
step
#title Dragon Glyph: Forkriver Crossing
.goto 2023,70.06,86.98
.achievement 16577,11 >>Pick up the Dragon Glyph in the air
step
>>Kill the three |cff00ecffShadepaw Thieves|r and then |cff00ecffSharpfang|r
.accept 67173 >>Accept Thieving Gnolls (Elite Objective)
.complete 67173,1 
.goto 2024,36.77,32.50
step << !Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones
.goto 2024,41.44,35.62
.turnin 65686 >>Turn in To the Azure Span
.accept 66228 >>Accept Camp Antonidas
.target Glania of the Blessed Ones
step << Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones and Scalecommander Emberthal
.turnin 65686 >>Turn in To the Azure Span
.goto 2024,41.44,35.62
.accept 70746 >>Accept Shades of Blue
.target Glania of the Blessed Ones
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.23,35.88
.accept 67174 >>Accept Arcane Detection
.target Miva Star-Eye
step
>>Interact with the Unassuming Flask
.goto 2024,41.39,35.70
.complete 67174,1 
step
>>Interact with the Dusty Teapot
.goto 2024,41.41,35.84
.complete 67174,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.accept 67177 >>Accept WANTED: Gorger
.target Shala
step
>>Interact with Toolky's Toy Boat
.goto 2024,41.23,36.37
.complete 67174,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.22,35.89
.turnin 67174 >>Turn in Arcane Detection
.accept 67175 >>Accept How To Stop An Exploding Toy Boat
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Julk
.goto 2024,41.21,35.86
.skipgossip
.timer 15,Roleplay Duration
.complete 67175,1 
.target Julk
step
>>After a short roleplay interact with the wand
.goto 2024,41.19,35.91
.complete 67175,2 
step
>>Click on the toy boat
.goto 2024,40.59,36.55
.complete 67175,3 
step
>>Kill |cff00ecffGorger|r. Loot him for his horns
.goto 2024,39.66,37.24
.complete 67177,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.21,35.87
.turnin 67175 >>Turn in How To Stop An Exploding Toy Boat
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.turnin 67177 >>Turn in WANTED: Gorger
.target Shala
step << Dracthyr
>>Follow the arrow to Emberthal
.goto 2024,45.00,41.00
.complete 70746,1 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
.goto 2024,45.00,41.00
.turnin 70746 >>Turn in Shades of Blue
.target Scalecommander Emberthal
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Telash Greywing
.goto 2024,45.65,41.20
.accept 70747 >>Accept The Azure Wizard
.target Telash Greywing
step << Dracthyr
#completwith next
+You can skip the next cutscene (Esc -> Yes)
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.skipgossip 192091,1
.complete 70747,1 
.target Archmage Khadgar
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.turnin 70747 >>Turn in The Azure Wizard
.target Archmage Khadgar
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+Fly to Noriko using your dragonriding mount
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+You can skip the next cutscene (Esc -> Yes)
step << !Dracthyr
#label TheAzureSpanCampAntonidas
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 66228 >>Turn in Camp Antonidas
.target Noriko the All-Remembering
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.accept 67033 >>Accept Assemble the Defenses
.accept 67035 >>Accept Preservation of Knowledge
step
#completewith next
.goto 2024,46.71,39.57
.fp >>Get the Camp Antonidas Flight Path
step
#title |T1499566:0:0|tTome 1 + |T1041232:0:0|tDevice 1
>>Pick up the tome and the device on the ground |cffffff00(not shared)|r
.goto 2024,46.13,39.27
.complete 67035,1,1 
.complete 67033,1,1 
step
#title |T1499566:0:0|tTome 2
>>Pick up the tome |cffffff00(not shared)|r
.goto 2024,45.73,39.29
.complete 67035,1,2 
step
#title |T1499566:0:0|tTome 3
>>Pick up the tome |cffffff00(not shared)|r
.goto 2024,46.03,39.82
.complete 67035,1,3 
step
#title |T1041232:0:0|tDevice 2
>>Pick up the device |cffffff00(not shared)|r
.goto 2024,45.86,40.18
.complete 67033,1,2 
step
#title |T1499566:0:0|tTome 4 + |T1041232:0:0|tDevice 3
>>Pick up the tome and the device on the ground |cffffff00(not shared)|r
.goto 2024,46.07,40.86
.complete 67035,1 
.complete 67033,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.turnin 67033 >>Turn in Assemble the Defenses
.turnin 67035 >>Turn in Preservation of Knowledge
.accept 67036 >>Accept Wrath of the Kirin Tor
step
#completewith next
.goto 2024,46.29,38.86
.vehicle 192331 >>Enter the Arcane Blaster
step
>> Use |T429383:0:0|tArcane Blast (1) to kill the flying dragons. |cfff78300Don't leave the Arcane Blaster manually|r |cffffff00(not shared, but it's worth it because it unlocks a wanted quest and the following campaign quests are good)|r
.goto 2024,46.29,38.86
.complete 67036,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.turnin 67036 >>Turn in Wrath of the Kirin Tor
.goto 2024,46.64,40.16
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait for Archmage Khadgar and talk to him |cffffff00(probably have to dismount with your other characters)|r
.accept 65688 >>Accept Meeting Kalecgos
.goto 2024,46.63,40.19
step
#completewith next
.goto 2024,45.99,38.79
.gossipoption 55328 >>Interact with the Supply Portal
.timer 8,Roleplay Duration
step
>>Wait for the bag and pick it up |cffffff00(not shared)|r
.goto 2024,45.95,38.90
.complete 65688,1 
.complete 65688,2 
step
>>Interact with the to WANTED pamphlet
.goto 2024,46.13,39.61
.accept 66488 >>Accept WANTED: Frigellus
step
#completewith next
+Fly to Kalecgos using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,40.92,55.00
.turnin 65688 >>Turn in Meeting Kalecgos
.accept 65689 >>Accept The Many Images of Kalecgos
step
>>Just fly up. No need to interact with the pylon
.goto 2024,41.17,57.81
.complete 65689,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to both Mirror Images of Kalecgos
.goto 2024,40.74,59.04
.turnin 65689 >>Turn in The Many Images of Kalecgos
.accept 65702 >>Accept Driven Mad
.accept 65709 >>Accept Arcane Pruning
step
>>Use the |T133622:0:0|t[Bag of Helpful Goods] or use the |cffffff00[ExtraActionButton]|t |cffffff00(not shared)|r
.goto 2024,40.72,59.10
.use 191953
.complete 65709,1 
step
#completewith TheAzureSpanArcanePruning1
>>Kill |cff00ecffElementals|r in the area. Loot them for the Unstable Arcana. |cffffff00(not shared)|r
.complete 65702,1 
step
#completewith next
+The Scepter has a very high range so you can use it from at least 30 yards away
step
#label TheAzureSpanArcanePruning1
>>Use the |T1379242:0:0|t[Ley Scepter] near the arcane fields |cffffff00(not shared, start channeling with your other characters while your main character kills mobs)|r
.use 191952
.complete 65709,2 
.goto 2024,39.57,60.27
step
#completewith next
.goto 2024,38.56,59.75,30 >>Fly up
step
.accept 69864 >>Accept Forgotten Creation
.goto 2024,38.56,59.75
.complete 69864,1 
.goto 2024,38.18,59.03
step
#completewith TheAzureSpanArcanePruning2
>>Kill |cff00ecffElementals|r in the area. Loot them for the Unstable Arcana. |cffffff00(not shared)|r
.complete 65702,1 
step
#completewith next
+The Scepter has a very high range so you can use it from at least 30 yards away
step
#label TheAzureSpanArcanePruning2
>>Use the |T1379242:0:0|t[Ley Scepter] near the arcane fields |cffffff00(not shared, start channeling with your other characters while your main character kills mobs)|r
.use 191952
.complete 65709,3 
.goto 2024,41.18,62.26
step
>>Kill and LOOT the |cff00ecffElementals|r in the area |cffffff00(not shared)|r
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,40.42,60.51
.complete 65702,1 
step
.goto 2024,40.69,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Mirror Images of Kalecgos
.turnin 65709 >>Turn in Arcane Pruning
.turnin 65702 >>Turn in Driven Mad
.accept 65852 >>Accept Straight to the Top
step
>>Use the |T133622:0:0|t[Bag of Helpful Goods] next to the arcane field |cffffff00(not shared)|r
.goto 2024,39.57,60.25
.use 191978
.complete 65852,1 
step
>>Use the |cffffff00[ExtraActionButton]|r |cffffff00(not shared)|r
.goto 2024,39.57,60.25
.complete 65852,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.96,61.46
.turnin 65852 >>Turn in Straight to the Top
.accept 65751 >>Accept Platform Adjustments
.accept 65752 >>Accept Arcane Annoyances
step
#completewith next
+You can also just Click on the wyrms to use the item
step
#sticky
#label TheAzureSpanArcaneAnnoyances
>>Use the |T1373906:0:0|t[Arcane Hook] to pull a wyrm down
.use 194891
.goto 2024,39.91,61.66,0,0
.complete 65752,1 
step
#title Energy 1
>>Destroy the energy (doable while mounted) |cffffff00(not shared, your other characters should leave the passenger seat)|r
.goto 2024,40.23,62.03
.complete 65751,1,1 
step
#title Energy 2
>>Destroy the energy (doable while mounted) |cffffff00(not shared, your other characters should leave the passenger seat)|r
.goto 2024,39.58,62.72
.complete 65751,1,2 
step
#title Energy 3
>>Destroy the energy (doable while mounted) |cffffff00(not shared, your other characters should leave the passenger seat)|r
.goto 2024,39.51,61.52
.complete 65751,1,3 
step
#requires TheAzureSpanArcaneAnnoyances
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.97,61.46
.turnin 65751 >>Turn in Platform Adjustments
.turnin 65752 >>Turn in Arcane Annoyances
.accept 65854 >>Accept Reclaiming the Oathstone
step
>>Fly down and talk to Kalecgos |cffffff00(not shared)|r
.goto 2024,39.44,63.18
.skipgossip
.complete 65854,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sindragosa
.goto 2024,39.48,63.07
.turnin 65854 >>Turn in Reclaiming the Oathstone
.accept 65855 >>Accept Aiding Azure Span
step
#completewith next
.goto 2024,37.84,62.00,15 >>Enter the inn
step
#completewith TheAzureSpanAidingAzureSpan
.goto 2024,37.36,62.43
.home >>Set your Hearthstone to The Conjured Biscuit Inn
step
#completewith next
.goto 2024,37.07,60.82
.fp >>Get the Azure Archives Flight Path
step
#label TheAzureSpanAidingAzureSpan
.goto 2024,37.07,60.82
.complete 65855,1 
step
#completewith next
+Use the flightmaster to fly to Camp Antonidas or use your dragonriding mount (faster)
step
#label TheAzureSpanAidingAzureSpan2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 65855 >>Turn in Aiding Azure Span
.accept 66699 >>Accept Ask the Locals
step
>>Kill |cff00ecffFrigellus|r
.goto 2024,47.95,38.09
.complete 66488,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Korrikunit |cffffff00(not shared)|r
.goto 2024,46.76,38.59
.skipgossip
.complete 66699,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jokomuupat |cffffff00(not shared)|r
.goto 2024,46.34,38.15
.skipgossip
.complete 66699,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Custodian Cynegos
.goto 2024,46.01,38.31
.turnin 66488 >>Turn in WANTED: Frigellus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arch Enchanter Celeste
.goto 2024,45.99,38.41
.accept 66489 >>Accept Setting the Defense
step
>>Use |T135477:0|t[Arch Instructor's Wand] while targeting an |cff00ff00Azure Defender|r |cffffff00(not shared)|r
.use 192471
.goto 2024,46.17,38.98
.complete 66489,1 
step
.goto 2024,46.00,38.42
>>Return to Arch Enchanter Celeste
.turnin 66489 >>Turn in Setting the Defense
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk |cffffff00(not shared)|r
.goto 2024,45.73,38.84
.skipgossip 190225,1
.complete 66699,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk
.goto 2024,45.73,38.84
.turnin 66699 >>Turn in Ask the Locals
.accept 65864 >>Accept Catch the Caravan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caddy Scattershot
.goto 2024,45.69,39.79
.accept 66671 >>Accept Path to Nowhere
step
#completewith next
.goto 2024,35.25,36.98,20 >>Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,35.25,36.98
.skipgossip 186224,1
.timer 19,Roleplay Duration
.complete 65864,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Elder Poa
.turnin 65864 >>Turn in Catch the Caravan
.goto 2024,35.25,36.97
.accept 65868 >>Accept Those Aren't for Chewing
.goto 2024,35.36,36.94
.accept 65867 >>Accept Howling in the Big Tree Hills
.accept 65866 >>Accept Snap the Traps
.goto 2024,35.28,36.94
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>Kill |cff00ecffGnolls|r in the area. Loot them for the offerings |cffffff00(not shared)|r
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>Interact with traps on the ground
.complete 65866,1 
step
>>Kill |cff00ecffHyenamaster Durgun|r
.goto 2024,35.66,34.73
.complete 65867,1 
step
#completewith next
.goto 2024,34.95,32.59,10 >>Enter the cave
step
>>Kill |cff00ecffTrap-Layer Kerwal|r
.goto 2024,34.99,32.18
.complete 65867,2 
step
#completewith next
.goto 2024,34.95,32.59,10 >>Leave the cave
step
#label TheAzureSpanHowlingtheBigTreeHills
>>Kill |cff00ecffBakra the Bully|r
.goto 2024,33.96,33.18
.complete 65867,3 
step
#completewith next
>>Interact with traps on the ground
.goto 2024,35.34,33.07,0,0
.complete 65866,1 
step
>>Kill |cff00ecffGnolls|r in the area. Loot them for the offerings |cffffff00(not shared)|r
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
>>Interact with traps on the ground
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.complete 65866,1 
step
#requires TheAzureSpanThoseArentForChewing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.goto 2024,34.26,31.30
.turnin 65868 >>Turn in Those Aren't for Chewing
.turnin 65867 >>Turn in Howling in the Big Tree Hills
.turnin 65866 >>Turn in Snap the Traps
.timer 17,Roleplay Duration
step
#completewith next
+Wait for the short roleplay
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.07
.accept 65871 >>Accept Gnoll Way Out
.accept 65872 >>Accept Ill Gnolls with Ill Intent
.accept 65873 >>Accept Leader of the Shadepaw Pack
.accept 65870 >>Accept Supplies!
step
#completewith next
.goto 2024,33.95,30.64,12 >>Enter the cave
step
#completewith TheAzureSpanLeaderoftheShadepawPack
>>Kill |cff00ecffGnolls|r in the cave
.goto 2132,45.88,50.78,0,0
.complete 65872,1 
step
>>Pick up the basket |cffffff00(not shared)|r
.goto 2132,36.31,93.16
.complete 65870,3 
step
>>Pick up the barrel |cffffff00(not shared)|r
.goto 2132,29.17,75.42
.complete 65870,1 
step
#title Tuskarr 1
>>Open the cage
.goto 2132,30.36,59.53
.complete 65871,1,1 
step
>>Investigate Norukks corpse |cffffff00(not shared)|r
.goto 2132,41.42,63.83
.complete 65871,2 
step
#title Tuskarr 2
>>Open the cage
.goto 2132,46.26,40.92
.complete 65871,1,2 
step
>>Pick up the barrel |cffffff00(not shared)|r
.goto 2132,51.40,36.86
.complete 65870,2 
step
#title Tuskarr 3
>>Open the cage
.goto 2132,38.10,32.11
.complete 65871,1 
step
#label TheAzureSpanLeaderoftheShadepawPack
>>Kill |cff00ecffKargpaw the Fetid|r. Loot him for the totem. |cffffff00(not shared)|r
.goto 2132,42.27,14.47
.complete 65873,1 
step
>>Kill |cff00ecffGnolls|r in the cave
.goto 2132,37.06,36.14,20,0
.goto 2132,44.64,36.89,20,0
.goto 2132,48.99,26.78,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,64.62,21.19,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,43.73,42.03,20,0
#loop
.line 2132,36.65,34.61,28.82,48.53,29.37,60.34,38.45,52.88,47.14,55.14,46.56,36.26,61.09,39.17,65.72,24.58
.goto 2132,36.65,34.61,20,0
.goto 2132,28.82,48.53,20,0
.goto 2132,29.37,60.34,20,0
.goto 2132,38.45,52.88,20,0
.goto 2132,47.14,55.14,20,0
.goto 2132,46.56,36.26,20,0
.goto 2132,61.09,39.17,20,0
.goto 2132,65.72,24.58,20,0
.complete 65872,1 
step
#completewith next
.goto 2024,34.92,30.03,10 >>Leave the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.06
.turnin 65870 >>Turn in Supplies!
.turnin 65872 >>Turn in Ill Gnolls with Ill Intent
.turnin 65873 >>Turn in Leader of the Shadepaw Pack
.turnin 65871 >>Turn in Gnoll Way Out
.accept 66239 >>Accept Spreading Decay
step
#completewith next
+Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,28.69,34.82
.turnin 66239 >>Turn in Spreading Decay
.accept 65869 >>Accept Another Ambush
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akiun |cffffff00(not shared)|r
.goto 2024,28.68,34.75
.skipgossip
.complete 65869,1 
step
#title Body 1
>>Interact with the body while mounted
.goto 2024,29.25,33.57
.skipgossip
.complete 65869,2,1 
step
#title Body 2
>>Interact with the body while mounted
.goto 2024,29.17,32.56
.skipgossip
.complete 65869,2,2 
step
#title Body 3
>>Interact with the body while mounted
.goto 2024,28.20,31.86
.skipgossip
.complete 65869,2,3 
step
#title Body 4
>>Interact with the body while mounted
.goto 2024,27.97,32.83
.skipgossip
.complete 65869,2 
step
.goto 2024,28.78,34.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.turnin 65869 >>Turn in Another Ambush
.accept 66026 >>Accept Urgent Action Required
step
.goto 2024,28.47,35.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Unkimi
.accept 71233 >>Accept Falling Water
step
.goto 2024,22.72,41.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.accept 66262 >>Accept Waste Water Cleanup
step
>>Click on the Rotting Piles and kill the spawning Muck Elemental
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
#loop
.line 2024,22.45,41.96,22.04,41.66,22.27,41.20,22.83,41.18,23.22,41.16,23.60,41.40,22.81,42.15
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
.complete 66262,1 
step
.goto 2024,22.72,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66262 >>Turn in Waste Water Cleanup
.accept 66263 >>Accept A Precision Approach
.accept 66264 >>Accept Disarmed and Docile
step
#completewith TheAzureSpanAPrecisionApproach
>>Kill |cff00ecffGnawbone Armaments|r. Loo them for the armaments |cffffff00(not shared)|r
.complete 66264,1 
step
#completewith next
.goto 2024,24.40,39.56,20 >>Enter the cave
step
#label TheAzureSpanAPrecisionApproach
>>Kill |cff00ecffFlayfist|r
.goto 2024,24.80,39.03
.complete 66263,1 
step
>>Kill |cff00ecffGnawbone Armaments|r. Loo them for the armaments |cffffff00(not shared)|r
.goto 2024,24.40,39.56,25,0
.goto 2024,23.33,39.87,25,0
.goto 2024,22.47,39.95,25,0
.goto 2024,22.09,40.67,25,0
.goto 2024,23.85,40.50,35,0
#loop
.line 2024,24.40,39.56,23.33,39.87,22.47,39.95,22.09,40.67,23.85,40.50
.goto 2024,24.40,39.56,35,0
.goto 2024,23.33,39.87,35,0
.goto 2024,22.47,39.95,35,0
.goto 2024,22.09,40.67,35,0
.goto 2024,23.85,40.50,35,0
.complete 66264,1 
step
.goto 2024,22.74,41.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66263 >>Turn in A Precision Approach
.turnin 66264 >>Turn in Disarmed and Docile
.accept 66265 >>Accept Who's Next?
.accept 66266 >>Accept Filthy Mongrels
step
.goto 2024,23.48,41.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Illusory Mage
.accept 66267 >>Accept M.E.T.A.
step
#completewith TheAzureSpanMETA
>>Kill |cff00ecffMongrels|r and |cff00ecffMatriarchs|r on the side
.complete 66266,2 
.complete 66266,1 
step
>>Kill |cff00ecffCracktooth|r inside the small cave
.goto 2024,24.20,41.81
.complete 66265,1 
step
>>Finish killing |cff00ecffMongrels|r and |cff00ecffMatriarchs|r
.goto 2024,23.50,42.43,25,0
.goto 2024,23.73,43.25,25,0
.goto 2024,24.32,42.91,25,0
.goto 2024,23.94,42.02,25,0
#loop
.line 2024,23.50,42.43,23.73,43.25,24.32,42.91,23.94,42.02
.goto 2024,23.50,42.43,30,0
.goto 2024,23.73,43.25,30,0
.goto 2024,24.32,42.91,30,0
.goto 2024,23.94,42.02,30,0
.complete 66266,2 
.complete 66266,1 
step
.goto 2024,22.70,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66266 >>Turn in Filthy Mongrels
.turnin 66265 >>Turn in Who's Next?
step
>>Kill |cff00ecffCascade|r
.goto 2024,23.33,33.60
.accept 72358 >>Accept Cascade (Elite Objective)
.complete 72358,1 
step
#completewith next
+Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,20.59,35.67
.turnin 66026 >>Turn in Urgent Action Required
.timer 24,Roleplay Duration
step
.goto 2024,18.73,24.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 71233 >>Turn in Falling Water
.accept 66837 >>Accept Nothing for Breakfast
step
.goto 2024,19.04,23.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.accept 66844 >>Accept The Great Shokhari
step
#completewith next
.goto 2024,19.16,23.77
.fp >>Get the Three-Falls Lookout Flight Path
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.accept 66843 >>Accept Out of Lukh
step
#completewith next
>>Kill |cff00ecffVorquins|r and |cff00ecffBruffalons|r. Loot them for flanks and meat |cffffff00(not shared)|r
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.complete 66837,2 
.complete 66837,1 
step
>>Kill |cff00ecffGloomfur Sasquatch|r inside the cave
.goto 2024,16.01,27.25
.complete 66843,1 
step
>>Kill |cff00ecffVorquins|r and |cff00ecffBruffalons|r. Loot them for flanks and meat |cffffff00(not shared)|r
#loop
.line 2024,18.30,26.71,17.52,26.92,16.95,27.55,16.13,27.81,15.98,26.06,17.39,25.96
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.goto 2024,15.98,26.06,30,0
.goto 2024,17.39,25.96,30,0
.complete 66837,2 
.complete 66837,1 
step
>>Kill |cff00ecffSky Vixen Shokhari|r
.goto 2024,13.27,26.50
.complete 66844,1 
step
.goto 2024,18.75,24.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 66837 >>Turn in Nothing for Breakfast
step
.goto 2024,19.03,23.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.turnin 66844 >>Turn in The Great Shokhari
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.turnin 66843 >>Turn in Out of Lukh
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos after a short roleplay
.goto 2024,20.53,35.69
.accept 65838 >>Accept Breaching the Brackenhide
step
#completewith TheAzureSpanLeyLitter
>>Kill |cff00ecffBrackenhides|r and destroy their totems (Bonus Objective)
.complete 65841,1 
step
>>Interact with the Rotting Root
.goto 2024,18.89,36.99
.skipgossip
.complete 65838,2 
step
>>Interact with the Rotting Root
.goto 2024,18.38,34.74
.skipgossip
.complete 65838,1 
step
>>Interact with the Rotting Root
.goto 2024,17.59,36.99
.skipgossip
.complete 65838,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.goto 2024,16.75,37.26
.turnin 65838 >>Turn in Breaching the Brackenhide
.accept 65846 >>Accept Ley Litter
.accept 65844 >>Accept Cut Out the Rot
.accept 65845 >>Accept Echoes of the Fallen
step
#completewith TheAzureSpanLeyLitter
>>|cfff78300Look out for the treants because they are rather uncommon|r
.goto 2024,17.69,37.74,0,0
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#completewith TheAzureSpanEchoesoftheFallen
>>Collect the Ley Crystals |cffffff00(not shared)|r
.complete 65846,1 
step
#title Spirit 1
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses |cffffff00(not shared)|r
.use 191928
.goto 2024,17.47,37.07
.complete 65845,1,1 
step
#title Spirit 2
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses |cffffff00(not shared)|r
.use 191928
.goto 2024,18.13,37.67
.complete 65845,1,2 
step
#title Spirit 3
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses |cffffff00(not shared)|r
.use 191928
.goto 2024,18.52,37.26
.complete 65845,1,3 
step
#title Spirit 4
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses |cffffff00(not shared)|r
.use 191928
.goto 2024,17.54,37.93
.complete 65845,1,4 
step
#label TheAzureSpanEchoesoftheFallen
#title Spirit 5
>>Use |T971076:0:0|t[Brena's Totem] next to the corpses |cffffff00(not shared)|r
.use 191928
.goto 2024,17.41,38.65
.complete 65845,1 
step
#label TheAzureSpanLeyLitter
>>Collect the Ley Crystals |cffffff00(not shared)|r
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
#loop
.line 2024,17.81,38.52,18.42,38.32,18.69,36.99,17.25,36.85,17.45,38.42
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
.complete 65846,1 
step
#sticky
#label TheAzureSpanStoptheSpread
>>Kill |cff00ecffBrackenhides|r and destroy their totems
.goto 2024,18.53,35.78
.complete 65841,1 
step
>>|cfff78300Possible trean locations are marked on your map|r
.goto 2024,17.2,37.0,0
.goto 2024,17.4,37.8,0
.goto 2024,17.4,39.2,0
.goto 2024,17.6,37.2,0
.goto 2024,17.8,38.8,0
.goto 2024,18.4,38.0,0
.goto 2024,18.6,38.0,0
.goto 2024,18.6,38.6,0
.goto 2024,18.8,36.6,0
.goto 2024,17.2,37.0,0
.goto 2024,17.2,37.40,0
.goto 2024,17.6,37.40,0
.goto 2024,18.8,36.40,0
.goto 2024,17.69,37.74
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#requires TheAzureSpanStoptheSpread
.goto 2024,16.74,37.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.turnin 65846 >>Turn in Ley Litter
.turnin 65844 >>Turn in Cut Out the Rot
.turnin 65845 >>Turn in Echoes of the Fallen
.accept 65848 >>Accept Tome-ward Bound
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and wait for the roleplay |cffffff00(not shared)|r
.goto 2024,16.74,37.32
.skipgossip 187873,1
.timer 21,Roleplay Duration
.complete 65848,1 
step
>>Mount the Tome of Spellflinging
.goto 2024,16.71,37.30
.complete 65848,2 
step
>>Spam |T134917:0:0|tTome Charge (1) to move faster
>>Use |T135753:0:0|tArcane Blast (2) to kill the |cff00ecffPurifiers|r |cffffff00(not shared, do it on each character until you have to kill the Twisted Ancient, then swap)|r
.goto 2024,16.02,38.49
.complete 65848,3,1 
step
>>Spam |T134917:0:0|tTome Charge (1) to move faster
>>Use |T135753:0:0|tArcane Blast (2) to kill the |cff00ecffPurifiers|r |cffffff00(not shared, do it on each character until you have to kill the Twisted Ancient, then swap)|r
.goto 2024,15.64,37.42
.complete 65848,3,2
step
>>Spam |T134917:0:0|tTome Charge (1) to move faster
>>Use |T135753:0:0|tArcane Blast (2) to kill the |cff00ecffPurifiers|r |cffffff00(not shared, do it on each character until you have to kill the Twisted Ancient, then swap)|r
.goto 2024,15.22,37.95
.complete 65848,3,3 
step
>>Use |T429383:0:0|tArcane Spirit Beam (1) to kill the |cff00ecffTwisted Ancient|r |cffffff00(not shared)|r
.goto 2024,15.40,37.73
.complete 65848,4 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,15.30,39.43
.turnin 65848 >>Turn in Tome-ward Bound
.accept 65847 >>Accept Realignment
step
>>Interact with the Ley Crystal |cffffff00(not shared)|r
.goto 2024,15.35,39.50
.complete 65847,1 
step
#title Infection 1
>>Destroy the infection
.goto 2024,15.51,39.31
.complete 65847,2,1 
step
#title Infection 2
>>Destroy the infection
.goto 2024,15.30,39.12
.complete 65847,2,2 
step
#title Infection 3
>>Destroy the infection
.goto 2024,15.07,39.52
.complete 65847,2 
step
#completewith next
.goto 2024,14.97,38.77,15 >>Leave the cave
step
#completewith next
+Fly to Kalecgos using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Brena
.turnin 65847 >>Turn in Realignment
.goto 2024,16.11,41.40
.accept 65849 >>Accept To Iskaara
.goto 2024,16.08,41.45
step
>>Kill |cff00ecffVakril, the Strongest Tuskarr|r
.goto 2024,17.23,41.46
.accept 69872 >>Accept Vakril, the Strongest Tuskarr
.complete 69872,1 
step
#completewith next
+Fly to Brena using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,13.24,49.56
.turnin 65849 >>Turn in To Iskaara
.accept 66210 >>Accept Gather the Family
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Roki
.goto 2024,13.14,49.26
.accept 72435 >>Accept Orientation: Iskaara
step
#completewith next
.goto 2024,12.78,49.34,8 >>Enter the inn
step
#title |T134450:0:0|tOffering 1
>>Pick up the Stone Sculpture |cffffff00(not shared)|r
.goto 2024,12.49,49.45
.complete 66210,1,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.accept 66213 >>Accept The Weave of a Tale
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Poa |cffffff00(not shared)|r
.goto 2024,12.41,49.34
.skipgossip 1
.complete 66213,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.turnin 66213 >>Turn in The Weave of a Tale
step
#completewith next
.goto 2024,12.78,49.34,8 >>Leave the inn
step
#title |T134989:0:0|tOffering 2
>>Pick up the Ornamented Shield |cffffff00(not shared)|r
.goto 2024,12.46,50.31
.complete 66210,1,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rokkutuk
.goto 2024,13.91,50.08
.complete 72435,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lukoturukk
.goto 2024,14.07,49.45
.accept 71234 >>Accept Nook News
step
#title |T1126431:0:0|tOffering 3
>>Pick up the Handcrafted Boat |cffffff00(not shared)|r
.goto 2024,13.87,49.48
.complete 66210,1,3 
step
#title |T132803:0:0|tOffering 4
>>Pick up the Decorated Teapot |cffffff00(not shared)|r
.goto 2024,13.48,48.57
.complete 66210,1 
step
#sticky
#label TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arvik
.goto 2024,13.17,48.53
.complete 72435,1 
step
>>Interact with the Funeral Boat |cffffff00(not shared)|r
.goto 2024,13.14,48.57
.complete 66210,2 
step
#requires TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Norukk
.goto 2024,12.96,48.64
.complete 72435,4 
step
.goto 2024,12.89,48.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.accept 66218 >>Accept Scampering Scamps
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tatto
.goto 2024,13.18,48.82
.complete 72435,3 
step
.goto 2024,13.20,48.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.accept 66217 >>Accept WANTED: Krojek the Shoreprowler
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Murik
.goto 2024,13.14,49.26
.turnin 72435 >>Turn in Orientation: Iskaara
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Kalecgos
.turnin 66210 >>Turn in Gather the Family
.goto 2024,13.24,49.56
.accept 65850 >>Accept The Cycle of the Sea
.goto 2024,13.26,49.53
step
#completewith next
.goto 2024,13.24,49.55
.gossipoption 55314 >> Talk to Brena
.timer 72,Roleplay Duration
step
>>Interact with the Funeral Boat |cffffff00(not shared)|r
.goto 2024,13.18,49.20,8,0
.goto 2024,13.06,49.52,10,0
.goto 2024,13.16,50.20
.complete 65850,1 
.complete 65850,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,12.94,50.39
.turnin 65850 >>Turn in Gather the Familiy
.accept 65911 >>Accept Azure Alignment
step
>>Kill |cff00ecffKrojek The Shoreprowler|r. |cffffff00You can skip this quest. It is a very hard elite|r
.unitscan Krojek The Shoreprowler
.goto 2024,10.45,53.66
.complete 66217,1 
step
.isQuestComplete 66217
.goto 2024,12.51,49.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.turnin 66217 >>Turn in WANTED: Krojek the Shoreprowler
step
.abandon 66217 >>Abandon WANTED: Krojek the Shoreprowler
step
.isOnQuest 66218
.goto 2024,10.59,46.87
.gossipoption 55003 >>Talk to Neelo |cffffff00(not shared)|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wayun
.goto 2024,7.45,44.28
.turnin 71234 >>Turn in Nook News
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.accept 66781 >>Accept A Matter of Taste
step
>>Pick up the Large Stone on the ground |cffffff00(not shared)|r
.goto 2024,7.24,45.12
.complete 66781,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.turnin 66781 >>Turn in A Matter of Taste
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog, Examiner Rowe and Aelnara
.accept 66164 >>Accept Fishy Fingers
.goto 2024,7.65,44.32
.accept 66154 >>Accept Salivatory Samples
.goto 2024,7.67,44.26
.accept 66147 >>Accept Crystals in the Water
.goto 2024,7.64,44.23
step
#completewith TheAzureSpanCrystalsintheWater
>>Pick up Stolen Parts on the ground |cffffff00(not shared, but you can pick up the same one)|r
.complete 66164,1 
step
#completewith TheAzureSpanCrystalsintheWater
>>Kill |cff00ecffBrintooths|r. Loot them for Saliva |cffffff00(not shared)|r
.complete 66154,1 
step
#title Crystal Mined 1/4
>>Mine the Crystal |cffffff00(not shared)|r
.goto 2024,9.86,43.36
.complete 66147,1,1 
step
#title Crystal Mined 2/4
>>Mine the Crystal |cffffff00(not shared)|r
.goto 2024,10.36,43.33
.complete 66147,1,2 
step
#title Crystal Mined 3/4
>>Mine the Crystal |cffffff00(not shared)|r
.goto 2024,10.68,42.73
.complete 66147,1,3 
step
#label TheAzureSpanCrystalsintheWater
#title Crystal Mined 4/4
>>Mine the Crystal |cffffff00(not shared)|r
.goto 2024,10.18,42.29
.complete 66147,1 
step
#completewith next
>>Pick up Stolen Parts on the ground |cffffff00(not shared, but you can pick up the same one)|r
.complete 66164,1 
step
>>Kill |cff00ecffBrintooths|r. Loot them for Saliva |cffffff00(not shared)|r
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,25,0
.goto 2024,9.77,43.71,25,0
.goto 2024,10.31,43.44,25,0
.goto 2024,10.95,43.44,25,0
.goto 2024,10.28,42.36,25,0
.complete 66154,1 
step
>>Pick up Stolen Parts on the ground
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,25,0
.goto 2024,9.77,43.71,25,0
.goto 2024,10.31,43.44,25,0
.goto 2024,10.95,43.44,25,0
.goto 2024,10.28,42.36,25,0
.complete 66164,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Rowe, Aelnara and LOU-C Fitzcog
.turnin 66154 >>Turn in Salivatory Samples
.goto 2024,7.67,44.26
.turnin 66147 >>Turn in Crystals in the Water
.goto 2024,7.64,44.23
.turnin 66164 >>Turn in Fishy Fingers
.accept 66175 >>Accept Field Experiment
.goto 2024,7.65,44.32
step
>>Click on the Geoscanner
.goto 2024,7.64,44.33
.complete 66175,1 
.timer 33,Roleplay Duration
step
.goto 2024,10.59,46.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Neelo
.turnin 66218 >>Turn in Scampering Scamps
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog
.goto 2024,7.64,44.33
.turnin 66175 >>Turn in Field Experiment
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog and Wayun
.accept 66177 >>Accept No Dwarf Left Behind
.goto 2024,7.65,44.35
.accept 66232 >>Accept Afront 'Till A Salt
.goto 2024,7.46,44.28
step
.isOnQuest 66232
#completewith TheAzureSpanNoDwarfLeftBehind
>>Kill the |cff00ecffBrinetooths|r in the area. Loot them for the Crystal Flakes |cffffff00(not shared)|r
.complete 66232,1 
step
.isOnQuest 66177
>>Pick up Mordigan's Field Notes
.goto 2024,9.38,42.53
.complete 66177,1 
step
.isOnQuest 66177
>>Pick up Mordigan's Field Notes
.goto 2024,10.02,41.30
.complete 66177,2 
step
.isOnQuest 66177
>>Pick up Mordigan's Boots
.goto 2024,9.93,39.68
.complete 66177,3 
step
.isOnQuest 66177
>>Pick up Mordigan's Pants
.goto 2024,10.61,41.25
.complete 66177,4 
step
.isOnQuest 66232
>>Kill the |cff00ecffBrinetooths|r in the area. Loot them for the Crystal Flakes
.goto 2024,10.22,41.79,30,0
.goto 2024,9.34,42.87,30,0
.goto 2024,9.72,40.64,30,0
.goto 2024,10.47,41.14,30,0
#loop
.line 2024,10.22,41.79,9.34,42.87,9.72,40.64,10.47,41.14,
.goto 2024,10.22,41.79,30,0
.goto 2024,9.34,42.87,30,0
.goto 2024,9.72,40.64,30,0
.goto 2024,10.47,41.14,30,0
.complete 66232,1 
step
.goto 2024,10.77,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.turnin -66177 >>Turn in No Dwarf Left Behind
step
.isQuestTurnedIn 66177
.goto 2024,10.77,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.accept 66187 >>Accept Mad Mordigan & The Crystal King
step
.isOnQuest 66232
>>Defeat |cff00ecffMordigan|r inside the cave
.goto 2024,11.19,41.10
.complete 66187,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara |cffffff00(to turn them as a passenger the driver has to go onto the waypoint location and look at Aelnara)|r
.goto 2024,10.75,41.22
.turnin 66187 >>Turn in Mad Mordigan & The Crystal King
.accept 66559 >>Accept Back To Camp
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Rowe
.turnin -66559 >>Turn in Back To Camp
.goto 2024,7.67,44.27
.turnin -66232 >>Turn in Afront 'Till A Salt
.goto 2024,7.46,44.28
step
#completewith next
.hs >>Hearth to The Conjured Biscuit Inn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.48,63.02
.turnin 65911 >>Turn in Azure Alignment
.accept 66027 >>Accept Calling the Blue Dragons
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos |cffffff00(not shared)|r
.goto 2024,39.48,63.02
.skipgossip 186280,1
.complete 66027,1 
step
.goto 2024,39.48,63.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.turnin 66027 >>Turn in Calling the Blue Dragons
.accept 65886 >>Accept To Rhonin's Shield
step
>>Follow the arrow and use the |cffffff00[ExtraActionButton]|r
.goto 2024,41.19,62.27,-1
.goto 2024,39.56,60.26,-1
.goto 2024,38.26,61.50,-1
.complete 65886,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren, Maddy Scattershot and Garz
.accept 66391 >>Accept To the Ruins!
.goto 2024,63.42,58.03
.turnin 66671 >>Turn in Path to Nowhere
.goto 2024,63.22,58.41
.accept 66141 >>Accept Broken Traditions, Broken Bodies
.goto 2024,63.20,58.61
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.02,58.61
.turnin 66391 >>Turn in To the Ruins!
.accept 66353 >>Accept R.A.D. Anomalies
.accept 66352 >>Accept What the Enemy Knows
step
#completewith TheAzureSpanRADAnomalies
>>Kill |cff00ecffTarasek Warriors|r and |cff00ecffArcane Manipulator|r. Loot them for the orders |cffffff00(not shared)|r
.complete 66352,1 
step
#title Record 1/3
>>Use |T134519:0|t[R.A.D] next to the anomalies
.use 191909
.goto 2024,65.52,58.82
.complete 66353,1,1 
step
#title Record 2/3
>>Use |T134519:0|t[R.A.D] next to the anomalies
.use 191909
.goto 2024,66.31,59.37
.complete 66353,1,2 
step
#label TheAzureSpanRADAnomalies
#title Record 3/3
>>Use |T134519:0|t[R.A.D] next to the anomalies
.use 191909
.goto 2024,66.39,59.72
.complete 66353,1 
step
>>Kill |cff00ecffTarasek Warriors|r and |cff00ecffArcane Manipulator|r. Loot them for the orders |cffffff00(not shared)|r
.goto 2024,65.09,59.54,20,0
.goto 2024,66.35,59.56,20,0
.goto 2024,65.54,59.28
.complete 66352,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.03,58.67
.turnin 66353 >>Turn in R.A.D. Anomalies
.turnin 66352 >>Turn in What the Enemy Knows
.accept 66422 >>Accept The Expedition Continues!
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to the Dragon Console. Talk to Lathos Sunband
.goto 2024,65.64,60.78
.turnin 66422 >>Turn in The Expedition Continues!
.accept 66423 >>Accept Worries and Validations
step
#title Clue Found 1
>>Interact with the tablet
.goto 2024,65.32,60.80
.complete 66423,1,1 
step
#title Clue Found 2
>>Interact with the tablet
.goto 2024,65.86,60.55
.complete 66423,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband and Rannan Korren |cffffff00(just leave your characters at the quest giver)|r
.turnin 66423 >>Turn in Worries and Validations
.goto 2024,65.64,60.79
.accept 66425 >>Accept Arcane Overload
.goto 2024,65.63,60.76
step
#title Bubble Dispelled 1
>>Use |T134519:0|t[R.A.D.D.E.R] to dispel the barriers
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.28,61.31
.complete 66425,1,1 
step
#title Bubble Dispelled 2
>>Use |T134519:0|t[R.A.D.D.E.R] to dispel the barriers
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.10,61.54
.complete 66425,1,2 
step
#title Bubble Dispelled 3
>>Use |T134519:0|t[R.A.D.D.E.R] to dispel the barriers on the second floor
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.18,60.95,10,0
.goto 2024,65.00,61.24,10,0
.goto 2024,65.06,61.14
.complete 66425,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.turnin 66425 >>Turn in Arcane Overload
.goto 2024,65.63,60.76
.accept 66426 >>Accept Running Out of Time
.goto 2024,65.64,60.80
step
#title Dragon Glyph: Ruins of Karnthar
.goto 2024,68.65,60.42
.achievement 16577,3 >>Pick up the Dragon Glyph at the top of the tower
step
>>Follow the arrow and wait for the roleplay
.goto 2024,68.46,60.50
.complete 66426,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.goto 2024,68.46,60.50
.turnin 66426 >>Turn in Running Out of Time
.accept 66427 >>Accept A Looming Menace
step
>>Kill |cff00ecffArcane Manipulator Tharon|r
.goto 2024,68.07,61.59
.complete 66427,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband and Rannan Korren
.turnin 66427 >>Turn in A Looming Menace
.goto 2024,68.46,60.50
.accept 66428 >>Accept Friendship For Granted
.goto 2024,68.48,60.43
step
>>Use the |T134519:0|t[R.A.D.D.E.R.E.R] next to the console
.use 192475
.goto 2024,68.61,60.39
.complete 66428,1 
step
>>Wait for the roleplay
.goto 2024,68.50,60.47
.complete 66428,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,68.50,60.47
.turnin 66428 >>Turn in Friendship For Granted
.accept 66429 >>Accept I Will Remember
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Narn |cffffff00(not shared)|r
.goto 2024,65.62,54.84
.skipgossip
.complete 66141,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.goto 2024,63.51,52.97
.turnin 66141 >>Turn in Broken Traditions, Broken Bodies
.accept 66150 >>Accept Rescuing Radza
.accept 66149 >>Accept Elemental Influence
.accept 66148 >>Accept Former Furbolg Family
step
#completewith next
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.complete 66148,1 
step
#title Destroy Totem 1
>>Destroy the Totem
.goto 2024,62.74,51.82
.complete 66149,1,1 
step
#title Kill Furbolgs + Elementals
#completewith next
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.goto 2024,62.71,51.28,15,0
.complete 66148,1 
step
#title Destroy Totem 2
>>Destroy the Totem
.goto 2024,62.29,51.28
.complete 66149,1,2 
step
#title Kill Furbolgs + Elementals
#completewith next
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.goto 2024,62.21,50.66,15,0
.complete 66148,1 
step
#title Destroy Totem 3
>>Destroy the Totem
.goto 2024,62.02,51.75
.complete 66149,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
*Defeat the incoming waves of mobs
.goto 2024,60.94,51.46
.skipgossip
.complete 66150,1 
.complete 66150,2 
step
#title Kill Furbolgs + Elementals
>>Kill |cff00ecffFurbolgs|r and |cff00ecffElementals|r
.goto 2024,61.51,52.07,15,0
.goto 2024,61.47,52.93,15,0
.goto 2024,61.58,54.22,25,0
.goto 2024,61.51,52.07
.complete 66148,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to Narn and Radza Thunderclaw (you may have to wait for him)
.goto 2024,60.92,50.54
.turnin 66148 >>Turn in Former Furbolg Family
.turnin 66149 >>Turn in Elemental Influence
.turnin 66150 >>Turn in Rescuing Radza
.accept 66151 >>Accept His Stone Heart
step
>>Kill |cff00ecffStoneheart|r. Stay away during his ability "Earth Torrent"
*You can skip this if you deal low damage
.goto 2024,60.47,49.43
.complete 66151,1 
step
.isQuestComplete 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
.turnin 66151 >>Turn in His Stone Heart
.goto 2024,60.91,50.50
step
.isQuestTurnedIn 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.accept 66152 >>Accept Nowhere to Go
.goto 2024,60.99,50.56
step
.isOnQuest 66152
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tReturn to Camp Nowhere. Talk to Garz
.goto 2024,63.20,58.67
.turnin 66152 >>Turn in Nowhere to Go
step
#completewith next
.goto 2024,63.45,58.66
.fp >>Get the Camp Nowhere Flight Path
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,63.68,58.91
.turnin 66429 >>Turn in I Will Remember
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kattigat and To'tik
.accept 67111 >>Accept The Ailing Apprentice
.goto 2024,67.22,44.41
.accept 67724 >>Accept The Fending Flames
.accept 70856 >>Accept Kill it with Fire
.goto 2024,67.34,44.35
step
#completewith TheAzureSpanTheFendingFlames
>>Use the |T135433:0|t[Flamethrower Torch] to burn the plunderer corpses on the ground |cffffff00(not shared)|r
>>You can cancel the flamethrower with ESC
.use 199928
.complete 70856,1 
step
#completewith TheAzureSpanTheFendingFlames
>>Kill |cff00ecffShiverweb Crawlers|r. Loot them for their venom glands |cffffff00(not shared)|r
.complete 67111,1 
step
#title Silk 1/4
>>Loot the Spider Silk Cocoon |cffffff00(not shared)|r
.goto 2024,68.07,43.04
.complete 67724,1,1 
step
#title Silk 2/4
>>Loot the Spider Silk Cocoon |cffffff00(not shared)|r
.goto 2024,68.50,43.61
.complete 67724,1,2 
step
#title Silk 3/4
>>Loot the Spider Silk Cocoon |cffffff00(not shared)|r
.goto 2024,68.74,45.39
.complete 67724,1,3 
step
#label TheAzureSpanTheFendingFlames
#title Silk 4/4
>>Loot the Spider Silk Cocoon |cffffff00(not shared)|r
.goto 2024,68.48,45.97
.complete 67724,1 
step
>>Kill |cff00ecffShiverweb Crawlers|r. Loot them for their venom glands |cffffff00(not shared)|r
.goto 2024,68.86,45.36
.complete 67111,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to To'tik and Kattigat
.turnin 67724 >>Turn in The Fending Flames
.turnin 70856 >>Turn in Kill it with Fire
.goto 2024,67.34,44.35
.turnin 67111 >>Turn in The Ailing Apprentice
.accept 70858 >>Accept Back into the Action
.goto 2024,67.22,44.41
step
>>Click on Alia Sunsor on the ground
.goto 2024,67.23,44.38
.complete 70858,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alia Sunsor
.goto 2024,67.30,44.34
.turnin 70858 >>Turn in Back into the Action
.accept 70859 >>Accept What the Guardian Beholds
step
>>Kill |cff00ecffEdavix|r
.goto 2024,69.53,43.18
.complete 70859,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alia Sunsor
.goto 2024,67.30,44.34
.turnin 70859 >>Turn in What the Guardian Beholds
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.accept 66709 >>Accept Field Medic 101
step
>>Remove the spear from Old Grimtusk
.goto 2024,59.26,39.73
.complete 66709,1 
step
>>Pick up the wood |cffffff00(not shared)|r
.goto 2024,59.20,39.79
.complete 66709,2 
step
>>Place the Campfire
.goto 2024,59.25,39.77
.complete 66709,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk |cffffff00(not shared)|r
.goto 2024,59.26,39.74
.skipgossip 189963,1
.complete 66709,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.turnin 66709 >>Turn in Field Medic 101
.accept 66715 >>Accept The Extraction
step
#completewith TheAzureSpanFrostbiteCausesandSymptoms
>>Kill |cff00ecffGnolls|r and destroy their defenses
.accept 66718 >>Accept Gnolls Must Die (Bonus Objective)
.complete 66718,1 
step
>>Follow the arrow
.goto 2024,58.34,41.83
.complete 66715,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66715 >>Turn in The Extraction
.accept 66703 >>Accept Snowball Effect
step
#completewith next
>>Kill |cff00ecffSnowhide Shamans|r. Loot them for the totems |cffffff00(not shared)|r
.goto 2024,58.34,42.60,15,0
.complete 66703,1 
step
>>Kill |cff00ecffSnoll the Icebreaker|r
.goto 2024,57.90,44.82
.complete 66718,2 
step
>>Kill |cff00ecffSnowhide Shamans|r. Loot them for the totems |cffffff00(not shared)|r
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
#loop
.line 2024,58.34,42.64,56.89,42.33,57.64,41.53,58.34,42.64,56.89,42.33,57.64,41.53
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.complete 66703,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66703 >>Turn in Snowball Effect
.accept 67050 >>Accept Frostbite: Causes and Symptoms
step
#label TheAzureSpanFrostbiteCausesandSymptoms
>>Place the totems
.goto 2024,58.24,41.95
.complete 67050,1 
step
>>Kill |cff00ecffGnolls|r and destroy their defenses
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,57.70,42.22
.complete 66718,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.complete 67050,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.turnin 67050 >>Turn in Frostbite: Causes and Symptoms
.accept 66730 >>Accept True Survivors
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to Grimtusk's Hideout and talk to Old Grimtusk
.goto 2024,58.79,34.91
.turnin 66730 >>Turn in True Survivors
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.87
.accept 68639 >>Accept Prowling Polar Predators
.accept 68641 >>Accept Mossing the Mark
step
#completewith TheAzureSpanMossingtheMark
>>Kill |cff00ecffInfected Frigidpelts|r
.complete 68639,1 
step
#title Drakmoss Clump 1
>>Pick up the Drakmoss
.goto 2024,63.68,30.66
.complete 68641,1,1 
step
#title Drakmoss Clump 2
>>Pick up the Drakmoss
.goto 2024,63.57,30.96
.complete 68641,1,2 
step
#title Drakmoss Clump 3
>>Pick up the Drakmoss
.goto 2024,63.53,31.18
.complete 68641,1,3 
step
#title Drakmoss Clump 4
>>Pick up the Drakmoss
.goto 2024,63.41,31.34
.complete 68641,1,4 
step
#label TheAzureSpanMossingtheMark
#title Drakmoss Clump 5
>>Pick up the Drakmoss
.goto 2024,63.22,31.35
.complete 68641,1 
step
>>Kill |cff00ecffInfected Frigidpelts|r
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03,25,0
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03
.complete 68639,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.86
.turnin 68639 >>Turn in Prowling Polar Predators
.turnin 68641 >>Turn in Mossing the Mark
step
>>Dragonride to the waypoint location
.goto 2024,65.81,25.33
.complete 65886,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.33
.turnin 65886 >>Turn in To Rhonin's Shield
.accept 65887 >>Accept To the Mountain
.accept 67299 >>Accept Drakes be Gone
step
#completewith next
.goto 2024,65.71,25.56,10,0
.goto 2024,65.85,26.75,10,0
.goto 2024,66.03,25.60,10,0
.vehicle 192872 >>Enter the Arcane Blaster
step
>>Use |T429383:0|tArcane Blast (1) to kill the flying drakes |cffffff00(not shared)|r
>>You can use (2) to slow them
.goto 2024,65.71,25.56
.complete 67299,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.32
.turnin 67299 >>Turn in Drakes be Gone
step
#completewith next
+Fly to the Summoned Destroyer using your dragonriding mount
step
.goto 2024,70.12,33.26
.accept 69895 >>Accept Summoned Destroyer (Elite Objective)
.complete 69895,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Khadgar
.turnin 65887 >>Turn in To the Mountain
.accept 65943 >>Accept Primal Offensive
.goto 2024,70.01,35.23
.accept 65944 >>Accept Lava Burst
.accept 66647 >>Accept Elemental Unfocus
.goto 2024,70.02,35.34
step
#sticky
#label TheAzureSpanPrimalOffensive
>>Search for mobs in the area shown on your minimap
.goto 2024,72.44,37.27,0,0
.complete 65943,1 
step
#title Lava Orb 1
>>Destroy the orb |cffffff00(not shared)|r
.goto 2024,71.23,35.69,30,0
.goto 2024,72.26,37.26
.complete 65944,1,1 
step
>>Kill |cff00ecffRuvin Stonegrinder|r. Loot her for the Elemental Focus |cffffff00(not shared)|r
.goto 2024,72.51,38.11,30,0
.goto 2024,72.90,38.71
.complete 66647,1 
step
#title Lava Orb 2
>>Destroy the orb |cffffff00(not shared)|r
.goto 2024,73.11,37.77
.complete 65944,1,2 
step
#title Lava Orb 3
>>Destroy the orb |cffffff00(not shared)|r
.goto 2024,73.77,38.31
.complete 65944,1 
step
#requires TheAzureSpanPrimalOffensive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar and Kalecgos
.goto 2024,74.46,37.84
.turnin 66647 >>Turn in Elemental Unfocus
.turnin 65944 >>Turn in Lava Burst
.turnin 65943 >>Turn in Primal Offensive
step
.goto 2024,65.39,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.accept 66553 >>Accept Hollow Up
.accept 66554 >>Accept Aggressive Self-Defence
step
.goto 2024,65.56,16.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tyrnokos Sunstrike
.accept 66622 >>Accept Wayward Tools
step
>>Click on the Wayward Tools (you can do this while mounted)
.target Wayward Tool
.goto 2024,65.96,16.51,25,0
.goto 2024,65.82,17.41,25,0
.goto 2024,65.25,17.23,25,0
.goto 2024,64.82,17.31,25,0
.goto 2024,64.71,16.83,25,0
.complete 66622,1 
step
#completewith TheAzureSpanHollowUp
>>Defeat |cff00ecffFurbolgs|r
.complete 66554,1 
step
#title Clue 1/6
>>Click on the Electrocuted Winterpelt |cffffff00(not shared)|r
.goto 2024,66.48,13.27
.complete 66553,1,1 
step
#title Clue 2/6
>>Click on the Electrocuted Winterpelt |cffffff00(not shared)|r
.goto 2024,66.56,12.67
.complete 66553,1,2 
step
#title Clue 3/6
>>Click on the Electrocuted Winterpelt |cffffff00(not shared)|r
.goto 2024,66.81,12.51
.complete 66553,1,3 
step
#title Clue 4/6
>>Click on the Electrocuted Winterpelt |cffffff00(not shared)|r
.goto 2024,66.53,12.18
.complete 66553,1,4 
step
#title Clue 5/6
>>Click on the Electrocuted Winterpelt |cffffff00(not shared)|r
.goto 2024,66.29,12.25
.complete 66553,1,5 
step
#label TheAzureSpanHollowUp
#title Clue 6/6
>>Click on the Electrocuted Winterpelt |cffffff00(not shared)|r
.goto 2024,66.11,13.22
.complete 66553,1 
step
>>Defeat |cff00ecffFurbolgs|r
.goto 2024,65.85,12.78,25,0
.goto 2024,66.82,13.47,25,0
.goto 2024,66.96,11.89,25,0
.goto 2024,65.85,12.78
.complete 66554,1 
step
.goto 2024,65.38,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.turnin 66553 >>Turn in Hollow Up
.turnin 66554 >>Turn in Aggressive Self-Defence
.accept 66555 >>Accept Bear With Me
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden |cffffff00(not shared)|r
.goto 2024,65.38,15.95
.skipgossip 189401,1
.complete 66555,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden and Tyrnokos Sunstrike
.turnin 66555 >>Turn in Bear With Me
.goto 2024,65.38,15.95
.turnin 66622 >>Turn in Wayward Tools
.goto 2024,65.57,16.17
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Dragonflight
#subgroup Threads of Fate Multibox 60-70
#displayname Chapter 1 - The Waking Shores Multibox
#name A1The Waking Shores Multibox
#next B2Ohn'ahran Plains Multibox
step << Horde !Dracthyr
>>This should automatically appear in your quest log
.accept 65435 >>Accept The Dragon Isles Await
step << Horde !Dracthyr
#completewith MasterRiding
.goto 85,51.19,63.09,15,0
.goto 85,50.53,61.63,15 >> Take the elevator up to the upper part of Orgrimmar
.skill riding,225,1
step << Horde !Dracthyr
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>Train Expert and Master Riding
.target Maztha
.skill riding,225,1
step << Horde !Dracthyr
#label MasterRiding
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>Train Master Riding
.target Maztha
step << Horde !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
>>Press "Escape" on your keyboard to skip the cinematic
.goto 84,44.08,37.99
.turnin 65435 >>Turn in The Dragon Isles Await
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
.accept 65437 >>Accept Aspectral Invitation
.complete 65437,1 
.turnin 65437 >>Turn in Aspectral Invitation
.goto 85,44.06,37.97
.skipgossip 190239,1
.target Ebyssian
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleida and Cindrethresh
.accept 65443 >>Accept Expeditionary Coordination
.goto 85,44.19,37.79
.accept 72256 >>Accept The Dark Talons
.goto 85,44.04,38.25
.target Naleidea Rivergleam
.target Scalecommander Cindrethresh
step << Horde
.goto 85,38.59,56.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tacha
.complete 65443,2 
.skipgossip
.target Pathfinder Tacha
step << Horde
.goto 85,57.09,54.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Magor
.complete 65443,1 
.skipgossip
.target Boss Magor
step << Horde
.goto 85,70.36,49.01,10,0
.goto 85,71.44,50.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coralie upstairs in The Wyvern's Tail
.complete 65443,3 
.skipgossip
.target Cataloger Coralie
step << Horde
.goto 85,55.08,89.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kodethi on top of the Wall of Orgrimmar
.complete 72256,1 
.target Kodethi
.skipgossip
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea and Khadgar
>>Press "Escape" on your keyboard to skip the cinematic
.turnin 65443 >>Turn in Expeditionary Coordination
.turnin 72256 >>Turn in The Dark Talons
.goto 1,55.81,12.66
.accept 65439 >>Accept Whispers on the Winds
.complete 65439,1 
.goto 1,55.92,12.61
.timer 3,Khadgar Appearance
.skipgossip 193450,1
.target Naleidea Rivergleam
.target Archmage Khadgar
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian and Naleidea
.turnin -65439 >>Turn in Whispers on the Winds
.turnin -70198 >>Turn in The Call of the Isles
.goto 1,55.85,12.74
.accept 65444 >>Accept To the Dragon Isles!
.goto 1,55.81,12.66
.target Ebyssian
.target Naleidea Rivergleam
step << Horde
#completewith next
+You can see the time to arrival above Skarukaru. If you can't see it, talk to her.
step << Horde
.goto 1,55.96,13.18
>>Wait for the Zeppelin to arrive. Talk to Sharukaru if you want to see how long it'll take to arrive
.complete 65444,1 
step << Horde
#completewith HordeArrivingInDragonIsles
+|cffffff00General Threads of Fate Notes:|r
*- Make sure to spend all your |cff00ecffDragon Glyphs|r in the Dragonriding tree (minimap button)
*- Loot |cff00ecffDjaradin Caches|r, |cff00ecffDecay Covered Chests|r, or |cff00ecffClan Chests|r (they reward xp)
*- Dragonriding races give experience the first time you do them but they're only worth doing in combination with a world quest
*- Most of the good world quests are included in the guide
step << Horde
#completewith HordeArrivingInDragonIsles
+|cffffff00General Multiboxing Notes:|r
*- Make sure to enable the "Automatic quest sharing" option
*- There is only one passenger seat on a Dragonriding mount
*- You have to loot mobs on each character
*- Quests where you have to interact with things are marked with '|cffffff00(not shared)|r' if you have to do them on each of you characters
step << Horde
.zoneskip 2022
.isOnQuest 65444
.goto 1,55.99,13.33
.zone 1978 >>Go onto the Zeppelin when it arrives. Wait at the waypoint location
step << Horde
#completewith next
.zone 2022 >>Jump of the zeppelin. You will get ported to the front (if not swim to a ship and click on it). |cffffff00When your loading screen was longer then ~15 seconds then don't jump|r.
step << Horde
#label HordeArrivingInDragonIsles
.goto 2022,80.83,27.80
.complete 65444,2 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam, Scalecommander Cindrethresh and Boss Magor
.turnin 65444 >>Turn in To the Dragon Isles!
.accept 65452 >>Accept Explorers in Peril
.goto 2022,80.62,27.60
.accept 65453 >>Accept Primal Pests
.accept 65451 >>Accept Practice Materials
.goto 2022,80.63,27.63
step << Horde
#completewith WakingShoresExplorersInPeril
>>Kill |cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
#completewith WakingShoresExplorersInPeril
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
.complete 65451,1 
step << Horde
>>Destroy the Protodragon Rib Cage (|cffffff00not shared|r)
.goto 2022,79.80,28.20,25,0
.goto 2022,80.37,26.34
.complete 65452,1 
step << Horde
>>Rescue Archivist Spearblossom (|cffffff00not shared|r)
*Look above you!
.goto 2022,78.71,24.52
.complete 65452,2 
step << Horde
.accept 66076 >>Accept Ancient Hornswog (Elite Objective)
.goto 2022,78.17,23.22
.complete 66076,1 
.goto 2022,77.29,22.04
step << Horde
#label WakingShoresExplorersInPeril
>>Help Lazee hanging on the chain (|cffffff00not shared|r)
.goto 2022,77.37,29.77
.complete 65452,3 
step << Horde
#completewith next
>>Kill |cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
.goto 2022,77.95,28.09,10,0
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65451,1 
step << Horde
>>Kill |cff00ecffBig Proto Drakes|r
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65453,1 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam
.goto 2022,76.61,33.60
.turnin 65452 >>Turn in Explorers in Peril
.accept 69910 >>Accept Where is Wrathion?
step << Alliance !Dracthyr
>>This should automatically appear in your quest log
.accept 65436 >>Accept The Dragon Isles Await
step << Alliance !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion in Stormwind
.goto 84,79.81,27.04
.turnin 65436 >>Turn in The Dragon Isles Await
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.accept 66577 >>Accept Aspectral Invitation
.goto 84,79.81,27.04
.skipgossip 189569,1
.complete 66577,1 
.turnin 66577 >>Turn in Aspectral Invitation
.target Wrathion
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel and Toddy Whiskers
.accept 72240 >>Accept The Obsidian Warders
.goto 84,79.95,26.95
.target Scalecommander Azurathel
.accept 66589 >>Accept Expeditionary Coordination
.goto 84,79.73,27.35
.target Toddy Whiskers
step << Alliance
>>Go outside the keep slightly so you can mount up
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin
.goto 84,79.45,26.89,3,0
.goto 84,64.12,37.21
.skipgossip 1
.complete 66589,1 
.target Thaelin Darkanvil
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd
.goto 84,63.36,69.91
.skipgossip
.complete 66589,3 
.target Cataloger Wulferd
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
.goto 84,50.91,67.36
.skipgossip
.complete 72240,1 
.target Dervishian
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Pathfinder Jeb
.goto 84,38.26,45.52
.skipgossip
.complete 66589,2 
.target Pathfinder Jeb
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.goto 84,22.70,55.66
.turnin 66589 >>Turn in Expeditionary Coordination
.turnin 72240 >>Turn in The Obsidian Warders
.target Toddy Whiskers
step << Alliance
.goto 84,22.94,56.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.accept 66596 >>Accept Whispers on the Winds
.skipgossip
.complete 66596,1 
.target Archmage Khadgar
step << Alliance
.goto 84,22.92,56.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66596 >>Turn in Whispers on the Winds
.target Wrathion
step << Alliance
.goto 84,22.73,55.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin -70197 >>Turn in The Call of the Isles
.accept 67700 >>Accept To the Dragon Isles!
.target Toddy Whiskers
step << Alliance
>>Wait for the Arrival of the Ship
.goto 84,22.36,55.98
.complete 67700,1 
step << Alliance
#completewith AllianceArrivingDragonIsles
+|cffffff00General Threads of Fate Notes:|r
*- Make sure to spend all your |cff00ecffDragon Glyphs|r in the Dragonriding tree (minimap button)
*- Loot |cff00ecffDjaradin Caches|r, |cff00ecffDecay Covered Chests|r, or |cff00ecffClan Chests|r (they reward xp)
*- Dragonriding races give experience the first time you do them but only do them in combination with a world quest
*- Most of the good world quests are included in the guide
step << Alliance
#completewith AllianceArrivingDragonIsles
+|cffffff00General Multiboxing Notes:|r
*- Make sure to enable the "Automatic quest sharing" option
*- There is only one passenger seat on a Dragonriding mount
*- You have to loot mobs on each character
*- Quests where you have to interact with things are marked with '|cffffff00(not shared)|r' if you have to do them on each of you characters
step << Alliance
.isOnQuest 67700
.goto 84,20.82,53.83
.zone 1978 >>Go to the front of the ship on the large wood plank
step << Alliance
#completewith next
.zone 2022 >>Jump of the ship. You will get ported to the front (if not swim to a ship and click on it). |cffffff00When your loading screen was longer then ~15 seconds then don't jump|r.
step << Alliance
#label AllianceArrivingDragonIsles
.goto 2022,82.13,31.88
.complete 67700,2 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers, Thaelin Darkanvil and Scalecommander Azurathel
.turnin 67700 >>Turn in To the Dragon Isles!
.accept 70122 >>Accept Explorers in Peril
.goto 2022,82.13,31.88
.accept 70124 >>Accept Practice Materials
.goto 2022,82.09,31.89
.accept 70123 >>Accept Primal Pests
.goto 2022,82.16,31.86
.target Toddy Whiskers
.target Thaelin Darkanvil
.target Scalecommander Azurathel
step << Alliance
#completewith WakingShoresExplorersInPerilCogcatcher
.goto 2022,82.47,32.10,10,0
.goto 2022,82.91,32.54,10 >>Follow the arrow up the mountain
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>Kill |cff00ecffthe Big Proto-Drakes|r
.complete 70123,1 
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
.complete 70124,1 
step << Alliance
#label WakingShoresExplorersInPerilCogcatcher
>>Rescue Professor Cogcatcher (|cffffff00not shared|r)
.goto 2022,83.55,33.59
.complete 70122,1 
.target Professor Cogcatcher
step << Alliance
>>Rescue Archivist Rellid whos in the air (|cffffff00not shared|r)
.goto 2022,83.01,36.30
.complete 70122,2 
.target Archivist Rellid
step << Alliance
>>Go inside the Cave over the Bridge. Kill |cff00ecffPrimal Scythid Queen|r
.goto 2022,81.17,37.88
.complete 66074,1 
.unitscan Primal Scythid Queen
step << Alliance
#completewith next
.goto 2022,81.88,36.88,20 >>Leave the cave
step << Alliance
#label WakingShoresExplorersInPerilAlliance
>>Rescue Spelunker Lockeye (|cffffff00not shared|r)
.goto 2022,79.54,35.35
.complete 70122,3 
.target Spelunker Lockeye
step << Alliance
#completewith next
>>Kill |cff00ecffthe Big Proto-Drakes|r
.complete 70123,1 
step << Alliance
>>Kill |cff00ecffPrimal Proto-Whelps|r. Loot them for their scales
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70124,1 
step << Alliance
>>Kill |cff00ecffthe Big Proto-Drakes|r
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70123,1 
step << Alliance
.goto 2022,76.63,33.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin 70122 >>Turn in Explorers in Peril
.accept 70125 >>Accept Where is Wrathion?
.target Toddy Whiskers
step
#completewith point1
+We Accept the quests in this area only during roleplay. Strictly follow the arrow for maximum efficieny
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55636 >>Talk to Sendrax 
.timer 17,Roleplay Duration
.target Sendrax
step << Horde
#completewith WakingShorePractiveMaterialsHorde
>>Complete the other steps
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
#completewith WakingShorePractiveMaterialsAlliance
>>Complete the other steps
.goto 2022,76.58,33.66,0,0
.complete 70125,1 << Alliance 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh and Warlord Breka Grimaxe
.accept 66110 >>Accept Give Peace a Chance
.goto 2022,76.36,33.09
.turnin 65453 >>Turn in Primal Pests
.goto 2022,76.28,33.02
step << Horde
#label WakingShorePractiveMaterialsHorde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Boss Magor
.goto 2022,75.94,33.25
.turnin 65451 >>Turn in Practice Materials
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.goto 2022,75.84,33.49
.accept 66101 >>Accept From Such Great Heights
step << Horde
#label WakingShoreInquireMissingDragonsHorde
>>Wait for the roleplay
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
.goto 2022,76.51,34.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kerazal
.daily 70750,72375,72374,72068,72373 >>Accept Aiding the Accord
step << Alliance
.goto 2022,76.49,34.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin Darkanvil
.turnin 70124 >>Turn in Practice Materials
.target Thaelin Darkanvil
step << Dracthyr Alliance
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>Accept Without Purpose
.target Haephesta
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 1
.complete 70148,1 
.target Kholmar Sunrunner
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 1
.complete 70148,2 
.target Toninaar
step << Alliance
.goto 2022,76.73,34.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.accept 67053 >>Accept Give Peace a Chance
.target Captain Garrick
step << Alliance
.goto 2022,76.75,34.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel
.turnin 70123 >>Turn in Primal Pests
.target Scalecommander Azurathel
step
#label point1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 70125 >>Turn in Where is Wrathion? << Alliance
.turnin 69910 >>Turn in Where is Wrathion? << Horde
.accept 72293 >>Accept Adventuring in the Dragon Isles
.target Sendrax
step
>>Click on the scouting map and accept the Waking Shores quest
.goto 2022,76.51,34.24
.accept 72266 >>Accept The Waking Shores
.complete 72293,1 
step << Horde
.goto 2022,76.51,34.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kerazal
.daily 70750,72375,72374,72068,72373 >>Accept Aiding the Accord
step
>>Click on the quest in your quest log under your minimap (reload if you can't turn it in)
.goto 2022,76.58,33.66
.turnin 72293 >>Turn in Adventuring in the Dragon Isles
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 72266 >>Turn in The Waking Shores
.accept 69911 >>Accept Excuse the Mess
step << Dracthyr Horde
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>Accept Without Purpose
.target Haephesta
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 1
.complete 70148,1 
.target Kholmar Sunrunner
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Fastrasz
.goto 2022,76.33,35.62
.skipgossip 193393,2
.complete 69911,1 
.target Ambassador Fastrasz
step
>>Interact with the book
.goto 2022,76.28,35.62
.skipgossip 1
.complete 69911,2 
step
>>Interact with the big stone
.goto 2022,75.61,34.17
.complete 69911,3 
step
>>Interact with the brazier
.goto 2022,78.43,31.80
.complete 69911,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 69911 >>Turn in Excuse the Mess
.accept 69912 >>Accept My First Real Emergency!
.target Sendrax
step
#completewith next
+|cfff78300During the roleplay turn in and complete the specified quests|r.
step
#completewith WakingShoreFromSuchGreatHeights
>>Wait for the roleplay
.complete 69912,1 
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55637 >>Talk to Sendrax
.timer 33,Roleplay Duration
.target Sendrax
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.goto 2022,76.73,34.55
.turnin 66110 >>Turn in Give Peace a Chance
.accept 66111 >>Accept Encroaching Elementals
.target Captain Garrick
step << Alliance
.goto 2022,76.36,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 67053 >>Turn in Give Peace a Chance
.accept 70135 >>Accept Encroaching Elementals
.target Warlord Breka Grimaxe
step
#completewith WakingShoreDragpnGlyphandYou
.gossipoption 107095
.gossipoption 107099 >>Fly to Lithragosa to enable your passenger seat. You can only take one person per mount with you. Fly there with all of your characters as you can swap mounts when your vigor is depleted on one character
.goto 2022,74.57,56.97
.target Lithragosa
step
#completewith next
.goto 2022,76.31,34.33,10 >>Follow the waypoint to trigger the next roleplay (which is proximity based)
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 1
.complete 70148,2 
.target Toninaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.goto 2022,76.35,34.64
.accept 66112 >>Accept Always Be Crafting
.target Grun Ashbeard
step
#completewith WakingShorePrimalEarthenCore
>>Kill mostly the |cff00ecffSmall Fire Elementals|r. The Earth elementals are a lot tougher.
.goto 2022,73.89,33.74,0,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step
#title Dragon Glyph: Wingrest Embassy
.goto 2022,74.91,37.44
.achievement 16575,5 >>Pick up the Dragon Glyph above the small tower
step
#completewith next
.goto 2022,75.52,36.34,15,0
.goto 2022,75.78,37.01,10 >>Enter the cave
step
#label WakingShorePrimalEarthenCore
>>Go into the Cave and kill |cff00ecffBaron Crustcore|r. Loot him for the core |cffffff00(not shared)|r
.goto 2022,74.88,39.31
.complete 66112,2 
step
#completewith next
.goto 2022,75.78,37.01,20 >>Leave the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Majordomo Selistra
.turnin 69912 >>Turn in My First Real Emergency!
.goto 2022,76.18,34.50
.accept 69914 >>Accept The Djaradin Have Awoken
.goto 2022,76.22,34.53
.target Wrathion
.target Majordomo Selistra
step
#completewith WakingShorePrimalEarthenCore
>>Wait for the roleplay
.complete 69914,1 
step
#completewith next
.goto 2022,76.22,34.53
.gossipoption 55872 >>Talk to Majordomo Selistra
.timer 50,Roleplay Duration
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.goto 2022,76.41,34.45
.accept 69965 >>Accept Quality Assurance
.target Haephesta
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster
.goto 2022,75.85,33.50
.skipgossip 1
.complete 70148,3 
.target Aster Cloudgaze
step
#completewith WakingShoresQualityAssurance
>>Focus on killing the |cff00ecffSmall Fire Elementals|r
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>Interact with the Note on the Wall
.goto 2022,75.05,33.52
.complete 70148,4 
step
#title Geodes Excavated 1
>>Click on the Volcanic Geode
.goto 2022,74.57,33.51
.complete 69965,1,1 
step
#title Geodes Excavated 2
>>Click on the Volcanic Geode
.goto 2022,73.93,33.23
.complete 69965,1,2 
step
#title Geodes Excavated 3
>>Click on the Volcanic Geode
.goto 2022,73.56,32.21
.complete 69965,1,3 
step
#label WakingShorePrimalMoltenCore
>>Kill |cff00ecffBaron Ashflow|r. Loot him for the core |cffffff00(not shared)|r
.goto 2022,72.91,32.97
.complete 66112,1 
step
#title Geodes Excavated 4
>>Click on the Volcanic Geode
.goto 2022,72.88,33.73
.complete 69965,1,4 
step
#title Geodes Excavated 5
>>Click on the Volcanic Geode
.goto 2022,72.94,34.12
.complete 69965,1,5 
step
#label WakingShoresQualityAssurance
#title Geodes Excavated 6
>>Click on the Volcanic Geode
.goto 2022,73.63,33.89
.complete 69965,1 
step << Dracthyr
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip
.complete 70148,5 
.target Talon Ethrethi
step
>>Kill mostly the |cff00ecffSmall Fire Elementals|r
.goto 2022,74.65,35.28,10,0
#loop
.line 2022,73.62,33.39,74.65,35.28
.goto 2022,73.62,33.39,25,0
.goto 2022,74.65,35.28,25,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip
.complete 70148,5 
.target Talon Ethrethi
step
>>Wait for the roleplay
.goto 2022,76.22,34.53
.complete 69914,1 
step
#requires WakingShoresEncroachingElementals
.goto 2022,76.26,34.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.turnin 69914 >>Turn in The Djaradin Have Awoken
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax then immediately turn in the next Quests
.accept 65760 >>Accept Reporting for Duty
.goto 2022,76.26,34.40
.target Sendrax
step
.goto 2022,76.35,34.64
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.turnin 66112 >>Turn in Always Be Crafting
.target Grun Ashbeard
step
.goto 2022,76.41,34.45
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.turnin 69965 >>Turn in Quality Assurance
.turnin 70148 >>Turn in Without Purpose << Dracthyr
.target Haephesta
step << Alliance
.goto 2022,76.37,33.09
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 70135 >>Turn in Encroaching Elementals
.target Warlord Breka Grimaxe
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
*Immediately go there.
.goto 2022,76.73,34.56
.turnin 66111 >>Turn in Encroaching Elementals
.target Captain Garrick
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.27,34.41
.skipgossip 193363,3
.complete 65760,1 
.target Sendrax
step
>>|cfff78300Follow and stay close to Sendrax|r
>>|cffffff00Multibox Tip:|r Talk to Sendrax on every character and place them on top of each other. Wait until Sendrax stops moving on every characters. Then you can safely walk with one character while the others are following
.goto 2022,75.28,36.20,20,0
.goto 2022,73.20,35.96,20,0
.goto 2022,72.29,36.65,20,0
.goto 2022,71.25,40.67
.complete 65760,2 
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65760 >>Turn in Reporting for Duty
.accept 65990 >>Accept Deliver Whelps From Evil
.accept 65989 >>Accept Invader Djaradin
.target Commander Lethanak
step
#sticky
#label WakingShoreInvaderDjaradin
*Focus on killing |cff00ecffQalashi Scavengers|r. They have the least amount of HP
.goto 2022,70.38,44.91,0,0
.complete 65989,1 
step
>>Save the |cff00ff2eWhimpering Whelpling|r |cffffff00(not shared)|r
.goto 2022,71.36,44.65
.complete 65990,1,1 
step
>>Save the |cff00ff2eWhimpering Whelpling|r |cffffff00(not shared)|r
.goto 2022,70.97,46.21,10,0
.goto 2022,70.87,46.77,10,0
.goto 2022,71.12,46.98,10,0
.goto 2022,70.97,46.63
.complete 65990,1,2 
step
>>Save the |cff00ff2eWhimpering Whelpling|r |cffffff00(not shared)|r
.goto 2022,69.86,45.3
.complete 65990,1,3 
step
>>Save the |cff00ff2eWhimpering Whelpling|r |cffffff00(not shared)|r
.goto 2022,69.38,43.26
.complete 65990,1 
step
#requires WakingShoreInvaderDjaradin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65989 >>Turn in Invader Djaradin
.turnin 65990 >>Turn in Deliver Whelps From Evil
.accept 65991 >>Accept Time for a Reckoning
.target Commander Lethanak
step
.goto 2022,71.27,40.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mender Eskros
.accept 72122 >>Accept Erstwhile Ecologists
.target Mender Eskros
step
.goto 2022,74.43,42.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ecologist Tharu and Ecologist Iskha
.turnin 72122 >>Turn in Erstwhile Ecologists
.accept 66105 >>Accept A Scalpel of a Solution
.accept 66107 >>Accept Wildlife Rescue
.target Ecologist Tharu
.target Ecologist Iskha
step
#completewith next
>>Kill |cff00ecffRamapging Water|r and |cff00ecffRamapging Wind|r
.complete 66105,1 
.complete 66105,2 
step
>>Click on the trapped animals. |cffffff00Follow the arrrow and focus on Cowering Crabs and Helpless Waterfowls|r
.goto 2022,76.13,42.62,25,0
.goto 2022,76.74,43.78,25,0
.goto 2022,76.21,45.68,25,0
.goto 2022,78.03,45.84,25,0
.goto 2022,78.72,47.83,25,0
.goto 2022,79.16,49.12,25,0
.goto 2022,80.19,47.91,25,0
.goto 2022,79.03,46.29,25,0
.complete 66107,1 
step
>>Kill |cff00ecffRamapging Water|r and |cff00ecffRamapging Wind|r
.goto 2022,76.13,42.62,35,0
.goto 2022,75.52,48.00,35,0
.goto 2022,77.22,49.11,35,0
.goto 2022,79.14,48.93,35,0
.goto 2022,79.72,51.29,35,0
#loop
.line 2022,76.13,42.62,75.52,48.00,77.22,49.11,79.14,48.93,79.72,51.29
.goto 2022,76.13,42.62,40,0
.goto 2022,75.52,48.00,40,0
.goto 2022,77.22,49.11,40,0
.goto 2022,79.14,48.93,40,0
.goto 2022,79.72,51.29,40,0
.complete 66105,1 
.complete 66105,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ecologist Tharu and Ecologist Iskha
.turnin 66107 >>Turn in Wildlife Rescue
.goto 2022,74.51,42.18
.turnin 66105 >>Turn in A Scalpel of a Solution
.accept 66104 >>Accept Forensic Ecology
.goto 2022,74.42,42.14
.target Ecologist Tharu
.target Ecologist Iskha
step
>>Click on the corpses on the table
.goto 2022,74.46,42.20
.complete 66104,1 
.complete 66104,2 
step
>>Examine the shells on the table
.goto 2022,74.46,42.20
.complete 66104,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ecologist Iskha
.turnin 66104 >>Turn in Forensic Ecology
.accept 66108 >>Accept A Sledgehammer of a Solution
.goto 2022,74.43,42.14
.target Ecologist Iskha
step
>>Kill |cff00ecffWhirglgurgl|r
.goto 2022,79.77,39.80
.complete 66108,2 
step
>>Kill |cff00ecffSogglmoggl|r
.goto 2022,80.08,44.10
.complete 66108,1 
step
.goto 2022,80.13,42.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bubbled Duckling
.accept 66196 >>Accept A Quack For Help
.target Bubbled Duckling
step
>>Follow the arrow. You may have to wait some time for the duckling
.goto 2022,74.54,42.09
.complete 66196,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ecologist Tharu and Forensic Ecology
.turnin 66196 >>Turn in A Quack For Help
.goto 2022,74.51,42.17
.turnin 66108 >>Turn in A Sledgehammer of a Solution
.goto 2022,74.42,42.14
.target Ecologist Tharu
.target Ecologist Iskha
step
.abandon 66106 >>Abandon Don't Be So Shellfish
step
#completewith WakingShoresKilljoyBlacktalinObsidian
>>Kill Djaradin Enemies around the Camp. You can also kill Dragonhunter Igordan multiple times
.goto 2022,62.76,34.50,0,0
.accept 65994 >>Accept Djaradin Djustice (Bonus Objective)
.complete 65994,1 
.unitscan Dragonhunter Igordan
step
#label WakingShoreTimeForReckoning
>>Climb the tower and wait for Wrathion. Talk to him
.goto 2022,68.12,36.87,20,0
.goto 2022,66.59,34.58
.complete 65991,1 
.target Wrathion
step
.goto 2022,66.36,35.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 65991 >>Turn in Time for a Reckoning
.accept 65993 >>Accept Killjoy
.accept 65992 >>Accept Blacktalon Intel
.target Wrathion
step
#label WakingShoreDragonHunderIgordan
>>Kill |cff00ecffDragonhunter Igordan|r. If he's not up than kill some mobs around you until he respawns
.goto 2022,64.26,33.05
.accept 66956 >>Accept Dragonhunter Igordan (Elite Objective)
.complete 66956,1 
.unitscan Dragonhunter Igordan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Right |cffffff00(not shared)|r
.goto 2022,65.09,29.35
.skipgossip 1
.complete 65992,3 
step
#completewith next
>>Kill |cff00ecffMeatgrinder Sotok|r. Loot him for the Qualashi Plans. Click it in your bags
.complete 65993,1 
.collect 193874,1
.accept 65995 >>Accept The Obsidian Citadel
.unitscan Meatgrinder Sotok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Left |cffffff00(not shared)|r
.goto 2022,64.11,30.33,30,0
.goto 2022,63.43,28.87
.skipgossip 1
.complete 65992,2 
.target Left
step
>>Kill |cff00ecffMeatgrinder Sotok|r. Loot him for the Qualashi Plans. Click it in your bags |cffffff00(not shared)|r
.goto 2022,62.96,29.43
.complete 65993,1 
.collect 193874,1,65995,1
.accept 65995 >>Accept The Obsidian Citadel
.unitscan Meatgrinder Sotok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia |cffffff00(not shared)|r
.goto 2022,64.58,30.57,30,0
.goto 2022,64.41,33.29,30,0
.goto 2022,63.03,33.34
.skipgossip
.complete 65992,1 
.target Talonstalker Kavia
step
#label WakingShoresKilljoyBlacktalinObsidian
>>Climb the stairs and talk to Wrathion
.goto 2022,62.62,32.67,24,0
.goto 2022,62.65,33.17
.turnin 65993 >>Turn in Killjoy
.turnin 65992 >>Turn in Blacktalon Intel
.turnin 65995 >>Turn in The Obsidian Citadel
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,62.76,33.11
.accept 65996 >>Accept Veteran Reinforcements
.target Majordomo Selistra
step
>>Kill Djaradin Enemies around the Camp. You can also kill Dragonhunter Igordan multiple times
.goto 2022,62.17,34.69,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,66.00,36.88,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,62.17,34.69
.accept 65994 >>Accept Djaradin Djustice (Bonus Objective)
.complete 65994,1 
.unitscan Dragonhunter Igordan
step
#completewith next
+|cfff78300Reminder: You can keybind the 'Active Items'|r
+|cfff78300How to Keybind:|r Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*Use a heal spell instead if possible
.use 193917
.goto 2022,60.99,35.63
.complete 65996,1,1 
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*|cffffff00Use a heal spell instead if possible|r
.use 193917
.goto 2022,61.11,36.77
.complete 65996,1,2 
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>Accept Fighting Fire with... Water
.target Caretaker Ventraz
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*Use a heal spell instead if possible
.use 193917
.goto 2022,59.04,34.84
.complete 65996,1,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>Accept Fighting Fire with... Water
.target Caretaker Ventraz
step
#label WakingShoreFightingFirewithWater
>>Kill fire enemies inside the cave
.goto 2022,59.30,33.30
.complete 66998,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.10,34.84
.turnin 66998 >>Turn in Fighting Fire with... Water
.target Caretaker Ventraz
step
>>Use the |T967530:0:0|t[Rejuvenating Draught] on |cff00ff2eInjured Drakonids|r
*Use a heal spell instead if possible
.use 193917
.goto 2022,56.64,34.77
.complete 65996,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Azkra
.goto 2022,54.99,30.76
.turnin 65996 >>Turn in Veteran Reinforcements
.accept 65997 >>Accept Chasing Sendrax
.target Caretaker Azkra
step
.goto 2022,54.99,30.77
.complete 65996,2 
step
.itemcount 132516,1
#completewith WakingShoreChasingSendrax
.cooldown item,132516,>0,1
.cast 202844 >>Use |T1405809:0|t[Gunshoes]
step
#completewith next
+You can skip the next cutscene (Esc -> Yes).
step
#label WakingShoreChasingSendrax
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax |cffffff00(not shared)|r
.goto 2022,55.18,24.95
.skipgossip 187406,1
.complete 65997,1 
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,55.18,24.95
.turnin 65997 >>Turn in Chasing Sendrax
.accept 65999 >>Accept Red in Tooth and Claw
.accept 65998 >>Accept Future of the Flights
.target Sendrax
step
>>Interact with the book
.goto 2022,55.26,24.69
.accept 66000 >>Accept Library of Alexstrasza
step
#sticky
#label WakingShoreRedInToothAndClaw
>>Kill |cff00ecffPrimalists/Revenants/Taraseks|r while doing the other objectives
.goto 2022,56.37,22.32,0,0
.complete 65999,1 
step
#completewith WakingShoreFutureoftheFlight
>>Kill |cff00ecffFirava the Rekindler|r when you see her (patrolling in the area)
.goto 2022,56.97,25.28,0,0
.complete 70648,1 
.unitscan Firava the Rekindler
step
>>Interact with the book |cffffff00(not shared)|r
.goto 2022,53.36,22.39
.complete 66000,1,1 
step
>>Interact with the book |cffffff00(not shared)|r
.goto 2022,53.47,21.99
.complete 66000,1,2 
step
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.12,22.01
.complete 65998,1 
.complete 65998,2,3 
step
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.71
.complete 65998,2,6 
step
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.89,21.36
.complete 65998,2 
step
>>Interact with the book |cffffff00inside the building|r |cffffff00(not shared)|r
.goto 2022,54.62,20.36
.complete 66000,1,3 
step
>>Interact with the book |cffffff00inside the building on the second floor|r |cffffff00(not shared)|r
.goto 2022,55.08,20.77,10,0
.goto 2022,55.04,20.3,5,0
.goto 2022,54.6,20.62
.complete 66000,1,4 
step
#label WakingShoreFutureoftheFlight
>>Break the eggs and kill the |cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.73
.complete 65998,2 
step
.isWorldQuestAvailable 2022,69931
>>Fly through the supplies inside the rings
.goto 2022,52.16,20.52
.complete 69931,1 
step
>>Kill |cff00ecffFirava the Rekindler|r when you see her (patrolling in the area)
.goto 2022,56.97,25.28
.accept 70648 >>Accept Firava the Rekindler (Elite Objective)
.complete 70648,1 
.unitscan Firava the Rekindler
step
#requires WakingShoreRedInToothAndClaw
#label WakingShoreDontTurnIn1
#completewith WakingShoreRedInToothAndClawLibraryofAlexstrasza
.goto 2022,56.24,22.14,10 >>|cfff78300DON'T TURN IN THE QUESTS|r until you're at the waypoint location
step
#requires WakingShoreRedInToothAndClaw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65998 >>Turn in Library of Alexstrasza
.target Sendrax
step
#label WakingShoreRedInToothAndClawLibraryofAlexstrasza
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65999 >>Turn in Red in Tooth and Claw
.turnin 66000 >>Turn in Library of Alexstrasza
.accept 66001 >>Accept A Last Hope
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,56.24,22.06
.skipgossip
.timer 16,Roleplay Duration
.complete 66001,1 
step
>>Wait for the Roleplay
.goto 2022,56.92,21.62
.complete 65998,1 
step
>>Interact with the egg |cffffff00(not shared)|r. Just follow one character with the others. Every character needs to hold the egg
.goto 2022,56.92,21.61
.complete 66001,2 
step
>>Using any ability will drop the egg
.goto 2022,55.21,26.27,30,0
.goto 2022,54.99,30.77
.complete 66001,3 
.timer 18,Roleplay Duration
step
.goto 2022,54.42,30.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Caretaker Zefren
.accept 70179 >>Accept A Two for One Deal
.target Apprentice Caretaker Zefren
step
>>Kill the |cff00ecffEarth Elementals|r in the area. Loot them for the materials
.goto 2022,52.79,31.06,20,0
.goto 2022,51.71,31.55,20,0
.goto 2022,50.42,30.99,20,0
.goto 2022,52.79,31.06
.complete 70179,1 
step
.goto 2022,54.44,30.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Caretaker Zefren. Dismount so the other characters can turn it in
.turnin 70179 >>Turn in A Two for One Deal
.target Apprentice Caretaker Zefren
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,55.10,31.04
.skipgossip 1
.turnin 66001 >>Turn in A Last Hope
.accept 66114 >>Accept For the Benefit of the Queen
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra |cffffff00(not shared)|r
.goto 2022,55.10,31.03
.skipgossip 1
.timer 67,Ride to the Ruby Lifeshrine
.complete 66114,1 
.target Majordomo Selistra
step
#completewith next
+You can skip the next cinematic.
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstraza
.goto 2022,62.34,73.02
.skipgossip 187290,1
.complete 66114,2 
step
.goto 2022,62.34,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.turnin 66114 >>Turn in For the Benefit of the Queen
.accept 68795 >>Accept Dragonriding
.accept 66115 >>Accept The Mandate of the Red
.target Alexstrasza the Life-Binder
step
#completewith WakingShoreMandateOfRed1
.goto 2022,61.90,73.82
.home >>Set your Hearthstone to Ruby Lifeshrine
step
#label WakingShoreMandateOfRed1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xius
.goto 2022,60.70,74.06
.skipgossip 1
.complete 66115,1 
.target Xius
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akxall
.goto 2022,59.36,72.41
.skipgossip 1
.complete 66115,2 
.target Akxall
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,58.37,67.12
.skipgossip 193287,1
.timer 26,Roleplay Duration
.complete 68795,1 
.target Lord Andestrasz
step
#completewith next
.goto 2022,57.81,68.11
.fp >>Get the Ruby Lifeshrine Flight Path
step
.goto 2022,57.93,68.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 67564 >>Accept Artisan's Courier
.target Haephesta
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thomas Bright
.goto 2022,60.23,72.18
.turnin 67564 >>Turn in Artisan's Courier
.accept 67100 >>Accept A Gift for Miguel
.skipgossip 192574,1
.target Thomas Bright
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thomas Bright again
.goto 2022,60.23,72.18
.skipgossip 192574,1
.complete 67100,1 
.target Thomas Bright
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.turnin 68795 >>Turn in Dragonriding
.accept 65118 >>Accept How to Glide with Your Dragon
.target Lord Andestrasz
step
#completewith WakingShoreHowtoUseMomentumwithYourDragon
+You can use |T134376:0|t[Bronze Timepiece] when you fail the quest
.use 188139
step
>>Use the |T4622499:0:0|t[Renewed Proto-Drake]
.use 194034
.goto 2022,57.66,66.89
.complete 65118,1 
step
>>Walk forward and glide through the yellow rings with your dragonriding mount. Make sure the small dragon (passenger) also passes through the rings
.goto 2022,57.42,60.00
.complete 65118,2 
.complete 65118,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.10
.turnin 65118 >>Turn in How To Dive with Your Dragon
.target Celormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.88
.accept 65120 >>Accept How to Use Momentum with Your Dragon
.target Lord Andestrasz
step
>>Walk forward, aim downwards and follow the yellow rings. Make sure the small dragon (passenger) also passes through the rings
.goto 2022,57.47,59.09
.complete 65120,1 
.complete 65120,2 
.complete 65120,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.09
.turnin 65120 >>Turn in How to Use Momentum with Your Dragon
.target Celormu
step
.goto 2022,57.65,66.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.accept 65133 >>Accept How to Use Momentum with Your Dragon
.target Lord Andestrasz
step
.isQuestTurnedIn 70239
.use 188169
.cast 361748 >>Use the Bronze Timepiece
step
>>Walk forward, aim downwards and follow the yellow rings. Make sure the small dragon (passenger) also passes through the rings
.goto 2022,57.47,59.09
.complete 65133,1 
.complete 65133,2 
.complete 65133,3 
step
#label WakingShoreHowtoUseMomentumwithYourDragon
.goto 2022,57.48,59.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.turnin 65133 >>Turn in How to Use Momentum with Your Dragon
.target Celormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.accept 68796 >>Accept The Skytop Observatory
.target Lord Andestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.accept 70132 >>Accept Stay a While
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the |cffffff00[ExtraActionButton]|r and talk to Veritistrasz again
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,1 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,2 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.turnin 70132 >>Turn in Stay a While
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu |cffffff00(not shared)|r
>>|cffffff00Multibox Tip|r: Talk to the guy on each character. Wait until the race stops and fly there normally
.goto 2022,57.72,66.72
.skipgossip 1
.timer 12,Roleplay Duration
.complete 68796,1 
.target Celormu
step
#completewith next
+You can open your spellbook and click on the Dragonriding skill and hover over the Dragonriding Basics skill if you want to read up on Dragonriding.
step
>>Make sure to fly through every ring
.complete 68796,2 
step
.goto 2022,75.18,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68796 >>Turn in The Skytop Observatory
.accept 68797 >>Accept A New Set of Horns
.target Lord Andestrasz
step
#title Dragon Glyph: Skytop Observatory Rostrum
.goto 2022,74.33,57.56
.achievement 16575,2 >>Pick up the Dragon Glyph in the air
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glensera
.goto 2022,74.11,57.93
.complete 68797,1 
.target Glensera
step
>>Interact with the Rostrum of Transformation (the pentagon on the ground). Cancel it immediately |cffffff00(not shared)|r
.goto 2022,74.03,58.16
.complete 68797,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,75.18,54.97
.turnin 68797 >>Turn in A New Set of Horns
.accept 68798 >>Accept Dragon Glyphs and You
.target Lord Andestrasz
step
>>Use your Dragonriding mount and fly through the glyph in the air
.goto 2022,74.35,57.76
.complete 68798,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lithragosa and learn the first skill named 'Drake and Rider Training' |cffffff00(not shared)|r
.goto 2022,74.57,56.97
.skipgossip 2
.complete 68798,2 
.complete 68798,3 
.complete 68798,4 
.target Lithragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,73.25,52.06
.complete 68798,5 
.target Celormu
step
#label WakingShoreDragpnGlyphandYou
.goto 2022,75.17,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68798 >>Turn in Dragon Glyphs and You
.accept 68799 >>Accept Return to the Ruby Lifeshrine
.target Lord Andestrasz
step
>>Mount Relastrasza
.goto 2022,75.01,55.58
.complete 68799,1 
.target Relastrasza
step
#title Dragon Glyph: Skytop Observatory Tower
.goto 2022,75.24,57.09
.achievement 16575,1 >>Pick up the Dragon Glyph above you above the tower
step
#completewith next
+Follow the arrow with your dragonriding mount. Aim down
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.06,58.13
.accept 66435 >>Accept Site Salvage
.accept 66436 >>Accept Unearthed Troublemakers
.target Elementalist Taiyang
step
#completewith WakingShoreAKeyElement
.isWorldQuestAvailable 2022,67113
>>Pick up the Dragon Artifacts on the ground and kill |cff00ecffEarth Elementals|r
.goto 2022,66.06,58.13,0,0
.complete 67113,1 
.complete 67113,2 
step
#completewith WakingShoreAKeyElement
>>Kill |cff00ecffEarth Elementals|r
.goto 2022,66.06,58.13,0,0
.complete 66436,1 
step
#completewith WakingShoreSiteSalvage
>>Kill |cff00ecffEarth Elementals|r. Loot Orb of Primal Stone. Click it in your bags |cffffff00(not shared)|r
.collect 191904,1,66437,1
.accept 66437 >>Accept A Key Element
step
#title Spam talk to the explorer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cfff78300Spam talk to a Beleaguered Explorer|r
.goto 2022,67.16,58.32,10,0
.goto 2022,67.53,57.97,10,0
.goto 2022,67.87,57.90,10,0
.goto 2022,67.81,57.37,10,0
.goto 2022,67.60,56.51
.skipgossip
.complete 66435,1 
step
#label WakingShoreAKeyElement
>>Kill |cff00ecffEarth Elementals|r. Loot Orb of Primal Stone. Click it in your bags |cffffff00(not shared)|r
.collect 191904,1,66437,1
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.accept 66437 >>Accept A Key Element
step
>>Kill |cff00ecffEarth Elementals|r
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.goto 2022,67.89,54.73,20,0
.goto 2022,66.06,58.13
.complete 66436,1 
step
>>Kill |cff00ecffEarth Elementals|r. Loot Orb of Primal Stone. Click it in your bags
.collect 191904,1,66437,1
.goto 2022,67.89,54.73,20,0
.goto 2022,67.46,58.75,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.56,55.45,20,0
.goto 2022,66.06,58.13
.accept 66437 >>Accept A Key Element
step
.isWorldQuestAvailable 2022,67113
>>Pick up the Dragon Artifacts on the ground and kill |cff00ecffEarth Elementals|r
.goto 2022,66.06,58.13,0,0
.complete 67113,1 
.complete 67113,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66436 >>Turn in Unearthed Troublemakers
.turnin 66435 >>Turn in Site Salvage
.turnin 66437 >>Turn in A Key Element
.target Elementalist Taiyang
step
.goto 2022,66.59,56.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Tae'shara Bloodwatcher, Elementalist Taiyang, and Acadia Chistlestone
.accept 66438 >>Accept Lofty Goals
.accept 66441 >>Accept Distilled Effort
.accept 66439 >>Accept Rapid Fire Plans
.target Examiner Tae'shara Bloodwatcher
.target Elementalist Taiyang
.target Acadia Chistlestone
step
.goto 2022,70.49,56.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.accept 70994 >>Accept Drainage Solutions
.target Zikkori
step
#completewith next
>>Throw |T3610505:0|t[Zikkori's Water Siphoning Device] under the Glittery Streams
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
>>Kill |cff00ecffAcequian|r. Loot it for the orb |cffffff00(not shared)|r
.goto 2022,72.17,56.71
.complete 66441,1 
.unitscan Acequian
step
>>Throw |T3610505:0|t[Zikkori's Water Siphoning Device] under the Glittery Streams
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.goto 2022,70.50,56.84
.turnin 70994 >>Turn in Drainage Solutions
.target Zikkori
step
#completewith next
>>Kill |cff00ecffPrimalist Forces|r in the area. Loot them for the Firey Spirits
.complete 67100,2 
step
>>Kill |cff00ecffPrimalist Forces|r in the area. Loot them for the flame Fragments |cffffff00(not shared)|r
.goto 2022,68.40,63.15,30,0
.goto 2022,69.35,64.39,30,0
.goto 2022,68.26,64.59,30,0
.goto 2022,69.90,64.44,30,0
.goto 2022,69.84,65.71,30,0
#loop
.line 2022,68.40,63.15,69.35,64.39,68.26,64.59,69.90,64.44,69.84,65.71
.goto 2022,68.40,63.15,30,0
.goto 2022,69.35,64.39,30,0
.goto 2022,68.26,64.59,30,0
.goto 2022,69.90,64.44,30,0
.goto 2022,69.84,65.71,30,0
.complete 66439,1 
step
>>Kill |cff00ecffPrimalist Forces|r in the area. Loot them for the Firey Spirits |cffffff00(not shared)|r
.goto 2022,68.13,64.19
.complete 67100,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Ri'tal
.goto 2022,70.64,63.13
.skipgossip
.complete 66438,1 
.target Scout Ri'tal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Francisco
>>|cffffff00Hug the right wall|r
>>|cffffff00Multibox Tip|r: Do it on one character first. Then mount up on a multi seat mount and ride your other characters through
.goto 2022,70.14,61.53
.skipgossip
.complete 66438,2 
.target Scout Francisco
step
>>|cfff78300Hug the left wall, then follow the arrow. Dodge the whirlwinds|r
.goto 2022,69.39,61.86,10,0
.goto 2022,69.08,61.66,8,0
.goto 2022,68.27,61.54
.complete 66438,3 
step
>>Use the |T135821:0|t[Primal Flame Fragments]
.use 192545
.goto 2022,66.59,56.08
.complete 66439,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66438 >>Turn in Lofty Goals
.turnin 66439 >>Turn in Rapid Fire Plans
.turnin 66441 >>Turn in Distilled Effort
.accept 66442 >>Accept Let's Get Theoretical
.target Elementalist Taiyang
step
>>Wait at the waypoint until you can use the |cffffff00[ExtraActionButton]|r and use it |cffffff00(not shared)|r
.goto 2022,66.56,56.06
.skipgossip
.complete 66442,1 
.complete 66442,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.51,55.96
.turnin 66442 >>Turn in Let's Get Theoretical
.accept 66447 >>Accept Beyond the Barrier
.target Elementalist Taiyang
step
>>Kill the |cff00ecffDiscrodant Watcher|r
.goto 2022,66.09,55.36
.complete 66447,1 
.unitscan Discordant Watcher
step
>>Click on the rune stone |cffffff00(not shared)|r
.goto 2022,66.08,55.03
.complete 66447,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,65.88,57.47
.turnin 66447 >>Turn in Beyond the Barrier
.target Elementalist Taiyang
step
#completewith next
.hs >>Hearth to Ruby Lifeshrine
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder. Passengers can turn in the quest if you stand exactly on the waypoint
.goto 2022,62.36,73.02
.turnin 68799 >>Turn in Return to the Ruby Lifeshrine
.target Alexstrasza the Life-Binder
step
.isWorldQuestAvailable 2022,70410
>>Talk to X and complete the race
.goto 2022,62.80,74.00
.complete 70410,1 
step
.isWorldQuestAvailable 2022,70382
>>Talk to X and complete the race
.goto 2022,63.20,70.80
.complete 70382,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mother Elion
.goto 2022,61.6,68.71
.skipgossip 1
.complete 66115,3 
.target Mother Elion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana
.goto 2022,62.78,70.43
.skipgossip 189260,1
.complete 66115,4 
.target Zahkrana
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana again
.goto 2022,62.78,70.43
.turnin 66115 >>Turn in The Mandate of the Red
.target Zahkrana
step
.goto 2022,62.18,70.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Amella
.accept 70061 >>Accept Training Wings
.target Amella
step
#completewith next
+Glide with your Dragonriding mount to the Ruby Whelpling
step
>>Mount the Ruby Whelpling |cffffff00(not shared)|r
.goto 2022,61.09,71.46
.skipgossip 1
.complete 70061,1 
step
#completewith next
+Spam |T135808:0|tBurning Bark (1) to kill enemies at range
+Use |T136045:0|tCall of Life (3) for when enemies are in meele range
step
>>Kill the Enemies in the Area
>>|cffffff00Multibox Tip|r: Make sure to enter the whelpling with your other characters before killing any mobs
.complete 70061,4 
.complete 70061,3 
.complete 70061,2 
step
#completewith next
+|cfff78300Leave the vehicle|r
step
#completewith next
+Fly to Majordomo Selistra using your dragonriding mount
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 70061 >>Turn in Training Wings
.goto 2022,62.32,72.90
.accept 66931 >>Accept Who Brought the Ruckus?
.goto 2022,62.34,73.02
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFly to Thomas Bright and talk to him
.goto 2022,60.22,72.18
.turnin 67100 >>Turn in A Gift for Miguel
.target Thomas Bright
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>Follow the arrow
.goto 2022,59.46,72.72
.complete 66931,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,59.49,72.61
.turnin 66931 >>Turn in Who Brought the Ruckus?
.accept 66116 >>Accept The Primary Threat
.target Majordomo Selistra
step
>>Glide down to Commander Lethanak in the Frost Area below
.goto 2022,59.44,75.87
.complete 66116,1 
.complete 66116,2 
.target Commander Lethanak
step
.goto 2022,59.41,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.turnin 66116 >>Turn in The Primary Threat
.accept 66118 >>Accept Basalt Assault
.accept 66117 >>Accept Clear the Battlefield (Bonus Objective)
.target Commander Lethanak
step
#completewith WakingShoreCutOfftheHead
>>Kill the Enemies in the Area while doing the other objectives
.complete 66117,1 
step
.pve
>>Kill the Enraged Cliffs around the waypoint
.goto 2022,60.93,77.56,25,0
.goto 2022,61.27,79.08,25,0
.goto 2022,60.73,78.72,0,0
.complete 66118,1,1 
step
.pve
#completewith next
+Mount up and fly to the waypoint location
step
#label WakingShoreTerillodtheDevout
>>Kill |cff00ecffTerillod|r. Be careful not to get knocked off
.goto 2022,60.64,83.01
.accept 70751 >>Accept Terillod the Devout (Elite Objective)
.complete 70751,1 
.unitscan Terillod
step
>>Kill the Big Stone Elementals
.goto 2022,61.27,79.10,25,0
.goto 2022,59.71,78.62,25,0
.goto 2022,57.82,76.81,25,0
.goto 2022,60.65,78.43
.complete 66118,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak and Majordomo Selistra
.turnin 66118 >>Turn in Basalt Assault
.accept 66122 >>Accept Proto-Fight
.goto 2022,59.41,75.88
.accept 66121 >>Accept Egg Evac
.goto 2022,59.49,76.16
.target Commander Lethanak
.target Majordomo Selistra
step
#completewith WakingShoreEggEvac
>>Use the |T135133:0:0|t[Ruby Spear] on Galestrike Proto-Dragons to weaken them
.use 192436
.complete 66122,2 
step
>>Right-Click the Bronze Egg |cffffff00(not shared)|r
.goto 2022,56.13,81.29
.complete 66121,1 
step
>>Right-Click the Azure Egg |cffffff00(not shared)|r
.goto 2022,57.35,83.28
.complete 66121,2 
step
>>Right-Click the Emerald Egg |cffffff00(not shared)|r
.goto 2022,55.32,83.31
.complete 66121,3 
step
#completewith next
>>Kill Klozicc
.goto 2022,54.77,82.22,15,0
.accept 66960 >>Accept Klozicc the Ascended (Elite Objective)
.complete 66960,1 
.unitscan Klozicc the Ascended
step
#label WakingShoreEggEvac
>>Right-Click the Ruby Egg |cffffff00(not shared)|r
.goto 2022,54.99,80.95
.complete 66121,4 
step
>>Kill Klozicc
.goto 2022,54.77,82.22
.accept 66960 >>Accept Klozicc the Ascended (Elite Objective)
.complete 66960,1 
.unitscan Klozicc the Ascended
step
>>Use the |T135133:0:0|t[Ruby Spear] on Galestrike Proto-Dragons above you to weaken them
.use 192436
.goto 2022,55.03,82.08,35,0
.goto 2022,56.37,80.47,35,0
#loop
.line 2022,55.03,82.08,55.15,82.96,57.24,82.82,55.32,79.65
.goto 2022,55.03,82.08,35,0
.goto 2022,55.15,82.96,35,0
.goto 2022,57.24,82.82,35,0
.goto 2022,55.32,79.65,35,0
.complete 66122,2 
step
.goto 2022,53.68,80.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.turnin 66122 >>Turn in Proto-Fight
.turnin 66121 >>Turn in Egg Evac
.accept 66123 >>Accept Cut Off the Head
.target Majordomo Selistra
step
>>Use the |T135133:0:0|t[Ruby Spear] on Jadzigeth to weaken him
.use 192436
.goto 2022,53.68,83.04
.complete 66123,1 
.unitscan Jadzigeth
step
#label WakingShoreCutOfftheHead
.goto 2022,53.67,80.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.turnin 66123 >>Turn in Cut Off the Head
.accept 66124 >>Accept Exeunt, Triumphant
.target Majordomo Selistra
step
>>Kill the Enemies in the Area while doing the other objectives
#loop
.line 2022,55.03,82.08,56.37,55.15,82.96,57.24,82.82,80.47,55.03,82.08,56.37,80.47,55.03,82.08
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,55.15,20,0
.goto 2022,82.96,57.24,20,0
.goto 2022,82.82,80.47,20,0
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,80.47,20,0
.goto 2022,55.03,82.08,20,0
.complete 66117,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,46.14,78.54
.skipgossip 187278,1
.complete 66124,1 
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 66124 >>Turn in Exeunt, Triumphant
.goto 2022,46.14,78.51
.accept 66079 >>Accept Wrathion Awaits
.goto 2022,46.09,78.29
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Scalecommander Emberthal
.turnin 66079 >>Turn in Wrathion Awaits
.goto 2022,42.47,66.84
.accept 72241 >>Accept Lessons from Our Past
.goto 2022,42.47,66.78
.target Wrathion
.target Scalecommander Emberthal
step
#completewith next
+You can skip the next cutscene.
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Scalecommander
.goto 2022,42.47,66.79
.skipgossip 192795,1
.complete 72241,1 
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal and Wrathion. You probably have to dismount with your other characters
.turnin 72241 >>Turn in Lessons from Our Past
.accept 66048 >>Accept Best Plans and Intentions
.goto 2022,42.47,66.78
.accept 66078 >>Accept Sharp Practice
.goto 2022,42.47,66.84
.target Wrathion
.target Scalecommander Emberthal
step
#completewith next
.gossipoption 55311 >>Talk to Fao the Relentless
.goto 2022,42.41,66.18
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fao the Relentless then interact with the plan in the tent |cffffff00(not shared)|r
.goto 2022,42.41,66.06
.skipgossip 1
.complete 66048,1 
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Forgemaster Bazentus |cffffff00(not shared)|r
.goto 2022,42.82,66.86
.skipgossip
.complete 66048,4 
.target Forgemaster Bazentus
step
#completewith WakingShoresBestPlansandIntentionsEdres |cffffff00(not shared)|r
.gossipoption 55307 >>Talk to Archivist Edress
.goto 2022,43.76,67.28
.complete 66048,2 
.target Archivist Edres
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them
.goto 2022,42.56,67.51,20,0
.skipgossip
.complete 66078,1 
step
#label WakingShoresBestPlansandIntentionsEdres
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia then click on the Binoculars |cffffff00(not shared)|r
.gossipoption 54996
.goto 2022,42.30,69.29
.complete 66048,3 
.goto 2022,42.23,69.33
.target Talonstalker Kavia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them
.goto 2022,42.56,67.51
.skipgossip
.complete 66078,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the NPCs at the waypoint locations |cffffff00(not shared)|r
.complete 66048,1 
.goto 2022,42.41,66.06
.complete 66048,4 
.goto 2022,42.82,66.86
.complete 66048,2 
.goto 2022,43.76,67.28
.complete 66048,3 
.goto 2022,42.23,69.33
.skipgossip
.target Fao the Relentless
.target Forgemaster Bazentus
.target Archivist Edres
.target Talonstalker Kavia
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66048 >>Turn in Best Plans and Intentions
.turnin 66078 >>Turn in Sharp Practice
.timer 24,Roleplay Duration
.target Wrathion
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Do-Yeon
.goto 2022,42.26,66.25
.fp >>Get the Obsidian Bulwark Flight Path
.target Do-Yeon Shadowrider
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tong the Fixer, repair and sell if you need
.goto 2022,43.12,66.56
.home >>Set your Hearthstone to Obsidian Bulwark
.target Tong the Fixer
step
.isWorldQuestAvailable 2022,70413
>>Talk to X and complete the race
.goto 2022,42.00,67.20
.complete 70413,1 
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion. You probably have to dismount with your other characters
.accept 65957 >>Accept No Time For Heroes
.accept 65956 >>Accept Talon Strike
step
.goto 2022,37.45,71.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.accept 66003 >>Accept Rings To Bind Them
.target Earthcaller Yevaa
step
>>Kill |cff00ecffBlazing Manifestations|r. Loot then for the binding rings |cffffff00(not shared)|r
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
#loop
.line 2022,,37.99,71.58,38.15,73.04,37.31,73.68,,36.75,72.98,37.12,71.84,38.05,69.42
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.31,73.68,22,0
.goto 2022,36.75,72.98,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
.complete 66003,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.turnin 66003 >>Turn in Rings To Bind Them
.accept 66369 >>Accept The Earthen Ward
.target Earthcaller Yevaa
step
>>Click on the Earth Warden |cffffff00(not shared)|r
.goto 2022,37.54,71.23
.complete 66369,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.turnin 66369 >>Turn in The Earthen Ward
.accept 66368 >>Accept Island In A Storm
.target Earthcaller Yevaa
step
#completewith next
>>Kill |cff00ecffBlazing Manifestations|r
.complete 66368,1 
step
.goto 2022,37.62,75.10
.complete 66368,2 
.unitscan Melter Igneous
step
>>Kill |cff00ecffBlazing Manifestations|r
.goto 2022,37.98,76.02,20,0
.goto 2022,39.58,74.41,20,0
.goto 2022,39.14,73.14,20,0
.goto 2022,38.01,71.79,20,0
.goto 2022,36.55,71.79,20,0
.goto 2022,36.95,73.62,20,0
#loop
.line 2022,37.98,76.02,39.58,74.41,39.14,73.14,38.01,71.79,36.55,71.79,36.95,73.62
.goto 2022,37.98,76.02,25,0
.goto 2022,39.58,74.41,25,0
.goto 2022,39.14,73.14,25,0
.goto 2022,38.01,71.79,25,0
.goto 2022,36.55,71.79,25,0
.goto 2022,36.95,73.62,25,0
.complete 66368,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.78
.turnin 66368 >>Turn in Island In A Storm
.target Earthcaller Yevaa
step
#completewith WakingShoreNoTimeForTalonStrike
+Use the |cffffff00[ExtraActionButton|r for extra damage
step
#completewith WakingShoreNoTimeForHeroes
>>|cfff78300Avoid killing elites|r. Focus on destroying stuff and killing non-elites
.goto 2022,36.43,69.68,20,0
.goto 2022,34.86,61.66,0,0
.complete 65956,1 
step
>>Climb the tower. Kill |cff00ecffPiercer Gigra|r
.goto 2022,35.53,68.47
.complete 65957,1 
.unitscan Piercer Gigra
step
>>Kill |cff00ecffOlphis the Molten|r
.goto 2022,34.79,66.86
.complete 65957,3 
.unitscan Olphis the Molten
step
.isOnQuest 65956
#title Progress the Bonus Objective
#completewith next
.goto 2022,37.36,63.09,30,0
.goto 2022,36.75,60.09,50 >>Kill everything around you
step
#label WakingShoreNoTimeForHeroes
>>Climb the tower. Kill |cff00ecffModak Flamespit|r
.goto 2022,35.67,60.73
.complete 65957,2 
.unitscan Modak Flamespit
step
.goto 2022,37.11,55.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthmender Govrum
.accept 70414 >>Accept Shaky Grounds
step
>>Use the |T136108:0|t[Shattering Totem] on the Trapped Cavestones in the lava |cffffff00(not shared)|r
.use 198980
.goto 2022,36.61,55.90
.complete 70414,1 
step
.goto 2022,37.11,55.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthmender Govrum
.turnin 70414 >>Turn in Shaky Grounds
step
.goto 2022,39.43,48.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ingot
.accept 65687 >>Accept Punching Up
.accept 65690 >>Accept A Cultist's Misgivings
step
>>Follow the arrow
.goto 2022,37.45,46.70
.complete 65690,1 
step
.goto 2022,37.43,46.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.turnin 65690 >>Turn in A Cultist's Misgivings
.accept 65782 >>Accept Under Lock and Key
step
#completewith next
>>Kill |cff00ecffWorldbreaker Guards|r. Loot them for the key |cffffff00(not shared)|r
.complete 65782,1 
step
>>Kill |cff00ecffDragonkins|r in the area
.goto 2022,38.28,47.37,25,0
.goto 2022,38.16,48.63,25,0
.goto 2022,36.16,48.01,25,0
.goto 2022,34.45,48.72,25,0
#loop
.line 2022,38.28,47.37,38.16,48.63,36.16,48.01,34.45,48.72
.goto 2022,38.28,47.37,35,0
.goto 2022,38.16,48.63,35,0
.goto 2022,36.16,48.01,35,0
.goto 2022,34.45,48.72,35,0
.complete 65687,1 
step
#completewith next
>>Kill |cff00ecffWorldbreaker Guards|r. Loot them for the key |cffffff00(not shared)|r
.goto 2022,36.16,48.01,25,0
.goto 2022,34.45,48.72,25,0
.goto 2022,38.16,48.63,25,0
.goto 2022,38.28,47.37,25,0
#loop
.line 2022,38.28,47.37,38.16,48.63,36.16,48.01,34.45,48.72
.goto 2022,38.28,47.37,35,0
.goto 2022,38.16,48.63,35,0
.goto 2022,36.16,48.01,35,0
.goto 2022,34.45,48.72,35,0
.complete 65782,1 
step
>>Open the cage
.goto 2022,37.43,46.66
.complete 65782,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ingot and Ayasanth after a short roleplay
.turnin 65687 >>Turn in Punching Up
.goto 2022,37.33,46.65
.turnin 65782 >>Turn in Under Lock and Key
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.accept 65691 >>Accept The Shadow of His Wings
.goto 2022,37.35,46.62
step
.pve
#completewith next
.goto 2022,35.63,47.95,20 >>Enter the cave
step
.pve
>>Wait for the roleplay and kill |cff00ecffCygenoth the Corrupted|r
.goto 2022,35.04,45.47
.complete 65691,1 
.complete 65691,2 
step
.pve
.goto 2022,39.56,48.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.turnin 65691 >>Turn in The Shadow of His Wings
step
#completewith next
+Look for more mobs in the marked area on your map
step
>>|cfff78300Avoid killing elites|r. Focus on destroying stuff and killing non-elites
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.complete 65956,1 
step
#label WakingShoreNoTimeForTalonStrike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,33.99,61.29
.turnin 65957 >>Turn in No Time For Heroes
.turnin 65956 >>Turn in Talon Strike
.accept 65939 >>Accept The Courage of One's Convictions
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion |cffffff00(not shared)|r
.goto 2022,33.99,61.29
.skipgossip 1
.complete 65939,1 
.target Wrathion
step
#completewith next
+You can skip the next cutscene (Esc -> Yes)
step
>>Follow the arrow starting from the front of the bridge. |cffffff00(not shared)|r
.goto 2022,33.54,61.86,50,0
.goto 2022,30.51,60.88
.complete 65939,2 
step
#completewith WakingShoresTakingtheWalls
>>Kill |cff00ecffQalashi Forces|r on the side. Don't try to finish this quest
.complete 65939,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,29.14,58.82
.accept 66044 >>Accept Taking the Walls
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion |cffffff00(not shared)|r
.goto 2022,29.14,58.82
.skipgossip 186933,1
.complete 66044,1 
.target Wrathion
step
#completewith WakingShoreTakingTheWalls
+Use your dragonriding mount to fly to the next cannon (or look out for Wrathion)
step
>>Destroy the cannon
.goto 2022,26.81,59.99
.complete 66044,2 
step
>>Destroy the cannon
.goto 2022,29.51,60.99
.complete 66044,3 
step
#label WakingShoreTakingTheWalls
>>Destroy the cannon
.goto 2022,27.79,56.66
.complete 66044,4 
step
#label WakingShoresTakingtheWalls
>>Patrolling around the area
.goto 2022,26.94,57.07
.complete 66044,5 
step
>>Kill |cff00ecffQalashi Forces|r on the side. Don't try to finish this quest
.goto 2022,27.46,61.25,30,0
.goto 2022,26.42,58.75
.complete 65939,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,26.42,58.75
.turnin 66044 >>Turn in Taking the Walls
.turnin 65939 >>Turn in The Courage of One's Convictions
step
.isWorldQuestAvailable 2022,70412
>>Talk to X and complete the race
.goto 2022,47.00,85.60
.complete 70412,1 
step
.isWorldQuestAvailable 2022,70418
>>Talk to X and complete the race
.goto 2022,42.60,94.40
.complete 70418,1 
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#groupweight 1
#group Leveling Preparation
#subgroup Leveling Tips
#subgroupweight 2
#name General Leveling Tips
#displayname General Leveling Tips
step
+|cffff00f3This Guide should provide you with a Mixture of General and Speed Leveling Tips|r
step
+In World of Warcraft Dragonflight there are a lot more Experience Sources than in WoW Classic! Herbing,Mining and even Pet Battles reward Experience
*This makes Herbing,Mining and Pet Battles a good source of EXP especially during Unavoidable Roleplay
step
+If you ever have to wait for npc dialogue during or before a Quest It's ideal to find a productive way to spend your time waiting this can include the following and more;
*1.Inventory Clean-Up
*2.Selling,Buying or Repairing Items
*3.Setup of Addons and other Settings
*4.The Completion of other Quests or Quest Objectives during the waiting period
*5.Herbing/Mining or a Pet Battle
step
+It's Ideal to supply your Character with atleast 5k Gold,Good Bags,Consumables, The10% Experience Elixir and Enchanted Heirlooms
*more about this in the Consumables Guide
step
+It's highly recommended to turn on Warmode when you reach Level 20 in Stormwind(Alliance) or Orgrimmar(Horde) this makes the opposite faction hostile against you but it increases your Experience Gain by 10-30%, additionally you unlock fun warmode talents that can make a huge difference in your Leveling Speed
step
+If you are new to World of Warcraft Dragonflight at Level 8, Aoe Looting is unlocked.
step
+There is more to come!
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Leveling Preparation
#subgroup Leveling Tips
#subgroupweight 2
#name Horde 50-60 FAQ
<< Horde
step
+|cffff00f3Best Guide Combinations for 50-60|r
step
+Best Combinations
>>1a) Draenor Scenario + Bfa Intro (with scenario skip) + Zuldazar
>>1b) Draenor Scenario + Hillsbrad
step
+Second Best
>>2) Draenor Scenario + Silverpine (because of the rp at the beginning)
step
+Third Best
>>3a) Draenor Scenario + Draenor Garrison Intro + Gorgrond
>>3b) Draenor Scenario + Draenor Garrison Intro + Spires of Arak
>>3c) Hillsbrad (until Heroes of the Horde) + Silverpine
step
+The other combinations are all worse (but still relatively fast)
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Leveling Preparation
#subgroup Leveling Tips
#subgroupweight 2
#name Alliance 50-60 FAQ
<< Alliance
step
+|cffff00f3Best Guide Combinations for 50-60|r
step
+Best Combinations
>>1a) Tiragarde + Drustvar
step
+Second Best
>>2) Redridge Mountains and Duskwood1
step
+The other combinations are all worse (but still relatively fast)
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Leveling Preparation
#subgroup Consumable Checklist
#subgroupweight 1
#name C1-60 Consumables Check
#displayname 1-60 Enchant/Consumable Check
step
#title Recommended General
+|cffff00f3General Items:|r
.collect 166751,10,0,0,1 
.collect 171285,20,0,0,1 
.collect 152813,3,0,0,1 
.collect 158202,10,0,0,1 
.collect 158204,10,0,0,1 
.collect 158201,10,0,0,1 
.collect 154168,20,0,0,1 << Alliance 
.collect 153512,2,0,0,1 << Alliance 
step
#title Recommended Speed Items
+|cffff00f3Speed Items:|r
.collect 132516,80,0,0,1 
.collect 109076,40,0,0,1 
.collect 2459,10,0,0,1 
.collect 152497,20,0,0,1 
.collect 153123,1,0,0,1 
.collect 89770,1,0,0,1 
.collect 89682,1,0,0,1 
step
#title Recommended Bags
+|cffff00f3Bags:|r
.collect 184479,4,0,0,1 
step
#title Mount Equipment
+|cffff00f3One Mount Equipment|r
.collect 168417,1,0,0,1 
.collect 168419,1,0,0,1 
.collect 168412,1,0,0,1 
.collect 168427,1,0,0,1 
step
#title Heirloom Enchants
+|cffff00f3Most Important Heirloom Enchants|r
>>You may have to go onto a lower level character to apply these
.collect 128553,1,0,0,1 
.collect 172410,1,0,0,1 
.collect 74708,1,0,0,1 
.collect 168447,2,0,0,1 
step
#title Intellect Heirloom Enchants
+|cffff00f3Intellect Heirloom Enchants|r
>>Druid/Mage/Warlock/Priest
.collect 54450,1,0,0,1 
.collect 74725,1,0,0,1 
step
#title Strength Heirloom Enchants
+|cffff00f3Strength Heirloom Enchants|r
>>Warrior/Paladin/Death Knight
.collect 83765,1,0,0,1 
.collect 38873,1,0,0,1 
step
#title Agility Heirloom Enchants
+|cffff00f3Agility Heirloom Enchants|r
>>Druid/Rogue/Monk/Hunter/Demon Hunter
.collect 83764,1,0,0,1 
.collect 59595,1,0,0,1 
.collect 74725,2,0,0,1 
step
+|cffff00f3Extra Items:|r
.collect 118711,20,0,0,1 
.collect 6372,20,0,0,1 
.collect 136606,20,0,0,1 
.collect 151239,5,0,0,1 
.collect 58487,20,0,0,1 
.collect 76096,20,0,0,1 
.collect 116266,20,0,0,1 
.collect 190953,20,0,0,1 
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group Leveling Preparation
#subgroup Consumable Checklist
#subgroupweight 1
#name D60-70 Consumables Check
#displayname 60-70 Enchant/Consumable Check
step
#title Recommended General
+|cffff00f3General Items:|r
.collect 171276,10,0,0,1 
.collect 181468,10,0,0,1 
.collect 172063,10,0,0,1 
.collect 187802,40,0,0,1 
.collect 140192,1,0,0,1 
.collect 64402,1,0,0,1 << Horde 
.collect 64399,1,0,0,1 << Alliance 
.collect 64401,1,0,0,1 << Horde 
.collect 64398,1,0,0,1 << Alliance 
step
#title Recommended Speed Items
+|cffff00f3Speed Items:|r
.collect 132516,80,0,0,1 
.collect 109076,40,0,0,1 
.collect 153123,1,0,0,1 
.collect 89770,1,0,0,1 
.collect 89682,1,0,0,1 
step
#title Recommended Gear
+|cffff00f3Enchants/Gems/Equippment:|r
.collect 172410,1,0,0,1 
.collect 173126,1,0,0,1 
.collect 153715,1,0,0,1 
]])
