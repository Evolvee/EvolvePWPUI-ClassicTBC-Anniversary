if RXPGuides == nil then
	return
end

RXPGuides.RegisterGuide([[
#tbc
#version 3
<<Horde
#group Consita TBC Toolkit
#subgroup 1 - TBC Dungeon Grind
#name Dungeon Grind to 70 without Arcatraz and SH key

--- https://docs.google.com/spreadsheets/d/12fL1aMmTYYnPKwRrFUyrummi5LBZ_OrxceVVLOxqbcU/htmlview

--- Go through Portal

	step
		#completewith next
		.zone Blasted Lands >> Travel to |cFFfa9602Blasted Lands|r
		.zoneskip Blasted Lands

	step
		.goto Blasted Lands,58.09,56.00
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dar'toon|r
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
		.subzoneskip 3718

    step
        .goto Zangarmarsh,84.76,55.11
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gur'zil|r
        .fp Swamprat Post
        .target Gur'zil
    
	step
		#completewith next
		.fly Shattrath City >>Travel to |cFFfa9602Shattrath City|r
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
		>>Follow |cRXP_FRIENDLY_Khadgar's Servant|r << wotlk
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
		.subzoneskip 3683

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
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Thrallmar >>Fly to |cFFfa9602Thrallmar|r
        .target Nutral
        .zoneskip Hellfire Peninsula

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
		.goto Blade's Edge Mountains,52.05,54.11
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Unoke Tenderhoof|r
		.fp Thunderlord Stronghold >> Get the Thunderlord Stronghold flight path
		.target Unoke Tenderhoof

	step
		.goto Netherstorm,33.7,64.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krexcil|r
		.fp Area 52 >> Get the Area 52 flight path
		.target Krexcil

	step
		#completewith next
		.goto Netherstorm,74.4,57.7,20 >> Fly to The Arcatraz, unlock the door, then go inside

	step
		>>Click the Container tucked in the corner of the blue room after the first boss to spawn the |cRXP_ENEMY_Third Fragment Guardian|r
		>>Kill and loot him for the |cRXP_LOOT_Third Key Fragment|r
		.complete 9832,2
		.mob Third Fragment Guardian	

	step
		#completewith next
		.hs >> Hearth to |cFFfa9602Shattrath City|r
		.zoneskip Shattrath City	

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
        .turnin 9837
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
        >>You will get an average of 1600 rep per run
        .reputation 935,Revered  

	step
		+Congratulations, you have now reached |cRXP_FRIENDLY_Level 70|r, unlocked |cRXP_FRIENDLY_15/15 Heroic Dungeons|r, got your |cRXP_FRIENDLY_Flying Mount|r and you are attuned for |cRXP_FRIENDLY_Karazhan|r

]])