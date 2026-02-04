RXPGuides.RegisterGuide([[
#tbc
#version 3
#group Consita TBC Toolkit
#subgroup 3 - Attunements
#name T4 - Karazhan

	step
		>>|cRXP_WARN_You must be at least level 68 to begin the Karazhan attunement questline|r
		.xp 68

	step
		#completewith next
		.goto Shattrath City,52.2,52.8
		.zone Orgrimmar >> Take the Portal to |cFFfa9602Orgrimmar|r
		.zoneskip Orgrimmar
		
	step
		#completewith next
		.goto Durotar,50.6,12.6,20 >>Take the Zeppelin to Grom'Gol Base Camp in Stranglethorn Vale

	step
		#completewith next
		.goto Stranglethorn Vale,32.5,29.3
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thysta|r
		.fly Stonard >>Fly to Stonard
		.target Thysta

	step
		.goto Deadwind Pass,47.0,75.7
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Alturus|r
		.accept 9824
		.accept 9825
		.target Archmage Alturus			

	step
		#completewith next
		.goto Deadwind Pass,48.7,78.9,20,0
		.goto Deadwind Pass,51.7,79.3,30 >> Go down the entrance of the cellar

	step
		#sticky
		#completewith PondR
		>>Kill |cRXP_ENEMY_Ghosts|r. Loot them for |cRXP_LOOT_Ghostly Essences|r
		.complete 9825,1
		.mob Unliving Caretaker
		.mob Damned Soul
		.mob Wailing Spectre
		.mob Restless Shade

	step
		.use 24474 >>Use |T134075:0|t[Violet Scrying Crystal] at the Well
		.goto Deadwind Pass,53.3,90.2
		.complete 9824,1 

	step
		#completewith next
		.goto Deadwind Pass,48.7,78.9,20,0
		.goto Deadwind Pass,45.9,78.1,15 >>Go down the entrance of the other cellar

	step
		#label PondR
		.use 24474 >>Use |T134075:0|t[Violet Scrying Crystal] in the water
		.goto Deadwind Pass,42.8,78.1
		.complete 9824,2 

	step
		.goto Deadwind Pass,43.4,71.2,20,0
		.goto Deadwind Pass,45.6,71.6,40,0
		.goto Deadwind Pass,41.3,70.0,40,0
		.goto Deadwind Pass,41.5,63.0,40,0
		.goto Deadwind Pass,41.7,76.8,40,0
		.goto Deadwind Pass,46.8,75.1,40,0
		.goto Deadwind Pass,43.4,71.2,20,0
		.goto Deadwind Pass,45.6,71.6,40,0
		.goto Deadwind Pass,41.3,70.0,40,0
		.goto Deadwind Pass,41.5,63.0,40,0
		.goto Deadwind Pass,41.7,76.8,40,0
		.goto Deadwind Pass,46.8,75.1,40,0
		.goto Deadwind Pass,43.4,71.2,20,0
		.goto Deadwind Pass,45.6,71.6,40,0
		.goto Deadwind Pass,41.3,70.0,40,0
		.goto Deadwind Pass,41.5,63.0,40,0
		.goto Deadwind Pass,41.7,76.8,40,0
		.goto Deadwind Pass,46.8,75.1,40,0
		>>Finish looting |cRXP_ENEMY_Ghosts|r for the remaining |cRXP_LOOT_Ghostly Essences|r. Split your group up to go back to the other cellar for more spawns if you wish
		.complete 9825,1 
		.mob Unliving Caretaker
		.mob Damned Soul
		.mob Wailing Spectre
		.mob Restless Shade

	step
		.goto Deadwind Pass,47.0,75.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Alturus|r
		.turnin 9825 >>Turn in Restless Activity
		.turnin 9824 >>Turn in Arcane Disturbances
		.accept 9826 >>Accept Contact from Dalaran
		.target Archmage Alturus

	step
		#completewith next
		.goto Swamp of Sorrows,46.0,54.7
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breyk|r
		.fly Tarren Mill >>Fly to |cFFfa9602Tarren Mill|r
		.zoneskip Hillsbrad Foothills
		.target Breyk

	step
		>>Ride to the Outskirts of |cFFfa9602Dalaran|r
		.goto Alterac Mountains,15.6,54.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Cedric|r
		.turnin 9826 >>Turn in Contact from Dalaran
		.accept 9829 >>Accept Khadgar
		.target Archmage Cedric

	step
		#completewith next
		.hs >>Hearth or Mage portal to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City

	step
		#completewith next
		+If your Hearthstone is on cooldown, ghetto hearth using Shadowfang Keep. Zone into Shadowfang Keep then drop group
		.goto Silverpine Forest,45.5,68.8

	step
		#completewith next
		.zone Shattrath City >> Go to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City

	step
		.goto Shattrath City,54.7,44.4
		.turnin 9829 >>Turn in Khadgar
		.accept 9831 >>Accept Entry Into Karazhan
		.target Khadgar

    step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Stonebreaker Hold >>Fly to |cFFfa9602Stonebreaker Hold|r
        .target Nutral
        .zoneskip Terokkar Forest

	step
		#completewith next
		.goto Terokkar Forest,39.7,71.0,30 >> Use the key from |cFFfa9602Sethekk Halls|r to open the |cFFfa9602Shadow Labyrinth|r Door

	step
		>>Click the Container on the left after killing |cRXP_ENEMY_Murmur|r to spawn the |cRXP_ENEMY_First Fragment Guardian|r
		>>Kill and loot him for the |cRXP_LOOT_First Key Fragment|r
		.complete 9831,1 
		.mob First Fragment Guardian

	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City	

    step
        .goto Shattrath City,54.74,44.32
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
       	.turnin 9831 >>Turn In Entry Into Karazhan
		.accept 9832 >>Accept The Second and Third Fragments
        .target Khadgar

    step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Swamprat Post >>Fly to |cFFfa9602Swamprat Post|r
        .target Nutral
        .zoneskip Terokkar Forest

	step
		#completewith next
		.goto Zangarmarsh,50.4,33.3,20 >> Enter |cFFfa9602The Steamvault|r

	step
		>>Click the Container underwater near the first boss (northern part of the water) to spawn the |cRXP_ENEMY_Second Fragment Guardian|r
		>>Kill and loot him for the |cRXP_LOOT_Second Key Fragment|r
		.complete 9832,1 
		.mob Second Fragment Guardian


	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City	

    step
        .goto Shattrath City,54.74,44.32
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
       	.turnin 9831 >>Turn In Entry Into Karazhan
		.accept 9832 >>Accept The Second and Third Fragments
        .target Khadgar

    step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Area 52 >>Fly to |cFFfa9602Area 52|r
        .target Nutral
        .zoneskip Netherstorm

	step
		#completewith next
		.goto Netherstorm,74.4,57.7,20 >> Fly to The Arcatraz, unlock the door, then go inside

	step
		>>Click the Container tucked in the corner of the blue room after the first boss to spawn the |cRXP_ENEMY_Third Fragment Guardian|r
		>>Kill and loot him for the |cRXP_LOOT_Third Key Fragment|r
		.complete 9832,2
		.mob Third Fragment Guardian	

    step
        .goto Shattrath City,54.74,44.32
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
		.turnin 9832
        .accept 9836
        .target Khadgar		

	step
		#completewith next
		.goto Shattrath City,52.2,52.8
		.zone Orgrimmar >> Take the Portal to |cFFfa9602Orgrimmar|r
		.zoneskip Orgrimmar

	step
		#completewith next
		.goto Orgrimmar,45.12,63.89,5,0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
		.fly Tanaris >>Fly to |cFFfa9602Tanaris|r
		.target Doras
		.zoneskip Tanaris

	step
		.goto Tanaris,66.1,49.7 >>Travel to the |cFFfa9602Caverns of Time|r
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steward of Time|r
		.accept 10279 >>Accept To The Master's Lair
		.target Steward of Time

	step
		.goto Tanaris,58.4,54.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andormu|r
		.turnin 10279
		.accept 10277
		.target Andormu

	step
		>> Follow the |cRXP_FRIENDLY_Custodian of Time|r or afk next to |cRXP_FRIENDLY_Andormu|r
		.complete 10277,1 
		.target Custodian of Time

	step
		.goto Tanaris,58.4,54.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andormu|r
		.turnin 10277
		.accept 10282
		.target Andormu

	step
		#completewith next
		.goto Tanaris,55.6,53.6,20 >>Enter |cFFfa9602Old Hillsbrad Foothills|r

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erozion|r
		.turnin 10282 >>Turn in Old Hillsbrad
		.accept 10283 >>Accept Taretha's Diversion
		.target Erozion

	step
		>>Click on the barrel in the barracks in order to set them ablaze
		.complete 10283,1

	step
		>>Clear up to |cRXP_FRIENDLY_Thrall|r who is located in the basement prison of |cFFfa9602Durnholde Keep|r
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
		.turnin 10283 >>Turn in Taretha's Diversion
		.accept 10284 >>Accept Escape from Durnholde
		.target Thrall

	step
		>>Kill the |cRXP_ENEMY_Epoch Hunter|r in |cFFfa9602Tarren Mill|r
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erozion|r
		.turnin 10284 >>Turn in Escape from Durnholde
		.accept 10285 >>Accept Return to Andormu
		.target Erozion

	step
		>>Exit |cFFfa9602Old Hillsbrad Foothills|r
		.goto Tanaris,58.4,54.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andormu|r
		.turnin 10285 >>Turn in Return to Andormu
		.accept 10296 >>Accept The Black Morass
		.target Andormu

	step
		#completewith next
		.goto Tanaris,57.4,62.8,20 >> Enter |cFFfa9602The Black Morass|r

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sa'at|r
		>>Make sure each member of your Dungeon Group picks up a |cRXP_LOOT_Chrono-Beacon|r from him
		.turnin 10296 >>Turn in The Black Morass
		.accept 10297 >>Accept The Opening of the Dark Portal	
		.target Sa'at

	step
		>>Defend |cRXP_FRIENDLY_Medivh|r
		.complete 10297,1
		.target Medivh	

	step
		>>Defend |cRXP_FRIENDLY_Medivh|r. After defeating |cRXP_ENEMY_Aeonus|r:
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medivh|r
		.turnin 9836 >>Turn In the Master's Touch
		.accept 9837 >>Return to Khadgar
		.target Medivh
		.mob Aeonus	

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sa'at|r
		.turnin 10297
		.accept 10298
		.target Sa'at
		
	step
		.goto Tanaris,58.4,54.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andormu|r
		.turnin 10298
		.target Andormu	

	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City	

    step
        .goto Shattrath City,54.74,44.32
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
        .turnin 9837
        .target Khadgar	

	step
		+Congratulations, you have now completed the |cRXP_LOOT_Karazhan Attunement|r!

]])