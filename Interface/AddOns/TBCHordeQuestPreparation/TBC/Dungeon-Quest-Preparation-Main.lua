if RXPGuides == nil then
	return
end

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 3-Blackrock Depths-Main
#displayname Blackrock Depths
#next 4-Upper/Lower Blackrock Spire-Main

--- BRD

	step
		#completewith brdquest
		+You will now begin with the quests for |cFFfa9602Blackrock Depths|r.
		>>Blackrock Depths is a very convoluted dungeon. In order to complete all quests in the most efficient way, it is required to leave the dungeon midrun to turn in/accept follow up quests so it may all be completed in 1 run.
		>>Try to ensure all party members have the same quests and prequests complete, along with 2-3 hours of playtime.
		>>There are additional quests included that you can skip. They will be marked as Optional

	step
		#completewith next
		.zone Badlands >>Travel to |cFFfa9602Badlands|r
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
		.goto Burning Steppes,65.152,23.911
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
		.accept 4123 >> Accept The Heart of the Mountain
		.target Maxwort Uberglint

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
		.isOnQuest 4061
		.mob War Reaver
		.mob Greater Obsidian Elemental

	step
		#completewith next
		.goto Burning Steppes,65.6,24.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahgruk|r
		.fly Badlands >> Fly to |cFFfa9602Kargath|r	
		.zoneskip Badlands
		.target Vahgruk

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

	step
		#label brdquest
		.goto Badlands,3.77,47.47
		>>Click the |cRXP_PICK_Wanted Poster|r
		.accept 4081 >> Accept KILL ON SIGHT: Dark Iron Dwarves

	step
		.goto Badlands,3.31,48.29
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thunderheart|r
		>>|cRXP_WARN_He may be patrolling around the mountain at Kargath. Find him or wait for him to return|r
		.accept 3906 >> Accept Disharmony of Flame
		.target Thunderheart

	step
		#completewith next
		.goto Badlands,3.98,44.76
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorrik|r
		.fly Flame Crest >> Fly to |cFFfa9602Flame Crest|r
		.target Gorrik
		.zoneskip Burning Steppes

	step
		.goto Burning Steppes,65.152,23.911
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
		.accept 4123 >> Accept The Heart of the Mountain
		.target Maxwort Uberglint

	step
		#completewith CoreAttunement
		.subzone 25 >> Travel to |cFFfa9602Blackrock Mountain|r
		.subzoneskip 25

	step
		>>|cRXP_WARN_OPTIONAL|r This step will grab the key quest for BRD to navigate within the dungeon easier
		>>Die intentionally in the lava in Blackrock Mountain, ideally near the Molten Core entrance location
		>>For this step you must be a |T132331:0|t[Ghost] to talk to |cRXP_FRIENDLY_Franclorn Forgewright|r inside Blackrock Mountain. Resurrect at your corpse once you have the quest
		.goto 1415,48.624,64.186
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Franclorn Forgewright|r
		.accept 3801 >> Accept Dark Iron Legacy
		.turnin 3801 >> Turn in Dark Iron Legacy
		.accept 3802 >> Accept Dark Iron Legacy
		.target Franclorn Forgewright
		.isQuestAvailable 3801

	step
		#label CoreAttunement
		>>|cRXP_WARN_OPTIONAL|r This step will grab the Molten Core attunement quest
		.goto 1415,48.409,63.815
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothos Riftwaker|r
		.accept 7848 >> Accept Attunement to the Core
		.target Lothos Riftwaker

	step
		>>Kill |cRXP_ENEMY_Overmaster Pyron|r
		>>|cRXP_ENEMY_Overmaster Pyron|r |cRXP_WARN_patrols outside of the BRD dungeon portal|r
		.complete 3906,1 
		.mob Overmaster Pyron
		.isOnQuest 3906

	step
		#completewith next
		.goto Eastern Kingdoms,48.4,63.8,0
		.goto Eastern Kingdoms,48.4,63.8,15,0
		.goto Eastern Kingdoms,48.1,62.4,15,0
		.subzone 1584 >>Enter the |cFFfa9602Blackrock Depths|r
		
	step
		>>Kill |cRXP_ENEMY_Anvilrage Dwarves|r
		.complete 4081,1 
		.mob +Anvilrage Guardsman
		.complete 4081,2 
		.mob +Anvilrage Warden
		.complete 4081,3 
		.mob +Anvilrage Footman
		
	step
		#completewith next
		.zone Badlands >>Travel to |cFFfa9602Kargath|r
		.zoneskip Badlands

	step
		.goto Badlands,3.31,48.29
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thunderheart|r
		>>|cRXP_WARN_He may be patrolling around the mountain at Kargath. Find him or wait for him to return|r
		.turnin 3906 >> Turn in Disharmony of Flame
		.target Thunderheart
		.isQuestComplete 3906

	step
		.goto Badlands,2.90,47.76
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
		.accept 4134 >> Accept Lost Thunderbrew Recipe
		.target Shadowmage Vivian Lagrave
		.isQuestTurnedIn 3906 

	step
		.goto Badlands,5.96,47.73
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galamav the Marksman|r on top of the tower
		.accept 3981 >> Accept Commander Gor'shak
		.target Galamav the Marksman
		.isQuestTurnedIn 3906		

	step
		.goto Badlands,5.81,47.52
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Goretooth|r
		.turnin 4081 >> Turn in KILL ON SIGHT: Dark Iron Dwarves
		.target Warlord Goretooth
		.isQuestComplete 4081

	step
		.goto Badlands,3.97,46.77
		>>Click the |cRXP_PICK_Wanted Poster|r
		.accept 4082 >> Accept KILL ON SIGHT: High Ranking Dark Iron Officials
		.isQuestTurnedIn 4081

	step
		#completewith next
		.goto Eastern Kingdoms,48.4,63.8,0
		.goto Eastern Kingdoms,48.4,63.8,15,0
		.goto Eastern Kingdoms,48.1,62.4,15,0
		.subzone 1584 >>Return to Blackrock Mountain and enter the |cFFfa9602Blackrock Depths|r
		
	step
		#completewith next
		+Complete the Ring of Law boss event, then take the exit up the tunnel and immediately turn right, crossing up over the top of the Ring of Law, making your way to the Vault
		.isOnQuest 4123

	step
		>>Loot |cRXP_LOOT_The Heart of the Mountain|r inside of the safe wall. It takes 15 seconds for it to respawn
		>>There is a trick which allows you to loot it without having to open the safe. View the link below to see how it is done
		.complete 4123,1 
		.link https://clips.twitch.tv/GenerousCarefulHerringNomNom-4BUCn6yI1dMozIkF >> Click here to see how to loot the Heart of the Mountain
		.isOnQuest 4123

	step
		#completewith next
		>>Kill |cRXP_ENEMY_Golems|r. Loot them for their |cRXP_LOOT_Elemental Cores|r
		.complete 4063,2 
		.mob +Wrath Hammer Construct
		.mob +Warbringer Construct
		.mob +Ragereaver Golem
		.mob +Molten War Golem

	step
		>>Kill |cRXP_ENEMY_Fineous Darkvire|r. Loot him for the |cRXP_LOOT_Ironfel|r
		.complete 3802,1 
		.target Fineous Darkvire
		.isOnQuest 3802

	step
		#completewith next
		>>Kill |cRXP_ENEMY_Golems|r. Loot them for their |cRXP_LOOT_Elemental Cores|r
		.complete 4063,2 
		.mob +Wrath Hammer Construct
		.mob +Warbringer Construct
		.mob +Ragereaver Golem
		.mob +Molten War Golem		

	step
		>>Finish killing |cRXP_ENEMY_Anvilrage Dwarves|r. There are enough on the way to |cRXP_ENEMY_Bael'Gar|r
		.complete 4082,1 
		.mob +Anvilrage Medic
		.complete 4082,2 
		.mob +Anvilrage Soldier
		.complete 4082,3 
		.mob +Anvilrage Officer
		.isOnQuest 4082

	step
		#completewith next
		>>|cRXP_WARN_Only do this before|r |cRXP_LOOT_Commander Gor'shak|r |cRXP_WARN_if you don't have a Key or Rogue in your group|r
		>>Run back near the location above the Ring of Law
		>>Click the |cRXP_PICK_Monument of Franclorn Forgewright|r
		.turnin 3802 >> Turn in Dark Iron Legacy
		.isQuestComplete 3802	

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Gor'shak|r
		>>If your group does not have a Rogue you may need to kill |cRXP_ENEMY_High Interrogator Gerstahn|r for the |cRXP_LOOT_Prison Cell Key|r to open the doors
		>>|cRXP_WARN_ENSURE ALL PARTY MEMBERS HAVE AUTO ACCEPT OFF FOR THIS STEP!|r
		.turnin 3981 >> Turn in Commander Gor'shak
		.accept 3982,1 >> Accept What Is Going On?
		.target Commander Gor'shak

	step
		>>Defend |cRXP_FRIENDLY_Commander Gor'shak|r from the incoming |cRXP_ENEMY_Anvilrage Dwarves|r
		.complete 3982,1 
		.target Commander Gor'shak
		.isQuestTurnedIn 3981

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Gor'shak|r
		.turnin 3982 >> Turn in What Is Going On?
		.accept 4001 >> Accept What Is Going On?
		.target Commander Gor'shak
		.isQuestTurnedIn 3981

	step
		#label WhatsGoingOn
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kharan Mighthammer|r and listen to his story
		>>|cRXP_WARN_He is located accross the hall from|r |cRXP_FRIENDLY_Commander Gor'shak|r
		.complete 4001,1 
		.target Kharan Mighthammer
		.skipgossip
		.isQuestTurnedIn 3981

	step	
		>>Run back near the location above the Ring of Law
		>>Click the |cRXP_PICK_Monument of Franclorn Forgewright|r
		.turnin 3802 >> Turn in Dark Iron Legacy
		.isQuestComplete 3802		

	step
		#completewith next
		.zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
		.zoneskip Orgrimmar

	step
		.goto Orgrimmar,31.74,37.82
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
		.turnin 4001 >> Turn in What Is Going On?
		.accept 4002 >> Accept The Eastern Kingdoms
		.target Thrall
		.isQuestTurnedIn 3982

	step
		.goto Orgrimmar,31.74,37.82
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
		.turnin 4002 >> Turn in The Eastern Kingdoms
		.accept 4003 >> Accept The Royal Rescue
		.target Thrall
		.isQuestTurnedIn 3982

	step
		#completewith next
		.zone Badlands >>Travel to |cFFfa9602Kargath|r
		.zoneskip Badlands

	step
		.goto Badlands,5.81,47.52
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Goretooth|r
		.turnin 4082 >> Turn in KILL ON SIGHT: High Ranking Dark Iron Officials
		.target Warlord Goretooth
		.isQuestComplete 4082

	step
		.goto Badlands,5.8,47.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lexlort|r
		.accept 4122
		.target Lexlort

	step
		#completewith next
		.goto Badlands,3.98,44.76
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorrik|r
		.fly Flame Crest >> Fly to |cFFfa9602Flame Crest|r
		.target Gorrik
		.zoneskip Burning Steppes

	step
		.goto Burning Steppes,65.2,23.8
		>>|cRXP_LOOT_The Heart of the Mountain|r |cRXP_WARN_can be used as an optional questlog quest for TBC. Check /tbcprep to see if you need it|r
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
		.turnin 4123	
		.target Maxwort Uberglint		

	step
		.goto Burning Steppes,40.2,34.2
		.use 11286 >> Use |T132507:0|t[Thorium Shackles] on |cRXP_ENEMY_Grark Lorkrub|r and then bring him to 30% (do not stun him)
		>>|cRXP_WARN_ENSURE ALL PARTY MEMBERS HAVE AUTO ACCEPT OFF FOR THIS STEP!|r	
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grark Lorkrub|r
		.turnin 4122
		.target Grark Lorkrub
		.accept 4121

	step
		>>Escort |cRXP_FRIENDLY_Grark Lorkrub|r into the |cFFfa9602Blackrock|r.
		.target Grark Lorkrub
		.complete 4121,2

	step
		#completewith next
		.zone Badlands >>Travel to |cFFfa9602Kargath|r
		.zoneskip Badlands

	step
		.goto Badlands,5.8,47.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lexlort|r
		.turnin 4121
		.target Lexlort	

	step
		.goto Badlands,5.81,47.52
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Goretooth|r
		.accept 4132
		.target Warlord Goretooth

	step
		#completewith next
		.goto Eastern Kingdoms,48.4,63.8,0
		.goto Eastern Kingdoms,48.4,63.8,15,0
		.goto Eastern Kingdoms,48.1,62.4,15,0
		.subzone 1584 >>Enter the |cFFfa9602Blackrock Depths|r
		
	step
		>>Kill |cRXP_ENEMY_General Angerforge|r.
		.complete 4132,1
		.mob +General Angerforge 

	step
		#completewith moltencorea
		>>Kill |cRXP_ENEMY_Golems|r. Loot them for their |cRXP_LOOT_Elemental Cores|r
		.complete 4063,2 
		.mob +Wrath Hammer Construct
		.mob +Warbringer Construct
		.mob +Ragereaver Golem
		.mob +Molten War Golem

	step
		>>Kill |cRXP_ENEMY_Golem Lord Argelmach|r. Loot him for his |cRXP_LOOT_Head|r
		>>Kill |cRXP_ENEMY_Golems|r. Loot them for their |cRXP_LOOT_Elemental Cores|r
		.complete 4063,1 
		.mob +Golem Lord Argelmach

	step
		>>Enter the Bar and go into the small room on the left. Do NOT attack any of the neutral mobs while running through the Bar
		>>Click on the 3 |cRXP_PICK_Thunderbrew Lager Kegs|r to destroy them, forcing |cRXP_ENEMY_Hurley Blackbreath|r and his 3 |cRXP_ENEMY_Blackbreath Cronies|r to engage
		>>Kill |cRXP_ENEMY_Hurley Blackbreath|r. Loot him for the |cRXP_LOOT_Lost Thunderbrew Recipe|r
		.complete 4134,1 
		.mob Hurley Blackbreath
		.isOnQuest 4134

	step
		#label moltencorea
		>>Loot the |cRXP_LOOT_Core Fragment|r on the ground outside of the Molten Core instance portal
		.complete 7848,1 
		.isOnQuest 7848

	step
		>>Kill |cRXP_ENEMY_Emperor Dagran Thaurissan|r
		>>|cRXP_WARN_You must NOT kill |cRXP_ENEMY_Princess Moira Bronzebeard|r in order to complete and turn in this quest|r
		>>|cRXP_WARN_Have a party member kite |cRXP_ENEMY_Princess Moira Bronzebeard|r while the rest of the group kills|r |cRXP_ENEMY_Emperor Dagran Thaurissan|r
		.complete 4003,1 
		.mob Emperor Dagran Thaurissan
		.isOnQuest 4003

	step
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Moira Bronzebeard|r
		.turnin 4003 >> Turn in The Royal Rescue
		.accept 4004 >> Accept The Princess Saved?
		.target Princess Moira Bronzebeard
		.isQuestComplete 4003

	step
		#label PrincessSaved
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Moira Bronzebeard|r
		.accept 4004 >> Accept The Princess Saved?
		.target Princess Moira Bronzebeard
		.isQuestTurnedIn 4003

	step
		>>|cRXP_WARN_You have now completed all steps within BRD. Well done!|r
		+You can either complete this step to jump to the next guide or select another guide manually

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 4-Upper/Lower Blackrock Spire-Main
#displayname Upper/Lower Blackrock Spire
#next 5-Scholomance-Main

--- UBRS

	step
		#completewith next
		.zone Azshara >>Travel to |cFFfa9602Azshara|r
		.zoneskip Azshara

	step
		.goto Azshara,79.2,73.6,5,0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
		.accept 6821
		.target Duke Hydraxis

	step
		#completewith KargathQuests
		+You will now begin to collect quests for |cFFfa9602Upper and Lower Blackrock Spire|r.
		>>Try to ensure all party members have the same quests and prequests complete, along with 1-2 hours of playtime.
		>>Even though UBRS is a 10 player dungeon the following steps should be doable as a group of 5
		>>|cRXP_WARN_Keep in mind you need the UBRS Key to open the door|r

	step
		#completewith next
		.fly Badlands >> Travel to |cFFfa9602Kargath|r
		.zoneskip Badlands

	step
		#label KargathQuests
		.goto Badlands,3.0,47.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowmage Vivian Lagrave|r
		.accept 4768
		.target Shadowmage Vivian Lagrave

	step
		.goto Badlands,5.8,47.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galamav the Marksman|r. He is up on the Tower.
		.accept 4724
		.target Galamav the Marksman

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
		.turnin 4810
		.accept 4734
		.target Tinkee Steamboil

	step
		.goto Burning Steppes,65.0,23.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
		.accept 4866	
		.target Ragged John	

	step
		.goto Burning Steppes,65.9,21.9
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kibler|r
		.accept 4729	
		.accept 4862
		.target Kibler

	step
		.goto 1415,48.409,63.815
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothos Riftwaker|r
		>>|cRXP_WARN_You can either turn this in now or the next time you are in Blackrock Mountain|r
		.turnin 7848 >> Turn in Attunement to the Core
		.target Lothos Riftwaker
		.isQuestComplete 7848

	step
		#completewith next
		.goto Eastern Kingdoms,48.9,63.9
		.zone 1583 >>Enter the |cFFfa9602Blackrock Spire|r
		.zoneskip 1583

	step
		>>Kill |cRXP_ENEMY_Pyroguard Emberseer|r. Loot him for the |cRXP_LOOT_Eye of the Emberseer|r
		.mob Pyroguard Emberseer
		.complete 6821,1
		.isOnQuest 6821

	step		
		>>Complete the objective for |cRXP_LOOT_Egg Freezing|r by right-clicking and freezing one of the eggs
		.complete 4734,1
		.isOnQuest 4734

	step
		>>Loot the |cRXP_LOOT_The Darkstone Tablet|r on the ground next to the eggs
		.complete 4768,1 
		.isOnQuest 4768

	step
		#completewith next
		.fly Flame Crest >>Travel to to |cFFfa9602Flame Crest|r
		.zoneskip Burning Steppes

	step
		.goto Burning Steppes,65.2,24.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
		.turnin 4734
		.accept 4735
	
	step
		#completewith next
		.goto Eastern Kingdoms,48.9,63.9
		.zone 1583 >>Enter the |cFFfa9602Blackrock Spire|r
		.zoneskip 1583

	step
		#completewith next
		>>Loot the |cRXP_LOOT_The Darkstone Tablet|r on the ground next to the eggs
		.complete 4768,1 
		.isOnQuest 4768

	step		
		.use 12287 >>Use |T133014:0|t[Collectronic Module] close to the eggs to loot the eggs for |cRXP_LOOT_Egg Collection|r
		>>You can freeze the eggs by right-clicking so they don't spawn adds
		.complete 4735,1
		.isOnQuest 4735

	step
		.destroy 12144 >>Destroy |T133003:0|t[Eggscilloscope] as it's not needed anymore

	step
		>>Loot the |cRXP_LOOT_The Darkstone Tablet|r on the ground next to the eggs
		.complete 4768,1 
		.isOnQuest 4768

--- LBRS

	step
		#completewith next
		+Make your way into the |cFFfa9602Lower Blackrock Spire|r part
		
	step
		>>Loot the |cRXP_LOOT_Fifth Mosh'aru Tablet|r and |cRXP_LOOT_Sixth Mosh'aru Tablet|r
		>>The 5th tablet is in |cRXP_ENEMY_Shadow Hunter Vosh'Gajin's|r room
		>>The 6th tablet is in |cRXP_ENEMY_Warmaster Voone's|r room
		.complete 4788,1 
		.complete 4788,2
		.isOnQuest 4788

	step
		#completewith next
		>>Loot the |cRXP_LOOT_Spire Spider Eggs|r on the ground
		.complete 4862,1 
		.isOnQuest 4862

	step
		>>This quest is one of the most annoying ones. You need to get sprayed by |cRXP_ENEMY_Mother Smolderweb|r and then run to |cRXP_FRIENDLY_Ragged John|r in |cFFfa9602Burning Steppes|r.
		>>The easiest would be to get a summon to |cRXP_FRIENDLY_Ragged John|r
		.complete 4866,1

	step
		.goto Burning Steppes,65.0,23.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
		.target Ragged John
		.skipgossip
	
	step
		#completewith next
		.goto Eastern Kingdoms,48.9,63.9
		.zone 1583 >>Enter the |cFFfa9602Blackrock Spire|r
		.zoneskip 1583

	step
		>>Loot the |cRXP_LOOT_Spire Spider Eggs|r on the ground
		.complete 4862,1 
		.isOnQuest 4862

	step
		.use 12262 >>|cRXP_WARN_Use the|r |T132599:0|t[Empty Worg Pup Cage]|cRXP_WARN_ on|r |cRXP_ENEMY_Bloodaxe Worg Pup|r
		.complete 4729,1 
		.isOnQuest 4729
		.mob Bloodaxe Worg Pup
	
	step
		>>Kill |cRXP_ENEMY_Halycon|r
		.mob Halycon
		.complete 4724,1
		.isOnQuest 4724

	step
		#completewith next
		.zone Azshara >>Travel to |cFFfa9602Azshara|r
		.zoneskip Azshara

	step
		.goto Azshara,79.2,73.6,5,0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
		.turnin 6821
		.accept 6822
		.target Duke Hydraxis

	step
		>>|cRXP_WARN_You have now completed all steps within UBRS/LBRS. Well done!|r
		+You can either complete this step to jump to the next guide or select another guide manually			
		
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 5-Scholomance-Main
#displayname Scholomance
#next 6-ZulGurub-Main

--- Scholomance

	step
		#completewith next
		.zone Tirisfal Glades >>Travel to |cFFfa9602Tirisfal Glades|r
		.zoneskip Tirisfal Glades

	step
		.goto Tirisfal Glades,83.0,71.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexi Barov|r
		.accept 5341 >> Accept Barov Family Fortune
		.target Alexi Barov

	step
		.goto Eastern Plaguelands,81.4,59.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r
		.accept 5529 >> Accept Plagued Hatchlings
		.target Betina Bigglezink

	step
		.goto Western Plaguelands,70.2,73.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eva Sarkhoff|r
		.accept 5382
		.target Eva Sarkhoff
		.skipgossip

	step
		#completewith next
		.goto 1415,52.8,26.4
		.subzone 2057 >>Enter |cFFfa9602Scholomance|r

	step
		#completewith deed
		>>Kill 20 |cRXP_ENEMY_Plagued Hatchlings|r inside |cFFfa9602Scholomance|r
		.mob Plagued Hatchling
		.complete 5529,1

	step
		#completewith deed
		>>Kill |cRXP_ENEMY_Doctor Theolen Krastinov|r inside |cFFfa9602Scholomance|r
		>>and burn the Remains of Eva Sarkhoff and Lucien Sarkhoff
		.mob Doctor Theolen Krastinov
		.complete 5382,1	
		.complete 5382,2
		.complete 5382,3

	step			
		#label deed
		>>Complete the objectives for |cRXP_LOOT_Barov Family Fortune|r inside |cFFfa9602Scholomance|r
		.complete 5341,1 -- The Deed to Brill
		.complete 5341,2 -- The Deed to Caer Darrow
		.complete 5341,3 -- The Deed to Southshore
		.complete 5341,4 -- The Deed to Tarren Mill

	step
		.goto Western Plaguelands,70.2,73.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eva Sarkhoff|r
		.turnin 5382
		.accept 5515
		.target Eva Sarkhoff

	step
		#completewith next
		.goto 1415,52.8,26.4
		.subzone 2057 >>Enter |cFFfa9602Scholomance|r

	step
		>>Kill |cRXP_ENEMY_Jandice Barov|r inside |cFFfa9602Scholomance|r and loot her for |cRXP_LOOT_Krastinov's Bag of Horrors|r
		.mob Jandice Barov
		.complete 5515,1
		
	step
		.goto Western Plaguelands,70.2,73.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eva Sarkhoff|r
		.turnin 5515
		.accept 5384
		.target Eva Sarkhoff	

	step
		#completewith next
		.goto 1415,52.8,26.4
		.subzone 2057 >>Enter |cFFfa9602Scholomance|r

	step
		>>Kill |cRXP_ENEMY_Kirtonos the Herald|r inside |cFFfa9602Scholomance|r
		>>Click the fire pit in order to summon him with the Blood of Innocents
		.mob Kirtonos the Herald
		.complete 5384,1	

	step
		.goto Western Plaguelands,70.2,73.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eva Sarkhoff|r
		.turnin 5384
		.target Eva Sarkhoff	
		
	step
		.goto Western Plaguelands,70.6,74.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Marduke|r
		.equip 13,13544 >> |cRXP_WARN_Equip the|r |T134337:0|t|cRXP_LOOT_[Spectral Essence]|r
		.accept 5461
		.target Magistrate Marduke	

	step
		#completewith next
		.zone Arathi Highlands >>Travel to |cFFfa9602Arathi Highlands|r
		.zoneskip Arathi Highlands
	
	step			
		>>Collect |cRXP_LOOT_Keepsake of Remembrance|r within the |cFFfa9602Stormgarde Keep|r area
		>>The book is red and has multiple spawn locations
		.goto Arathi Highlands,17.9,69.3,0
		.goto Arathi Highlands,17.9,69.5,0
		.goto Arathi Highlands,18.4,66.0,0
		.goto Arathi Highlands,18.5,66.1,0
		.goto Arathi Highlands,19.4,64.4,0
		.goto Arathi Highlands,19.4,64.5,0
		.goto Arathi Highlands,20.8,65.8,0
		.goto Arathi Highlands,27.4,66.0,0
		.goto Arathi Highlands,27.6,66.0,0
		.goto Arathi Highlands,29.3,62.7,0
		.goto Arathi Highlands,29.3,64.9,0
		.goto Arathi Highlands,17.9,69.3,60,0
		.goto Arathi Highlands,17.9,69.5,60,0
		.goto Arathi Highlands,18.4,66.0,60,0
		.goto Arathi Highlands,18.5,66.1,60,0
		.goto Arathi Highlands,19.4,64.4,60,0
		.goto Arathi Highlands,19.4,64.5,60,0
		.goto Arathi Highlands,20.8,65.8,60,0
		.goto Arathi Highlands,27.4,66.0,60,0
		.goto Arathi Highlands,27.6,66.0,60,0
		.goto Arathi Highlands,29.3,62.7,60,0
		.goto Arathi Highlands,29.3,64.9,60,0
		.complete 5461,1	

	step
		#completewith next
		.zone Western Plaguelands >>Travel to |cFFfa9602Western Plaguelands|r
		.zoneskip Western Plaguelands

	step
		.goto Western Plaguelands,70.6,74.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Marduke|r
		.equip 13,13544 >> |cRXP_WARN_Equip the|r |T134337:0|t|cRXP_LOOT_[Spectral Essence]|r
		.turnin 5461
		.target Magistrate Marduke	

	step
		>>|cRXP_WARN_You have now completed all steps within Scholomance. Well done!|r
		+You can either complete this step to jump to the next guide or select another guide manually			

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 6-ZulGurub-Main
#displayname Zul'Gurub
#next 7-Dire Maul East-Main

--- ZG

	step
		#completewith next
		.zone Stranglethorn Vale >>Travel to |cFFfa9602Stranglethorn Vale|r
		.zoneskip Stranglethorn Vale

	step	
		.goto Stranglethorn Vale,15.2,15.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exzhal|r
		.accept 8201	
		.isQuestAvailable 8201

	step
		#completewith next
		.goto Stranglethorn Vale,53.9,17.6
		.subzone 1977>>Enter |cFFfa9602Zul'Gurub|r

	step
		>>Kill |cRXP_ENEMY_High Priests|r inside |cFFfa9602Zul'Gurub|r for 5x |cRXP_LOOT_Channeler's Head|r
		.mob High Priestess Jeklik
		.mob High Priest Venoxis
		.mob High Priestess Mar'li
		.mob High Priest Thekal
		.mob High Priestess Arlokk
		.use 12262 >>Then use|r |T133682:0|t[Sacred Cord]
		.complete 8201,1

	step
		>>|cRXP_WARN_You have now completed all steps within Zul'Gurub. Well done!|r
		+You can either complete this step to jump to the next guide or select another guide manually			

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 7-Dire Maul East-Main
#displayname Dire Maul East
#next 8-Blackwing Lair-Main

--- DM East

	step
		#completewith next
		.goto Feralas,59.1,45.3,15,0
		.goto Kalimdor,43.0,69.2,15,0
		.goto Kalimdor,43.5,68.4,15,0
		.subzone 2577>>Enter |cFFfa9602Dire Maul East|r

	step			
		>>Collect |cRXP_LOOT_Felvine Shard|r inside |cFFfa9602Dire Maul East|r after you killed |cRXP_ENEMY_Alzzin the Wildshaper|r
		.collect 18501

	step
		>>|cRXP_WARN_You have now completed all steps within Dire Maul. Well done!|r
		+You can either complete this step to jump to the next guide or select another guide manually			

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 8-Blackwing Lair-Main
#displayname Blackwing Lair
#next 9-Molten Core-Main

--- BWL

	step
		#completewith next
		.zone Silithus >>Travel to |cFFfa9602Silithus|r
		.zoneskip Silithus

	step
		.goto Silithus,49.45,36.44
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
		.accept 8286
		.target Baristolth of the Shifting Sands	

	step
		#completewith next	
		.goto Silithus,48.8,36.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runk Windtamer|r
		.fly Tanaris >>Fly to |cFFfa9602Tanaris|r
		.zoneskip Tanaris
		.target Runk Windtamer

	step
		.goto Tanaris,64.0,51.0
		>>Get close to |cRXP_FRIENDLY_Anachronos|r until the quest completes
		.target Anachronos
		.complete 8286,1

	step
		#completewith next
		.goto Tanaris,51.60,25.50
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek Ragefist|r
		.fly Silithus >> Fly to |cFFfa9602Silithus|r
		.target Bulkrek Ragefist
		.zoneskip Silithus	

	step
		.goto Silithus,49.45,36.44
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
		.turnin 8286
		.accept 8288
		.target Baristolth of the Shifting Sands

	step
		#completewith next
		.goto 1415,48.92,64.47,10 >>Enter |cFFfa9602Blackwing Lair|r

	step	
		>>Kill |cRXP_ENEMY_Broodlord Lashlayer|r inside |cFFfa9602Blackwing Lair|r and loot him for |cRXP_LOOT_Head of the Broodlord Lashlayer|r
		>>|cRXP_WARN_Be aware that he drops only one head per kill. You might want to reserve the item if possible
		.complete 8288,1

	step
		>>|cRXP_WARN_You have now completed all steps within Blackwing Lair. Well done!|r
		+You can either complete this step to jump to the next guide or select another guide manually			

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 9-Molten Core-Main
#displayname Molten Core
#next 91-Alterac Valley-Main

--- MC

	step
		#completewith next
		.zone Azshara >>Travel to |cFFfa9602Azshara|r
		.zoneskip Azshara

	step
		.goto Azshara,79.2,73.6,5,0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
		.accept 6804
		.accept 6805
		.target Duke Hydraxis

	step
		#completewith next
		.zone Eastern Plaguelands >>Travel to |cFFfa9602Eastern Plaguelands|r
		.zoneskip Eastern Plaguelands

	step
		#loop
		.goto Eastern Plaguelands,62.8,80.4,0
		.goto Eastern Plaguelands,61.31,76.72,0
		.goto Eastern Plaguelands,66.13,80.21,0
		.goto Eastern Plaguelands,62.17,83.83,0
		.goto Eastern Plaguelands,58.75,82.08,0
		.goto Eastern Plaguelands,89.06,76.25,0
		.goto Eastern Plaguelands,62.8,80.4,60,0
		.goto Eastern Plaguelands,61.31,76.72,60,0
		.goto Eastern Plaguelands,66.13,80.21,60,0
		.goto Eastern Plaguelands,62.17,83.83,60,0
		.goto Eastern Plaguelands,58.75,82.08,60,0
		.goto Eastern Plaguelands,89.06,76.25,60,0
		>>Use the |T134856:0|t[Aspect of Neptulon] on |cRXP_ENEMY_Plague Ravager|r and |cRXP_ENEMY_Blighted Surge|r, kill them and loot them for |T132606:0|t[Discordant Bracers]
		.use 17310
		.mob Plague Ravager
		.mob Blighted Surge
		.complete -6804,1	

	step
		#completewith next
		.zone Silithus >>Travel to |cFFfa9602Silithus|r
		.zoneskip Silithus

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
		#completewith next
		.zone Azshara >>Travel to |cFFfa9602Azshara|r
		.zoneskip Azshara

	step
		.goto Azshara,79.2,73.6,5,0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
		.turnin 6804
		.turnin 6805
		.accept 6821
		.target Duke Hydraxis

	step
		#completewith next
		.goto Eastern Kingdoms,48.9,63.9
		.zone 1583 >>Enter the |cFFfa9602Blackrock Spire|r
		.zoneskip 1583

	step
		>>Kill |cRXP_ENEMY_Pyroguard Emberseer|r. Loot him for the |cRXP_LOOT_Eye of the Emberseer|r
		.mob Pyroguard Emberseer
		.complete 6821,1
		.isOnQuest 6821

	step
		#completewith next
		.zone Azshara >>Travel to |cFFfa9602Azshara|r
		.zoneskip Azshara

	step
		.goto Azshara,79.2,73.6,5,0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
		.turnin 6821
		.accept 6822
		.target Duke Hydraxis

	step
		#completewith next
		.goto 1415,48.4,63.8,10 >>Enter |cFFfa9602The Molten Core|r

	step
		>>Kill 1 |cRXP_ENEMY_Fire Lord|r, 1 |cRXP_ENEMY_Molten Giant|r, 1 |cRXP_ENEMY_Ancient Core Hound|r and 1 |cRXP_ENEMY_Lava Surger|r inside |cFFfa9602The Molten Core|r
		.mob Molten Giant
		.complete -6822,1
		.mob Firelord
		.complete -6822,2
		.mob Ancient Core Hound
		.complete -6822,3
		.mob Lava Surger
		.complete -6822,4
		.isOnQuest 6822

	step
		>>Clear |cFFfa9602Molten Core|r until you reach honored reputation with |cRXP_FRIENDLY_Hydraxian Waterlords|r
        .reputation 749,Honored  
		.isQuestTurnedIn 6822	

	step
		#completewith MoltencoreEnd
		+You can do either the combination of |cRXP_LOOT_Molten Core|r and |cRXP_LOOT_Agent of Hydraxis|r OR |cRXP_LOOT_Hands of the Enemy|r and |cRXP_LOOT_A Hero's Reward|r quests
		>>They are equivalent in terms of experience. We added both in case you completed |cRXP_LOOT_Molten Core|r already		

	step
		#completewith next
		.zone Azshara >>Travel to |cFFfa9602Azshara|r
		.zoneskip Azshara

	step
		.goto Azshara,79.2,73.6,5,0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
		.accept 6824
		.target Duke Hydraxis
		.isQuestTurnedIn 6822	

	step
		#completewith next
		.goto 1415,48.4,63.8,10 >>Enter |cFFfa9602The Molten Core|r

	step
		>>Kill |cRXP_ENEMY_Shazzrah|r, |cRXP_ENEMY_Lucifron|r, |cRXP_ENEMY_Gehennas|r and |cRXP_ENEMY_Sulfuron|r inside |cFFfa9602The Molten Core|r
		.mob Shazzrah
		.complete -6824,1
		.mob Lucifron
		.complete -6824,2
		.mob Gehennas
		.complete -6824,3
		.mob Sulfuron
		.complete -6824,4
		.isOnQuest 6824

	step
		#label MoltencoreEnd
		>>|cRXP_WARN_You have now completed all steps within Molten Core. Well done!|r
		+You can either complete this step to jump to the next guide or select another guide manually

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 91-Alterac Valley-Main
#displayname Alterac Valley
#next 92-Stratholme-Main

--- AV

	step
		#completewith next
		.zone Alterac Mountains >>Travel to |cFFfa9602Alterac Mountains|r
		.zoneskip Alterac Mountains

	step
		.goto Alterac Mountains,62.2,59.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Laggrond|r
		.accept 7161
		.target Warmaster Laggrond

	step	
		>>Collect |cRXP_LOOT_Frostwolf Banner|r from the battleground |cFFfa9602Alterac Valley|r
		>>The Banner is located in the cave in the south of the valley
		.collect 17850,1,7161,1

	step
		.goto Alterac Mountains,62.2,59.0
		>>|cRXP_ENEMY_Warning:|r |cRXP_WARN_Do not pick up or complete the followup|r |cRXP_LOOT_Rise and Be Recognized|r|cRXP_WARN_, as this is used for TBC|r
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Laggrond|r
		.turnin 7161
		.target Warmaster Laggrond	

	step
		>>Queue for |cFFfa9602Alterac Valley|r until you reach exalted reputation with the |cRXP_FRIENDLY_Frostwolf Clan|r
        .reputation 729,Exalted,999  
		.isQuestTurnedIn 7161		

	step
		>>|cRXP_WARN_You have now completed all steps within Alterac Valley. Well done!|r
		+You can either complete this step to jump to the next guide or select another guide manually		

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 2.2 - Quest Prep - Group Turnin
#name 92-Stratholme-Main
#displayname Stratholme
#next Item Preparation

--- Stratholme

	step	
		.goto Eastern Plaguelands,81.4,59.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r	   
		.accept 5251
		.target Duke Nicholas Zverenhoff

	step
		.goto Eastern Plaguelands,26.54,74.74
		.target Nathanos Blightcaller
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos Blightcaller|r
		.accept 6163

	step
		#completewith next
		.goto Eastern Plaguelands,47.9,23.9
		.subzone 2017 >>Enter |cFFfa9602Stratholme|r
		
	step
		>>Kill |cRXP_ENEMY_Archivist Galford|r inside |cFFfa9602Stratholme|r and burn the Archives
		.mob Archivist Galford
		.complete 5251,1
		.complete 5251,2

	step
		>>Go inside |cFFfa9602Stratholme|r for the painting |cRXP_LOOT_Of Love and Family|r
		.complete 5848,1

	step
		.goto Eastern Plaguelands,81.4,59.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r	   
		.turnin 5251
		.target Duke Nicholas Zverenhoff

	step	
		.goto Eastern Plaguelands,80.6,58.0
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r	
		.accept 5214
		.target Smokey LaRue

	step
		#completewith next
		.goto Eastern Plaguelands,47.9,23.9
		.subzone 2017 >>Enter |cFFfa9602Stratholme|r

	step
		#completewith next
		>>Kill |cRXP_ENEMY_Ezra Grimm|r inside |cFFfa9602Stratholme|r for |cRXP_LOOT_Grimm's Premium Tobacco|r
		.mob Ezra Grimm
		.complete 5214,1

	step
		>>Kill |cRXP_ENEMY_Balnazzar|r inside |cFFfa9602Stratholme|r and loot |cRXP_LOOT_Head of Balnazzar|r
		.mob Balnazzar
		.use 13250
		.accept 5262 >>Accept The Truth Comes Crashing Down

	step
		.goto Eastern Plaguelands,81.4,59.8
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r	   
		.turnin 5262
		.accept 5263
		.target Duke Nicholas Zverenhoff

	step	
		.goto Eastern Plaguelands,81.5,59.6
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r	
		.accept 5212	
		.target Betina Bigglezink

	step
		#completewith next
		.goto Eastern Plaguelands,47.9,23.9
		.subzone 2017 >>Enter |cFFfa9602Stratholme|r

	step
		#completewith next
		>>Kill |cRXP_ENEMY_any Undead|r inside |cFFfa9602Stratholme|r for |cRXP_LOOT_Plagued Flesh Sample|r
		.complete 5212,1

	step
		>>Kill |cRXP_ENEMY_Ramstein|r inside |cFFfa9602Stratholme|r for |cRXP_LOOT_Head of Ramstein the Gorger|r
		.mob Ramstein
		.complete 6163,1

	step
		>>Kill |cRXP_ENEMY_Baron Rivendare|r inside |cFFfa9602Stratholme|r for |cRXP_LOOT_Head of Baron Rivendare|r
		.mob Baron Rivendare
		.complete 5263,1

	step
		>>Kill |cRXP_ENEMY_any Undead|r inside |cFFfa9602Stratholme|r for |cRXP_LOOT_Plagued Flesh Sample|r
		.complete 5212,1

	step
		>>|cRXP_WARN_You have now completed all steps within Stratholme. Well done!|r
		+You can either complete this step to jump to the next guide or select another guide manually		

]])		