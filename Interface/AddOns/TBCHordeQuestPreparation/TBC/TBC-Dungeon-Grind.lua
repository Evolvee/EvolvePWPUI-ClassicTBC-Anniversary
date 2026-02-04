if RXPGuides == nil then
	return
end

RXPGuides.RegisterGuide([[
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 5 - TBC Dungeon Grind
#name Dungeon Grind to 70

--- |cRXP_FRIENDLY_, |cRXP_ENEMY_, |cRXP_LOOT_, |cRXP_WARN_, |cRXP_PICK_, |cRXP_BUY_
--- |c99ffff99 OR|r
--- |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk

--- https://docs.google.com/spreadsheets/d/12fL1aMmTYYnPKwRrFUyrummi5LBZ_OrxceVVLOxqbcU/htmlview

--- Go through Portal

	step
		.goto Blasted Lands,58.09,56.00
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Dar'toon|r
		.accept 9407 >> Accept Through the Dark Portal
		.target Warlord Dar'toon

	step
		#completewith next
		.goto Blasted Lands,58.74,60.28
		.zone Hellfire Peninsula >> Go through the Dark Portal

    step
		.goto Hellfire Peninsula,87.35,49.80
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant General Orion|r
        .turnin 9407
        .accept 10120
        .target Lieutenant General Orion

    step
        .goto Hellfire Peninsula,87.34,48.13
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vlagga Freyfeather|r
        .turnin 10120
        .accept 10289
        .target Vlagga Freyfeather   

    step
        .goto Hellfire Peninsula,87.34,48.13
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vlagga Freyfeather|r
		.fly Thrallmar >> Fly to |cFFfa9602Thrallmar|r
        .skipgossip
        .target Vlagga Freyfeather       
        
    step
        .goto Hellfire Peninsula,55.89,36.60,15,0
		.goto Hellfire Peninsula,55.86,37.12
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Krakork|r
        .turnin 10289
        .target General Krakork       
        
    step
        .goto Hellfire Peninsula,56.71,37.47
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Floyd Pinkus|r
        .home >> Set your Hearthstone to |cFFfa9602Thrallmar|r
        .target Floyd Pinkus  

	step
		#completewith next
		.goto Hellfire Peninsula,46.0,58.7,20,0
		.goto Hellfire Peninsula,46.1,51.7,20 >> Travel to |cFFfa9602The Blood Furnace|r. At the waypoint look for wooden stairs that lead up to the wall. Riding along this wall will take you to the instance.

	step
		>>Clear |cFFfa9602The Blood Furnace|r until you reach 5999 reputation into friendly with |cRXP_FRIENDLY_Thrallmar|r
        >>This will take around 12 runs with an average of 750 rep per run
        .reputation 947,Friendly,5999

	step
		#completewith next
		.subzone 3718 >>Travel to |cFFfa9602Swamprat Post|r in Zangarmarsh

    step
        .goto Zangarmarsh,84.76,55.11
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gur'zil|r
        .fp Swamprat Post
        .target Gur'zil
    
	step
		#completewith next
		.zone Shattrath City >>Travel to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City
		
	step
        .goto Shattrath City,59.8,41.6
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggard War Veteran|r
        .accept 10210
        .target Haggard War Veteran

    step
        .goto Shattrath City,54.6,44.6
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
        .turnin 10210
        .target A'dal

    step
        .goto Shattrath City,54.74,44.32
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
        .accept 10211
        .target Khadgar   
        
    step
		.goto Shattrath City,50.36,42.87
		>>Follow |cRXP_FRIENDLY_Khadgar's Servant|r
		>>Head up to the second floor with |cRXP_FRIENDLY_G'eras|r and wait out the RP. If someone elses |cRXP_FRIENDLY_Khadgar's Servant|r arrives in the meantime, you can target it and it will complete the quest for you. If the quest fails, abandon it, accept the quest from |cRXP_FRIENDLY_Khadgar's Servant|r again, then follow the |cRXP_FRIENDLY_Khadgar's Servant|r around << tbc
		.complete 10211,1 
		.target Khadgar's Servant

	step
		.goto Shattrath City,54.74,44.32
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
		.turnin 10211
		.target Khadgar

	step
		.goto Shattrath City,54.74,44.32
		.turninmultiple 10551,10552>>Talk to |cRXP_FRIENDLY_Khadgar's Servant|r. Pledge your Allegiance to either the Aldor or Scryers
		*If you do not see Aldor or Scryer specific quest steps after this, type "/reload" into your ingame chat box
		.target Khadgar
		.isQuestAvailable 10551
		.isQuestAvailable 10552	

	step
		.goto Shattrath City,54.74,44.32
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
		.turnin -10551
		.turnin -10552
		.target Khadgar

	step
		#scryer
		.goto Shattrath City,56.2,81.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Haelthol|r
		.home >> Set your Hearthstone to |cFFfa9602Shattrath City|r
		.target Innkeeper Haelthol

	step
		#aldor
		.goto Shattrath City,28.0,49.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minalei|r
		.home >> Set your Hearthstone to |cFFfa9602Shattrath City|r
		.target Minalei		

	step
		.goto Shattrath City,64.05,41.12
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
		.fp Shattrath City
		.target Nutral

    step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Swamprat Post >>Fly to |cFFfa9602Swamprat Post|r
        .target Nutral
        .zoneskip Zangarmarsh

	step
		#completewith next
		.goto Zangarmarsh,50.4,40.8,15,0
		.goto Zangarmarsh,51.9,37.8,20 >>Swim to the center of |cFFfa9602Coilfang Reservoir|r until you are over the open drain pipe below. Dive and swim through it until you find the underwater cavern.

	step
		#completewith next
		.goto Zangarmarsh,48.9,35.7,20 >> Enter |cFFfa9602The Slave Pens|r

    step
		>>Clear |cFFfa9602The Slave Pens|r until you reach level 65 and 5999 reputation into friendly with |cRXP_FRIENDLY_Cenarion Expedition|r
        .reputation 942,Friendly,5999   
        .xp 65

	step
		#completewith next
		.hs >>Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City

	step
		>>Travel to the Sethekk Area of |cFFfa9602Lower City|r
		.goto Shattrath City, 58.0,15.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oloraak|r
		.accept 10180 >> Accept Can't Stay Away	
		.target Oloraak

	step
		#completewith next
		.subzone 3683 >>Travel to |cFFfa9602Stonebreaker Hold|r

	step
		.goto Terokkar Forest,49.2,43.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerna|r
		.fp Stonebreaker Hold
		.target Kerna

	step
		.goto Terokkar Forest,39.4,58.5
		>>Run to the entrance of |cFFfa9602Mana Tombs|r in Auchindoun.
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artificer Morphalius|r
		.accept 10216
		.target Artificer Morphalius

	step
		.goto Terokkar Forest,39.4,58.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nexus-Prince Haramad|r
		.accept 10165
		.target Nexus-Prince Haramad

	step
		#completewith next
		.goto Terokkar Forest,39.6,57.7,10 >>Enter |cFFfa9602Mana Tombs|r

	step
		>>Kill 10x |cRXP_ENEMY_Ethereal Crypt Raider|r, 5x |cRXP_ENEMY_Nexus Stalker|r, 5x |cRXP_ENEMY_Ethereal Sorcerer|r, 5x |cRXP_ENEMY_Ethereal Spellbinder|r and |cRXP_ENEMY_Nexus-Prince Shaffar|r within |cFFfa9602Mana Tombs|r. Loot |cRXP_ENEMY_Nexus-Prince Shaffar|r for |cRXP_LOOT_Shaffar's Wrappings|r
		.complete 10216,1
		.complete 10216,2
		.complete 10216,3
		.complete 10216,4
		.complete 10165,1
		.mob Ethereal Crypt Raider
		.mob Nexus Stalker
		.mob Ethereal Sorcerer
		.mob Ethereal Spellbinder
		.mob Nexus-Prince Shaffar

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethereal Transporter Control Panel|r within |cFFfa9602Mana Tombs|r
		.turnin 10216 >>Turn In Safety Is Job One		

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cryo-Engineer Sha'heen|r within |cFFfa9602Mana Tombs|r
		.accept 10218
		.complete 10218,1
		.target Cryo-Engineer Sha'heen

	step
		#sticky
		.goto Terokkar Forest,39.4,58.5
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nexus-Prince Haramad|r
		.turnin 10165
		.turnin 10218
		.target Nexus-Prince Haramad

    step
		>>Clear |cFFfa9602The Mana Tombs|r until you reach level 66 
        .xp 66

	step
		#completewith next
		.goto Terokkar Forest,43.1,65.6,20 >>Run to the entrance of |cFFfa9602Sethekk Halls|r in Auchindoun.

	step
		.goto Terokkar Forest,44.1,65.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isfar|r
		.turnin 10180 >>Turn In Can't Stay Away
		.accept 10097 >>Accept Brother Against Brother
		.accept 10098 >>Accept Terokk's Legacy
		.target Isfar

	step
		#completewith next
		.goto Terokkar Forest,44.9,65.6,10 >>Enter |cFFfa9602Sethekk Halls|r

	step
		>>Kill |cRXP_ENEMY_Darkweaver Syth|r and loot him for |cRXP_LOOT_Terokk's Mask|r. Free |cRXP_FRIENDLY_Lakka|r afterwards
		.complete 10097,1 
		.complete 10098,1 	
		.complete 10097,2
		.mob Darkweaver Syth
		.target Lakka
		.skipgossip

	step
		#completewith next
		>>Loot |cRXP_LOOT_The Saga of Terokk|r. It's a small red book and in the room just before reaching |cRXP_ENEMY_Talon King Ikiss|r
		.complete 10098,2 		

	step
		#completewith next
		>>Kill |cRXP_ENEMY_Talon King Ikiss|r and loot him for |cRXP_LOOT_Terokk's Quill|r 
		.complete 10098,3
		
	step
		>>Make sure you loot the |cRXP_LOOT_Shadow Labyrinth Key|r at the end of the dungeon in the chest behind |cRXP_ENEMY_Talon King Ikiss|r
		.collect 27991,1 			

	step
		#completewith next
		.goto Terokkar Forest,44.1,65.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isfar|r
		.turnin 10097 >>Turn In Brother Against Brother
		.turnin 10098 >>Turn In Terokk's Legacy	
		.target Isfar

	step
		>>Clear |cFFfa9602The Sethekk Halls|r until you reach 5999 reputation into friendly with |cRXP_FRIENDLY_Lower City|r
        >>This will take around 8 runs with an average of 1139 rep per run
        .reputation 1011,Friendly,5999
		.collect 27991

	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City

	step
		#completewith next
		.goto Shattrath City,52.2,52.8
		.zone Orgrimmar >> Take the Portal to |cFFfa9602Orgrimmar|r
		.zoneskip Orgrimmar
		
	step << Paladin
		.goto Orgrimmar,32.4,35.8
		.trainer >> Go and train your class spells

	step << Shaman
		.goto Orgrimmar,38.6,36.0
		.trainer >> Go and train your class spells

	step << Hunter
		.goto Orgrimmar,66.1,18.5
		.trainer >> Go and train your class spells

	step << Warrior
		.goto Orgrimmar,79.7,31.4
		.trainer >> Go and train your class spells

	step << Rogue
		.goto Orgrimmar,44.0,54.6
		.trainer >> Go and train your class spells

	step << Warlock
		.goto Orgrimmar,48.0,46.0
		.trainer >> Go and train your class spells

	step << Mage
		.goto Orgrimmar,38.8,85.6
		.trainer >> Go and train your class spells

	step << Priest
		.goto Orgrimmar,35.6,87.8
		.trainer >> Go and train your class spells

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
		.goto Shattrath City,52.2,52.8
		.zone Orgrimmar >> Take the Portal to |cFFfa9602Orgrimmar|r
		.zoneskip Orgrimmar

	step
		.goto Orgrimmar,55.59,62.92
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
		>>|cRXP_BUY_Collect the following items for the |cRXP_LOOT_Shattered Halls Key|r questline:|r
		>>4x |T133230:0|t[Fel Iron Bar]
		>>2x |T132854:0|t[Arcane Dust]
		>>4x |T132839:0|t[Mote of Fire]
		>>|cRXP_WARN_Buy them from the Auction House if possible|r
		.collect 23445,4,10757,1
		.collect 22445,2,10757,1
		.collect 22574,4,10757,1

	step
		.goto Orgrimmar,49.58,69.13
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karus|r
		.bankdeposit 23445,22445,22574 >>Deposit all items for the |cRXP_LOOT_Shattered Halls Key|r questline
		.target Karus

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
		>>Clear |cFFfa9602Black Morass|r until you are 1000 rep away from revered with |cRXP_FRIENDLY_Keepers of Time|r
        >>This will take around 5-6 runs with an average of 1100 rep per run
        .reputation 989,Honored,11000

	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City

    step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Stonebreaker Hold >>Fly to |cFFfa9602Stonebreaker Hold|r
        .target Nutral
        .zoneskip Terokkar Forest

	step
		#sticky
		#completewith next
		.goto Terokkar Forest,39.7,70.1,10 >>Restock from the vendors outside if you're running low on food/drink/ammo/poisons etc

	step
		#completewith next
		.goto Terokkar Forest,39.7,71.0,30 >> Use the key from |cFFfa9602Sethekk Halls|r to open the |cFFfa9602Shadow Labyrinth|r Door

	step
		>>Click the Container on the left after killing |cRXP_ENEMY_Murmur|r to spawn the |cRXP_ENEMY_First Fragment Guardian|r
		>>Kill and loot him for the |cRXP_LOOT_First Key Fragment|r
		.complete 9831,1 
		.mob First Fragment Guardian

	step
		>>Clear |cFFfa9602The Shadow Labyrinth|r until you reach revered reputation with |cRXP_FRIENDLY_Lower City|r
        >>This will take around 6 runs with an average of 2000 rep per run
		>> You can opt to clear only the first two bosses of the dungeon for improved efficiency
        .reputation 1011,Revered
		
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
        .zoneskip Zangarmarsh

	step
		#completewith next
		.goto Zangarmarsh,50.4,40.8,15,0
		.goto Zangarmarsh,51.9,37.8,20 >>Swim to the center of |cFFfa9602Coilfang Reservoir|r until you are over the open drain pipe below. Dive and swim through it until you find the underwater cavern.

	step
		.goto Zangarmarsh,52.3,36.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Jhang|r
		.accept 9763 >>Accept The Warlord's Hideout
		.target Watcher Jhang

	step
		#completewith next
		.goto Zangarmarsh,50.4,33.3,20 >> Enter |cFFfa9602The Steamvault|r

	step
		>>Click the Container underwater near the first boss (northern part of the water) to spawn the |cRXP_ENEMY_Second Fragment Guardian|r
		>>Kill and loot him for the |cRXP_LOOT_Second Key Fragment|r
		.complete 9832,1 
		.mob Second Fragment Guardian		

	step
		>>Kill |cRXP_ENEMY_Warlord Kalithresh|r
		.complete 9763,1
		.target Warlord Kalithresh
	
	step
		.goto Zangarmarsh,52.3,36.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Jhang|r
		.turnin 9763 >>Turn In The Warlord's Hideout
		.target Watcher Jhang
		
	step
		#completewith next
		.goto Zangarmarsh,50.4,33.3,20 >> Enter |cFFfa9602The Steamvault|r

    step
		>>Clear |cFFfa9602The Steamvault|r until you reach revered reputation with |cRXP_FRIENDLY_Cenarion Expedition|r
        >>This will take around 7 runs with an average of 1800 rep per run
        .reputation 942,Revered

	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City	

	step
		#scryer
		.goto Shattrath City,58.7,61.5
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berudan Keysworn|r
		.bankwithdraw 23445,22445,22574 >>Withdraw all items for the |cRXP_LOOT_Shattered Halls Key|r questline
		.collect 23445,4,10757,1
		.collect 22445,2,10757,1
		.collect 22574,4,10757,1
		.target Berudan Keysworn

	step
		#aldor
		.goto Shattrath City,49.4,28.3
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mendorn|r
		.bankwithdraw 23445,22445,22574 >>Withdraw all items for the |cRXP_LOOT_Shattered Halls Key|r questline
		.collect 23445,4,10757,1
		.collect 22445,2,10757,1
		.collect 22574,4,10757,1
		.target Mendorn	

    step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Stonebreaker Hold >>Fly to |cFFfa9602Stonebreaker Hold|r
        .target Nutral
        .zoneskip Terokkar Forest

	step
		.goto Shadowmoon Valley,30.3,29.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drek'Gol|r
		.fp Shadowmoon Village >> Get the Shadowmoon Village flight path
		.target Drek'Gol

	step
		.goto Shadowmoon Valley,29.2,29.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olrokk|r
		.skill riding,225,1
		.target Olrokk

	step
		.goto Shadowmoon Valley,67.6,36.6
		>>Kill |cRXP_ENEMY_Smith Gorlunk|r and loot him for |cRXP_LOOT_Primed Key Mold|r
		.collect 31241,1,10755,1
		.mob Smith Gorlunk

	step
		#completewith next
		.use 31241
		.accept 10755
		.itemcount 31241,1

	step
		#scryer
		.goto Shadowmoon Valley,30.3,29.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drek'Gol|r
		.fly Thrallmar >>Fly to |cFFfa9602Thrallmar|r
		.target Drek'Gol

	step
		#aldor
		.goto Shadowmoon Valley,63.2,30.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maddix|r
		.fly Thrallmar >>Fly to |cFFfa9602Thrallmar|r
		.target Maddix

    step
		.goto Hellfire Peninsula,55.0,36.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
		.turnin 10755
		.accept 10756
		.target Nazgrel

    step
		.goto Hellfire Peninsula,53.2,38.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Master Rohok|r
		.turnin 10756
		.accept 10757
		.target Grand Master Rohok	

	step
		.goto Hellfire Peninsula,53.2,38.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Master Rohok|r
		.turnin 10757
		.accept 10758
		.target Grand Master Rohok	
		
	step
		>>Kill |cRXP_ENEMY_Fel Reaver|r and use |T134459:0|t[Unfired Key Mold] on his corpse. You don't need kill credit to use |T134459:0|t[Unfired Key Mold]
		.line Hellfire Peninsula,70.74,44.49,70.1,44.53,69.48,44.19,68.89,43.27,68.22,42.33,68.36,41.28,68.39,40.21,68.0,39.41,67.52,38.59,66.73,38.31,66.07,38.35,65.47,38.44,64.92,37.64,64.52,36.59,64.36,35.86,63.76,34.78,63.04,34.29,62.29,34.1,61.65,34.33,61.29,34.98,61.12,35.97,60.62,37.1,60.17,38.22,59.91,39.12,59.93,40.05,59.86,41.01,59.82,41.98,60.09,43.05,60.58,43.99,60.95,44.99,61.43,46.11,62.07,47.0,62.73,47.9,63.13,48.73,62.88,49.88,62.81,50.69,62.63,51.75,62.13,52.68,61.71,53.59,61.69,54.53,62.1,55.59,62.74,56.39,63.38,56.8,64.16,56.5,64.68,56.05,65.27,55.9,65.97,55.61,66.63,55.47,67.25,55.5,67.85,55.96,68.51,56.49,69.02,57.43,69.22,58.5,69.28,59.49,69.33,60.44,69.39,61.44,69.14,62.23,68.51,62.07,67.91,61.97,67.37,61.9,66.68,62.12,66.02,62.89,65.98,64.02,65.74,65.29,65.49,66.26,65.17,67.16,64.67,68.02,64.04,68.95,63.4,69.67,62.77,69.95,62.13,71.06,61.8,72.08,61.5,73.06,61.12,74.02,60.94,74.96,60.16,75.3,59.58,75.0,58.89,74.2,58.4,73.13,58.2,72.42,57.72,71.54,56.91,71.25,56.32,71.26,55.66,71.47,55.03,71.79,54.35,71.8,53.71,71.95,53.03,72.04,52.4,71.95,51.95,72.57,51.71,73.45,51.37,74.53,51.22,75.68,50.81,76.49,50.46,77.5,50.23,78.57,49.76,79.75,49.19,80.2,48.54,79.62,48.22,78.53,48.11,77.61,48.08,76.74,47.87,75.83,47.9,74.85,47.83,73.89,47.39,72.92,46.71,72.03,46.61,71.08,46.89,70.09,47.17,69.37,47.87,69.26,48.51,69.55,49.21,69.57,49.87,69.17,50.34,68.28,50.44,67.25,50.24,66.19,50.16,65.27,49.81,64.28,50.16,65.27,50.24,66.19,50.44,67.25,50.35,68.28,49.87,69.17,49.21,69.57,48.51,69.55,47.87,69.26,47.17,69.37,46.89,70.09,46.61,71.08,46.71,72.03,47.39,72.92,47.83,73.89,47.9,74.85,47.87,75.83,48.08,76.74,48.11,77.61,48.22,78.53,48.54,79.62,49.19,80.2,49.76,79.75,50.23,78.57,50.46,77.5,50.81,76.49,51.22,75.68,51.37,74.54,51.71,73.45,51.95,72.57,52.4,71.95,53.03,72.04,53.71,71.95,54.35,71.8,55.03,71.79,55.66,71.47,56.32,71.26,56.91,71.25,57.72,71.54,58.2,72.42,58.4,73.13,58.89,74.2,59.58,75.0,60.16,75.3,60.94,74.96,61.12,74.02,61.5,73.06,61.8,72.08,62.13,71.06,62.76,69.95,63.39,69.67,64.04,68.95,64.67,68.02,65.17,67.16,65.49,66.26,65.74,65.29,65.98,64.02,66.02,62.89,66.68,62.12,67.37,61.9,67.91,61.97,68.51,62.07,69.14,62.24,69.39,61.44,69.33,60.45,69.28,59.49,69.22,58.5,69.02,57.43,68.51,56.49,67.85,55.96,67.25,55.5,66.63,55.47,65.97,55.61,65.28,55.89,64.68,56.05,64.16,56.5,63.38,56.8,62.74,56.39,62.1,55.59,61.69,54.53,61.71,53.59,62.13,52.68,62.63,51.75,62.81,50.69,62.88,49.88,63.13,48.73,62.73,47.9,62.07,47.0,61.43,46.11,60.95,44.99,60.58,43.99,60.09,43.06,59.82,41.98,59.86,41.01,59.93,40.05,59.91,39.12,60.17,38.22,60.62,37.1,61.12,35.97,61.29,34.98,61.65,34.33,62.29,34.1,63.04,34.29,63.76,34.78,64.36,35.86,64.51,36.57,64.92,37.64,65.47,38.44,66.07,38.35,66.72,38.31,67.52,38.59,68.0,39.41,68.39,40.21,68.36,41.28,68.22,42.33,68.88,43.27,69.48,44.19,70.1,44.53,70.74,44.49,71.41,44.02
		.line Hellfire Peninsula,48.23,30.29,48.11,31.29,48.11,32.24,47.99,33.27,47.88,34.2,47.55,35.27,47.05,36.26,46.86,37.15,46.85,38.04,46.78,39.02,46.71,39.94,46.52,40.93,46.61,41.9,46.5,42.89,46.33,43.87,45.98,44.41,45.31,44.69,44.67,45.23,44.02,45.72,43.39,45.66,42.77,45.69,42.09,45.1,41.46,44.19,40.76,43.41,40.13,43.0,39.47,43.45,38.84,43.64,38.2,43.79,37.57,44.34,36.93,45.06,36.39,45.93,35.83,46.88,34.99,47.08,34.34,46.61,33.69,46.46,33.05,45.52,32.38,45.14,31.78,44.37,31.37,43.06,30.87,42.05,30.61,41.06,30.44,39.95,29.83,39.41,29.16,39.58,28.52,39.71,27.88,39.84,27.25,40.53,27.18,41.69,27.14,42.95,27.85,43.69,28.27,44.93,28.75,45.93,29.15,45.88,29.81,46.51,30.47,47.29,31.09,48.15,31.51,49.36,31.3,50.53,30.46,51.17,29.82,51.28,29.17,51.16,28.52,50.8,27.86,49.81,27.21,48.88,26.59,48.18,25.95,47.74,25.31,47.34,24.61,47.44,23.95,47.45,23.33,47.51,22.68,47.61,22.08,47.75,21.4,47.54,20.77,46.97,20.15,45.9,19.54,45.41,18.91,45.19,18.47,44.07,17.91,43.03,17.27,43.09,16.61,44.02,16.05,44.97,15.62,46.13,15.75,47.49,15.82,48.57,16.26,49.43,16.92,49.98,17.39,50.78,17.55,51.75,17.74,52.74,17.96,53.66,18.26,54.61,18.77,55.63,19.49,56.34,20.13,56.35,20.77,55.69,21.08,54.76,21.29,53.75,22.05,53.18,22.72,53.71,22.94,54.62,23.09,55.62,22.98,56.41,23.22,57.53,23.34,58.49,23.
		.use 31252
		.complete 10758,1
		.unitscan Fel Reaver


	step
		.goto Hellfire Peninsula,53.2,38.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Master Rohok|r
		.turnin 10758
		.target Grand Master Rohok	

	step
		#completewith next
		.goto Hellfire Peninsula,47.7,52.0,10 >>Enter |cFFfa9602The Shattered Halls|r

	step
		>>Clear |cFFfa9602The Shattered Halls|r until you reach revered reputation with |cRXP_FRIENDLY_Thrallmar|r
        >>This will take around 8 runs with an average of 1600 rep per run
        .reputation 947,Revered  

	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City	

    step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Shadowmoon Village >>Fly to |cFFfa9602Shadowmoon Village|r
        .target Nutral
        .zoneskip Shadowmoon Valley	

	step
		.goto Shadowmoon Valley,29.2,29.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olrokk|r
		.skill riding,225,1
		.target Olrokk	

	step
		.goto Netherstorm,33.7,64.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krexcil|r
		.fp Area 52 >> Get the Area 52 flight path
		.target Krexcil

	step
		.goto Netherstorm,32.4,64.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r
		.accept 10265 >>Accept Consortium Crystal Collection
		.target Nether-Stalker Khay'ji

	step	
		>>Kill |cRXP_ENEMY_Pentatharon|r (The Dreadlord) and loot him for |cRXP_LOOT_Arklon Crystal Artifact|r
		.goto Netherstorm,42.7,72.2
		.complete 10265,1 
		.mob Pentatharon

	step
		.goto Netherstorm,32.5,64.3
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r
		.turnin 10265 >>Turn in Consortium Crystal Collection
		.accept 10262 >>Accept A Heap of Ethereals
		.target Nether-Stalker Khay'ji

	step
		>>Note: This quest isn't group friendly but it is essential to do for the Arcatraz Attunement which is needed for Karazhan Attunement.
		.goto Netherstorm,31.2,74.7
		>>Kill |cRXP_ENEMY_Zaxxis|r mobs in the area. Loot them for their |cRXP_LOOT_Zaxxis Insignia|r
		.complete 10262,1
		.mob Zaxxis Raider
		.mob Zaxxis Stalker
		.mob Warp-Raider Nesaad

	step
		.goto Netherstorm,32.5,64.3
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r
		.turnin 10262 >>Turn in A Heap of Ethereals
		.accept 10205 >>Accept Warp-Raider Nesaad
		.target Nether-Stalker Khay'ji

	step
		>>Kill |cRXP_ENEMY_Warp-Raider Nesaad|r
		.goto Netherstorm,28.0,79.2
		.complete 10205,1 
		.mob Warp-Raider Nesaad

	step
		.goto Netherstorm,32.5,64.3
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r
		.turnin 10205 >>Turn in Warp-Raider Nesaad
		.accept 10266 >>Accept Request for Assistance
		.target Nether-Stalker Khay'ji

	step
		.goto Netherstorm,46.7,57.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gahruj|r
		.turnin 10266 >>Turn in Request for Assistance
		.accept 10267 >>Accept Rightful Repossession
		.target Gahruj

	step
		>>This quest isn't group friendly but it is essential to do for the Arcatraz Attunement which is needed for Karazhan Attunement
		>>Loot |cRXP_LOOT_Box of Surveying Equipment|r on the ground in the area
		.goto Netherstorm,57.5,66.8
		.complete 10267,1

	step
		.goto Netherstorm,46.7,57.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gahruj|r
		.turnin 10267 >>Turn in Rightful Repossession
		.accept 10268 >>Accept An Audience with the Prince
		.target Gahruj

	step
		.goto Netherstorm,45.3,34.9
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grennik|r
		.fp Stormspire >> Get The Stormspire flight path
		.target Grennik

	step
		.goto Netherstorm,45.8,36.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Nexus-Prince Haramad|r
		.turnin 10268 >>Turn in An Audience with the Prince
		.accept 10269 >>Accept Triangulation Point One
		.target Image of Nexus-Prince Haramad

	step
		.goto Netherstorm,66.7,33.6
		.use 28962 >>Use the |T135164:0|t[Triangulation Device] at the 3-way fork in the road, northeast of Manaforge Ultris
		.complete 10269,1 

	step
		.goto Netherstorm,58.4,31.3
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dealer Hazzin|r
		.turnin 10269 >>Turn in Triangulation Point One
		.accept 10275 >>Accept Triangulation Point Two
		.target Dealer Hazzin

	step
		.goto Netherstorm,29.0,41.2
		.use 29018 >>Use the |T135164:0|t[Triangulation Device] east of the bottom of Manaforge Ara
		.complete 10275,1 

	step
		.goto Netherstorm,34.6,37.9
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Trader Tuluman|r
		.turnin 10275 >>Turn in Triangulation Point Two
		.accept 10276 >>Accept Full Triangle
		.target Wind Trader Tuluman

	step
		>>Kill |cRXP_ENEMY_Culuthas|r (Level 70 Elite Demon) and loot him for |cRXP_LOOT_Ata'mal Crystal|r
		.goto Netherstorm,53.5,21.5
		.complete 10276,1 
		.mob Culuthas

	step
		.goto Netherstorm,45.9,36.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Nexus-Prince Haramad|r
		.turnin 10276 >>Turn in Full Triangle
		.accept 10280 >>Accept Special Delivery to Shattrath City
		.target Image of Nexus-Prince Haramad

	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City	

    step
        .goto Shattrath City,54.6,44.6
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
        .turnin 10280
		.accept 10704
        .target A'dal

	step
		#completewith next
		.goto Netherstorm,71.7,55.1,20 >> Fly to |cFFfa9602The Botanica|r, then go inside

	step
		>>Kill |cRXP_ENEMY_Warpsplinter|r at the end of |cFFfa9602The Botanica|r and loot him to obtain the |cRXP_LOOT_Top Shard of the Arcatraz Key|r
		.complete 10704,1
		.mob Warpsplinter

	step
		#completewith next
		+Exit the dungeon and prepare to run |cFFfa9602Mechanar|r. Go back to Cosmowrench if you need to vendor/repair

	step
		#completewith next
		.goto Netherstorm,70.6,69.8,20 >> Fly to |cFFfa9602The Mechanar|r, then go inside

	step
		>>Kill |cRXP_ENEMY_Pathaleon|r and loot him for the |cRXP_LOOT_Bottom Shard of the Arcatraz Key|r
		.complete 10704,2
		.mob Pathaleon

	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City	

	step
		.goto Shattrath City,54.0,44.9
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
		.turnin 10704 >>Turn in How to Break Into the Arcatraz
		.target A'dal

	 step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Area 52 >>Fly to |cFFfa9602Area 52|r
        .target Nutral
        .subzoneskip 3712

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
		.zone Thunder Bluff >> Take the Portal to |cFFfa9602Thunder Bluff|r
		.zoneskip Thunder Bluff

	step
		#completewith next
		.goto Thunder Bluff,47.00,49.82
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
		.fly Gadgetzan >> Fly to |cFFfa9602Gadgetzan|r
		.target Tal
		.zoneskip Tanaris

	step
		#completewith next
		.goto Tanaris,62.0,50.4,100 >>Travel to the |cFFfa9602Caverns of Time|r

	step
		#completewith next
		+Talk to the |cRXP_FRIENDLY_Steward Of Time|r. Accept the ride down to the Master's Lair
		.target Steward Of Time
		.skipgossip

	step
		#completewith next
		.goto Tanaris,57.4,62.8,20 >> Enter The |cFFfa9602Black Morass|r

	step
		>>Defend |cRXP_FRIENDLY_Medivh|r. After defeating |cRXP_ENEMY_Aeonus|r:
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medivh|r
		.turnin 9836 >>Turn In the Master's Touch
		.accept 9837 >>Return to Khadgar
		.target Medivh
		.mob Aeonus

	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City	

    step
        .goto Shattrath City,54.74,44.32
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
        .accept 9837
        .target Khadgar

	 step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Area 52 >>Fly to |cFFfa9602Area 52|r
        .target Nutral
        .subzoneskip 3712

	step
		#completewith next
		.goto Netherstorm,71.7,55.1,20 >> Fly to |cFFfa9602The Botanica|r, then go inside

	step
		>>Clear |cFFfa9602The Botancia|r until you reach revered reputation with |cRXP_FRIENDLY_Sha'tar|r
        >>This will take around 8 runs with an average of 1600 rep per run
        .reputation 935,Revered  

	step
		+Congratulations, you have now reached |cRXP_FRIENDLY_Level 70|r, unlocked |cRXP_FRIENDLY_15/15 Heroic Dungeons|r, got your |cRXP_FRIENDLY_Flying Mount|r and you are attuned for |cRXP_FRIENDLY_Karazhan|r
		>>You can still follow the guide for the |cRXP_LOOT_Nightbane Questchain|r or switch to |cRXP_LOOT_TBC Toolkit|r for all other TBC related guides

	step
		>>Clear |cFFfa9602Karazhan|r until you reach honored reputation with |cRXP_FRIENDLY_The Violet Eye|r
		>>Try to avoid killing |cRXP_ENEMY_Shade of Aran|r if you want to do |cRXP_ENEMY_Nightbane|r in the first run
		.reputation 967,Honored  

	step
		.goto Deadwind Pass,47.0,75.7
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Alturus|r
		.accept 9630
		.target Archmage Alturus

	step
		#completewith next
		.goto Deadwind Pass,47.0,75.7,10 >>Enter |cFFfa9602Karazhan|r	

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wravien|r
		>>He is located in the |cFFfa9602Guardians Library|r inside |cFFfa9602Karazhan|r after you killed |cRXP_The Curator|r
		.turnin 9630
		.accept 9638
		.target Wravien

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gradav|r
		>>He is located in the |cFFfa9602Guardians Library|r inside |cFFfa9602Karazhan|r after you killed |cRXP_The Curator|r
		.turnin 9638
		.accept 9639
		.target Gradav	

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kamsis|r
		>>He is located in the |cFFfa9602Guardians Library|r inside |cFFfa9602Karazhan|r after you killed |cRXP_The Curator|r
		.turnin 9639
		.accept 9640
		.target Kamsis
		
	step
		>>Kill |cRXP_ENEMY_Shade of Aran|r inside |cFFfa9602Karazhan|r and loot him for |cRXP_LOOT_Medivh's Journal|r
		.complete 9640,1
		.mob Shade of Aran

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kamsis|r
		>>He is located in the |cFFfa9602Guardians Library|r inside |cFFfa9602Karazhan|r after you killed |cRXP_The Curator|r
		.turnin 9640
		.accept 9645
		.target Kamsis

	step
		.use 23934 >>Go to the |cFFfa9602Master's Terrace|r in |cFFfa9602Karazhan|r and use |T133738:0|t[Medivh's Journal]
		.complete 9645,1

	step
		.goto Deadwind Pass,47.0,75.7
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Alturus|r
		.turnin 9645
		.accept 9680
		.target Archmage Alturus	

	step
		.goto Deadwind Pass,45,79
		>>Loot |cRXP_LOOT_Charred Bone Fragment|r on the ground
		>>|cRXP_WARN_You cannot be in a raidgroup to loot the Fragment|r
		.complete 9680,1

	step
		.goto Deadwind Pass,47.0,75.7
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Alturus|r
		.turnin 9680
		.accept 9631
		.target Archmage Alturus	

	step
		#completewith next
		.hs >>Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City

	step
		#completewith next
		.goto Shattrath City,45.12,63.89,5,0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
		.fly Area 52 >>Travel to |cFFfa9602Area 52|r
		.target Nutral
		.subzoneskip 3712	

	step
		.goto Netherstorm,32.2,63.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalynna Lathred|r
		.turnin 9631
		.accept 9637
		.target Kalynna Lathred

	step
		#completewith next
		.goto Terokkar Forest,44.9,65.6,10 >>Enter |cFFfa9602Sethekk Halls|r on |cRXP_WARN_Heroic|r difficulty

	step
		>>Kill |cRXP_ENEMY_Darkweaver Syth|r and loot him for the |cRXP_LOOT_Book of Forgotten Names|r
		.complete 9637,1
		.mob Darkweaver Syth

	step
		#completewith next
		.goto Hellfire Peninsula,47.7,52.0,10 >>Enter |cFFfa9602The Shattered Halls|r on |cRXP_WARN_Heroic|r difficulty

	step
		>>Kill |cRXP_ENEMY_Grand Warlock Nethekurse|r and loot him for the |cRXP_LOOT_Tome of Dusk|r
		.complete 9637,2
		.mob Grand Warlock Nethekurse	

	step
		#completewith next
		.hs >>Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City

	step
		#completewith next
		.goto Shattrath City,45.12,63.89,5,0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
		.fly Area 52 >>Travel to |cFFfa9602Area 52|r
		.target Nutral
		.subzoneskip 3712	

	step
		.goto Netherstorm,32.2,63.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalynna Lathred|r
		.turnin 9637
		.accept 9644
		.target Kalynna Lathred		

	step
		#completewith next
		.goto Deadwind Pass,47.0,75.7,10 >>Enter |cFFfa9602Karazhan|r	

	step
		.use 24140 >>Go to the |cFFfa9602Master's Terrace|r in |cFFfa9602Karazhan|r and use |T134514:0|t[Blackened Urn] to summon |cRXP_ENEMY_Nightbane|r
		>>Kill |cRXP_ENEMY_Nightbane|r and loot him for the |cRXP_LOOT_Faint Arcane Essence|r
		.complete 9644,1	

	step
		.goto Deadwind Pass,47.0,75.7
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Alturus|r
		.turnin 9644
		.target Archmage Alturus		

	step
		+You have now completed |cRXP_FRIENDLY_all Attunements|r and gathered |cRXP_FRIENDLY_all Items and Keys|r for the first phase of TBC
		>>Feel free to check out our |cRXP_WARN_TBC Toolkit|r addon for more guides and future attunements

]])