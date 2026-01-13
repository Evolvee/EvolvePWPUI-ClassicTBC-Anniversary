RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-30
#classic
<< Alliance
#name 21-23 Stonetalon/Ashenvale
#next 23-24 Wetlands
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.accept 1033 >> Accept Elune's Tear
step
.goto Ashenvale,46.37,46.38
>>Loot |cRXP_LOOT_Elune's Tear|r on the ground
.complete 1033,1
step
.goto Ashenvale,37.36,51.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.turnin 1033 >> Turn in Elune's Tear
.timer 17,Elune's Tear RP
.accept 1034 >> Accept The Ruins of Stardust
step
.goto Ashenvale,33.30,67.79
>>Loot the |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
>>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
.complete 1034,1
step
#completewith next
.goto Ashenvale,31.67,64.24,15 >> Head to the base of the mountain
.goto Ashenvale,31.21,61.60,15 >>Run straight north while climbing the mountain
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therysil|r
.target Therysil
.goto Ashenvale,22.64,51.91
.turnin 945 >> Turn in Therylune's Escape
.isQuestComplete 945
step
#completewith ZoramStrand
.goto Ashenvale,26.67,44.97,80,0
.goto Ashenvale,25.43,38.94,80,0
.goto Ashenvale,14.79,31.29
.subzone 414 >> Travel to The Zoram Strand
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.target Talen
.goto Ashenvale,14.79,31.29
.accept 1007 >> Accept The Ancient Statuette
step
#completewith AncientStatuette
>>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
>>|cRXP_WARN_Don't go out of your way to complete this yet|r
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
.complete 1008,1
step
.goto Ashenvale,14.20,20.64
>>Loot the |cRXP_LOOT_Ancient Statuette|r on the ground
.complete 1007,1
step
.solo
#label AncientStatuette
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1007 >> Turn in The Ancient Statuette
step
#label ZoramStrand
.solo
.goto Ashenvale,7.00,15.20,0
.goto Ashenvale,14.46,17.15,0
.goto Ashenvale,14.86,21.06,0
.goto Ashenvale,13.13,25.03,0
.goto Ashenvale,10.89,30.03,0
.goto Ashenvale,7.00,15.20,70,0
.goto Ashenvale,14.46,17.15,70,0
.goto Ashenvale,14.86,21.06,70,0
.goto Ashenvale,13.13,25.03,70,0
.goto Ashenvale,10.89,30.03,70,0
.goto Ashenvale,13.13,25.03,70,0
.goto Ashenvale,14.86,21.06,70,0
.goto Ashenvale,14.46,17.15,70,0
>>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
.mob Wrathtail Myrmidon
.mob Wrathtail Priestess
.mob Wrathtail Razortail
.mob Wrathtail Sea Witch
.complete 1008,1
step
.group
#label AncientStatuette
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1007 >> Turn in The Ancient Statuette
.timer 22,The Ancient Statuette RP
.accept 1009 >> Accept Ruuzel
step
.group
#completewith next
.goto Ashenvale,7.00,15.20,0
.goto Ashenvale,14.46,17.15,0
.goto Ashenvale,14.86,21.06,0
.goto Ashenvale,13.13,25.03,0
.goto Ashenvale,10.89,30.03,0
.goto Ashenvale,7.00,15.20,70,0
.goto Ashenvale,14.46,17.15,70,0
.goto Ashenvale,14.86,21.06,70,0
.goto Ashenvale,13.13,25.03,70,0
.goto Ashenvale,10.89,30.03,70,0
.goto Ashenvale,13.13,25.03,70,0
.goto Ashenvale,14.86,21.06,70,0
.goto Ashenvale,14.46,17.15,70,0
>>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
.mob Wrathtail Myrmidon
.mob Wrathtail Priestess
.mob Wrathtail Razortail
.mob Wrathtail Sea Witch
.complete 1008,1
step
.group 2
.goto Ashenvale,6.528,13.361
>>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
>>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
>>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
.unitscan Lady Vespia
.mob Ruuzel
.complete 1009,1
step
.group
#label ZoramStrand
.goto Ashenvale,7.00,15.20,0
.goto Ashenvale,14.46,17.15,0
.goto Ashenvale,14.86,21.06,0
.goto Ashenvale,13.13,25.03,0
.goto Ashenvale,10.89,30.03,0
.goto Ashenvale,7.00,15.20,70,0
.goto Ashenvale,14.46,17.15,70,0
.goto Ashenvale,14.86,21.06,70,0
.goto Ashenvale,13.13,25.03,70,0
.goto Ashenvale,10.89,30.03,70,0
.goto Ashenvale,13.13,25.03,70,0
.goto Ashenvale,14.86,21.06,70,0
.goto Ashenvale,14.46,17.15,70,0
>>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
.mob Wrathtail Myrmidon
.mob Wrathtail Priestess
.mob Wrathtail Razortail
.mob Wrathtail Sea Witch
.complete 1008,1
step
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1009 >> Turn in Ruuzel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teronis' Corpse|r
.target Teronis' Corpse
.goto Ashenvale,20.31,42.33
.turnin 991 >> Turn in Raene's Cleansing
.accept 1023 >> Accept Raene's Cleansing
step
.goto Ashenvale,20.41,43.82,50,0
.goto Ashenvale,19.43,42.09,50,0
.goto Ashenvale,21.01,41.61,50,0
.goto Ashenvale,20.31,42.33
>>Kill |cRXP_ENEMY_Saltspittle Murlocs|r. Loot them for the |cRXP_LOOT_Glowing Gem|r
.mob Saltspittle Warrior
.mob Saltspittle Muckdweller
.mob Saltspittle Oracle
.mob Saltspittle Puddlejumper
.complete 1023,1
step
#completewith next
.goto Ashenvale,34.67,48.83
.subzone 415 >> Travel to Astranaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.target Shindrell Swiftfire
.goto Ashenvale,34.67,48.83
.turnin 1008 >> Turn in The Zoram Strand
.accept 1134 >> Accept Pridewings of Stonetalon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.turnin 1023 >> Turn in Raene's Cleansing
step
.destroy 5505 >> Destroy |T133741:0|t[Teronis' Journal]. You no longer need it
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.turnin 1034 >> Turn in The Ruins of Stardust
step
#completewith ALM
.goto Ashenvale,34.41,47.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Auberdine >> Fly to Darkshore
.target Daelyshia
step
.goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
.turnin 4730 >> Turn in Beached Sea Creature
.turnin 4731 >> Turn in Beached Sea Turtle
.turnin 4732 >> Turn in Beached Sea Turtle
.turnin 4733 >> Turn in Beached Sea Creature
step
.goto Darkshore,37.70,43.39
.target Sentinel Glynda Nal'Shea
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
.turnin 4740 >> Turn in WANTED: Murkdeep!
step
#label ALM
.goto Darkshore,39.37,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
.turnin 986 >> Turn in A Lost Master
.target Terenthis
step
.group
.isOnQuest 995
.goto Darkshore,39.37,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
.turnin 995 >> Turn in Escape Through Stealth
.target Terenthis
step
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.turnin 731 >> Turn in The Absent Minded Prospector
.target Archaeologist Hollee
.accept 741 >> Accept The Absent Minded Prospector
step << !Mage !Paladin !Warlock
#completewith next
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Teldrassil >> Fly to Teldrassil
.target Caylais Moonfeather
step << Mage/Paladin/Warlock
#completewith next
.goto Darkshore,32.75,42.21,60 >> Travel to the Auberdine Docks. Wait for the Rut'theran Village boat
step << Mage/Paladin/Warlock
.goto Darkshore,33.168,40.210
.zone Teldrassil >> Take the boat to Rut'theran Village
.zoneskip Darnassus
step << Mage/Paladin 
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fp Teldrassil >> Get the Rut'theran Village Flight Path
.target Vesprystus
step
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garryeth|r, |cRXP_FRIENDLY_Lairn|r or |cRXP_FRIENDLY_Idriana|r
.bankdeposit 1083 >> Deposit the following items into your bank:
>>|T133277:0|t[Glyph of Azora] 
.target Garryeth
.target Lairn
.target Idriana
step << Warrior
.goto Darnassus,57.559,46.721
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
.train 2567 >> Train Thrown
.target Ilyenia Moonfire
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.trainer >> Train your class spells
.target Syurna
step << Druid
.goto Darnassus,34.768,7.374
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denatharion|r
.trainer >> Train your class spells
.target Denatharion
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
step << Druid
.goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r up stairs
.turnin 6125 >> Turn in Power over Poison
.isOnQuest 6125
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.target Chief Archaeologist Greywhisker
.goto Teldrassil,23.70,64.51
.turnin 741 >> Turn in The Absent Minded Prospector
.accept 942 >> Accept The Absent Minded Prospector
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
step << !Warlock 
.hs >> Hearth to Astranaar
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
step 
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Travel through the purple portal to Rut'theran Village
.zoneskip Ashenvale
.zoneskip Darkshore
step 
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Ashenvale >> Fly to Ashenvale
.target Vesprystus
.zoneskip Ashenvale
step << Warlock
#som
#phase 3-6
.goto Ashenvale,34.85,50.87
.vendor >> Buy 1 Flint and Tinder, and 2 Simple Wood
.collect 4470,2 
.collect 4471,1 
step
#era/som
.goto Ashenvale,42.50,71.70
.zone Stonetalon Mountains >> Travel to Stonetalon Mountains
step
#era
#sticky
#completewith wyv1
>>Kill |cRXP_ENEMY_Young Pridewings|r. Loot them for their |cRXP_LOOT_Pridewing Venom Sacs|r
.unitscan Young Pridewing
.complete 1134,1
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
.target Kaela Shadowspear
.goto Stonetalon Mountains,59.899,66.844
.turnin 1070 >> Turn in On Guard in Stonetalon
.accept 1085 >> Accept On Guard in Stonetalon
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.target Gaxim Rustfizzle
.goto Stonetalon Mountains,59.516,67.146
.turnin 1085 >> Turn in On Guard in Stonetalon
.accept 1071 >> Accept A Gnome's Respite
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.goto Stonetalon Mountains,58.989,62.601
.accept 1093 >> Accept Super Reaper 6000
step
#sticky
#label sr6000
#era/som
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for the |cRXP_LOOT_Blueprints|r
.complete 1093,1
.unitscan Venture Co. Operator
step
#era/som
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>>Kill |cRXP_ENEMY_Venture Co. Deforesters|r and |cRXP_ENEMY_Venture Co. Loggers|r
.complete 1071,1
.mob +Venture Co. Logger
.complete 1071,2
.mob +Venture Co. Deforester
step
#requires sr6000
#era/som
.goto Stonetalon Mountains,58.989,62.601
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.turnin 1093 >> Turn in Super Reaper 6000
.accept 1094 >> Accept Further Instructions << Warlock
step
#label wyv1
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.goto Stonetalon Mountains,59.516,67.146
.turnin 1071 >> Turn in A Gnome's Respite
.accept 1072 >> Accept An Old Colleague
.accept 1075 >> Accept A Scroll from Mauren
.target Gaxim Rustfizzle
step
#era
.goto Stonetalon Mountains,54.04,40.09,60,0
.goto Stonetalon Mountains,53.26,36.83,40,0
.goto Stonetalon Mountains,54.56,38.12
>>Kill |cRXP_ENEMY_Pridewing Wyverns|r and |cRXP_ENEMY_Pridewing Consorts|r. Loot them for their |cRXP_LOOT_Pridewing Venom Sacs|r
.mob Pridewing Wyvern
.mob Pridewing Consort
.complete 1134,1
step
#completewith next
.goto Stonetalon Mountains,37.103,8.100,100 >> Travel to Stonetalon Peak
step
#era/som
.goto Stonetalon Mountains,37.103,8.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
.target Keeper Albagorm
.turnin 1056 >> Turn in Journey to Stonetalon Peak
step << Warlock
.goto Stonetalon Mountains,35.595,7.351
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illyanie|r
.vendor >> |cRXP_WARN_Vendor trash|r
.target Illyanie
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
.target Teloren
.goto Stonetalon Mountains,36.438,7.181
.fp Stonetalon >> Get the Stonetalon Flight Path
.fly Ashenvale >> Fly to Ashenvale << !Warlock
step << Warlock
.goto Stonetalon Mountains,75.466,91.422,0
.goto Stonetalon Mountains,81.292,96.118,0
.goto The Barrens,35.052,27.025
.zone The Barrens >> Travel to The Barrens
step << Warlock
#completewith next
.goto The Barrens,40.358,24.780,150 >> |cRXP_WARN_FOLLOW THE ARROW TO AVOID |cRXP_ENEMY_BARRENS GUARDS|r!|r
step << Warlock
#som
#phase 3-6
.goto The Barrens,49.307,57.095
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takar the Seer|r
.turnin 1716 >> Turn in Devourer of Souls
.target Takar the Seer
.accept 1738 >> Accept Heartswood
.accept 65602 >> Accept What is Love?
step << Warlock
#era/som
.goto The Barrens,49.307,57.095
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takar the Seer|r
.turnin 1716 >> Turn in Devourer of Souls
.target Takar the Seer
.accept 1738 >> Accept Heartswood
step << Warlock
#completewith next
.goto The Barrens,62.98,37.21,100 >> Travel to Ratchet
step << Warlock
.goto The Barrens,62.984,37.218
.target Sputtervalve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
.turnin 1094 >> Turn in Further Instructions
step << Warlock
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fp Ratchet>> Get the Ratchet Flight Path
.target Bragok
step << Warlock
#completewith Ordil
.hs >> Hearth to Astranaar
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#era
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.turnin 1134 >> Turn in Pridewings of Stonetalon
step << Warlock
#label Ordil
#completewith next
.goto Ashenvale,26.73,44.95,100,0
.goto Ashenvale,31.50,31.50,40 >> Travel to The Ruins of Ordil'Aran
step << Warlock
.goto Ashenvale,31.50,31.50
>>Loot the |cRXP_LOOT_Heartswood|r giant tree
.complete 1738,1
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>>Loot the torch on the table
.collect 190307,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>>Create a campfire, then use the Unlit Torch
.collect 190308,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>>Create a campfire, then use the Unlit Torch
.collect 190308,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.61,22.01
>>Use the Burning Torch on the cart outside next to where you looted the torch, then go upstairs and loot the statue
.complete 65602,1 
step << Warlock
#completewith next
.goto Ashenvale,34.41,47.98,50 >> Travel to Astranaar
step
#label end
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Darkshore>> Fly to Auberdine
.target Daelyshia
step
#completewith next
.goto 1439,32.432,43.744,15 >> Travel to the Auberdine Docks. Wait for the Menethil Harbor boat
step
.goto Darkshore,32.44,43.71
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
.zone Wetlands >> Take the boat to Menethil Harbor
]])

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-30
#classic
<< Alliance
#name 23-24 Wetlands
#next 24-27 Duskwood/Redridge
step
.goto Wetlands,8.509,55.697
.target James Halloran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.accept 484 >> Accept Young Crocolisk Skins
step
.goto Wetlands,7.95,56.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Dewin Shimmerdawn|r doesn't have any|r
.target Dewin Shimmerdawn
step
.goto Wetlands,8.359,58.526
.target Karl Boran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.accept 279 >> Accept Claws from the Deep
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 288 >> Accept The Third Fleet
.accept 463 >> Accept The Greenwarden
step
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
>>|cRXP_BUY_Buy a|r |T132792:0|t[Flagon of Dwarven Honeymead]
.target Innkeeper Helbrek
.home >> Set your Hearthstone to Menethil Harbor
.complete 288,1 
step
#completewith next
.goto Wetlands,10.368,61.016,8 >> Travel upstairs towards |cRXP_FRIENDLY_Archaeologist Flagongut|r
step
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
.target Archaeologist Flagongut
.turnin 942 >> Turn in The Absent Minded Prospector
step
.goto Wetlands,10.496,60.201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samor Festivus|r upstairs
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Samor Festivus|r doesn't have any|r
.target Samor Festivus
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.turnin 288 >> Turn in The Third Fleet
step
.goto Wetlands,10.4,56.0,25,0
.goto Wetlands,10.1,56.9,25,0
.goto Wetlands,10.6,57.2,25,0
.goto Wetlands,10.761,56.737
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r

.target Neal Allen
.bronzetube
step
#completewith FinishGnolls
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1
.mob Young Wetlands Crocolisk
step
.goto Wetlands,18.06,39.83,50,0
.goto Wetlands,13.73,39.38,50,0
.goto Wetlands,18.06,39.83,50,0
.goto Wetlands,16.26,39.41
>>Kill |cRXP_ENEMY_Bluegill Murlocs|r
>>Kill |cRXP_ENEMY_Gobbler|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Gobbler|r |cRXP_WARN_patrols the Marshlands slightly|r
.complete 279,1 
.complete 279,2 
.mob Bluegill Murloc
.unitscan Gobbler
step
.goto Wetlands,26.40,25.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fradd Swiftgear|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Fradd Swiftgear|r doesn't have one|r

.target Fradd Swiftgear
.bronzetube
step
.goto Wetlands,49.916,39.368
.target Einar Stonegrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einar Stonegrip|r
.accept 469 >> Accept Daily Delivery
step
#completewith next
.goto Wetlands,50.200,37.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kixxle|r
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
>>|cRXP_WARN_Buy|r |T134413:0|t[Liferoot] |cRXP_WARN_if |cRXP_FRIENDLY_Kixxle|r has any in stock. You need them for the|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r << Warrior
>>|cRXP_WARN_These are limited supply items. Skip this step if |cRXP_FRIENDLY_Kixxle|r doesn't have any|r << Warrior
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Kixxle|r doesn't have any|r << !Warrior
.target Kixxle
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 463 >> Turn in The Greenwarden
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.accept 276 >> Accept Tramping Paws
step
#completewith FinishGnolls
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,62.34,69.34
>>Kill |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mongrels|r
>>|cRXP_WARN_This is a great place to farm|r |T132911:0|t[Wool Cloth] |cRXP_WARN_to level up your|r |T135966:0|t[First Aid] |cRXP_WARN_or any other profession that may require it|r
.complete 276,1 
.mob +Mosshide Gnoll
.complete 276,2 
.mob +Mosshide Mongrel
step
#completewith next
+|cRXP_WARN_Continue farming|r |T132911:0|t[Wool Cloth] |cRXP_WARN_from |cRXP_ENEMY_Mosshide Gnolls|r and|r |cRXP_ENEMY_Mosshide Mongrels|r |cRXP_WARN_to level up your|r |T135966:0|t[First Aid] |cRXP_WARN_or any other profession that may require it|r
>>|cRXP_WARN_Once you are done, skip this step|r
step
#label FinishGnolls
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 276 >> Turn in Tramping Paws
.accept 277 >> Accept Fire Taboo
.target Rethiel the Greenwarden
step
.goto Wetlands,54.95,44.84,50,0
.goto Wetlands,51.84,37.13,50,0
.goto Wetlands,37.13,35.68,50,0
.goto Wetlands,31.21,37.86,50,0
.goto Wetlands,26.48,40.44,50,0
.goto Wetlands,20.52,45.70,50,0
.goto Wetlands,17.83,50.26,50,0
.goto Wetlands,14.53,47.67,50,0
.goto Wetlands,20.37,45.21
>>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
.complete 484,1
.mob Young Wetlands Crocolisk
step
#era
.goto Wetlands,61.91,71.32,-1 
.goto Wetlands,18.67,39.69,-1 
.xp 24
step
#completewith next
.hs >> Hearth to Menethil Harbor
>>|cRXP_WARN_If you are already close to Menethil Harbor run back|r
.cooldown item,6948,>0,1
step
#completewith next
.goto Wetlands,8.30,58.53,150 >> Travel to Menethil Harbor
step
#som
#phase 3-6
#requires crocs
.hs >> Hearth back to Menethil Harbor
>> If your hearthstone isn't up, do the Tramping Paws quest (If you haven't)
>> Buy food/water if needed
step
#som
#requires crocs
.hs >> Hearth back to Menethil Harbor
>> Buy food/water if needed
step
#som
#phase 3-6
.goto Wetlands,8.30,58.53
.abandon 276 >> Abandon Tramping Paws
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin 469 >> Turn in Daily Delivery
.turnin 484 >> Turn in Young Crocolisk Skins
.target James Halloran
step
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >> Turn in Claws from the Deep
.target Karl Boran
step
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
step << !Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,27.18,8.60 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Dink << Mage
.target Brandur Ironhammer << Paladin
step << Mage
.goto Ironforge,25.496,7.080
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milstaff Stormeye|r
.trainer >> Train |T135757:0|t[Teleport: Ironforge]
.target Milstaff Stormeye
step
.goto Ironforge,50.826,5.613
.target Gerrig Bonegrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 968 >> Turn in The Powers Below
.isOnQuest 968
step
.goto Ironforge,67.844,42.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Gearcutter Cogspinner|r doesn't have one|r

.target Gearcutter Cogspinner
.bronzetube
step
.goto Ironforge,72.08,51.87
.target Lomac Gearstrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
.turnin 1072 >> Turn in An Old Colleague
.isOnQuest 1072
step
.goto Ironforge,76.61,51.28,10,0
.zone Stormwind City >> Take the tram to Stormwind
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-30
#classic
<< Alliance
#name 24-27 Duskwood/Redridge
#next 27-27 Wetlands
step
#completewith next
.goto Stormwind City,55.21,7.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Billibub Cogspinner|r doesn't have one|r

.bronzetube
.target Billibub Cogspinner
step << Paladin
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.accept 1650 >>Accept The Tome of Valor
.target Duthorian Rall
step
.goto Stormwind City,64.201,60.575
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Gump|r
>>|cRXP_BUY_Buy|r |T133849:0|t[Stormwind Seasoning Herbs]
.collect 2665,1,90,1 
.target Felicia Gump
step << Warlock
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb. Go downstairs
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus]|cRXP_BUY_ which you will have in a second. If you have extra gold also buy them for your|r |T136221:0|t[Voidwalker]
.target Spackle Thornberry
step << Warlock
.goto Stormwind City,25.25,78.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.turnin 1738 >> Turn in Heartswood
.target Gakin the Darkbinder
.accept 1739 >> Accept The Binding
step << Warlock
#completewith next
.goto StormwindClassic,25.2,80.7,18,0
.goto StormwindClassic,23.2,79.5,18,0
.goto StormwindClassic,26.3,79.5,18,0
.goto StormwindClassic,25.154,77.406
>>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
.cast 8674 >> |cRXP_WARN_Use the|r |T136065:0|t[Heartswood Core] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Succubus|r
.use 6913
step << Warlock
.goto StormwindClassic,25.154,77.406
.use 6913 >> Kill the |cRXP_ENEMY_Summoned Succubus|r
.complete 1739,1 
.mob Summoned Succubus
step << Warlock
#completewith next
+|cRXP_WARN_You may now use either the|r |T136220:0|t[Succubus] |cRXP_WARN_or|r |T136221:0|t[Voidwalker] |cRXP_WARN_as your pet|r
>>|cRXP_WARN_The|r |T136220:0|t[Succubus] |cRXP_WARN_deals significant damage whereas the|r |T136221:0|t[Voidwalker] |cRXP_WARN_provides more survivability|r
step << Warlock
.goto Stormwind City,25.25,78.55
.target Gakin the Darkbinder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.turnin 1739 >> Turn in The Binding
step
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1075 >> Turn in A Scroll from Mauren
.target Collin Mauren
.accept 1076 >> Accept Devils in Westfall
step << Rogue
.goto StormwindClassic,52.623,65.701
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
.home >> Set your Hearthstone to Stormwind City
.target Innkeeper Allison
step << Mage
#completewith next
.goto Stormwind City,56.135,65.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Boucher|r
.vendor >> |cRXP_BUY_Buy a|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
.collect 17031,1 
.target Kyra Boucher
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>Buy the following items for faster turn ins at Duskwood shortly
>>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
>>|T133024:0|t[Bronze Tube]
>>|T133970:0|t[Lean Wolf Flank]
>>|T134321:0|t[Gooey Spider Leg]
.collect 4371,1,174,1 
.collect 1015,10,90,1 
.collect 2251,6,93,1 
.bronzetube
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>Buy the following items for faster turn ins at Duskwood shortly
>>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
>>|T133970:0|t[Lean Wolf Flank]
>>|T134321:0|t[Gooey Spider Leg]
.collect 1015,10,90,1 
.collect 2251,6,93,1 
.target Auctioneer Jaxon
step
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Westfall >> Fly to Westfall
.target Dungar Longdrink
step
.goto Duskwood,7.723,33.301
.target Lars
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
>>|cRXP_WARN_Do NOT accept the quest Sven's Revenge from|r |cRXP_FRIENDLY_Sven Yorgen|r
.accept 226 >> Accept Wolves at Our Heels
step
#som
#phase 3-6
.goto Stormwind City,66.28,62.13
.fly Redridge >> If you're level 25 or higher, Fly to Redridge
step
#completewith MadEva
.goto Duskwood,48.0,17.2,0
.goto Duskwood,28.1,28.7,0
.goto Duskwood,48.0,17.2,85,0
.goto Duskwood,75.81,45.29,50 >> Travel to Darkshire
step
#completewith next
>>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r en-route. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
>>|cRXP_WARN_You don't have to kill all |cRXP_ENEMY_Wolves|r now. Save the |cRXP_LOOT_Lean Wolf Flanks|r for a later quest|r
.complete 226,1 
.mob +Starving Dire Wolf
.complete 226,2 
.mob +Rabid Dire Wolf
.collect 1015,10,90,1 
.mob +Starving Dire Wolf
.mob +Rabid Dire Wolf
.isOnQuest 226
step
#label MadEva
.goto Duskwood,75.81,45.29
.target Madame Eva
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.accept 66 >> Accept The Legend of Stalvan
.accept 101 >> Accept The Totem of Infliction
step << !Rogue
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
.home >> Set your Hearthstone to Duskwood
.target Innkeeper Trelayne
step
#optional
.goto Duskwood,73.83,44.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
.accept 90 >> Accept Seasoned Wolf Kabobs
.turnin 90 >> Turn in Seasoned Wolf Kabobs
.skill cooking,<50,1 
.itemcount 1015,10 
.target Chef Grual
step
.goto Duskwood,73.59,46.89
.target Commander Althea Ebonlocke
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 56 >> Accept The Night Watch
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 66 >> Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 67 >> Accept The Legend of Stalvan
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
.accept 163 >> Accept Raven Hill
.accept 165 >> Accept The Hermit
step
.abandon 95 >> Abandon Sven's Revenge
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
.accept 164 >> Accept Deliveries to Sven
>>|cRXP_WARN_If you can't pick up this quest you need to abandon Sven's Revenge from your quest log|r
step
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.fp Duskwood>> Get the Duskwood Flight Path
.target Felicia Maline
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r

.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >> Accept Look To The Stars
.turnin 174 >> Turn in Look To The Stars
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.accept 177 >> Accept Look To The Stars
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith HistoryBook1
>>|cRXP_WARN_If you loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] start the quest. This is a zone-wide drop in Duskwood|r
.collect 2794,1,337 
.accept 337 >> Accept An Old History Book
.use 2794 
step
#completewith next
>>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
>>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
>>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
.complete 56,1 
.mob +Skeletal Warrior
.complete 56,2 
.mob +Skeletal Mage
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.goto Duskwood,80.35,69.31,50,0
.goto Duskwood,77.49,71.30,50,0
.goto Duskwood,79.38,73.70,50,0
.goto Duskwood,79.38,70.28
#label HistoryBook1
>>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
>>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
>>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
.complete 56,1 
.mob +Skeletal Warrior
.complete 56,2 
.mob +Skeletal Mage
step
#completewith next
.goto Duskwood,18.203,56.215,50 >> Travel towards |cRXP_FRIENDLY_Jitters|r in western Duskwood
step
.goto Duskwood,18.203,56.215
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
.turnin 163 >> Turn in Raven Hill
.accept 5 >> Accept Jitters' Growling Gut
.target Jitters
step << !Dwarf Rogue
#completewith FinishedWolves
>>Kill |cRXP_ENEMY_Pygmy Venom Web Spiders|r and |cRXP_ENEMY_Venom Web Spiders|r. Loot them for a |cRXP_LOOT_Small Venom Sac|r and their |cRXP_LOOT_Gooey Spider Legs|r
>>|cRXP_WARN_You need a |cRXP_LOOT_Small Venom Sac|r to make an|r |T134437:0|t[Anti-Venom] |cRXP_WARN_later to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_debuff later|r
>>|cRXP_WARN_Save the |cRXP_LOOT_Gooey Spider Legs|r for later|r
>>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend you can skip this step and ask them to remove it for you later|r
.collect 1475,1,2359,1 
.collect 2251,6,93,1,1 
.disablecheckbox
.mob Pygmy Venom Web Spider
.mob Venom Web Spider
.itemcount 6452,<1 
.isQuestAvailable 2359
step
#completewith BliztikCheck
.goto Duskwood,18.040,54.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bliztik|r upstairs
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Bliztik|r doesn't have any|r
.target Bliztik
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 165 >> Turn in The Hermit
.target Abercrombie
.accept 148 >> Accept Supplies from Darkshire
step
.isQuestTurnedIn 90
.goto Duskwood,9.98,59.57,60,0
.goto Duskwood,10.94,47.07,70,0
.goto Duskwood,9.20,39.04,70,0
.goto Duskwood,13.36,29.08,70,0
.goto Duskwood,22.78,28.18,70,0
.goto Duskwood,36.19,24.67
>>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r
.complete 226,1 
.mob +Starving Dire Wolf
.complete 226,2 
.mob +Rabid Dire Wolf
step
.goto Duskwood,9.98,59.57,60,0
.goto Duskwood,10.94,47.07,70,0
.goto Duskwood,9.20,39.04,70,0
.goto Duskwood,13.36,29.08,70,0
.goto Duskwood,22.78,28.18,70,0
.goto Duskwood,36.19,24.67
>>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
.complete 226,1 
.mob +Starving Dire Wolf
.complete 226,2 
.mob +Rabid Dire Wolf
.collect 1015,10,90,1 
.mob +Starving Dire Wolf
.mob +Rabid Dire Wolf
step
#label BliztikCheck
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 164 >> Turn in Deliveries to Sven
.target Sven Yorgen
.accept 95 >> Accept Sven's Revenge
step
#label FinishedWolves
.goto Duskwood,7.723,33.301
.target Lars
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
.turnin -226 >> Turn in Wolves at Our Heels
step << !Dwarf Rogue
.goto Duskwood,15.90,72.10,60,0
.goto Duskwood,14.86,64.56,50,0
.goto Duskwood,10.43,53.97
>>Kill |cRXP_ENEMY_Pygmy Venom Web Spiders|r and |cRXP_ENEMY_Venom Web Spiders|r. Loot them for a |cRXP_LOOT_Small Venom Sac|r and their |cRXP_LOOT_Gooey Spider Legs|r
>>|cRXP_WARN_You need a |cRXP_LOOT_Small Venom Sac|r to make an|r |T134437:0|t[Anti-Venom] |cRXP_WARN_later to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_debuff later|r
>>|cRXP_WARN_Save the |cRXP_LOOT_Gooey Spider Legs|r for later|r
>>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend you can skip this step and ask them to remove it for you later|r
.collect 1475,1,2359,1 
.collect 2251,6,93,1,1 
.disablecheckbox
.mob Pygmy Venom Web Spider
.mob Venom Web Spider
.itemcount 6452,<1 
.isQuestAvailable 2359
step
#completewith next
.zone Westfall >> Travel to Westfall
step
#era
#completewith next << Rogue
.goto Westfall,63.6,51.4,60,0
.goto Westfall,60.6,34.0,60,0
.goto Westfall,45.4,49.6
.goto Westfall,63.8,52.0,0
.goto Westfall,61.8,34.4,0
.goto Westfall,54.6,41.0,0
.goto Westfall,46.8,48.6,0
.goto Westfall,43.6,42.0,0
.goto Westfall,41.0,21.0,0
.goto Westfall,35.8,34.4,0
.goto Westfall,33.8,50.6,0
.goto Westfall,42.6,60.2,0
.goto Westfall,38.8,61.4,0
.goto Westfall,34.8,67.4,0
>>Kill |cRXP_ENEMY_Dust Devils|r. Loot them for their |cRXP_LOOT_Debris|r
>>|cRXP_ENEMY_Dust Devils|r |cRXP_WARN_can spawn throughout all of Westfall. Their spawn locations are marked on the map|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find them|r << Hunter
.complete 1076,1
.unitscan Dust Devil
step
#som
#completewith MoonbrookSt
.goto Westfall,40.14,60.85,0
>> Look for dust devils, they can spawn all over the zone
>> Don't focus on completing this quest
>>Use eagle eye to find them << Hunter
.complete 1076,1
.unitscan DUST DEVIL
step << Rogue
#optional
#completewith TowerKey
+|cRXP_WARN_==PAY ATTENTION TO THE UPCOMING SECTION==|r
>>|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
>>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
>>|cRXP_WARN_Additionally, it's recommended you enable Enemy Nameplates (Default Key: V) as it allows you to see enemies behind some of the corners inside the tower|r
step << Rogue
.goto Westfall,68.50,70.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
>>|cRXP_WARN_You MUST do this quest your|r |T132290:0|t[Poisons]
.turnin 2360 >> Turn in Mathias and the Defias
.accept 2359 >> Accept Klaven's Tower
.target Agent Kearnen
step << Rogue
#label TowerKey
#loop
.goto Westfall,71.49,73.49,0
.goto Westfall,71.01,75.72,0
.goto Westfall,69.58,73.07,0
.goto Westfall,71.49,73.49,30,0
.goto Westfall,71.01,75.72,30,0
.goto Westfall,69.58,73.07,30,0
>>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Malformed Defias Drone|r. Loot it for the |cRXP_LOOT_Defias Tower Key|r
>>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
>>|cRXP_WARN_The |cRXP_ENEMY_Malformed Defias Drone|r spawns at the entrance to the tower, then patrols around the outside of it|r
>>|cRXP_WARN_Be careful as he deals a LOT of damage. If your|r |T132320:0|t[Stealth] |cRXP_WARN_breaks, quickly use|r |T132307:0|t[Sprint] |cRXP_WARN_and run away|r
.complete 2359,2 
.link https://www.youtube.com/watch?v=5sIew15IcG0 >> Click HERE for a video guide
.mob Malformed Defias Drone
step << Rogue
#optional
#completewith Mortwake
+|cRXP_WARN_Equip the|r |T135641:0|t[Curvewood Dagger] |cRXP_WARN_for this quest if you don't already have a|r |T135641:0|t[Dagger] |cRXP_WARN_equipped|r
.use 15396
.itemcount 15396,1
step << Rogue
#label Mortwake
.goto 1436,70.421,74.031
>>|cRXP_WARN_Travel up to 2nd top floor of the tower. Whilst in|r |T132320:0|t[Stealth] |cRXP_WARN_and the |cRXP_ENEMY_Defias Tower Sentries|r aren't next to you, Jump onto the chair, then onto the lamp, then onto the bookshelf on top of the waypoint location|r
>>|cRXP_WARN_Manually|r |T132320:0|t[Unstealth]|cRXP_WARN_, then press your "Interact with Target" keybind to open the |cRXP_PICK_Duskwood Chest|r. Loot it for|r |cRXP_LOOT_Klaven Mortwake's Journal|r
>>|cRXP_WARN_NOTE: Your|r |T132320:0|t[Stealth] |cRXP_WARN_will temporarily stop working after looting|r |cRXP_LOOT_Klaven Mortwake's Journal|r
>>|cRXP_WARN_Be prepared to run if you don't kill the |cRXP_ENEMY_Defias Tower Sentries|r on the 2nd floor. They will most likely aggro you permanently (but not attack you) when you are on top of the bookshelf as it is an evade spot|r
>>|cRXP_WARN_If you have a|r |T135641:0|t[Dagger] |cRXP_WARN_in your bags or equipped, you can cast|r |T132282:0|t[Ambush] |cRXP_WARN_on the |cRXP_ENEMY_Defias Tower Patrollers|r and |cRXP_ENEMY_Defias Tower Sentries|r inside to kill them instantly. Be prepared to run after you kill the first |cRXP_ENEMY_Defias Tower Sentry|r and remember you can be hit from above. This is slower, but a LOT safer|r
>>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Malformed Defias Drone|r and |cRXP_ENEMY_Defias Drones|r can be at the entrance of the tower if you have to run out of it|r
.complete 2359,1 
.link https://www.youtube.com/watch?v=5sIew15IcG0 >> Click HERE for a video guide
.mob Defias Tower Patroller
.mob Defias Tower Sentry
step << !Dwarf Rogue
#sticky
#label AntiVenomStart
.collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
.aura -9991
.itemcount 6452,<1 
.train 7934,3 
step << !Dwarf Rogue
#optional
#requires AntiVenomStart
#label AntiVenomEnd
.cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
.use 6452
.aura -9991
.itemcount 6452,1 
step << Dwarf Rogue
#optional
#sticky
#label AntiVenomEnd2
.cast 20594 >>|cRXP_WARN_Cast |T136225:0|t[Stoneform] to remove the |T136230:0|t[Touch of Zanzil] debuff|r
.aura -9991
step << Rogue
#era
.goto Westfall,63.6,51.4,60,0
.goto Westfall,60.6,34.0,60,0
.goto Westfall,45.4,49.6
.goto Westfall,63.8,52.0,0
.goto Westfall,61.8,34.4,0
.goto Westfall,54.6,41.0,0
.goto Westfall,46.8,48.6,0
.goto Westfall,43.6,42.0,0
.goto Westfall,41.0,21.0,0
.goto Westfall,35.8,34.4,0
.goto Westfall,33.8,50.6,0
.goto Westfall,42.6,60.2,0
.goto Westfall,38.8,61.4,0
.goto Westfall,34.8,67.4,0
>>Kill |cRXP_ENEMY_Dust Devils|r. Loot them for their |cRXP_LOOT_Debris|r
>>|cRXP_ENEMY_Dust Devils|r |cRXP_WARN_can spawn throughout all of Westfall. Their spawn locations are marked on the map|r
.complete 1076,1
.unitscan Dust Devil
step
.goto Westfall,41.51,66.72
>>Click the |cRXP_PICK_Old Footlocker|r on the ground
.turnin 67 >> Turn in The Legend of Stalvan
.accept 68 >> Accept The Legend of Stalvan
step << Druid
#completewith next
.goto Westfall,17.928,33.099,50 >> Swim out to sea
step << Druid
.goto Westfall,17.928,33.099
>>Open the |cRXP_PICK_Strange Lockbox|r. Loot it for the |cRXP_LOOT_Half Pendant of Aquatic Endurance|r
.collect 15882,1,272,1 
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
.goto Moonglade,36.0,41.4
.use 15883 >>|cRXP_WARN_Use the|r |T133443:0|t[Half Pendant of Aquatic Agility] |cRXP_WARN_to combine it with the|r |T133442:0|t[Half Pendant of Aquatic Endurance] |cRXP_WARN_at the Shrine of Remulos|r
.complete 272,1 
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
>>|cRXP_WARN_This will save you time from running back|r
step << Druid
.goto Moonglade,56.209,30.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
.turnin 272 >> Turn in Trial of the Sea Lion
.accept 5061 >> Accept Aquatic Form
.target Dendrite Starblaze
step << Druid
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.trainer >> Train your class spells
.target Loganaar
step << Druid
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
.goto Moonglade,44.147,45.225
.fly Teldrassil>> Fly to Teldrassil
.target Silva Fil'naveth
step << Druid
.goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 5061 >> Turn in Aquatic Form
step << Rogue
#completewith KlavenEnd
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Stormwind >> Fly to Stormwind
.target Thor
.zoneskip Stormwind City
.cooldown item,6948,<0
step << Rogue
#optional
#completewith KlavenEnd
.hs >> Hearth to Stormwind
.cooldown item,6948,>0,1
.zoneskip Stormwind City
step << Rogue
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1076 >> Turn in Devils in Westfall
.target Collin Mauren
.isQuestComplete 1076
step << !Dwarf Rogue
#optional
#requires AntiVenomEnd
#completewith FirstAidEnd
.goto 1453,42.938,33.878,20,0
.goto 1453,41.544,31.330,20,0
.goto 1453,41.688,28.049,20,0
.goto 1453,43.070,26.155,15 >> Travel toward |cRXP_FRIENDLY_Shaina Fuller|r
.aura -9991
step << !Dwarf Rogue
#requires AntiVenomEnd
.goto 1453,43.070,26.155
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
>>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
.skill firstaid,80 >> |cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_to 80|r
.aura -9991
.itemcount 6452,<1 
step << !Dwarf Rogue
#label FirstAidEnd
.goto 1453,43.070,26.155
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
>>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
.train 7934 >> |cRXP_WARN_Train|r |T134437:0|t[Anti-Venom]
.aura -9991
.itemcount 6452,<1 
step << !Dwarf Rogue
#sticky
#label AntiVenomStart2
.collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
.aura -9991
.itemcount 6452,<1 
.train 7934,3 
step << !Dwarf Rogue
#sticky
#requires AntiVenomStart2
#label AntiVenomEnd2
.cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
.use 6452
.aura -9991
.itemcount 6452,1 
step << Rogue
#optional
#requires AntiVenomEnd2
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
#label KlavenEnd
#requires AntiVenomEnd2
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
>>|cRXP_WARN_Remember to re-equip your main weapon if you switched to a|r |T135641:0|t[Dagger] |cRXP_WARN_earlier|r << Rogue
.turnin 2359 >> Turn in Klaven's Tower
.target Master Mathias Shaw
step << Rogue
.goto Stormwind City,66.27,62.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Duskwood>> Fly to Duskwood
.target Dungar Longdrink
step << Paladin
.goto Westfall,42.5,88.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
.turnin 1650 >>Turn in The Tome of Valor
.target Daphne Stilwell
.accept 1651 >>Accept The Tome of Valor
step << Paladin
.goto Westfall,42.5,88.6
.complete 1651,1 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
.turnin 1651 >>Turn in The Tome of Valor
.target Daphne Stilwell
.accept 1652 >>Accept The Tome of Valor
step << !Rogue
.hs >> Hearth to Darkshire
.cooldown item,6948,>0,1
step << !Rogue
#completewith next
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Darkshire >> Fly to Darkshire
.target Thor
.zoneskip Duskwood
step
#optional
.goto Duskwood,73.83,44.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
.accept 90 >> Accept Seasoned Wolf Kabobs
.turnin 90 >> Turn in Seasoned Wolf Kabobs
.skill cooking,<50,1 
.itemcount 1015,10 
.target Chef Grual
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
.turnin 5 >> Turn in Jitters' Growling Gut
.target Chef Grual
.accept 93 >> Accept Dusky Crab Cakes
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
.target Chef Grual
.turnin 93 >> Turn in Dusky Crab Cakes
.isQuestComplete 93
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 56 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
.accept 57 >> Accept The Night Watch
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 68 >> Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 69 >> Accept The Legend of Stalvan
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 148 >> Turn in Supplies from Darkshire
.target Madame Eva
.accept 149 >> Accept Ghost Hair Thread
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars
.target Viktori Prism'Antras
step
#completewith DockmasterBaren
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.fly Redridge >> Fly to Redridge Mountains
.target Felicia Maline
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 20 >> Accept Blackrock Menace
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
.goto Redridge Mountains,32.13,48.63
.target Foreman Oslow
.accept 347 >> Accept Rethban Ore
.isQuestTurnedIn 345
step
#label DockmasterBaren
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.accept 127 >> Accept Selling Fish
.accept 150 >> Accept Murloc Poachers
step
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
.accept 386 >> Accept What Comes Around...
.target Guard Berton
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.accept 34 >> Accept An Unwelcome Guest
.xp <24,1
step
.goto Redridge Mountains,15.68,49.30
>>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
.complete 34,1
.mob Bellygrub
.xp <24,1
step
#completewith Rethban
.goto Redridge Mountains,20.05,27.48,20 >> Enter the Rethban Caverns
step
.goto Redridge Mountains,19.04,23.48
>>Kill |cRXP_ENEMY_Redridge Drudgers|r. Loot them for their |cRXP_LOOT_Ore|r
>>|cRXP_ENEMY_Redridge Bashers|r |cRXP_WARN_also share spawns with |cRXP_ENEMY_Redridge Drudgers|r so you may need to kill them to make them spawn|r
>>|cRXP_ENEMY_Redridge Drudgers|r |cRXP_WARN_attack very fast and |cRXP_ENEMY_Redridge Bashers|r have a|r |T132154:0|t[Knockdown] |cRXP_WARN_stun|r
>>|cRXP_WARN_You may also acquire them by|r |T134708:0|t[Mining] |cRXP_WARN_the|r |T134566:0|t[Copper Veins] |cRXP_WARN_and|r |T134579:0|t[Tin Veins] |cRXP_WARN_inside the Rethban Caverns|r
.complete 347,1 
.train 2575,3 
.mob Redridge Drudger
step
#label Rethban
>>Kill |cRXP_ENEMY_Redridge Drudgers|r. Loot them for their |cRXP_LOOT_Ore|r
>>|cRXP_ENEMY_Redridge Bashers|r |cRXP_WARN_also share spawns with |cRXP_ENEMY_Redridge Drudgers|r so you may need to kill them to make them spawn|r
>>|cRXP_ENEMY_Redridge Drudgers|r |cRXP_WARN_attack very fast and |cRXP_ENEMY_Redridge Bashers|r have a|r |T132154:0|t[Knockdown] |cRXP_WARN_stun|r
.goto Redridge Mountains,19.04,23.48
.complete 347,1 
.mob Redridge Drudger
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.turnin 34 >> Turn in An Unwelcome Guest
.isQuestComplete 34
step
#completewith next
.goto Redridge Mountains,56.4,51.8,0
>>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
.collect 1468,8,150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
.isOnQuest 150
.isOnQuest 127
step
#label orcs
>>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r. Loot them for their |cRXP_LOOT_Axes|r
>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Blackrock Outrunners|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
>>|cRXP_WARN_Alternate between killing |cRXP_ENEMY_Orcs|r and the |cRXP_ENEMY_Murlocs|r marked on the map southwest|r
.goto Redridge Mountains,61.76,43.51
.complete 20,1 
.isOnQuest 20
.mob Blackrock Grunt
.mob Blackrock Outrunner
step
.goto Redridge Mountains,56.4,51.8
>>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
.collect 1468,8,150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 20 >> Turn in Blackrock Menace
.isQuestComplete 20
step
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.turnin 127 >> Turn in Selling Fish
.isQuestComplete 127
step
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
.turnin 150 >> Turn in Murloc Poachers
.isQuestComplete 150
step
.group
.goto Redridge Mountains,26.75,46.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
.accept 180 >> Accept Wanted: Lieutenant Fangore
step << !Warlock !Priest
.solo
.goto Redridge Mountains,26.75,46.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
.accept 180 >> Accept Wanted: Lieutenant Fangore
step
.goto Redridge Mountains,29.71,44.26
.target Bailiff Conacher
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
.accept 91 >> Accept Solomon's Law
step
#completewith DeliverThread
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fly Duskwood >> Fly to Duskwood
.target Ariena Stormfeather
.zoneskip Duskwood
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r

.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >> Accept Look To The Stars
.turnin 174 >> Turn in Look To The Stars
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.accept 177 >> Accept Look To The Stars
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith next
>>|cRXP_WARN_If you loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] start the quest. This is a zone-wide drop in Duskwood|r
.collect 2794,1,337 
.accept 337 >> Accept An Old History Book
.use 2794 
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars
.target Viktori Prism'Antras
step
.goto Duskwood,81.98,59.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 149 >> Turn in Ghost Hair Thread
.target Blind Mary
.accept 154 >> Accept Return the Comb
step
#label DeliverThread
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 154 >> Turn in Return the Comb
.target Madame Eva
.accept 157 >> Accept Deliver the Thread
step
.dungeon Stockades
.goto Duskwood,71.938,47.778
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
.accept 377 >> Accept Crime and Punishment
.target Councilman Millstipe
step
.isQuestTurnedIn 93
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
.accept 240 >> Accept Return to Jitters
.target Chef Grual
step
.goto Duskwood,49.85,77.71
>>Click the |cRXP_PICK_Mound of loose dirt|r on the ground
.turnin 95 >> Turn in Sven's Revenge
.accept 230 >> Accept Sven's Camp
step
.isOnQuest 240
.goto Duskwood,18.37,56.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
.turnin 240 >> Turn in Return to Jitters
.target Jitters
step
#completewith BliztikCheck
.goto Duskwood,18.040,54.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bliztik|r upstairs
.vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Bliztik|r doesn't have any|r
.target Bliztik
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 157 >> Turn in Deliver the Thread
.target Abercrombie
.accept 158 >> Accept Zombie Juice
step
#label BliztikCheck
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 230 >> Turn in Sven's Camp
.target Sven Yorgen
.accept 262 >> Accept The Shadowy Figure
step
.goto Duskwood,21.35,46.80
.xp 25+29845 >> Grind to 29845+/34000xp
step
#completewith next
.dungeon Stockades
+You are about to head to Stormwind soon, try to find a group for The Stockades
step
.goto Elwynn Forest,43.771,65.803,100 >> Travel to Goldshire
.isOnQuest 69
step
.goto Elwynn Forest,43.771,65.803
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
.turnin 69 >> Turn in The Legend of Stalvan
.target Innkeeper Farley
.accept 70 >> Accept The Legend of Stalvan
step
#completewith next
.goto Elwynn Forest,43.877,66.546,9 >> Go upstairs
step
.goto Elwynn Forest,44.302,65.823
>>Open the |cRXP_PICK_Storage Chest|r. Loot it for |cRXP_LOOT_An Undelivered Letter|r
.complete 70,1
step
#completewith next
.goto Elwynn Forest,48.82,41.65,40 >> Travel to Northshire Abbey
step
.goto Elwynn Forest,49.60,40.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
>>|cRXP_FRIENDLY_Brother Paxton|r |cRXP_WARN_is on the ground floor|r
.turnin 347 >>Turn in Rethban Ore
.target Brother Paxton
.accept 346 >>Accept Return to Kristoff
.isQuestTurnedIn 345
step << !Mage
#completewith next
.goto Elwynn Forest,45.19,49.40,40,0
.goto Stormwind City,69.96,86.90
.zone Stormwind City >> Travel to Stormwind City
step << Mage
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1076 >> Turn in Devils in Westfall
.target Collin Mauren
step << Mage
#completewith next
.goto Stormwind City,56.135,65.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Boucher|r
.vendor >> |cRXP_BUY_Buy 2|r |T134419:0|t[Rune of Teleportations] |cRXP_BUY_from her|r
.collect 17031,2 
.target Kyra Boucher
step
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step
.goto Stormwind City,26.44,78.66
.target Zardeth of the Black Claw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
.accept 335 >> Accept A Noble Brew
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step
.goto Stormwind City,29.528,61.924
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Folsom|r
.turnin 70 >> Turn in The Legend of Stalvan
.target Caretaker Folsom
.accept 72 >> Accept The Legend of Stalvan
step
.goto Stormwind City,29.44,61.52
>>Click the |cRXP_PICK_Sealed Crate|r on the ground
.turnin 72 >> Turn in The Legend of Stalvan
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
step
.goto Stormwind City,45.697,38.422
.target Brother Kristoff
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Kristoff|r
.turnin 346 >>Turn in Return to Kristoff
.isOnQuest 346
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.target Duthorian Rall
.turnin 1652 >>Turn in The Tome of Valor
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step
.goto Stormwind City,40.551,30.959
.target Brother Sarno
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sarno|r
>>|cRXP_WARN_Skip this step if you are below level 26|r
.accept 2923 >> Accept Tinkmaster Overspark
.xp <26,1
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step
#optional
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
step
#optional
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
>>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
.turnin 337 >> Turn in An Old History Book
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step
.dungeon Stockades
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70,40,0
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70
.line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
>>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
.accept 388 >> Accept The Color of Blood
.unitscan Nikova Raskol
step
.dungeon Stockades
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.accept 391 >> Accept The Stockade Riots
.accept 387 >> Accept Quell The Uprising
.target Warden Thelwater
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.accept 387 >> Accept Quell The Uprising
.target Warden Thelwater
step
.dungeon Stockades
.goto StormwindClassic,39.834,54.360
+Find a group to The Stockades
.zoneskip Stormwind City,1 
step
.dungeon Stockades
#label stock1
#sticky
>>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
.complete 387,1 
.complete 387,2 
.complete 387,3 
.complete 388,1 
step
.dungeon Stockades
#label stock2
#sticky
>>Kill |cRXP_ENEMY_Targorr the Dread|r. Loot him for his |cRXP_LOOT_Head|r. |cRXP_ENEMY_Targorr|r has a random spawn location
>>Kill |cRXP_ENEMY_Dextren Ward|r on the west prison wing. Loot him for his |cRXP_LOOT_Hand|r
.complete -386,1 
.complete -377,1 
.mob Targorr the Dread
.mob Dextren Ward
step
.dungeon Stockades
#label Bazil
>>Kill |cRXP_ENEMY_Bazil Thredd|r on the east prison wing. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Ensure you have 3|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for the follow up of this quest chain|r
.complete 391,1 
.collect 4306,3,2746,1 
.isOnQuest 391
.mob Bazil Thredd
step
.dungeon Stockades
#requires stock1
step
.dungeon Stockades
#requires stock2
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.turnin 387 >> Turn in Quell The Uprising
.turnin 391 >> Turn in The Stockade Riots
.accept 392 >> Accept The Curious Visitor
.target Warden Thelwater
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
.turnin 387 >> Turn in Quell The Uprising
.target Warden Thelwater
step
.dungeon Stockades
.goto StormwindClassic,49.194,30.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
.turnin 392 >> Turn in The Curious Visitor
.accept 393 >> Accept Shadow of the Past
.target Baros Alexston
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70,40,0
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70
.line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
>>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
.turnin 388 >> Turn in The Color of Blood
.unitscan Nikova Raskol
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 393 >> Turn in Shadow of the Past
.accept 350 >> Accept Look to an Old Friend
.target Master Mathias Shaw
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
.turnin 350 >> Turn in Look to an Old Friend
.target Elling Trias
.isQuestTurnedIn 389
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 1083 >> Withdraw the following items from your bank:
>>|T133277:0|t[Glyph of Azora] 
.target Newton Burnside
step
#completewith ShadowyRot
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Darkshire >> Fly to Duskwood
.target Dungar Longdrink
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r

.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >> Accept Look To The Stars
.turnin 174 >> Turn in Look To The Stars
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.accept 177 >> Accept Look To The Stars
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith next
>>|cRXP_WARN_If you loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] start the quest. This is a zone-wide drop in Duskwood|r
.collect 2794,1,337 
.accept 337 >> Accept An Old History Book
.use 2794 
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars
.target Viktori Prism'Antras
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 262 >> Turn in The Shadowy Figure
.target Madame Eva
.accept 265 >> Accept The Shadowy Search Continues
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 265 >> Turn in The Shadowy Search Continues
.target Clerk Daltry
.accept 266 >> Accept Inquire at the Inn
step
.dungeon Stockades
.goto Duskwood,71.938,47.778
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
.turnin 377 >> Turn in Crime and Punishment
.target Councilman Millstipe
step
#label ShadowyRot
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 158 >> Turn in Zombie Juice
.target Tavernkeep Smitts
.accept 156 >> Accept Gather Rot Blossoms
.turnin 266 >> Turn in Inquire at the Inn
.accept 453 >> Accept Finding the Shadowy Figure
step << Rogue
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
.home >> Set your Hearthstone to Duskwood
.target Innkeeper Trelayne
step
#completewith HistoryBook
>>|cRXP_WARN_If you loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] start the quest. This is a zone-wide drop in Duskwood|r
.collect 2794,1,337 
.accept 337 >> Accept An Old History Book
.use 2794 
step
#completewith next
.goto Duskwood,22.95,44.75,150 >> Travel to Raven Hill Cemetery
step
.goto Duskwood,22.95,44.75,80,0
.goto Duskwood,20.39,47.02,70,0
.goto Duskwood,15.07,46.91,70,0
.goto Duskwood,15.65,42.81,70,0
.goto Duskwood,18.30,47.75,70,0
.goto Duskwood,22.11,46.93,70,0
.goto Duskwood,23.68,42.13,70,0
.goto Duskwood,21.21,47.07
>>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Rot Blossoms|r
.complete 57,1 
.mob +Skeletal Fiend
.complete 57,2 
.mob +Skeletal Horror
.complete 156,1 
.mob +Skeletal Fiend
.mob +Skeletal Horror
step
.goto Duskwood,18.37,56.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
.turnin 453 >> Turn in Finding the Shadowy Figure
.target Jitters
.accept 268 >> Accept Return to Sven
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 268 >> Turn in Return to Sven
.target Sven Yorgen
step
.group 2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.accept 323 >> Accept Proving Your Worth
.target Sven Yorgen
step
.group 2
.goto Duskwood,16.01,38.79
>>Kill |cRXP_ENEMY_Skeletal Raiders|r, |cRXP_ENEMY_Skeletal Healers|r and |cRXP_ENEMY_Skeletal Warders|r
>>|cRXP_WARN_Enter the Dawning Wood Catacombs for the|r |cRXP_ENEMY_Skeletal Warders|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_a level 35 Elite patrols around the cemetery. Be cautious of him|r
.complete 323,1 
.mob +Skeletal Raider
.complete 323,2 
.mob +Skeletal Healer
.complete 323,3 
.mob +Skeletal Warder
.unitscan Mor'Ladim
step
.group
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 323 >> Turn in Proving Your Worth
.target Sven Yorgen
.accept 269 >> Accept Seeking Wisdom
step
>>Grind until your Hearthstone is off cooldown
.hs >> Hearth to Darkshire
.cooldown item,6948,<0
step
#completewith dusk2
.hs >> Hearth to Darkshire
.cooldown item,6948,>0,1
step
#label dusk2
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 156 >> Turn in Gather Rot Blossoms
.target Tavernkeep Smitts
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 57 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
step
#label HistoryBook
#completewith RRstart2
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.fly Redridge >> Fly to Redridge Mountains
.target Felicia Maline
.zoneskip Redridge Mountains
step
#era
.group
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
.accept 128 >> Accept Blackrock Bounty
step
.group
#label RRstart2
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 19 >> Accept Tharil'zun
.accept 115 >> Accept Shadow Magic
.isQuestTurnedIn 20
step
.goto Redridge Mountains,31.00,47.30
.target Verner Osgood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
.accept 126 >> Accept Howling in the Hills
.isQuestTurnedIn 124
step
.group
.goto Redridge Mountains,29.622,46.172
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
.accept 169 >> Accept Wanted: Gath'Ilzogg
step
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
.turnin 386 >> Turn in What Comes Around...
.target Guard Berton
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.accept 34 >> Accept An Unwelcome Guest
step
.goto Redridge Mountains,15.68,49.30
>>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
.complete 34,1
.mob Bellygrub
step
#label RRstart2 << !Hunter !Warlock
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
.turnin 34 >> Turn in An Unwelcome Guest
step
.goto Redridge Mountains,23.77,30.48,80,0
.goto Redridge Mountains,27.58,21.78
>>Kill |cRXP_ENEMY_Yowler|r. Loot him for his |cRXP_LOOT_Paw|r
>>|cRXP_WARN_Split pull him using|r |T135857:0|t[Blizzard] |cRXP_WARN_or|r |T135826:0|t[Flamestrike] << Mage
.complete 126,1 
.mob Yowler
step
#completewith next
>>Kill the |cRXP_ENEMY_Shadowhides|r. Loot them for their |cRXP_LOOT_Pendants|r
.complete 91,1 
.mob Rabid Shadowhide Gnoll
.mob Shadowhide Gnoll
.mob Shadowhide Assassin
.mob Shadowhide Warrior
.mob Shadowhide Darkweaver
.mob Shadowhide Slayer
.isOnQuest 91
step
#label fangore
.goto Redridge Mountains,80.17,37.05
>>Kill |cRXP_ENEMY_Lieutenant Fangore|r. Loot him for his |cRXP_LOOT_Paw|r
>>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_will engage with 2 additional |cRXP_ENEMY_Gnolls|r. Skip this step if you aren't confident|r << !Warlock !Priest
>>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_is immune to Shadow damage. Ensure you have party members that can help, otherwise you may skip this step|r << Warlock/Priest
.complete 180,1 
.isOnQuest 180
.unitscan Lieutenant Fangore
step
.goto Redridge Mountains,75.49,41.57,60,0
.goto Redridge Mountains,80.09,36.68,60,0
.goto Redridge Mountains,80.69,46.28,60,0
.goto Redridge Mountains,77.62,42.28,60,0
.goto Redridge Mountains,77.52,36.31
>>Kill the |cRXP_ENEMY_Shadowhides|r. Loot them for their |cRXP_LOOT_Pendants|r
.complete 91,1 
.mob Rabid Shadowhide Gnoll
.mob Shadowhide Gnoll
.mob Shadowhide Assassin
.mob Shadowhide Warrior
.mob Shadowhide Darkweaver
.mob Shadowhide Slayer
.isOnQuest 91
step
.goto Redridge Mountains,84.50,46.80
>>Click the |cRXP_PICK_Old Lion Statue|r
.turnin 94 >> Turn in A Watchful Eye
.isOnQuest 94
step
.group
.goto Redridge Mountains,84.50,46.80
>>Click the |cRXP_PICK_Old Lion Statue|r
.accept 248 >> Accept Looking Further
.isQuestTurnedIn 94
step
.group 3
.goto Redridge Mountains,63.246,49.840
>>Click |cRXP_PICK_An Empty Jar|r on the barrel at the top of Stonewatch Tower
>>|cRXP_WARN_Don't accept the follow up|r
.turnin 248 >> Turn in Looking Further
.isOnQuest 248
step
.group 3
#completewith Gath
>>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
.group 3
#completewith next
.goto Redridge Mountains,71.40,55.07
>>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
.complete 19,1 
.mob Tharil'zun
.isOnQuest 19
step
#label Gath
.group 5
.goto Redridge Mountains,69.599,55.797
>>Enter Stonewatch Keep
>>Kill |cRXP_ENEMY_Gath'Ilzogg|r. Loot him for his |cRXP_LOOT_Head|r
.complete 169,1 
.mob Gath'Ilzogg
.isOnQuest 169
step
#completewith next
>>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
.group 3
.goto Redridge Mountains,71.40,55.07
>>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
.complete 19,1 
.mob Tharil'zun
.isOnQuest 19
step
.group 3
.goto Redridge Mountains,66.68,56.26
>>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
#completewith next
.group
.goto Redridge Mountains,32.484,6.761,30 >> Enter Render's Rock
step
#era
.group 2
.goto Redridge Mountains,28.89,13.20
>>Kill |cRXP_ENEMY_Blackrock Champions|r
.complete 128,1 
.isOnQuest 128
step
#era
.group 2
.goto Redridge Mountains,28.388,12.562
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Keeshan|r in the back of Render's Rock
.accept 219 >> Accept Missing In Action
.target Corporal Keeshan
step
#era
.group 2
.goto Redridge Mountains,33.414,48.499
>>Escort |cRXP_FRIENDLY_Corporal Keeshan|r back to Lakeshire
>>|cRXP_WARN_Be careful to not pull too many mobs right after you leave the cave|r
.complete 219,1
.isOnQuest 219
.target Corporal Keeshan
step
#era
.group
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 219 >> Turn in Missing In Action
.isQuestComplete 219
step
.group
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 19 >> Turn in Tharil'zun
.isQuestComplete 19
step
.group
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 115 >> Turn in Shadow Magic
.isQuestComplete 115
step
.group
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 169 >> Turn in Wanted: Gath'Ilzogg
.target Magistrate Solomon
.isQuestComplete 169
step
.abandon 19 >> Abandon Tharil'zun
step
.abandon 115 >> Abandon Shadow Magic
step
.abandon 169 >> Abandon Wanted: Gath'Ilzogg
step
.abandon 248 >> Abandon Looking Further
step
.goto Redridge Mountains,30.97,47.27
.target Verner Osgood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
.turnin 126 >> Turn in Howling in the Hills
.isQuestComplete 126
step
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 180 >> Turn in Wanted: Lieutenant Fangore
.isQuestComplete 180
.target Magistrate Solomon
step
.goto Redridge Mountains,29.71,44.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
.turnin 91 >> Turn in Solomon's Law
.isQuestComplete 91
.target Bailiff Conacher
step
#era
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
.turnin 128 >> Turn in Blackrock Bounty
.isQuestComplete 128
step << Mage
.zone Stormwind City >> Teleport to Stormwind City
.itemcount 17031,1 
step
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fly Stormwind >> Fly to Stormwind
.target Ariena Stormfeather
.zoneskip Stormwind City
step
.abandon 180 >> Abandon Wanted: Lieutenant Fangore
step
.abandon 91 >> Abandon Solomon's Law
step
.abandon 128 >> Abandon Blackrock Bounty
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-30
#classic
<< Alliance
#name 27-27 Wetlands
#next 27-30 Ashenvale
step << Mage
.xp <28,1
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
.trainer >> Train your class spells
.target Elsharin
step << Mage
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.accept 1077 >> Accept Special Delivery for Gaxim
.accept 1078 >> Accept Retrieval for Mauren
.target Collin Mauren
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 2378,1130 >> Deposit the following items into your bank:
>>|T133718:0|t[Skeleton Finger] (If you have any)
>>|T134799:0|t[Vial of Spider Venom] (If you have any)
.target Newton Burnside
step << !Warlock !Druid
.isQuestTurnedIn 2078
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 5996 >> Withdraw the following items from your bank:
>>|T134797:0|t[Elixir of Water Breathing] 
.target Newton Burnside
step << !Warlock !Druid
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_from the Auction House|r
.collect 5996,1 
.target Auctioneer Jaxon
.itemcount 5996,<1
step << !Mage
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.accept 1077 >> Accept Special Delivery for Gaxim
.accept 1078 >> Accept Retrieval for Mauren
.target Collin Mauren
step << Warlock
.xp <28,1
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step << Warlock
.xp <28,1
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Warrior
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.xp <28,1
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Druid
.xp <28,1
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
step << !Priest !Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step
.isQuestTurnedIn 323
.goto Stormwind City,39.108,27.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop Farthing|r
.turnin 269 >> Turn in Seeking Wisdom
.accept 270 >> Accept The Doomed Fleet
.target Bishop Farthing
step
.goto Stormwind City,40.551,30.959
.target Brother Sarno
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sarno|r
.accept 2923 >> Accept Tinkmaster Overspark
step
#optional
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
step
#optional
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
>>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
.turnin 337 >> Turn in An Old History Book
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step << Hunter
.xp <28,1
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step
.dungeon Gnomer
.goto StormwindClassic,55.511,12.502
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
.accept 2928 >> Accept Gyrodrillmatic Excavationators
.target Shoni the Shilent
step << Mage
#completewith next
.zone Ironforge >> Teleport to Ironforge
.itemcount 17031,1 
step
#completewith next
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
step
.goto Ironforge,69.540,50.325
.target Tinkmaster Overspark
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
.turnin 2923 >> Turn in Tinkmaster Overspark
step
.goto Ironforge,72.08,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
.accept 1073 >> Accept Ineptitude + Chemicals = Fun
.target Lomac Gearstrip
step
.dungeon BFD
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.accept 971 >> Accept Knowledge in the Deeps
.target Gerrig Bonegrip
step
#ah
.goto Ironforge,24.94,73.66,0
>>Gather 4 |T134850:0|t[Minor Mana Potions] and 2 |T134822:0|t[Elixir of Minor Fortitudes]
>>|cRXP_WARN_You can buy these from the Auction House, trade players for them or use|r |T136240:0|t[Alchemy] |cRXP_WARN_if you have it to make them|r
>>|cRXP_WARN_If you are unable to acquire them, abandon Ineptitude + Chemicals = Fun and skip this step|r
.skill alchemy,<1,1 
.collect 2455,4,1073,1 
.collect 2458,2,1073,1 
.isOnQuest 1073
step
#ssf
>>Gather 4 |T134850:0|t[Minor Mana Potions] and 2 |T134822:0|t[Elixir of Minor Fortitudes]
>>|cRXP_WARN_Use your|r |T136240:0|t[Alchemy] |cRXP_WARN_profession to craft them if possible|r
>>|cRXP_WARN_If you are unable to acquire them, abandon Ineptitude + Chemicals = Fun and skip this step|r
.collect 2455,4,1073,1 
.collect 2458,2,1073,1 
.skill alchemy,<1,1 
.isOnQuest 1073
step
#ah
.goto Ironforge,24.94,73.66,0
>>Gather 4 |T134850:0|t[Minor Mana Potions] and 2 |T134822:0|t[Elixir of Minor Fortitudes]
>>|cRXP_WARN_You can buy these from the Auction House or trade players for them|r
>>|cRXP_WARN_If you are unable to acquire them, abandon Ineptitude + Chemicals = Fun and skip this step|r
.collect 2455,4,1073,1 
.collect 2458,2,1073,1 
.isOnQuest 1073
step
.goto Ironforge,72.08,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
.turnin 1073 >> Turn in Ineptitude + Chemicals = Fun
.target Lomac Gearstrip
.isQuestComplete 1073
step
.goto Ironforge,72.08,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
.accept 1074 >> Accept Ineptitude + Chemicals = Fun
.target Lomac Gearstrip
.isQuestTurnedIn 1073
step
.goto Ironforge,55.51,47.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Wetlands>> Fly to Wetlands
.target Gryth Thurden
step
.goto Wetlands,10.585,60.592
.target Glorin Steelbrow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 270 >> Turn in The Doomed Fleet
.isOnQuest 270
step
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
.home >> Set your Hearthstone to Wetlands
.target Innkeeper Helbrek
step
#completewith next
.goto Wetlands,10.368,61.016,8 >> Travel upstairs towards |cRXP_FRIENDLY_Archaeologist Flagongut|r
.isQuestTurnedIn 942
step
.isQuestTurnedIn 942
.goto Wetlands,10.843,60.435
.target Archaeologist Flagongut
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.accept 943 >> Accept The Absent Minded Prospector
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 289 >> Accept The Cursed Crew
step
.goto Wetlands,11.796,57.991
.target Sida
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
.accept 470 >> Accept Digging Through the Ooze
step
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.accept 281 >> Accept Reclaiming Goods
.target Karl Boran
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.accept 471 >> Accept Apprentice's Duties
.target James Halloran
step
#completewith next
.goto Wetlands,10.28,56.334,20,0
.goto Wetlands,9.742,57.866,15 >> Travel upstairs in Menethil Keep
step
.goto Wetlands,9.861,57.486
.target Captain Stoutfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
.accept 464 >> Accept War Banners
step
.goto Wetlands,11.458,52.163
.target Tarrel Rockweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.accept 305 >> Accept In Search of The Excavation Team
step
.goto Wetlands,13.513,41.384
>>Click the |cRXP_PICK_Damaged Crate|r on the ground
.turnin 281 >> Turn in Reclaiming Goods
.accept 284 >> Accept The Search Continues
step
.goto Wetlands,13.608,38.214
>>Click the |cRXP_PICK_Sealed Barrel|r on the ground
.turnin 284 >> Turn in The Search Continues
.accept 285 >> Accept Search More Hovels
step
.goto Wetlands,13.945,34.809
>>Click the |cRXP_PICK_Half-buried Barrel|r on the ground
.turnin 285 >> Turn in Search More Hovels
.accept 286 >> Accept Return the Statuette
step
#completewith next
.goto Wetlands,22.25,20.36,0
>>Kill |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
>>|cRXP_WARN_You don't have to complete this now|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
.goto Wetlands,14.00,29.80
.goto Wetlands,15.0,24.0
>>Kill |cRXP_ENEMY_Cursed Sailors|r, |cRXP_ENEMY_Cursed Marines|r and |cRXP_ENEMY_First Mate Snellig|r. Loot him for his |cRXP_LOOT_Snuffbox|r
.complete 289,1 
.mob +Cursed Sailor
.complete 289,2 
.mob +Cursed Marine
.complete 289,3 
.mob +First Mate Snellig
step
#completewith next
.goto Wetlands,30.8,31.0,0
.goto Wetlands,37.8,29.6,0
.goto Wetlands,43.0,33.2,0
>>Kill the |cRXP_ENEMY_Mosshides|r. Loot them for their |cRXP_LOOT_Crude Flints|r
.complete 277,1 
.isQuestTurnedIn 276
.mob Mosshide Brute
.mob Mosshide Trapper
.mob Mosshide Fenrunner
.mob Mosshide Mistweaver
.mob Mosshide Mystic
.mob Mosshide Alpha
step
.goto Wetlands,44.25,25.61
>>Kill |cRXP_ENEMY_Crimson Oozes|r, |cRXP_ENEMY_Monstrous Oozes|r and |cRXP_ENEMY_Black Oozes|r. Loot them for |cRXP_LOOT_Sida's Bag|r
.complete 470,1 
.mob Crimson Ooze
.mob Monstrous Ooze
.mob Black Ooze
step
.goto Wetlands,43.009,41.675,50,0
.goto Wetlands,40.828,45.966,50,0
.goto Wetlands,45.222,44.251
>>Kill |cRXP_ENEMY_Dragonmaw Orcs|r. Loot them for their |cRXP_LOOT_War Banners|r
>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Dragonmaw Raiders|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
.complete 464,1 
.mob Dragonmaw Raider
.mob Dragonmaw Swamprunner
.mob Dragonmaw Battlemaster
.mob Dragonmaw Shadowwarder
.mob Dragonmaw Centurion
.mob Dragonmaw Bonewarder
step
#completewith next
.goto Wetlands,38.790,48.988,20 >> Head towards the mountain shortcut
step
.goto Wetlands,38.17,50.88
.target Ormer Ironbraid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.accept 294 >> Accept Ormer's Revenge
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r
.turnin 305 >> Turn in In Search of The Excavation Team
.accept 306 >> Accept In Search of The Excavation Team
.goto Wetlands,38.909,52.340
.target Merrin Rockweaver
step
.isQuestTurnedIn 942
.goto Wetlands,38.858,52.208
>>Loot |cRXP_LOOT_Flagongut's Fossil|r on the ground
.complete 943,2 
step
#completewith next
>>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
>>|cRXP_WARN_Don't go out of your way to complete this now. You will kill different |cRXP_ENEMY_Raptors|r later|r
.complete 943,1 
.mob Mottled Raptor
.mob Mottled Screecher
step
.goto Wetlands,22.4,50.0,70,0
.goto Wetlands,23.0,55.2,70,0
.goto Wetlands,24.4,52.2,70,0
.goto Wetlands,26.2,47.7,70,0
.goto Wetlands,27.8,44.6,70,0
.goto Wetlands,31.4,42.0,70,0
.goto Wetlands,22.8,50.6
>>Kill |cRXP_ENEMY_Mottled Raptors|r and |cRXP_ENEMY_Mottled Screechers|r
.complete 294,1 
.mob +Mottled Raptor
.complete 294,2 
.mob +Mottled Screecher
step
.goto Wetlands,30.8,31.0,80,0
.goto Wetlands,37.8,29.6,80,0
.goto Wetlands,43.0,33.2
>>Kill the |cRXP_ENEMY_Mosshides|r. Loot them for their |cRXP_LOOT_Crude Flints|r
.complete 277,1 
.isQuestTurnedIn 276
.mob Mosshide Brute
.mob Mosshide Trapper
.mob Mosshide Fenrunner
.mob Mosshide Mistweaver
.mob Mosshide Mystic
.mob Mosshide Alpha
step
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 277 >> Turn in Fire Taboo
.target Rethiel the Greenwarden
.accept 275 >> Accept Blisters on The Land
.isQuestTurnedIn 276
step
.goto Wetlands,64.78,75.31
>>Loot the |cRXP_LOOT_Musquash Root|r on the ground
.complete 335,2 
step
.dungeon SFK
#completewith next
.goto Wetlands,30.8,31.0,0
.goto Wetlands,37.8,29.6,0
.goto Wetlands,43.0,33.2,0
.zone Arathi Highlands >> Grind |cRXP_ENEMY_Mosshides Gnolls|r while looking for a group for Shadowfang Keep
step
.dungeon SFK
>>There are no quests for Shadowfang Keep. You will have to run from Wetlands to Silverpine Forest. Ensure you stay on the road while running through Arathi Highlands, and watchout for the |cRXP_ENEMY_Forsaken Courier|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r and |cRXP_FRIENDLY_Darla Harris|r
.fp Arathi >> Get the Arathi Highlands Flight Path
.goto Arathi Highlands,45.73,46.09
.fp Southshore >> Get the Southshore Flight Path
.goto Arathi Highlands,43.01,55.00,90,0
.goto Arathi Highlands,25.45,46.95,90,0
.goto Arathi Highlands,21.29,30.24,70,0
.goto Hillsbrad Foothills,49.338,52.272
.target Cedrik Prose
.target Darla Harris
.unitscan Forsaken Courier
step
.dungeon SFK
.goto Hillsbrad Foothills,14.77,46.72,0
.goto Silverpine Forest,44.96,67.92,0
.goto Hillsbrad Foothills,14.77,46.72,100,0
.goto Silverpine Forest,47.19,69.78,100,0
.goto Silverpine Forest,44.712,67.769
.subzone 209,2 >> Enter Shadowfang Keep
step
.dungeon SFK
+There are no quests for Shadowfang Keep
.zoneskip 209,1
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.trainer >> Train your class spells
.target Loganaar
step
#completewith MenethilTurnins
.hs >> Hearth to Menethil Harbor
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.isQuestComplete 943
.goto Wetlands,10.84,60.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
.turnin 943 >>Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
step
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.turnin 289 >> Turn in The Cursed Crew
.target First Mate Fitzsimmons
step
.goto Wetlands,11.796,57.991
.target Sida
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
.turnin 470 >> Turn in Digging Through the Ooze
step
#completewith next
.goto Wetlands,10.28,56.334,20,0
.goto Wetlands,9.742,57.866,15 >> Travel upstairs in Menethil Keep
step
.goto Wetlands,9.861,57.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
.turnin 464 >> Turn in War Banners
.target Captain Stoutfist
step
.goto Wetlands,11.458,52.163
.target Tarrel Rockweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.turnin 306 >> Turn in In Search of The Excavation Team
step
.isQuestComplete 471
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin 471 >> Accept Apprentice's Duties
.target James Halloran
step
#label MenethilTurnins
.goto Wetlands,8.359,58.526
.target Karl Boran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 286 >> Turn in Return the Statuette
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-30
<< Alliance
#classic
#era
#name 27-30 Ashenvale
#next 30-30 Wetlands/Hillsbrad
step
#completewith next
.goto Wetlands,5.429,57.485,25 >> Travel to the Menethil Harbor Dock
step
.goto Wetlands,4.560,57.160
.zone Darkshore >> Take the boat to Darkshore
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
step
.dungeon BFD
.goto Darkshore,38.327,43.039
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
.accept 1275 >> Accept Researching the Corruption
.target Gershala Nightwhisper
step
.dungeon BFD
#completewith bfd1
+Start looking for a group for Blackfathom Deeps (BFD), you'll be heading to Ashenvale soon
step
.dungeon BFD
.goto Darkshore,36.71,44.98,5,0
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Teldrassil >> Fly to Teldrassil
.target Caylais Moonfeather
step
.dungeon BFD
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step
.dungeon BFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r and |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r upstairs
.accept 1199 >> Accept Twilight Falls
.target +Argent Guard Manados
.goto Darnassus,55.239,23.996 
.accept 1198 >> Accept In Search of Thaelrid
.goto Darnassus,55.360,25.024 
.target +Dawnwatcher Shaedlass
step
.dungeon BFD
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal back to Rut'theran Village
.zoneskip Darnassus,1
step
.dungeon BFD
#label bfd1
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Ashenvale >> Fly to Ashenvale
.target Vesprystus
step
.dungeon BFD
.goto Ashenvale,37.6,34.0,0
+Start looking for a group for BFD
.goto Ashenvale,15.5,19.0,0
.goto Ashenvale,14.230,14.618
>>Grind |cRXP_ENEMY_Furbolgs|r north of Astranaar for |T132911:0|t[Wool Cloth] while you assemble a group
.subzoneskip 2797
step
.dungeon BFD
#completewith EnterBFD
.goto Ashenvale,14.230,14.618,0
.goto 1414,43.97,35.30,50 >> Travel to Blackfathom Deeps
.subzoneskip 2797
step
.dungeon BFD
#completewith next
>>Kill |cRXP_ENEMY_Fallenroot Rogues|r, |cRXP_ENEMY_Fallenroot Satyrs|r, |cRXP_ENEMY_Blackfathom Oracles|r and |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
>>|cRXP_WARN_You may also loot |cRXP_LOOT_Corrupted Brain Stems|r once inside the Instance|r
.complete 1275,1 
.mob Blackfathom Tide Priestess
.mob Blackfathom Oracle
.mob Fallenroot Rogue
.mob Fallenroot Satyr
.isOnQuest 1275
step
#label EnterBFD
.dungeon BFD
.goto 1414,43.83,35.11,25,0
.goto 1414,43.92,34.56,25,0
.goto 1414,44.02,34.57,25,0
.goto 1414,44.340,34.840
.subzone 2797,2 >> Make your way to the BFD Instance Portal. Zone in
step
.dungeon BFD
#completewith Kelris
>>Kill |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
.complete 1275,1 
.isOnQuest 1275
step
.dungeon BFD
#label manuscript
#sticky
>>Open the |cRXP_PICK_Pitted Iron Chest|r underwater near the area with the turtles. Loot it for |cRXP_LOOT_Lorgalis' Manuscript|r
.complete 971,1 
.isOnQuest 971
step
.dungeon BFD
#label Thaelrid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
.turnin -1198 >> Turn in Search of Thaelrid
.accept 1200 >> Accept Blackfathom Villainy
step
#requires manuscript
.dungeon BFD
#completewith Kelris
>>Kill all of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
.complete 1199,1 
.isOnQuest 1199
step
#requires manuscript
.dungeon BFD
#label Kelris
>>Kill |cRXP_ENEMY_Twilight Lord Kelris|r. Loot him for his |cRXP_LOOT_Head|r
.complete 1200,1 
.isOnQuest 1200
step
.dungeon BFD
>>Kill all of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
.complete 1199,1 
.isOnQuest 1199
step
.dungeon BFD
#label FinalStem
>>Kill |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
>>If you haven't completed this quest yet, click on the altar at the end of the dungeon to teleport you to the entrance. The mobs outside of the instance can also drop it.
.complete 1275,1 
.isOnQuest 1275
step
.dungeon BFD
#optional
+Talk to |cRXP_FRIENDLY_Morridune|r at the end of the dungeon if you are still inside BFD to be teleported to Darnassus
.target Morridune
.zoneskip Ashenvale
.zoneskip Teldrassil
.zoneskip Darnassus
step
#completewith DarnEnd
.dungeon BFD
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Teldrassil >> Fly to Teldrassil
.target Daelyshia
.zoneskip Teldrassil
.zoneskip Darnassus
step
#sticky
#label DarnBFD
.dungeon BFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r up stairs
.turnin 1199 >> Turn in Twilight Falls
.goto Darnassus,55.239,23.996 
.target Argent Guard Manados
.isQuestComplete 1199
step
.dungeon BFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnwatcher Selgorm|r up stairs
.turnin 1200 >> Turn in Blackfathom Villainy
.goto Darnassus,56.167,24.395 
.target Dawnwatcher Selgorm
.isQuestComplete 1200
step
.dungeon BFD
#requires DarnBFD
#label DarnEnd
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal back to Rut'theran
.zoneskip Darkshore
.zoneskip Ashenvale
.subzoneskip 2797
step
.dungeon BFD
#completewith next
.goto Ashenvale,34.41,47.98,-1
.goto Teldrassil,58.399,94.016,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r or |cRXP_FRIENDLY_Daelyshia|r
.fly Darkshore >> Fly to Darkshore
.zoneskip Darkshore
.target Daelyshia
.target Vesprystus
step
.dungeon BFD
.goto Darkshore,38.327,43.039
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
.turnin 1275 >> Turn in Researching the Corruption
.target Gershala Nightwhisper
.isQuestComplete 1275
step
.goto Darkshore,36.336,45.574,-1
.goto Ashenvale,34.41,47.98,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r or |cRXP_FRIENDLY_Daelyshia|r
.fly Stonetalon >> Fly to Stonetalon
.target Caylais Moonfeather
.target Daelyshia
step
.goto Stonetalon Mountains,37.103,8.100
.target Keeper Albagorm
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
.accept 1057 >> Accept Reclaiming the Charred Vale
step
#completewith next
.goto Stonetalon Mountains,59.52,67.15,55 >> Travel towards |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.52,67.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.turnin 1074 >> Turn in Ineptitude + Chemicals = Fun
.turnin 1077 >> Turn in Special Delivery for Gaxim
.accept 1079 >> Accept Covert Ops - Alpha
.accept 1080 >> Accept Covert Ops - Beta
.target Gaxim Rustfizzle
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,66.09,51.34,100 >> Travel to Windshear Crag
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,66.09,51.34
>>Loot the |cRXP_LOOT_Venture Co. Engineering Plans|r on the box
.complete 1079,1 
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,74.46,59.30,100 >> Travel to the Windshear Crag Mine
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,74.46,59.30
>>Open the |cRXP_PICK_Venture Co. Documents|r. Loot it for the |cRXP_LOOT_Venture Co. Letters|r
>>|cRXP_WARN_Do NOT enter the Mine. The |cRXP_LOOT_Venture Co. Letters|r are outside the Mine on a box|r
.complete 1080,1 
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.52,67.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.turnin 1079 >> Turn in Covert Ops - Alpha
.turnin 1080 >> Turn in Covert Ops - Beta
.accept 1091 >> Accept Kaela's Update
.target Gaxim Rustfizzle
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.90,66.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
.turnin 1091 >> Turn in Kaela's Update
.accept 1083 >> Accept Enraged Spirits
.accept 1084 >> Accept Wounded Ancients
.target Kaela Shadowspear
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,50.57,52.64,20,0
.goto Stonetalon Mountains,41.93,53.91,30,0
.goto Stonetalon Mountains,40.49,54.78,30,0
.goto Stonetalon Mountains,36.97,52.77,35,0
.goto Stonetalon Mountains,35.00,56.68,50 >> Travel to The Charred Vale. Follow the Arrow for a shortcut
.isQuestTurnedIn 1073
step
#completewith Basilisks
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
>>Kill |cRXP_ENEMY_Burning Ravagers|r, |cRXP_ENEMY_Burning Destroyers|r and |cRXP_ENEMY_Rogue Flame Spirits|r. Loot them for their |cRXP_LOOT_Embers|r
>>Kill |cRXP_ENEMY_Charred Ancients|r and |cRXP_ENEMY_Blackened Ancients|r. Loot them for their |cRXP_LOOT_Shrapnel|r
.complete 1083,1 
.complete 1084,1 
.mob Burning Ravager
.mob Burning Destroyer
.mob Rogue Flame Spirit
.mob Charred Ancient
.mob Blackened Ancient
.isQuestTurnedIn 1073
step
#completewith next
>>Kill |cRXP_ENEMY_Blackened Basilisks|r, |cRXP_ENEMY_Scorched Basilisk|r and |cRXP_ENEMY_Singed Basilisks|r. Loot them for their |cRXP_LOOT_Scales|r
.complete 1078,1 
.mob Blackened Basilisk
.mob Scorched Basilisk
.mob Singed Basilisk
step
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
>>Kill |cRXP_ENEMY_Bloodfury Harpies|r, |cRXP_ENEMY_Bloodfury Ambushers|r, |cRXP_ENEMY_Bloodfury Slayers|r and |cRXP_ENEMY_Bloodfury Roguefeathers|r
.complete 1057,1 
.mob +Bloodfury Harpy
.complete 1057,2 
.mob +Bloodfury Ambusher
.complete 1057,3 
.mob +Bloodfury Slayer
.complete 1057,4 
.mob +Bloodfury Roguefeather
step
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
#label Basilisks
>>Kill |cRXP_ENEMY_Blackened Basilisks|r, |cRXP_ENEMY_Scorched Basilisk|r and |cRXP_ENEMY_Singed Basilisks|r. Loot them for their |cRXP_LOOT_Scales|r
.complete 1078,1 
.mob Blackened Basilisk
.mob Scorched Basilisk
.mob Singed Basilisk
step
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
>>Kill |cRXP_ENEMY_Burning Ravagers|r, |cRXP_ENEMY_Burning Destroyers|r and |cRXP_ENEMY_Rogue Flame Spirits|r. Loot them for their |cRXP_LOOT_Embers|r
>>Kill |cRXP_ENEMY_Charred Ancients|r and |cRXP_ENEMY_Blackened Ancients|r. Loot them for their |cRXP_LOOT_Shrapnel|r
.complete 1083,1 
.mob +Burning Ravager
.mob +Burning Destroyer
.mob +Rogue Flame Spirit
.complete 1084,1 
.mob +Charred Ancient
.mob +Blackened Ancient
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.90,66.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
.turnin 1083 >> Turn in Enraged Spirits
.turnin 1084 >> Turn in Wounded Ancients
.accept 1082 >> Accept Update for Sentinel Thenysil
.target Kaela Shadowspear
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,50.57,52.64,20,0
.goto Stonetalon Mountains,41.93,53.91,30,0
.goto Stonetalon Mountains,40.49,54.78,30,0
.goto Stonetalon Mountains,36.97,52.77,35,0
.goto Stonetalon Mountains,35.00,56.68,50 >> Travel to The Charred Vale, then onward to Desolace. Follow the Arrow for a shortcut
.isQuestTurnedIn 1073
step
#map Stonetalon Mountains
#completewith next
.goto Desolace,53.958,3.436
.zone Desolace >> Travel to Desolace
step
.goto Desolace,67.38,15.54,40,0
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.fp Desolace >> Get the Desolace Flight Path
.fly Stonetalon>> Fly to Stonetalon
.target Baritanas Skyriver
step
.goto Stonetalon Mountains,37.103,8.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
.turnin 1057 >> Turn in Reclaiming the Charred Vale
.target Keeper Albagorm
.accept 1059 >> Accept Reclaiming the Charred Vale
step
.goto Stonetalon Mountains,36.438,7.181
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
.fly Ashenvale>> Fly to Ashenvale
.target Teloren
step
.abandon 1077 >> Abandon Special Delivery for Gaxim
step
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.accept 4581 >> Accept Kayneth Stillwind
step
.goto Ashenvale,34.89,49.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
.turnin 1082 >> Turn in Update for Sentinel Thenysil
.accept 1081 >> Accept Reception from Tyrande
.target Sentinel Thenysil
.isQuestTurnedIn 1073
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.accept 1054 >> Accept Culling the Threat
step
#completewith next
.goto Ashenvale,34.69,44.30,30,0
.goto Ashenvale,35.43,41.46,30,0
.goto Ashenvale,36.28,38.48,30,0
.goto Ashenvale,36.83,37.56,30 >> Travel to Thistlefur Village. Follow the Arrow for a shortcut
step
.goto Ashenvale,36.06,36.59,0
.goto Ashenvale,37.00,33.77,0
.goto Ashenvale,35.88,31.90,0
.goto Ashenvale,38.73,36.32,0
.goto Ashenvale,36.06,36.59,60,0
.goto Ashenvale,37.00,33.77,60,0
.goto Ashenvale,35.88,31.90,60,0
.goto Ashenvale,38.73,36.32,60,0
.goto Ashenvale,39.595,36.309
>>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Dal Bloodclaw|r |cRXP_WARN_patrols Thistlefur Village|r
.complete 1054,1
.unitscan Dal Bloodclaw
step
.goto Ashenvale,27.40,63.03,70,0
.goto Ashenvale,25.27,60.68
>>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
>>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to|r
>>|cRXP_WARN_Clear an exit path if needed so you can reset them along with the |cRXP_ENEMY_Succubus|r if needed|r
.complete 973,1
.mob Ilkrud Magthrull
step
.goto Ashenvale,22.23,52.98
.target Sentinel Melyria Frostshadow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
.accept 1022 >> Accept The Howling Vale
step
.goto Ashenvale,21.73,53.34
.target Illiyana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
.accept 1021 >> Accept Vile Satyr! Dryads in Danger!
step
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 973 >> Turn in The Tower of Althalaxx
.accept 1140 >> Accept The Tower of Althalaxx
step
.isQuestTurnedIn 1007
.goto Ashenvale,14.79,31.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.accept 1009 >> Accept Ruuzel
.target Talen
step
.isQuestTurnedIn 1007
.goto Ashenvale,6.528,13.361
>>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
>>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
>>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
.unitscan Lady Vespia
.mob Ruuzel
.complete 1009,1
step
.isQuestComplete 1009
.goto Ashenvale,14.79,31.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
.turnin 1009 >> Turn in Ruuzel
.target Talen
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1054 >> Turn in Culling the Threat
.accept 1024 >> Accept Raene's Cleansing
.accept 1025 >> Accept An Aggressive Defense
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.accept 1035 >> Accept Fallen Sky Lake
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1024 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1026 >> Accept Raene's Cleansing
step
#completewith next
.goto Ashenvale,63.0,43.8,60,0
.goto Ashenvale,59.8,42.6,60,0
.goto Ashenvale,57.6,39.2,60,0
.goto Ashenvale,57.8,33.6,60,0
.goto Ashenvale,55.0,32.8,60,0
.goto Ashenvale,63.0,46.2,60,0
.goto Ashenvale,55.0,32.8
>>Kill |cRXP_ENEMY_Withered Ancients|r and |cRXP_ENEMY_Crazed Ancients|r. Loot them for a |cRXP_LOOT_Wooden Key|r
.collect 5475,1,1026,1 
.isOnQuest 1026
.mob Withered Ancient
.mob Crazed Ancient
step
.goto Ashenvale,54.416,35.397
>>Open the |cRXP_PICK_Worn Chest|r. Loot it for the |cRXP_LOOT_Iron Shaft|r
.complete 1026,1
step
#completewith next
.goto Ashenvale,53.440,36.131,15,0
.goto Ashenvale,52.698,37.759,20 >> Run up here for a shortcut
step
.goto Ashenvale,50.49,39.12
>>Click the |cRXP_PICK_Tome of Mel'Thandris|r on the table
.complete 1022,1
step
.goto Ashenvale,78.32,44.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anilia|r
.turnin 1021 >> Turn in Vile Satyr! Dryads in Danger!
.target Anilia
.accept 1031 >> Accept The Branch of Cenarius
step
.goto Ashenvale,77.99,42.41
>>Kill |cRXP_ENEMY_Geltharis|r. Loot him for his |cRXP_LOOT_Branch|r
>>|cRXP_ENEMY_Geltharis|r |cRXP_WARN_is level 32. If you are not confident, skip this step. He isn't particularly dangerous. He doesn't cast any spells. Ensure you clear the area before attempting him|r
.complete 1031,1
.mob Geltharis
step
.goto Ashenvale,85.276,44.720
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
.turnin 4581 >> Turn in Kayneth Stillwind
.target Kayneth Stillwind
.accept 1011 >> Accept Forsaken Diseases
step
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fp Azshara>> Get the Azshara flight path
.fly Ashenvale>> Fly to Ashenvale
.target Jarrodenus
step
.goto Ashenvale,22.23,52.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
.turnin 1022 >> Turn in The Howling Vale
.target Sentinel Melyria Frostshadow
.accept 1037 >> Accept Velinde Starsong
step
.isQuestComplete 1031
.goto Ashenvale,21.73,53.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
.turnin 1031 >> Turn in The Branch of Cenarius
.target Illiyana
.accept 1032 >> Accept Satyr Slaying!
step
.isQuestTurnedIn 1031
.goto Ashenvale,21.73,53.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
.accept 1032 >> Accept Satyr Slaying!
.target Illiyana
step
.abandon 1031 >> Abandon The Branch of Cenarius
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1026 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1027 >> Accept Raene's Cleansing
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.accept 1016 >> Accept Elemental Bracers
.target Sentinel Velene Starstrike
step
#optional
#completewith next
.cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing]
.itemcount 5996,1 
.use 5996 
step
.goto Ashenvale,44.78,70.07,60,0
.goto Ashenvale,48.90,70.05,60,0
.goto Ashenvale,51.28,70.51,60,0
.goto Ashenvale,48.90,70.05
>>Kill |cRXP_ENEMY_Befouled Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
>>|cRXP_WARN_The |cRXP_ENEMY_Befouled Water Elementals|r cast|r |T135848:0|t[Frost Nova]|cRXP_WARN_. Pay attention to your breath timer if you dive underwater to kill them|r
.collect 12220,5,1016,1
.mob Befouled Water Elemental
step
.use 5456 >> |cRXP_WARN_Use the|r |T134943:0|t[Divining Scroll] |cRXP_WARN_to create the|r |T134938:0|t[Divined Scroll]
.complete 1016,1 
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.turnin 1016 >> Turn in Elemental Bracers
.accept 1017 >> Accept Mage Summoner
.target Sentinel Velene Starstrike
step
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,56.45,63.62,70,0
.goto Ashenvale,50.08,59.94
>>Kill |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Totemics|r, |cRXP_ENEMY_Foulweald Ursas|r and a |cRXP_ENEMY_Foulweald Den Watcher|r
.complete 1025,4 
.mob +Foulweald Warrior
.complete 1025,3 
.mob +Foulweald Totemic
.complete 1025,2 
.mob +Foulweald Ursa
.complete 1025,1 
.mob +Foulweald Den Watcher
step
.goto Ashenvale,66.649,82.189
>>Kill the |cRXP_ENEMY_Shadethicket Oracle|r. Loot it for the |cRXP_LOOT_Fallen Moonstone|r
.complete 1035,1
.mob Shadethicket Oracle
step
#completewith next
>>Kill |cRXP_ENEMY_Rotting Slimes|r. |cRXP_WARN_After |cRXP_ENEMY_Rotting Slimes|r die a |cRXP_PICK_Rusty Chest|r will spawn on their corpse. The |cRXP_PICK_Rusty Chests|r don't have a 100% chance to drop|r
>>Open the |cRXP_PICK_Rusty Chests|r. Loot it for the |cRXP_LOOT_Iron Pommel|r
.complete 1027,1 
.mob Rotting Slime
step
.goto Ashenvale,75.29,72.00
>>Loot the |cRXP_LOOT_Bottle of Disease|r on the table
>>|cRXP_WARN_Be cautious as the |cRXP_ENEMY_Forsaken|r defending it can be in|r |T132320:0|t[Stealth]
.complete 1011,1 
step
#label slimes
.goto Ashenvale,72.6,71.6,60,0
.goto Ashenvale,69.8,76.2,60,0
.goto Ashenvale,75.4,73.0,60,0
.goto Ashenvale,73.6,76.6
>>Kill |cRXP_ENEMY_Rotting Slimes|r. |cRXP_WARN_After |cRXP_ENEMY_Rotting Slimes|r die a |cRXP_PICK_Rusty Chest|r will spawn on their corpse. The |cRXP_PICK_Rusty Chests|r don't have a 100% chance to drop|r|r
>>Open the |cRXP_PICK_Rusty Chests|r. Loot it for the |cRXP_LOOT_Iron Pommel|r
.complete 1027,1 
.mob Rotting Slime
step
#requires slimes
.goto Ashenvale,69.73,86.62,0
.goto Ashenvale,69.71,86.87,50,0
.goto The Barrens,48.98,5.42,35,0
.zone The Barrens >> Travel to The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
.isOnQuest 1017
step
#completewith next
.goto The Barrens,48.73,14.86,20,0
.goto The Barrens,48.53,16.51,15,0
.goto The Barrens,48.16,18.52,6,0
.goto The Barrens,47.96,18.82,5 >> Ascend Dreadmist Peak. Follow the Arrow to the top
step
.goto The Barrens,48.22,19.15
>>Kill |cRXP_ENEMY_Sarilus Foulborne|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_The surrounding |cRXP_ENEMY_Burning Blade|r are only level 10-12|r
.complete 1017,1 
.mob Sarilus Foulborne
step
#completewith next
.goto The Barrens,48.98,20.01,20,0
.goto The Barrens,50.42,21.93,25,0
.goto The Barrens,51.60,24.87,25,0
.goto The Barrens,58.76,25.28,60,0
.goto The Barrens,63.08,37.16,100 >> Travel to Ratchet. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
#completewith next
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fp Ratchet >> Get the Ratchet flight path
.fly Azshara >> Fly to Azshara
.target Bragok
step
.goto Ashenvale,85.276,44.720
.target Kayneth Stillwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
.turnin 1011 >> Turn in Forsaken Diseases
step
.isOnQuest 1032
#completewith next
>>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
>>|cRXP_WARN_Don't go out of your way to finish this yet|r
.complete 1032,1 
step
.goto Ashenvale,81.59,48.57
>>Click the |cRXP_PICK_Circle of Imprisonment|r in Satyrnaar
.complete 1140,2 

step
.isOnQuest 1032
#completewith next
>>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
.complete 1032,1 
step
.goto Ashenvale,78.776,46.765,110,0
.goto Ashenvale,73.835,47.120,100,0
.goto Ashenvale,66.622,56.998
>>Click the |cRXP_PICK_Circle of Imprisonment|r in Night Run
>>|cRXP_WARN_Be cautious of |cRXP_ENEMY_Felmusk Shadowstalkers|r in|r |T132320:0|t[Stealth]
.complete 1140,1 
step
.isOnQuest 1032
.goto Ashenvale,81.42,49.87
>>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
.complete 1032,1 
.mob Felmusk Felsworn
.mob Felmusk Rogue
.mob Felmusk Satyr
.mob Felmusk Shadowstalker
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1027 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1028 >> Accept Raene's Cleansing
step
#completewith next
.goto Ashenvale,56.993,51.981,20,0
.goto Ashenvale,57.369,50.953,20 >> Travel toward the |cRXP_PICK_Hidden Shrine|r
step
.goto Ashenvale,56.320,49.188
>>Click the |cRXP_PICK_Hidden Shrine|r
.turnin 1028 >> Turn in Raene's Cleansing
.accept 1055 >> Accept Raene's Cleansing
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1055 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1029 >> Accept Raene's Cleansing
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.turnin 1035 >> Turn in Fallen Sky Lake
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1025 >> Turn in An Aggressive Defense
.turnin 1029 >> Turn in Raene's Cleansing
.target Raene Wolfrunner
.accept 1030 >> Accept Raene's Cleansing
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.turnin 1017 >> Turn in Mage Summoner
>>|cRXP_WARN_This quest will reward you with the|r |T134754:0|t[Light of Elune]
>>|T134754:0|t[Light of Elune] |cRXP_WARN_- Grants immunity from all damage and spells for 10 sec.|r
>>|cRXP_WARN_This is a ONE time use only. Use it in an emergency|r
.target Sentinel Velene Starstrike
step
.goto Ashenvale,53.269,74.270,35,0
.goto Ashenvale,51.443,75.004,45 >> Travel toward |cRXP_FRIENDLY_Krolg|r
.isOnQuest 1030
step
#completewith next
.cast 6405 >> |cRXP_WARN_Use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg|r
.use 5462
.isOnQuest 1030
step
.goto Ashenvale,50.85,75.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
.use 5462 >> |cRXP_WARN_You must use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg before talking to|r |cRXP_FRIENDLY_Krolg|r
.turnin 1030 >> Turn in Raene's Cleansing
.accept 1045 >> Accept Raene's Cleansing
.target Krolg
step
.goto Ashenvale,54.210,74.082,50,0
.goto Ashenvale,54.747,79.618
>>Kill |cRXP_ENEMY_Bloodtooth Guards|r and |cRXP_ENEMY_Ran Bloodtooth|r. Loot him for his |cRXP_LOOT_Skull|r
.complete 1045,2 
.mob +Bloodtooth Guard
.complete 1045,1 
.collect 5388,1,1046,1
.mob +Ran Bloodtooth
step
#completewith krolg1
#label tkrolg1
.goto Ashenvale,53.269,74.270,35,0
.goto Ashenvale,51.443,75.004,45 >> Travel toward |cRXP_FRIENDLY_Krolg|r
.isOnQuest 1045
step
#requires tkrolg1
#completewith next
.cast 6405 >> |cRXP_WARN_Use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg|r
.use 5462
.isOnQuest 1045
step
#label krolg1
.goto Ashenvale,50.84,75.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
.use 5462 >> |cRXP_WARN_You must use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg before talking to|r |cRXP_FRIENDLY_Krolg|r
.turnin 1045 >> Turn in Raene's Cleansing
.accept 1046 >> Accept Raene's Cleansing
.target Krolg
step
#completewith next
.goto Ashenvale,36.61,49.58,30 >> Travel toward |cRXP_FRIENDLY_Raene Wolfrunner|r in Astranaar
>>|cRXP_WARN_If you Turn in Raene's Cleansing you will gain 3,050XP, but you will permanently lose|r |T135463:0|t[Dartol's Rod of Transformation]
>>|cRXP_WARN_If you wish to keep it for RP purposes, abandon Raene's Cleansing, and|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_will remain in your bags|r
.isOnQuest 1046
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1046 >> Turn in Raene's Cleansing
.target Raene Wolfrunner
.isOnQuest 1046
step
.isQuestComplete 1032
.goto Ashenvale,21.73,53.34
.target Illiyana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
.turnin 1032 >> Turn in Satyr Slaying!
step
.isQuestTurnedIn 2078 
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 1140 >> Turn in The Tower of Althalaxx
step
.isQuestAvailable 2078 
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 1140 >> Turn in The Tower of Althalaxx
.accept 1167 >> Accept The Tower of Althalaxx << !Warlock !Druid
step
#label end
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
.fly Teldrassil>> Fly to Teldrassil
.target Daelyshia
step
#completewith darnassus
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step << Mage
.goto Darnassus,40.599,82.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elissa Dumas|r
.trainer >> Train Teleport: Darnassus
.target Elissa Dumas
.xp <30,1
step << Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
.xp <30,1
step
.goto Darnassus,39.72,92.68,10,0
.goto Darnassus,42.97,83.90,15,0
.goto Darnassus,39.10,81.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
.turnin 1081 >> Turn in Reception from Tyrande
.target Tyrande Whisperwind
.isQuestTurnedIn 1073
step << Warrior
.goto Darnassus,58.72,34.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.trainer >> Train your class spells
.target Arias'ta Bladesinger
.xp <30,1
step
#label darnassus
.goto Darnassus,61.777,39.180
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
.turnin 1037 >> Turn in Velinde Starsong
.target Thyn'tel Bladeweaver
.accept 1038 >> Accept Velinde's Effects
step
.goto Darnassus,56.05,79.21,10,0
.goto Darnassus,62.287,83.289
>>Run up into the Sentinel's Bunkhouse and across the over-head bridge
>>Open |cRXP_PICK_Velinde's Locker|r. Loot it for |cRXP_LOOT_Velinde's Journal|r
.complete 1038,1 
step
#era
.goto Darnassus,61.777,39.180
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
.turnin 1038 >> Turn in Velinde's Effects
.target Thyn'tel Bladeweaver
.accept 1039 >> Accept The Barrens Port
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garryeth|r, |cRXP_FRIENDLY_Lairn|r or |cRXP_FRIENDLY_Idriana|r
.bankdeposit 2784 >> Deposit the following items into your bank:
>>|T134187:0|t[Musquash Root] 
.target Garryeth
.target Lairn
.target Idriana
step << Druid
.goto Darnassus,34.768,7.374
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denatharion|r
.trainer >> Train your class spells
.target Denatharion
.xp <30,1
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
.xp <30,1
step << Hunter
.goto Darnassus,43.834,9.505,10,0
.goto Darnassus,42.471,9.157
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvaria|r up the ramp
.trainer >> Train your pet spells
.target Silvaria
.xp <30,1
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.trainer >> Train your class spells
.xp <30,1
.target Syurna
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal back to Rut'theran Village
.zoneskip Darnassus,1
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Darkshore >> Fly to Darkshore
.zoneskip Darkshore
step << !Warlock !Druid
#map Darkshore
.isQuestAvailable 2078
.goto Winterspring,4.82,27.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
.turnin 1167 >> Turn in The Tower of Althalaxx
>>|cRXP_WARN_Skip the follow up quest. It's a fairly difficult quest to do (you'll have to deal with 3 caster mobs w/ Voidwalkers)|r
.target Balthule Shadowstrike
step << !Warlock !Druid
#map Darkshore
.isQuestAvailable 2078
.goto Winterspring,6.37,16.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
.accept 2098 >> Accept Gyromast's Retrieval
>>|cRXP_WARN_This is a low level quest but it gives you 5|r |T134797:0|t[Elixirs of Water Breathing] |cRXP_WARN_that are going to be used later|r
.target Gelkak Gyromast
step << !Warlock !Druid
#completewith next
.isQuestAvailable 2078
.goto Darkshore,56.10,16.88,0
>>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
>>|cRXP_WARN_This is a low level quest but it gives you 5|r |T134797:0|t[Elixirs of Water Breathing] |cRXP_WARN_that are going to be used later|r
.complete 2098,3 
.mob Raging Reef Crawler
.mob Encrusted Tide Crawler
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Darkshore,54.93,12.19
>>Kill |cRXP_ENEMY_Greymist Oracles|r and |cRXP_ENEMY_Greymist Tidehunter|r. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
>>|cRXP_WARN_This is a low level quest but it gives you 5|r |T134797:0|t[Elixirs of Water Breathing] |cRXP_WARN_that are going to be used later|r
.complete 2098,2 
.mob Greymist Oracle
.mob Greymist Tidehunter
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Darkshore,55.59,16.98,45,0
.goto Darkshore,53.76,18.96,45,0
.goto Darkshore,51.34,22.00,45,0
.goto Darkshore,56.63,12.08
>>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
>>|cRXP_WARN_This is a low level quest but it gives you 5|r |T134797:0|t[Elixirs of Water Breathing] |cRXP_WARN_that are going to be used later|r
.complete 2098,3 
.mob Raging Reef Crawler
.mob Encrusted Tide Crawler
step << !Warlock !Druid
#sticky
.isQuestAvailable 2078
#label foreststriders
.goto Darkshore,59.29,13.22,55,0
.goto Darkshore,61.40,9.40,50,0
.goto Darkshore,61.51,12.66,50,0
.goto Darkshore,61.24,15.38,50,0
.goto Darkshore,61.40,9.40
>>Kill |cRXP_ENEMY_Giant Foreststriders|r. Loot them for the |cRXP_LOOT_Top of Gelkak's Key|r
>>|cRXP_WARN_This is a low level quest but it gives you 5|r |T134797:0|t[Elixirs of Water Breathing] |cRXP_WARN_that are going to be used later|r
.complete 2098,1 
.mob Giant Foreststrider
step << !Warlock !Druid
#map Darkshore
.isQuestAvailable 2078
#requires foreststriders
.goto Winterspring,6.37,16.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
.turnin 2098 >> Turn in Gyromast's Retrieval
.accept 2078 >> Accept Gyromast's Revenge
.target Gelkak Gyromast
step << !Warlock !Druid
#map Darkshore
.isOnQuest 2078
.goto Winterspring,5.59,21.09,10,0
.goto Winterspring,6.37,16.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
>>|cRXP_WARN_This is a low level quest but it gives you 5|r |T134797:0|t[Elixirs of Water Breathing] |cRXP_WARN_that are going to be used later|r
>>Escort |cRXP_FRIENDLY_The Threshwackonator 4100|r to |cRXP_FRIENDLY_Gelkak Gyromast|r
>>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
.complete 2078,1
.skipgossip
.mob The Threshwackonator 4100
step << !Warlock !Druid
#map Darkshore
.isOnQuest 2078
.goto Winterspring,6.37,16.66
.target Gelkak Gyromast
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
.turnin 2078 >> Turn in Gyromast's Revenge
.isQuestComplete 2078
step << !Warlock !Druid
.destroy 7442 >> Delete Gyromast's Key from your inventory
step << !Mage
.hs >> Hearth to Menethil Harbor
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 20-30
<< Alliance
#classic
#era
#name 30-30 Wetlands/Hillsbrad
#next 30-32 Duskwood
step << Mage
.dungeon !BFD
#optional
#completewith next
.cast 3562 >>Cast |T135763:0|t[Teleport: Ironforge]
.usespell 3562
.zoneskip Ironforge
step << Mage
.dungeon BFD
#optional
#completewith MageTP
.cast 3562 >>Cast |T135763:0|t[Teleport: Ironforge]
.usespell 3562
.zoneskip Ironforge
step << Mage
.goto Ironforge,27.18,8.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
.xp <30,1
step << !Mage
.dungeon BFD
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.goto Wetlands,9.49,59.69
.fly Ironforge>> Fly to Ironforge
.target Shellei Brondir
step
.dungeon BFD
#label MageTP
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 971 >> Turn in Knowledge in the Deeps
.target Gerrig Bonegrip
.isQuestComplete 971
step
.dungeon BFD
#optional
.isQuestTurnedIn 2078
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankdeposit 5996 >> Deposit the following items into your bank:
>>|T134797:0|t[Elixir of Water Breathing] (If you have them) 
.itemcount 5996,1
.target Bailey Stonemantle
.zoneskip Ironforge,1
step << !Mage
.dungeon BFD
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Wetlands>> Fly to Wetlands
.zoneskip Wetlands
.target Gryth Thurden
step << Mage
.hs >> Hearth to Menethil Harbor
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.target First Mate Fitzsimmons
.accept 290 >> Accept Lifting the Curse
step
.isQuestComplete 943
.goto Wetlands,10.84,60.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r upstairs
.turnin 943 >>Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
step
.goto Wetlands,10.84,55.89
.target Harlo Barnaby
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harlo Barnaby|r
.accept 472 >> Accept Fall of Dun Modr
step
.goto Wetlands,9.861,57.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r upstairs
.target Captain Stoutfist
.accept 465 >> Accept Nek'rosh's Gambit
step
#completewith next
.goto Wetlands,18.0,27.0,0
>>Kill |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 471,1 
.mob Giant Wetlands Crocolis
step
.goto Wetlands,15.984,23.111,25,0
.goto Wetlands,15.44,23.60
>>Run up the rudder of the ship
>>Kill |cRXP_ENEMY_Captain Halyndor|r. Loot him for the |cRXP_LOOT_Strongbox Key|r
>>|cRXP_WARN_Be careful he can cast|r |T136232:0|t[Ward of the Eye]|cRXP_WARN_ making him|r |cRXP_ENEMY_REFLECT SPELLS|r |cRXP_WARN_for 6 seconds|r
.complete 290,1 
.mob Captain Halyndor
step
.goto Wetlands,14.292,23.609,15,0
.goto Wetlands,14.381,24.047
>>Enter through the large hole on the side of the ship
>>Click |cRXP_PICK_Intrepid's Locked Strongbox|r on the ground
.turnin 290 >>Turn in Lifting the Curse
.accept 292 >>Accept The Eye of Paleth
step
#completewith next
>>Kill |cRXP_ENEMY_Fen Creepers|r
>>|cRXP_ENEMY_Fen Creepers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth] |cRXP_WARN_along the river streams|r
.complete 275,1 
.mob Fen Creeper
step
.goto Wetlands,18.0,27.0,70,0
.goto Wetlands,22.8,21.8,70,0
.goto Wetlands,28.0,18.8,70,0
.goto Wetlands,18.0,27.0
>>Kill |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
.goto Wetlands,27.6,37.2,50,0
.goto Wetlands,40.8,32.8,50,0
.goto Wetlands,46.6,29.6,50,0
.goto Wetlands,48.8,37.2,50,0
.goto Wetlands,54.8,37.8,50,0
.goto Wetlands,27.6,37.2,0
.goto Wetlands,40.8,32.8,0
.goto Wetlands,46.6,29.6,0
.goto Wetlands,48.8,37.2,0
.goto Wetlands,54.8,37.8,0
.goto Wetlands,20.72,28.74
>>Kill |cRXP_ENEMY_Fen Creepers|r
>>|cRXP_ENEMY_Fen Creepers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth] |cRXP_WARN_along the river streams|r
.complete 275,1 
.mob Fen Creeper
step
.goto Wetlands,37.22,43.89,45,0
.goto Wetlands,38.17,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 294 >>Turn in Ormer's Revenge
.accept 295 >>Accept Ormer's Revenge
.target Ormer Ironbraid
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
.accept 299 >> Accept Uncovering the Past
.goto Wetlands,38.809,52.386
.target Prospector Whelgar
step
.isOnQuest 943
#completewith FragmentDone
>>Kill |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
.complete 943,1 
.mob Mottled Razormaw
.mob Mottled Scytheclaw
step
#completewith Sarltooth
.goto Wetlands,34.71,49.95,0
>>Open the |cRXP_PICK_Ancient Relics|r and |cRXP_PICK_Loose Soil|r. Loot them for the |cRXP_LOOT_Fragments|r
>>|cRXP_WARN_The |cRXP_LOOT_Fragments|r have random spawn locations in the Excavation Site|r
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step
.goto Wetlands,35.05,44.06,60,0
.goto Wetlands,34.85,49.36,60,0
.goto Wetlands,30.75,48.50,60,0
.goto Wetlands,34.33,47.81
>>Kill |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r
.complete 295,1 
.mob +Mottled Scytheclaw
.complete 295,2 
.mob +Mottled Razormaw
step
.goto Wetlands,38.17,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 295 >>Turn in Ormer's Revenge
.accept 296 >>Accept Ormer's Revenge
.target Ormer Ironbraid
step
#label Sarltooth
.goto Wetlands,31.410,49.518,30,0
.goto Wetlands,33.25,51.50
>>Kill |cRXP_ENEMY_Sarltooth|r. Loot him for his |cRXP_LOOT_Talon|r
.complete 296,1 
.unitscan Sarltooth
step
#label FragmentDone
.goto Wetlands,34.32,51.79,40,0
.goto Wetlands,35.73,49.06,40,0
.goto Wetlands,33.86,46.85,40,0
.goto Wetlands,34.91,44.22,40,0
.goto Wetlands,36.62,42.16
>>Open the |cRXP_PICK_Ancient Relics|r and |cRXP_PICK_Loose Soil|r. Loot them for the |cRXP_LOOT_Fragments|r
>>|cRXP_WARN_The |cRXP_LOOT_Fragments|r have random spawn locations in the Excavation Site, including the elevated terrain where |cRXP_ENEMY_Sarltooth|r is|r
>>|cRXP_WARN_Be sure to check behind the Large Tree marked on your map as well|r
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step
.isOnQuest 943
.goto Wetlands,35.05,44.06,60,0
.goto Wetlands,34.85,49.36,60,0
.goto Wetlands,30.75,48.50,60,0
.goto Wetlands,34.33,47.81
>>Kill |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r. Loot them for the |cRXP_LOOT_Stone of Relu|r
.complete 943,1 
.mob Mottled Razormaw
.mob Mottled Scytheclaw
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r and |cRXP_FRIENDLY_Prospector Whelgar|r
.turnin 296 >>Turn in Ormer's Revenge
.target +Ormer Ironbraid
.goto Wetlands,38.17,50.88
.turnin 299 >>Turn in Uncovering the Past
.goto Wetlands,38.809,52.386
.target +Prospector Whelgar
step
.goto Wetlands,47.45,47.01
>>Click the |cRXP_PICK_Dragonmaw Catapult|r
.turnin 465 >>Turn in Nek'rosh's Gambit
step
.group 3
.goto Wetlands,47.45,47.01
>>Click the |cRXP_PICK_Dragonmaw Catapult|r
.accept 474 >>Accept Defeat Nek'rosh
step
.group 3
.goto Wetlands,53.2,56.0,40,0
.goto Wetlands,53.2,56.0,0
>>Kill |cRXP_ENEMY_Chieftain Nek'rosh|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_You can split pull Nek'Rosh from the mobs around him by using|r |T136186:0|t[Rain of Fire] << Warlock
>>|cRXP_WARN_You can split pull Nek'Rosh from the mobs around him by using|r |T135857:0|t[Blizzard] << Mage
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_is snareable|r
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_can be|r |T136183:0|t[Feared] << Warlock/Priest
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_is immune to Fire damage|r << Mage/Warlock
.complete 474,1 
.mob Chieftain Nek'rosh
.link https://youtu.be/G0cXqCFn1bI >>|cRXP_WARN_Click here for a video guide|r << Warlock/Hunter
step
.isQuestComplete 275
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.goto Wetlands,56.37,40.40
.turnin 275 >>Turn in Blisters on The Land
.target Rethiel the Greenwarden
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r and |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 472 >>Turn in Fall of Dun Modr
.target +Longbraid the Grim
.goto Wetlands,49.803,18.257
.accept 631 >>Accept The Thandol Span
.goto Wetlands,49.908,18.233
.target +Rhag Garmason
step
.group 3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r and |cRXP_FRIENDLY_Longbraid the Grim|r
.accept 303 >> Accept The Dark Iron War
.target +Motley Garmason
.goto Wetlands,49.665,18.231
.accept 304 >> Accept A Grim Task
.goto Wetlands,49.803,18.257
.target +Longbraid the Grim
step
.group 3
#completewith next
.goto Wetlands,62.48,28.41,40,0
.goto Wetlands,61.83,26.27,40,0
.goto Wetlands,60.01,24.35,40,0
.goto Wetlands,62.48,28.41
>>Kill |cRXP_ENEMY_Dark Iron Dwarves|r, |cRXP_ENEMY_Dark Iron Tunnelers|r, |cRXP_ENEMY_Dark Iron Saboteurs|r and |cRXP_ENEMY_Dark Iron Demolitionists|r
>>|cRXP_ENEMY_Dark Iron Saboteurs|r |cRXP_WARN_will cast|r |T135826:0|t[Sapper Explode] |cRXP_WARN_as they die which deals Fire damage in close proximity|r
>>|cRXP_ENEMY_Dark Iron Demolitionists|r |cRXP_WARN_will continously throw|r |T135826:0|t[Bombs] |cRXP_WARN_from range|r
.complete 303,1 
.mob +Dark Iron Dwarf
.complete 303,2 
.mob +Dark Iron Tunneler
.complete 303,3 
.mob +Dark Iron Saboteur
.complete 303,4 
.mob +Dark Iron Demolitionist
step
.group 3





.goto Wetlands,62.48,28.41
>>Kill |cRXP_ENEMY_Balgaras the Foul|r. Loot him for his |cRXP_LOOT_Ear|r
.complete 304,1 
.mob Balgaras the Foul
step
.group 3
.goto Wetlands,62.48,28.41,40,0
.goto Wetlands,61.83,26.27,40,0
.goto Wetlands,60.01,24.35,40,0
.goto Wetlands,62.48,28.41
>>Kill |cRXP_ENEMY_Dark Iron Dwarves|r, |cRXP_ENEMY_Dark Iron Tunnelers|r, |cRXP_ENEMY_Dark Iron Saboteurs|r and |cRXP_ENEMY_Dark Iron Demolitionists|r
>>|cRXP_ENEMY_Dark Iron Saboteurs|r |cRXP_WARN_will cast|r |T135826:0|t[Sapper Explode] |cRXP_WARN_as they die which deals Fire damage in close proximity|r
>>|cRXP_ENEMY_Dark Iron Demolitionists|r |cRXP_WARN_will continously throw|r |T135826:0|t[Bombs] |cRXP_WARN_from range|r
.complete 303,1 
.mob +Dark Iron Dwarf
.complete 303,2 
.mob +Dark Iron Tunneler
.complete 303,3 
.mob +Dark Iron Saboteur
.complete 303,4 
.mob +Dark Iron Demolitionist
step
.group
.goto Wetlands,49.665,18.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r
.turnin 303 >> Turn in The Dark Iron War
.target Motley Garmason
.isQuestComplete 303
step
.group
.goto Wetlands,49.803,18.257
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
.turnin 304 >> Turn in A Grim Task
.target Longbraid the Grim
.isQuestComplete 304
step
.goto Wetlands,51.481,8.111,15,0
.goto Wetlands,51.115,8.156,15,0
.goto Wetlands,51.287,7.953
>>Click on |cRXP_PICK_Ebenezer Rustlocke's Corpse|r
>>|cRXP_WARN_Ensure you are on full HP before going down the Spiral Staircase. There are 2 Elite |cRXP_ENEMY_Dark Iron Sabotuers|r. Cast any crowd-control abilities on them when once you go down and then run past them. Run back up and out after|r
.turnin 631 >>Turn in The Thandol Span
.accept 632 >>Accept The Thandol Span
.link https://youtu.be/awe7f-iI-ic >>|cRXP_WARN_Click here for a video guide|r
step
.goto Wetlands,49.908,18.233
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 632 >>Turn in The Thandol Span
.accept 633 >>Accept The Thandol Span
.target Rhag Garmason
step
.abandon 303 >> Abandon The Dark Iron War
step
.abandon 304 >> Abandon A Grim Task
step
.goto Arathi Highlands,43.240,92.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foggy MacKreel|r
>>|cRXP_WARN_Jump down onto the invisible chain first, then onto the broken beam on the bridge. All classes are able to do this jump. If you are unable to do it, skip this step|r
.accept 647 >>Accept MacKreel's Moonshine
.target Foggy MacKreel
.link https://youtu.be/EmcLDfGL_xg >>|cRXP_WARN_Click here for a video guide|r
step
.goto Arathi Highlands,44.28,92.877
>>Dive down underwater
>>Open the |cRXP_PICK_Waterlogged Letter|r. Loot it for the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r]
>>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r] to start the quest|r
.collect 4433,1,637
.use 4433
.accept 637 >>Accept Sully Balloo's Letter
step
#completewith PleaTurnin
.goto Arathi Highlands,52.5,90.4,30 >>Swim east toward the ramp here
step
.goto Arathi Highlands,48.789,88.058
>>Click the |cRXP_PICK_Cache of Explosives|r
.complete 633,1 
step
#label PleaTurnin
.goto Wetlands,49.908,18.233
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 633 >>Turn in The Thandol Span
.accept 634 >>Accept Plea To The Alliance
.target Rhag Garmason
step
#completewith next
.goto Arathi Highlands,45.83,47.55,150 >> Travel to Refuge Point
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.goto Arathi Highlands,45.83,47.55
.turnin 634 >>Turn in Plea To The Alliance
.target Captain Nials
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.goto Arathi Highlands,45.73,46.09
.fp Arathi >> Get the Arathi Highlands Flight Path
.target Cedrik Prose
step << skip
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deneb Walker|r
.goto Arathi Highlands,27.0,58.8,0
.vendor >>Buy all 3 first aid books inside Stromgarde if you are leveling first aid
.target Deneb Walker
step 
>>Travel to the basement in the Southshore Inn. If you fail the timed quest, abandon it and skip this step
.goto Arathi Highlands,19.72,29.04,150,0
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmeister Bilger|r
.turnin 647 >>Turn in MacKreel's Moonshine
.target Brewmeister Bilger
step
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fp Southshore >>Get the Southshore Flight Path
.target Darla Harris
step << Hunter
#era
#completewith end
.xp 29.55 >> Do the murloc quests in Southshore or farm turtle meat until you are 55% into level 29
step << Hunter
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley|r
.goto Hillsbrad Foothills,50.415,58.803
.stable >> Stable your pet. You will tame an |cRXP_ENEMY_Elder Moss Creeper|r shortly
.target Wesley
step << Hunter
.goto Hillsbrad Foothills,56.6,53.8
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Moss Creeper|r to tame it|r 
.train 17264 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.unitscan Elder Moss Creeper
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.trainer >> Train your class spells
.target Loganaar
step
#label end
#completewith next
.hs >>Hearth to Menethil Harbor
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.dungeon Gnomer
#completewith wend
#label gnomer1
.goto Dun Morogh,24.2,39.1,0
+Start Looking for a Gnomeregan group
.subzoneskip 133
.subzoneskip 721,2
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 292 >>Turn in The Eye of Paleth
.accept 293 >>Accept Cleansing the Eye
.target Glorin Steelbrow
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.accept 321 >>Accept Lightforge Iron
.target Glorin Steelbrow
.isQuestTurnedIn 270
step
#completewith next
.goto Wetlands,10.368,61.016,8 >> Travel upstairs towards |cRXP_FRIENDLY_Archaeologist Flagongut|r
step
.isQuestTurnedIn 942
.goto Wetlands,10.84,60.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.turnin 943 >>Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
step
>>Click the |cRXP_PICK_Waterlogged Chest|r
.goto Wetlands,12.10,64.19
.turnin 321 >>Turn in Lightforge Iron
.accept 324 >>Accept The Lost Ingots
.isQuestTurnedIn 270
step
.goto Wetlands,12.6,65.2,60,0
.goto Wetlands,10.2,71.0,60,0
.goto Wetlands,7.2,72.6,60,0
.goto Wetlands,12.6,65.2
>>Kill |cRXP_ENEMY_Bluegill Raiders|r. Loot them for |cRXP_LOOT_Ingots|r
.complete 324,1 
.mob Bluegill Raider
.isQuestTurnedIn 270
step << Hunter
.goto Wetlands,9.54,69.70
.xp 30-15000 >>Grind until you are 15k xp away from level 30
step
.goto Wetlands,8.54,55.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
.turnin 471 >>Turn in Apprentice's Duties
.target James Halloran
step
.isQuestComplete 474
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
.goto Wetlands,9.86,57.48
.turnin 474 >> Turn in Defeat Nek'rosh
.target Captain Stoutfist
.group
step
.goto Wetlands,10.58,60.59
.abandon 474 >> Abandon Defeat Nek'rosh
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 324 >>Turn in The Lost Ingots
.accept 322 >>Accept Blessed Arm
.target Glorin Steelbrow
.isQuestTurnedIn 270
step << Mage
.zone Ironforge >> Teleport to Ironforge
.itemcount 17031,1 
step
#label wend
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.goto Wetlands,9.49,59.70
.fly Ironforge >>Fly to Ironforge
.target Shellei Brondir
.zoneskip Ironforge
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 30-32 Duskwood
#next 32-33 Hillsbrad/Arathi I
step
.dungeon Gnomer
#sticky
#label gnomer1
.goto Dun Morogh,24.2,39.1,0
+Start Looking for a Gnomeregan group
.subzoneskip 133
.subzoneskip 721,2
step << !Druid !Warrior !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,27.18,8.60 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Dink << Mage
.target Brandur Ironhammer << Paladin
step << Mage
.goto Ironforge,31.33,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r
.vendor >> |cRXP_BUY_Buy 3|r |T134419:0|t[Rune of Teleportations] |cRXP_BUY_from her|r
.collect 17031,3 
.target Ginny Longberry
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus] |cRXP_BUY_or your|r |T136221:0|t[Voidwalker]
.target Jubahl Corpseseeker
step << Priest
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harick Boulderdrum|r downstairs
.goto Ironforge,22.837,17.094,8,0
.goto Ironforge,21.131,17.276,5,0
.goto Ironforge,23.135,15.936
>>|cRXP_BUY_Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_if it's better than your current wand|r
.collect 5347,1 
.target Harick Boulderdrum
step
.goto Ironforge,63.50,67.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Balloo|r
.turnin 637 >> Turn in Sully Balloo's Letter
.timer 17,Sully Balloo's Letter RP
.target Sara Balloo
step
.goto Ironforge,63.50,67.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Balloo|r
.accept 683 >> Accept Sara Balloo's Plea
.target Sara Balloo
step
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.turnin 683 >> Turn in Sara Balloo's Plea
.accept 686 >> Accept A King's Tribute
.target King Magni Bronzebeard
step
.goto Ironforge,39.03,88.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.turnin 686 >> Turn in A King's Tribute
.accept 689 >> Accept A King's Tribute
.target Grand Mason Marblesten
step << Hunter
.goto Ironforge,61.442,88.232,15,0
.goto Ironforge,61.549,89.432
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalgus Thunderfist|r downstairs
>>|cRXP_BUY_Buy a|r |T134402:0|t[|cRXP_FRIENDLY_Heavy Quiver|r]
.collect 7371,1
.target Thalgus Thunderfist
step
.goto Ironforge,72.74,94.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Longbeard|r
.accept 1179 >>Accept The Brassbolts Brothers
.target Pilot Longbeard
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
.goto Ironforge,70.856,85.839
.trainer >> Train your pet skills
>>|cRXP_WARN_Make sure you have Frost/Nature resistance maxed out on your pet|r
.target Belia Thundergranite
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnoarn|r, |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
.accept 2927 >> Accept The Day After
.target +Gnoarn
.goto Ironforge,69.182,50.556
.turnin -2923 >> Turn in Tinkmaster Overspark
.target +Tinkmaster Overspark
.accept 2922 >> Accept Save Techbot's Brain!
.goto Ironforge,69.540,50.325
.accept 2929 >> Accept The Grand Betrayal
.target +High Tinker Mekkatorque
.goto Ironforge,68.743,48.969
.accept 2930 >> Accept Data Rescue
.target +Master Mechanic Castpipe
.goto Ironforge,69.823,48.101
.accept 2924 >> Accept Essential Artificials
.goto Ironforge,67.925,46.101
.target +Klockmort Spannerspan
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
.goto Ironforge,18.10,51.60
.home >> Set your Hearthstone to Ironforge
.target Innkeeper Firebrew
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,53.5,34.9
.zone Dun Morogh>>Exit Ironforge
step
.dungeon Gnomer
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
.turnin 2927 >> Turn in The Day After
.accept 2926 >> Accept Gnogaine
.target Ozzie Togglevolt

step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,24.35,39.78,0
.goto Dun Morogh,24.35,39.78,30,0
.goto 1415,43.42,53.81,45 >> Travel to Gnomeregan
step
.dungeon Gnomer
.goto 1415,43.40,53.41,50,0
.goto 1415,43.13,53.36,50,0
.goto 1415,43.38,52.94,50,0
.goto 1415,43.40,53.41
.use 9283 >>|cRXP_WARN_Use the|r |T132788:0|t[Empty Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Invader|r or|r |cRXP_ENEMY_Irradiated Pillager|r
>>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Invader|r or |cRXP_ENEMY_Irradiated Pillager|r must be ALIVE when you use it|r
>>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
.complete 2926,1 
.mob Irradiated Invader
.mob Irradiated Pillager
.isOnQuest 2926
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,46.005,48.637,40 >> Travel to |cRXP_FRIENDLY_Ozzie Togglevolt|r in Kharanos
>>|cRXP_WARN_You will get a follow up for when you go inside the dungeon|r
.isOnQuest 2926
step
.dungeon Gnomer
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
.turnin 2926 >> Turn in Gnogaine
.target Ozzie Togglevolt
.isQuestComplete 2926
step
.dungeon Gnomer
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
.accept 2962 >> Accept The Only Cure is More Green Glow
.target Ozzie Togglevolt
.isQuestTurnedIn 2926
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,24.35,39.78,0
.goto Dun Morogh,24.35,39.78,30,0
.goto 1415,43.42,53.81,45 >> Travel to Gnomeregan
.isOnQuest 2962
step
.dungeon Gnomer
.goto 1415,43.37,53.11,70,0
.goto 1415,43.10,52.81
>>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
.collect 9279,1,2930,1,1 
>>Kill |cRXP_ENEMY_Techbot|r. Loot him for his |cRXP_LOOT_Memory Core|r
>>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
.complete 2922,1 
.mob Techbot
.isOnQuest 2922
step
.dungeon Gnomer
.goto 1415,43.40,53.41,50,0
.goto 1415,43.13,53.36,50,0
.goto 1415,43.38,52.94,50,0
.goto 1415,43.40,53.41
>>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
.collect 9279,1 
>>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
.isOnQuest 2930
step
.dungeon Gnomer
.goto 1415,43.364,52.892,-1
.goto 1415,43.411,52.898,-1
.goto 1415,43.402,52.672,-1
.goto 1415,43.430,52.675,-1
>>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_White Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-A|r
>>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
.collect 9280,1,2930,1 
.itemcount 9279,1 
.skipgossip
.isOnQuest 2930

step
.dungeon Gnomer
.goto 1415,43.17,53.36,40,0
.goto 1415,42.78,53.81
.subzone 721,2 >> Enter the Gnomeregan instance portal
step
.dungeon Gnomer
#completewith Thermaplugg
>>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
.complete 2928,1 
.isOnQuest 2928
step
.dungeon Gnomer
>>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Yellow Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-B|r
>>The console looking machine is located at the gnomish safe zone at the bottom floor, next to the big circular room where the slimes are located
.collect 9282,1,2930,1 
.itemcount 9280,1 
.skipgossip
.isOnQuest 2930
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernobee|r
>>|cRXP_WARN_This will start an escort quest. |cRXP_FRIENDLY_Kernobee|r spawns randomly in The Dormitory, right outside of the gnomish safe zone|r
.accept 2904 >> Accept A Fine Mess
.unitscan Kernobee
step
.dungeon Gnomer
>>Escort |cRXP_FRIENDLY_Kernobee|r back to the start of the dungeon
.complete 2904,1 
.isOnQuest 2904
step
.dungeon Gnomer
.use 9364 >>|cRXP_WARN_Use the|r |T132788:0|t[Heavy Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or|r |cRXP_ENEMY_Irradiated Horror|r
>>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or |cRXP_ENEMY_Irradiated Horror|r must be ALIVE when you use it|r
>>|cRXP_WARN_Note: You must turn this quest in within 2 hours of acquiring the|r |T136006:0|t[High Potency Radioactive Fallout]
.complete 2962,1 
.mob Irradiated Slime
.mob Irradiated Lurker
.mob Irradiated Horror
.isOnQuest 2962
step
.dungeon Gnomer
#completewith Thermaplugg
>>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
.complete 2924,1 
.isOnQuest 2924
step
.dungeon Gnomer
>>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Blue Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-C|r
>>The Punchograph is located on the suspended platform right next to the |cRXP_ENEMY_Electrocutioner 6000|r
.collect 9281,1,2930,1 
.itemcount 9282,1 
.skipgossip
.isOnQuest 2930
.unitscan Electrocutioner 6000
step
.dungeon Gnomer
>>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Red Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-D|r
.complete 2930,1 
.itemcount 9281,1 
.skipgossip
.isOnQuest 2930
step
.dungeon Gnomer
#label Thermaplugg
>>Kill |cRXP_ENEMY_Mekgineer Thermaplugg|r
.complete 2929,1 
.isOnQuest 2929
step
.dungeon Gnomer
#completewith Finished
>>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
>>If you still haven't finished this quest, go back to places where you looted them before, since they respawn after a few minutes
.complete 2924,1 
.isOnQuest 2924
step
.dungeon Gnomer
#completewith Finished
>>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
.complete 2928,1 
.isOnQuest 2928
step
.dungeon Gnomer
>>|cRXP_WARN_Use the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to start the quest|r
.accept 2945 >> Accept Grime-Encrusted Ring
.collect 9326,1,2945 
.itemcount 9326,1
.use 9326
step
.dungeon Gnomer
>>|cRXP_WARN_Take the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to |cRXP_PICK_The Sparklematic 5200|r in The Clean Zone|r
*You will have to back track to The Clean Zone near the instance entrance, make sure your teamates are there to help you on your trip back
.turnin 2945 >> Turn in Grime-Encrusted Ring
.itemcount 9326,1 
step
.dungeon Gnomer
>>Click the |cRXP_PICK_The Sparklematic 5200|r one more time
.accept 2947 >> Accept Return of the Ring
.isQuestTurnedIn 2945

step
.dungeon Gnomer
.hs >> Hearth to Ironforge
.zoneskip Dun Morogh
.zoneskip Ironforge
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,53.5,34.9
.zone Dun Morogh>>Exit Ironforge
step 
.dungeon Gnomer
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
.turnin 2962 >> Turn in The Only Cure is More Green Glow
.target Ozzie Togglevolt
.isQuestComplete 2962
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,47.58,41.58,40,0
.goto Dun Morogh,50.19,40.79,20,0
.goto Ironforge,14.90,87.10,40,0
.zone Ironforge >> Travel to Ironforge
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
.turnin 2947 >> Turn in Return of the Ring
.accept 2948 >> Accept Gnome Improvement
.target Talvash del Kissel
.isOnQuest 2947
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
>>|cRXP_WARN_If you are able to obtain a|r |T133215:0|t[Silver Bar] |cRXP_WARN_and a|r |T134105:0|t[Moss Agate] |cRXP_WARN_finish this quest. If not, abandon it|r
.collect 2842,1,2948,1 
.collect 1206,1 
.turnin 2948,2948,1 >> Turn in Gnome Improvement
.target Talvash del Kissel
.isOnQuest 2948
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
.turnin -2922,1 >> Turn in Save Techbot's Brain!
.target +Tinkmaster Overspark
.goto Ironforge,69.540,50.325
.turnin -2929,1 >> Turn in The Grand Betrayal
.target +High Tinker Mekkatorque
.goto Ironforge,68.743,48.969
.turnin -2930,1 >> Turn in Data Rescue
.target +Master Mechanic Castpipe
.goto Ironforge,69.823,48.101
.turnin -2924,1 >> Turn in Essential Artificials
.goto Ironforge,67.925,46.101
.target +Klockmort Spannerspan
step
.dungeon Gnomer
.abandon 2948 >> Abandon Gnome Improvement
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankwithdraw 2378,1130 >> Withdraw the following items from your bank:
>>|T133718:0|t[Skeleton Finger] (If you have any)
>>|T134799:0|t[Vial of Spider Venom] (If you have any)
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankdeposit 5849,5996 >> Deposit the following items into your bank:
>>|T132765:0|t[Crate of Crash Helmets] 
>>|T134797:0|t[Elixir of Water Breathing] (If you have them) 
.target Bailey Stonemantle
step << !Mage
#completewith Eye
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r
step << Mage
#completewith Eye
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City>> Teleport to Stormwind
step << Mage
#era
.isOnQuest 1078
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.goto Stormwind City,43.088,80.391
.turnin 1078 >> Turn in Retrieval for Mauren
.target Collin Mauren
step
.dungeon Gnomer
.goto StormwindClassic,55.511,12.502
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
.turnin 2928 >> Turn in Gyrodrillmatic Excavationators
.target Shoni the Shilent
.isQuestComplete 2928
step
#label BlessedArm
.goto Stormwind City,51.75,12.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
.turnin 322 >> Turn in Blessed Arm
.accept 325 >> Accept Armed and Ready
.target Grimand Elmore
.isQuestTurnedIn 324
step
#label Eye
.goto Stormwind City,39.60,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.turnin 293 >> Turn in Cleansing the Eye
.target Archbishop Benedictus
step
.goto Stormwind City,38.72,25.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
>>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_walks around through the Cathedral|r
.accept 1274 >> Accept The Missing Diplomat
.target Thomas
step
.goto Stormwind City,29.44,61.52
>>Click the |cRXP_PICK_Sealed Crate|r on the ground
.accept 74 >> Accept The Legend of Stalvan
step << !Mage
#era
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1078 >> Turn in Retrieval for Mauren
.isOnQuest 1078
.target Collin Mauren
step
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
.turnin 350 >> Turn in Look to an Old Friend
.accept 2745 >> Accept Infiltrating the Castle
.target Elling Trias
.isQuestTurnedIn 391
step
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
.isQuestTurnedIn 391
step
.goto StormwindClassic,69.205,14.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
.turnin 2745 >> Turn in Infiltrating the Castle
.accept 2746 >> Accept Items of Some Consequence
.target Tyrion
.isQuestTurnedIn 391
step
#requires Eye
.goto Stormwind City,78.30,25.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop DeLavey|r
.turnin 1274 >> Turn in The Missing Diplomat
.accept 1241 >> Accept The Missing Diplomat
.target Bishop DeLavey
step
.goto Stormwind City,73.17,78.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorgen|r
.turnin 1241 >> Turn in The Missing Diplomat
.accept 1242 >> Accept The Missing Diplomat
.target Jorgen
step
#completewith next
.goto Elwynn Forest,32.384,49.866,50 >> Exit Stormwind. Travel to Clara's Farm House in Elwynn Forest
.isQuestTurnedIn 391
step
#ah
>>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
>>|cRXP_WARN_If you still need|r |T132905:0|t[Silk Cloth] |cRXP_WARN_buy some from the Auction House|r
.complete 2746,2 
.goto Elwynn Forest,33.952,57.162
.complete 2746,1 
.isQuestTurnedIn 391
step
#ssf
>>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
.complete 2746,2 
.goto Elwynn Forest,33.952,57.162
.complete 2746,1 
.isQuestTurnedIn 391
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1242 >> Turn in The Missing Diplomat
.accept 1243 >> Accept The Missing Diplomat
.target Elling Trias
step
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
.isQuestTurnedIn 391
step
.goto StormwindClassic,69.205,14.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
>>|cRXP_WARN_Ensure your party has all turned in Items of Some Consequence before you accept The Attack!|r
>>|cRXP_WARN_Automatic quest accept has been turned off for this step. Note you may not be able to accept the quest if someone else is in the process of doing it|r
.turnin 2746 >> Turn in Items of Some Consequence
.accept 434,1 >> Accept The Attack!
.timer 124,The Attack! RP
.target Tyrion
.isQuestTurnedIn 391
step 
.goto StormwindClassic,68.024,14.075
>>|cRXP_WARN_Wait in the center of the courtyard for |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r to arrive. This takes roughly 2 minutes|r
>>Kill |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r
.complete 434,1 
.mob +Lord Gregor Lescovar
.complete 434,2 
.mob +Marzon the Silent Blade
.complete 434,3 
.isQuestTurnedIn 391
step
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
.turnin 434 >> Turn in The Attack!
.accept 394 >> Accept The Head of the Beast
.target Elling Trias
.isQuestTurnedIn 391
step
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
.isQuestTurnedIn 391
step
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 394 >> Turn in The Head of the Beast
.accept 395 >> Accept Brotherhood's End
.target Master Mathias Shaw
.isQuestTurnedIn 391
step
.goto StormwindClassic,49.194,30.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
.turnin 395 >> Turn in Brotherhood's End
.accept 396 >> Accept An Audience with the King
.target Baros Alexston
.isQuestTurnedIn 391
step
#completewith next
.goto StormwindClassic,70.347,27.208,20 >> Travel to the Stormwind Keep
.isQuestTurnedIn 391
step
.goto StormwindClassic,78.105,17.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
.turnin 396 >> Turn in An Audience with the King
.target Lady Katrana Prestor
.isQuestTurnedIn 391
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
+|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from the Auction House|r
>>|cRXP_WARN_Skip this step if you aren't able to get one|r
.bronzetube
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy 7|r |T134743:0|t[Jungle Remedy] |cRXP_BUY_from the Auction House for a quest later in Stranglethorn Vale|r
>>|cRXP_WARN_This is optional, you may also farm them from the mobs later|r
>>|cRXP_WARN_You may want to buy extra for yourself to use as it cures diseases and removes poisons|r << !Paladin
.collect 2633,7,204,1 
.target Auctioneer Jaxon
step
#label start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.goto Stormwind City,66.27,62.12
.fly Duskwood>> Fly to Duskwood
.target Dungar Longdrink
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
.vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
>>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r

.bronzetube
.target Herble Baubbletump
.isQuestAvailable 174
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
>>|cRXP_WARN_Skip this step if you haven't found a bronze tube|r
.accept 174 >> Accept Look To The Stars
.turnin 174 >> Turn in Look To The Stars
.target Viktori Prism'Antras
.itemcount 4371,1
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,81.46,59.02
>> Head south towards the chapel
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.accept 177 >> Accept Look To The Stars
.isQuestTurnedIn 174
.target Blind Mary
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 181 >> Accept Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.accept 173 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 58 >> Accept The Night Watch
.target Commander Althea Ebonlocke
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
.goto Duskwood,73.87,44.40
.home >> Set your Hearthstone to Darkshire
.target Innkeeper Trelayne
step
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.target Tavernkeep Smitts
.accept 159 >> Accept Juice Delivery
step
.goto Duskwood,72.55,33.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r
.turnin 1243 >> Turn in The Missing Diplomat
.accept 1244 >> Accept The Missing Diplomat
.target Watcher Backus
step
.goto Duskwood,66.0,44.6,60,0
.goto Duskwood,64.2,38.8,60,0
.goto Duskwood,60.8,37.4,60,0
.goto Duskwood,61.2,46.0,60,0
.goto Duskwood,67.6,46.6,60,0
.goto Duskwood,63.6,41.2
>>Kill |cRXP_ENEMY_Nightbane Shadow Weavers|r
.complete 173,1 
.mob Nightbane Shadow Weaver
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.turnin 173 >> Turn in Worgen in the Woods
.accept 221 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,63.8,51.8,60,0
.goto Duskwood,61.2,40.2,60,0
.goto Duskwood,65.2,51.6,60,0
.goto Duskwood,61.4,41.2
>>Kill |cRXP_ENEMY_Nightbane Dark Runners|r
>>|cRXP_ENEMY_Nightbane Dark Runners|r |cRXP_WARN_move very fast and have a larger than normal agro radius|r
.complete 221,1 
.mob Nightbane Dark Runner
step
#completewith next
.goto Elwynn Forest,84.60,69.37,100 >> Travel to the Eastvale Logging Camp
step
.goto Elwynn Forest,84.60,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
.turnin 74 >> Turn in The Legend of Stalvan
.accept 75 >> Accept The Legend of Stalvan
.target Marshal Haggard
step
.goto Elwynn Forest,85.70,69.53
>>Head upstairs in the House
>>Open |cRXP_PICK_Marshal Haggard's Chest|r. Loot it for |cRXP_LOOT_A Faded Journal Page|r
.complete 75,1 
step
.goto Elwynn Forest,84.60,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
.turnin 75 >> Turn in The Legend of Stalvan
.accept 78 >> Accept The Legend of Stalvan
.target Marshal Haggard
step
#completewith next
.goto Duskwood,28.10,31.46,100 >> Travel towards |cRXP_FRIENDLY_Abercrombie|r in Duskwood
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 159 >> Turn in Juice Delivery
.accept 133 >> Accept Ghoulish Effigy
.target Abercrombie
step
.goto Duskwood,24.26,32.90
>>Kill |cRXP_ENEMY_Plague Spreaders|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r
>>|cRXP_WARN_Other |cRXP_ENEMY_Ghouls|r may also drop |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r but focus on|r |cRXP_ENEMY_Plague Spreaders|r
.complete 58,1 
.mob +Plague Spreader
.complete 133,1 
.mob +Plague Spreader
.mob +Flesh Eater
.mob +Rotted One
.mob +Bone Chewer
.complete 101,1 
.mob +Plague Spreader
.mob +Flesh Eater
.mob +Rotted One
.mob +Bone Chewer
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 133 >> Turn in Ghoulish Effigy
.accept 134 >> Accept Ogre Thieves
.target Abercrombie
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 268 >> Turn in Return to Sven
.target Sven Yorgen
.accept 323 >> Accept Proving Your Worth
step
.goto Duskwood,16.01,38.79
>>Kill |cRXP_ENEMY_Skeletal Raiders|r, |cRXP_ENEMY_Skeletal Healers|r and |cRXP_ENEMY_Skeletal Warders|r
>>|cRXP_WARN_Enter the Dawning Wood Catacombs for the|r |cRXP_ENEMY_Skeletal Warders|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_a level 35 Elite patrols around the cemetery. Be cautious of him|r
.complete 323,1 
.mob +Skeletal Raider
.complete 323,2 
.mob +Skeletal Healer
.complete 323,3 
.mob +Skeletal Warder
.unitscan Mor'Ladim
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 323 >> Turn in Proving Your Worth
.target Sven Yorgen
.accept 269 >> Accept Seeking Wisdom
step
.goto Duskwood,23.926,72.075
>>Open the |cRXP_PICK_Defias Strongbox|r. Loot it for the |cRXP_LOOT_Defias Docket|r
.complete 1244,1 
step
.goto Duskwood,33.419,76.356
>>Loot |cRXP_LOOT_Abercrombie's Crate|r on the ground
.complete 134,1 
step
#completewith next
.goto Duskwood,34.63,77.87,20 >> Enter the Vul'Gol Ogre Cave
.isQuestTurnedIn 174
step
.goto Duskwood,37.98,79.90,30,0
.goto Duskwood,36.81,83.78
>>Kill |cRXP_ENEMY_Zzarc' Vul|r. Loot him for his |cRXP_LOOT_Monocle|r
>>|cRXP_ENEMY_Zzarc' Vul|r |cRXP_WARN_has 2 spawn points inside the Cave|r
.complete 181,1 
.mob Zzarc' Vul
.isQuestTurnedIn 174

step
#som
#completewith welcome
.goto Duskwood,44.7,88.3
.zone Stranglethorn Vale >> Head south to Stranglethorn Vale
step
#som
#completewith stvEnd
.goto Stranglethorn Vale,40.32,8.45,0
>> Look out for Private Thorsen's RP event while you quest. Guard him from the mobs that attack him, and accept his quest
>>He patrols down the road down the Rebel Camp every ~30 minutes
.target Private Thorsen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r and |cRXP_FRIENDLY_Lieutenant Doren|r
.accept 215 >> Accept Jungle Secrets
.target Lieutenant Doren
.turnin 215 >> Turn in Jungle Secrets

step
#label welcome
#som
.goto Stranglethorn Vale,35.66,10.52
.target Barnil Stonepot
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
.accept 583 >> Accept Welcome to the Jungle
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 583 >> Turn in Welcome to the Jungle
step
#som
.goto Stranglethorn Vale,35.61,10.61
.target Ajeck Rouack
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.accept 185 >> Accept Tiger Mastery
.target Sir S. J. Erlgadin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 190 >> Accept Panther Mastery
step
#som
#sticky
#label panthers
>>Kill |cRXP_ENEMY_Young Panthers|r
.goto Stranglethorn Vale,41.50,12.00
.complete 190,1 
.mob Young Panther
step
#som
>>Kill |cRXP_ENEMY_Young Tigers|r
.goto Stranglethorn Vale,35.40,12.50
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#som
#requires panthers
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 185 >> Turn in Tiger Mastery
.target Ajeck Rouack
.accept 186 >> Accept Tiger Mastery
.target Sir S. J. Erlgadin
.turnin 190 >> Turn in Panther Mastery

step
#som
#completewith note
#label stvEnd
.goto Duskwood,44.7,85.6
.zone Duskwood >> Head back to Duskwood

step
#completewith next
.goto Duskwood,31.6,59.4,0
.goto Duskwood,34.4,54.6,0
.goto Duskwood,28.6,49.4,0
.goto Duskwood,32.8,35.2,0
.goto Duskwood,23.6,36.6,0
>>Kill |cRXP_ENEMY_Black Widow Hatchlings|r and |cRXP_ENEMY_Carrion Recluses|r. Loot them for their |cRXP_LOOT_Spider Venom|r
.complete 101,2 
.mob Black Widow Hatchling
.mob Carrion Recluse
step
.goto Duskwood,22.95,44.75,80,0
.goto Duskwood,20.39,47.02,70,0
.goto Duskwood,15.07,46.91,70,0
.goto Duskwood,15.65,42.81,70,0
.goto Duskwood,18.30,47.75,70,0
.goto Duskwood,22.11,46.93,70,0
.goto Duskwood,23.68,42.13,70,0
.goto Duskwood,21.21,47.07
>>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Fingers|r
.complete 101,3 
.mob Skeletal Fiend
.mob Skeletal Horror
step
.goto Duskwood,31.6,59.4,0
.goto Duskwood,34.4,54.6,0
.goto Duskwood,28.6,49.4,0
.goto Duskwood,32.8,35.2,0
.goto Duskwood,31.6,59.4,50,0
.goto Duskwood,34.4,54.6,50,0
.goto Duskwood,28.6,49.4,50,0
.goto Duskwood,32.8,35.2,50,0
.goto Duskwood,23.6,36.6
>>Kill |cRXP_ENEMY_Black Widow Hatchlings|r and |cRXP_ENEMY_Carrion Recluses|r. Loot them for their |cRXP_LOOT_Spider Venom|r
.complete 101,2 
.mob Black Widow Hatchling
.mob Carrion Recluse
step
#label note
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 134 >> Turn in Ogre Thieves
.accept 160 >> Accept Note to the Mayor
.target Abercrombie
step
>>Click |cRXP_PICK_A Weathered Grave|r
.goto Duskwood,17.72,29.07
.accept 225 >> Accept The Weathered Grave
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 325 >> Turn in Armed and Ready
.target Sven Yorgen
.isOnQuest 325
step
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.accept 55 >> Accept Morbent Fel
.target Sven Yorgen
.isQuestTurnedIn 325
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <32,1 
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <32,1 
step
#som
.hs >> Hearth back to Darkshire
>>Buy food/water if needed
step
#completewith next
#era
.hs >>Hearth to Darkshire
step
#completewith next
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
.vendor >>|cRXP_BUY_Buy food/water. You'll need at least 2 1/2 stacks for the upcoming segment|r
.target Innkeeper Trelayne
step
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 78 >> Turn in The Legend of Stalvan
.accept 79 >> Accept The Legend of Stalvan
.target Tavernkeep Smitts
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 58 >> Turn in The Night Watch
.turnin 79 >> Turn in The Legend of Stalvan
.accept 80 >> Accept The Legend of Stalvan
.target Commander Althea Ebonlocke
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 80 >> Turn in The Legend of Stalvan
.accept 97 >> Accept The Legend of Stalvan
.target Clerk Daltry
step
.goto Duskwood,72.64,47.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
.turnin 225 >> Turn in The Weathered Grave
.accept 227 >> Accept Morgan Ladimore
.target Sirra Von'Indi
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 160 >> Turn in Note to the Mayor
.accept 251 >> Accept Translate Abercrombie's Note
.target Lord Ello Ebonlocke
step
.goto Duskwood,72.64,47.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
.turnin 251 >> Turn in Translate Abercrombie's Note
.target Sirra Von'Indi
.accept 401 >> Accept Wait for Sirra to Finish
.turnin 401 >> Turn in Wait for Sirra to Finish
.accept 252 >> Accept Translation to Ello
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 252 >> Turn in Translation to Ello
.target Lord Ello Ebonlocke
step
.group
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.accept 253 >> Accept Bride of the Embalmer
.target Lord Ello Ebonlocke
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 97 >> Turn in The Legend of Stalvan
.accept 98 >> Accept The Legend of Stalvan
.turnin 227 >> Turn in Morgan Ladimore
.accept 228 >> Accept Mor'Ladim
.target Commander Althea Ebonlocke
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.turnin 221 >> Turn in Worgen in the Woods
.accept 222 >> Accept Worgen in the Woods
.target Calor
step << Hunter
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avette Fellwood|r
.goto Duskwood,73.28,44.76
.vendor 228 >>|cRXP_BUY_Stock up on|r |T132382:0|t[Razor Arrows]
.target Avette Fellwood
step
#label exit1
.goto Duskwood,72.55,33.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r
.turnin 1244 >> Turn in The Missing Diplomat
.accept 1245 >> Accept The Missing Diplomat
.target Watcher Backus
step
#sticky
#label FlowerX
.goto Duskwood,78.348,35.952
>>Loot the |cRXP_LOOT_Tear of Tilloa|r on the ground
.complete 335,1 
step
.goto Duskwood,77.30,36.20
>> Kill |cRXP_ENEMY_Stalvan Mistmantle|r. Loot him for his |cRXP_LOOT_Family Ring|r
>>|cRXP_ENEMY_Stalvan Mistmantle|r |cRXP_WARN_can hit quite hard. Kite him back to town and get help from the |cRXP_FRIENDLY_Watchers|r if needed|r
.complete 98,1 
.mob Stalvan Mistmantle
step
#requires FlowerX
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 98 >> Turn in The Legend of Stalvan
.turnin 101 >> Turn in The Totem of Infliction
.target Madame Eva
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 181 >> Turn in Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,62.33,81.77
>> Kill |cRXP_ENEMY_Nightbane Vile Fangs|r and |cRXP_ENEMY_Nightbane Tainted Ones|r
>>|cRXP_WARN_Be careful as all the mobs in the area respawn at once after a few minutes|r
.complete 222,1 
.mob +Nightbane Vile Fang
.complete 222,2 
.mob +Nightbane Tainted One
step
#era
.goto Duskwood,62.33,81.77
.goto Duskwood,61.30,74.36,0
.goto Duskwood,65.10,73.91,0
.goto Duskwood,64.14,68.49,0
>>Kill |cRXP_ENEMY_Nightbane Worgens|r. Loot them for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]
>>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
.collect 2794,1,337
.use 2794
.accept 337 >> Accept An Old History Book
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
#era
.goto Duskwood,62.33,81.77
.xp 32 >> Grind until you are anywhere between level 31 & 75% and level 32 << !Druid
.xp 32 >> Grind until you are anywhere between 31 & 85% and 32 << Druid
>>Kill |cRXP_ENEMY_Nightbane Worgens|r until your Hearthstone cooldown is <25 minutes
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step << skip 
#era
#completewith next
.goto Duskwood,62.33,81.77
+Kill |cRXP_ENEMY_Nightbane Worgens|r until your Hearthstone cooldown is <25 minutes
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
.group 2
.goto Duskwood,28.864,30.765
>>Click |cRXP_PICK_Eliza's Grave Dirt|r to summon |cRXP_ENEMY_Eliza|r
>>Kill |cRXP_ENEMY_Eliza|r. Loot her for the |cRXP_LOOT_Embalmer's Heart|r
>>|cRXP_ENEMY_Eliza|r |cRXP_WARN_will cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] |cRXP_WARN_along with summoning multiple|r |cRXP_ENEMY_Guards|r
>>|cRXP_WARN_You can avoid dealing with |cRXP_ENEMY_Eliza's Guards|r by using the Wagon to jump on top of |cRXP_FRIENDLY_Abercrombie's|r Hut|r << Hunter/Mage/Warlock/Priest
>>|cRXP_WARN_You can evade |cRXP_ENEMY_Eliza's Guards|r by using the Wagon to jump on top of Abercrombie's Hut. |cRXP_ENEMY_Eliza|r will continue to cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_at you if you do this while she's alive|r << Warrior/Rogue/Druid/Paladin
.complete 253,1 
.mob Eliza
step
.group 3
#completewith next
>>Clear your way to the 2nd floor of the house
.cast 8913 >>|cRXP_WARN_Equip|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_in your off-hand|r
>>|cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
>>|cRXP_WARN_Remember to equip your weapon/off-hand slot after weakening him|r
.use 7297
step
.group 3
.goto Duskwood,16.90,33.40
>>Kill |cRXP_ENEMY_Morbent Fel|r
>>|cRXP_WARN_This quest can be difficult. You may skip this step and come back at a higher level if you wish|r
.complete 55,1 
.use 7297
.mob Morbent Fel
.isOnQuest 55
step
.group
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 55 >> Turn in Morbent Fel
.isQuestComplete 55
.target Sven Yorgen
step
.group 3
.goto Duskwood,19.59,37.28
>>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
>>|cRXP_WARN_This quest can be difficult. You may skip this step and come back at a higher level if you wish|r
.complete 228,1 
.unitscan Mor'Ladim

step << Warrior/Rogue
#som
.goto Duskwood,19.59,37.28
.xp 33+29640 >> Grind mobs in the area to 29640+/58600xp
step << Warrior/Rogue
#som
.goto Duskwood,19.59,37.28
.xp 33+29640 >> Grind mobs in the area to 29640+/58600xp
step << Priest/Paladin/Warlock
#som
.goto Duskwood,19.59,37.28
.xp 33+24240 >> Grind mobs in the area to 24240+/58600xp
step
#som
#label DuskwoodEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.goto Westfall,56.55,52.63
.fly Duskwood >> Go to Sentinel Hill in Westfall. Fly to Duskwood
.target Thor

step
#era
#completewith next
.goto Duskwood,44.598,87.565,0
.goto Stranglethorn Vale,40.635,3.514
.zone Stranglethorn Vale >> Travel to Stranglethorn Vale
step
#era
#completewith stvEnd2
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
>>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
>>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
.accept 215 >> Accept Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.accept 583 >> Accept Welcome to the Jungle
.target +Barnil Stonepot
.goto Stranglethorn Vale,35.662,10.529
.turnin 583 >> Turn in Welcome to the Jungle
.goto Stranglethorn Vale,35.658,10.808
.target +Hemet Nesingwary
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 185 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.accept 190 >> Accept Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target +Sir S. J. Erlgadin
step
#era
#completewith next
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
#era
.goto Stranglethorn Vale,35.40,12.50,50,0
.goto Stranglethorn Vale,33.30,11.90,50,0
.goto Stranglethorn Vale,31.76,9.00,50,0
.goto Stranglethorn Vale,35.40,12.50
>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#era
.goto Stranglethorn Vale,41.50,12.00,50,0
.goto Stranglethorn Vale,42.74,12.40,50,0
.goto Stranglethorn Vale,41.43,9.77,50,0
.goto Stranglethorn Vale,40.67,11.65,50,0
.goto Stranglethorn Vale,41.50,12.00
>>Kill |cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
#era
#label stvEnd2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
>>|cRXP_WARN_Don't accept the follow ups yet|r
.turnin 185 >> Turn in Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.turnin 190 >> Turn in Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target +Sir S. J. Erlgadin
step << Druid
#era
.goto Stranglethorn Vale,33.43,11.85
.xp 32 >> Grind to 32 
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
>>|cRXP_WARN_Don't accept the follow up yet|r
.turnin 215 >> Turn in Jungle Secrets
.isOnQuest 215
.target Lieutenant Doren
step << Druid
#era
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <34,1 
step << Druid
#era
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <34,1 
step
#era
#completewith next
.hs >> Hearth to Darkshire
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
#completewith WorgenWoods
.goto Duskwood,73.59,46.89,150 >> Travel to Darkshire
step
.group
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 228 >> Turn in Mor'Ladim
.isQuestComplete 228
.target Commander Althea Ebonlocke
step
.group
.goto Duskwood,73.59,46.89
.isQuestTurnedIn 228
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 229 >> Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
.group
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 253 >> Turn in Bride of the Embalmer
.isQuestComplete 253
.target Lord Ello Ebonlocke
step
.destroy 3248 >>Throw away the |T134939:0|t[Translated Letter from The Embalmer] you no longer need it
step
.group
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
>>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols around in Darkshire|r
.turnin 229 >> Turn in The Daughter Who Lived
.accept 231 >> Accept A Daughter's Love
.isQuestTurnedIn 228
.target Watcher Ladimore
step
#label WorgenWoods
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.turnin 222 >> Turn in Worgen in the Woods
.accept 223 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,75.32,49.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
.turnin 223 >> Turn in Worgen in the Woods
.target Jonathan Carevin
step << Warrior/Paladin
.isOnQuest 231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.goto Duskwood,77.49,44.28
.fly Westfall>> Fly to Westfall
.target Felicia Maline
step << Warrior/Paladin
.isOnQuest 231
>>Click |cRXP_PICK_A Weathered Grave|r
.goto Duskwood,17.72,29.07
.turnin 231 >> Turn in A Daughter's Love
step << Warrior/Paladin
.isQuestTurnedIn 231
.destroy 2154 >> Delete the |T133741:0|t[The Story of Morgan Ladimore]
step << Warrior/Paladin
.isQuestTurnedIn 231
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Stormwind >> Fly to Stormwind
.target Thor
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.goto Duskwood,77.49,44.28
.fly Stormwind>> Fly to Stormwind
.target Felicia Maline
.zoneskip Duskwood,1
step << Mage
#era
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
#era
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << Mage
#som
.zone Stormwind City >> Teleport to Stormwind
step << Mage
#som
#completewith next
#level 34
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
.target Larimaine Purdue

step << Mage
.goto Stormwind City,39.843,81.446
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
.accept 690 >> Accept Malin's Request
.target Archmage Malin
step << Mage
.goto Stormwind City,40.633,91.867
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r
.accept 1301 >> Accept James Hyal
.target Connor Rivers
step << Mage
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 2784 >> Withdraw the following items from your bank:
>>|T134187:0|t[Musquash Root]
.target Newton Burnside
step << Mage
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy 4|r |T134577:0|t[Lesser Bloodstone Ore] |cRXP_BUY_to complete an optional quest coming up in Stranglethorn Vale|r
>>|cRXP_WARN_Skip this step if you cannot aquire them|r
.collect 4278,4,627,1 
.target Auctioneer Jaxon
step << Mage
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Mage
.goto Stormwind City,26.439,78.629
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
.turnin 335 >> Turn in A Noble Brew
.accept 336 >> Accept A Noble Brew
.target Zardeth of the Black Claw
step << !Mage
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy 4|r |T134577:0|t[Lesser Bloodstone Ore] |cRXP_BUY_to complete an optional quest coming up in Stranglethorn Vale|r
>>|cRXP_WARN_Skip this step if you cannot aquire them|r
.collect 4278,4,627,1 
.target Auctioneer Jaxon
step << !Mage
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 2784 >> Withdraw the following items from your bank:
>>|T134187:0|t[Musquash Root]
.target Newton Burnside
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1245 >> Turn in The Missing Diplomat
.accept 1246 >> Accept The Missing Diplomat
.target Elling Trias
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Warrior
.goto Stormwind City,78.680,45.802
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu Shen|r
.accept 1718 >> Accept The Islander
.target Wu Shen
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step
#completewith next
.goto Stormwind City,70.549,44.887
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dashel Stonefist|r
>>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_will become hostile after accepting the follow up quest. Defeat him|r
.turnin 1246 >> Turn in The Missing Diplomat
.accept 1447 >> Accept The Missing Diplomat
.target Dashel Stonefist
step
.goto Stormwind City,70.549,44.887
>>Defeat |cRXP_ENEMY_Dashel Stonefist|r
>>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_will also attack with 2 |cRXP_ENEMY_Old Town Thugs|r. Ignore them and focus on|r |cRXP_ENEMY_Dashel Stonefist|r
.complete 1447,1 
.mob Dashel Stonefist
step
.goto Stormwind City,70.549,44.887
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dashel Stonefist|r
.turnin 1447 >> Turn in The Missing Diplomat
.accept 1247 >> Accept The Missing Diplomat
.target Dashel Stonefist
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1247 >> Turn in The Missing Diplomat
.accept 1248 >> Accept The Missing Diplomat
.target Elling Trias
step << !Mage
.goto Stormwind City,39.843,81.446
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
.accept 690 >> Accept Malin's Request
.target Archmage Malin
step << !Mage
.goto Stormwind City,40.633,91.867
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r
.accept 1301 >> Accept James Hyal
.target Connor Rivers
step << !Mage
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << !Mage
.goto Stormwind City,26.439,78.629
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
.turnin 335 >> Turn in A Noble Brew
.accept 336 >> Accept A Noble Brew
.target Zardeth of the Black Claw
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto Stormwind City,25.255,78.591
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.accept 1798 >> Accept Seeking Strahad
.target Gakin the Darkbinder
step << Warlock
.goto Stormwind City,25.283,78.223
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demisette Cloyce|r
>>|cRXP_WARN_Skip this step if you picked up the same quest from Ironforge earlier|r
.accept 4738 >> Accept In Search of Menara Voidrender
.target Demisette Cloyce
step
.goto Stormwind City,39.108,27.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop Farthing|r
.turnin 269 >> Turn in Seeking Wisdom
.target Bishop Farthing
.accept 270 >> Accept The Doomed Fleet
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step
.goto Stormwind City,75.226,31.670
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Baurles K. Wishock|r
.turnin 336 >> Turn in A Noble Brew
.target Lord Baurles K. Wishock
step
.isOnQuest 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 337 >> Turn in An Old History Book
.target Milton Sheaf
step
.isQuestTurnedIn 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
.accept 538 >> Accept Southshore
.target Milton Sheaf
step << Mage
#som
#completewith FlytoSouthshoreA
#level 34
.trainer >> Teleport back to the Stormwind Trainer and Train your level 34 class spells if you didn't earlier
.target Elsharin
.target Jennea Cannon
.target Larimaine Purdue

step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r and |cRXP_FRIENDLY_Zggi|r
.accept 397 >> Accept You Have Served Us Well
.goto Stormwind City,26.439,78.629
.turnin 397 >> Turn in You Have Served Us Well
.goto Stormwind City,26.537,78.660
.target Zardeth of the Black Claw
.target Zggi
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << !Mage
#completewith FlytoSouthshoreA
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r

step
#completewith murlocs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.50,47.70
.fly Wetlands>> Fly to Wetlands
.target Gryth Thurden
.zoneskip Wetlands
step
.goto Wetlands,10.585,60.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 270 >> Turn in The Doomed Fleet
.accept 321 >>Accept Lightforge Iron
.target Glorin Steelbrow
step
>>Click the |cRXP_PICK_Waterlogged Chest|r
.goto Wetlands,12.10,64.19
.turnin 321 >>Turn in Lightforge Iron
.accept 324 >>Accept The Lost Ingots
step
#label murlocs
.goto Wetlands,12.6,65.2,60,0
.goto Wetlands,10.2,71.0,60,0
.goto Wetlands,7.2,72.6,60,0
.goto Wetlands,12.6,65.2
>>Kill |cRXP_ENEMY_Bluegill Raiders|r. Loot them for |cRXP_LOOT_Ingots|r
.complete 324,1 
.mob Bluegill Raider
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 324 >>Turn in The Lost Ingots
.accept 322 >>Accept Blessed Arm
.target Glorin Steelbrow
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r or |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.50,47.70,-1
.goto Wetlands,9.49,59.70,-1
.fly Southshore>> Fly to Southshore
.target Gryth Thurden
.target Shellei Brondir
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 32-33 Hillsbrad/Arathi I
#next 33-34 Thousand Needles
step
#completewith start
>>|cRXP_WARN_The |cRXP_ENEMY_Shadowy Assassin|r attack on Southshore is a random event|r
>>If you ever see a |cRXP_ENEMY_Shadowy Assassin|r in Southshore, kill them. Loot them for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] to start the quest|r
>>|cRXP_WARN_Skip this step if you don't see the event|r
.collect 3668,1,522
.use 3668
.accept 522 >> Accept Assassin's Contract
.unitscan Shadowy Assassin
step
.isOnQuest 538
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 538 >> Turn in Southshore
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,50.344,59.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
.accept 659 >> Accept Hints of a New Plague?
.target Phin Odelic
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.accept 536 >> Accept Down the Coast
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Anderson|r
.home >> Set your Hearthstone to Southshore
.target Innkeeper Anderson
step
.goto Hillsbrad Foothills,48.8,64.4,50,0
.goto Hillsbrad Foothills,45.8,63.6,50,0
.goto Hillsbrad Foothills,44.14,67.45,50,0
.goto Hillsbrad Foothills,40.51,69.30,50,0
.goto Hillsbrad Foothills,36.09,69.50,50,0
.goto Hillsbrad Foothills,44.69,67.24
>>Kill |cRXP_ENEMY_Torn Fin Tidehunters|r and |cRXP_ENEMY_Torn Fin Oracles|r
.complete 536,1 
.mob +Torn Fin Tidehunter
.complete 536,2 
.mob +Torn Fin Oracle
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 536 >> Turn in Down the Coast
.accept 559 >> Accept Farren's Proof
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,48.8,64.4,50,0
.goto Hillsbrad Foothills,45.8,63.6,50,0
.goto Hillsbrad Foothills,44.14,67.45,50,0
.goto Hillsbrad Foothills,40.51,69.30,50,0
.goto Hillsbrad Foothills,36.09,69.50,50,0
.goto Hillsbrad Foothills,44.69,67.24,50,0
.goto Hillsbrad Foothills,33.19,69.10,50,0
.goto Hillsbrad Foothills,31.47,72.51,50,0
.goto Hillsbrad Foothills,28.81,73.18,50,0
.goto Hillsbrad Foothills,24.84,70.21,50,0
.goto Hillsbrad Foothills,33.19,69.10
>>Kill |cRXP_ENEMY_Torn Fin Tidehunters|r, |cRXP_ENEMY_Torn Fin Oracles|r, |cRXP_ENEMY_Torn Fin Coastrunners|r and |cRXP_ENEMY_Torn Fin Muckdwellers|r. Loot them for their |cRXP_LOOT_Heads|r
.complete 559,1 
.mob Torn Fin Muckdweller
.mob Torn Fin Coastrunner
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 559 >> Turn in Farren's Proof
.accept 560 >> Accept Farren's Proof
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 560 >> Turn in Farren's Proof
.accept 561 >> Accept Farren's Proof
.target Marshal Redpath
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 561 >> Turn in Farren's Proof
.accept 562 >> Accept Stormwind Ho!
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,52.97,64.67,60,0
.goto Hillsbrad Foothills,55.32,63.35,60,0
.goto Hillsbrad Foothills,58.35,66.37,60,0
.goto Hillsbrad Foothills,59.55,73.43,60,0
.goto Hillsbrad Foothills,56.97,67.01
>>Kill |cRXP_ENEMY_Daggerspine Sirens|r and |cRXP_ENEMY_Daggerspine Shorehunters|r
>>|cRXP_WARN_You may need to swim out in the water for them|r
.complete 562,1 
.mob +Daggerspine Shorehunter
.complete 562,2 
.mob +Daggerspine Siren
step
#label start
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 562 >> Turn in Stormwind Ho!
.accept 563 >> Accept Reassignment
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
>>|cRXP_WARN_Don't accept the follow up|r
.turnin 522 >> Turn in Assassin's Contract
.isOnQuest 522
.target Magistrate Henry Maleb
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> Fly to Arathi Highlands
.target Darla Harris
step
#era/som
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.accept 681 >> Accept Northfold Manor
.target Captain Nials
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 690 >> Turn in Malin's Request
.isOnQuest 690
.target Skuerto
step
.solo
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >> Turn in Hints of a New Plague?
.target Quae
step
.group
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >> Turn in Hints of a New Plague?
.accept 658 >> Accept Hints of a New Plague?
.target Quae
step
#completewith Northfold
.goto Arathi Highlands,25.68,59.45,15,0
.goto Arathi Highlands,23.76,60.26,15,0
.goto Arathi Highlands,23.76,58.39,35,0
.goto Arathi Highlands,26.966,58.834
>>|cRXP_WARN_Travel to Stromgarde Keep to further train your|r |T135966:0|t[First Aid]
>>|cRXP_WARN_Follow the Arrow very closely once you are inside, as there are a lot of Elite mobs in the Keep|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deneb Walker|r
>>|cRXP_BUY_Buy the|r |T133740:0|t[Expert First Aid - Under Wraps]|cRXP_BUY_,|r |T133735:0|t[Manual: Heavy Silk Bandage] |cRXP_BUY_and|r |T133735:0|t[Manual: Mageweave Bandage] |cRXP_BUY_from him|r
>>|cRXP_FRIENDLY_Deneb Walker|r |cRXP_WARN_also has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_WARN_and|r |T134851:0|t|T134831:0|t[Potions] |cRXP_WARN_as well which you should buy|r << !Warrior !Rogue
>>|cRXP_FRIENDLY_Deneb Walker|r |cRXP_WARN_also has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_WARN_and|r |T134831:0|t[Potions] |cRXP_WARN_as well which you should buy|r << Warrior Rogue
.collect 16084,1 
.collect 16112,1 
.collect 16113,1 
.skill firstaid,151,1 
.target Deneb Walker

step
.group 2
#completewith courier << !Hunter
#completewith courierhunter << Hunter
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot her for her |cRXP_LOOT_Sealed Folder|r
>>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
>>|cRXP_WARN_If you can't see them in Arathi, look for them in Hillsbrad after finishing Northfold Manor|r << Hunter
.complete 658,1 
.unitscan Forsaken Courier
step
#label Northfold
.goto Arathi Highlands,33.26,32.60,50,0
.goto Arathi Highlands,30.38,30.68,50,0
.goto Arathi Highlands,31.46,25.36,50,0
.goto Arathi Highlands,33.87,29.13,50,0
.goto Arathi Highlands,31.13,29.47
>>Kill |cRXP_ENEMY_Syndicate Mercenaries|r and |cRXP_ENEMY_Syndicate Highwaymen|r
>>|cRXP_WARN_Be aware |cRXP_ENEMY_Syndicate Highwaymen|r are in|r |T132320:0|t[Stealth] |cRXP_WARN_and can be found around the perimiter of Northfold Manor|r
>>|cRXP_WARN_Cast|r |T136090:0|t[Perception] |cRXP_WARN_to help spot|r |cRXP_ENEMY_Syndicate Highwaymen|r << Human
.complete 681,1 
.mob +Syndicate Highwayman
.complete 681,2 
.mob +Syndicate Mercenary
step << Hunter
#completewith next
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r
step << Hunter
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley|r
.goto Hillsbrad Foothills,50.415,58.803
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Plains Creeper|r shortly
.target Wesley
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> Fly to Arathi Highlands
.target Darla Harris
step
#label courier
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 681 >> Turn in Northfold Manor
.target Captain Nials
step << Hunter
#label courierhunter
.goto Arathi Highlands,41.6,47.8,0
.goto Arathi Highlands,41.8,58.6,0
.goto Arathi Highlands,49.0,50.2,0
.goto Arathi Highlands,41.6,47.8,40,0
.goto Arathi Highlands,41.8,58.6,40,0
.goto Arathi Highlands,49.0,50.2,40,0
.goto Arathi Highlands,48.0,58.6
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find a |cRXP_ENEMY_Plains Creeper|r. Some of their locations are marked on your map|r
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Plains Creeper|r to tame it|r 
.train 17265 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 5)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.unitscan Plains Creeper
step
.group
.isQuestComplete 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
>>|cRXP_WARN_Don't go out of your way to find the |cRXP_ENEMY_Forsaken Courier|r. You can skip this step and finish it later|r
.turnin 658 >> Turn in Hints of a New Plague?
.target Quae
step << !Hunter
#completewith next
.hs >> Hearth to Southshore if you are far away from the Flight Path
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r or |cRXP_FRIENDLY_Cedrik Prose|r << !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r << Hunter
.goto Hillsbrad Foothills,49.338,52.272,-1
.goto Arathi Highlands,45.73,46.09,-1
.fly Wetlands >> Fly to Wetlands
.target Darla Harris << !Hunter
.target Cedrik Prose
step << Hunter
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethaine Flinthammer|r
.goto Wetlands,10.527,59.737
.stable >> Withdraw your pet from the Stable
.target Bethaine Flinthammer
step
.goto Wetlands,10.828,60.399
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent Hyal|r
.turnin 1301 >> Turn in James Hyal
.accept 1302 >> Accept James Hyal
.target Vincent Hyal
step
#completewith next
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
>>|cRXP_WARN_Accepting this quest will make |cRXP_ENEMY_Tapoke "Slim" Jahn|r by the Inn entrance|r |T132320:0|t[Stealth] |cRXP_WARN_and run away outside|r
.turnin 1248 >> Turn in The Missing Diplomat
.accept 1249 >> Accept The Missing Diplomat
.target Mikhail
.mob Tapoke "Slim" Jahn
step
.goto Wetlands,10.795,59.616
>>|cRXP_WARN_Quickly run outside!|r
>>|cRXP_WARN_Defeat |cRXP_ENEMY_Tapoke "Slim" Jahn|r. |cRXP_ENEMY_Slim's Friend|r will run away once |cRXP_ENEMY_Tapoke "Slim" Jahn|r submits|r
>>|cRXP_WARN_Use any Crowd Control (CC) on |cRXP_ENEMY_Slim's Friend|r if needed|r
.complete 1249,1 
.mob Tapoke "Slim" Jahn
step
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1249 >> Turn in The Missing Diplomat
.target Mikhail
step
.goto Wetlands,10.545,60.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
.accept 1250 >> Accept The Missing Diplomat
.target Tapoke "Slim" Jahn
step
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1250 >> Turn in The Missing Diplomat
.accept 1264 >> Accept The Missing Diplomat
.target Mikhail
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 33-34 Thousand Needles
#next 34-35 Stranglethorn Vale I
step
#completewith next
.goto Wetlands,7.270,62.527,25 >> Travel to the Menethil Harbor Dock
step
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >> Take the boat to Theramore
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.300
.fp Theramore >> Get the Theramore Flight Path
.target Baldruc
step
.goto Dustwallow Marsh,66.156,46.067
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Byron|r
.accept 1282 >> Accept They Call Him Smiling Jim
.target Guard Byron
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Janene|r
.goto Dustwallow Marsh,66.587,45.223
.home >> Set your Hearthstone to Theramore
.target Innkeeper Janene
step
.goto Dustwallow Marsh,66.459,45.147
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
.accept 1135 >> Accept Highperch Venom
.target Fiora Longears
step
#label JamesHyjal
.goto Dustwallow Marsh,67.877,48.239
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Lendry|r upstairs in the Keep
.turnin 1302 >> Turn in James Hyal
.target Clerk Lendry
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Samaul|r and |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1264 >> Turn in The Missing Diplomat
.accept 1265 >> Accept The Missing Diplomat
.target +Commander Samaul
.goto Dustwallow Marsh,67.923,48.540
.turnin 1282 >> Turn in They Call Him Smiling Jim
.goto Dustwallow Marsh,68.212,48.620
.target +Captain Garran Vimes
step
.goto Dustwallow Marsh,59.72,41.17 >> Travel to the Sentry Point Tower
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
>>|cRXP_WARN_Stay in |cRXP_FRIENDLY_Archmage Tervosh's|r Line of Sight as he will buff you with|r |T135880:0|t[Proudmoore's Defense] |cRXP_WARN_which gives 10 Stamina and 40 Armor|r
.complete 1265,1 
.goto Dustwallow Marsh,59.652,41.243
.turnin 1265 >> Turn in The Missing Diplomat
.goto Dustwallow Marsh,59.652,41.243
.target Archmage Tervosh
step
#optional
#sticky
.abandon 1266 >> Abandon The Missing Diplomat. You will complete this quest later
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.300
.fly Ratchet >> Fly to Ratchet
.target Baldruc
.zoneskip The Barrens
.zoneskip Thousand Needles
step
.isOnQuest 1179
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankwithdraw 5849 >> Withdraw the following items from your bank:
>>|T132765:0|t[Crate of Crash Helmets]
.target Fuzruckle
.target Zikkel
step
.isOnQuest 1179
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankdeposit 3721 >> Deposit the following items into your bank:
>>|T133461:0|t[Farren's Report] 
.target Fuzruckle
.target Zikkel
step
.dungeon RFK
.goto The Barrens,62.370,37.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
.accept 1221 >> Accept Blueleaf Tubers
.target Mebok Mizzyrix
step
.dungeon RFK
>>Loot the |cRXP_LOOT_Snufflenose Command Stick|r, |cRXP_LOOT_Snufflenose Owner's Manual|r and |cRXP_LOOT_Crate With Holes|r next to |cRXP_FRIENDLY_Mebok|r
.collect 6684,1,1221,1 
.goto The Barrens,62.340,37.607
.collect 5897,1,1221,1 
.goto The Barrens,62.332,37.623
.collect 5880,1,1221,1 
.goto The Barrens,62.323,37.620
step
#completewith next
.goto The Barrens,53.40,52.07,200,0
.goto The Barrens,51.0,79.0,50 >> Travel south to the Shady Rest Inn at the Dustwallow Marsh border
step
>>Click the |cRXP_PICK_Hoofprints|r on the ground
>>Click the |cRXP_PICK_Black Shield|r hanging on the fireplace
>>Click the |cRXP_PICK_Theramore Guard Badge|r on the wooden plank
.accept 1284 >> Accept Suspicious Hoofprints
.goto Dustwallow Marsh,29.705,47.645
.accept 1253 >> Accept The Black Shield
.goto Dustwallow Marsh,29.631,48.606
.accept 1252 >> Accept Lieutenant Paval Reethe
.goto Dustwallow Marsh,29.832,48.243
step
.goto Dustwallow Marsh,35.154,38.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
.accept 1177 >> Accept Hungry
.target Mudcrush Durtfeet
step
#completewith next
.goto The Barrens,44.213,91.217,0
.goto Thousand Needles,32.09,22.33
.zone Thousand Needles >> Travel to Thousand Needles
step
.goto Thousand Needles,30.725,24.346
>>Loot |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] on the ground
.use 5791 >>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] to start the quest|r
.accept 1100 >> Accept Lonebrow's Journal
step
#completewith next
.goto Thousand Needles,8.456,17.953,0
.goto Feralas,89.50,45.85,50 >> Travel to Thalanaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
.goto Feralas,89.497,45.853
.fp Thalanaar >> Get the Thalanaar flight path
.target Thyssiana
step
.dungeon RFK
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 1100 >> Turn in Lonebrow's Journal
.accept 1101 >> Accept The Crone of the Kraul
.target Falfindel Waywarder
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 1100 >> Turn in Lonebrow's Journal
.target Falfindel Waywarder
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 1059 >> Turn in Reclaiming the Charred Vale
.target Falfindel Waywarder
.isOnQuest 1059
step
.dungeon RFK
#completewith next
.goto Thousand Needles,10.88,33.24,0
.goto Thousand Needles,11.01,38.31,0
.goto Thousand Needles,13.27,38.47,0
.goto Thousand Needles,17.46,41.62,0
.zone The Barrens >> Grind |cRXP_ENEMY_Highperch Wyverns|r, |cRXP_ENEMY_Highperch Consorts|r and |cRXP_ENEMY_Highperch Patriarchs|r while looking for a group for Razorfen Kraul
.mob Highperch Patriarch
.mob Highperch Wyvern
.mob Highperch Consort
step
.dungeon RFK
.goto The Barrens,43.46,90.18,0
.goto The Barrens,43.46,90.18,40,0
.goto 1414,50.877,70.339
.subzone 491,2 >> Enter Razorfen Kraul
step
.dungeon RFK
>>Kill |cRXP_ENEMY_Charlga Razorflank|r. Loot her for |cRXP_LOOT_Razorflank's Heart|r
.complete 1101,1 
.isOnQuest 1101
step
.dungeon RFK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heralath Fallowbrook|r and |cRXP_FRIENDLY_Willix the Importer|r
.accept 1142 >> Accept Mortality Wanes
.accept 1144 >> Accept Willix the Importer
.target Heralath Fallowbrook
.target Willix the Importer
step
.dungeon RFK
#completewith next
>>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
>>Escort |cRXP_FRIENDLY_Willix the Importer|r through Razorfen Krual
>>|cRXP_WARN_Ensure you stay close to |cRXP_FRIENDLY_Willix|r otherwise the quest may not complete!|r
.complete 1144,1 
.isOnQuest 1144
step
.dungeon RFK
#completewith next
>>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willix the Importer|r
.turnin 1144 >> Turn in Willix the Importer
.target Willix the Importer
.isQuestComplete 1144
step
.dungeon RFK
>>|cRXP_WARN_When at the start of the instance, take the first left. Once you reach the Vine at the end, drop down below to where you see |cRXP_ENEMY_Agam'ars|r below|r
>>|cRXP_WARN_Kill the |cRXP_ENEMY_Agam'ars|r below with your party to create a clear space|r
>>|cRXP_WARN_Use the|r |T132765:0|t[Crate With Holes] |cRXP_WARN_to summon a |cRXP_FRIENDLY_Snufflenose Gopher|r at this location. Finding the correct spot to summon it can be finicky|r
>>|cRXP_WARN_Use the|r |T135474:0|t[Snufflenose Command Stick] |cRXP_WARN_to action the |cRXP_FRIENDLY_Gopher|r to dig up|r |cRXP_LOOT_Blueleaf Tubers|r
>>|cRXP_WARN_Loot the |cRXP_LOOT_Blueleaf Tuber|r once it has dug it up|r
>>|cRXP_WARN_Continue to use the|r |T135474:0|t[Snufflenose Command Stick] |cRXP_WARN_on it again so it digs up another one. Repeat this process until you have 6|r |cRXP_LOOT_Blueleaf Tubers|r
>>|cRXP_WARN_If your |cRXP_FRIENDLY_Gopher|r despawns, use the|r |T132765:0|t[Crate With Holes] |cRXP_WARN_to summon another. Note it only has 5 charges|r
.complete 1221,1 
.use 5880 
.use 6684 
.target Snufflenose Gopher
.isOnQuest 1221
step
.dungeon RFK
>>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 1101 >> Turn in The Crone of the Kraul
.target Falfindel Waywarder
.isQuestComplete 1101
step
.isOnQuest 1135
.goto Thousand Needles,13.136,34.221,40,0
.goto Thousand Needles,10.88,33.24,50,0
.goto Thousand Needles,11.01,38.31,50,0
.goto Thousand Needles,13.27,38.47,50,0
.goto Thousand Needles,17.46,41.62,50,0
.goto Thousand Needles,11.07,35.59
>>Kill |cRXP_ENEMY_Highperch Wyverns|r, |cRXP_ENEMY_Highperch Consorts|r and |cRXP_ENEMY_Highperch Patriarchs|r. Loot them for their |cRXP_LOOT_Venom Sacs|r
.complete 1135,1 
.mob Highperch Patriarch
.mob Highperch Wyvern
.mob Highperch Consort
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> Travel to the Mirage Raceway
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
>>|cRXP_WARN_Don't accept the other quests yet|r
.accept 1110 >> Accept Rocket Car Parts
.target Kravel Koalbeard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
.accept 1104 >> Accept Salt Flat Venom
.target +Fizzle Brassbolts
.goto Thousand Needles,78.064,77.126 
.turnin 1179 >> Turn in The Brassbolts Brothers
.accept 1105 >> Accept Hardened Shells
.goto Thousand Needles,78.143,77.120 
.target +Wizzle Brassbolts
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.accept 1176 >> Accept Load Lightening
.target Pozzik
step
.goto Thousand Needles,81.635,77.953
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
.accept 1175 >> Accept A Bump in the Road
.target Trackmaster Zherin
step
#som
#label sflats
#sticky
>>Run in circles around the race track killing mobs (|cRXP_ENEMY_Vultures, Turtles, Basilisks, Scorpions|r) and looting car parts on the ground
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.goto Thousand Needles,82.6,54.8,0
.collect 3712,10,555,1 
.goto Thousand Needles,82.6,54.8,0
.complete 1175,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1104,1 
.goto Thousand Needles,71.8,73.4,0
.complete 1110,1 
.mob Salt Flats Vulture
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk

step
>>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
>>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
>>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r and |cRXP_LOOT_Turtle Meat|r
>>|cRXP_WARN_Don't go out of your way to collect all|r |cRXP_LOOT_Turtle Meat|r
>>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
>>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
.complete 1176,1 
.mob +Salt Flats Scavenger
.mob +Salt Flats Vulture
.goto Thousand Needles,87.5,65.6,0
.collect 3712,10,555,1,1 
.mob +Sparkleshell Snapper
.mob +Sparkleshell Borer
.mob +Sparkleshell Tortoise
.complete 1105,1 
.mob +Sparkleshell Snapper
.mob +Sparkleshell Borer
.mob +Sparkleshell Tortoise
.goto Thousand Needles,82.6,54.8,0
.complete 1104,1 
.mob +Scorpid Reaver
.mob +Scorpid Terror
.goto Thousand Needles,71.8,73.4,0
.complete 1175,1 
.mob +Saltstone Basilisk
.goto Thousand Needles,73.5,59.9,0
.complete 1175,2 
.mob +Saltstone Crystalhide
.goto Thousand Needles,77.65,87.34,0
.complete 1175,3 
.mob +Saltstone Gazer
.goto Thousand Needles,77.65,87.34,0
.complete 1110,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
.goto Thousand Needles,81.635,77.953
.turnin 1175 >> Turn in A Bump in the Road
.target Trackmaster Zherin
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1176 >> Turn in Load Lightening
.accept 1178 >> Accept Goblin Sponsorship
.target Pozzik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
.turnin 1104 >> Turn in Salt Flat Venom
.target +Fizzle Brassbolts
.goto Thousand Needles,78.064,77.126 
.turnin 1105 >> Turn in Hardened Shells
.goto Thousand Needles,78.143,77.120 
.target +Wizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1110 >> Turn in Rocket Car Parts
.accept 1111 >> Accept Wharfmaster Dizzywig
.accept 5762 >> Accept Hemet Nesingwary
.target Kravel Koalbeard
step
#completewith next
.goto Tanaris,51.01,29.35,150 >> Travel to Tanaris
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fp Tanaris>> Get the Tanaris Flight Path
.target Bera Stonehammer
step
#completewith DWallow
.hs >> Hearth to Theramore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.isOnQuest 1135
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
.goto Dustwallow Marsh,66.459,45.147
.turnin 1135 >> Turn in Highperch Venom
.target Fiora Longears
step
#completewith next
.goto Dustwallow Marsh,68.23,48.82,25 >> Travel upstairs in the Keep
step
#label DWallow
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1252 >> Turn in Lieutenant Paval Reethe
.accept 1259 >> Accept Lieutenant Paval Reethe
.turnin 1253 >> Turn in The Black Shield
.accept 1319 >> Accept The Black Shield
.turnin 1284 >> Turn in Suspicious Hoofprints
.target Captain Garran Vimes
step
.goto Dustwallow Marsh,68.04,48.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adjutant Tesoran|r
.turnin 1259 >> Turn in Lieutenant Paval Reethe
.accept 1285 >> Accept Daelin's Men
.target Adjutant Tesoran
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1285 >> Turn in Daelin's Men
.target Captain Garran Vimes
step
.goto Dustwallow Marsh,64.756,50.426
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caz Twosprocket|r
.turnin 1319 >> Turn in The Black Shield
.accept 1320 >> Accept The Black Shield
.target Caz Twosprocket
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1320 >> Turn in The Black Shield
.target Captain Garran Vimes
step
.dungeon RFK
.isQuestComplete 1142
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.301
.fly Darnassus >> Fly to Darnassus
.target Baldruc
.zoneskip Dustwallow Marsh,1
step
.dungeon RFK
.isQuestComplete 1142
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step
.dungeon RFK
.isQuestComplete 1142
.goto Darnassus,62.21,57.23,10,0
.goto Darnassus,66.02,59.39,10,0
.goto Darnassus,69.529,67.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treshala Fallowbrook|r upstairs
.turnin 1142 >> Turn in Mortality Wanes
.target Treshala Fallowbrook
step
.dungeon RFK
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal back to Rut'theran Village
.zoneskip Darnassus,1
step
.dungeon RFK
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Ratchet>> Fly to Ratchet
.target Vesprystus
.zoneskip Teldrassil,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.301
.fly Ratchet>> Fly to Ratchet
.target Baldruc
.zoneskip Dustwallow Marsh,1
step
.dungeon RFK
.goto The Barrens,62.370,37.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
.turnin 1221 >> Turn in Blueleaf Tubers
.target Mebok Mizzyrix
.isQuestComplete 1221
step << Warrior
#completewith next
.goto The Barrens,65.83,48.17,55,0
.goto The Barrens,68.34,48.84,50 >> Travel to Fray Island
step << Warrior
.goto The Barrens,68.615,49.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
.turnin 1718 >> Turn in The Islander
.accept 1719 >> Accept The Affray
.target Klannoc Macleod
step << Warrior
.goto The Barrens,68.606,48.720
>>|cRXP_WARN_Start the affray by stepping on the grate|r
>>Kill |cRXP_ENEMY_Affray Challengers|r until |cRXP_ENEMY_Big Will|r appears
>>Kill |cRXP_ENEMY_Big Will|r
.complete 1719,2 
.complete 1719,1 
.mob Affray Challenger
.mob Big Will
step << Warrior
.goto The Barrens,68.615,49.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
.turnin 1719 >> Turn in The Affray
.accept 1791 >> Accept The Windwatcher
.target Klannoc Macleod
step
.goto The Barrens,62.680,36.234
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
.turnin 1178 >> Turn in Goblin Sponsorship
.accept 1180 >> Accept Goblin Sponsorship
.target Gazlowe
step << Warlock
.isOnQuest 4736
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.goto The Barrens,62.509,35.449
.turnin 4736 >> Turn in In Search of Menara Voidrender
.target Menara Voidrender
step << Warlock
.isOnQuest 4738
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.goto The Barrens,62.509,35.449
.turnin 4738 >> Turn in In Search of Menara Voidrender
.target Menara Voidrender
step << Warlock
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 1798 >> Turn in Seeking Strahad
.accept 1758 >> Accept Tome of the Cabal
.target Strahad Farsan
step
.goto The Barrens,63.352,38.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
.turnin 1111 >> Turn in Wharfmaster Dizzywig
.accept 1112 >> Accept Parts for Kravel
.turnin 1039 >> Turn in The Barrens Port
.accept 1040 >> Accept Passage to Booty Bay
.target Wharfmaster Dizzywig
step
.goto The Barrens,63.677,38.618
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
.zone Stranglethorn Vale >> Take the boat to Booty Bay
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 34-35 Stranglethorn Vale I
#next 35-36 Hillsbrad/Arathi II
step
.goto Stranglethorn Vale,26.345,73.564
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
.turnin 1180 >>Turn in Goblin Sponsorship
.accept 1181 >>Accept Goblin Sponsorship
.target Wharfmaster Lozgil
step
.goto Stranglethorn Vale,27.600,77.481
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scooty|r
.turnin 2904 >> Turn in A Fine Mess
.isQuestComplete 2904
.target Scooty
step
.isQuestTurnedIn 1038
.goto Stranglethorn Vale,27.368,74.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
.turnin 1040 >>Turn in Passage to Booty Bay
.accept 1041 >>Accept The Caravan Road
.target Caravaneer Ruzzgot
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 605 >>Accept Singing Blue Shards
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.04,77.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.home >>Set your Hearthstone to Booty Bay
.target Innkeeper Skindle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
.accept 213 >> Accept Hostile Takeover
.target +Kebok
.goto Stranglethorn Vale,27.000,77.124
.accept 198 >>Accept Supplies to Private Thorsen
.accept 201 >>Accept Investigate the Camp
.accept 616 >>Accept The Haunted Isle
.goto Stranglethorn Vale,26.943,77.207
.target +Krazek
step
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 616 >>Turn in The Haunted Isle
.accept 578 >>Accept The Stone of the Tides
.turnin 1181 >>Turn in Goblin Sponsorship
.accept 1182 >>Accept Goblin Sponsorship
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankdeposit 5800 >> Deposit the following items into your bank:
>>|T132763:0|t[Kravel's Parts] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.accept 575 >>Accept Supply and Demand
.target Drizzlik
step
.destroy 3898 >>Throw away the |T134939:0|t[Library Scrip]
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >> Fly to Westfall
.target Gyll
.subzoneskip 35,1 
step
#completewith ThorsenR
.zone Duskwood >> Travel to Duskwood
step
.isOnQuest 231
>>Click |cRXP_PICK_A Weathered Grave|r
.goto Duskwood,17.72,29.07
.turnin 231 >> Turn in A Daughter's Love
step
.isQuestTurnedIn 231
.destroy 2154 >> Delete the |T133741:0|t[The Story of Morgan Ladimore]
step
#completewith ThorsenR
.goto Duskwood,44.598,87.565,50 >> Travel to northern Stranglethorn Vale
step
#som
#completewith ThorsenR
.goto Duskwood,44.7,88.3
.zone Stranglethorn Vale >> Head south to Stranglethorn Vale
step
#completewith Fern
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
>>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
>>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
.accept 215 >> Accept Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#label ThorsenR
.goto Stranglethorn Vale,37.980,3.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r at the Rebel Camp
>>|cRXP_WARN_If |cRXP_FRIENDLY_Private Thorsen|r isn't at the Rebel Camp he may be in progress for his special event. Skip this step. Look for him down the path if you havn't accepted his quest yet|r
.turnin 198 >>Turn in Supplies to Private Thorsen
.target Private Thorsen
step
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
.accept 203 >>Accept The Second Rebellion
.accept 204 >>Accept Bad Medicine
.target Sergeant Yohwa
step << skip 
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.accept 200 >> Accept Bookie Herod
.target Lieutenant Doren
step
#completewith Fern
>>Kill |cRXP_ENEMY_Stone Maw Basilisks|r and |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
>>|cRXP_ENEMY_Stone Maw Basilisks|r |cRXP_WARN_and|r |cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
.goto Stranglethorn Vale,24.4,17.2,0
.goto Stranglethorn Vale,48.48,8.85,0
.complete 605,1 
.mob Stone Maw Basilisk
.mob Crystal Spine Basilisk
step
#completewith Fern
.goto Stranglethorn Vale,32.6,8.8,0
.goto Stranglethorn Vale,36.8,10.6,0
.goto Stranglethorn Vale,40.8,13.8,0
>>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
.goto Stranglethorn Vale,35.658,10.808
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 5762 >> Turn in Hemet Nesingwary
step
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.accept 186 >> Accept Tiger Mastery
.target Ajeck Rouack
step
#completewith next
.goto Stranglethorn Vale,44.93,10.25,0
>>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
>>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
>>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
.complete 203,1 
.mob +Kurzen Jungle Fighter
.complete 204,1 
.mob +Kurzen Medicine Man
step
#label Fern
.goto Stranglethorn Vale,44.086,9.538
>>Open the |cRXP_PICK_Kurzen Supplies|r. Loot it for the |cRXP_LOOT_Venom Fern Extract|r
.complete 204,2 
step
.goto Stranglethorn Vale,44.93,10.25
>>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
>>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
>>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
.complete 203,1 
.mob +Kurzen Jungle Fighter
.complete 204,1 
.mob +Kurzen Medicine Man
step
#completewith next
>>Kill |cRXP_ENEMY_Stone Maw Basilisks|r and |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
>>|cRXP_ENEMY_Stone Maw Basilisks|r |cRXP_WARN_and|r |cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
.goto Stranglethorn Vale,24.4,17.2,0
.goto Stranglethorn Vale,48.48,8.85,0
.complete 605,1 
.mob Stone Maw Basilisk
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,46.75,15.81
>>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
.complete 186,1 
.mob Stranglethorn Tiger
step
#completewith RebelCampTurnins
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
>>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
>>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
.accept 215 >> Accept Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
.goto Stranglethorn Vale,37.980,3.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r
>>|cRXP_WARN_You may need to wait a few minutes for |cRXP_FRIENDLY_Private Thorsen|r to spawn|r
.turnin 198 >> Turn in Supplies to Private Thorsen
.target Private Thorsen
step
#label RebelCampTurnins
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
.turnin 203 >> Turn in The Second Rebellion
.turnin 204 >> Turn in Bad Medicine
.target Sergeant Yohwa
step
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
.accept 210 >> Accept Krazek's Cookery
.target Corporal Kaleb
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
>>|cRXP_WARN_Don't accept the follow up yet|r
.turnin 215 >> Turn in Jungle Secrets
.isOnQuest 215
.target Lieutenant Doren
step
#completewith HemetTurnins
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
>>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
>>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
.accept 215 >> Accept Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#completewith next
.goto Stranglethorn Vale,32.6,8.8,0
.goto Stranglethorn Vale,36.8,10.6,0
.goto Stranglethorn Vale,40.8,13.8,0
>>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#label HemetTurnins
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 194 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
.turnin 186 >> Turn in Tiger Mastery
.accept 187 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.accept 191 >> Accept Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target +Sir S. J. Erlgadin
step
.goto Stranglethorn Vale,32.6,8.8,60,0
.goto Stranglethorn Vale,36.8,10.6,60,0
.goto Stranglethorn Vale,40.8,13.8,60,0
.goto Stranglethorn Vale,32.6,8.8,60,0
.goto Stranglethorn Vale,36.8,10.6,60,0
.goto Stranglethorn Vale,40.8,13.8,60,0
.goto Stranglethorn Vale,36.8,10.6
>>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith next
>>Kill |cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
step
.goto Stranglethorn Vale,31.52,16.61,60,0
.goto Stranglethorn Vale,31.91,19.93,60,0
.goto Stranglethorn Vale,34.36,18.58,60,0
.goto Stranglethorn Vale,31.52,16.61,60,0
.goto Stranglethorn Vale,31.91,19.93
>>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
.goto Stranglethorn Vale,30.4,12.4,60,0
.goto Stranglethorn Vale,29.4,8.8,60,0
.goto Stranglethorn Vale,28.2,12.0,60,0
.goto Stranglethorn Vale,28.2,16.4,60,0
.goto Stranglethorn Vale,29.8,11.2
>>Kill |cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
step
#completewith next
.goto Stranglethorn Vale,27.35,18.52,0
.goto Stranglethorn Vale,25.53,17.73,0
.goto Stranglethorn Vale,23.25,17.21,0
>>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
>>|cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
.complete 605,1 
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,27.61,15.39,60,0
.goto Stranglethorn Vale,25.91,16.33,60,0
.goto Stranglethorn Vale,24.24,15.84,60,0
.goto Stranglethorn Vale,27.16,16.06
>>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
.complete 194,1 
.mob Stranglethorn Raptor
step
.goto Stranglethorn Vale,27.35,18.52,50,0
.goto Stranglethorn Vale,25.53,17.73,50,0
.goto Stranglethorn Vale,23.25,17.21,50,0
.goto Stranglethorn Vale,25.53,17.73
>>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
>>|cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
.complete 605,1 
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,21.580,21.842
.goto Stranglethorn Vale,21.580,21.842 >> Travel to the Haunted Island
.complete 578,1 
step
#completewith next
.goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 194 >> Turn in Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
.turnin 187 >> Turn in Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.turnin 191 >> Turn in Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target +Sir S. J. Erlgadin
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
>>|cRXP_WARN_Don't accept the follow up yet|r
.turnin 215 >> Turn in Jungle Secrets
.isOnQuest 215
.target Lieutenant Doren
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step
#completewith next
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 605 >> Turn in Singing Blue Shards
.target Crank Fizzlebub
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
.accept 189 >> Accept Bloodscalp Ears
.target +Kebok
.goto Stranglethorn Vale,27.000,77.124
.turnin 201 >> Turn in Investigate the Camp
.turnin 210 >> Turn in Krazek's Cookery
.goto Stranglethorn Vale,26.943,77.207
.target +Krazek
step
#optional
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.accept 627 >> Accept Favor for Krazek
.turnin 627 >> Turn in Favor for Krazek
.accept 622 >> Accept Return to Corporal Kaleb
.itemcount 4278,4 
.target Krazek
step
#optional
.isQuestTurnedIn 627
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.accept 622 >> Accept Return to Corporal Kaleb
.target Krazek
step
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 578 >> Turn in The Stone of the Tides
.accept 601 >> Accept Water Elementals
.target Baron Revilgaz
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 575 >> Turn in Supply and Demand
.accept 577 >> Accept Some Assembly Required
.target Drizzlik
step
#era
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Duskwood >> Fly to Duskwood
.target Gyll
step
#era
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
.goto Duskwood,72.6,46.8
.turnin 1041 >> Turn in The Caravan Road
.accept 1042 >> Accept The Carevin Family
.target Clerk Daltry
step
#era
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
.goto Duskwood,75.2,48.8
.turnin 1042 >> Turn in The Carevin Family
.accept 1043 >> Accept The Scythe of Elune
.target Jonathan Carevin
step
#completewith next
.goto Duskwood,73.20,76.19,30 >> Travel to Roland's Doom
.isQuestTurnedIn 1040
step
#era
.isQuestTurnedIn 1040
>>Click the |cRXP_PICK_Mound of Dirt|r at the back of the Cave
.goto Duskwood,73.527,79.143
.complete 1043,1 
step
#completewith next
.goto Duskwood,75.2,48.8,100 >> Travel to Darkshire
.isQuestTurnedIn 1040
step
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
.goto Duskwood,75.2,48.8
.turnin 1043 >> Turn in The Scythe of Elune
.accept 1044 >> Accept Answered Questions
.target Jonathan Carevin
step << Mage
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << !Mage
.goto Stranglethorn Vale,27.530,77.787
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.fly Stormwind>> Fly to Stormwind
.target Gyll
.zoneskip Stranglethorn Vale,1
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.goto Duskwood,77.486,44.287
.fly Stormwind>> Fly to Stormwind
.target Felicia Maline
.zoneskip Duskwood,1
step << !Mage
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.53,77.78
.fly Stormwind>> Fly to Stormwind
.target Gyll
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 3721 >> Withdraw the following items from your bank:
>>|T133461:0|t[Farren's Report] 
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Deposit the following items into your bank:
>>Deposit any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
.target Newton Burnside
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step
#completewith next
.goto Stormwind City,71.68,25.60,40 >> Travel to the Stormwind Keep
step
.goto Stormwind City,77.30,17.18,25,0
.goto Stormwind City,72.571,15.888
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Major Samuelson|r
.turnin 563 >> Turn in Reassignment
.target Major Samuelson
step
.isOnQuest 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 337 >> Turn in An Old History Book
.target Milton Sheaf
step
.isQuestTurnedIn 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
.accept 538 >> Accept Southshore
.target Milton Sheaf
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step
#label BlessedArm
.goto Stormwind City,51.75,12.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
.turnin 322 >> Turn in Blessed Arm
.accept 325 >> Accept Armed and Ready
.target Grimand Elmore
.isQuestTurnedIn 324
step << !Mage
#completewith ReclaimersDesolace
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r

step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Teleport to Ironforge
step
#label ReclaimersDesolace
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
>>|cRXP_FRIENDLY_Roetten Stonehammer|r |cRXP_WARN_patrols the Hall of Explorers|r
.accept 1453 >> Accept Reclaimers' Business in Desolace
.target Roetten Stonehammer
step << Warlock
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
.turnin 1758 >> Turn in Tome of the Cabal
.accept 1802 >> Accept Tome of the Cabal
.target Krom Stoutarm
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus] |cRXP_BUY_or|r |T136221:0|t[Voidwalker]
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.trainer >> Train your class spells
.target Briarthorn
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_and a|r |T132913:0|t[Bolt of Woolen Cloth] |cRXP_BUY_to complete an optional quest coming up in Hillsbrad Foothills|r
>>|cRXP_WARN_You may also craft the|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_with Leatherworking|r
>>|cRXP_WARN_Skip this step if you cannot aquire them|r
.collect 3719,1,565,1 
.collect 2997,1,565,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
.skill leatherworking,<150,1
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_and a|r |T132913:0|t[Bolt of Woolen Cloth] |cRXP_BUY_to complete an optional quest coming up in Hillsbrad Foothills|r
>>|cRXP_WARN_Skip this step if you cannot aquire them|r
.collect 3719,1,565,1 
.collect 2997,1,565,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
.skill leatherworking,150,1
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 35-36 Hillsbrad/Arathi II
#next 36-37 Desolace
step
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth|r
.fly Southshore >> Fly to Southshore
.target Gryth Thurden
.zoneskip Alterac Mountains
.zoneskip Hillsbrad Foothills
.zoneskip Arathi Highlands
step
#completewith LeaveSS
>>|cRXP_WARN_The |cRXP_ENEMY_Shadowy Assassin|r attack on Southshore is a random event|r
>>If you ever see a |cRXP_ENEMY_Shadowy Assassin|r in Southshore, kill them. Loot them for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] to start the quest|r
>>|cRXP_WARN_Skip this step if you don't see the event|r
.collect 3668,1,522
.use 3668
.accept 522 >> Accept Assassin's Contract
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
>>|cRXP_BUY_Buy 1|r |T134059:0|t[Soothing Spice] |cRXP_BUY_from him|r
.collect 3713,1,555,1 
.target Micha Yance
step
.goto Hillsbrad Foothills,52.421,55.964
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darren Malvew|r
.accept 564 >> Accept Costly Menace
.target Darren Malvew
step
.goto Hillsbrad Foothills,51.885,58.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
.accept 555 >> Accept Soothing Turtle Bisque
.target Chef Jessen
step
.isQuestComplete 555
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
.goto Hillsbrad Foothills,51.885,58.679
.turnin 555 >> Turn in Soothing Turtle Bisque
.target Chef Jessen
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.accept 500 >> Accept Crushridge Bounty
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
>>|cRXP_WARN_Don't accept the follow up|r
.turnin 522 >> Turn in Assassin's Contract
.isOnQuest 522
.target Magistrate Henry Maleb
step
#label LeaveSS
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 505 >> Accept Syndicate Assassins
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,49.431,55.534
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartolo Ginsetti|r
>>Skip this step if you don't have a |T132913:0|t[Bolt of Woolen Cloth] and |T133759:0|t[Hillman's Cloak]
.accept 565 >> Accept Bartolo's Yeti Fur Cloak
.itemcount 3719,1 
.itemcount 2997,1 
.target Bartolo Ginsetti
step << Warlock
#completewith next
.goto Hillsbrad Foothills,27.783,72.789,70 >> Travel to the Western Strand
step << Warlock
.goto Hillsbrad Foothills,27.783,72.789
>>Open the |cRXP_PICK_Tome of the Cabal|r. Loot it for the |cRXP_LOOT_Moldy Tome|r
.complete 1802,1 
step
.isOnQuest 689,565
#completewith AlteracGranite
.goto Hillsbrad Foothills,45.46,31.25,40 >> Enter the Darrow Hill Yeti Cave
step
#completewith next
.isOnQuest 565
>>Kill |cRXP_ENEMY_Yeti's|r. Loot them for their |cRXP_LOOT_Fur|r
>>|cRXP_WARN_Only complete this if you managed to acquire a|r |T132913:0|t[Bolt of Woolen Cloth] |cRXP_WARN_and|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_earlier|r
.complete 565,4 
.mob Cave Yeti
.mob Ferocious Yeti
.mob Mountain Yeti
.mob Giant Yeti
step
#label AlteracGranite
.isOnQuest 689
.goto Hillsbrad Foothills,44.36,26.48,50,0
.goto Hillsbrad Foothills,42.13,32.80,50,0
.goto Hillsbrad Foothills,44.49,29.74
>>Loot the |cRXP_LOOT_Alterac Granite|r on the ground
>>|cRXP_LOOT_Alterac Granite|r |cRXP_WARN_spawns throughout the entire Cave|r
.complete 689,1 
step
.isOnQuest 565
.goto Hillsbrad Foothills,44.36,26.48,50,0
.goto Hillsbrad Foothills,42.13,32.80,50,0
.goto Hillsbrad Foothills,44.49,29.74
.goto Alterac Mountains,41.6,65.0,0
.goto Alterac Mountains,36.6,70.6,0
.goto Alterac Mountains,31.2,52.8,0
>>Kill |cRXP_ENEMY_Yeti's|r. Loot them for their |cRXP_LOOT_Fur|r
>>|cRXP_WARN_If all of the |cRXP_ENEMY_Yeti's|r are dead inside of the cave you may kill the |cRXP_ENEMY_Yeti's|r to the north around Alterac Mountains as well|r
>>|cRXP_WARN_Only complete this if you managed to acquire a|r |T132913:0|t[Bolt of Woolen Cloth] |cRXP_WARN_and|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_earlier|r
.complete 565,4 
.mob Cave Yeti
.mob Ferocious Yeti
.mob Mountain Yeti
.mob Giant Yeti
step
#completewith FinishSyndicate
.goto Alterac Mountains,30.92,84.58,0,0
>>Kill |cRXP_ENEMY_Mountain Lions|r and |cRXP_ENEMY_Hulking Mountain Lions|r
.complete 564,1 
.mob +Mountain Lion
.complete 564,2 
.mob +Hulking Mountain Lion
step
#completewith next
>>Kill |cRXP_ENEMY_Syndicate Thieves|r and |cRXP_ENEMY_Syndicate Footpads|r
.complete 505,1 
.mob +Syndicate Footpad
.complete 505,2 
.mob +Syndicate Thief
step
.goto Alterac Mountains,58.317,67.951
>>Click the |cRXP_PICK_Syndicate Documents|r on the table
.accept 510 >> Accept Foreboding Plans
.accept 511 >> Accept Encrypted Letter
step
#label FinishSyndicate
>>Kill |cRXP_ENEMY_Syndicate Thieves|r and |cRXP_ENEMY_Syndicate Footpads|r
.goto Alterac Mountains,58.31,67.92,90,0
.goto Alterac Mountains,48.0,82.0,90,0
.goto Alterac Mountains,58.31,67.92
.goto Alterac Mountains,48.0,82.0,0
.complete 505,1 
.mob +Syndicate Footpad
.complete 505,2 
.mob +Syndicate Thief
step
.goto Alterac Mountains,48.01,77.01,65,0
.goto Alterac Mountains,44.03,78.36,65,0
.goto Alterac Mountains,38.54,87.49,65,0
.goto Alterac Mountains,38.78,91.07,65,0
.goto Alterac Mountains,33.67,83.36,65,0
.goto Alterac Mountains,30.68,85.06,65,0
.goto Alterac Mountains,38.78,91.07
>>Kill |cRXP_ENEMY_Mountain Lions|r and |cRXP_ENEMY_Hulking Mountain Lions|r
.complete 564,1 
.mob +Mountain Lion
.complete 564,2 
.mob +Hulking Mountain Lion
step
.goto Alterac Mountains,46.26,60.57,60,0
.goto Alterac Mountains,49.69,55.07,60,0
.goto Alterac Mountains,54.53,53.42,60,0
.goto Alterac Mountains,50.00,55.96
>>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for their |cRXP_LOOT_Knucklebones|r
.complete 500,1 
.mob Crushridge Ogre
.mob Crushridge Brute
step
.goto Hillsbrad Foothills,69.30,12.40
>>Kill |cRXP_ENEMY_Snapjaws|r. Loot them for their |cRXP_LOOT_Turtle Meat|r
>>|cRXP_WARN_Go up and down along the River until you've completed it|r
.collect 3712,10,555,1
.mob Snapjaw
step << Warrior
.goto Alterac Mountains,80.499,66.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1791 >>Turn in The Windwatcher
.accept 1712 >>Accept Cyclonian
.target Bath'rah the Windwatcher
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.goto Western Plaguelands,42.924,85.061
.fp Chillwind>> Get the Western Plaguelands Flight Path
.target Bibilfaz Featherwhistle
step
#completewith letter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.goto Western Plaguelands,42.924,85.061
.fly Southshore>> Fly to Southshore
.target Bibilfaz Featherwhistle
step
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
>>|cRXP_BUY_Buy 1|r |T132912:0|t[Fine Thread] |cRXP_BUY_from him|r
>>|cRXP_WARN_Skip this step if you havn't completed the other objectives of the quest Bartolo's Yeti Fur Cloak|r
.collect 2321,1,565,1 
.itemcount 2997,1 
.itemcount 3719,1 
.itemcount 3720,10 
.target Micha Yance
step
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
>>|cRXP_BUY_Buy 1|r |T134059:0|t[Soothing Spice] |cRXP_BUY_from him|r
.collect 3713,1,555,1 
.target Micha Yance
step
.isQuestComplete 565
.goto Hillsbrad Foothills,49.431,55.534
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartolo Ginsetti|r
>>Skip this step if you don't have |T133759:0|t[Hillman's Cloak] and a |T132913:0|t[Bolt of Woolen Cloth]
.turnin 565 >> Turn in Bartolo's Yeti Fur Cloak
.target Bartolo Ginsetti
step
#label letter
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 511 >> Turn in Encrypted Letter
.accept 514 >> Accept Letter to Stormpike
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,51.885,58.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
.turnin 555 >> Turn in Soothing Turtle Bisque
.target Chef Jessen
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 500 >> Turn in Crushridge Bounty
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 505 >> Turn in Syndicate Assassins
.turnin 510 >> Turn in Foreboding Plans
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,52.421,55.964
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darren Malvew|r
.turnin 564 >> Turn in Costly Menace
.target Darren Malvew
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> Fly to Arathi Highlands
.target Darla Harris
.zoneskip Arathi Highlands
step
.abandon 565 >> Abandon Bartolo's Yeti Fur Cloak
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.accept 691 >> Accept Worth Its Weight in Gold
.target Apprentice Kryten
step
>>Kill the |cRXP_ENEMY_Witherbarks|r. Loot them for their |cRXP_LOOT_Witherbark Tusks|r
>>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r. Loot them for their |cRXP_LOOT_Medicine Pouches|r
>>Kill |cRXP_ENEMY_Witherbark Shadow Hunters|r. Loot them for their |cRXP_LOOT_Shadow Hunter Knife|r
>>|cRXP_ENEMY_Witherbark Shadow Hunters|r |cRXP_WARN_are only found inside the Cave|r
.complete 691,1 
.mob +Witherbark Shadowcaster
.mob +Witherbark Troll
.mob +Witherbark Witch Doctor
.mob +Witherbark Shadow Hunter
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
.complete 691,2 
.mob +Witherbark Witch Doctor
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
.complete 691,3 
.goto Arathi Highlands,68.38,75.92,30,0
.goto Arathi Highlands,68.20,79.47
.mob +Witherbark Shadow Hunter
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.turnin 691 >> Turn in Worth Its Weight in Gold
.target Apprentice Kryten
step << Mage
#completewith next
.goto Arathi Highlands,45.73,46.09
.zone Ironforge >> Teleport to Ironforge
step << !Mage
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.goto Arathi Highlands,45.73,46.09
.fly Ironforge >>Fly to Ironforge
.target Cedrik Prose
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.goto Ironforge,74.645,11.742
.turnin 514 >>Turn in Letter to Stormpike
.target Prospector Stormpike
step
.isQuestComplete 689
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.goto Ironforge,39.03,88.05
.turnin 689 >>Turn in A King's Tribute
.timer 75,Marblesten RP
.target Grand Mason Marblesten
step
.isQuestTurnedIn 689
>>|cRXP_WARN_Wait out the RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.goto Ironforge,39.03,88.05
.accept 700 >>Accept A King's Tribute
.target Grand Mason Marblesten
step << !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.goto Ironforge,35.90,60.17
.bankwithdraw 5996 >> Withdraw the following items from your bank:
>>|T134797:0|t[Elixir of Water Breathing] (If you have one)
.target Bailey Stonemantle
step << !Warlock
#ah
#completewith next
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_from the Auction House|r
.collect 5996,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
.isQuestTurnedIn 689
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.goto Ironforge,39.09,56.19
.turnin 700 >>Turn in A King's Tribute
.target King Magni Bronzebeard

]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 36-37 Desolace
#next 37-38 Stranglethorn Vale II
step << Mage
#completewith next
.goto Ironforge,55.506,47.746
.zone Darnassus >> Teleport to Darnassus
step << !Mage
#completewith DesolaceArrive
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth|r
.fly Wetlands >> Fly to Wetlands
.target Gryth Thurden
step << !Mage
.goto Wetlands,7.10,57.96,30,0
.goto Wetlands,4.61,57.26,15 >> Travel to the Menethil Harbor docks
.zone Darkshore >> Take the boat to Darkshore
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Darkshore|r
.isOnQuest 1044,1453 
step << !Mage
.goto Darkshore,36.71,44.98,10,0
.goto Darkshore,36.34,45.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Teldrassil >>Fly to Teldrassil
.isOnQuest 1044
.target Caylais Moonfeather
step << !Mage
#completewith DesolaceArrive
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
.isOnQuest 1044
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
.goto Darnassus,61.777,39.180
.turnin 1044 >> Turn in Answered Questions
.target Thyn'tel Bladeweaver
.isOnQuest 1044
step << Mage
#completewith DesolaceArrive
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Travel through the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step << Mage
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Desolace >> Fly to Desolace
.target Vesprystus
.zoneskip Desolace
step << !Mage
.isQuestTurnedIn 1044
#completewith DesolaceArrive
.goto Darnassus,30.00,41.43,10 >> Travel through the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step << !Mage
.isQuestTurnedIn 1044
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Desolace >> Fly to Desolace
.target Vesprystus
.zoneskip Desolace
step
.goto Darkshore,36.71,44.98,10,0
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Desolace >> Fly to Desolace
.target Caylais Moonfeather
.zoneskip Darkshore,1
step
#label DesolaceArrive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
.goto Desolace,66.275,6.554
.home >> Set your Hearthstone to Nijel's Point
.target Innkeeper Lyshaerya
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1453 >> Turn in Reclaimers' Business in Desolace
.accept 1458 >> Accept Reagents for Reclaimers Inc.
.accept 1454 >> Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
#era/som
.goto Desolace,66.74,10.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r and |cRXP_FRIENDLY_Captain Pentigast|r
.accept 1387 >> Accept Centaur Bounty
.target +Corporal Melkins
.goto Desolace,66.743,10.872
.accept 1382 >> Accept Strange Alliance
.goto Desolace,66.665,10.933
.target +Captain Pentigast
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.accept 1437 >> Accept Vahlarriel's Search
.target Vahlarriel Demonslayer
step
.goto Desolace,72.96,18.47,70,0
.goto Desolace,79.45,17.65,70,0
.goto Desolace,78.09,22.50,70,0
.goto Desolace,76.32,25.08,70,0
.goto Desolace,73.96,22.05,70,0
.goto Desolace,72.51,17.93
>>Kill |cRXP_ENEMY_Hatefury Satyrs|r. Loot them for their |cRXP_LOOT_Claws|r and |cRXP_LOOT_Horns|r
.complete 1458,1 
.complete 1458,2 
.mob Hatefury Trickster
.mob Hatefury Shadowstalker
.mob Hatefury Hellcaller
.mob Hatefury Betrayer
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1458 >> Turn in Reagents for Reclaimers Inc.
.accept 1459 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#completewith ReagentsOne
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
.goto Desolace,56.522,17.844
>>Click the |cRXP_PICK_Malem Chest|r on the ground
.turnin 1437 >> Turn in Vahlarriel's Search
.accept 1465 >> Accept Vahlarriel's Search
step
.goto Desolace,39.295,28.839,50,0
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.accept 5741 >> Accept Sceptre of Light
.target Azore Aldamort
step
#era/som
.goto Desolace,36.111,30.451
>>Click |cRXP_PICK_Karnitol's Chest|r on the ground
.turnin 1454 >> Turn in The Karnitol Shipwreck
.accept 1455 >> Accept The Karnitol Shipwreck
step
#label ReagentsOne
.goto Desolace,36.069,30.407
>>Click |cRXP_PICK_Rackmore's Log|r on the small barrel
.accept 6161 >> Accept Claim Rackmore's Treasure!
step << !Warlock
#completewith next
.cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_if you have one|r
.itemcount 5996,1 
.use 5996 
step << !Warlock
.goto Desolace,31.4,28.2,70,0
.goto Desolace,34.2,32.6,70,0
.goto Desolace,30.6,34.6,70,0
.goto Desolace,33.2,31.6
>>Kill |cRXP_ENEMY_Drysnap Pincers|r and |cRXP_ENEMY_Drysnap Crawlers|r. Loot them for |cRXP_LOOT_Rackmore's Silver Key|r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step << Warlock
.goto Desolace,31.4,28.2,70,0
.goto Desolace,34.2,32.6,70,0
.goto Desolace,30.6,34.6,70,0
.goto Desolace,33.2,31.6
>>Kill |cRXP_ENEMY_Drysnap Pincers|r and |cRXP_ENEMY_Drysnap Crawlers|r. Loot them for |cRXP_LOOT_Rackmore's Silver Key|r
>>|cRXP_WARN_Buff yourself with|r |T136148:0|t[Underwater Breathing]
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#completewith ReagentsTwo
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
#completewith next
.goto Desolace,60.863,61.859,80 >> Travel to |cRXP_FRIENDLY_Smeed Scrabblescrew|r near the Kodo Graveyard
step
.goto Desolace,60.863,61.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
.accept 5561 >> Accept Kodo Roundup
.target Smeed Scrabblescrew
step
#completewith next
.goto Desolace,54.95,63.08,100 >> Travel to the Kodo Graveyard
step
.goto Desolace,51.668,58.244
.goto Desolace,60.863,61.859,0
.use 13892 >>|cRXP_WARN_Use the|r |T132488:0|t[Kodo Kombobulator] |cRXP_WARN_on |cRXP_ENEMY_Ancient Kodos|r and |cRXP_ENEMY_Dying Kodos|r. Take them back to|r |cRXP_FRIENDLY_Smeed|r
>>|cRXP_WARN_You may only take 1 |cRXP_FRIENDLY_Tamed Kodo|r back at a time|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Tamed Kodo|r once you've taken it back to|r |cRXP_FRIENDLY_Smeed|r
.skipgossip
.complete 5561,1 
.target Tamed Kodo
.mob Ancient Kodo
.mob Dying Kodo
step
.goto Desolace,60.863,61.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
.turnin 5561 >> Turn in Kodo Roundup
.target Smeed Scrabblescrew
step
.goto Desolace,68.8,71.2,75,0
.goto Desolace,65.2,75.6,75,0
.goto Desolace,70.0,81.0,75,0
.goto Desolace,70.0,74.6,75,0
.goto Desolace,73.8,65.8,75,0
.goto Desolace,69.4,73.4
>>Kill |cRXP_ENEMY_Magram Centaurs|r. Loot them for their |cRXP_LOOT_Ears|r
>>|cRXP_WARN_Continue killing |cRXP_ENEMY_Magram Centaurs|r until you've reached |cRXP_FRIENDLY_Friendly|r reputation standing with Gelkis Clan Centaur|r
.complete 1387,1 
.complete 1382,1 
.mob Magram Marauder
.mob Magram Mauler
.mob Magram Outrunner
.mob Magram Pack Runner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Windchaser
.mob Magram Wrangler
step
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1382 >>Turn in Strange Alliance
.accept 1384 >>Accept Raid on the Kolkar
.target Uthek the Wise
step
#label ReagentsTwo
#completewith next

.hs >> Hearth to Nijel's Point
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1455 >> Turn in The Karnitol Shipwreck
.accept 1456 >> Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
.isQuestComplete 1459
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1459 >> Turn in Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
.goto Desolace,66.743,10.872
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r
.turnin 1387 >> Turn in Centaur Bounty
.target Corporal Melkins
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.turnin 1465 >> Turn in Vahlarriel's Search
.accept 1438 >> Accept Vahlarriel's Search
.target Vahlarriel Demonslayer
step
#completewith ReagentsThree
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
.goto Desolace,70.0,41.6,70,0
.goto Desolace,73.6,44.6,70,0
.goto Desolace,70.2,47.2,70,0
.goto Desolace,73.4,51.5,70,0
.goto Desolace,71.6,45.6
>>Kill the |cRXP_ENEMY_Kolkar|r. Loot them for their |cRXP_LOOT_Charms|r
.complete 1384,1 
.mob Kolkar Centaur
.mob Kolkar Scout
.mob Kolkar Windchaser
.mob Kolkar Mauler
.mob Kolkar Destroyer
.mob Kolkar Battle Lord
.mob Kolkar Waylayer
.mob Kolkar Ambusher
step
.goto Desolace,62.314,38.965
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
.accept 5501 >> Accept Bone Collector
.target Bibbly F'utzbuckle
step
#completewith next
#label ReagentsThree
.goto Desolace,55.75,28.88,110 >> Travel to Thunder Axe Fortress
step
.goto Desolace,55.170,30.149
>>Ascend the Watchtower
>>Kill the |cRXP_ENEMY_Burning Blade Seer|r atop the Tower. Loot it for the |cRXP_LOOT_Sceptre|r
>>|cRXP_WARN_There may only ever be 1 |cRXP_ENEMY_Burning Blade Seer|r. You may need to wait for a respawn|r
.complete 5741,1 
.mob Burning Blade Seer
step
#completewith next
.goto Desolace,55.31,27.45,25 >> Enter the main Fortress
step
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
.turnin 1438 >> Turn in Vahlarriel's Search
.accept 1439 >> Accept Search for Tyranis
.target Dalinda Malem
step
#completewith next
.goto Desolace,53.32,29.18,25 >> Enter the secondary Fortress
step
>>Kill |cRXP_ENEMY_Tyranis Malem|r. Loot him for his |cRXP_LOOT_Pendant|r
.goto Desolace,53.008,29.078
.complete 1439,1 
.mob Tyranis Malem
step
#completewith next
.goto Desolace,55.31,27.45,25 >> Travel back towards |cRXP_FRIENDLY_Dalinda Malem|r
step
#completewith next
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
.turnin 1439 >> Turn in Search for Tyranis
.target Dalinda Malem
step
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
>>|cRXP_WARN_This will start an escort quest|r
.accept 1440,1 >> Accept Return to Vahlarriel
.target Dalinda Malem
step
.goto Desolace,58.26,30.94
>>Safely exit Thunder Axe Fortress with |cRXP_FRIENDLY_Dalinda Malem|r
.complete 1440,1 
.target Dalinda Malem
step
#completewith ReagentsFour
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
#label ReagentsFour
.goto Desolace,39.295,28.839,50,0
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.turnin 5741 >> Turn in Sceptre of Light
.accept 6027 >> Accept Book of the Ancients
.target Azore Aldamort
step
#completewith BookofAncients
.goto Desolace,30.12,10.42,225 >> Swim to Ranazjar Isle
step
#completewith BookofAncients
>>Kill the |cRXP_ENEMY_Slitherblades|r. Loot them for |cRXP_LOOT_Rackmore's Golden Key|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
#completewith BookofAncients
>>Kill |cRXP_ENEMY_Slitherblade Tidehunters|r and |cRXP_ENEMY_Slitherblade Sea Witches|r. Loot them for |cRXP_LOOT_Karnitol's Satchel|r
.complete 1456,1 
.mob Slitherblade Tidehunter
.mob Slitherblade Sea Witch
step
#label BookofAncients
.goto Desolace,28.250,6.670
>>Click the |cRXP_PICK_Serpent Statue|r to summon |cRXP_ENEMY_Lord Kragaru|r
>>Kill |cRXP_ENEMY_Lord Kragaru|r. Loot him for the |cRXP_LOOT_Book of the Ancients|r
.complete 6027,1 
.mob Lord Kragaru
step
#completewith next
>>Kill the |cRXP_ENEMY_Slitherblades|r. Loot them for |cRXP_LOOT_Rackmore's Golden Key|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
.goto Desolace,28.06,10.86,70,0
.goto Desolace,30.87,8.41,70,0
.goto Desolace,30.6,15.8,70,0
.goto Desolace,33.2,10.6,70,0
.goto Desolace,30.8,8.0
>>Kill |cRXP_ENEMY_Slitherblade Tidehunters|r and |cRXP_ENEMY_Slitherblade Sea Witches|r. Loot them for |cRXP_LOOT_Karnitol's Satchel|r
>>|cRXP_WARN_You may also find |cRXP_ENEMY_Slitherblade Tidehunters|r and |cRXP_ENEMY_Slitherblade Sea Witches|r in the water|r
.complete 1456,1 
.mob Slitherblade Tidehunter
.mob Slitherblade Sea Witch
step
.goto Desolace,28.06,10.86,70,0
.goto Desolace,30.87,8.41,70,0
.goto Desolace,30.6,15.8,70,0
.goto Desolace,33.2,10.6,70,0
.goto Desolace,30.8,8.0
>>Kill the |cRXP_ENEMY_Slitherblades|r. Loot them for |cRXP_LOOT_Rackmore's Golden Key|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
>>Click |cRXP_PICK_Rackmore's Chest|r on the ground
.goto Desolace,30.005,8.706
.turnin 6161 >>Turn in Claim Rackmore's Treasure!
step
#completewith ReagentsFive
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
.complete 1459,1 
.mob +Scorpashi Snapper
.mob +Scorpashi Lasher
.complete 1459,2 
.mob +Aged Kodo
step
.goto Desolace,39.295,28.839,50,0
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.turnin 6027 >>Turn in Book of the Ancients
.target Azore Aldamort
step
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1384 >>Turn in Raid on the Kolkar
.accept 1370 >>Accept Stealing Supplies
.target Uthek the Wise
step
.goto Desolace,66.5,80.5,50,0
.goto Desolace,70.9,75.5,50,0
.goto Desolace,72.5,78.6,50,0
.goto Desolace,74.1,72.7,50,0
.goto Desolace,66.5,80.5,50,0
.goto Desolace,70.9,75.5,50,0
.goto Desolace,72.5,78.6,50,0
.goto Desolace,74.1,72.7,50,0
.goto Desolace,70.9,75.5
>>Open the |cRXP_PICK_Sacks of Meat|r. Loot them for the |cRXP_LOOT_Crudely Dried Meats|r
.complete 1370,1 
step
#label ReagentsFive
.goto Desolace,52.50,58.56
>>Loot |cRXP_LOOT_Kodo Bones|r around the graveyard
>>|cRXP_WARN_Looting them may cause |cRXP_ENEMY_Kodo Apparitions|r to spawn. |cRXP_ENEMY_Kodo Apparitions|r do not drop|r |cRXP_LOOT_Kodo Bones|r
.complete 5501,1 
step
.goto Desolace,52.19,57.50,70,0
.goto Desolace,62.13,60.65,70,0
.goto Desolace,63.86,68.83,70,0
.goto Desolace,52.19,57.50
>>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Aged Kodo Hides|r
>>|cRXP_WARN_You must complete this step now|r
.complete 1459,2 
.mob Aged Kodo
step
#completewith next
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r, |cRXP_ENEMY_Scorpashi Lashers|r and |cRXP_ENEMY_Scorpashi Venomlashs|r. Loot them for their |cRXP_LOOT_Venom|r
.complete 1459,1 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Scorpashi Venomlash
step
.goto Desolace,62.32,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
.turnin 5501 >> Turn in Bone Collector
.target Bibbly F'utzbuckle
step
.goto Desolace,70.4,63.0,80,0
.goto Desolace,58.6,50.0,80,0
.goto Desolace,41.4,48.2,80,0
.goto Desolace,43.6,75.2
>>Kill |cRXP_ENEMY_Scorpashi Snappers|r, |cRXP_ENEMY_Scorpashi Lashers|r and |cRXP_ENEMY_Scorpashi Venomlashs|r. Loot them for their |cRXP_LOOT_Venom|r
>>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
>>|cRXP_WARN_You must complete this step now|r
.complete 1459,1 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Scorpashi Venomlash
step
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1370 >>Turn in Stealing Supplies
.accept 1373 >>Accept Ongeku
.target Uthek the Wise
step << !Warlock
#completewith ReagentsforReclaimersIncB
.hs >>Hearth to Nijel's Point
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1456 >> Turn in The Karnitol Shipwreck
.accept 1457 >> Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
#label ReagentsforReclaimersIncB
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1459 >> Turn in Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.turnin 1440 >> Turn in Return to Vahlarriel
.target Vahlarriel Demonslayer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.goto Desolace,64.66,10.54
.fly Tanaris >> Fly to Tanaris
.target Baritanas Skyriver
.zoneskip Desolace,1
step
.isOnQuest 1112
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 5800 >> Withdraw the following items from your bank:
>>|T132763:0|t[Kravel's Parts] 
.target Gimblethorn
step
.isOnQuest 1457
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 6245 >> Deposit the following items into your bank:
>>|T133633:0|t[Karnitol's Satchel] 
.target Gimblethorn
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r
.goto Tanaris,52.51,27.91
.home >> Set your Hearthstone to Gadgetzan
.target Innkeeper Fizzgrimble
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> Travel to The Shimmering Flats
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1112 >> Turn in Parts for Kravel
.timer 15,Parts for Kravel RP
.target Kravel Koalbeard
step
.group
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.accept 1107 >> Accept Encrusted Tail Fins
.target Wizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1114 >> Accept Delivery to the Gnomes
.target Kravel Koalbeard
step
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1114 >> Turn in Delivery to the Gnomes
.target Fizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1115 >> Accept The Rumormonger
.target Kravel Koalbeard
step << !Warlock !Mage
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fly Ratchet >> Fly to Ratchet
.target Bera Stonehammer
step << Warlock
#completewith next
Thousand Needles,44.29,36.39,25 >> Travel to Splithoof Hold
step << Warlock
.isOnQuest 1802
.goto Thousand Needles,44.44,32.70,20,0
.goto Thousand Needles,43.438,32.691
>>Stick to the right side once you enter Splithoof Hold
>>Open the |cRXP_PICK_Damaged Chest|r. Loot it for the |cRXP_LOOT_Tattered Manuscript|r
.complete 1802,2 
step << Warlock
#completewith next
.hs >> Hearth to Tanaris
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fly Dustwallow >> Fly to Dustwallow
.target Bera Stonehammer
step << Warlock
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >> Take the boat to Menethil Harbor
step << Warlock
#completewith next
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
.goto Ironforge,74.179,9.371
.turnin 1802 >> Turn in Tome of the Cabal
.accept 1804 >> Accept Tome of the Cabal
.target Krom Stoutarm
step << Warlock
#completewith next
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Wetlands >> Fly to Wetlands
.target Gryth Thurden
.zoneskip Wetlands
step << Warlock
#label rods
.isOnQuest 1804
.goto Wetlands,46.4,45.6,65,0
.goto Wetlands,49.6,44.8,65,0
.goto Wetlands,50.6,50.6,65,0
.goto Wetlands,52.6,53.6,55,0
.goto Wetlands,47.6,46.6
>>Kill |cRXP_ENEMY_Dragonmaw Bonewarders|r and |cRXP_ENEMY_Dragonmaw Shadowwarders|r. Loot them for their |cRXP_LOOT_Rods|r
.complete 1804,1 
.mob Dragonmaw Bonewarder
.mob Dragonmaw Shadowwarder
step << Warlock
.isQuestTurnedIn 465
>>Click the |cRXP_PICK_Dragonmaw Catapult|r
.goto Wetlands,47.45,47.01
.accept 474 >> Accept Defeat Nek'rosh

step << Warlock
#requires rods
.isOnQuest 474
.goto Wetlands,53.2,56.0,40,0
.goto Wetlands,53.2,56.0,0
>>Kill |cRXP_ENEMY_Chieftain Nek'rosh|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_can be|r |T136183:0|t[Feared]
>>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_is immune to Fire damage|r
>>|cRXP_WARN_You can split pull Nek'Rosh from the mobs around him by using|r |T136186:0|t[Rain of Fire]
>>|cRXP_WARN_This is an easy elite quest to solo, but be careful to not aggro too many mobs|r
.complete 474,1 
.mob Chieftain Nek'rosh
.link https://youtu.be/G0cXqCFn1bI >>|cRXP_WARN_Click here for a video guide|r
step << Warlock
.isQuestComplete 474
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
.goto Wetlands,9.86,57.48
.turnin 474 >> Turn in Defeat Nek'rosh
.target Captain Stoutfist
step << Warlock
#completewith next
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> Take the boat to Theramore
.zoneskip The Barrens
step << Warlock
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.300
.fly Ratchet >> Fly to Ratchet
.target Baldruc
step << Warlock
.isQuestComplete 1804
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 1804 >> Turn in Tome of the Cabal
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 1804
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.accept 1795 >> Accept The Binding
.target Strahad Farsan
step << Warlock
#completewith next
.goto The Barrens,62.6,35.2
.cast 8712 >> |cRXP_WARN_Use the|r |T133740:0|t[Tome of the Cabal] |cRXP_WARN_at the summoning circle|r
.use 6999
step << Warlock
.isQuestTurnedIn 1804
.goto The Barrens,62.6,35.2
>>Kill the |cRXP_ENEMY_Summoned Felhunter|r
.use 6999
.complete 1795,1 
.mob Summoned Felhunter
step << Warlock
.isQuestTurnedIn 1804
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 1795 >> Turn in The Binding
step << !Mage
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the Boat to Booty Bay
step << Mage
#completewith FlyBB
.cast 3561 >>Cast |T135763:0|t[Teleport: Stormwind]
.usespell 3561
.zoneskip Stormwind City
step << Mage
#optional
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 5996 >> Withdraw the following items from your bank if you have any:
>>|T134797:0|t[Elixirs of Water Breathing]
.target Newton Burnside
.itemcount 5996,<1
step << Mage
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
+|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_from the Auction House|r
>>|cRXP_WARN_Skip this step if you aren't able to get one|r
.collect 5996,1 
.target Auctioneer Jaxon
step << Mage
#label FlyBB
.goto Stormwind City,66.27,62.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Booty Bay >> Fly to Booty Bay
.target Dungar Longdrink
.zoneskip Stranglethorn Vale
step << !Warlock
#ah
.goto Stranglethorn Vale,26.588,76.348
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer O'reely|r
>>|cRXP_WARN_If you didn't have any|r |T134797:0|t[Elixirs of Water Breathing] |cRXP_WARN_try to buy some from the Auction House|r
>>|cRXP_WARN_Skip this step if you can't find any|r
.collect 5996,1 
.target Auctioneer O'reely
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 37-38 Stranglethorn Vale II
#next 38-39 Swamp of Sorrows
step
#completewith FlyWestfall
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.goto Stranglethorn Vale,27.04,77.31
.home >> Set your Hearthstone to Booty Bay
.target Innkeeper Skindle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r upstairs on the top floor
.turnin 1115 >> Turn in The Rumormonger
.goto Stranglethorn Vale,26.943,77.207
.target Krazek
step
#label FlyWestfall
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >> Fly to Westfall
.target Gyll
.zoneskip Stranglethorn Vale,1
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 325 >> Turn in Armed and Ready
.accept 55 >> Accept Morbent Fel
.target Sven Yorgen
step
.goto Duskwood,19.59,37.28
>>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
.complete 228,1 
.unitscan Mor'Ladim
step
#completewith next
>>Clear your way to the 2nd floor of the house
.cast 8913 >>|cRXP_WARN_Equip|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_in your off-hand|r
>>|cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
>>|cRXP_WARN_Remember to equip your weapon/off-hand slot after weakening him|r
.use 7297
step
.goto Duskwood,16.90,33.40
>>Kill |cRXP_ENEMY_Morbent Fel|r
>>|cRXP_WARN_This quest can be difficult. If you aren't confident doing it, you may skip this step|r
.complete 55,1 
.use 7297
.mob Morbent Fel
.isOnQuest 55
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 55 >> Turn in Morbent Fel
.isQuestComplete 55
.target Sven Yorgen
step
.abandon 55 >> Abandon Morbent Fel
step
#completewith next
.goto Duskwood,44.598,87.565,0
.goto Stranglethorn Vale,40.635,3.514,40,0
.goto Stranglethorn Vale,38.63,5.05
.subzone 99 >> Travel to the Rebel Camp in northern Stranglethorn Vale
step
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
.accept 574 >> Accept Special Forces
.target Sergeant Yohwa
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.accept 200 >> Accept Bookie Herod
.target Lieutenant Doren
step
#optional
.isOnQuest 622
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
.turnin 622 >> Turn in Return to Corporal Kaleb
.target Corporal Kaleb
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 195 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
.accept 188 >> Accept Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.accept 192 >> Accept Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target +Sir S. J. Erlgadin
step
.group
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>Click on |cRXP_PICK_Bookie Herod's Records|r upstairs in the house
.turnin 200 >> Turn in Bookie Herod
.accept 328 >> Accept The Hidden Key
step
.solo
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>Click on |cRXP_PICK_Bookie Herod's Records|r upstairs in the house
.turnin 200 >> Turn in Bookie Herod
step
#completewith SpecialForces
.goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
.group 2
#label THK
#completewith SpecialForces
.isOnQuest 328
.goto Stranglethorn Vale,49.617,7.562
>>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
.turnin 328 >> Turn in The Hidden Key
.accept 329 >> Accept The Spy Revealed!
step
#completewith next
#requires THK
.isQuestTurnedIn 328
.goto Stranglethorn Vale,49.617,7.562
>>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
.accept 329 >> Accept The Spy Revealed!
step
#label SpecialForces
.goto Stranglethorn Vale,46.45,6.89,40,0
.goto Stranglethorn Vale,47.89,7.77,40,0
.goto Stranglethorn Vale,46.45,6.89
>>Kill |cRXP_ENEMY_Kurzen Commandos|r and |cRXP_ENEMY_Kurzen Headshrinkers|r. Loot them for their |T132905:0|t[Silk Cloth]
>>|cRXP_WARN_Be cautious of |cRXP_ENEMY_Kurzen Commandos|r in|r |T132320:0|t[Stealth]
>>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
.collect 4306,15,4449,1,1 
.mob +Kurzen Commando
.mob +Kurzen Headshrinker
.complete 574,1 
.mob +Kurzen Commando
.complete 574,2 
.mob +Kurzen Headshrinker
step
.group 2
.isQuestTurnedIn 215
.isOnQuest 328
.goto Stranglethorn Vale,49.617,7.562
>>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
.turnin 328 >> Turn in The Hidden Key
.accept 329 >> Accept The Spy Revealed!
step
.group 2
.isQuestTurnedIn 328
.goto Stranglethorn Vale,49.617,7.562
>>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
.accept 329 >> Accept The Spy Revealed!
step << Warrior
#ah
.goto Stranglethorn Vale,44.5,9.6
>>Kill |cRXP_ENEMY_Kurzen Medicine Men|r. Loot them for their |T134413:0|t[Liferoot]
>>|cRXP_WARN_This is for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest. You may also buy them from the Auction House if you wish. If you will buy them from the Auction House, skip this step|r
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
.complete 1712,1 
.isOnQuest 1712
.mob Kurzen Medicine Man
step << Warrior
.goto Stranglethorn Vale,44.5,9.6
>>Kill |cRXP_ENEMY_Kurzen Medicine Men|r. Loot them for their |T134413:0|t[Liferoot]
>>|cRXP_WARN_This is for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest|r
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
.complete 1712,1 
.isOnQuest 1712
.mob Kurzen Medicine Man
step
#completewith Prints
>>Kill |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for their |cRXP_LOOT_Crystals|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,42.646,18.353
>>Kill |cRXP_ENEMY_Foreman Cozzle|r atop the Oil Rig. Loot him for his |cRXP_LOOT_Key|r
.collect 5851,1,1182,1 
.mob Foreman Cozzle
step
#label Prints
.goto Stranglethorn Vale,43.332,20.329
>>Open |cRXP_PICK_Cozzle's Footlocker|r. Loot it for the |cRXP_LOOT_Fuel Regulator Blueprints|r
.complete 1182,1 
step
.goto Stranglethorn Vale,45.18,22.65,75,0
.goto Stranglethorn Vale,45.55,18.78,75,0
.goto Stranglethorn Vale,43.42,17.00,75,0
.goto Stranglethorn Vale,45.18,22.65,75,0
.goto Stranglethorn Vale,45.55,18.78
>>Kill |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for their |cRXP_LOOT_Crystals|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,48.64,22.95,75,0
.goto Stranglethorn Vale,48.86,23.48
.goto Stranglethorn Vale,48.79,19.96
.goto Stranglethorn Vale,36.09,37.29,0
>>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
>>|cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
>>|cRXP_WARN_You can find more further south-west if needed. The location is marked on your map|r
>>|cRXP_WARN_They also share spawns with|r |cRXP_ENEMY_Stranglethorn Tigresses|r
.complete 192,1 
.mob Shadowmaw Panther
step
#completewith next
>>Kill |cRXP_ENEMY_Lashtail Raptors|r
>>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
>>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
.complete 195,1 
.mob Lashtail Raptor
step
.goto Stranglethorn Vale,40.68,21.85,70,0
.goto Stranglethorn Vale,39.71,29.82,70,0
.goto Stranglethorn Vale,37.09,32.60,70,0
.goto Stranglethorn Vale,39.1,27.2,70,0
.goto Stranglethorn Vale,39.61,21.90,70,0
.goto Stranglethorn Vale,40.03,15.67,75,0
.goto Stranglethorn Vale,39.1,27.2
>>Kill |cRXP_ENEMY_Snapjaw Crocolisk|r. Loot them for their |cRXP_LOOT_Skin|r
.complete 577,1 
.mob Snapjaw Crocolisk
step
.goto Stranglethorn Vale,38.10,20.50,70,0
.goto Stranglethorn Vale,36.98,24.90,70,0
.goto Stranglethorn Vale,34.24,26.16,70,0
.goto Stranglethorn Vale,31.37,22.28
>>Kill |cRXP_ENEMY_Lashtail Raptors|r
>>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
>>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
.complete 195,1 
.mob Lashtail Raptor
step
>>Kill |cRXP_ENEMY_Sin'Dall|r. Loot him for his |cRXP_LOOT_Paw|r
>>|cRXP_ENEMY_Sin'Dall|r |cRXP_WARN_can be on top of the Plateau, or patrolling around it|r
.goto Stranglethorn Vale,32.23,17.24
.complete 188,1 
.unitscan Sin'Dall
step << Warrior
.isOnQuest 1712
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r and |cRXP_LOOT_Tusks|r
>>|cRXP_WARN_Don't go too deep into the Ruins of Zul'Kunda ruins without planning an escape route. This place has a very high mob density and lots of patrols|r
>>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
.complete 189,1 
.complete 1712,2 
.collect 4306,15,4449,1,1 
.mob Bloodscalp Scout
.mob Bloodscalp Hunter
.mob Bloodscalp Beastmaster
.mob Bloodscalp Mystic
step
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r
>>|cRXP_WARN_Don't go too deep into the Ruins of Zul'Kunda ruins without planning an escape route. This place has a very high mob density and lots of patrols|r
>>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
.complete 189,1 
.collect 4306,15,4449,1,1 
.mob Bloodscalp Scout
.mob Bloodscalp Hunter
.mob Bloodscalp Beastmaster
.mob Bloodscalp Mystic
step
#completewith next
.goto Stranglethorn Vale,21.10,22.84,125 >> Travel to the Haunted Island
step
.goto Stranglethorn Vale,21.10,22.84
>>Kill |cRXP_ENEMY_Lesser Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
.complete 601,1 
.mob Lesser Water Elemental
step
.group
#completewith BluePearls
.cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_if you have one|r
.itemcount 5996,1 
.use 5996 
.isOnQuest 1107 
step
.group
#completewith next
.goto Stranglethorn Vale,24.9,29.1,0
.goto Stranglethorn Vale,27.6,29.2,0
.goto Stranglethorn Vale,25.4,24.1,0
.goto Stranglethorn Vale,27.5,24.2,0
>>Open the |cRXP_PICK_Giant Clams|r. Loot them for |cRXP_LOOT_Blue Pearls|r
>>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
.use 5996 
.collect 4611,9,705,1 
.isOnQuest 1107 
step
.group
.goto Stranglethorn Vale,24.42,24.46,80,0
.goto Stranglethorn Vale,26.6,26.6,80,0
.goto Stranglethorn Vale,24.6,27.2,80,0
.goto Stranglethorn Vale,24.42,24.46
>>Kill |cRXP_ENEMY_Saltscale Murlocs|r. Loot them for their |cRXP_LOOT_Encrusted Tail Fins|r
>>|cRXP_WARN_Only engage in combat with 1 |cRXP_ENEMY_Murloc|r at a time. Try to avoid |cRXP_ENEMY_Saltscale Oracles|r and|r |cRXP_ENEMY_Saltscale Tide Lords|r
>>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
.use 5996 
.complete 1107,1 
.mob Saltscale Forager
.mob Saltscale Warrior
.mob Saltscale Hunter
.mob Saltscale Oracle
.isOnQuest 1107 
step
#label BluePearls
.group
.goto Stranglethorn Vale,24.9,29.1,90,0
.goto Stranglethorn Vale,27.6,29.2,90,0
.goto Stranglethorn Vale,25.4,24.1,90,0
.goto Stranglethorn Vale,27.5,24.2
>>Open the |cRXP_PICK_Giant Clams|r. Loot them for |cRXP_LOOT_Blue Pearls|r
>>|cRXP_WARN_Skip this step if you don't have a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_or |T626007:0|t|cFF8788EEWarlock|r in your group|r << !Warlock !Druid
.use 5996 
.collect 4611,9,705,1 
.isOnQuest 1107 
step
.goto Stranglethorn Vale,25.52,9.36
.xp 38-16160 >> Grind until you are 16,160 xp away from level 38
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 195 >> Turn in Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
.turnin 188 >> Turn in Tiger Mastery
.target +Ajeck Rouack
.goto Stranglethorn Vale,35.616,10.619
.turnin 192 >> Turn in Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target +Sir S. J. Erlgadin
step
.group
.isQuestTurnedIn 215
.isOnQuest 329
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 574 >> Turn in Special Forces
.turnin 329 >> Turn in The Spy Revealed!
.accept 330 >> Accept Patrol Schedules
.target Lieutenant Doren
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 574 >> Turn in Special Forces
.target Lieutenant Doren
step
.isQuestTurnedIn 215
.isOnQuest 330
.goto Stranglethorn Vale,37.66,3.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
.turnin 330 >> Turn in Patrol Schedules
.accept 331 >> Accept Report to Doren
.target Corporal Sethman
step
.isQuestTurnedIn 330
.goto Stranglethorn Vale,37.66,3.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
.accept 331 >> Accept Report to Doren
.target Corporal Sethman
step
.isQuestTurnedIn 215
.isOnQuest 331
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 331 >> Turn in Report to Doren
.target Lieutenant Doren
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step
#completewith next
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
.turnin 189 >> Turn in Bloodscalp Ears
.turnin 213 >> Turn in Hostile Takeover
.target +Kebok
.goto Stranglethorn Vale,27.000,77.124
.accept 1116 >> Accept Dream Dust in the Swamp
.goto Stranglethorn Vale,26.943,77.207
.target +Krazek
step
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 601 >> Turn in Water Elementals
.accept 602 >> Accept Magical Analysis
.turnin 1182 >>Turn in Goblin Sponsorship
.accept 1183 >>Accept Goblin Sponsorship
.target Baron Revilgaz
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 577 >> Turn in Some Assembly Required
.target Drizzlik
step
.xp 38 >> Make sure you are level 38 before starting the next segment
step << !Mage
#label end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind>> Fly to Stormwind
.target Gyll
step << Warrior
.goto StormwindClassic,58.362,61.678
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
>>|cRXP_BUY_Buy 400|r |T135427:0|t[Wicked Throwing Daggers]
.collect 15327,400 
.target Thurman Mullby
step << Mage
#completewith next
.goto Stranglethorn Vale,27.530,77.787
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 38-39 Swamp of Sorrows
#next 39-39 Dustwallow Marsh
step << !Mage
#completewith FlyDW
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 4306,3960,5852,5796,4611,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Deposit the following items into your bank:
>>|T132905:0|t[Silk Cloth] 
>>|T133633:0|t[Bag of Water Elemental Bracers] 
>>|T134330:0|t[Fuel Regulator Blueprints] 
>>|T134305:0|t[Encrusted Tail Fin] (If you have them) 
>>|T134564:0|t[Blue Pearl] (If you have them) 
>>Any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
.target Newton Burnside
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>Go into The Slaughtered Lamb and go downstairs
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Spackle Thornberry
step
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angus Stern|r
.accept 1260 >>Accept Morgan Stern
.target Angus Stern
step
.goto Stormwind City,40.71,62.80,25,0
.goto Stormwind City,41.521,64.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazen Mac'Nadir|r
.accept 1363 >>Accept Mazen's Behest
.target Mazen Mac'Nadir
step
.goto Stormwind City,40.996,63.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Dellis|r up stairs
.turnin 1363 >>Turn in Mazen's Behest
.accept 1364 >>Accept Mazen's Behest
.target Acolyte Dellis
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.accept 1448 >>Accept In Search of The Temple
.target Brohann Caskbelly
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Hunter
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
.trainer >> Train your pet spells
.target Karrina Mekenda
step << Mage
#completewith FlyDW
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 4306,3960,5852,5796,4611,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Deposit the following items into your bank:
>>|T132905:0|t[Silk Cloth] 
>>|T133633:0|t[Bag of Water Elemental Bracers] 
>>|T134330:0|t[Fuel Regulator Blueprints] 
>>|T134305:0|t[Encrusted Tail Fin] (If you have them) 
>>|T134564:0|t[Blue Pearl] (If you have them) 
>>Any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
.target Newton Burnside
step
#label FlyDW
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.goto Stormwind City,66.277,62.137
.fly Duskwood >>Fly to Duskwood
.target Dungar Longdrink
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 228 >>Turn in Mor'Ladim
.accept 229 >>Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
.turnin 229 >>Turn in The Daughter Who Lived
.accept 231 >> Accept A Daughter's Love
.target Watcher Ladimore
step
#completewith next
.isOnQuest 231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.goto Duskwood,77.49,44.28
.fly Westfall >> Fly to Westfall
.target Felicia Maline
step
.isOnQuest 231
>>Click |cRXP_PICK_A Weathered Grave|r
.goto Duskwood,17.72,29.07
.turnin 231 >> Turn in A Daughter's Love
step
#completewith SoSEntry
.goto Duskwood,89.75,41.31,0
.goto Swamp of Sorrows,6.59,60.19
.zone Swamp of Sorrows >>Travel to Swamp of Sorrows
step
#completewith next
.isQuestTurnedIn 1115
.goto Swamp of Sorrows,13.96,61.67,100,0
.goto Swamp of Sorrows,13.96,61.67,0
>>Kill |cRXP_ENEMY_Adolescent Whelps|r and |cRXP_ENEMY_Dreaming Whelps|r. Loot them for their |cRXP_LOOT_Specks of Dream Dust|r
>>|cRXP_WARN_You won't find enough |cRXP_ENEMY_Whelps|r to finish this quest in 1 pass, so continue with other quests|r
.complete 1116,1 
.mob Adolescent Whelp
.mob Dreaming Whelp
step
#label SoSEntry
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.accept 1396 >>Accept Encroaching Wildlife
.target Watcher Biggs
step
#completewith ExitSoS
+|cRXP_WARN_Be very careful of |cRXP_ENEMY_Stonard Scouts|r anytime you are in Swamp of Sorrows. If one ever attacks you, you will be PvP Flagged for 5 minutes|r
.unitscan Stonard Scout
step << skip 
.isOnQuest 1364
#completewith NoboruTurnin
>>Kill |cRXP_ENEMY_Swampwalkers|r, |cRXP_ENEMY_Swampwalker Elders|r, |cRXP_ENEMY_Tangled Horrors|r and |cRXP_ENEMY_Mire Lords|r. Loot them for |cRXP_LOOT_Khadgar's Essays|r
>>|cRXP_WARN_The drop rate of this item is very low. Don't go out of your way to complete this quest|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
#completewith Dreamdust2
.goto Swamp of Sorrows,28.20,43.83,0
>>Kill |cRXP_ENEMY_Young Sawtooth Crocolisks|r, |cRXP_ENEMY_Sorrow Spinners|r and |cRXP_ENEMY_Swamp Jaguars|r
.complete 1396,1 
.mob +Young Sawtooth Crocolisk
.complete 1396,2 
.mob +Sorrow Spinner
.complete 1396,3 
.mob +Swamp Jaguar
step
.goto Swamp of Sorrows,55.50,36.75,70,0
.goto Swamp of Sorrows,50.58,39.02,70,0
.goto Swamp of Sorrows,45.18,36.70,70,0
.goto Swamp of Sorrows,40.53,32.83,70,0
.goto Swamp of Sorrows,38.34,38.75,70,0
.goto Swamp of Sorrows,34.88,45.88,70,0
.goto Swamp of Sorrows,32.81,38.68,70,0
.goto Swamp of Sorrows,34.88,45.88,70,0
.goto Swamp of Sorrows,38.34,38.75,70,0
.goto Swamp of Sorrows,40.53,32.83,70,0
.goto Swamp of Sorrows,45.18,36.70,70,0
.goto Swamp of Sorrows,50.58,39.02,70,0
.goto Swamp of Sorrows,55.184,34.158
.line Swamp of Sorrows,55.70,34.14,55.92,35.96,55.57,37.64,53.27,38.99,51.27,38.82,48.70,38.56,47.29,38.39,46.52,38.69,45.67,36.55,44.34,34.66,42.27,32.14,40.86,32.36,40.23,34.79,38.81,35.80,38.08,41.22,37.91,43.29,36.75,46.43,33.50,44.03,33.37,40.43,32.61,38.67,32.16,37.15,32.26,36.24,33.44,40.35,33.46,43.98,36.65,46.42,37.85,43.51,38.10,40.89,38.48,37.66,38.84,35.82,40.41,34.13,40.87,32.43,42.18,32.07,44.92,35.47,45.66,36.52,46.35,38.74,47.56,38.35,52.43,39.04,53.25,39.13,55.39,37.60
>>Kill |cRXP_ENEMY_Noboru the Cudgel|r. Loot him for |T133485:0|t[|cRXP_LOOT_Noboru's Cudgel|r]
.use 6196 >>|cRXP_WARN_Use |T133485:0|t[|cRXP_LOOT_Noboru's Cudgel|r] to start the quest|r
>>|cRXP_ENEMY_Noboru the Cudgel|r |cRXP_WARN_patrols a large section of Swamp of Sorrows. The patrol path is marked on your map. He spawns where the patrol route starts on the eastern point|r
.collect 6196,1,1392,1 
.accept 1392 >>Accept Noboru the Cudgel
.unitscan Noboru the Cudgel
step
#label NoboruTurnin
.goto Swamp of Sorrows,25.983,31.412
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
.turnin 1392 >>Turn in Noboru the Cudgel
.accept 1389 >>Accept Draenethyst Crystals
.target Magtoor
step << skip 
#completewith next
.goto Swamp of Sorrows,14.97,37.31,70 >> Travel to Misty Valley
step << skip 
.isOnQuest 1364
#completewith next
.goto Swamp of Sorrows,6.99,31.62,70,0
.goto Swamp of Sorrows,14.97,37.31
>>Kill |cRXP_ENEMY_Swampwalkers|r, |cRXP_ENEMY_Swampwalker Elders|r, |cRXP_ENEMY_Tangled Horrors|r and |cRXP_ENEMY_Mire Lords|r. Loot them for |cRXP_LOOT_Khadgar's Essays|r
>>|cRXP_WARN_The drop rate of this item is very low. Once there is no more to kill in Misty Valley, skip this step|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
#label Dreamdust2
.goto Swamp of Sorrows,16.6,55.8,70,0
.goto Swamp of Sorrows,12.4,64.6,70,0
.goto Swamp of Sorrows,16.6,63.8,70,0
.goto Swamp of Sorrows,14.2,58.8

>>Kill |cRXP_ENEMY_Adolescent Whelps|r and |cRXP_ENEMY_Dreaming Whelps|r. Loot them for their |cRXP_LOOT_Specks of Dream Dust|r

.complete 1116,1 
.isQuestTurnedIn 1115
.mob Adolescent Whelp
.mob Dreaming Whelp
step << skip 
.isOnQuest 1364
#completewith end
>>Kill |cRXP_ENEMY_Swampwalkers|r, |cRXP_ENEMY_Swampwalker Elders|r, |cRXP_ENEMY_Tangled Horrors|r and |cRXP_ENEMY_Mire Lords|r. Loot them for |cRXP_LOOT_Khadgar's Essays|r
>>|cRXP_WARN_The drop rate of this item is very low. Don't go out of your way to complete this quest|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
>>Kill |cRXP_ENEMY_Young Sawtooth Crocolisks|r, |cRXP_ENEMY_Sorrow Spinners|r and |cRXP_ENEMY_Swamp Jaguars|r
.complete 1396,1 
.mob +Young Sawtooth Crocolisk
.goto Swamp of Sorrows,23.0,45.6,70,0
.goto Swamp of Sorrows,26.6,36.2,70,0
.goto Swamp of Sorrows,39.0,34.8,70,0
.goto Swamp of Sorrows,34.2,49.8,70,0
.goto Swamp of Sorrows,26.6,52.4,70,0
.goto Swamp of Sorrows,26.6,36.2,70,0
.goto Swamp of Sorrows,39.0,34.8,70,0
.goto Swamp of Sorrows,34.2,49.8,70,0
.goto Swamp of Sorrows,26.6,52.4
.complete 1396,2 
.mob +Sorrow Spinner
.goto Swamp of Sorrows,19.2,54.6,70,0
.goto Swamp of Sorrows,25.0,61.6,70,0
.goto Swamp of Sorrows,33.2,51.8,70,0
.goto Swamp of Sorrows,26.6,47.0,70,0
.goto Swamp of Sorrows,37.6,30.0,70,0
.goto Swamp of Sorrows,44.0,42.4,70,0
.goto Swamp of Sorrows,26.6,47.0
.complete 1396,3 
.goto Swamp of Sorrows,22.8,42.4,70,0
.goto Swamp of Sorrows,33.6,54.0,70,0
.goto Swamp of Sorrows,47.8,39.8,70,0
.goto Swamp of Sorrows,26.2,35.2,70,0
.goto Swamp of Sorrows,23.2,59.8,70,0
.goto Swamp of Sorrows,44.0,41.6
.mob +Swamp Jaguar
step
#label wildlife2
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.turnin 1396 >>Turn in Encroaching Wildlife
.accept 1421 >>Accept The Lost Caravan
.target Watcher Biggs
step
#completewith next
.goto Swamp of Sorrows,57.29,30.73,200 >> Travel to Fallow Sanctuary
step
#completewith CaravanChest
.isOnQuest 1389
>>Loot the |cRXP_LOOT_Draenethyst Crystals|r on the ground
.goto Swamp of Sorrows,63.26,22.35,0
.complete 1389,1 
step
.isOnQuest 1373
.goto Swamp of Sorrows,65.036,21.976,0
.goto Swamp of Sorrows,65.036,21.976,55,0
.goto Swamp of Sorrows,60.537,23.175
>>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r
>>|cRXP_ENEMY_Ongeku|r |cRXP_WARN_can be in a random location throughout Fallow Sanctuary|r
.complete 1373,1 
.unitscan Ongeku
step
#label CaravanChest
.isOnQuest 1421
>>Open the |cRXP_PICK_Caravan Chest|r. Loot it for the |cRXP_LOOT_Wizards' Reagents|r
>>|cRXP_WARN_Avoid going through the middle of Fallow Sanctuary|r
.goto Swamp of Sorrows,64.468,18.313
.complete 1421,1 
step
.isOnQuest 1389
>>Loot the |cRXP_LOOT_Draenethyst Crystals|r on the ground
.goto Swamp of Sorrows,65.15,21.92,70,0
.goto Swamp of Sorrows,61.22,22.97,70,0
.goto Swamp of Sorrows,57.43,26.08,70,0
.goto Swamp of Sorrows,55.20,28.24,70,0
.goto Swamp of Sorrows,57.43,26.08
.complete 1389,1 
step
.goto Swamp of Sorrows,67.00,47.00
>>Swim to the middle of the Pool of Tears
.complete 1448,1 
step
.isQuestComplete 1389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
.goto Swamp of Sorrows,25.983,31.412
.turnin 1389 >>Turn in Draenethyst Crystals
.target Magtoor
step
#label end
.isQuestComplete 1421
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.goto Swamp of Sorrows,26.74,59.82
.turnin 1421 >>Turn in The Lost Caravan
.target Watcher Biggs
step 
.goto Swamp of Sorrows,28.20,43.83
.xp 39 >> Grind |cRXP_ENEMY_Young Sawtooth Crocolisks|r, |cRXP_ENEMY_Sorrow Spinners|r and |cRXP_ENEMY_Swamp Jaguars|r until you're level 39
step
#label ExitSoS
#completewith SWbank << !Mage
#completewith SWTele << Mage
.goto Swamp of Sorrows,28.20,43.83
.hs >>|cRXP_WARN_Grind mobs until your Hearthstone is off cooldown|r
>>Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Rogue
.goto Stranglethorn Vale,26.817,77.149
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_FRIENDLY_Ian Strom|r up stairs
.trainer >> Train your class spells
.target Ian Strom
step
.isQuestComplete 1116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r up stairs
.goto Stranglethorn Vale,26.943,77.207
.turnin 1116 >>Turn in Dream Dust in the Swamp
.timer 11,Dream Dust in the Swamp RP
.target Krazek
step
.isQuestTurnedIn 1115
>>|cRXP_WARN_Wait out the RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.goto Stranglethorn Vale,26.943,77.207
.accept 1117 >>Accept Rumors for Kravel
.target Krazek
step << !Mage
#label SWBank
.zoneskip Stormwind City
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >>Fly to Stormwind
.target Gyll

step << Mage
#completewith next
.goto Stranglethorn Vale,27.530,77.787
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
#label SWTele << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 6245,5996 >> Withdraw the following items from your bank:
>>|T133633:0|t[Karnitol's Satchel] 
>>|T134797:0|t[Elixir of Water Breathing] (If you have one) << !Warlock 
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 6065,5804 >> Deposit the following items into your bank:
>>|T133461:0|t[Khadgar's Essays on Dimensional Convergence] (If you have it) 
>>|T133469:0|t[Goblin Rumors] 
.target Newton Burnside
step << Priest
.goto Stormwind City,44.21,70.03,40,0
.goto Stormwind City,42.85,65.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r
>>|cRXP_BUY_Buy a|r |T135139:0|t[Pitchwood Wand] |cRXP_BUY_from her if it's better than your current wand. Equip it at 40|r
.collect 5238,1 
.target Ardwyn Cailen

step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step
.group
.goto Stormwind City,74.010,30.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
.accept 543 >>Accept The Perenolde Tiara
.target Count Remington Ridgewell
step
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.turnin 1448 >>Turn in In Search of The Temple
.accept 1449 >>Accept To The Hinterlands
.target Brohann Caskbelly

step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Hunter
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
.trainer >> Train your pet spells
.target Karrina Mekenda
step << !Mage
#completewith ReclaimersDesolace
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r

step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Teleport to Ironforge
step
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.turnin 1457 >> Turn in The Karnitol Shipwreck
.target Roetten Stonehammer
step
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.accept 525 >> Accept Further Mysteries
.target Prospector Stormpike

step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.accept 4965 >> Accept Knowledge of the Orb of Orahil
.trainer >> Train your class spells
.target Briarthorn
step
#ah
#completewith ss1
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T135326:0|t[|cRXP_FRIENDLY_Moonsteel Broadsword|r] |cRXP_BUY_from the Auction House|r
>>This is for a free 3,450 XP turnin in Dustwallow Marsh later. Skip this step if you're unable to acquire one
.collect 3853,1,1203,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << !Warlock
#ah
#completewith ss1
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T134797:0|t[Elixir of Water Breathing] |cRXP_BUY_from the Auction House|r
>>It is very important you try to buy one here as it will making questing coming up in Arathi Highlands soon much easier. Skip this step if you're unable to acquire one
.collect 5996,1,664,1
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#ah
#completewith ss1
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_WARN_Level up your|r |T135966:0|t[First Aid] |cRXP_WARN_to 225 if possible as you're about to head to Theramore and can complete the|r |T135966:0|t[First Aid] |cRXP_WARN_quest there. If you can't reach 225 now, skip this step. You will complete it later|r
+|cRXP_BUY_Buy|r |T132892:0|t[Mageweave Cloth] |cRXP_BUY_from the Auction House if required|r
.skill firstaid,225,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Warrior
#ah
#completewith next
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy the following from the Auction House. It isn't required but will save you time later when going for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r]
>>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r [|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r
>>|T133434:0|t[Burning Charm]
>>|T133435:0|t[Thundering Charm]
>>|T133438:0|t[Cresting Charm]
.collect 4479,8,1714,1 
.collect 4480,8,1714,1 
.collect 4481,8,1714,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#label ss1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.501,47.742
.fly Wetlands >> Fly to Wetlands
.target Gryth Thurden
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 30-40
#version 23
#classic
<< Alliance
#name 39-39 Dustwallow Marsh
#next 39-40 Desolace
step
#completewith next
.goto Wetlands,7.270,62.527,25 >> Travel to the Menethil Harbor Dock
step
.goto Wetlands,5.075,63.408
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
.zone Dustwallow Marsh >> Take the boat to Theramore
step
.goto Dustwallow Marsh,66.437,51.463
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helenia Olden|r
>>|cRXP_BUY_Buy 3|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from her|r
.collect 3713,3,1218,1 
.target Helenia Olden
step
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin -1260 >> Turn in Morgan Stern
.accept 1204 >> Accept Mudrock Soup and Bugs
.target Morgan Stern
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r atop Theramore tower
.goto Dustwallow Marsh,66.423,49.260
.accept 1266 >> Accept The Missing Diplomat
.target Archmage Tervosh
step
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1218 >> Accept Soothing Spices
.turnin 1218 >> Turn in Soothing Spices
.accept 1206 >> Accept Jarl Needs Eyes
.target "Swamp Eye" Jarl
step
.goto Dustwallow Marsh,55.442,25.917
>>Click the |cRXP_PICK_Loost Dirt|r
.accept 1219 >> Accept The Orc Report
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Theramore Lieutenant|r
.goto Dustwallow Marsh,68.125,48.201
.turnin 1219 >> Turn in The Orc Report
.accept 1220 >> Accept Captain Vimes
.target Theramore Lieutenant
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1220 >> Turn in Captain Vimes
.accept 1286 >> Accept The Deserters
.target Captain Garran Vimes
step
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.accept 6624 >> Accept Triage
.target Doctor Gustaf VanHowzen
step
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >> |cRXP_WARN_Channel the|r |T133682:0|t[Triage Bandage] |cRXP_WARN_on the |cRXP_FRIENDLY_Alliance Soldiers|r. Prioritize |cRXP_FRIENDLY_Critically Injured Soldiers|r first|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.turnin 6624 >> Turn in Triage
.target Doctor Gustaf VanHowzen
step
.isQuestTurnedIn 6624
.destroy 16991 >> Delete the |T133682:0|t[Triage Bandage]. You no longer need it
step
#completewith next
.isOnQuest 1204
.goto Dustwallow Marsh,64.89,42.25,90,0
.goto Dustwallow Marsh,63.14,36.98,90,0
.goto Dustwallow Marsh,61.02,19.41,90,0
.goto Dustwallow Marsh,59.67,17.69,0,0
>>Kill |cRXP_ENEMY_Mudrock Spikeshells|r and |cRXP_ENEMY_Mudrock Tortoises|r. Loot them for their |cRXP_LOOT_Tongues|r
.complete 1204,1 
.mob Mudrock Spikeshell
.mob Mudrock Tortoise
step
.isOnQuest 1177
.goto Dustwallow Marsh,64.2,28.0,0
.goto Dustwallow Marsh,62.8,18.8,0
.goto Dustwallow Marsh,57.6,16.4,0
.goto Dustwallow Marsh,54.6,16.2,0
.goto Dustwallow Marsh,64.2,28.0,75,0
.goto Dustwallow Marsh,62.8,18.8,75,0
.goto Dustwallow Marsh,57.6,16.4,75,0
.goto Dustwallow Marsh,54.6,16.2,75,0
.goto Dustwallow Marsh,57.6,21.6,75,0
.goto Dustwallow Marsh,62.8,18.8,75,0
.goto Dustwallow Marsh,57.6,16.4,75,0
.goto Dustwallow Marsh,54.6,16.2,75,0
.goto Dustwallow Marsh,57.6,21.6
>>Kill the |cRXP_ENEMY_Mirefins|r. Loot them for their |cRXP_LOOT_Heads|r
.complete 1177,1 
.mob Mirefin Coastrunner
.mob Mirefin Muckdweller
.mob Mirefin Murloc
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mirefin Warrior
.mob Mirefin Oracle
step
.isOnQuest 1204
.goto Dustwallow Marsh,64.6,40.0,70,0
.goto Dustwallow Marsh,62.6,33.6,70,0
.goto Dustwallow Marsh,61.8,26.4,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
.goto Dustwallow Marsh,55.2,16.6,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
.goto Dustwallow Marsh,61.8,26.4,70,0
.goto Dustwallow Marsh,62.6,33.6,70,0
.goto Dustwallow Marsh,64.6,40.0,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
>>Kill |cRXP_ENEMY_Mudrock Spikeshells|r and |cRXP_ENEMY_Mudrock Tortoises|r. Loot them for their |cRXP_LOOT_Tongues|r
.complete 1204,1 
.mob Mudrock Spikeshell
.mob Mudrock Tortoise
step
#softcoreserver
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
>>|cRXP_WARN_IF YOU CHOOSE TO ACCEPT THE FOLLOW UP QUEST YOU WILL BE PVP FLAGGED! MEANING HORDE PLAYERS CAN KILL YOU! PROCEED AT YOUR OWN RISK!|r
>>|cRXP_WARN_You will NOT be PvP Flagged for turning in this current quest. Auto accept has been turned OFF for the follow up|r
.turnin 1266 >> Turn in The Missing Diplomat
.target Private Hendel
.isQuestTurnedIn 1264
step
#softcoreserver
.isQuestTurnedIn 1264
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
>>|cRXP_WARN_IF YOU CHOOSE TO ACCEPT THIS QUEST YOU WILL BE PVP FLAGGED! MEANING HORDE PLAYERS CAN KILL YOU! PROCEED AT YOUR OWN RISK!|r
.accept 1324,1 >> Accept The Missing Diplomat
.target Private Hendel
step
#hardcoreserver
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
>>|cRXP_WARN_Blizzard has adjusted this quest so it will no longer PvP Flag you on Official Hardcore Servers|r
.turnin 1266 >> Turn in The Missing Diplomat
.accept 1324,1 >> Accept The Missing Diplomat
.target Private Hendel
.isQuestTurnedIn 1264
step
.goto Dustwallow Marsh,45.24,24.65
>>Defeat |cRXP_ENEMY_Private Hendel|r. He will attack you along with 2 |cRXP_ENEMY_Theramore Sentries|r
>>They will both reset once you subdue |cRXP_ENEMY_Private Hendel|r
.complete 1324,1 
.isOnQuest 1324
.mob Private Hendel
step
.isQuestComplete 1324
.goto Dustwallow Marsh,45.193,24.292
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
.turnin 1324 >> Turn in The Missing Diplomat
.target Archmage Tervosh
step
.isQuestTurnedIn 1324
.goto Dustwallow Marsh,45.218,24.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
.turnin 1267 >> Turn in The Missing Diplomat
.target Lady Jaina Proudmoore
step
.goto Dustwallow Marsh,35.43,21.98,70,0
.goto Dustwallow Marsh,33.58,21.32,70,0
.goto Dustwallow Marsh,35.05,24.71,70,0
.goto Dustwallow Marsh,34.49,22.06
>>Kill |cRXP_ENEMY_Darkmist Spiders|r, |cRXP_ENEMY_Darkmist Silkspinners|r, |cRXP_ENEMY_Darkmist Lurkers|r and |cRXP_ENEMY_Darkmist Recluses|r. Loot them for their |cRXP_LOOT_Eyes|r
>>|cRXP_ENEMY_Darkmist Silkspinners|r |cRXP_WARN_cast|r |T132149:0|t[Web]
>>|cRXP_ENEMY_Darkmist Recluses|r |cRXP_WARN_cast|r |T136067:0|t[Debilitating Poison] |cRXP_WARN_which lowers your physical damage by 75% for 15 seconds. Simply move out of melee range when they begin to cast it to avoid it|r << Rogue/Warrior/Paladin/Druid
>>|cRXP_ENEMY_Darkmist Lurkers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth] |cRXP_WARN_inside of the Cave. It is recommended you do not enter the Cave|r
.complete 1206,1 
.mob Darkmist Recluse
.mob Darkmist Spider
.mob Darkmist Silkspinner
.mob Darkmist Lurker
step
.goto Dustwallow Marsh,46.881,17.518
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
>>|cRXP_WARN_This will start an escort quest|r
.accept 1222 >> Accept Stinky's Escape
.target "Stinky" Ignatz
step
.isOnQuest 1222
.goto Dustwallow Marsh,48.76,24.49,0
>>Follow |cRXP_FRIENDLY_"Stinky" Ignatz|r through the Marshlands
.complete 1222,1 
.target "Stinky" Ignatz
step
.isQuestComplete 1206
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.turnin 1206 >> Turn in Jarl Needs Eyes
.target "Swamp Eye" Jarl
step
#optional
.isQuestTurnedIn 1206
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1203 >> Accept Jarl Needs a Blade
.turnin 1203 >> Turn in Jarl Needs a Blade
.target "Swamp Eye" Jarl
.itemcount 3853,1
step
#completewith 513
.destroy 5884 >> Delete any extra |T133884:0|t[Unpopped Darkmist Eyes] you still have
step
.isQuestComplete 1177
.goto Dustwallow Marsh,35.154,38.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
.turnin 1177 >> Turn in Hungry
.target Mudcrush Durtfeet
step
#completewith BalosJacken
.goto Dustwallow Marsh,35.74,53.99,45 >> Travel to Lost Point tower
step
#completewith next
.goto Dustwallow Marsh,36.09,54.30
+Attack |cRXP_ENEMY_Balos Jacken|r to 10% health to make him submit
step
#label BalosJacken
.goto Dustwallow Marsh,36.09,54.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balos Jacken|r
.turnin 1286 >> Turn in The Deserters
.accept 1287 >> Accept The Deserters
.target Balos Jacken
step
#completewith 513
.goto Dustwallow Marsh,66.336,45.469
.subzone 513 >> Travel to Theramore Isle
step
.isQuestComplete 1222
.isQuestComplete 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1222 >> Turn in Stinky's Escape
.turnin 1204 >> Turn in Mudrock Soup and Bugs
.target Morgan Stern
step
.isQuestComplete 1222
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1222 >> Turn in Stinky's Escape
.target Morgan Stern
step
.isQuestComplete 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1204 >> Turn in Mudrock Soup and Bugs
.target Morgan Stern
step
.isQuestTurnedIn 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.accept 1258 >> Accept ... and Bugs
.target Morgan Stern
step
#label 513
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1287 >> Turn in The Deserters
.target Captain Garran Vimes
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 39-40 Desolace
#next 40-41 Alterac/Arathi
step << Warlock
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Ratchet>> Fly to Ratchet
.target Baldruc
step << Warlock
.isOnQuest 4965
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin 4965 >> Turn in Knowledge of the Orb of Orahil
.target Menara Voidrender
step << Warlock
.isOnQuest 4968
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin 4968 >> Turn in Knowledge of the Orb of Orahil
.target Menara Voidrender
step << Warlock
.isQuestTurnedIn 4965
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.accept 1799 >> Accept Fragments of the Orb of Orahil
.target Menara Voidrender
step << Warlock
.isQuestTurnedIn 4968
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.accept 1799 >> Accept Fragments of the Orb of Orahil
.target Menara Voidrender
step << Warlock
.isOnQuest 4488
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 4488 >> Turn in Summon Felsteed
.target Strahad Farsan
step << Warlock
.isOnQuest 4487
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 4487 >> Turn in Summon Felsteed
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 4487,4488
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.accept 4490 >> Accept Summon Felsteed
.turnin 4490 >> Turn in Summon Felsteed
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 4965
.goto The Barrens,62.641,35.304
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Wytula|r
.accept 4962 >> Accept Shard of a Felhound
.target Acolyte Wytula
step << Warlock
.isQuestTurnedIn 4968
.goto The Barrens,62.641,35.304
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Wytula|r
.accept 4962 >> Accept Shard of a Felhound
.target Acolyte Wytula
step << Warlock
#completewith DesolaceArrive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.goto The Barrens,63.084,37.163
.fly Desolace>> Fly to Desolace
.target Bragok
step << !Warlock
#completewith DesolaceArrive
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Desolace >> Fly to Desolace
.target Baldruc
step
#completewith DesolaceArrive
.goto Desolace,66.275,6.554
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
.home >> Set your Hearthstone to Desolace
.target Innkeeper Lyshaerya
step
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.accept 261 >> Accept Down the Scarlet Path
.target Brother Anton
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.accept 1466 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#completewith next
.goto Desolace,47.83,61.82,90 >> Travel to |cRXP_FRIENDLY_Hornizz|r at the Kodo Graveyard
step
#label DesolaceArrive
#era/som
.goto Desolace,47.830,61.825
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
.accept 6134 >> Accept Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
.isQuestTurnedIn 1370
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1373 >> Turn in Ongeku
.accept 1374 >> Accept Khan Jehn
.target Uthek the Wise
step << Warlock
#completewith ReclaimersDemons
>>Kill |cRXP_ENEMY_Burning Blade Summoners|r. Loot them for their |cRXP_LOOT_Infernal Orb|r
.complete 1799,1 
.mob Burning Blade Summoner
step << Warlock
#completewith ReclaimersDemons
.use 12647 >>|cRXP_WARN_Channel the|r |T134129:0|t[Felhas Ruby] |cRXP_WARN_on a |cRXP_ENEMY_Ley Hunter|r, |cRXP_ENEMY_Mana Eater|r or |cRXP_ENEMY_Mage Hunter|r as it is about to die|r
.complete 4962,1 
.mob Ley Hunter
.mob Mana Eater
.mob Mage Hunter
step
#label ReclaimersDemons
.goto Desolace,51.72,83.92,0
>>Kill |cRXP_ENEMY_Ley Hunters|r, |cRXP_ENEMY_Mana Eaters|r and |cRXP_ENEMY_Mage Hunters|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Nether Sisters|r, |cRXP_ENEMY_Nether Maidens|r and |cRXP_ENEMY_Nether Sorceresses|r. Loot them for their |cRXP_LOOT_Wings|r
>>Kill |cRXP_ENEMY_Doomwarder Captains|r. Loot them for their |cRXP_LOOT_Blood|r
>>|cRXP_WARN_Prioritize |cRXP_ENEMY_Doomwarder Captains|r as you may need to wait for their respawns. Regular |cRXP_ENEMY_Doomwarders|r do not drop|r |cRXP_LOOT_Blood|r. You could also ask someone to invite you so you change layers|r
.complete 1466,1 
.mob +Ley Hunter
.mob +Mana Eater
.mob +Mage Hunter
.goto Desolace,50.6,81.6,70,0
.goto Desolace,51.6,85.8,70,0
.goto Desolace,53.6,84.6,70,0
.goto Desolace,53.6,77.6,70,0
.goto Desolace,56.6,75.6,70,0
.goto Desolace,53.0,68.6,70,0
.goto Desolace,53.6,77.6
.complete 1466,2 
.mob +Nether Sister
.mob +Nether Maiden
.mob +Nether Sorceress
.goto Desolace,54.6,78.2,70,0
.goto Desolace,50.6,71.6,70,0
.goto Desolace,48.8,77.6,70,0
.goto Desolace,54.6,78.2,70,0
.goto Desolace,50.6,71.6,70,0
.goto Desolace,48.8,77.6
.complete 1466,3 
.goto Desolace,51.72,83.92
.mob +Doomwarder Captain
step << Warlock
#completewith next
>>Kill |cRXP_ENEMY_Burning Blade Summoners|r. Loot them for their |cRXP_LOOT_Infernal Orb|r
.complete 1799,1 
.mob Burning Blade Summoner
step << Warlock
.goto Desolace,50.6,81.6,70,0
.goto Desolace,51.6,85.8,70,0
.goto Desolace,53.6,84.6,70,0
.goto Desolace,53.6,77.6,70,0
.goto Desolace,56.6,75.6,70,0
.goto Desolace,53.0,68.6,70,0
.goto Desolace,53.6,77.6
.use 12647 >>|cRXP_WARN_Channel the|r |T134129:0|t[Felhas Ruby] |cRXP_WARN_on a |cRXP_ENEMY_Ley Hunter|r, |cRXP_ENEMY_Mana Eater|r or |cRXP_ENEMY_Mage Hunter|r as it is about to die|r
.complete 4962,1 
.mob Ley Hunter
.mob Mana Eater
.mob Mage Hunter
step << Warlock
.goto Desolace,50.4,71.6,70,0
.goto Desolace,49.8,77.8,70,0
.goto Desolace,52.4,83.6,70,0
.goto Desolace,55.0,77.8
>>Kill |cRXP_ENEMY_Burning Blade Summoners|r. Loot them for their |cRXP_LOOT_Infernal Orb|r
.complete 1799,1 
.mob Burning Blade Summoner
step
#completewith next
>>Kill |cRXP_ENEMY_Undead Ravagers|r
.complete 261,1 
.mob Undead Ravager
step
.goto Desolace,64.00,91.70
>>|cRXP_WARN_Use the|r |T132763:0|t[Crate of Ghost Magnets] |cRXP_WARN_at the Valley of Bones between the two giant skeleton remains|r
>>Kill |cRXP_ENEMY_Magrami Spectres|r that spawn from it. Loot them for their |cRXP_LOOT_Ghost-o-plasms|r
.complete 6134,1 
.mob Magrami Spectre
step
.goto Desolace,64.30,81.96,70,0
.goto Desolace,64.00,91.70,70,0
.goto Desolace,59.91,89.42,70,0
.goto Desolace,64.00,91.70
>>Kill |cRXP_ENEMY_Undead Ravagers|r
.complete 261,1 
.mob Undead Ravager
step
.isQuestTurnedIn 1370
.goto Desolace,65.94,80.40
>>Kill |cRXP_ENEMY_Khan Jehn|r. Loot him for his |cRXP_LOOT_Head|r
.complete 1374,1 
.mob Khan Jehn
step
.goto Desolace,47.830,61.825
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
.turnin 6134 >> Turn in Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
.isQuestTurnedIn 1370
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1374 >> Turn in Khan Jehn
.target Uthek the Wise
step
.goto Desolace,41.13,91.72,0
.goto Feralas,45.44,3.07
.zone Feralas >> Travel to Feralas
.zoneskip Desolace,1
step
#completewith FMFP
.goto Feralas,44.88,7.70,50,0
.goto Feralas,46.31,21.20,50,0
.goto Feralas,47.98,25.22,50,0
.goto Feralas,46.82,27.89,35,0
.goto Feralas,48.13,44.92,50,0
.goto Feralas,43.33,42.75,60,0
.goto Feralas,30.238,43.248
.subzone 1116 >> Follow the road to Feathermoon Stronghold. You don't need to wait for the boat, just swim across
step
#completewith next
.goto Feralas,32.671,44.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logannas|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him|r
>>|cRXP_WARN_Skip this step if |cRXP_FRIENDLY_Logannas|r has none in stock|r
.target Logannas
step
#label FMFP
.goto Feralas,30.238,43.248
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fyldren Moonfeather|r
.fp Feathermoon >> Get the Feathermoon Flight Path
.fly Tanaris >> Fly to Tanaris
.target Fyldren Moonfeather
.zoneskip Feralas,1
step
.isOnQuest 1183,1117,602
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 5852,5804,3960,5796 >> Withdraw the following items from your bank:
>>|T134330:0|t[Fuel Regulator Blueprints] 
>>|T133469:0|t[Goblin Rumors] 
>>|T133633:0|t[Bag of Water Elemental Bracers] 
>>|T134305:0|t[Encrusted Tail Fins] (If you have them) 
.target Gimblethorn
step << Hunter
#completewith next
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laziphus|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Scorpid Hunter|r shortly
.xp <40,1
.target Laziphus
step << Hunter
.goto Tanaris,54.07,32.21
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Scorpid Hunter|r to tame it|r 
.train 2976 >>|cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 6)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.xp <40,1
.mob Scorpid Hunter
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> Travel to The Shimmering Flats
step
#label Martek
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.accept 1106 >> Accept Martek the Exiled
.target Fizzle Brassbolts
step
.group
.isQuestComplete 1107
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.turnin 1107 >> Turn in Encrusted Tail Fins
.target Wizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1117 >> Turn in Rumors for Kravel
.timer 10,Rumors for Kravel RP
.accept 1118 >> Accept Back to Booty Bay
.target Kravel Koalbeard
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1183 >> Turn in Goblin Sponsorship
.accept 1186 >> Accept The Eighteenth Pilot
.target Pozzik
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1186 >> Turn in The Eighteenth Pilot
.accept 1187 >> Accept Razzeric's Tweaking
.target Razzeric
step
.group
.abandon 1107 >> Abandon Encrusted Tail Fins
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
.xp <40,1
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.xp <40,1
step
#completewith next
.hs >> Hearth to Desolace
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.turnin 261 >> Turn in Down the Scarlet Path
.accept 1052 >> Accept Down the Scarlet Path
.target Brother Anton
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1466 >> Turn in Reagents for Reclaimers Inc.
.accept 1467 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor

step << Human Mage
#completewith next
.zone Stormwind City >> Teleport to Stormwind
.xp <40,1
.money <90
.skill riding,75,1 
step << Human Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
.xp <40,1
.money <90
.skill riding,75,1 
step << Human Mage
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Redridge >> Fly to Redridge
.target Dungar Longdrink
.zoneskip Stormwind City,1
.xp <40,1
.money <90
.skill riding,75,1 
step << Human Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie Hunter|r and |cRXP_FRIENDLY_Randal Hunter|r
.vendor >>|cRXP_BUY_Buy a|r |T132261:0|t[|cFF0070FFHorse|r]
.goto Elwynn Forest,84.152,65.489
.train 148 >>Train |T132261:0|t[Horse Riding]
.goto Elwynn Forest,84.321,64.869
.xp <40,1
.money <90
.skill riding,75,1
.target Katie Hunter
.target Randal Hunter
step << Human Mage
#completewith next
.zone Ironforge >> Teleport to Ironforge
step << NightElf
#completewith next
+|cRXP_WARN_Fly to Darnassus to get your mount!|r
.xp <40,1
.money <90
.skill riding,75,1 
.zoneskip Desolace,1
step << NightElf
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.fly Teldrassil >> Fly to Teldrassil
.target Baritanas Skyriver
.xp <40,1
.money <90
.skill riding,75,1 
.zoneskip Desolace,1
step << NightElf
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
.xp <40,1
.money <90
.skill riding,75,1 
step << NightElf
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jartsam|r and |cRXP_FRIENDLY_Lelanai|r
.train 828 >>Train |T132242:0|t[Tiger Riding]
.goto Darnassus,38.694,15.857
.vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FFFrostsaber|r] |cRXP_BUY_or|r |T132225:0|t[|cFF0070FFNightsaber|r]
.goto Darnassus,38.283,15.365
.xp <40,1
.zoneskip Darnassus,1
.target Jartsam
.target Lelanai
step << NightElf Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.goto Darnassus,58.72,34.92
.trainer >> Train your class spells
.target Arias'ta Bladesinger
.zoneskip Darnassus,1
step << NightElf Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
.zoneskip Darnassus,1
step << NightElf Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.goto Darnassus,31.84,16.69,30,0
.goto Darnassus,37.00,21.92
.trainer >> Train your class spells
.target Syurna
.zoneskip Darnassus,1
step << NightElf Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
.zoneskip Darnassus,1
step << NightElf
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal back to Rut'theran Village
.zoneskip Darnassus,1
step << NightElf
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Theramore >> Fly to Theramore
.zoneskip Teldrassil,1
step << !Mage
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.fly Theramore >> Fly to Theramore
.target Baritanas Skyriver
.zoneskip Desolace,1
step << !Mage
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.accept 6624 >> Accept Triage
.target Doctor Gustaf VanHowzen
step << !Mage
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >> |cRXP_WARN_Channel the|r |T133682:0|t[Triage Bandage] |cRXP_WARN_on the |cRXP_FRIENDLY_Alliance Soldiers|r. Prioritize |cRXP_FRIENDLY_Critically Injured Soldiers|r first|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step << !Mage
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.turnin 6624 >> Turn in Triage
.target Doctor Gustaf VanHowzen
step << !Mage
.isQuestTurnedIn 6624
.destroy 16991 >> Delete the |T133682:0|t[Triage Bandage]. You no longer need it
step << Warlock
#completewith next
.goto Dustwallow Marsh,55.26,50.54,45 >> Swim west towards |cRXP_FRIENDLY_Tabetha|r
step << Warlock
#completewith next
+|cRXP_WARN_The follow up quest will have |cRXP_FRIENDLY_Tabetha|r summon |cRXP_ENEMY_Demon of the Orb|r which is a level 40 Elite that you need to kill. This quest is simple so long as you don't agro additional mobs|r
>>|cRXP_WARN_Kill any mobs around |cRXP_FRIENDLY_Tabetha's|r farm before accepting the next quest|r
step << Warlock
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
.turnin 1799 >> Turn in Fragments of the Orb of Orahil
.accept 4961 >> Accept Cleansing of the Orb of Orahil
.target Tabetha
step << Warlock
.goto Dustwallow Marsh,45.87,56.74
>>Kill |cRXP_ENEMY_Demon of the Orb|r
>>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_continously on |cRXP_ENEMY_Demon of the Orb|r until your DoTs kill it|r
.complete 4961,1 
.mob Demon of the Orb
step << Warlock
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
.turnin 4961 >> Turn in Cleansing of the Orb of Orahil
.accept 4976 >> Accept Returning the Cleansed Orb
.target Tabetha
step << Warlock
#completewith next
.goto Dustwallow Marsh,69.38,53.29,80 >> Swim to Theramore Isle
step << Warrior
.goto Dustwallow Marsh,67.875,48.409
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Evencane|r up stairs in the Keep
.trainer >> Train your class spells
.skill riding,75,1 
.target Captain Evencane
step << Paladin
.goto Dustwallow Marsh,67.396,47.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Karman|r
.trainer >> Train your class spells
.target Brother Karman
step << !Mage
.goto Dustwallow Marsh,71.46,56.30
.zone Wetlands >> Take the boat to Menethil Harbor
.zoneskip Arathi Highlands
step << Druid/NightElf Warrior 
.dungeon !SM
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Arathi >> Fly to Arathi
.target Shellei Brondir
step << Gnome !Warlock !Mage/Dwarf !Paladin 
#completewith next
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Ironforge >> Fly to Ironforge
>>|cRXP_WARN_Travel to Kharanos and buy your|r |T132247:0|t[Mechanostrider] << Gnome !Warlock
>>|cRXP_WARN_Travel to Amberstill Ranch and buy your|r |T132248:0|t[Ram] << Dwarf !Paladin
.target Shellei Brondir
.money <90
.skill riding,75,1
.xp <40,1
step << Gnome Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Gnome Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy Featherwhistle|r and |cRXP_FRIENDLY_Milli Featherwhistle|r
.train 10907 >>Train |T132247:0|t[Mechanostrider Piloting]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FFMechanostrider|r]
.goto Dun Morogh,49.123,47.956
.xp <40,1
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veron Amberstill|r and |cRXP_FRIENDLY_Ultham Ironhorn|r
.vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FFRam|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>Train |T132248:0|t[Ram Riding]
.goto Dun Morogh,63.944,50.095
.xp <40,1
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << Human !Warlock !Paladin !Mage 
#completewith next
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Redridge >> Fly to Redridge
>>|cRXP_WARN_Travel to the Eastvale Logging Camp to buy your|r |T132261:0|t[Horse]
.target Shellei Brondir
.money <90
.skill riding,75,1
.xp <40,1
step << Human !Warlock !Paladin !Mage 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katie Hunter|r and |cRXP_FRIENDLY_Randal Hunter|r
.vendor >>|cRXP_BUY_Buy a|r |T132261:0|t[|cFF0070FFHorse|r]
.goto Elwynn Forest,84.152,65.489
.train 148 >>Train |T132261:0|t[Horse Riding]
.goto Elwynn Forest,84.321,64.869
.xp <40,1
.money <90
.skill riding,75,1
.target Katie Hunter
.target Randal Hunter
step << Human Warrior
.dungeon !SM
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fly Arathi >> Fly to Arathi
.target Ariena Stormfeather
.skill riding,<75,1 
step << Human !Warlock !Paladin !Mage
.dungeon SM << Human Warrior
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fly Ironforge >> Fly to Ironforge
.target Ariena Stormfeather
.skill riding,<75,1 
step << Druid/Warrior 
.dungeon SM
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
.zoneskip Wetlands,1 
step << Paladin
#completewith PaladinMountAcquired
.dungeon !SM
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Stormwind >> |cRXP_WARN_Fly to Stormwind to learn|r |T136103:0|t[Summon Warhorse]
.target Shellei Brondir
.zoneskip Wetlands,1
.skill riding,75,1
step << !Mage !Druid !Warrior
.dungeon SM << Paladin
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
.zoneskip Wetlands,1
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
.accept 1050 >> Accept Mythology of the Titans
.target Librarian Mae Paledust
step
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.turnin 1467 >> Turn in Reagents for Reclaimers Inc.
.isOnQuest 1467
.target Roetten Stonehammer
.zoneskip Ironforge,1
step << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r
.goto Ironforge,51.495,15.330
.trainer >> Train your class spells
.target Fenthwick
.skill riding,75,1 << NightElf 
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r
.goto Ironforge,25.207,10.756
.trainer >> Train your class spells
.target Toldren Deepiron
.skill riding,75,1 << NightElf 
step << Hunter
.goto Ironforge,69.872,82.890
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r
.trainer >> Train your class spells
.target Regnus Thundergranite
.skill riding,75,1 << NightElf 
step << Paladin
#completewith PaladinMountAcquired
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth|r
.fly Stormwind >> |cRXP_WARN_Fly to Stormwind to learn|r |T136103:0|t[Summon Warhorse]
>>|cRXP_WARN_Skip this step if you already have your mount|r
.target Gryth Thurden
.zoneskip Ironforge,1
step << Paladin
.isOnQuest 4485
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.turnin 4485 >> Turn in The Tome of Nobility
.turnin 1661 >> Turn in The Tome of Nobility
.target Duthorian Rall
step << Paladin
.isOnQuest 4486
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.turnin 4486 >> Turn in The Tome of Nobility
.turnin 1661 >> Turn in The Tome of Nobility
.target Duthorian Rall
step << Paladin
#label PaladinMountAcquired
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
.turnin 1661 >> Turn in The Tome of Nobility
>>|cRXP_WARN_This is a simple quest turn in. You don't need to have the quest currently in your quest log|r
.target Duthorian Rall
step << Paladin
.isQuestTurnedIn 1661
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Arathi >> Fly to Arathi
.target Dungar Longdrink
.zoneskip Stormwind City,1
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.accept 4487 >> Accept Summon Felsteed
.trainer >> Train your class spells
.target Briarthorn
step << Warlock
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth|r
.fly Wetlands >> Fly to Wetlands
.target Gryth Thurden
.isOnQuest 4487
step << Warlock
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> Take the boat to Theramore
.isOnQuest 4487
step << Warlock
.goto Dustwallow Marsh,67.47,51.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Ratchet>> Fly to Ratchet
.isOnQuest 4487
step << Warlock
#completewith fsteed
.isOnQuest 4488
.goto The Barrens,62.627,35.500
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 4488 >> Turn in Summon Felsteed
.accept 4490 >> Accept Summon Felsteed
step << Warlock
#completewith fsteed
.isOnQuest 4487
.goto The Barrens,62.627,35.500
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 4487 >> Turn in Summon Felsteed
.accept 4490 >> Accept Summon Felsteed
step << Warlock
#label fsteed
.goto The Barrens,62.627,35.500
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.accept 4490 >> Accept Summon Felsteed
.turnin 4490 >> Turn in Summon Felsteed
step << Warlock
.goto The Barrens,62.509,35.449
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin 4962 >> Turn in Shard of a Felhound
.turnin 4976 >> Turn in Returning the Cleansed Orb
step << Warlock
.goto The Barrens,62.509,35.449
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
>>|cRXP_WARN_Wait out the RP|r
.accept 4964 >> Accept The Completed Orb of Dar'Orahil
.turnin 4964 >> Turn in The Completed Orb of Dar'Orahil
step << Warlock
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Theramore >> Fly to Theramore
.target Bragok
step << Warlock
.goto Dustwallow Marsh,71.46,56.30
.zone Wetlands >> Take the boat to Menethil Harbor
.zoneskip Arathi Highlands
step << Warlock
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Arathi >> Fly to Arathi
.target Shellei Brondir
step << Human Warrior/Gnome Warrior/Dwarf Warrior
.solo
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
.fly Arathi >> Fly to Arathi
.target Shellei Brondir
.zoneskip Wetlands,1
step
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Arathi>> Fly to Arathi
.target Gryth Thurden
.zoneskip Ironforge,1
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 40-41 Alterac/Arathi
#next 41-42 Badlands
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.accept 693 >> Accept Wand over Fist
.target Skuerto
step
.goto Arathi Highlands,62.50,33.72
>>Click the |cRXP_PICK_Shards of Myzrael|r
.accept 642 >> Accept The Princess Trapped
step
#completewith next
>>Mine the |cRXP_PICK_Lesser Bloodstone Deposits|r. Loot it for |cRXP_LOOT_Lesser Bloodstone Ore|r
>>|cRXP_WARN_These are found inside of the Cave|r
.collect 4278,4,627,1 
.skill mining,<75,1
step
.goto Arathi Highlands,78.59,39.99,50,0
.goto Arathi Highlands,82.02,39.59,40,0
.goto Arathi Highlands,83.12,35.52,40,0
.goto Arathi Highlands,87.11,31.40,25,0
.goto Arathi Highlands,84.30,30.95
>>Kill |cRXP_ENEMY_Drywhisker Kobolds|r, |cRXP_ENEMY_Drywhisker Diggers|r and |cRXP_ENEMY_Drywhisker Surveyors|r. Loot them for their |cRXP_LOOT_Motes|r
>>|cRXP_WARN_The quest turn in for this is inside the Cave. Clear your way to the back while completing it|r
.complete 642,1
.mob Drywhisker Kobold
.mob Drywhisker Digger
.mob Drywhisker Surveyor
step
.goto Arathi Highlands,87.11,31.40,25,0
.goto Arathi Highlands,84.30,30.95
>>Mine the |cRXP_PICK_Lesser Bloodstone Deposits|r. Loot it for |cRXP_LOOT_Lesser Bloodstone Ore|r
>>|cRXP_WARN_These are found inside of the Cave|r
.collect 4278,4,627,1 
.skill mining,<75,1
step
.goto Arathi Highlands,84.30,30.95
>>Click the |cRXP_PICK_Iridescent Shards|r at the back of the Cave
.turnin 642 >> Turn in The Princess Trapped
.accept 651 >> Accept Stones of Binding
step
#completewith EastBinding
.goto Arathi Highlands,70.34,39.52,140 >> Travel to the Circle of East Binding
step << Warrior
#completewith next
>>Kill |cRXP_ENEMY_Cresting Exiles|r. Loot them for their |cRXP_LOOT_Cresting Charms|r
.collect 4481,8,1712,1 
.mob Cresting Exile
.isOnQuest 1712
step
#label EastBinding
.goto Arathi Highlands,66.710,29.725
>>Open the |cRXP_PICK_Stone of East Binding|r. Loot it for the |cRXP_LOOT_Cresting Key|r
.complete 651,2 
step << Warrior
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>>Kill |cRXP_ENEMY_Cresting Exiles|r. Loot them for their |cRXP_LOOT_Cresting Charms|r
.collect 4481,8,1712,1 
.mob Cresting Exile
.isOnQuest 1712
step
.goto Arathi Highlands,60.18,53.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.accept 658 >> Accept Hints of a New Plague?
.target Quae
step
.goto Arathi Highlands,60.37,59.02,50,0
.goto Arathi Highlands,56.49,62.83,90,0
.goto Arathi Highlands,51.02,60.06,90,0
.goto Arathi Highlands,45.40,58.58,90,0
.goto Arathi Highlands,42.12,54.52,90,0
.goto Arathi Highlands,27.01,49.60,90,0
.goto Arathi Highlands,21.18,31.01,90,0
.goto Hillsbrad Foothills,74.57,50.07,90,0
.goto Hillsbrad Foothills,66.92,44.18,90,0
.goto Hillsbrad Foothills,57.57,36.38,70,0
.goto Hillsbrad Foothills,55.62,19.67,90,0
.goto Arathi Highlands,60.37,59.02
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot her for her |cRXP_LOOT_Sealed Folder|r
>>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find the|r |cRXP_ENEMY_Forsaken Courier|r << Hunter
>>|cRXP_WARN_If you can't see them in Hillsbrad, look for them in Arathi after. Her patrol route is marked on your map in Hillsbrad and Arathi|r
.complete 658,1 
.unitscan Forsaken Courier
step
.isQuestComplete 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 658 >> Turn in Hints of a New Plague?
.target Quae
step
.isQuestTurnedIn 658
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r and |cRXP_FRIENDLY_Kinelory|r
>>|cRXP_WARN_Someone may be doing the |cRXP_FRIENDLY_Kinelory|r escort if she isn't there. Wait until she returns|r
.accept 657 >> Accept Hints of a New Plague?
.target +Quae
.goto Arathi Highlands,60.185,53.848
.turnin 657 >> Turn in Hints of a New Plague?
.accept 660,1 >> Accept Hints of a New Plague?
.goto Arathi Highlands,60.238,53.920
.target +Kinelory
step
.isQuestTurnedIn 658
>>Escort |cRXP_FRIENDLY_Kinelory|r through Go'Shek Farm
.complete 660,1
.target Kinelory
step
#label NewPlague
.isQuestTurnedIn 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 660 >> Turn in Hints of a New Plague?
.accept 661 >> Accept Hints of a New Plague?
.target Quae
step
#completewith next
.goto Arathi Highlands,54.21,77.80,30 >> Enter the Bolderfist Hall Cave
step
.goto Arathi Highlands,54.75,81.87
>>Kill |cRXP_ENEMY_Kor'gresh Coldrage|r. Loot him for |cRXP_LOOT_Trelane's Wand|r
.complete 693,1 
.mob Kor'gresh Coldrage
step << skip
#completewith next
.goto Arathi Highlands,54.428,80.800
+|cRXP_WARN_Perform a Logout skip on the banner next to |cRXP_ENEMY_Kor'gresh Coldrage|r to teleport closer to Refuge Point. If you are unable to do this just run out normally|r
.link https://youtu.be/SWBtPqm5M0Q?t=61 >> |cRXP_WARN_Click here for video reference|r
.subzoneskip 316,1
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 693 >> Turn in Wand over Fist
.target Skuerto
step
.group
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.accept 694 >> Accept Trelane's Defenses
.target Skuerto
step
#qremove 658 
.goto Arathi Highlands,45.73,46.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.fly Southshore>> Fly to Southshore
.target Cedrik Prose
.zoneskip Arathi Highlands,1
step
#completewith ExitSS
>>|cRXP_WARN_The |cRXP_ENEMY_Shadowy Assassin|r attack on Southshore is a random event|r
>>If you ever see a |cRXP_ENEMY_Shadowy Assassin|r in Southshore, kill them. Loot them for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] to start the quest|r
>>|cRXP_WARN_Skip this step if you don't see the event|r
.collect 3668,1,522
.use 3668
.accept 522 >> Accept Assassin's Contract
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Anderson|r
.home >> Set your Hearthstone to Southshore
.target Innkeeper Anderson
step
#som
.goto Hillsbrad Foothills,51.88,58.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chef Jessen
>>Skip this if you dropped the Turtle Meat from earlier
.target Chef Jessen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
.accept 555 >> Accept Soothing Turtle Bisque
.turnin 555 >> Turn in Soothing Turtle Bisque
step
#era/som
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r up stairs
.turnin 1052 >> Turn in Down the Scarlet Path
.isOnQuest 1052
step
.dungeon SM
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r up stairs
.accept 1053 >> Accept In the Name of the Light
.isQuestTurnedIn 1052
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 522 >> Turn in Assassin's Contract
.isOnQuest 522
.target Magistrate Henry Maleb
step
.isOnQuest 661
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
.turnin 661 >> Turn in Hints of a New Plague?
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 523 >> Accept Baron's Demise
.isQuestTurnedIn 522
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 525 >> Turn in Further Mysteries
.accept 537 >> Accept Dark Council
.accept 512 >> Accept Noble Deaths
.target Magistrate Henry Maleb
step
.group
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.accept 504 >> Accept Crushridge Warmongers
.target Marshal Redpath
step
#label ExitSS
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 538 >> Turn in Southshore
.target Loremaster Dibbs
.isOnQuest 538
step
.group
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.accept 540 >> Accept Preserving Knowledge
.target Loremaster Dibbs
.isQuestTurnedIn 538
step
.goto Alterac Mountains,18.83,78.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver|r
.turnin 602 >> Turn in Magical Analysis
.accept 603 >> Accept Ansirem's Key
.target Archmage Ansirem Runeweaver
step
.dungeon SM
#completewith next
.goto Alterac Mountains,46.26,60.57,0
.goto Alterac Mountains,49.69,55.07,0
.goto Alterac Mountains,54.53,53.42,0
.goto Alterac Mountains,50.00,55.96,0
.zone Silverpine Forest >> Grind |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r while looking for a group for Scarlet Monastery
.zoneskip Tirisfal Glades
.mob Crushridge Ogre
.mob Crushridge Brute
step
.dungeon SM
.goto Silverpine Forest,69.95,7.05,150,0
.goto Tirisfal Glades,56.15,64.62,100,0
.goto 1415,47.500,19.652,25,0
.goto 1415,47.792,19.611
.subzone 796,2 >> Enter Scarlet Monastery. Start with Library so you can loot the [|cRXP_FRIENDLY_The Scarlet Key|r] at the end
step
.dungeon SM
#completewith Bosses
>>Loot the |cRXP_LOOT_Mythology of the Titans|r
>>|cRXP_WARN_This can spawn randomly on the ground or in bookshelves throughout the Library wing|r
.complete 1050,1 
.isOnQuest 1050
step
.dungeon SM
#completewith Mythology
>>Open |cRXP_PICK_Doan's Strongbox|r. Loot it for [|cRXP_FRIENDLY_The Scarlet Key|r]
.collect 7146,1 
step
.dungeon SM
#label Bosses
>>Kill |cRXP_ENEMY_Houndmaster Loksey|r, |cRXP_ENEMY_Herod|r, |cRXP_ENEMY_High Inquisitor Whitemane|r and |cRXP_ENEMY_Scarlet Commander Mograine|r
>>|cRXP_ENEMY_Houndmaster Loksey|r |cRXP_WARN_is located in the Library|r
>>|cRXP_ENEMY_Herod|r |cRXP_WARN_is located in the Armory|r
>>|cRXP_ENEMY_High Inquisitor Whitemane|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Commander Mograine|r are located in the Cathedral|r
.complete 1053,4 
.complete 1053,3 
.complete 1053,1 
.complete 1053,2 
.isOnQuest 1053
step
.dungeon SM
#label Mythology
>>Loot the |cRXP_LOOT_Mythology of the Titans|r
>>|cRXP_WARN_This can spawn randomly on the ground or in bookshelves throughout the Library wing|r
.complete 1050,1 
.isOnQuest 1050
step
.dungeon SM
#completewith next
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.dungeon SM
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r up stairs
.turnin 1053 >> Turn in In the Name of the Light
.isQuestTurnedIn 1052
step
.group
.goto Alterac Mountains,39.83,62.18,80,0
.goto Alterac Mountains,37.55,61.44,35 >> Travel to the Ruins of Alterac. This location will also serve as your exit route, should you need it
step
#completewith Ruins
.group 2
>>Kill |cRXP_ENEMY_Crushridge Warmongers|r
>>|cRXP_ENEMY_Crushridge Warmongers|r |cRXP_WARN_call for help at 25% HP|r
.complete 504,1 
.mob Crushridge Warmonger
.isOnQuest 504
step
.group 2
.goto Alterac Mountains,40.36,47.05,50,0
.goto Alterac Mountains,37.72,52.66,50,0
.goto Alterac Mountains,40.36,47.05
.line Alterac Mountains,35.58,54.44,35.26,54.33,35.20,54.18,35.77,53.74,36.26,55.11,36.66,54.81,36.29,53.75,37.30,52.85,37.59,52.71,38.24,52.79,38.87,51.55,39.28,50.93,39.52,49.71,40.14,47.23,40.91,46.30,40.24,46.09,40.13,47.69,39.19,51.17,38.51,52.01,38.11,52.68,37.46,52.78,36.28,53.71,35.88,52.69,35.52,53.01,35.77,53.74,35.20,54.18,35.26,54.33,35.58,54.44
>>Kill |cRXP_ENEMY_Grel'borg the Miser|r. Loot him for the |cRXP_LOOT_Perenolde Tiara|r
>>|cRXP_ENEMY_Grel'borg the Miser|r |cRXP_WARN_patrols the Ruins of Alterac. He is a level 39 Elite and easy to kill so long as you don't agro additional mobs. His patrol route is marked on your map|r
.complete 543,1 
.isOnQuest 543
.unitscan Grel'borg the Miser
step
.group 2
#label Ruins
.goto Alterac Mountains,38.421,46.368
>>Enter the Town Hall
>>Open the |cRXP_PICK_Weathered Bookcase|r. Loot it for the |cRXP_LOOT_Worn Leather Book|r
>>|cRXP_WARN_You may kill |cRXP_ENEMY_Muckrake|r or just CC him, loot and then run away|r
.complete 540,2 
.isOnQuest 540
step
.group 2
.goto Alterac Mountains,38.40,57.80,60,0
.goto Alterac Mountains,37.25,50.39,60,0
.goto Alterac Mountains,38.40,57.80,60,0
.goto Alterac Mountains,36.855,53.237
>>Kill |cRXP_ENEMY_Crushridge Warmongers|r
>>|cRXP_ENEMY_Crushridge Warmongers|r |cRXP_WARN_call for help at 25% HP|r
.complete 504,1 
.mob Crushridge Warmonger
.isOnQuest 504
step
.group
#completewith next
.goto Alterac Mountains,39.66,18.24,100 >> Travel to Dandred's Fold. Be careful of fall damage if dropping down from the Ruins of Alterac
.isOnQuest 504,543,540
step
.solo
#completewith next
.goto Alterac Mountains,39.66,18.24,100 >> Travel to Dandred's Fold
step
#completewith ShadowMage
.goto Alterac Mountains,62.39,43.64,0
>>Kill the |cRXP_ENEMY_Syndicate|r. Loot them for their |cRXP_LOOT_Signet Rings|r
>>|cRXP_ENEMY_Syndicate Assassins|r |cRXP_WARN_and |cRXP_ENEMY_Syndicate Spies|r will be in|r |T132320:0|t[Stealth]
.complete 512,1 
.mob Syndicate Assassin
.mob Syndicate Enforcer
.mob Syndicate Saboteur
.mob Syndicate Sentry
.mob Syndicate Spy
.mob Syndicate Wizard
step
.goto Alterac Mountains,39.22,14.31
>>Kill |cRXP_ENEMY_Nagaz|r. Loot him for his |cRXP_LOOT_Head|r
.complete 537,2 
.mob Nagaz
step
.goto Alterac Mountains,39.177,14.661
>>Open the |cRXP_PICK_Worn Wooden Chest|r. Loot it for the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r]
>>|cRXP_WARN_Use the |T134938:0|t[|cRXP_LOOT_Ensorcelled Parchment|r] to start the quest|r
.collect 3706,1,551
.use 3706
.accept 551 >> Accept The Ensorcelled Parchment
step
#completewith next
>>Kill |cRXP_ENEMY_Argus Shadow Mages|r
.complete 537,1 
.mob Argus Shadow Mage
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>>Kill |cRXP_ENEMY_Baron Vardus|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Baron Vardus|r |cRXP_WARN_can be in the outside camps, as well as the basement Inn of Strahnbrad|r
.complete 523,1 
.isOnQuest 523
.unitscan Baron Vardus
step
#label ShadowMage
.goto Alterac Mountains,62.3,40.6,50,0
.goto Alterac Mountains,63.6,43.7,50,0
.goto Alterac Mountains,57.4,46.2,50,0
.goto Alterac Mountains,62.3,40.6
.goto Alterac Mountains,47.8,17.4,0
.goto Alterac Mountains,53.3,20.7,0
.goto Alterac Mountains,56.1,27.3,0
.goto Alterac Mountains,58.7,30.5,0
>>Kill |cRXP_ENEMY_Argus Shadow Mages|r
>>|cRXP_WARN_You may find |cRXP_ENEMY_Argus Shadow Mages|r in Strahnbrad as well as The Uplands|r
.complete 537,1 
.mob Argus Shadow Mage
step
.goto Alterac Mountains,62.3,40.6,50,0
.goto Alterac Mountains,63.6,43.7,50,0
.goto Alterac Mountains,57.4,46.2,50,0
.goto Alterac Mountains,62.3,40.6
.goto Alterac Mountains,47.8,17.4,0
.goto Alterac Mountains,53.3,20.7,0
.goto Alterac Mountains,56.1,27.3,0
.goto Alterac Mountains,58.7,30.5,0
>>Kill the |cRXP_ENEMY_Syndicate|r. Loot them for their |cRXP_LOOT_Signet Rings|r
>>|cRXP_ENEMY_Syndicate Assassins|r |cRXP_WARN_and |cRXP_ENEMY_Syndicate Spies|r will be in|r |T132320:0|t[Stealth]
.complete 512,1 
.mob Syndicate Assassin
.mob Syndicate Enforcer
.mob Syndicate Saboteur
.mob Syndicate Sentry
.mob Syndicate Spy
.mob Syndicate Wizard
step
.group
.goto Alterac Mountains,47.48,58.94,0
.goto Alterac Mountains,51.73,40.23,70,0
.goto Alterac Mountains,45.19,33.91,70,0
.goto Alterac Mountains,51.46,53.84,70,0
.goto Alterac Mountains,48.54,40.72
>>Kill |cRXP_ENEMY_Crushridge Ogres|r and |cRXP_ENEMY_Crushridge Brutes|r. Loot them for their |cRXP_LOOT_Tomes|r
.complete 540,1
.isOnQuest 540
.mob Crushridge Ogre
.mob Crushridge Brute
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.goto Western Plaguelands,42.924,85.061
.fly Southshore>> Fly to Southshore
.target Bibilfaz Featherwhistle
step
.isQuestComplete 504
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 504 >> Turn in Crushridge Warmongers
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
.target Magistrate Henry Maleb
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 512 >> Turn in Noble Deaths
.turnin 537 >> Turn in Dark Council
step
.abandon 504 >> Abandon Crushridge Warmongers
step
.goto Hillsbrad Foothills,48.145,59.121
.target Magistrate Henry Maleb
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 523 >> Turn in Baron's Demise
.isOnQuest 523
step
.isQuestTurnedIn 337
.isQuestComplete 540
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 540 >> Turn in Preserving Knowledge
.turnin 551 >> Turn in The Ensorcelled Parchment
.accept 542 >> Accept Return to Milton
.accept 554 >> Accept Stormpike's Deciphering
.target Loremaster Dibbs
step
.isQuestTurnedIn 337
.isQuestTurnedIn 540
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 551 >> Turn in The Ensorcelled Parchment
.accept 542 >> Accept Return to Milton
.accept 554 >> Accept Stormpike's Deciphering
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 551 >> Turn in The Ensorcelled Parchment
.accept 554 >> Accept Stormpike's Deciphering
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 551 >> Turn in The Ensorcelled Parchment
.accept 554 >> Accept Stormpike's Deciphering
.target Loremaster Dibbs
step
.abandon 540 >> Abandon Preserving Knowledge
step
#completewith Faldir
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> Fly to Arathi Highlands
.target Darla Harris
step << Warrior
#completewith next
>>Kill |cRXP_ENEMY_Thundering Exiles|r. Loot them for their |cRXP_LOOT_Thundering Charms|r
.collect 4480,8,1712,1 
.mob Thundering Exile
.isOnQuest 1712
step
.goto Arathi Highlands,52.042,50.734
>>Open the |cRXP_PICK_Stone of Outer Binding|r. Loot it for the |cRXP_LOOT_Thundering Key|r
.complete 651,3 
step << Warrior
.goto Arathi Highlands,52.74,50.61,40,0
.goto Arathi Highlands,50.97,52.16,40,0
.goto Arathi Highlands,51.52,48.93,40,0
.goto Arathi Highlands,52.12,51.11
>>Kill |cRXP_ENEMY_Thundering Exiles|r. Loot them for their |cRXP_LOOT_Thundering Charms|r
.collect 4480,8,1712,1 
.mob Thundering Exile
.isOnQuest 1712
step
#completewith WestBinding
.goto Arathi Highlands,25.56,30.32,100 >> Travel to the Circle of West Binding
step << Warrior
#completewith next
>>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for their |cRXP_LOOT_Burning Charms|r
.collect 4479,8,1712,1 
.mob Burning Exile
.isOnQuest 1712
step
#label WestBinding
.goto Arathi Highlands,25.468,30.110
>>Open the |cRXP_PICK_Stone of West Binding|r. Loot it for the |cRXP_LOOT_Burning Key|r
.complete 651,1 
step << Warrior
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>>Kill |cRXP_ENEMY_Burning Exiles|r. Loot them for their |cRXP_LOOT_Burning Charms|r
.collect 4479,8,1712,1 
.mob Burning Exile
.isOnQuest 1712
step << Warrior
#completewith next
.goto Alterac Mountains,79.318,66.811 >> Travel to Chillwind Point in Alterac Mountains
step << Warrior
.isOnQuest 1712
.goto Alterac Mountains,79.318,66.811
>>Click |cRXP_PICK_Bath'rah's Cauldron|r
.complete 1712,3 
step << Warrior
#completewith TheSummoning
+Before Accepting The Summoning watch the video below on how to solo |cRXP_ENEMY_Cyclonian|r
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
.isOnQuest 1712
step << Warrior
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1712 >> Turn in Cyclonian
.target Bath'rah the Windwatcher
.isOnQuest 1712
step << Warrior
.isQuestTurnedIn 1712
#label TheSummoning
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.accept 1713 >> Accept The Summoning
.timer 40,The Summoning RP
>>|cRXP_WARN_Accepting this quest will summon |cRXP_ENEMY_Cyclonian|r. He hits fairly hard, but can be soloed. Be sure to check the video for pointers on how to do so|r
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,80.65,62.1
>>Follow |cRXP_FRIENDLY_Bath'rah the Windwatcher|r to where he will summon |cRXP_ENEMY_Cyclonian|r
>>Kill |cRXP_ENEMY_Cyclonian|r. Loot him for his |cRXP_LOOT_Whirlwind Heart|r
>>|cRXP_ENEMY_Cyclonian|r hits fairly hard, but can be soloed. Be sure to check the video for pointers on how to do so|r
.complete 1713,1 
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_Click here for video reference|r
.isOnQuest 1713
step << Warrior
.isQuestComplete 1713
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1713 >> Turn in The Summoning
.target Bath'rah the Windwatcher
step << Warrior
.isQuestTurnedIn 1713
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
>>|cRXP_WARN_The |T132403:0|t[|cFF0070FFWhirlwind Axe|r] is the best reward out of them all. However, if you do wish to choose a different weapon, it's only a small loss|r
.turnin 1792 >> Turn in Whirlwind Weapon
.target Bath'rah the Windwatcher
step << Warrior 
.isQuestTurnedIn 1713
#completewith HinterArrive
.goto Hillsbrad Foothills,71.43,21.04,50,0
.goto Hillsbrad Foothills,84.23,31.99,50,0
.goto The Hinterlands,6.23,61.87
.zone The Hinterlands >> Travel to The Hinterlands
step
#completewith next
.isQuestAvailable 1713 << Warrior 
.goto The Hinterlands,6.23,61.87
.zone The Hinterlands >> Travel to The Hinterlands
step
#label HinterArrive
.goto The Hinterlands,11.806,46.755
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falstad Wildhammer|r
.turnin 1449 >> Turn in To The Hinterlands
.accept 1450 >> Accept Gryphon Master Talonaxe
.target Falstad Wildhammer
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fp Hinterlands >> Get The Hinterlands Flight Path
.target Guthrum Thunderfist
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 1450 >> Turn in Gryphon Master Talonaxe
.accept 1451 >> Accept Rhapsody Shindigger
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,26.943,48.588
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
.turnin 1451 >> Turn in Rhapsody Shindigger
.accept 1452 >> Accept Rhapsody's Kalimdor Kocktail
.target Rhapsody Shindigger
step
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip The Hinterlands,1
step
#completewith Faldir
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi >> Fly to Arathi Highlands
.target Darla Harris
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.accept 682 >> Accept Stromgarde Badges
.target Captain Nials
step
.group
.goto Arathi Highlands,46.042,47.764
>>Click the |cRXP_PICK_Wanted Board|r
.accept 684 >> Accept Wanted! Marez Cowl
.accept 685 >> Accept Wanted! Otto and Falconcrest
step
.solo
.goto Arathi Highlands,36.229,57.375
>>Click the |cRXP_PICK_Stone of Inner Binding|r
.turnin 651 >> Turn in Stones of Binding
step
.group
.goto Arathi Highlands,36.229,57.375
>>Click the |cRXP_PICK_Stone of Inner Binding|r
.turnin 651 >> Turn in Stones of Binding
.accept 652 >> Accept Breaking the Keystone
step
#completewith MarezCowl
.group 2
.goto Arathi Highlands,26.04,62.80,0
>>Kill |cRXP_ENEMY_Syndicate Thieves|r, |cRXP_ENEMY_Syndicate Conjurors|r and |cRXP_ENEMY_Syndicate Prowlers|r. Loot them for their |cRXP_LOOT_Badges|r
.complete 682,1 
.mob Syndicate Thief
.mob Syndicate Conjuror
.mob Syndicate Prowler
.isOnQuest 682
step
#completewith next
.group 2
.goto Arathi Highlands,29.599,63.682,0 
>>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
.group 4
.goto Arathi Highlands,26.026,65.656
>>Kill |cRXP_ENEMY_Otto|r and |cRXP_ENEMY_Lord Falconcrest|r. Loot them for their |cRXP_LOOT_Heads|r
.complete 685,1 
.complete 685,2 
.mob Otto
.mob Lord Falconcrest
.isOnQuest 685
step
#label MarezCowl
.group 2
.goto Arathi Highlands,29.599,63.682,0 
.goto Arathi Highlands,29.477,64.149,20,0 
.goto Arathi Highlands,29.624,62.975 
>>Kill |cRXP_ENEMY_Marez Cowl|r. Loot her for her |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Marez Cowl|r |cRXP_WARN_has 2 different spawn locations. One is on the high ground location, and the other is below behind the house. They are marked on your map|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location she is in|r << Hunter
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
.group 2
.goto Arathi Highlands,26.04,62.80,40,0
.goto Arathi Highlands,29.477,64.149,40,0
.goto Arathi Highlands,26.04,62.80
>>Kill |cRXP_ENEMY_Syndicate Thieves|r, |cRXP_ENEMY_Syndicate Conjurors|r and |cRXP_ENEMY_Syndicate Prowlers|r. Loot them for their |cRXP_LOOT_Badges|r
.complete 682,1 
.mob Syndicate Thief
.mob Syndicate Conjuror
.mob Syndicate Prowler
.isOnQuest 682
step
.group 2
.goto Arathi Highlands,24.14,61.85,30,0
.goto Arathi Highlands,24.25,64.97,30,0
.goto Arathi Highlands,21.22,66.52,40,0
.goto Arathi Highlands,20.21,67.17
>>Kill |cRXP_ENEMY_Boulderfist Shamans|r. Loot them for the |cRXP_LOOT_Azure Agate|r
.complete 694,1 
.mob Boulderfist Shaman
.isOnQuest 694
step
.group 3
.line Arathi Highlands,51.47,62.86,52.40,61.71,52.88,60.55,53.55,59.12,53.50,57.45,56.00,53.72,57.19,53.47,57.83,52.44,58.15,50.90,58.95,49.98,59.25,48.79,63.29,47.45,64.13,46.33,64.67,45.12,65.36,44.70,66.45,41.91,66.46,38.76,67.12,37.75,66.76,36.28,67.13,34.82,66.72,32.40,65.81,31.48,65.32,30.15,65.20,29.17,65.23,28.38,64.45,27.54,64.92,28.84,65.56,29.31,65.94,29.87,65.72,30.38,65.85,33.96,65.85,39.15,65.39,39.96,64.65,40.04,63.83,40.93,64.40,42.42,63.55,43.66,62.72,42.95,61.41,42.66,60.33,43.59,58.51,44.13,57.48,45.04,56.39,46.10,55.30,46.04,54.34,46.32,53.92,47.60,53.39,48.30,53.22,49.35,52.48,49.62,52.20,50.10,51.37,49.86,50.94,50.55,50.15,54.42,49.47,55.75,49.21,56.40,48.59,57.35,47.53,56.82,45.94,56.89,44.73,57.27,44.18,57.62,43.39,57.58,41.99,54.35,41.37,52.86,41.00,51.93,40.26,50.75,39.01,50.91,37.71,49.91,37.26,49.60,36.31,49.65,34.70,49.04,32.84,48.14,31.85,47.98,30.96,45.92,30.53,45.11,29.31,45.06,28.95,43.63,28.32,42.50,27.88,41.11,27.82,39.36,27.14,38.30,27.24,35.22,27.02,33.80,26.63,32.82,26.71,31.35,25.98,30.58,26.50,30.73,26.40,32.32,24.72,34.39,24.09,34.93,23.68,35.34,23.51,35.57,22.92,36.46,22.69,38.23,21.29,39.69,21.85,41.02,21.32,42.13,21.28,43.16,21.29,44.12,22.50,44.63,22.80,45.81,22.95,46.40,24.03,46.68,25.02,47.22,25.65,47.63,26.78,48.39,28.37,49.05,28.44,49.09,29.21,50.19,29.66,51.84,30.25,52.82,30.47,53.30,30.53,54.51,31.28,55.28,39.30,55.96,40.00,57.11,40.35,56.72,40.64,56.41,41.45,57.19,41.84,57.99,42.80,58.55,43.39,58.58,44.48,58.75,45.09,58.86,46.58,59.63,47.74,60.30,48.88,60.56,50.05,62.41,50.33,62.96,51.41,62.92
>>Kill |cRXP_ENEMY_Fozruk|r. Loot him for the |cRXP_LOOT_Rod of Order|r
>>|cRXP_WARN_Focus on killing and interrupting the casts of |cRXP_ENEMY_Sleeby|r, |cRXP_ENEMY_Znort|r and |cRXP_ENEMY_Feeboz|r before killing|r |cRXP_ENEMY_Fozruk|r
>>|cRXP_ENEMY_Fozruk|r |cRXP_WARN_can be CC'd|r
>>|cRXP_WARN_Their patrol path is marked on your map|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find|r |cRXP_ENEMY_Fozruk|r << Hunter
>>|cRXP_WARN_After you deleash the kobolds and have only|r |cRXP_ENEMY_Fozruk|r |cRXP_WARN_on you kill him by keeping him|r |T136183:0|t[Feared] << Warlock
.complete 652,1
.link https://youtu.be/yM9OfJoj5Z8 >> |cRXP_WARN_Click here for video reference|r << Hunter/Warlock
.unitscan Fozruk
.mob Sleeby
.mob Znort
.mob Feeboz
step
.group
.goto Arathi Highlands,36.07,58.09
>>Click on the |cRXP_PICK_Keystone|r
>>|cRXP_WARN_If you are still in a group, hand in this quest while with your party! |cRXP_ENEMY_Thenan|r, a level 42 Elite will spawn. You can either kill him or run away and reset him if you're solo|r
.turnin 652 >> Turn in Breaking the Keystone
.isQuestComplete 652
step
.group
.goto Arathi Highlands,36.07,58.09
>>Click on the |cRXP_PICK_Keystone|r
.accept 653 >> Accept Myzrael's Allies
.isQuestTurnedIn 652
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 682 >> Turn in Stromgarde Badges
.turnin 684 >> Turn in Wanted! Marez Cowl
.turnin 685 >> Turn in Wanted! Otto and Falconcrest
.target Captain Nials
.isQuestComplete 682
.isQuestComplete 684
.isQuestComplete 685
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
.target Captain Nials
.isQuestComplete 684
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 685 >> Turn in Wanted! Otto and Falconcrest
.target Captain Nials
.isQuestComplete 685
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 682 >> Turn in Stromgarde Badges
.target Captain Nials
.isQuestComplete 682
step
.group
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.turnin 694 >> Turn in Trelane's Defenses
.target Apprentice Kryten
.isQuestComplete 694
step
.group
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
.accept 695 >> Accept An Apprentice's Enchantment
.target Apprentice Kryten
.isQuestTurnedIn 694
step
.group
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 695 >> Turn in An Apprentice's Enchantment
>>|cRXP_WARN_Skip the follow up. It is way too dangerous in Hardcore|r
.target Skuerto
.isQuestTurnedIn 694
step
.group
.destroy 4529 >> Destroy the |T134094:0|t[Enchanted Agate]. You don't need it
step
#label Faldir
#completewith next
.goto Arathi Highlands,30.74,66.94,60,0
.goto Arathi Highlands,22.72,71.98,50,0
.goto Arathi Highlands,21.50,75.91,40,0
.goto Arathi Highlands,21.98,79.96,30 >> Travel to Faldir's Cove
step
.goto Arathi Highlands,31.78,82.68
.target Lolo the Lookout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo the Lookout|r
.accept 663 >> Accept Land Ho!
step
.goto Arathi Highlands,32.283,81.364
.target Shakes O'Breen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 663 >> Turn in Land Ho!
step
.goto Arathi Highlands,32.79,81.48
.target First Mate Nilzlix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Nilzlix|r
.accept 662 >> Accept Deep Sea Salvage
step
.goto Arathi Highlands,34.002,80.792
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r
.accept 664 >> Accept Drowned Sorrows
.target Captain Steelgut
step
.goto Arathi Highlands,33.869,80.549
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Phizzlethorpe|r
>>|cRXP_WARN_This will start an escort. If |cRXP_FRIENDLY_Professor Phizzlethorpe|r is not there, someone may already be doing it. Wait for him to return|r
.accept 665 >> Accept Sunken Treasure
.target Professor Phizzlethorpe
step
.goto Arathi Highlands,35.74,79.59,30,0
.goto Arathi Highlands,33.856,80.444
>>Escort |cRXP_FRIENDLY_Professor Phizzlethorpe|r into the small Cave
>>Kill the |cRXP_ENEMY_Vengeful Surges|r that attack once inside
>>Follow |cRXP_FRIENDLY_Professor Phizzlethorpe|r back to the camp afterwards
.complete 665,1
.target Professor Phizzlethorpe
.mob Vengeful Surge
step
.goto Arathi Highlands,33.856,80.444
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
.turnin 665 >> Turn in Sunken Treasure
.accept 666 >> Accept Sunken Treasure
.target Doctor Draxlegauge
step << !Warlock !Druid
#completewith SLog
.cast 7178 >> |cRXP_WARN_Use your|r |T134797:0|t[Elixir of Water Breathing] |cRXP_WARN_if you have one|r
>>|cRXP_WARN_PAY CLOSE ATTENTION TO YOUR BREATH BAR IF YOU DO NOT HAVE ONE!|r
.use 5996 
step
#completewith SLog
>>Loot the |cRXP_LOOT_Elven Gems|r on the sea floor
.use 4491 >> |cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_so the |cRXP_LOOT_Elven Gems|r show up on your minimap|r
>>|cRXP_WARN_Ensure you have buffed yourself with|r |T136148:0|t[Unending Breath] << Warlock
>>|cRXP_WARN_Cast|r |T132112:0|t[Aquatic Form] |cRXP_WARN_once your Breath Bar gets low|r << Druid
.complete 666,1 
.use 5996 
step
#completewith SLog
>>Kill |cRXP_ENEMY_Daggerspine Raiders|r and |cRXP_ENEMY_Daggerspine Sorceresses|r
>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Daggerspine Raiders|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
.complete 664,1 
.complete 664,2 
.use 5996 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
.goto Arathi Highlands,23.394,85.086
>>Loot |cRXP_LOOT_Maiden's Folly Log|r on the 2nd floor of the ship. It is inside of the Cauldron
.complete 662,2 
.use 5996 
step
.goto Arathi Highlands,23.045,84.510
>>Loot |cRXP_LOOT_Maiden's Folly Charts|r on the 2nd floor of the ship. It is on the Pillar
.complete 662,1 
.use 5996 
step
#completewith next
.goto Arathi Highlands,20.5,85.6,50 >> Swim to the other sunken ship
step
.goto Arathi Highlands,20.458,85.612
>>Loot the |cRXP_LOOT_Spirit of Silverpine Charts|r on the 2nd floor of the ship. It is on top of the Crate next to the Cannon
.complete 662,3 
.use 5996 
step
#label SLog
.goto Arathi Highlands,20.649,85.103
>>Loot the |cRXP_LOOT_Spirit of Silverpine Charts|r on the bottom of the ship. It is on the sea floor
.complete 662,4 
.use 5996 
step
#completewith next
>>Loot the |cRXP_LOOT_Elven Gems|r on the sea floor
.use 4491 >> |cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_so the |cRXP_LOOT_Elven Gems|r show up on your minimap|r
>>|cRXP_WARN_Ensure you have buffed yourself with|r |T136148:0|t[Unending Breath] << Warlock
>>|cRXP_WARN_Cast|r |T132112:0|t[Aquatic Form] |cRXP_WARN_once your Breath Bar gets low|r << Druid
.complete 666,1 
.use 5996 
step
.goto Arathi Highlands,19.3,84.1,90,0
.goto Arathi Highlands,17.7,89.5,90,0
.goto Arathi Highlands,25.5,90.8,90,0
.goto Arathi Highlands,24.1,85.7,90,0
.goto Arathi Highlands,23.2,89.7,90,0
.goto Arathi Highlands,19.3,84.1
>>Kill |cRXP_ENEMY_Daggerspine Raiders|r and |cRXP_ENEMY_Daggerspine Sorceresses|r
>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Daggerspine Raiders|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
.complete 664,1 
.complete 664,2 
.use 5996 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
.goto Arathi Highlands,17.7,88.8,80,0
.goto Arathi Highlands,23.0,92.2,80,0
.goto Arathi Highlands,24.3,84.8,80,0
.goto Arathi Highlands,25.2,90.6,80,0
.goto Arathi Highlands,19.6,84.7,80,0
.goto Arathi Highlands,22.7,88.6
>>Loot the |cRXP_LOOT_Elven Gems|r on the sea floor
.use 4491 >> |cRXP_WARN_Equip your|r |T133149:0|t[Goggles of Gem Hunting] |cRXP_WARN_so the |cRXP_LOOT_Elven Gems|r show up on your minimap|r
>>|cRXP_WARN_Ensure you have buffed yourself with|r |T136148:0|t[Unending Breath] << Warlock
>>|cRXP_WARN_Cast|r |T132112:0|t[Aquatic Form] |cRXP_WARN_once your Breath Bar gets low|r << Druid
.complete 666,1 
.use 5996 
step
#completewith NormalHelm
.itemStat 1,QUALITY,1
+Equip your normal |T133127:0|t[Helmet]
step
.goto Arathi Highlands,32.79,81.48
.target First Mate Nilzlix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Nilzlix|r
.turnin 662 >> Turn in Deep Sea Salvage
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r and |cRXP_FRIENDLY_Doctor Draxlegauge|r
.turnin 664 >> Turn in Drowned Sorrows
.target +Captain Steelgut
.goto Arathi Highlands,34.002,80.792
.turnin 666 >> Turn in Sunken Treasure
.accept 668 >> Accept Sunken Treasure
.goto Arathi Highlands,33.856,80.444
.target +Doctor Draxlegauge
step
#label NormalHelm
.goto Arathi Highlands,32.283,81.364
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 668 >> Turn in Sunken Treasure
.accept 669 >> Accept Sunken Treasure
.target Shakes O'Breen
step << skip
#completewith next
.goto Arathi Highlands,35.79,79.52,10 >> Logout on top of the rock in the cave where you escorted |cRXP_FRIENDLY_Professor Phizzlethorpe|r, then log back in
.link https://www.youtube.com/watch?v=SWBtPqm5M0Q&t=114s >> |cRXP_WARN_Click here for video reference|r
step << !Mage
.goto Arathi Highlands,45.73,46.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.fly Ironforge >> Fly to Ironforge
.zoneskip Arathi Highlands,1
.target Cedrik Prose
step << Mage
.cast 3562 >>Cast |T135763:0|t[Teleport: Ironforge]
.usespell 3562
.zoneskip Ironforge
step
.group
.abandon 684 >> Abandon Wanted! Marez Cowl
step
.group
.abandon 685 >> Abandon Wanted! Otto and Falconcrest
step
.group
.abandon 696 >> Abandon Attack on the Tower
step
.group
.abandon 694 >> Abandon Trelane's Defenses
step
.group
.abandon 652 >> Abandon Breaking the Keystone
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 41-42 Badlands
#next 42-43 Stranglethorn Vale III
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy Featherwhistle|r and |cRXP_FRIENDLY_Milli Featherwhistle|r
.train 10907 >>Train |T132247:0|t[Mechanostrider Piloting]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FFMechanostrider|r]
.goto Dun Morogh,49.123,47.956
.xp <40,1
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veron Amberstill|r and |cRXP_FRIENDLY_Ultham Ironhorn|r
.vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FFRam|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>Train |T132248:0|t[Ram Riding]
.goto Dun Morogh,63.944,50.095
.xp <40,1
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,27.18,8.60 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Dink << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
.goto Ironforge,70.856,85.839
.train 14925 >>Train |T132270:0|t[Growl (Rank 5)]
.target Belia Thundergranite
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.goto Ironforge,35.90,60.17
.bankdeposit 5826,4502,5996,3684,3660 >> Deposit the following items into your bank:
>>|T134332:0|t[Kravel's Scheme] 
>>|T134116:0|t[Sample Elven Gem] 
>>|T134797:0|t[Elixir of Water Breathing] (If you have any) 
>>|T132767:0|t[Perenolde Tiara] (If you have it) 
>>|T132761:0|t[Tomes of Alterac] (If you have it) 
.target Bailey Stonemantle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.goto Ironforge,35.90,60.17
.bankwithdraw 4611 >> Withdraw the following items from your bank:
>>9 |T134564:0|t[Blue Pearls] (If you have them)
.target Bailey Stonemantle
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>Buy the following items for a instant turn in at Badlands shortly. Skip this step if you wish to not buy any
>>|T134564:0|t[Blue Pearl]
.collect 4611,9,705,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.turnin 1467 >> Turn in Reagents for Reclaimers Inc.
.isOnQuest 1467
.target Roetten Stonehammer
step
.goto Ironforge,74.645,11.742
.target Prospector Stormpike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.accept 707 >> Accept Ironband Wants You!
.turnin 554 >> Turn in Stormpike's Deciphering
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
.turnin 1050 >> Turn in Mythology of the Titans
.target Librarian Mae Paledust
step
.group
.goto Ironforge,50.827,5.621
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 653 >> Turn in Myzrael's Allies
.accept 687 >> Accept Theldurin the Lost
.target Gerrig Bonegrip
.isQuestTurnedIn 652
step
#completewith EnterBandlands
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Loch Modan>> Fly to Loch Modan
.target Gryth Thurden
step
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
.accept 2500 >> Accept Badlands Reagent Run
.target Ghak Healtouch
step
#completewith next
.goto Loch Modan,65.93,65.62,80 >> Travel to Ironband's Excavation Site
step
.goto Loch Modan,65.934,65.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.turnin 707 >> Turn in Ironband Wants You!
.target Prospector Ironband
.accept 738 >> Accept Find Agmond
step
#completewith EnterBandlands
.goto Loch Modan,47.04,79.27,0
.goto Loch Modan,46.71,76.90,65,0
.goto Badlands,49.23,7.80
.zone Badlands >> Travel to Badlands
step
#completewith StudyR
>>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Gizzards|r and |cRXP_LOOT_Wings|r
>>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Fangs|r
.complete 2500,1 
.collect 3404,4,703,1 
.complete 2500,2 
.mob Starving Buzzard
.mob Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote

step
#label EnterBandlands
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r and |cRXP_FRIENDLY_Sigrun Ironhew|r
.accept 719 >> Accept A Dwarf and His Tools
.target +Prospector Ryedol
.goto Badlands,53.421,43.393
.accept 718 >> Accept Mirages
.goto Badlands,53.802,43.301
.target +Sigrun Ironhew
step
#completewith next
.goto Badlands,53.20,30.57,0
.goto Badlands,43.46,30.54,0
>>Kill |cRXP_ENEMY_Shadowforge Dwarves|r. Loot them for |cRXP_LOOT_Ryedol's Lucky Pick|r
.complete 719,1
.mob Shadowforge Tunneler
.mob Shadowforge Darkweaver
.mob Shadowforge Chanter
.mob Shadowforge Warrior
step
.goto Badlands,53.027,33.944
>>Click the |cRXP_PICK_Crumpled Map|r on the ground
.accept 720 >> Accept A Sign of Hope
step
.goto Badlands,53.20,30.57,40,0
.goto Badlands,43.46,30.54,40,0
.goto Badlands,53.20,30.57,40,0
.goto Badlands,43.46,30.54
>>Kill |cRXP_ENEMY_Shadowforge Dwarves|r. Loot them for |cRXP_LOOT_Ryedol's Lucky Pick|r
.complete 719,1
.mob Shadowforge Tunneler
.mob Shadowforge Darkweaver
.mob Shadowforge Chanter
.mob Shadowforge Warrior
step
#completewith next
.goto Badlands,66.92,23.45,50 >> Travel to Camp Kosh
step
.goto Badlands,66.601,21.487,10,0
.goto Badlands,66.604,22.026,10,0
.goto Badlands,66.164,21.886,10,0
.goto Badlands,66.92,23.45
>>Loot the |cRXP_PICK_Supply Crate|r on the ground
>>|cRXP_WARN_The |cRXP_PICK_Supply Crate|r can spawn in a few locations at Camp Kosh|r
.complete 718,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r and |cRXP_FRIENDLY_Prospector Ryedol|r
.turnin 718 >> Turn in Mirages
.accept 733 >> Accept Scrounging
.target +Sigrun Ironhew
.goto Badlands,53.802,43.301
.turnin 719 >> Turn in A Dwarf and His Tools
.turnin 720 >> Turn in A Sign of Hope
.goto Badlands,53.421,43.393
.target +Prospector Ryedol
step
.goto Badlands,42.220,52.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
.turnin 1106 >> Turn in Martek the Exiled
.accept 1108 >> Accept Indurium
.target Martek the Exiled
step
#optional
.goto Badlands,42.388,52.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
>>|cRXP_WARN_Save the|r |T133581:0|t[Flash Bomb] |cRXP_WARN_reward from this quest for killing|r |cRXP_ENEMY_King Bangalash|r |cRXP_WARN_in STV later|r
.accept 705 >> Accept Pearl Diving
.turnin 705 >> Turn in Pearl Diving
.itemcount 4611,9
.target Rigglefuzz
step
.abandon 705 >> Abandon Pearl Diving
step
.goto Badlands,42.388,52.927
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.accept 703 >> Accept Barbecued Buzzard Wings
step
.isQuestComplete 703
.goto Badlands,42.388,52.927
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.turnin 703 >> Turn in Barbecued Buzzard Wings
step
.goto Badlands,50.892,62.402
>>Click the |cRXP_PICK_Battered Dwarven Skeleton|r
.turnin 738 >> Turn in Find Agmond
.accept 739 >> Accept Murdaloc
step
>>Kill |cRXP_ENEMY_Stonevault Bonesnappers|r and |cRXP_ENEMY_Murdaloc|r. Loot them for their |cRXP_LOOT_Indurium|r
.complete 739,2 
.goto Badlands,53.0,72.2,40,0
.goto Badlands,47.2,70.6,40,0
.goto Badlands,52.4,66.2,40,0
.goto Badlands,50.36,69.12
.complete 739,1 
.goto Badlands,49.58,66.66
.complete 1108,1 
.goto Badlands,53.0,72.2,40,0
.goto Badlands,47.2,70.6,40,0
.goto Badlands,52.4,66.2,40,0
.goto Badlands,50.36,69.12
.mob Stonevault Bonesnapper
.mob Murdaloc
step
.group
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.turnin 687 >> Turn in Theldurin the Lost
.target Theldurin the Lost
.isQuestTurnedIn 653
step
.goto Badlands,42.220,52.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
.turnin 1108 >> Turn in Indurium
.timer 20,Indurium RP
.accept 1137 >> Accept News for Fizzle
.target Martek the Exiled
step
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.accept 710 >> Accept Study of the Elements: Rock
step
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8,60,0
.goto Badlands,13.8,38.6,60,0
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8
>>Kill |cRXP_ENEMY_Lesser Rock Elementals|r. Loot them for their |cRXP_LOOT_Small Stone Shards|r and |cRXP_LOOT_Rock Elemental Shards|r
>>|cRXP_WARN_You don't have to collect all |cRXP_LOOT_Rock Elemental Shards|r right now|r
.complete 710,1 
.complete 2500,3 
.disablecheckbox
.mob Lesser Rock Elemental
step
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 710 >> Turn in Study of the Elements: Rock
.accept 711 >> Accept Study of the Elements: Rock
.target Lotwil Veriatus
step
.goto Badlands,14.70,35.30
>>Kill |cRXP_ENEMY_Rock Elementals|r. Loot them for their |cRXP_LOOT_Large Stone Slabs|r and |cRXP_LOOT_Rock Elemental Shards|r
>>|cRXP_WARN_You don't have to collect all |cRXP_LOOT_Rock Elemental Shards|r right now|r
.complete 711,1 
.complete 2500,3 
.disablecheckbox
.mob Rock Elemental
step
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 711 >> Turn in Study of the Elements: Rock
.target Lotwil Veriatus
step
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8,60,0
.goto Badlands,13.8,38.6,60,0
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8
>>Kill |cRXP_ENEMY_Lesser Rock Elementals|r. Loot them for their |cRXP_LOOT_Rock Elemental Shards|r
.complete 2500,3 
.mob Lesser Rock Elemental
step
#label StudyR
.goto Badlands,13.6,74.8
.goto Badlands,8.6,75.8,55,0
.goto Badlands,11.0,80.0,55,0
.goto Badlands,8.0,83.6,55,0
.goto Badlands,8.6,75.8,55,0
.goto Badlands,11.0,80.0,55,0
.goto Badlands,8.0,83.6,55,0
.goto Badlands,11.0,80.0
>>Kill |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for their |cRXP_LOOT_Scrap Metal|r
.complete 733,1 
.mob Dustbelcher Wyrmhunter
.mob Dustbelcher Mauler
.mob Dustbelcher Shaman
step
>>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Gizzards|r and |cRXP_LOOT_Wings|r
>>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Fangs|r
.complete 2500,1 
.goto Badlands,49.8,53.0,80,0
.goto Badlands,56.2,67.2,80,0
.goto Badlands,50.6,74.8,80,0
.goto Badlands,60.0,70.6,80,0
.goto Badlands,60.8,53.4,80,0
.goto Badlands,55.8,60.2
.complete 703,1 
.goto Badlands,49.8,53.0,80,0
.goto Badlands,56.2,67.2,80,0
.goto Badlands,50.6,74.8,80,0
.goto Badlands,60.0,70.6,80,0
.goto Badlands,60.8,53.4,80,0
.goto Badlands,55.8,60.2
.complete 2500,2 
.goto Badlands,49.0,32.4,80,0
.goto Badlands,49.2,48.8,80,0
.goto Badlands,57.8,47.7,80,0
.goto Badlands,56.6,73.8,80,0
.goto Badlands,58.8,54.0
.mob Starving Buzzard
.mob Buzzard
.mob Giant Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.goto Badlands,42.388,52.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.turnin 703 >> Turn in Barbecued Buzzard Wings
.target Rigglefuzz
step
.goto Badlands,53.802,43.301
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.turnin 733 >> Turn in Scrounging
.target Sigrun Ironhew
step
#completewith ExitLM
.goto Badlands,49.52,9.83,0
.goto Loch Modan,46.78,78.09
.zone Loch Modan >> Travel to Loch Modan
step
.goto Loch Modan,65.934,65.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.turnin 739 >> Turn in Murdaloc
.target Prospector Ironband
step
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
.turnin 2500 >> Turn in Badlands Reagent Run
.target Ghak Healtouch
step
#completewith next
.destroy 7846 >> Delete any extra |T134298:0|t[Crag Coyote Fangs] you still have
step
#label ExitLM
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
.fly Ironforge >> Fly to Ironforge
.target Thorgrum Borrelson
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 42-43 Stranglethorn Vale III
#next 43-44 Swamp of Sorrows II
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.goto Ironforge,35.90,60.17
.bankwithdraw 3684,3660,5826,4502 >> Withdraw the following items from your bank:
>>|T134332:0|t[Kravel's Scheme] 
>>|T134116:0|t[Sample Elven Gem] 
>>|T132767:0|t[Perenolde Tiara] (If you have it) 
>>|T132761:0|t[Tomes of Alterac] (If you have it) 
.target Bailey Stonemantle
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy Featherwhistle|r and |cRXP_FRIENDLY_Milli Featherwhistle|r
.train 10907 >>Train |T132247:0|t[Mechanostrider Piloting]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FFMechanostrider|r]
.goto Dun Morogh,49.123,47.956
.xp <40,1
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veron Amberstill|r and |cRXP_FRIENDLY_Ultham Ironhorn|r
.vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FFRam|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>Train |T132248:0|t[Ram Riding]
.goto Dun Morogh,63.944,50.095
.xp <40,1
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,27.18,8.60 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Dink << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
.goto Ironforge,70.856,85.839
.trainer >> Ensure your pets |T135850:0|t[Frost Resistance] is maxed
.target Belia Thundergranite
step
#completewith start
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r
step
.group
.goto Stormwind City,74.010,30.231
.target Count Remington Ridgewell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
.turnin 543 >> Turn in The Perenolde Tiara
.isQuestComplete 543
step
.goto Stormwind City,74.182,7.465
.target Milton Sheaf
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 542 >> Turn in Return to Milton
.isOnQuest 542
step
#completewith next
.goto Stormwind City,37.94,82.52,15 >> Travel towards |cRXP_FRIENDLY_High Sorcerer Andromath|r in the Mage Tower
step
.goto Stormwind City,37.52,81.65
.target High Sorcerer Andromath
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
.accept 1477 >> Accept Vital Supplies
step
.abandon 543 >> Abandon The Perenolde Tiara
step
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angus Stern|r
.accept 212 >> Accept A Meal Served Cold
>>|cRXP_WARN_This is a 30 minute timed quest. You must not logout during this time otherwise the quest will fail|r
.target Angus Stern
step
.goto Stormwind City,52.615,65.704
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
.home >> Set your Hearthstone to Stormwind
.target Innkeeper Allison
step
#label start
#completewith ServedCold
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Westfall >> Fly to Westfall
.target Dungar Longdrink
step
#completewith ServedCold
.goto Duskwood,44.65,86.61,0
.goto Stranglethorn Vale,40.70,3.72
.zone Stranglethorn Vale >> Travel to the Rebel Camp
step
.goto Stranglethorn Vale,37.832,3.559
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.accept 207 >> Accept Kurzen's Mystery
.target Brother Nimetz
step
.group
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.accept 202 >> Accept Colonel Kurzen
.target Lieutenant Doren
step
#completewith next
.goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 196 >> Accept Raptor Mastery
.target +Hemet Nesingwary
.goto Stranglethorn Vale,35.658,10.808
.accept 193 >> Accept Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target +Sir S. J. Erlgadin
step
.goto Stranglethorn Vale,36.6,41.0
>>Kill |cRXP_ENEMY_Cold Eye Basilisks|r. Loot them for the |cRXP_LOOT_Chilled Basilisk Haunch|r
.complete 212,1 
.mob Cold Eye Basilisk
step
#completewith next
.hs >> Hearth to Stormwind
.zoneskip Stormwind City
step
#label ServedCold
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angus Stern|r
.turnin 212 >> Turn in A Meal Served Cold
.target Angus Stern
step
.dungeon RFD
#completewith HostEvil
.subzone 722 >> You will now run Razorfen Downs. Start looking for a group for it while you travel to the dungeon
step
.dungeon RFD
.goto Stormwind City,39.592,27.199
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.accept 3636 >> Accept Bring the Light
.target Archbishop Benedictus
step
.dungeon RFD
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Booty Bay >> Fly to Booty Bay
.target Dungar Longdrink
.zoneskip Stormwind City,1
step
.dungeon RFD
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 669 >> Turn in Sunken Treasure
.target Fleet Master Seahorn
step
.dungeon RFD
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r inside the Inn
.turnin 603 >> Turn in Ansirem's Key
.accept 610 >> Accept "Pretty Boy" Duncan
.target Catelyn the Blade
step
.dungeon RFD
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 1118 >> Turn in Back to Booty Bay
.isOnQuest 1118
step
.dungeon RFD
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> Take the Boat to Ratchet
step
.dungeon RFD
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Thalanaar >> Fly to Thalanaar
.target Bragok
step
.dungeon RFD
#label HostEvil
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Moonsinger|r
.accept 6626 >> Accept A Host of Evil
.target Myriam Moonsinger
step
.dungeon RFD
>>Kill |cRXP_ENEMY_Razorfen Battleguards|r, |cRXP_ENEMY_Razorfen Thornweavers|r and |cRXP_ENEMY_Death's Head Cultists|r
>>|cRXP_WARN_This quest is completed outside of the Instance|r
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31
.complete 6626,1 
.complete 6626,2 
.complete 6626,3 
.mob Razorfen Battleguard
.mob Razorfen Thornweaver
.mob Death's Head Cultist
.isOnQuest 6626
step
.dungeon RFD
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Moonsinger|r
.turnin 6626 >> Turn in A Host of Evil
.target Myriam Moonsinger
.isQuestComplete 6626
step
.dungeon RFD
.goto The Barrens,49.255,93.077,0
.goto The Barrens,49.255,93.077,30,0
.goto 1414,53.26,71.18
.subzone 722,2 >> Enter Razorfen Downs
step
.dungeon RFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belnistrasz|r
>>|cRXP_WARN_Take the left path and stick left the entire way until you reach The Murder Pens to get to|r |cRXP_FRIENDLY_Belnistrasz|r
>>|cRXP_WARN_Do not accept Extinguishing the Idol until the rest of your party is ready as this begins the escort. Auto accept has been turned off for this step|r
.accept 3523 >> Accept Scourge of the Downs
.turnin 3523 >> Turn in Scourge of the Downs
.accept 3525,1 >> Accept Extinguishing the Idol
.target Belnistrasz
step
.dungeon RFD
>>Follow and protect |cRXP_FRIENDLY_Belnistrasz|r during his ritual
.complete 3525,1 
.target Belnistrasz
.isOnQuest 3525
step
.dungeon RFD
>>Click |cRXP_PICK_Belnistrasz's Brazier|r
.turnin 3525 >> Turn in Extinguishing the Idol
.isQuestComplete 3525
step
.dungeon RFD
>>Kill |cRXP_ENEMY_Amnennar the Coldbringer|r
.complete 3636,1 
.isOnQuest 3636
step
.dungeon RFD
#completewith next
.hs >> Hearth to Stormwind
step
.dungeon RFD
.goto Stormwind City,39.592,27.199
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.turnin 3636 >> Turn in Bring the Light
.target Archbishop Benedictus
.isQuestComplete 3636
step
#completewith next
#ah
.goto Stormwind City,57.06,73.05
.goto Stormwind City,53.612,59.764
+|cRXP_WARN_Check your bank for any missing|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_and buy any that you still need from the Auction House|r
>>|cRXP_WARN_Chapter.1 requires: Pages 1,4,6,8|r
>>|cRXP_WARN_Chapter.2 requires: Pages 10,11,14,16|r
>>|cRXP_WARN_Chapter.3 requires: Pages 18,20,21,24|r
>>|cRXP_WARN_Chapter.4 requires: Pages 25,26,27|r
>>|cRXP_WARN_Place any newly bought Pages into your bank. Skip this step if you aren't able to aquire them|r
.target Newton Burnside
.target Auctioneer Jaxon
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Booty Bay >> Fly to Booty Bay
.target Dungar Longdrink
step
.goto Stranglethorn Vale,27.000,77.124
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
.accept 209 >> Accept Skullsplitter Tusks
.target Kebok
step
#optional
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.accept 627 >> Accept Favor for Krazek
.turnin 627 >> Turn in Favor for Krazek
.accept 622 >> Accept Return to Corporal Kaleb
.itemcount 4278,4 
.target Krazek
step
#optional
.isQuestTurnedIn 627
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.accept 622 >> Accept Return to Corporal Kaleb
.target Krazek
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 669 >> Turn in Sunken Treasure
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r inside the Inn
.turnin 603 >> Turn in Ansirem's Key
.accept 610 >> Accept "Pretty Boy" Duncan
.target Catelyn the Blade
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 600 >> Accept Venture Company Mining
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 1118 >> Turn in Back to Booty Bay
.isOnQuest 1118
step
.goto Stranglethorn Vale,27.039,77.310
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.home >> Set your Hearthstone to Booty Bay
.target Innkeeper Skindle
step
.goto Stranglethorn Vale,26.756,76.383
.target Privateer Bloads
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
.accept 617 >> Accept Akiris by the Bundle
step
.goto Stranglethorn Vale,27.782,77.071
.target "Sea Wolf" MacKinley
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.accept 606 >> Accept Scaring Shaky
step
.goto Stranglethorn Vale,28.294,77.592
.target Drizzlik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.accept 628 >> Accept Excelsior
step
.goto Stranglethorn Vale,28.096,76.217
.target First Mate Crazz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
.accept 595 >> Accept The Bloodsail Buccaneers
step
#completewith next
>>Kill |cRXP_ENEMY_"Pretty Boy" Duncan|r. Loot him for |cRXP_LOOT_Catelyn's Blade|r
.complete 610,1
.mob "Pretty Boy" Duncan
step
.goto Stranglethorn Vale,27.278,69.521
>>Click the |cRXP_PICK_Bloodsail Correspondence|r on top of the barrel
.turnin 595 >> Turn in The Bloodsail Buccaneers
.accept 597 >> Accept The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,27.40,69.39
>>Kill |cRXP_ENEMY_"Pretty Boy" Duncan|r. Loot him for |cRXP_LOOT_Catelyn's Blade|r
.complete 610,1
.mob "Pretty Boy" Duncan
step
.goto Stranglethorn Vale,28.096,76.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
.turnin 597 >> Turn in The Bloodsail Buccaneers
.accept 599 >> Accept The Bloodsail Buccaneers
.target First Mate Crazz
step
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
.turnin 610 >> Turn in "Pretty Boy" Duncan
.accept 611 >> Accept The Curse of the Tides
.target Catelyn the Blade
step
.goto Stranglethorn Vale,26.920,77.347
.target Deeg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
.accept 587 >> Accept Up to Snuff
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 599 >> Turn in The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,28.591,75.899
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.accept 576 >> Accept Keep An Eye Out
.target Dizzy One-Eye
step
.goto Stranglethorn Vale,31.88,67.28,70,0
.goto Stranglethorn Vale,33.46,65.17,70,0
.goto Stranglethorn Vale,33.43,62.94,70,0
.goto Stranglethorn Vale,34.27,64.75,70,0
.goto Stranglethorn Vale,31.88,67.28,70,0
.goto Stranglethorn Vale,33.46,65.17
>>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for their |cRXP_LOOT_Mistvale Giblets|r and |cRXP_LOOT_Gorilla Fangs|r
>>|cRXP_WARN_Save the |cRXP_LOOT_Gorilla Fangs|r for a later quest|r
.complete 606,1 
.mob Elder Mistvale Gorilla
step
.goto Stranglethorn Vale,27.27,49.48,70,0
.goto Stranglethorn Vale,28.13,47.27,70,0
.goto Stranglethorn Vale,28.66,43.72,70,0
.goto Stranglethorn Vale,31.22,43.40,70,0
.goto Stranglethorn Vale,31.85,40.88
>>Kill |cRXP_ENEMY_Jungle Stalkers|r
.complete 196,1 
.mob Jungle Stalker
step
.goto Stranglethorn Vale,41.65,43.69,40,0
.goto Stranglethorn Vale,41.79,41.17,40,0
.goto Stranglethorn Vale,41.65,43.69
>>Kill |cRXP_ENEMY_Venture Co. Foremen|r, |cRXP_ENEMY_Venture Co. Surveyors|r, |cRXP_ENEMY_Venture Co. Strip Miners|r and |cRXP_ENEMY_Venture Co. Tinkerers|r. Loot them for their |cRXP_LOOT_Singing Blue Crystals|r
.complete 600,1 
.mob Venture Co. Foreman
.mob Venture Co. Surveyor
.mob Venture Co. Strip Miner
.mob Venture Co. Tinkerer
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>Click on |cRXP_PICK_Bookie Herod's Records|r upstairs in the house
.turnin 200 >> Turn in Bookie Herod
.accept 328 >> Accept The Hidden Key
step
.solo
#completewith Strongbox
.goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
.group 2
#completewith GroupKurzen
.goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
.group 2
#completewith next
>>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r
>>Kill |cRXP_ENEMY_Colonel Kurzen|r. Loot him for his |cRXP_LOOT_Head|r
.complete 202,1 
.complete 202,2 
.complete 202,3 
.mob Kurzen Elite
.mob Kurzen Subchief
.mob Colonel Kurzen
step
#label Strongbox
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
.turnin 328 >> Turn in The Hidden Key
.accept 329 >> Accept The Spy Revealed!
step
#label GroupKurzen
.group 2
.goto Stranglethorn Vale,49.943,3.953
>>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r
>>Kill |cRXP_ENEMY_Colonel Kurzen|r. Loot him for his |cRXP_LOOT_Head|r
.complete 202,1 
.goto Stranglethorn Vale,49.943,3.953,40,0
.goto Stranglethorn Vale,49.617,7.562,40,0
.goto Stranglethorn Vale,49.25,6.18
.complete 202,2 
.goto Stranglethorn Vale,49.943,3.953,40,0
.goto Stranglethorn Vale,49.617,7.562,40,0
.goto Stranglethorn Vale,49.25,6.18
.complete 202,3 
.goto Stranglethorn Vale,49.943,3.953
.mob Kurzen Elite
.mob Kurzen Subchief
.mob Colonel Kurzen
step
.group
.goto Stranglethorn Vale,38.042,3.012
.target Lieutenant Doren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 202 >> Turn in Colonel Kurzen
.isQuestComplete 202
step
#optional
.isOnQuest 622
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
.turnin 622 >> Turn in Return to Corporal Kaleb
.target Corporal Kaleb
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 329 >> Turn in The Spy Revealed!
.accept 330 >> Accept Patrol Schedules
.target Lieutenant Doren
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,37.66,3.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
.turnin 330 >> Turn in Patrol Schedules
.accept 331 >> Accept Report to Doren
.target Corporal Sethman
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 331 >> Turn in Report to Doren
.target Lieutenant Doren
step
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 196 >> Turn in Raptor Mastery
.accept 197 >> Accept Raptor Mastery
.target Hemet Nesingwary
step
.abandon 202 >> Abandon Colonel Kurzen
step
#completewith next
.goto Stranglethorn Vale,29.471,19.119,70 >> Travel to the Bal'lal Ruins
step
.goto Stranglethorn Vale,29.471,19.119
>>Open the |cRXP_PICK_Moon Over the Vale|r. Loot it for |cRXP_LOOT_The First Troll Legend|r
.complete 207,1
step
#completewith next
.goto Stranglethorn Vale,24.719,8.905,150 >> Travel to the Ruins of Zul'Kunda
step
.goto Stranglethorn Vale,24.719,8.905
>>Open |cRXP_PICK_The Emperor's Tomb|r. Loot it for |cRXP_LOOT_The Fourth Troll Legend|r
.complete 207,4
step
.goto Stranglethorn Vale,22.94,12.01
>>Open the |cRXP_PICK_Fall of Gurubashi|r. Loot it for |cRXP_LOOT_The Third Troll Legend|r
.complete 207,3
step
.goto Stranglethorn Vale,21.55,16.57,70,0
.goto Stranglethorn Vale,22.64,18.29,70,0
.goto Stranglethorn Vale,25.53,19.22,70,0
.goto Stranglethorn Vale,29.00,21.44,70,0
.goto Stranglethorn Vale,30.02,26.92,70,0
.goto Stranglethorn Vale,29.00,21.44,70,0
.goto Stranglethorn Vale,25.53,19.22,70,0
.goto Stranglethorn Vale,22.64,18.29,70,0
.goto Stranglethorn Vale,21.55,16.57
>>Kill a |cRXP_ENEMY_Elder Saltwater Crocolisk|r. Loot it for its |cRXP_LOOT_Elder Crocolisk Skin|r
.complete 628,1 
.unitscan Elder Saltwater Crocolisk
step
#completewith Gazban
+|cRXP_WARN_PAY CLOSE ATTENTION TO YOUR BREATH BAR|r
.isOnQuest 207,611
step
.goto Stranglethorn Vale,24.765,22.871
>>Open |cRXP_PICK_Gri'lek the Wanderer|r underwater. Loot it for |cRXP_LOOT_The Second Troll Legend|r
.complete 207,2
step
#completewith next
.goto Stranglethorn Vale,24.957,23.586
.cast 3678 >> |cRXP_WARN_Use|r |T135637:0|t[Catelyn's Blade] |cRXP_WARN_on the |cRXP_PICK_Altar of the Tides|r underwater to summon|r |cRXP_ENEMY_Gazban|r
.use 4027
step
#label Gazban
.goto Stranglethorn Vale,24.957,23.586
>>Kill |cRXP_ENEMY_Gazban|r. Loot him for the |cRXP_LOOT_Stone of the Tides|r
.complete 611,1 
.mob Gazban
step
#completewith next
.goto Stranglethorn Vale,39.10,5.09,50 >> Travel to the Rebel Camp
step
.goto Stranglethorn Vale,37.832,3.559
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.turnin 207 >> Turn in Kurzen's Mystery
.accept 205 >> Accept Troll Witchery
.target Brother Nimetz
step
#completewith BBTurnin
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 600 >> Turn in Venture Company Mining
.target Crank Fizzlebub
step
#label BBTurnin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r and |cRXP_FRIENDLY_Baron Revilgaz|r
.accept 604 >> Accept The Bloodsail Buccaneers
.target +Fleet Master Seahorn
.goto Stranglethorn Vale,27.173,77.007
.turnin 611 >> Turn in The Curse of the Tides
.goto Stranglethorn Vale,27.227,76.870
.target +Baron Revilgaz
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankwithdraw 6065,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Withdraw the following items from your bank:
>>Any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
>>|T133461:0|t[Khadgar's Essays on Dimensional Convergence] (If you have it) 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankdeposit 2799 >> Deposit the following items into your bank:
>>|T134298:0|t[Gorilla Fangs] (If you have any)
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
#completewith start2
#ah
.goto Stranglethorn Vale,26.588,76.348
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer O'reely|r
+|cRXP_WARN_Buy any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you are missing|r
>>|cRXP_WARN_Ch.1: 1,4,6,8|r
>>|cRXP_WARN_Ch.2: 10,11,14,16|r
>>|cRXP_WARN_Ch.3: 18,20,21,24|r
>>|cRXP_WARN_Ch.4: 25,26,27|r
>>|cRXP_WARN_Skip this step if you aren't able to aquire them|r
.target Auctioneer O'reely
step
.goto Stranglethorn Vale,26.896,73.590
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
.turnin 606 >> Turn in Scaring Shaky
.target "Shaky" Phillipe
.accept 607 >> Accept Return to MacKinley
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 607 >> Turn in Return to MacKinley
.target "Sea Wolf" MacKinley
step
#label start2
.goto Stranglethorn Vale,28.294,77.592
.target Drizzlik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 628 >> Turn in Excelsior
step
#completewith next
>>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
.complete 587,1 
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Mage
.mob Bloodsail Raider
.mob Bloodsail Warlock
step
.goto Stranglethorn Vale,31.76,79.45,100,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20,70,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20
>>Kill |cRXP_ENEMY_Bloodsail Swashbucklers|r
>>Loot the |cRXP_LOOT_Bloodsail Charts|r and |cRXP_LOOT_Bloodsail Orders|r. These can spawn randomly at one of the camps or in the small rowboat
.complete 604,1 
.complete 604,2 
.complete 604,3 
.mob Bloodsail Swashbuckler
step
.goto Stranglethorn Vale,31.76,79.45,100,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20,70,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20
>>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
.complete 587,1 
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Mage
.mob Bloodsail Raider
.mob Bloodsail Warlock
step
#completewith next
.goto Stranglethorn Vale,24.83,63.70,100 >> Travel to The Cape of Stranglethorn
step
#completewith next
>>Kill |cRXP_ENEMY_Naga Explorers|r. Loot them for their |cRXP_LOOT_Akiris Reeds|r
.complete 617,1 
.mob Naga Explorer
step
.goto Stranglethorn Vale,28.961,61.931
>>Click |cRXP_PICK_The Holy Spring|r. Loot it for the |cRXP_LOOT_Holy Spring Water|r
.collect 737,1,48,1 
step
.goto Stranglethorn Vale,27.04,63.00,60,0
.goto Stranglethorn Vale,26.32,60.20,60,0
.goto Stranglethorn Vale,25.12,60.07,60,0
.goto Stranglethorn Vale,24.69,64.29,60,0
.goto Stranglethorn Vale,25.99,62.45
>>Kill |cRXP_ENEMY_Naga Explorers|r. Loot them for their |cRXP_LOOT_Akiris Reeds|r
.complete 617,1 
.mob Naga Explorer
step
.group 2
.goto Stranglethorn Vale,28.41,46.88,0
.goto Stranglethorn Vale,31.12,43.17,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,31.76,41.34,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,31.12,43.17
>>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
>>|cRXP_ENEMY_Tethis|r |cRXP_WARN_will patrol around in this location|r
.complete 197,1 
.unitscan Tethis
step
.goto Stranglethorn Vale,28.73,44.84
.xp 43 >>Kill |cRXP_ENEMY_Jungle Stalkers|r until you are level 43
.mob Jungle Stalker
step
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22,50,0
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22
.goto Stranglethorn Vale,42.07,36.02,0
.goto Stranglethorn Vale,47.43,40.20,0
.goto Stranglethorn Vale,45.78,42.27,0
>>Kill any |cRXP_ENEMY_Skullsplitter Troll|r. Loot them for their |cRXP_LOOT_Skullsplitter Tusks|r
>>Kill |cRXP_ENEMY_Skullsplitter Mystics|r and |cRXP_ENEMY_Skullsplitter Witch Doctors|r. Loot them for their |cRXP_LOOT_Skullsplitter Fetishes|r
.complete 209,1 
.complete 205,1 
.mob Skullsplitter Mystic
.mob Skullsplitter Witch Doctor
step
.group 2
.goto Stranglethorn Vale,47.2,28.0,35,0
.goto Stranglethorn Vale,49.8,24.6,35,0
.goto Stranglethorn Vale,48.4,19.2,35,0
.goto Stranglethorn Vale,49.54,24.17
.goto Stranglethorn Vale,47.2,28.0,0
.goto Stranglethorn Vale,49.8,24.6,0
.goto Stranglethorn Vale,48.4,19.2,0
>>Kill |cRXP_ENEMY_Bhag'thera|r. Loot him for the |cRXP_LOOT_Fang of Bhag'thera|r
>>|cRXP_ENEMY_Bhag'thera|r |cRXP_WARN_can spawn north or west of the Mosh'Ogg Ogre Mound|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and locate|r |cRXP_ENEMY_Bhag'thera|r << Hunter
.complete 193,1 
.unitscan Bhag'thera
step
#completewith PagesTurnIn
.goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 193 >> Turn in Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
.turnin 197 >> Turn in Raptor Mastery
.accept 208 >> Accept Big Game Hunter
.goto Stranglethorn Vale,35.658,10.808
.target +Hemet Nesingwary
step
#label PagesTurnIn
.goto Stranglethorn Vale,35.662,10.528
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
>>|cRXP_WARN_Turn in all your|r |T134332:0|t[Green Hills of Stranglethorn - Pages]
>>|cRXP_WARN_Skip this step if you don't have all the|r |T133677:0|t[Green Hills of Stranglethorn - Chapters]
.accept 338 >> Accept The Green Hills of Stranglethorn
.accept 339 >> Accept Chapter I
.accept 340 >> Accept Chapter II
.accept 341 >> Accept Chapter III
.accept 342 >> Accept Chapter IV
.turnin 339 >> Turn in Chapter I
.turnin 340 >> Turn in Chapter II
.turnin 341 >> Turn in Chapter III
.turnin 342 >> Turn in Chapter IV
.turnin 338 >> Turn in The Green Hills of Stranglethorn
.target Barnil Stonepot
step
#optional
#completewith next
+|cRXP_WARN_Use the|r |T133581:0|t[Flash Bomb] |cRXP_WARN_on |cRXP_ENEMY_King Bangalash|r when he is at 55%|r
.itemcount 4852,1
.use 4852
step
.group 2
.goto Stranglethorn Vale,38.20,35.57
>>Kill |cRXP_ENEMY_King Bangalash|r. Loot him for the |cRXP_LOOT_Head of Bangalash|r
>>|cRXP_ENEMY_King Bangalash|r |cRXP_WARN_will spawn 2 |cRXP_ENEMY_Panthers|r at 50% health. Try to CC him just before 50% if possible so it prevents him from spawning any|r
.complete 208,1 
.mob King Bangalash
step
.group
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 208 >> Turn in Big Game Hunter
.target Hemet Nesingwary
.isQuestComplete 208
step
.goto Stranglethorn Vale,37.832,3.559
.target Brother Nimetz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.turnin 205 >> Turn in Troll Witchery
step
#completewith next
.goto Duskwood,44.6,86.4
.zone Duskwood >> Travel north into Duskwood, then west towards Westfall
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
.accept 48 >> Accept Sweet Amber
.turnin 48 >> Turn in Sweet Amber
.accept 49 >> Accept Sweet Amber
step
.goto Westfall,56.556,52.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Duskwood >> Fly to Duskwood
.target Thor
.zoneskip Duskwood
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 43-44 Swamp of Sorrows II
#next 44-45 Tanaris
step
.goto Duskwood,75.779,46.159
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watchmaster Sorigal|r
.turnin 1477 >> Turn in Vital Supplies
.target Watchmaster Sorigal
step
#completewith SwampEntry
.goto Duskwood,88.47,41.00,50,0
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50 >> Travel to Swamp of Sorrows
.zoneskip Swamp of Sorrows
step
#completewith ExitSoS
+|cRXP_WARN_Be very careful of |cRXP_ENEMY_Stonard Scouts|r anytime you are in Swamp of Sorrows. If one ever attacks you, you will be PvP Flagged for 5 minutes|r
.unitscan Stonard Scout
step
#label SwampEntry
.goto Swamp of Sorrows,26.74,59.82
.target Watcher Biggs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.accept 1398 >> Accept Driftwood
step
.isOnQuest 1364
#completewith mazens
>>Kill |cRXP_ENEMY_Swampwalkers|r, |cRXP_ENEMY_Swampwalker Elders|r, |cRXP_ENEMY_Tangled Horrors|r and |cRXP_ENEMY_Mire Lords|r. Loot them for |cRXP_LOOT_Khadgar's Essays|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
.goto Swamp of Sorrows,62.547,23.115
>>Loot the |cRXP_LOOT_Sack of Barley|r on the ground
.complete 49,1
step
.goto Swamp of Sorrows,65.471,18.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Goodward|r
>>|cRXP_WARN_This will start an escort quest|r
.accept 1393 >>Accept Galen's Escape
.target Galen Goodward
step
.isOnQuest 1393
.goto Swamp of Sorrows,53.045,29.644
>>Escort |cRXP_FRIENDLY_Galen|r through Fallow Sanctuary to safety
.complete 1393,1 
.target Galen Goodward
step
.isQuestComplete 1393
.goto Swamp of Sorrows,47.806,39.760
>>Click |cRXP_PICK_Galen's Strongbox|r on the ground
.turnin 1393 >>Turn in Galen's Escape
step
#completewith next
.goto Swamp of Sorrows,79.81,6.90,0
.goto Swamp of Sorrows,90.41,23.85,0
.goto Swamp of Sorrows,94.83,48.68,0
.goto Swamp of Sorrows,82.18,91.74,0
>>Loot |cRXP_LOOT_Sundried Driftwood|r on the ground along the coast
.complete 1398,1 
step
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,82.18,91.74,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07
>>Kill |cRXP_ENEMY_Silt Crawlers|r and |cRXP_ENEMY_Monstrous Crawlers|r. Loot them for their |cRXP_LOOT_Pristine Crawler Legs|r
.complete 1258,1 
.mob Silt Crawler
.mob Monstrous Crawler
.isOnQuest 1258
step
#label mazens
.goto Swamp of Sorrows,79.81,6.90,0
.goto Swamp of Sorrows,90.41,23.85,0
.goto Swamp of Sorrows,94.83,48.68,0
.goto Swamp of Sorrows,82.18,91.74,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,82.18,91.74,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07
>>Loot |cRXP_LOOT_Sundried Driftwood|r on the ground along the coast
.complete 1398,1 
step
.isOnQuest 1364
.goto Swamp of Sorrows,6.99,31.62,70,0
.goto Swamp of Sorrows,14.97,37.31
>>Kill |cRXP_ENEMY_Swampwalkers|r, |cRXP_ENEMY_Swampwalker Elders|r, |cRXP_ENEMY_Tangled Horrors|r and |cRXP_ENEMY_Mire Lords|r. Loot them for |cRXP_LOOT_Khadgar's Essays|r
>>|cRXP_WARN_The drop rate of this item is very low. Once there is no more to kill in Misty Valley, skip this step|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step 
.xp 44 >> Grind to level 44
step
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.turnin 1398 >> Turn in Driftwood
.accept 1425 >> Accept Deliver the Shipment
.target Watcher Biggs
step
#label ExitSoS
#completewith ExitBL
.goto Swamp of Sorrows,33.23,67.31,0
.goto Blasted Lands,51.98,7.43
.zone Blasted Lands >> Travel to the Blasted Lands
step
.isQuestComplete 1364
.goto Blasted Lands,67.646,19.165
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Mahar Ba|r atop the Tower
.turnin 1364 >> Turn in Mazen's Behest
.target Watcher Mahar Ba
step
.isOnQuest 1425
.goto Blasted Lands,66.521,21.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
.turnin 1425 >> Turn in Deliver the Shipment
.target Quartermaster Lungertz
step
.goto Blasted Lands,65.54,24.34
.abandon 1364 >> Abandon Mazen's Behest
step
#label ExitBL
#completewith next << !Mage !Druid
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Constantine|r
.fp Blasted Lands>> Get the Blasted Lands Flight Path
.target Alexandra Constantine
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << !Mage !Druid !Warrior !Paladin
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Constantine|r
.fly Stormwind >> Fly to Stormwind
.target Alexandra Constantine
.zoneskip Blasted Lands,1
step << Mage
#completewith next
.goto Blasted Lands,65.54,24.34
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << Priest
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>Go into The Slaughtered Lamb and go downstairs
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Spackle Thornberry
step
#completewith BBTurnIn
.hs >> Hearth to Booty Bay
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r, |cRXP_FRIENDLY_Krazek|r and |cRXP_FRIENDLY_Kebok|r
.turnin 587 >> Turn in Up to Snuff
.target +Deeg
.goto Stranglethorn Vale,26.920,77.347
.accept 2864 >> Accept Tran'rek
.target +Krazek
.goto Stranglethorn Vale,26.943,77.207
.turnin 209 >> Turn in Skullsplitter Tusks
.goto Stranglethorn Vale,27.000,77.124
.target +Kebok
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 604 >> Turn in The Bloodsail Buccaneers
.accept 670 >> Accept Sunken Treasure
.target Fleet Master Seahorn
step
#label BBTurnIn
.goto Stranglethorn Vale,26.756,76.383
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
.turnin 617 >> Turn in Akiris by the Bundle
.accept 623 >> Accept Akiris by the Bundle
.target Privateer Bloads
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankdeposit 738,4494 >> Deposit the following items into your bank:

>>|T134058:0|t[Sack of Barley] 
>>|T133466:0|t[Seahorn's Sealed Letter] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.accept 2872 >> Accept Stoley's Debt
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,28.591,75.899
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.turnin 576 >> Turn in Keep An Eye Out
.target Dizzy One-Eye
step
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> Take the Boat to Ratchet
.zoneskip Stranglethorn Vale,1
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 44-45 Tanaris
#next 45-46 Feralas
step
#completewith next
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Theramore>> Fly to Theramore
.target Bragok
step
.goto Dustwallow Marsh,68.836,53.225,40,0
.goto Dustwallow Marsh,67.716,51.708
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Groy|r
>>|cRXP_FRIENDLY_Privateer Groy|r |cRXP_WARN_patrols through Theramore Isle|r
.turnin 623 >> Turn in Akiris by the Bundle
.target Privateer Groy
step << Warrior
.goto Dustwallow Marsh,67.875,48.409
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Evencane|r up stairs in the Keep
.trainer >> Train your class spells
.target Captain Evencane
step << Paladin
.goto Dustwallow Marsh,67.396,47.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Karman|r
.trainer >> Train your class spells
.target Brother Karman
step
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.accept 6624 >> Accept Triage
.target Doctor Gustaf VanHowzen
step
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >> |cRXP_WARN_Channel the|r |T133682:0|t[Triage Bandage] |cRXP_WARN_on the |cRXP_FRIENDLY_Alliance Soldiers|r. Prioritize |cRXP_FRIENDLY_Critically Injured Soldiers|r first|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.turnin 6624 >> Turn in Triage
.target Doctor Gustaf VanHowzen
step
.isQuestTurnedIn 6624
.destroy 16991 >> Delete the |T133682:0|t[Triage Bandage]. You no longer need it
step
.isQuestComplete 1258
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1258 >> Turn in ... and Bugs
.target Morgan Stern
step
#completewith next
.goto Dustwallow Marsh,54.95,50.70,25 >> Swim west toward the Zeppelin crash
step
.isOnQuest 1187
.goto Dustwallow Marsh,54.071,56.490
>>Open the |cRXP_PICK_Gizmorium Shipping Crate|r. Loot it for the |cRXP_LOOT_Seaforium Booster|r
.complete 1187,1 
step
.dungeon ZF
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
.accept 2846 >> Accept Tiara of the Deep
.target Tabetha
step
#completewith next
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Tanaris>> Fly to Tanaris
.target Baldruc
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.accept 1690 >> Accept Wastewander Justice
.target +Chief Engineer Bilgewhizzle
.goto Tanaris,52.462,28.514
.accept 1707 >> Accept Water Pouch Bounty
.goto Tanaris,52.486,28.445
.target +Spigot Operator Luglunket
step << Hunter
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laziphus|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Starving Blisterpaw|r shortly
.target Laziphus
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 3022 >> Accept Handle With Care
.target Curgle Cranklehop
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2864 >> Turn in Tran'rek
.target Tran'rek
step << Hunter
#completewith st2
.goto Tanaris,47.70,27.04,0
.goto Tanaris,47.70,27.04,50,0
.goto Tanaris,53.45,24.29
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Starving Blisterpaw|r to tame it|r 
.train 23111 >>|cRXP_WARN_Attack mobs with it to learn|r |T132120:0|t[Dash (Rank 2)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Starving Blisterpaw
step
#completewith NFF
.goto Thousand Needles,78.064,77.126
.zone Thousand Needles >> Travel to The Shimmering Flats
step
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1137 >> Turn in News for Fizzle
.target Fizzle Brassbolts
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1187 >> Turn in Razzeric's Tweaking
.accept 1188 >> Accept Safety First
.target Razzeric
step
#label NFF
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.accept 1190 >> Accept Keeping Pace
.target Pozzik
step
#completewith next
.goto Thousand Needles,79.809,77.028
.target Zamek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamek|r create a diversion
.turnin 1191 >> Turn in Zamek's Distraction
.timer 30,Zamek's Distraction RP
step
.goto Thousand Needles,77.208,77.386
>>Click |cRXP_PICK_Rizzle's Unguarded Plans|r on the ground
.turnin 1190 >> Turn in Keeping Pace
.accept 1194 >> Accept Rizzle's Schematics
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1194 >> Turn in Rizzle's Schematics
.target Pozzik
step
.destroy 5866 >> Delete the |T134575:0|t[Sample of Indurium Ore] you do not need it
step
#completewith next
.goto Tanaris,50.50,18.52
.zone Tanaris >> Travel to Gadgetzan
step
.goto Tanaris,50.960,27.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shreev|r
.turnin 1188 >> Turn in Safety First
.accept 1189 >> Accept Safety First
.target Shreev
step
#completewith next
.goto Thousand Needles,78.064,77.126
.zone Thousand Needles >> Travel to The Shimmering Flats
step
#label st2
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1189 >> Turn in Safety First
.target Razzeric
step
#completewith next
.goto Tanaris,50.50,18.52
.zone Tanaris >> Travel to Tanaris
step << Hunter
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laziphus|r
.stable >> Withdraw your main pet from the stable
.target Laziphus
step
#completewith vultures
>>Kill |cRXP_ENEMY_Rocs|r. Loot them for their |cRXP_LOOT_Gizzards|r
.complete 1452,1 
.isOnQuest 1452
.mob Roc
step
#completewith PortQ
>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
>>|cRXP_WARN_Kill them en-route to Steamwheedle Port. Don't complete this immediately|r
.goto Tanaris,60.4,24.6,0
.goto Tanaris,63.6,31.0,0
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.accept 3520 >> Accept Screecher Spirits
.target Yeh'kinya
step
#label PortQ
.goto Tanaris,67.109,23.978
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stoley|r
.turnin 2872 >> Turn in Stoley's Debt
.target Stoley
step
.goto Tanaris,60.14,23.42,0
.goto Tanaris,63.85,29.26,50,0
.goto Tanaris,63.63,31.66,50,0
.goto Tanaris,63.27,33.57,50,0
.goto Tanaris,62.77,30.20,50,0
.goto Tanaris,63.93,31.60
>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,65.737,36.729
>>Loot the |cRXP_LOOT_Sack of Corn|r on the ground
.complete 49,2 
step
#label vultures
.goto Tanaris,63.93,31.60
.xp 45 >>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r to level 45
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,55.62,25.46,50,0
.goto Tanaris,53.19,31.69,50,0
.goto Tanaris,49.48,35.85
>>Kill |cRXP_ENEMY_Rocs|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>|cRXP_WARN_The |cRXP_ENEMY_Rocs|r share spawns with |cRXP_ENEMY_Starving Blisterpaws|r. You may need to kill |cRXP_ENEMY_Starving Blisterpaws|r to force |cRXP_ENEMY_Rocs|r to spawn|r
.complete 1452,1 
.isOnQuest 1452
.mob Roc
step
.isOnQuest 49
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 739 >> Deposit the following items into your bank:
>>|T134059:0|t[Sack of Corn] 
.target Gimblethorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.turnin 1690 >> Turn in Wastewander Justice
.target +Chief Engineer Bilgewhizzle
.goto Tanaris,52.462,28.514
.turnin 1707 >> Turn in Water Pouch Bounty
.goto Tanaris,52.486,28.445
.target +Spigot Operator Luglunket
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 45-46 Feralas
#next 46-47 Hinterlands/Badlands
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Feathermoon>> Fly to Feathermoon
.target Bera Stonehammer
step << Hunter
#completewith next
.goto Feralas,31.466,43.145
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antarius|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Longtooth Runner|r shortly
.target Antarius
step << Hunter
.goto Feralas,29.80,49.19
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Longtooth Runner|r to tame it|r 
.train 17266 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 6)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Longtooth Runner
step
#completewith start
.goto Feralas,31.043,43.116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardrack Greenwell|r
>>|cRXP_WARN_Restock on Food/Water. There is a long grind section ahead|r
.vendor >>|cRXP_BUY_Buy 5 stacks of food/water|r
.target Mardrack Greenwell
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.accept 2821 >> Accept The Mark of Quality
.target Pratt McGrubben
step << Hunter
#completewith start
.goto Feralas,30.645,43.433
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faralorn|r
.vendor >>|cRXP_BUY_Buy 25 stacks of Ammo|r
.target Faralorn
step
.goto Feralas,30.966,43.488
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shyria|r
.home >> Set your Hearthstone to Feralas
.target Innkeeper Shyria
step << Hunter
.goto Feralas,31.466,43.145
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antarius|r
.stable >> Withdraw your pet from the Stable
.target Antarius
.zoneskip Feralas,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r and |cRXP_FRIENDLY_Shandris Feathermoon|r
.accept 4124 >> Accept The Missing Courier
.target +Latronicus Moonspear
.goto Feralas,30.379,46.170
.accept 2866 >> Accept The Ruins of Solarsal
.goto Feralas,30.276,46.168
.target +Shandris Feathermoon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r and |cRXP_FRIENDLY_Angelas Moonbreeze|r
.accept 2939 >> Accept In Search of Knowledge
.target +Troyas Moonbreeze
.goto Feralas,31.777,45.498
.accept 2982 >> Accept The High Wilderness
.goto Feralas,31.828,45.611
.target +Angelas Moonbreeze
step
#label start
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
.turnin 4124 >> Turn in The Missing Courier
.accept 4125 >> Accept The Missing Courier
.target Ginro Hearthkindle
step
#completewith next
.goto Feralas,32.671,44.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logannas|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him|r
>>|cRXP_WARN_Skip this step if |cRXP_FRIENDLY_Logannas|r has none in stock|r
.target Logannas
step
.goto Feralas,26.316,52.343
>>Click the |cRXP_PICK_Solarsal Gazebo|r
.turnin 2866 >> Turn in The Ruins of Solarsal
.accept 2867 >> Accept Return to Feathermoon Stronghold
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r and |cRXP_FRIENDLY_Latronicus Moonspear|r
.turnin 2867 >> Turn in Return to Feathermoon Stronghold
.accept 3130 >> Accept Against the Hatecrest
.target +Shandris Feathermoon
.goto Feralas,30.276,46.168
.turnin 3130 >> Turn in Against the Hatecrest
.accept 2869 >> Accept Against the Hatecrest
.goto Feralas,30.379,46.170
.target +Latronicus Moonspear
step
.goto Feralas,26.6,52.0,70,0
.goto Feralas,26.2,55.2,70,0
.goto Feralas,29.6,53.6,70,0
.goto Feralas,29.0,50.4,70,0
.goto Feralas,26.6,53.4
>>Kill |cRXP_ENEMY_Hatecrest Screamers|r, |cRXP_ENEMY_Hatecrest Wave Riders|r, |cRXP_ENEMY_Hatecrest Warriors|r and |cRXP_ENEMY_Hatecrest Sirens|r. Loot them for their |cRXP_LOOT_Naga Scales|r
.complete 2869,1 
.mob Hatecrest Screamer
.mob Hatecrest Wave Rider
.mob Hatecrest Warrior
.mob Hatecrest Siren
step
.goto Feralas,30.379,46.170
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
.turnin 2869 >> Turn in Against the Hatecrest
.target Latronicus Moonspear
step
#completewith next
.goto Feralas,45.07,44.89,150 >> Swim to the mainland
step
.goto Feralas,45.44,64.96
>>Click on the |cRXP_PICK_Wrecked Row Boat|r in the water
.turnin 4125 >> Turn in The Missing Courier
.accept 4127 >> Accept Boat Wreckage
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << Mage
#completewith next
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step
#completewith next
.hs >> Hearth to Feathermoon Stronghold
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
.turnin 4127 >> Turn in Boat Wreckage
.accept 4129 >> Accept The Knife Revealed
.target Ginro Hearthkindle
step
.goto Feralas,32.447,43.788
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quintis Jonespyre|r atop the tree house
.turnin 4129 >> Turn in The Knife Revealed
.timer 12,The Knife Revealed RP
.accept 4130 >> Accept Psychometric Reading
.target Quintis Jonespyre
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
.turnin 4130 >> Turn in Psychometric Reading
.accept 4131 >> Accept The Woodpaw Gnolls
.target Ginro Hearthkindle
step
#completewith spirits
.goto Feralas,47.3,44.7,65 >> Swim to the mainland
step
#completewith spirits
.goto Feralas,52.05,48.88,0
.goto Feralas,46.6,39.4,0
.goto Feralas,57.8,50.8,0
>>Kill |cRXP_ENEMY_Vale Screechers|r and |cRXP_ENEMY_Rogue Vale Screechers|r
.use 10699 >> |cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses to summon a|r |cRXP_FRIENDLY_Screecher Spirit|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Screecher Spirit|r
.complete 3520,1 
.skipgossip
.mob Vale Screecher
.mob Rogue Vale Screecher
.target Screecher Spirit
step
#completewith spirits
.goto Feralas,58.8,59.0,0
>>Kill |cRXP_ENEMY_Ironfur Bears|r, |cRXP_ENEMY_Grizzled Ironfur Bears|r and |cRXP_ENEMY_Groddoc Apes|r. Loot them for their |cRXP_LOOT_Livers|r
.complete 1452,2 
.mob +Ironfur Bear
.mob +Grizzled Ironfur Bear
.complete 1452,3 
.mob +Groddoc Ape
step
.goto Feralas,55.41,45.54
.zone 1414 >> |cRXP_WARN_You must explore the Dire Maul zone as a pre-requisite to unlock a quest later on. Get close to the Dire Maul zone border until your General Chat changes to Dire Maul|r
.link https://youtu.be/ayEKuXSUU2A >> |cRXP_WARN_Click here for video reference|r
step
.goto Feralas,55.63,56.44,50,0
.goto Feralas,53.50,55.47
>>Kill |cRXP_ENEMY_Feral Scar Yetis|r, |cRXP_ENEMY_Enraged Feral Scars|r and |cRXP_ENEMY_Hulking Feral Scars|r. Loot them for their |cRXP_LOOT_Thick Yeti Hides|r
>>|cRXP_WARN_Do not enter the main |cRXP_ENEMY_Yeti|r cave if you are not confident|r
.complete 2821,1 
.mob Feral Scar Yeti
.mob Enraged Feral Scar
.mob Hulking Feral Scar
step
#label spirits
>>Kill |cRXP_ENEMY_Gordunni Shamans|r, |cRXP_ENEMY_Gordunni Warlocks|r and |cRXP_ENEMY_Gordunni Brutes|r
>>|cRXP_WARN_Prioritize killing |cRXP_ENEMY_Gordunni Shamans|r. You may need to kill other |cRXP_ENEMY_Gordunni Ogres|r to force |cRXP_ENEMY_Gordunni Shamans|r to spawn|r
.complete 2982,2 
.mob +Gordunni Shaman
.goto Feralas,59.54,63.13,60,0
.goto Feralas,58.42,67.08,60,0
.goto Feralas,59.97,66.14,60,0
.goto Feralas,60.91,68.55,60,0
.goto Feralas,59.48,66.77
.goto Feralas,61.70,73.09,0
.goto Feralas,59.11,69.93,0
.complete 2982,1 
.mob +Gordunni Warlock
.goto Feralas,59.54,63.13,60,0
.goto Feralas,58.42,67.08,60,0
.goto Feralas,59.97,66.14,60,0
.goto Feralas,60.91,68.55,60,0
.goto Feralas,59.09,64.45,60,0
.goto Feralas,61.02,56.10,60,0
.goto Feralas,61.43,54.30,60,0
.goto Feralas,59.54,63.13
.goto Feralas,61.70,73.09,0
.goto Feralas,59.11,69.93,0
.complete 2982,3 
.goto Feralas,59.09,64.45,60,0
.goto Feralas,61.02,56.10,60,0
.goto Feralas,61.43,54.30,60,0
.goto Feralas,61.02,56.10
.mob +Gordunni Brute
step
#completewith next
.goto Feralas,58.40,55.57,0
.goto Feralas,57.29,54.10,0
.goto Feralas,55.40,53.49,0
.goto Feralas,56.94,60.64,0
.goto Feralas,59.28,60.55,0
>>Kill |cRXP_ENEMY_Ironfur Bears|r, |cRXP_ENEMY_Grizzled Ironfur Bears|r and |cRXP_ENEMY_Groddoc Apes|r. Loot them for their |cRXP_LOOT_Livers|r
.complete 1452,2 
.mob +Ironfur Bear
.mob +Grizzled Ironfur Bear
.complete 1452,3 
.mob +Groddoc Ape
step
.goto Feralas,53.2,47.2,60,0
.goto Feralas,58.0,47.8,60,0
.goto Feralas,60.8,50.8,60,0
.goto Feralas,55.8,54.0,60,0
.goto Feralas,58.6,58.8,60,0
.goto Feralas,60.6,62.2
.goto Feralas,53.2,47.2,0
.goto Feralas,58.0,47.8,0
.goto Feralas,60.8,50.8,0
.goto Feralas,55.8,54.0,0
.goto Feralas,58.6,58.8,0
>>Kill |cRXP_ENEMY_Vale Screechers|r and |cRXP_ENEMY_Rogue Vale Screechers|r
.use 10699 >> |cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses to summon a|r |cRXP_FRIENDLY_Screecher Spirit|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Screecher Spirit|r
.complete 3520,1 
.skipgossip
.mob Vale Screecher
.mob Rogue Vale Screecher
.target Screecher Spirit
step
.goto Feralas,58.40,55.57,55,0
.goto Feralas,57.29,54.10,55,0
.goto Feralas,55.40,53.49,55,0
.goto Feralas,56.94,60.64,55,0
.goto Feralas,59.28,60.55
>>Kill |cRXP_ENEMY_Ironfur Bears|r, |cRXP_ENEMY_Grizzled Ironfur Bears|r and |cRXP_ENEMY_Groddoc Apes|r. Loot them for their |cRXP_LOOT_Livers|r
.complete 1452,2 
.mob +Ironfur Bear
.mob +Grizzled Ironfur Bear
.complete 1452,3 
.mob +Groddoc Ape
step
.goto Feralas,66.56,46.87,0
.goto Feralas,66.56,46.87,30,0
.goto Feralas,65.945,45.651
>>|cRXP_WARN_Kill some of the |cRXP_ENEMY_Grimtotem|r around the giant cage containing |cRXP_FRIENDLY_Captured Sprite Darters|r before accepting this escort quest|r
>>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r
.accept 2969 >> Accept Freedom for All Creatures
.target Kindal Moonweaver
.mob Grimtotem Naturalist
.mob Grimtotem Raider
.mob Grimtotem Shaman
step
.goto Feralas,66.666,46.754
>>Click the |cRXP_PICK_Cage Door|r to release the |cRXP_FRIENDLY_Captured Sprite Darters|r
>>Kill any |cRXP_ENEMY_Grimtotem|r that are attacking the |cRXP_FRIENDLY_Captured Sprite Darters|r
>>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
.complete 2969,1
.mob Grimtotem Naturalist
.mob Grimtotem Raider
.mob Grimtotem Shaman
.target Captured Sprite Darter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r and |cRXP_FRIENDLY_Jer'kai Moonweaver|r
.turnin 2969 >> Turn in Freedom for All Creatures
.target +Kindal Moonweaver
.goto Feralas,65.945,45.651
.accept 2970 >> Accept Doling Justice
.goto Feralas,65.946,45.607
.target +Jer'kai Moonweaver
step
.goto Feralas,66.65,46.58,60,0
.goto Feralas,68.70,46.91,60,0
.goto Feralas,69.14,39.10,60,0
.goto Feralas,66.85,38.80,60,0
.goto Feralas,69.14,39.10
.goto Feralas,66.85,38.80,0
>>Kill |cRXP_ENEMY_Grimtotem Naturalists|r, |cRXP_ENEMY_Grimtotem Raiders|r and |cRXP_ENEMY_Grimtotem Shamans|r
>>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
.complete 2970,1 
.mob +Grimtotem Naturalist
.complete 2970,2 
.mob +Grimtotem Raider
.complete 2970,3 
.mob +Grimtotem Shaman
step
.goto Feralas,65.946,45.607
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jer'kai Moonweaver|r
.turnin 2970 >> Turn in Doling Justice
.accept 2972 >> Accept Doling Justice
.target Jer'kai Moonweaver
step
.goto Feralas,73.314,56.311
>>Click the |cRXP_PICK_Large Leather Backpacks|r on the tree
.turnin 4131 >> Turn in The Woodpaw Gnolls
.accept 4135 >> Accept The Writhing Deep
step
.goto Feralas,73.31,56.30
.use 11463 >>|cRXP_WARN_Use the |T133628:0|t[|cRXP_LOOT_Undelivered Parcel|r] to start the quest|r
.collect 11463,1,4281
.accept 4281 >> Accept Thalanaar Delivery
step
#completewith next
.goto Feralas,73.57,63.13,100,0
.goto Feralas,72.78,64.48,15 >> Enter The Writhering Deep Hive from the lower southwest entrance
step
.goto Feralas,72.080,63.713
>>Click the |cRXP_PICK_Zukk'ash Pod|r
.turnin 4135 >> Turn in The Writhing Deep
.accept 4265 >> Accept Freed from the Hive
.timer 19,Freed from the Hive RP
step
.goto Feralas,72.080,63.713
>>|cRXP_WARN_Wait out the RP|r
.complete 4265,1
step
.goto Feralas,66.65,46.58
>>Grind until your Hearthstone is off cooldown
.hs >>Hearth to Feathermoon Stronghold
.zoneskip Feralas,1
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 2821 >> Turn in The Mark of Quality
.target Pratt McGrubben
step
.goto Feralas,31.043,43.116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardrack Greenwell|r
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.target Mardrack Greenwell
.zoneskip Feralas,1
step << Hunter
.goto Feralas,30.645,43.433
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faralorn|r
.vendor >>|cRXP_BUY_Buy Ammo if needed|r
.target Faralorn
.zoneskip Feralas,1
step
.goto Feralas,32.671,44.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logannas|r
.vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him|r
>>|cRXP_WARN_Skip this step if |cRXP_FRIENDLY_Logannas|r has none in stock|r
.zoneskip Feralas,1
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
.turnin 4265 >> Turn in Freed from the Hive
.accept 4266 >> Accept A Hero's Welcome
.target Ginro Hearthkindle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r and |cRXP_FRIENDLY_Shandris Feathermoon|r
.accept 2870 >> Accept Against Lord Shalzaru
.target +Latronicus Moonspear
.goto Feralas,30.379,46.170
.turnin 4266 >> Turn in A Hero's Welcome
.accept 4267 >> Accept Rise of the Silithid
.goto Feralas,30.276,46.168
.target +Shandris Feathermoon
step
.goto Feralas,26.6,52.0,70,0
.goto Feralas,26.2,55.2,70,0
.goto Feralas,29.6,53.6,70,0
.goto Feralas,29.0,50.4,70,0
.goto Feralas,26.6,53.4
.xp 46 >> Grind to level 46
>>Kill |cRXP_ENEMY_Hatecrest Screamers|r, |cRXP_ENEMY_Hatecrest Wave Riders|r, |cRXP_ENEMY_Hatecrest Warriors|r and |cRXP_ENEMY_Hatecrest Sirens|r. Loot them for the |T132836:0|t[|cRXP_LOOT_OOX-22/FE Distress Beacon|r]
>>|cRXP_WARN_Don't accept the quest for it yet. Continue questing normally. You will do it later|r
>>|cRXP_WARN_If you don't find it by the time you are 46, skip it for now. You may also grind the |cRXP_ENEMY_Nagas|r on the southern island|r

.collect 8705,1,2766,1 
.disablecheckbox

.mob Hatecrest Screamer
.mob Hatecrest Wave Rider
.mob Hatecrest Warrior
.mob Hatecrest Siren
step
#completewith next
.goto Feralas,25.49,64.92,40,0
.goto Feralas,26.13,67.41,30 >> Travel to the Isle of Dread. Enter Shalzaru's Lair
step
.goto Feralas,28.51,70.59
>>Kill |cRXP_ENEMY_Lord Shalzaru|r. Loot him for the |cRXP_LOOT_Mysterious Relic|r
.complete 2870,1 
.mob Lord Shalzaru
step
#completewith next
.goto Feralas,30.276,46.168,150 >> Travel to Feathermoon Stronghold
step
.goto Feralas,30.379,46.170
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
.turnin 2870 >> Turn in Against Lord Shalzaru
.accept 2871 >> Accept Delivering the Relic
.target Latronicus Moonspear
step
.goto Feralas,30.077,45.060
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vestia Moonspear|r
.turnin 2871 >> Turn in Delivering the Relic
.target Vestia Moonspear
step
.goto Feralas,31.828,45.611
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
.turnin 2982 >> Turn in The High Wilderness
.target Angelas Moonbreeze
step << !Mage !Druid
.goto Feralas,30.239,43.251
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fyldren Moonfeather|r
.fly Teldrassil >> Fly to Teldrassil
.target Fyldren Moonfeather
.zoneskip Feralas,1
step << Druid
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Feralas,1
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
>>|cRXP_WARN_Skip this step if you trained earlier|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
.zoneskip Moonglade,1
step << Druid
.goto Moonglade,44.148,45.229
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
.fly Teldrassil >> Fly to Darnassus
.skipgossip
.timer 153,Flight to Darnassus
.target Silva Fil'naveth
.zoneskip Moonglade,1
step << Mage
.goto Feralas,30.239,43.251
.zone Darnassus >>Teleport to Darnassus
>>If you don't have |T135755:0|t[Teleport: Darnassus] trained then fly there
.zoneskip Feralas,1
step << Mage
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r up stairs
.turnin 4267 >> Turn in Rise of the Silithid
.target Gracina Spiritmight
.zoneskip Darnassus,1
step << Mage
.goto Darnassus,39.094,81.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
.turnin 2972 >> Turn in Doling Justice
.target Tyrande Whisperwind
.zoneskip Darnassus,1
step << Mage
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 3022 >> Turn in Handle With Care
.accept 3661 >> Accept Favored of Elune?
.target Erelas Ambersky
step
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r up stairs
.turnin 2939 >> Turn in In Search of Knowledge
.target Daryn Lightwind
step
.goto Teldrassil,55.219,91.454
>>Click the |cRXP_PICK_Feralas: A History|r book on the ground
.accept 2940 >> Accept Feralas: A History
step
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r
.turnin 2940 >> Turn in Feralas: A History
.accept 2941 >> Accept The Borrower
.target Daryn Lightwind
step
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garryeth|r, |cRXP_FRIENDLY_Lairn|r or |cRXP_FRIENDLY_Idriana|r
.bankdeposit 9329,11463 >> Deposit the following items into your bank:
>>|T133469:0|t[A Short Note] 
>>|T133628:0|t[Undelivered Parcel] 
>>|T132836:0|t[OOX-22/FE Distress Beacon] (If you have it) 
.target Garryeth
.target Lairn
.target Idriana
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garryeth|r, |cRXP_FRIENDLY_Lairn|r or |cRXP_FRIENDLY_Idriana|r
.bankwithdraw 4494 >> Withdraw the following items from your bank:
>>|T133466:0|t[Seahorn's Sealed Letter] 
.target Garryeth
.target Lairn
.target Idriana
step
#ah
.goto Darnassus,56.245,54.039,-1
.goto Darnassus,56.374,51.820,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
>>Buy the following items for a instant turn in at Hinterlands shortly. Skip this step if you wish to not buy any
>>|T133296:0|t[Troll Tribal Necklace]
.collect 9259,5,2880,1 
.target Auctioneer Tolon
.target Auctioneer Golothas
step
#completewith MoonTemple
.goto Darnassus,39.01,81.43,40 >> Travel to the Temple of the Moon
step
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r up stairs
.turnin 4267 >> Turn in Rise of the Silithid
.target Gracina Spiritmight
step
#label MoonTemple
.goto Darnassus,39.094,81.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
.turnin 2972 >> Turn in Doling Justice
.target Tyrande Whisperwind
step << Mage
.goto Darnassus,40.599,82.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elissa Dumas|r
.train 3565 >> Train Teleport: Darnassus
.target Elissa Dumas
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << Mage
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth|r
.fly Arathi>> Fly to Arathi Highlands
.target Gryth Thurden
.zoneskip Ironforge,1
step << NightElf
>>|cRXP_WARN_Buy your Mount if you can afford it!|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lelanai|r and |cRXP_FRIENDLY_Jartsam|r
.vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FFFrostsaber|r] |cRXP_BUY_or|r |T132225:0|t[|cFF0070FFNightsaber|r]
.goto Darnassus,38.283,15.365
.train 828 >>Train |T132242:0|t[Tiger Riding]
.goto Darnassus,38.694,15.857
.skill riding,75,1 
.zoneskip Darnassus,1
.target Lelanai
.target Jartsam
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.goto Darnassus,58.72,34.92
.trainer >> Train your class spells
.target Arias'ta Bladesinger
.zoneskip Darnassus,1
step << Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
.zoneskip Darnassus,1
step << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.goto Darnassus,31.84,16.69,30,0
.goto Darnassus,37.00,21.92
.trainer >> Train your class spells
.target Syurna
.zoneskip Darnassus,1
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
.zoneskip Darnassus,1
step << !Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step << !Mage
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Darkshore >> Fly to Darkshore
.target Vesprystus
.zoneskip Teldrassil,1
step << !Mage
.goto Darkshore,32.44,43.71
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
.zone Wetlands >> Take the boat to Menethil Harbor
.zoneskip Arathi Highlands
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.goto Wetlands,9.490,59.694
.fly Arathi>> Fly to Arathi Highlands
.target Shellei Brondir
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 46-47 Hinterlands/Badlands
#next 47-48 Tanaris
step
#completewith next
.goto Arathi Highlands,30.74,66.94,60,0
.goto Arathi Highlands,22.72,71.98,50,0
.goto Arathi Highlands,21.50,75.91,40,0
.goto Arathi Highlands,21.98,79.96,30 >> Travel to Faldir's Cove
step
.goto Arathi Highlands,32.283,81.364
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 670 >> Sunken Treasure
.accept 667 >> Accept Death From Below
.target Shakes O'Breen
step
#completewith next
.goto Arathi Highlands,31.530,81.946,10,0
.goto Arathi Highlands,31.465,81.010,10 >> Quickly walk up the ramp onto the ship
step
.goto Arathi Highlands,32.103,80.685
>>Click the |cRXP_PICK_Cannon|r when you see incoming waves of attacking |cRXP_ENEMY_Nagas|r from the south
.complete 667,1 
step
.goto Arathi Highlands,32.283,81.364
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 667 >> Turn in Death From Below
.target Shakes O'Breen
step << skip
#completewith next
.goto Arathi Highlands,35.79,79.52,10 >> Logout on top of the rock in the cave, then log back in
.link https://www.youtube.com/watch?v=SWBtPqm5M0Q&t=114s >> |cRXP_WARN_Click here for video reference|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
.goto Arathi Highlands,45.73,46.09
.fly Hinterlands >> Fly to The Hinterlands
.target Cedrik Prose
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.accept 2988 >> Accept Witherbark Cages
.target Gryphon Master Talonaxe
step
#optional
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.accept 2880 >> Accept Troll Necklace Bounty
.turnin 2880 >> Turn in Troll Necklace Bounty
.itemcount 9259,5 
.target Fraggar Thundermantle
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.accept 2880 >> Accept Troll Necklace Bounty
.target Fraggar Thundermantle
step
#completewith Rye
>>Loot the |cRXP_LOOT_Wildkin Feathers|r on the ground
.complete 3661,1 
step
.goto The Hinterlands,26.943,48.588
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
.turnin 1452 >> Turn in Rhapsody's Kalimdor Kocktail
.timer 35,Rhapsody's Kalimdor Kocktail RP
.accept 1469 >> Accept Rhapsody's Tale
.target Rhapsody Shindigger
step
#completewith FinalCages
>>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for their |cRXP_LOOT_Tribal Necklaces|r
.complete 2880,1 
.mob Witherbark Venomblood
.mob Witherbark Hideskinner
.mob Witherbark Zealot
.mob Witherbark Scalper
step
.goto The Hinterlands,31.98,57.31
>>Click the |cRXP_PICK_Third Witherbark Cage|r
.complete 2988,3 
step
#label FinalCages
>>Click the |cRXP_PICK_First Witherbark Cage|r and |cRXP_PICK_Second Witherbark Cage|r
.complete 2988,1 
.goto The Hinterlands,23.28,58.81
.complete 2988,2 
.goto The Hinterlands,23.12,58.82
step
.goto The Hinterlands,21.92,56.04,70,0
.goto The Hinterlands,25.09,59.20,70,0
.goto The Hinterlands,32.23,58.21
>>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for their |cRXP_LOOT_Tribal Necklaces|r
.complete 2880,1 
.mob Witherbark Venomblood
.mob Witherbark Hideskinner
.mob Witherbark Zealot
.mob Witherbark Scalper
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.turnin 2880 >> Turn in Troll Necklace Bounty
.target Fraggar Thundermantle
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 2988 >> Turn in Witherbark Cages
.accept 2989 >> Accept The Altar of Zul
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,48.814,68.387
>>|cRXP_WARN_Clear your way to the top of The Altar of Zul. Ensure you are on full HP before you reach the top!|r
>>|cRXP_WARN_Run to the exploration location, then jump off to the side to evade the Elites at the top. Wait on the ledge until you have dropped Combat. Watch the video below for an example|r
.complete 2989,1 
.link https://www.youtube.com/watch?v=FtTS3K7T7Tw >> |cRXP_WARN_Click here for video reference|r
step
#label Rye
.goto The Hinterlands,39.984,66.256
>>Loot the |cRXP_PICK_Sack of Rye|r on the ground
.complete 49,3 
step
.goto The Hinterlands,42.5,54.5,70,0
.goto The Hinterlands,33.5,58.1,70,0
.goto The Hinterlands,29.6,62.0,70,0
.goto The Hinterlands,27.7,54.5,70,0
.goto The Hinterlands,21.0,56.1,70,0
.goto The Hinterlands,20.0,48.2,70,0
.goto The Hinterlands,15.7,52.5,70,0
.goto The Hinterlands,28.1,58.1
>>Loot the |cRXP_LOOT_Wildkin Feathers|r on the ground
>>|cRXP_WARN_These are scattered on the ground throughout all of The Hinterlands|r
.complete 3661,1 
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 2989 >> Turn in The Altar of Zul
.accept 2990 >> Accept Thadius Grimshade
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fly Ironforge >> Fly to Ironforge
.target Guthrum Thunderfist
.zoneskip The Hinterlands,1
step
.dungeon Ulda
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.accept 2398 >> Accept The Lost Dwarves
.target Prospector Stormpike
step
.dungeon Ulda
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
.accept 1360 >> Accept Reclaimed Treasures
.target Krom Stoutarm
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy Featherwhistle|r and |cRXP_FRIENDLY_Milli Featherwhistle|r
.train 10907 >>Train |T132247:0|t[Mechanostrider Piloting]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FFMechanostrider|r]
.goto Dun Morogh,49.123,47.956
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veron Amberstill|r and |cRXP_FRIENDLY_Ultham Ironhorn|r
.vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FFRam|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>Train |T132248:0|t[Ram Riding]
.goto Dun Morogh,63.944,50.095
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << !Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,27.18,8.60 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Dink << Mage
.target Brandur Ironhammer << Paladin
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step
#ah
#completewith start
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy the following from the Auction House. This step is optional and will allow you to complete a few extra quests if you have the items|r
>>|T134800:0|t[Frost Oil]
>>|T134377:0|t[Gyrochronatom] |cRXP_WARN_(Don't buy this unless you have a|r |T134800:0|t[Frost Oil]|cRXP_WARN_)|r
>>|T132606:0|t[Patterned Bronze Bracers] |cRXP_WARN_(Don't buy this unless you have a|r |T134377:0|t[Gyrochronatom] |cRXP_WARN_and|r |T134800:0|t[Frost Oil]|cRXP_WARN_)|r
>>|T134831:0|t[Healing Potion] |cRXP_WARN_and|r |T134798:0|t[Lesser Invisibility Potion] |cRXP_WARN_(Don't buy this unless you have a|r |T134377:0|t[Gyrochronatom] |cRXP_WARN_and|r |T134800:0|t[Frost Oil]|cRXP_WARN_)|r
.collect 3829,1,713,1 
.collect 4389,1,714,1 
.collect 2868,1,716,1 
.collect 929,1,715,1 
.collect 3823,1,715,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankwithdraw 4306 >> Withdraw the following items from your bank:
>>15 |T132905:0|t[Silk Cloth] (If you have them)
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankdeposit 740,10819,9468 >> Deposit the following items from your bank:
>>|T134059:0|t[Sack of Rye] 
>>|T132927:0|t[Wildkin Feather] 
>>|T135992:0|t[Sharpbeak's Feather] 
.target Bailey Stonemantle
step
#ah
#completewith start
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy the following from the Auction House|r
>>|T132905:0|t[Silk Cloth]
.collect 4306,15,4449,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#label start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >> Fly to Loch Modan
.target Gryth Thurden
.zoneskip Ironforge,1
step
.dungeon Ulda
.isQuestTurnedIn 2500 
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
.accept 17 >> Accept Uldaman Reagent Run
.target Ghak Healtouch
step
.dungeon Ulda
.isQuestTurnedIn 739 
.goto Loch Modan,65.93,65.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.accept 704 >> Accept Agmond's Fate
.target Prospector Ironband
step
#completewith RockEle
.goto Loch Modan,47.04,79.27,0
.goto Loch Modan,46.71,76.90,65,0
.goto Badlands,49.23,7.80
.zone Badlands >> Travel to Badlands
step 
.dungeon Ulda
.goto Badlands,53.027,33.944
>>Click the |cRXP_PICK_Crumpled Map|r on the ground
.accept 720 >> Accept A Sign of Hope
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
.turnin 720 >> Turn in A Sign of Hope
.accept 721 >> Accept A Sign of Hope
.goto Badlands,53.421,43.393
.target Prospector Ryedol
step
.goto Badlands,61.939,54.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garek|r
.accept 732 >> Accept Tremors of the Earth
.target Garek
step
#loop
.line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
.goto Badlands,36.37,71.63,60,0
.goto Badlands,39.75,72.36,60,0
.goto Badlands,43.61,72.61,60,0
.goto Badlands,51.70,73.52,60,0
.goto Badlands,61.89,67.68,60,0
.goto Badlands,54.73,58.52,60,0
.goto Badlands,48.53,53.02,60,0
.goto Badlands,45.44,51.70,60,0
.goto Badlands,41.01,54.95,60,0
.goto Badlands,35.35,56.99,60,0
.goto Badlands,28.17,56.44,60,0
.goto Badlands,19.50,57.77,60,0
.goto Badlands,16.05,64.35,60,0
.goto Badlands,12.51,72.73,60,0
.goto Badlands,12.85,77.42,60,0
.goto Badlands,14.51,79.15,60,0
.goto Badlands,21.83,78.10,60,0
.goto Badlands,25.39,73.02,60,0
.goto Badlands,32.13,74.04,60,0
.goto Badlands,36.37,71.63,60,0
>>Kill |cRXP_ENEMY_Boss Tho'grun|r. Loot him for his |cRXP_LOOT_Sign of the Earth|r
>>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols across all of Badlands|r
.complete 732,1 
.unitscan Boss Tho'grun
step
.goto Badlands,61.939,54.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garek|r
.turnin 732 >> Turn in Tremors of the Earth
.target Garek
step
.isQuestTurnedIn 687
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.accept 692 >> Accept The Lost Fragments
.target Theldurin the Lost
step
.dungeon Ulda
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.accept 709 >> Accept Solution to Doom
.target Theldurin the Lost
step
.goto Badlands,54.66,83.91
>>Kill |cRXP_ENEMY_Enraged Rock Elementals|r. Loot them for their |cRXP_LOOT_Scroll Fragments|r
.complete 692,1
.complete 692,2
.complete 692,3
.isOnQuest 692
.mob Enraged Rock Elemental
step
.goto Badlands,51.386,76.874
.target Theldurin the Lost
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.turnin 692 >> Turn in The Lost Fragments
.isOnQuest 692
step
#label RockEle
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.target Lotwil Veriatus
.accept 712 >> Accept Study of the Elements: Rock
step
.dungeon Ulda
#completewith LFGUlda
+You will run Uldaman after completing this quest. Start trying to find a group for Uldaman now
step
.goto Badlands,4.33,77.75,70,0
.goto Badlands,2.70,81.25,50,0
.goto Badlands,14.68,89.49,70,0
.goto Badlands,2.70,81.25
>>Kill |cRXP_ENEMY_Greater Rock Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
.complete 712,1 
.mob Greater Rock Elemental
step
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 712 >> Turn in Study of the Elements: Rock
step
#optional
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.target Lotwil Veriatus
.accept 713 >> Accept Coolant Heads Prevail
.turnin 713 >> Turn in Coolant Heads Prevail
.itemcount 3829,1
step
#optional
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.target Lotwil Veriatus
.accept 714 >> Accept Gyro... What?
.turnin 714 >> Turn in Gyro... What?
.itemcount 4389,1
.isQuestTurnedIn 713
step
#optional
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.target Lotwil Veriatus
.accept 734 >> Accept This Is Going to Be Hard
step
#optional
.isQuestTurnedIn 714
.goto Badlands,25.82,44.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
.turnin 734 >>Turn in This Is Going to Be Hard
.target Lucien Tosselwrench
.accept 777 >>Accept This Is Going to Be Hard
step
#optional
.isQuestTurnedIn 714
.target Lucien Tosselwrench
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
.accept 716 >>Accept Stone Is Better than Cloth
.turnin 716 >>Turn in Stone Is Better than Cloth
.itemcount 2868,1
step
#optional
.isQuestTurnedIn 714
.target Lucien Tosselwrench
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
.accept 715 >>Accept Liquid Stone
.turnin 715 >>Turn in Liquid Stone
.itemcount 3823,1
.itemcount 929,1
step
#optional
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 777 >>Turn in This Is Going to Be Hard
.target Lotwil Veriatus
.accept 778 >>Accept This Is Going to Be Hard
step
#optional
.isQuestTurnedIn 714
.goto Badlands,26.07,46.69
>>Kill the |cRXP_ENEMY_Fam'Retor Guardian|r. Loot it for its |cRXP_LOOT_Shackles|r
.complete 778,1 
.mob Fam'retor Guardian
step
#optional
#label LFGUlda
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 778 >>Turn in This Is Going to Be Hard
step
.dungeon Ulda
.goto Badlands,4.0,80.6
.goto Badlands,15.4,88.6
.goto Badlands,11.0,88.0
.goto Badlands,44.70,12.09
.zone 1415 >> Grind |cRXP_ENEMY_Ogres|r and |cRXP_ENEMY_Greater Rock Elementals|r while looking for a group for Uldaman

step
.dungeon Ulda
#completewith HammertoeGrez
.goto 1415,54.46,57.78
.zone 1415 >> Travel to Uldaman
step
.dungeon Ulda
#completewith HammertoeGrez
>>Loot the |cRXP_LOOT_Carved Stone Urns|r on the ground
>>|cRXP_WARN_This can be only be completed OUTSIDE of Uldaman|r
.complete 704,1 
.isOnQuest 704
step
.dungeon Ulda
#completewith HammertoeGrez
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
>>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Uldaman|r
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
.goto 1415,54.040,57.665
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hammertoe Grez|r
.turnin 721 >> Turn in A Sign of Hope
.accept 722 >> Accept Amulet of Secrets
.target Hammertoe Grez
step
.dungeon Ulda
.goto 1415,54.12,58.05,30,0
.goto 1415,54.09,58.21
>>Kill |cRXP_ENEMY_Magregan Deepshadow|r. Loot him for |cRXP_LOOT_Hammertoe's Amulet|r
>>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
.complete 722,1 
.mob Magregan Deepshadow
.isOnQuest 722
step
.dungeon Ulda
.goto 1415,54.140,58.246
>>Open the |cRXP_PICK_Ancient Chest|r. Loot it for the |cRXP_LOOT_Tablet of Ryun'eh|r
>>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
.complete 709,1 
.isOnQuest 709
step
.dungeon Ulda
.goto 1415,53.874,58.577
>>Loot |cRXP_LOOT_Krom Stoutarm's Treasure|r on the ground
>>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
.complete 1360,1 
.isOnQuest 1360
step
.dungeon Ulda
#label HammertoeGrez
.goto 1415,54.040,57.665
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hammertoe Grez|r
.turnin 722 >> Turn in Amulet of Secrets
.accept 723 >> Accept Prospect of Faith
.target Hammertoe Grez
.isQuestTurnedIn 721
step
.dungeon Ulda
.goto 1415,53.85,57.81,55,0
.goto 1415,53.63,58.01,55,0
.goto 1415,54.09,58.03,55,0
.goto 1415,53.85,57.81
>>Loot the |cRXP_LOOT_Carved Stone Urns|r and |cRXP_LOOT_Magenta Fungus Caps|r on the ground
>>|cRXP_WARN_Prioritize the |cRXP_LOOT_Carved Stone Urns|r. This can only be completed OUTSIDE of Uldaman. You can finish the |cRXP_LOOT_Magenta Fungus Caps|r once inside|r
.complete 704,1 
.complete 17,1 
.disablecheckbox
.isOnQuest 704
.isOnQuest 17
step
.dungeon Ulda
.goto 1415,53.85,57.81,55,0
.goto 1415,53.63,58.01,55,0
.goto 1415,54.09,58.03,55,0
.goto 1415,53.85,57.81
>>Loot the |cRXP_LOOT_Carved Stone Urns|r on the ground
>>|cRXP_WARN_This can be only be completed OUTSIDE of Uldaman|r
.complete 704,1 
.isOnQuest 704

step
.dungeon Ulda
.goto 1415,53.850,57.641
.subzone 1337,2 >> Zone into Uldaman
step
.dungeon Ulda
#completewith HiddenChamber
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
.turnin 2398 >> Turn in The Lost Dwarves
.accept 2240 >> Accept The Hidden Chamber
.target Baelog
.isOnQuest 2398
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
.accept 2240 >> Accept The Hidden Chamber
.target Baelog
step
.dungeon Ulda
#completewith next
>>Open |cRXP_PICK_Baelog's Chest|r. Loot it for the |T133276:0|t[|cRXP_LOOT_Gni'kiv Medallion|r]
>>Kill |cRXP_ENEMY_Revelosh|r. Loot him for |T135225:0|t[|cRXP_LOOT_The Shaft of Tsol|r]
>>|cRXP_WARN_Note other party members can loot these items, and then combine them to create the|r |T135138:0|t[Staff of Prehistoria]|cRXP_WARN_. Only one person in the group needs to do this|r
.collect 7740,1,2240,1 
.collect 7741,1,2240,1 
.use 7740 
.use 7741 
.mob Revelosh
.isOnQuest 2240
step
.dungeon Ulda
#label HiddenChamber
>>|cRXP_WARN_Use the|r |T133276:0|t[|cRXP_LOOT_Gni'kiv Medallion|r] |cRXP_WARN_and|r |T135225:0|t[|cRXP_LOOT_The Shaft of Tsol|r] |cRXP_WARN_to combine them into the|r |T135138:0|t[Staff of Prehistoria]
>>|cRXP_WARN_Use the|r |T135138:0|t[Staff of Prehistoria] |cRXP_WARN_on the |cRXP_PICK_Keystone|r to summon|r |cRXP_ENEMY_Ironaya|r
>>Kill |cRXP_ENEMY_Ironaya|r. |cRXP_WARN_Run into the Hidden Chamber she came from after|r
.use 7740 
.use 7741 
.use 7733 
.complete 2240,1 
.isOnQuest 2240
step
.dungeon Ulda
>>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
>>Kill |cRXP_ENEMY_Archaedas|r
>>Click |cRXP_PICK_The Discs of Norgannon|r
.accept 2278 >> Accept The Platinum Discs
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lore Keeper of Norgannon|r
.complete 2278,1 
.skipgossip
.target Lore Keeper of Norgannon
step
.dungeon Ulda
>>Click |cRXP_PICK_The Discs of Norgannon|r
.turnin 2278 >> Turn in The Platinum Discs
.accept 2279 >> Accept The Platinum Discs
step
.dungeon Ulda
>>|cRXP_WARN_Use the |T133289:0|t[|cRXP_LOOT_Shattered Necklace|r] to start the quest|r
.accept 2198 >> Accept The Shattered Necklace
.use 7666 
.itemcount 7666,1 
step
.dungeon Ulda
+Zone out of Uldaman together as a group to turn in quests in Badlands. The closest exit is the Uldaman backdoor
.zoneskip Badlands
step
.dungeon Ulda
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.turnin 709 >> Turn in Solution to Doom
.target Theldurin the Lost
.isQuestComplete 709
step
.dungeon Ulda
#label HammertoeGrez
.goto Badlands,53.421,43.393
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
.turnin 723 >> Turn in Prospect of Faith
.accept 724 >> Accept Prospect of Faith
.target Prospector Ryedol
.isQuestTurnedIn 721
step
.dungeon Ulda
#completewith UldaLoch
.goto Badlands,49.52,9.83,0
.goto Loch Modan,46.78,78.09
.zone Loch Modan >> Travel to Loch Modan
step
.dungeon Ulda
.goto Loch Modan,65.93,65.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.turnin 704 >> Turn in Agmond's Fate
.target Prospector Ironband
.isQuestComplete 704
step
.dungeon Ulda
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
.turnin 17 >> Turn in Uldaman Reagent Run
.target Ghak Healtouch
.isQuestComplete 17
step
.dungeon Ulda
#label UldaLoch
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
.fly Ironforge >> Fly to Ironforge
.target Thorgrum Borrelson
step
.dungeon Ulda
.goto Ironforge,69.930,18.548
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Explorer Magellas|r
.turnin 2279 >> Turn in The Platinum Discs
.accept 2439 >> Accept The Platinum Discs
.target High Explorer Magellas
.isQuestTurnedIn 2278
step
.dungeon Ulda
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.turnin 2240 >> Turn in The Hidden Chamber
.target Prospector Stormpike
.isQuestComplete 2240
step
.dungeon Ulda
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
.turnin 1360 >> Turn in Reclaimed Treasures
.target Krom Stoutarm
.isQuestComplete 1360
step
.dungeon Ulda
.group 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r and |cRXP_FRIENDLY_Advisor Belgrum|r
.turnin 724 >> Turn in Prospect of Faith
.accept 725 >> Accept Passing Word of a Threat
.target +Historian Karnik
.goto Ironforge,77.539,11.834
.turnin 725 >> Turn in Passing Word of a Threat
.accept 726 >> Accept Passing Word of a Threat
.target +Advisor Belgrum
.goto Ironforge,77.343,9.714
.turnin 726 >> Turn in Passing Word of a Threat
.accept 762 >> Accept An Ambassador of Evil
.goto Ironforge,77.539,11.834
.target +Historian Karnik
.isQuestTurnedIn 721
step
.dungeon Ulda
.solo 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r and |cRXP_FRIENDLY_Advisor Belgrum|r
.turnin 724 >> Turn in Prospect of Faith
.accept 725 >> Accept Passing Word of a Threat
.target +Historian Karnik
.goto Ironforge,77.539,11.834
.turnin 725 >> Turn in Passing Word of a Threat
.accept 726 >> Accept Passing Word of a Threat
.target +Historian Karnik
.goto Ironforge,77.343,9.714
.turnin 726 >> Turn in Passing Word of a Threat
.goto Ironforge,77.539,11.834
.target +Advisor Belgrum
.isQuestTurnedIn 721
step
.dungeon Ulda
.goto Ironforge,33.874,59.136
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dinita Stonemantle|r
.turnin 2439 >> Turn in The Platinum Discs
.target Dinita Stonemantle
.isQuestTurnedIn 2278
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
.goto Ironforge,36.377,3.614
.turnin 2198 >> Turn in The Shattered Necklace
.target Talvash del Kissel
.isOnQuest 2198
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
.goto Ironforge,36.377,3.614
.accept 2199 >> Accept Lore for a Price
.target Talvash del Kissel
.isQuestTurnedIn 2198
step
.dungeon Ulda
.goto Ironforge,36.377,3.614
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
>>Bring 5 |T133215:0|t[Silver Bars] to |cRXP_FRIENDLY_Talvash del Kissel|r
>>|cRXP_WARN_If you are unable to acquire them, abandon this quest|r
.complete 2199,1 
.turnin 2199 >> Turn in Lore for a Price
.target Talvash del Kissel
.isOnQuest 2199
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >> Fly to Loch Modan
.target Gryth Thurden
.zoneskip Ironforge,1
step
.dungeon Ulda
.abandon 2199 >> Abandon Lore for a Price
step
.dungeon Ulda
.goto Badlands,49.23,7.80
.zone Badlands >> Travel to Badlands
step
.dungeon Ulda
.group
#completewith next
.goto Badlands,42.87,29.77,60 >> Enter Angor Fortress
step
.dungeon Ulda
.group 2
.isOnQuest 762
.goto Badlands,41.92,26.26,20,0
.goto Badlands,42.10,28.89
>>Kill |cRXP_ENEMY_Ambassador Infernus|r. Loot him for |cRXP_LOOT_Ambassador Infernus' Bracer|r
>>|cRXP_ENEMY_Ambassador Infernus|r |cRXP_WARN_is on the lower level|r
.complete 762,1 
.mob Ambassador Infernus
step
#completewith next
.goto Badlands,1.02,63.09,0
.goto Searing Gorge,76.28,56.39
.zone Searing Gorge >> Travel to Searing Gorge
step
.goto Searing Gorge,65.592,62.172
>>Click on the |cRXP_PICK_Wooden Outhouse|r
.accept 4449 >> Accept Caught!
step
.goto Searing Gorge,63.1,60.9
>>Kill |cRXP_ENEMY_Dark Iron Geologists|r. Loot them for their |cRXP_LOOT_Silk Cloth|r if you still need more
.complete 4449,1 
.collect 4306,15 
.mob Dark Iron Geologist
step
.goto Searing Gorge,65.592,62.172
>>Click on the |cRXP_PICK_Wooden Outhouse|r
.turnin 4449 >> Turn in Caught!
.accept 4450 >> Accept Ledger from Tanaris
step
.goto Searing Gorge,65.505,62.184
>>Loot the |cRXP_LOOT_Goodsteel Ledger|r on the ground
.complete 4450,1 
step
#completewith next
.goto Searing Gorge,65.93,36.83,0
.goto Searing Gorge,65.4,48.4,0
.goto Searing Gorge,62.40,70.03,0
>>Kill |cRXP_ENEMY_Glassweb Spiders|r. Loot them for their |cRXP_LOOT_Solid Crystal Leg Shafts|r
>>|cRXP_WARN_Prioritize on completing the next steps escort quest. If he isn't there kill |cRXP_ENEMY_Glassweb Spiders|r while waiting|r
.complete 4450,2 
.mob Glassweb Spider
step
.goto Searing Gorge,63.879,60.978
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorius Stonetender|r
>>|cRXP_WARN_This will start an escort. Clear the surrounding area of the pit before accepting this quest|r
.accept 3367 >> Accept Suntara Stones
.target Dorius Stonetender
step
#completewith EscortDorius
.goto Searing Gorge,65.93,36.83,0
.goto Searing Gorge,65.4,48.4,0
.goto Searing Gorge,62.40,70.03,0
>>Kill |cRXP_ENEMY_Glassweb Spiders|r. Loot them for their |cRXP_LOOT_Solid Crystal Leg Shafts|r
.complete 4450,2 
.mob Glassweb Spider
step
.goto Searing Gorge,74.448,19.287
>>Escort |cRXP_FRIENDLY_Dorius|r to the Loch Modan Pass Gate
.complete 3367,1 
.target Dorius Stonetender
step
#label EscortDorius
.goto Searing Gorge,74.448,19.287
>>Click the |cRXP_PICK_Singed Letter|r on the ground
>>|cRXP_WARN_If the |cRXP_PICK_Singed Letter|r has not spawned, you will need to abandon Suntara Stones and complete the escort again. This is a bug with WoW Classic|r
.turnin 3367 >> Turn in Suntara Stones
.accept 3368 >> Accept Suntara Stones
step
.goto Searing Gorge,61.16,70.43,70,0
.goto Searing Gorge,65.4,48.4,50,0
.goto Searing Gorge,65.93,36.83,50,0
.goto Searing Gorge,65.4,48.4,50,0
.goto Searing Gorge,61.16,70.43,70,0
.goto Searing Gorge,65.4,48.4
>>Kill |cRXP_ENEMY_Glassweb Spiders|r. Loot them for their |cRXP_LOOT_Solid Crystal Leg Shafts|r
.complete 4450,2 
.mob Glassweb Spider
step
.goto Searing Gorge,31.70,34.18,30,0
.goto Searing Gorge,34.31,26.41
.subzone 1446 >> Travel to Thorium Point
.zoneskip Searing Gorge,1
step
.dungeon Ulda
.isQuestComplete 762
.goto Searing Gorge,37.934,30.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fp Thorium Point >> Get the Thorium Point flight path
.fly Ironforge >> Fly to Ironforge << !Mage
.target Lanie Reed
.zoneskip Searing Gorge,1
step << Mage
.dungeon Ulda
.isQuestComplete 762
.zone Ironforge >> Teleport to Ironforge
.zoneskip Searing Gorge,1
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Explorer Magellas|r and |cRXP_FRIENDLY_Historian Karnik|r
.accept 2963 >> Accept Portents of Uldum
.target +High Explorer Magellas
.goto Ironforge,69.930,18.548
.turnin 2963 >> Turn in Portents of Uldum
.accept 2946 >> Accept Seeing What Happens
.goto Ironforge,77.539,11.834
.target +Historian Karnik
.isQuestTurnedIn 2278
step
.dungeon Ulda
.isQuestComplete 762
.goto Ironforge,77.343,9.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Belgrum|r
.turnin 762 >> Turn in An Ambassador of Evil
.target Advisor Belgrum
step
.dungeon Ulda
.isQuestComplete 3368
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
>>|cRXP_FRIENDLY_Curator Thorius|r |cRXP_WARN_patrols through the Hall of Explorers|r
.turnin 3368 >> Turn in Suntara Stones
.target Curator Thorius
.zoneskip Ironforge,1
step << !Mage
.dungeon Ulda
.isQuestTurnedIn 762
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >> Enter the Deeprun Tram. Take the Tram to Stormwind City
step
.goto Searing Gorge,37.934,30.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fp Thorium Point >> Get the Thorium Point flight path
.fly Stormwind >> Fly to Stormwind << !Mage
.target Lanie Reed
.zoneskip Searing Gorge,1
step << Mage
#completewith next
.zone Stormwind City >> Teleport to Stormwind
step
.goto Stormwind City,64.328,20.627
.target Brohann Caskbelly
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.turnin 1469 >> Turn in Rhapsody's Tale
step
.dungeon Ulda
.abandon 762 >> Abandon An Ambassador of Evil
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 738,739,740,11463,8705 >> Withdraw the following items from your bank:
>>|T134058:0|t[Sack of Barley] 
>>|T134059:0|t[Sack of Corn] 
>>|T134059:0|t[Sack of Rye] 
>>|T133628:0|t[Undelivered Parcel] 
>>|T132836:0|t[OOX-22/FE Distress Beacon] (If you have it) 
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankdeposit 11725,11727,10443 >> Deposit the following items into your bank:
>>|T134321:0|t[Solid Crystal Leg Shaft] 
>>|T133741:0|t[Goodsteel Ledger] 
>>|T133471:0|t[Singed Letter] (If you have it) 
.target Newton Burnside
step
#completewith next
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy a|r |T133222:0|t[Truesilver Bar] |cRXP_BUY_and 2|r |T134823:0|t[Elixir of Fortitudes]
.collect 6037,1,50,1 
.collect 3825,2,3842,1 
>>|cRXP_WARN_Skip this step if you aren't able to aquire them|r
.target Auctioneer Jaxon
step
.goto Stormwind City,66.27,62.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Westfall >> Fly to Westfall
.target Dungar Longdrink
.zoneskip Stormwind City,1
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
.turnin 49 >> Turn in Sweet Amber
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
.accept 50 >> Accept Sweet Amber
.turnin 50 >> Turn in Sweet Amber
.itemcount 6037,1
step
.isQuestTurnedIn 50
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
.accept 51 >> Accept Sweet Amber
step
#completewith Egg
.hs >> Hearth to Feathermoon Stronghold
step
.goto Feralas,31.828,45.611
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
.target Angelas Moonbreeze
.accept 3445 >> Accept The Sunken Temple
step
.goto Feralas,26.6,52.0,70,0
.goto Feralas,26.2,55.2,70,0
.goto Feralas,29.6,53.6,70,0
.goto Feralas,29.0,50.4,70,0
.goto Feralas,26.6,53.4
.xp 47 >> Grind to level 47
>>Kill |cRXP_ENEMY_Hatecrest Nagas|r until you loot the |T132836:0|t[|cRXP_LOOT_OOX-22/FE Distress Beacon|r]
.use 8705 >> |cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-22/FE Distress Beacon|r] to start the quest|r
>>|cRXP_WARN_If you don't find it by the time you are 47, skip it|r
.collect 8705,1,2766 
.disablecheckbox
.accept 2766 >> Accept Find OOX-22/FE!
.disablecheckbox
.mob Hatecrest Screamer
.mob Hatecrest Wave Rider
.mob Hatecrest Warrior
.mob Hatecrest Siren
step
.use 8705 >> |cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-22/FE Distress Beacon|r] to start the quest|r
.collect 8705,1,2766 
.accept 2766 >> Accept Find OOX-22/FE!
.itemcount 8705,1 
step
#completewith Egg
.goto Feralas,47.3,44.7,85 >> Swim to the mainland
step
.isOnQuest 2766
.goto Feralas,55.44,56.45,40,0
.goto Feralas,53.353,55.696
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
>>|cRXP_WARN_Do NOT accept the follow up and attempt to do the Escort, unless you are in a group|r
.turnin 2766 >> Turn in Find OOX-22/FE!
.target Homing Robot OOX-22/FE
step
.isQuestTurnedIn 2766
.group 2
.goto Feralas,53.353,55.696
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
.accept 2767,1 >> Accept Rescue OOX-22/FE!
.target Homing Robot OOX-22/FE
step
.isOnQuest 2767
.group 2
.goto Feralas,45.67,43.38
>>Escort the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r to safety
.complete 2767,1
.target Homing Robot OOX-22/FE
step
.line Feralas,55.86,67.93,54.90,67.20,54.14,67.90,54.14,68.91,54.28,70.94,54.14,71.54,54.91,73.50,55.30,73.98,55.92,74.67,56.84,74.84,55.92,74.67,55.30,73.98,54.91,73.50,54.14,71.54,54.28,70.94,54.14,68.91,54.14,67.90,54.90,67.20,55.86,67.93,
.goto Feralas,55.86,67.93,60,0
.goto Feralas,54.90,67.20,60,0
.goto Feralas,54.14,67.90,60,0
.goto Feralas,54.14,68.91,60,0
.goto Feralas,54.28,70.94,60,0
.goto Feralas,54.14,71.54,60,0
.goto Feralas,54.91,73.50,60,0
.goto Feralas,55.30,73.98,60,0
.goto Feralas,55.92,74.67,60,0
.goto Feralas,56.84,74.84,60,0
.goto Feralas,55.92,74.67,60,0
.goto Feralas,55.30,73.98,60,0
.goto Feralas,54.91,73.50,60,0
.goto Feralas,54.14,71.54,60,0
.goto Feralas,54.28,70.94,60,0
.goto Feralas,54.14,68.91,60,0
.goto Feralas,54.14,67.90,60,0
.goto Feralas,54.90,67.20,60,0
.goto Feralas,55.86,67.93,60,0
.goto Feralas,54.14,71.54
>>Kill a |cRXP_ENEMY_Cursed Sycamore|r. Loot it for its |cRXP_LOOT_Sycamore Branch|r
>>|cRXP_WARN_The |cRXP_ENEMY_Cursed Sycamore|r patrol path is marked on your map|r
>>|cRXP_WARN_If you cannot find the |cRXP_ENEMY_Cursed Sycamore|r but instead see a |cRXP_ENEMY_Wandering Forest Walker|r, kill it and wait until a |cRXP_ENEMY_Cursed Sycamore|r spawns. There can only ever be one of these alive at a time|r
.complete 51,1 
.isOnQuest 51
.unitscan Cursed Sycamore
.unitscan Wandering Forest Walker
step
#label Egg
.goto Feralas,53.657,74.365,0
.goto Feralas,56.653,75.892,0
.goto Feralas,56.708,76.724,0
.goto Feralas,55.906,76.035,0
.goto Feralas,53.657,74.365,10,0
.goto Feralas,56.653,75.892,10,0
.goto Feralas,56.708,76.724,10,0
.goto Feralas,55.906,76.035,0
>>Loot a |cRXP_LOOT_Hippogryph Egg|r from a nest
.collect 8564,1,2741,1 
step
.goto Feralas,65.945,45.651
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r
.accept 3841 >> Accept An Orphan Looking For a Home
.target Kindal Moonweaver
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 4281 >> Turn in Thalanaar Delivery
.use 11463 
.target Falfindel Waywarder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
.goto Feralas,89.497,45.853
.fly Tanaris >> Fly to Tanaris
.target Thyssiana
.zoneskip Feralas,1
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 47-48 Tanaris
#next 48-49 STV/Hinterlands II
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 9329 >> Withdraw the following items from your bank:
>>|T133469:0|t[A Short Note] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 742,11102 >> Deposit the following items into your bank:
>>|T133749:0|t[A Sycamore Branch] (If you have it) 
>>|T132833:0|t[Unhatched Sprite Darter Egg] 
.target Gimblethorn
step
.goto Tanaris,52.462,28.514
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 1691 >> Accept More Wastewander Justice
step
.goto Tanaris,52.51,27.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r
.home >> Set your Hearthstone to Gadgetzan
.target Innkeeper Fizzgrimble
step
.goto Tanaris,52.387,26.968
>>Click the |cRXP_PICK_Egg-O-Matic|r on the ground
.turnin 2741 >> Turn in The Super Egg-O-Matic
.itemcount 8564,1 
step
+Open your |T132594:0|t[Egg Crate]
.itemcount 8647,1 
.use 8647
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.turnin 2941 >> Turn in The Borrower
.target Curgle Cranklehop
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2750 >> Accept A Bad Egg
.turnin 2750 >> Turn in A Bad Egg
.target Curgle Cranklehop
.itemcount 8646,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2749 >> Accept An Ordinary Egg
.turnin 2749 >> Turn in An Ordinary Egg
.target Curgle Cranklehop
.itemcount 8645,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2748 >> Accept A Fine Egg
.turnin 2748 >> Turn in A Fine Egg
.target Curgle Cranklehop
.itemcount 8644,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2747 >> Accept An Extraordinary Egg
.turnin 2747 >> Turn in An Extraordinary Egg
.target Curgle Cranklehop
.itemcount 8643,1 
step
+Open your |T132594:0|t[Box of Rations]
.itemcount 9539,1 
.use 9539
step
+Open your |T132595:0|t[Box of Spells]
.itemcount 9540,1 
.use 9540
step
+Open your |T132597:0|t[Box of Goodies]
.itemcount 9541,1 
.use 9541
step
.goto Tanaris,51.835,27.038
>>Click the |cRXP_PICK_Wanted Poster|r
.accept 2781 >> Accept WANTED: Caliph Scorpidsting
.accept 2875 >> Accept WANTED: Andre Firebeard
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 992 >> Accept Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,39.016,29.244
.use 8584 >> |cRXP_WARN_Use the|r |T134867:0|t[Untapped Dowsing Widget] |cRXP_WARN_at the Sandsorrow Watch pond. Avoid the Elite |cRXP_ENEMY_Sandfury Trolls|r en-route|r
>>|cRXP_WARN_Two level 47/48 |cRXP_ENEMY_Centipaar Tunnelers|r will spawn once you fill the|r |T134867:0|t[Untapped Dowsing Widget]|cRXP_WARN_. You may kill them or run away to reset them|r
.complete 992,1 
.mob Centipaar Tunneler
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 992 >> Turn in Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step
#label tStart
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3445 >> Turn in The Sunken Temple
.accept 3444 >> Accept The Stone Circle
.accept 3161 >> Accept Gahz'ridian
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,58.75,39.34,0
.goto Tanaris,58.72,36.54,0
.goto Tanaris,60.07,37.31,0
.goto Tanaris,60.76,32.67,0
.goto Tanaris,63.57,37.80,0
.goto Tanaris,63.89,39.86,0
.goto Tanaris,65.03,39.49,0
.goto Tanaris,65.41,36.62,0
>>Kill |cRXP_ENEMY_Wastewander Rogues|r, |cRXP_ENEMY_Wastewander Assassins|r and |cRXP_ENEMY_Wastewander Shadow Mages|r
>>|cRXP_ENEMY_Wastewander Rogues|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
.complete 1691,1 
.mob +Wastewander Rogue
.complete 1691,2 
.mob +Wastewander Assassin
.complete 1691,3 
.mob +Wastewander Shadow Mage
step
.goto Tanaris,59.4,41.1,60,0
.goto Tanaris,61.8,38.2,60,0
.goto Tanaris,63.6,32.0,60,0
.goto Tanaris,61.0,35.9,60,0
.goto Tanaris,58.9,39.0,60,0
.goto Tanaris,63.6,32.0,60,0
.goto Tanaris,58.9,39.0,60,0
.goto Tanaris,60.85,37.82
>>Kill |cRXP_ENEMY_Caliph Scorpidsting|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Caliph Scorpidsting|r |cRXP_WARN_patrols through Waterspring Field and is accompanied by 2|r |cRXP_ENEMY_Wastewander Rogues|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
.goto Tanaris,58.75,39.34,60,0
.goto Tanaris,58.72,36.54,60,0
.goto Tanaris,60.07,37.31,60,0
.goto Tanaris,60.76,32.67,60,0
.goto Tanaris,63.57,37.80,60,0
.goto Tanaris,63.89,39.86,60,0
.goto Tanaris,65.03,39.49,60,0
.goto Tanaris,65.41,36.62
>>Kill |cRXP_ENEMY_Wastewander Rogues|r, |cRXP_ENEMY_Wastewander Assassins|r and |cRXP_ENEMY_Wastewander Shadow Mages|r
.complete 1691,1 
.mob +Wastewander Rogue
.complete 1691,2 
.mob +Wastewander Assassin
.complete 1691,3 
.mob +Wastewander Shadow Mage
step
#completewith next
.goto Tanaris,67.058,23.891
.subzone 977 >> Travel to Steamwheedle Port
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3520 >> Turn in Screecher Spirits
.target Yeh'kinya
step
.goto Tanaris,66.560,22.265
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
.accept 8365 >> Accept Pirate Hats Ahoy!
.target Haughty Modiste
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.accept 8366 >> Accept Southsea Shakedown
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.058,23.891
.accept 2873 >> Accept Stoley's Shipment
.goto Tanaris,67.109,23.978
.target +Stoley
step
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >> Travel to Lost Rigger Cove
step
#completewith StoleyShip
>>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
>>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] to start the quest|r
.complete 8366,1 
.mob +Southsea Pirate
.complete 8366,2 
.mob +Southsea Freebooter
.complete 8366,3 
.mob +Southsea Dock Worker
.complete 8366,4 
.mob +Southsea Swashbuckler
.complete 8365,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.collect 9250,1,2876 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.accept 2876 >> Accept Ship Schedules
.use 9276 
.use 9250 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
step
#completewith StoleyShip
.goto Tanaris,73.37,47.14,0
>>Kill |cRXP_ENEMY_Andre Firebeard|r. Loot him for his |cRXP_LOOT_Head|r
.complete 2875,1 
.mob Andre Firebeard
step
#label StoleyShip
.goto Tanaris,72.15,46.76
>>Travel upstairs in the house
>>Open the |cRXP_PICK_Stolen Cargo|r. Loot it for |cRXP_LOOT_Stoley's Shipment|r
.complete 2873,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
>>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] to start the quest|r
.complete 8366,1 
.mob +Southsea Pirate
.complete 8366,2 
.mob +Southsea Freebooter
.complete 8366,3 
.mob +Southsea Dock Worker
.complete 8366,4 
.mob +Southsea Swashbuckler
.complete 8365,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.collect 9250,1,2876 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.accept 2876 >> Accept Ship Schedules
.use 9276 
.use 9250 
step
.goto Tanaris,73.37,47.14
>>Kill |cRXP_ENEMY_Andre Firebeard|r. Loot him for his |cRXP_LOOT_Head|r
.complete 2875,1 
.mob Andre Firebeard
step
>>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
>>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] to start the quest|r
.complete 8366,1 
.mob +Southsea Pirate
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,2 
.mob +Southsea Freebooter
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,3 
.mob +Southsea Dock Worker
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73
.complete 8366,4 
.mob +Southsea Swashbuckler
.goto Tanaris,75.17,45.84
.complete 8365,1 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.collect 9250,1,2876 
.mob +Southsea Pirate
.mob +Southsea Freebooter
.mob +Southsea Dock Worker
.mob +Southsea Swashbuckler
.accept 2876 >> Accept Ship Schedules
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.use 9276 
.use 9250 
step
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.xp 48 >> Grind to level 48
>>Kill any type of |cRXP_ENEMY_Southsea Pirate|r. Loot them for the |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r]
>>|cRXP_WARN_Do not Accept the quest for this yet|r
>>|cRXP_WARN_If you don't find it by the time you are 48, skip it|r

.collect 8623,1,351 
.disablecheckbox

.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#completewith SWP
.goto Tanaris,67.058,23.891
.subzone 977 >> Travel to Steamwheedle Port
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 8366 >> Turn in Southsea Shakedown
.turnin 2875 >> Turn in WANTED: Andre Firebeard
.turnin 2876 >> Turn in Ship Schedules
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.058,23.891
.turnin 2873 >> Turn in Stoley's Shipment
.accept 2874 >> Accept Deliver to MacKinley
.goto Tanaris,67.109,23.978
.target +Stoley
.itemcount 9250,1 
.use 9250 
step
#label SWP
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
.turnin 8366 >> Turn in Southsea Shakedown
.turnin 2875 >> Turn in WANTED: Andre Firebeard
.target +Security Chief Bilgewhizzle
.goto Tanaris,67.058,23.891
.turnin 2873 >> Turn in Stoley's Shipment
.accept 2874 >> Accept Deliver to MacKinley
.goto Tanaris,67.109,23.978
.target +Stoley
step
.goto Tanaris,66.560,22.265
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
.turnin 8365 >> Turn in Pirate Hats Ahoy!
.target Haughty Modiste
step
#completewith GadgetTurnins
.subzone 976 >> Travel to Gadgetzan
step
.goto Tanaris,52.462,28.514
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 1691 >> Turn in More Wastewander Justice
.turnin 2781 >> Turn in WANTED: Caliph Scorpidsting
step
.goto Tanaris,52.819,27.401
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
.accept 5863 >> Accept The Dunemaul Compound
.target Andi Lynn
step
#label GadgetTurnins
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 82 >> Accept Noxious Lair Investigation
.target Senior Surveyor Fizzledowser
step
#completewith next
.goto Tanaris,34.75,46.05
.subzone 982 >> Travel to The Noxious Lair
step
.goto Tanaris,35.68,39.78,70,0
.goto Tanaris,36.55,41.98,70,0
.goto Tanaris,35.59,44.08,70,0
.goto Tanaris,35.60,48.79,70,0
.goto Tanaris,31.70,49.12,70,0
.goto Tanaris,30.83,46.10,70,0
.goto Tanaris,35.68,39.78
>>Kill |cRXP_ENEMY_Centipaar Sandreavers|r, |cRXP_ENEMY_Centipaar Swarmers|r, |cRXP_ENEMY_Centipaar Stingers|r, |cRXP_ENEMY_Centipaar Tunnelers|r, and |cRXP_ENEMY_Centipaar Wasps|r. Loot them for |cRXP_LOOT_Centipaar Insect Parts|r
>>|cRXP_WARN_Be careful as all |cRXP_ENEMY_Centipaar|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds), |cRXP_ENEMY_Centipaar Sandreavers|r cast|r |T132338:0|t[Arcing Smash] |cRXP_WARN_(Deals an extra melee attack), |cRXP_ENEMY_Centipaar Swarmers|r cast|r |T136122:0|t[Silithid Swarm] |cRXP_WARN_(Summons a 1 health mob every 10 seconds that deals current-level attack damage, instantly dies to AoE), |cRXP_ENEMY_Centipaar Stingers|r cast|r |T132274:0|t[Venom Sting] |cRXP_WARN_(deals 11-12 damage every 5 seconds for 45 seconds), |cRXP_ENEMY_Centipaar Tunnelers|r cast|r |T136231:0|t[Pierce Armor] |cRXP_WARN_(Reduces armor by 50% for 20 seconds), and |cRXP_ENEMY_Centipaar Wasps|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(deals 33-34 damage every 3 seconds for 30 seconds)|r
.complete 82,1 
.mob Centipaar Sandreaver
.mob Centipaar Swarmer
.mob Centipaar Stinger
.mob Centipaar Tunneler
.mob Centipaar Wasp
.mob Silithid Swarm
step
#completewith Ravager
.goto Tanaris,41.50,57.81
.subzone 983 >> Travel to the Dunemaul Compound
step
#completewith next
>>Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Dunemaul Enforcers|r
.complete 5863,1 
.mob +Dunemaul Brute
.complete 5863,2 
.mob +Dunemaul Enforcer
step
#label Ravager
.goto Tanaris,41.50,57.81
>>Kill |cRXP_ENEMY_Gor'marok the Ravager|r
>>|cRXP_WARN_Be cautious as|r |cRXP_ENEMY_Gor'marok the Ravager|r |cRXP_WARN_can|r |T136224:0|t[Enrage] |cRXP_WARN_and deal significant damage very quickly|r
.complete 5863,3 
.mob Gor'marok the Ravager
step
.goto Tanaris,37.83,56.94,70,0
.goto Tanaris,38.64,51.83,70,0
.goto Tanaris,41.04,51.18,70,0
.goto Tanaris,42.63,55.10,70,0
.goto Tanaris,37.83,56.94,70,0
.goto Tanaris,38.64,51.83,70,0
.goto Tanaris,41.04,51.18,70,0
.goto Tanaris,42.63,55.10
>>Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Dunemaul Enforcers|r
.complete 5863,1 
.mob +Dunemaul Brute
.complete 5863,2 
.mob +Dunemaul Enforcer
step
#completewith Ridian
.goto Tanaris,40.52,72.95,200 >> Travel to the Southmoon Ruins
step
#completewith next
.itemStat 1,QUALITY,>1
.cast 11992 >> Equip the |T133151:0|t[Gahz'ridian Detector]
.use 9978
.isOnQuest 3161
step
#label Ridian
.goto Tanaris,41.04,71.69,50,0
.goto Tanaris,39.66,73.51,70,0
.goto Tanaris,46.01,65.13,70,0
.goto Tanaris,47.81,64.83,70,0
.goto Tanaris,41.04,71.69,50,0
.goto Tanaris,39.66,73.51,70,0
.goto Tanaris,46.01,65.13,70,0
.goto Tanaris,47.81,64.83
>>Loot the |cRXP_LOOT_Gahz'ridian|r on the ground around the Ruins
>>|cRXP_WARN_The |cRXP_LOOT_Gahz'ridian|r will show up on your minimap with the|r |T133151:0|t[Gahz'ridian Detector] |cRXP_WARN_equiped|r
.complete 3161,1 
.use 9978
step
#completewith next
.itemStat 1,QUALITY,1
.cast 11992 >> Equip your normal |T133127:0|t[Helmet]
.isOnQuest 3161
step
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3161 >> Turn in Gahz'ridian
.target Marvon Rivetseeker
step
.goto Tanaris,50.886,26.963
.target Alchemist Pestlezugg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 82 >> Turn in Noxious Lair Investigation
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 2944 >> Accept The Super Snapper FX
.target Curgle Cranklehop
step
.goto Tanaris,52.819,27.401
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
.turnin 5863 >> Turn in The Dunemaul Compound
.target Andi Lynn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 9328,8623 >> Deposit the following items into your bank:
>>|T134442:0|t[Super Snapper FX] 
>>|T132836:0|t[OOX-17/TN Distress Beacon] (If you have it) 
.target Gimblethorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fly Ratchet >> Fly to Ratchet
.target Bera Stonehammer
.zoneskip The Barrens
.zoneskip Stranglethorn Vale
step
.goto The Barrens,63.677,38.618
.zone Stranglethorn Vale >> Take the boat to Booty Bay
>>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting|r
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 48-49 STV/Hinterlands II
#next 49-50 Searing Gorge
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 2874 >> Turn in Deliver to MacKinley
.accept 609 >> Accept Voodoo Dues
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 621 >> Accept Zanzil's Secret
step
.group
.goto Stranglethorn Vale,27.173,77.007
.target Fleet Master Seahorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.accept 608 >> Accept The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 2767 >> Turn in Rescue OOX-22/FE!
.isQuestComplete 2767
step << skip 
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 648 >> Turn in Rescue OOX-17/TN!
.isQuestComplete 648
step
.group 2
#completewith next
.goto Stranglethorn Vale,30.04,89.38,150 >> Travel to the Bloodsail Ships
.isQuestAvailable 608,624
step
.group 2
>>Kill |cRXP_ENEMY_Captain Keelhaul|r, |cRXP_ENEMY_Fleet Master Firallon|r and |cRXP_ENEMY_Captain Stillwater|r
>>|cRXP_WARN_They are each found on a Bloodsail Ship, on the second floor|r
>>|cRXP_WARN_Search the bottom floor of each Bloodsail Ship for|r |T134939:0|t[|cRXP_LOOT_Cortello's Riddle|r]|cRXP_WARN_. It can spawn on any of the ships|r
>>|cRXP_WARN_Use |T134939:0|t[|cRXP_LOOT_Cortello's Riddle|r] to start the quest|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find which location it is in|r << Hunter
.complete 608,2 
.mob +Captain Keelhaul
.goto Stranglethorn Vale,29.27,88.32
.complete 608,3 
.mob +Fleet Master Firallon
.goto Stranglethorn Vale,30.58,90.63
.complete 608,1 
.mob +Captain Stillwater
.goto Stranglethorn Vale,32.89,88.23
.collect 4056,1,624,1 
.accept 624 >> Accept Cortello's Riddle
.use 4056
.goto Stranglethorn Vale,29.27,88.32,0
.goto Stranglethorn Vale,30.58,90.63,0
.goto Stranglethorn Vale,32.89,88.23,0
.goto Stranglethorn Vale,29.35,89.17,35,0
.goto Stranglethorn Vale,30.61,89.76,35,0
.goto Stranglethorn Vale,33.49,88.20,35,0 
step
#completewith Chucky
.goto Stranglethorn Vale,39.99,58.24
.subzone 311 >> Travel to the Ruins of Aboraz
step
#completewith next
.goto Stranglethorn Vale,39.99,58.24,0
.goto Stranglethorn Vale,34.92,51.84,0
>>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
#label Chucky
.goto Stranglethorn Vale,39.99,58.24
>>Kill |cRXP_ENEMY_Chucky "Ten Thumbs"|r. Loot him for his |cRXP_LOOT_Huge Ring|r
.complete 609,3 
.mob Chucky "Ten Thumbs"
step
#completewith FinalZanzil
.goto Stranglethorn Vale,34.92,51.84
.subzone 477 >> Travel to the Ruins of Jubuwal
step
#completewith FinalZanzil
.goto Stranglethorn Vale,39.99,58.24,0
.goto Stranglethorn Vale,34.92,51.84,0
>>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
#completewith next
.goto Stranglethorn Vale,34.92,51.84
>>Kill |cRXP_ENEMY_Jon-Jon the Crow|r. Loot him for his |cRXP_LOOT_Golden Spyglass|r
.complete 609,2 
.mob Jon-Jon the Crow
step
.goto Stranglethorn Vale,35.26,51.28
>>Kill |cRXP_ENEMY_Maury "Club Foot" Wilkins|r. Loot him for his |cRXP_LOOT_Clubbed Foot|r
.complete 609,1 
.mob Maury "Club Foot" Wilkins
step
#label FinalZanzil
.goto Stranglethorn Vale,34.92,51.84
>>Kill |cRXP_ENEMY_Jon-Jon the Crow|r. Loot him for his |cRXP_LOOT_Golden Spyglass|r
.complete 609,2 
.mob Jon-Jon the Crow
step
.goto Stranglethorn Vale,34.92,51.84,70,0
.goto Stranglethorn Vale,39.99,58.24,70,0
.goto Stranglethorn Vale,34.92,51.84,70,0
.goto Stranglethorn Vale,39.99,58.24,70,0
.goto Stranglethorn Vale,34.92,51.84
.goto Stranglethorn Vale,39.99,58.24,0
>>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
.goto Stranglethorn Vale,28.41,46.88,0
.goto Stranglethorn Vale,31.12,43.17,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,31.76,41.34,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,31.12,43.17
>>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
>>|cRXP_ENEMY_Tethis|r |cRXP_WARN_will patrol around in this location|r
.complete 197,1 
.unitscan Tethis
step
.goto Stranglethorn Vale,47.2,28.0,35,0
.goto Stranglethorn Vale,49.8,24.6,35,0
.goto Stranglethorn Vale,48.4,19.2,35,0
.goto Stranglethorn Vale,49.54,24.17
.goto Stranglethorn Vale,47.2,28.0,0
.goto Stranglethorn Vale,49.8,24.6,0
.goto Stranglethorn Vale,48.4,19.2,0
>>Kill |cRXP_ENEMY_Bhag'thera|r. Loot him for the |cRXP_LOOT_Fang of Bhag'thera|r
>>|cRXP_ENEMY_Bhag'thera|r |cRXP_WARN_can spawn north or west of the Mosh'Ogg Ogre Mound|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and locate|r |cRXP_ENEMY_Bhag'thera|r << Hunter
.complete 193,1 
.unitscan Bhag'thera
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 193 >> Turn in Panther Mastery
.target +Sir S. J. Erlgadin
.goto Stranglethorn Vale,35.556,10.546
.turnin 197 >> Turn in Raptor Mastery
.accept 208 >> Accept Big Game Hunter
.goto Stranglethorn Vale,35.658,10.808
.target +Hemet Nesingwary
step
#optional
#completewith next
+|cRXP_WARN_Use the|r |T133581:0|t[Flash Bomb] |cRXP_WARN_on |cRXP_ENEMY_King Bangalash|r when he is at 55%|r
.itemcount 4852,1
.use 4852
step
.goto Stranglethorn Vale,38.20,35.57
>>Kill |cRXP_ENEMY_King Bangalash|r. Loot him for the |cRXP_LOOT_Head of Bangalash|r
>>|cRXP_ENEMY_King Bangalash|r |cRXP_WARN_will spawn 2 |cRXP_ENEMY_Panthers|r at 50% health. Try to CC him just before 50% if possible so it prevents him from spawning any|r
>>|cRXP_WARN_If you are not confident, skip this step|r
.complete 208,1 
.mob King Bangalash
step
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 208 >> Turn in Big Game Hunter
.target Hemet Nesingwary
.isQuestComplete 208
step
.abandon 208 >> Abandon Big Game Hunter
step
#completewith ReturnSTV
.goto Stranglethorn Vale,28.97,73.05,100 >> Travel to Booty Bay
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 609 >> Turn in Voodoo Dues
.target "Sea Wolf" MacKinley
step
#label ReturnSTV
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r and |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 580 >> Accept Whiskey Slim's Lost Grog
.target +Whiskey Slim
.goto Stranglethorn Vale,27.135,77.451
.turnin 621 >> Turn in Zanzil's Secret
.accept 1119 >> Accept Zanzil's Mixture and a Fool's Stout
.goto Stranglethorn Vale,27.120,77.208
.target +Crank Fizzlebub
step
.isQuestComplete 608
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 608 >> Turn in The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
#completewith Thadius
.isOnQuest 1119
+|cRXP_WARN_Note the Zanzil's Mixture and a Fool's Stout quest has a 2 hour timer|r
.zoneskip Stranglethorn Vale,1
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankwithdraw 742,9468 >> Withdraw the following items from your bank:
>>|T133749:0|t[A Sycamore Branch] (If you have it) 
>>|T135992:0|t[Sharpbeak's Feather] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.abandon 608 >> Abandon The Bloodsail Buccaneers
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >> Fly to Westfall
.target Gyll
.isQuestComplete 51
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
.turnin 51 >> Turn in Sweet Amber
.accept 53 >> Accept Sweet Amber
.isQuestTurnedIn 50 
step << !Mage
.goto Westfall,56.556,52.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.fly Stormwind >> Fly to Stormwind
.target Thor
.isOnQuest 53
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >> Fly to Stormwind
.target Gyll
.isQuestAvailable 51
.zoneskip Stranglethorn Vale,1
step << Mage
#completewith next
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>Go into The Slaughtered Lamb and go downstairs
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Spackle Thornberry
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy the following items for a faster turn in at STV later|r
>>|cRXP_WARN_This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any|r
>>|cRXP_WARN_Remember to check your bank before you buy any as you may have found some earlier|r
>>|T134298:0|t[Gorilla Fang]
.collect 2799,10,348,1 
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy the following items for a faster turn in at Un'Goro Crater later|r
>>|cRXP_WARN_This will save you time as you won't need to run around looking for them. Skip this step if you wish to not buy any|r
>>|T134130:0|t[Red Power Crystal]
>>|T134105:0|t[Green Power Crystal]
>>|T134133:0|t[Blue Power Crystal]
>>|T134136:0|t[Yellow Power Crystal]
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
.target Auctioneer Jaxon
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Darkshire >> Fly to Duskwood
.target Dungar Longdrink
.isQuestAvailable 1395
step
.goto Duskwood,75.779,46.159
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watchmaster Sorigal|r
.target Watchmaster Sorigal
.accept 1395 >> Accept Supplies for Nethergarde
step
#completewith Thadius
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.target Felicia Maline
.fly Nethergarde >> Fly to Nethergarde Keep
.zoneskip Swamp of Sorrows
step
.goto Blasted Lands,66.522,21.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
.turnin 1395 >> Turn in Supplies for Nethergarde
.target Quartermaster Lungertz
step
#label Thadius
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r atop the Tower
.turnin 2990 >> Turn in Thadius Grimshade
.target Thadius Grimshade
step
.dungeon ZF
.isQuestTurnedIn 2990
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r atop the Tower
.accept 2991 >> Accept Nekrum's Medallion
.target Thadius Grimshade
step
#completewith Jarquia
.goto Blasted Lands,52.34,9.63,0
.goto Swamp of Sorrows,33.60,65.32
.zone Swamp of Sorrows >> Travel to Swamp of Sorrows
step
#completewith ExitSoS
+|cRXP_WARN_Be very careful of |cRXP_ENEMY_Stonard Scouts|r anytime you are in Swamp of Sorrows. If one ever attacks you, you will be PvP Flagged for 5 minutes|r
.unitscan Stonard Scout
step
.group
.goto Swamp of Sorrows,22.87,48.18
>>Click |cRXP_PICK_A Soggy Scroll|r in the water under the bridge
.turnin 624 >> Turn in Cortello's Riddle
.accept 625 >> Accept Cortello's Riddle
.isOnQuest 624
step
.group
.goto Swamp of Sorrows,22.87,48.18
>>Click |cRXP_PICK_A Soggy Scroll|r in the water under the bridge
.accept 625 >> Accept Cortello's Riddle
.isQuestTurnedIn 624
step
#label Jarquia
.goto Swamp of Sorrows,91.87,68.35,40,0
.goto Swamp of Sorrows,94.386,61.489,40,0
.goto Swamp of Sorrows,94.730,51.849,40,0
.goto Swamp of Sorrows,91.87,68.35,40,0
.goto Swamp of Sorrows,94.386,61.489,40,0
.goto Swamp of Sorrows,94.730,51.849,40,0
.goto Swamp of Sorrows,94.386,61.489
>>Kill |cRXP_ENEMY_Jarquia|r. Loot him for his |cRXP_LOOT_Balanced Flameberge|r
>>|cRXP_ENEMY_Jarquia|r |cRXP_WARN_has a few different spawn locations along the coast|r
.complete 4450,4 
.mob Jarquia
step
#label ExitSoS
#completewith Orphan
.hs Gadgetzan >> Hearth to Gadgetzan
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 11723 >> Deposit the following items into your bank:
>>|T135272:0|t[Goodsteel's Balanced Flameberge] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 11102 >> Withdraw the following items from your bank:
>>|T132833:0|t[Unhatched Sprite Darter Egg] 
.target Gimblethorn
step
#completewith Orphan
.goto Thousand Needles,77.782,77.263
.subzone 2240 >> Travel to the Mirage Raceway
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1119 >> Turn in Zanzil's Mixture and a Fool's Stout
.timer 13,Kravel Koalbeard RP
.accept 1120 >> Accept Get the Gnomes Drunk
.isQuestTurnedIn 1118
.target Kravel Koalbeard
step
.goto Thousand Needles,77.563,76.941
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnome Pit Boss|r
.turnin 1120 >> Turn in Get the Gnomes Drunk
.isQuestTurnedIn 1118
.target Gnome Pit Boss
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1122 >> Accept Report Back to Fizzlebub
.isQuestTurnedIn 1118
.target Kravel Koalbeard
step
#optional
.goto Thousand Needles,78.347,74.725
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quentin|r
.turnin 3841 >> Turn in An Orphan Looking For a Home
.accept 3842 >> Accept A Short Incubation
.turnin 3842 >> Turnin A Short Incubation
.itemcount 3825,2 
.target Quentin
step
#label Orphan
.goto Thousand Needles,78.347,74.725
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quentin|r
.turnin 3841 >> Turn in An Orphan Looking For a Home
.target Quentin
step
.dungeon ZF
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.accept 2770 >> Accept Gahz'rilla
.target Wizzle Brassbolts
step
.dungeon ZF
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.accept 3042 >> Accept Troll Temper
.target Trenton Lighthammer
step
.dungeon ZF
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 2768 >> Accept Divino-matic Rod
.target Chief Engineer Bilgewhizzle
step
.dungeon ZF
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 2865 >> Accept Scarab Shells
.target Tran'rek
step
.dungeon ZF
.isQuestTurnedIn 3520
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.accept 3527 >> Accept The Prophecy of Mosh'aru
.target Yeh'kinya
step
.dungeon ZF
.goto Tanaris,73.37,47.14
.goto Tanaris,38.731,19.839
.subzone 978 >> You will now run Zul'Farrak. Grind on |cRXP_ENEMY_Pirates|r while looking for a ZF group
step
.dungeon ZF
.goto Tanaris,38.91,20.78,40,0
.goto Tanaris,38.731,19.839
.subzone 978,2 >> Enter Zul'Farrak
step
.dungeon ZF
#completewith Gahzrilla
>>Kill |cRXP_ENEMY_Trolls|r. Loot them for their |cRXP_LOOT_Troll Temper|r
.complete 3042,1 
.isOnQuest 3042
step
.dungeon ZF
#completewith next
>>Kill |cRXP_ENEMY_Scarabs|r. Loot them for their |cRXP_LOOT_Uncracked Scarab Shell|r
.complete 2865,1 
.isOnQuest 2865
step
.dungeon ZF
>>Kill |cRXP_ENEMY_Theka the Martyr|r. Loot him for the |cRXP_LOOT_First Mosh'aru Tablet|r
.complete 3527,1 
.mob Theka the Martyr
.isOnQuest 3527
step
.dungeon ZF
>>Kill |cRXP_ENEMY_Scarabs|r. Loot them for their |cRXP_LOOT_Uncracked Scarab Shell|r
.complete 2865,1 
.isOnQuest 2865
step
.dungeon ZF
#completewith NekrumMedallion
+Ascend the Pyramid
>>Kill the |cRXP_ENEMY_Sandfury Executioner|r. Loot him for the |cRXP_LOOT_Executioner's Key|r
>>|cRXP_WARN_Anyone in the party may loot the|r |cRXP_LOOT_Key|r
>>|cRXP_WARN_Use the|r |cRXP_LOOT_Executioner's Key|r |cRXP_WARN_on one of the |cRXP_PICK_Troll Cages|r to free |cRXP_FRIENDLY_Sergeant Bly|r and his band|r
.collect 8444,1 
.disablecheckbox
.isOnQuest 2991,2768
.mob Sandfury Executioner
step
.dungeon ZF
>>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
>>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Loot him for |cRXP_LOOT_Nekrum's Medallion|r
>>After you kill |cRXP_ENEMY_Nekrum Gutchewer|r, eat and drink then talk to |cRXP_FRIENDLY_Sergeant Bly|r to fight him
>>Kill |cRXP_ENEMY_Sergeant Bly|r. Loot him for the |cRXP_LOOT_Divino-matic Rod|r
.complete 2991,1 
.complete 2768,1 
.isOnQuest 2991
.isOnQuest 2768
.skipgossip
step
.dungeon ZF
>>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
>>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Loot him for |cRXP_LOOT_Nekrum's Medallion|r
.complete 2991,1 
.isOnQuest 2991
.skipgossip
step
.dungeon ZF
#label NekrumMedallion
>>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
>>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Eat and drink then talk to |cRXP_FRIENDLY_Sergeant Bly|r to fight him
>>Kill |cRXP_ENEMY_Sergeant Bly|r. Loot him for the |cRXP_LOOT_Divino-matic Rod|r
.complete 2768,1 
.isOnQuest 2768
.skipgossip
step
.dungeon ZF
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r and the |cRXP_LOOT_Second Mosh'aru Tablet|r
.complete 2846,1 
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 2846
.isOnQuest 3527
step
.dungeon ZF
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r
.complete 2846,1 
.mob Hydromancer Velratha
.isOnQuest 2846
step
.dungeon ZF
>>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Second Mosh'aru Tablet|r
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 3527
step
.dungeon ZF
#label Gahzrilla
>>|cRXP_WARN_Use the|r |T133056:0|t[Mallet of Zul'Farrak] |cRXP_WARN_on the |cRXP_PICK_Gong of Zul'Farrak|r to summon|r |cRXP_ENEMY_Gahz'rilla|r
>>Kill |cRXP_ENEMY_Gahz'rilla|r. Loot him for |cRXP_LOOT_Gahz'rilla's Electrified Scale|r
>>|cRXP_WARN_If no one in your party has the|r |T133056:0|t[Mallet of Zul'Farrak] |cRXP_WARN_you will not be able to summon|r |cRXP_ENEMY_Gahz'rilla|r
.complete 2770,1 
.mob Gahz'rilla
.isOnQuest 2770
step
.dungeon ZF
>>Kill |cRXP_ENEMY_Trolls|r. Loot them for their |cRXP_LOOT_Troll Temper|r
.complete 3042,1 
.isOnQuest 3042
step
.dungeon ZF
#completewith ZFTurnIn
.hs >> Hearth to Gadgetzan
step
.dungeon ZF
.isQuestComplete 3042
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.turnin 3042 >> Turn in Troll Temper
.target Trenton Lighthammer
step
.dungeon ZF
.isQuestComplete 2768
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 2768 >> Turn in Divino-matic Rod
.target Chief Engineer Bilgewhizzle
step
.dungeon ZF
.isQuestComplete 2865
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2865 >> Turn in Scarab Shells
.target Tran'rek
step
.dungeon ZF
.isQuestComplete 3527
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3527 >> Turn in The Prophecy of Mosh'aru

.target Yeh'kinya
step
.dungeon ZF
#completewith ZFTurnIn
.goto Thousand Needles,77.782,77.263
.subzone 2240 >> Travel to the Mirage Raceway
step
.dungeon ZF
.isQuestComplete 2770
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.turnin 2770 >> Turn in Gahz'rilla
.target Wizzle Brassbolts
step
.dungeon ZF
.abandon 2770 >> Abandon Gahz'rilla
step 
#label ZFTurnIn
.goto Thousand Needles,78.347,74.725
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quentin|r
.accept 3843 >> Accept The Newest Member of the Family
.isQuestTurnedIn 3842
.target Quentin
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 9328 >> Withdraw the following items from your bank:
>>|T134442:0|t[Super Snapper FX] 
.target Gimblethorn
step
.isQuestTurnedIn 1118
.goto Tanaris,52.297,28.915
.itemcount 5807,1 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 5807 >> Deposit the following items into your bank:
>>|T133471:0|t[Fool's Stout Report] 
.target Gimblethorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,51.006,29.345
.fly Theramore >> Fly to Theramore
.target Bera Stonehammer
.isOnQuest 4450,625
step
.group
.isOnQuest 625 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Janene|r
.goto Dustwallow Marsh,66.587,45.223
.home >> Set your Hearthstone to Theramore
.target Innkeeper Janene
step
#completewith next
.goto Dustwallow Marsh,55.26,50.54,45 >> Swim to the hill west
step
.goto Dustwallow Marsh,54.079,55.897
>>Open the |cRXP_PICK_Damaged Crate|r. Loot it for the |cRXP_LOOT_Overdue Package|r
.complete 4450,3 
step
.dungeon ZF
.isQuestComplete 2846
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
.turnin 2846 >> Turn in Tiara of the Deep
.target Tabetha
step
.group
.goto Dustwallow Marsh,31.098,66.145
>>Click the |cRXP_PICK_Musty Scroll|r on the rock
.turnin 625 >> Turn in Cortello's Riddle
.accept 626 >> Accept Cortello's Riddle
.isQuestTurnedIn 624
step << skip
.group
.isOnQuest 626
#completewith next
.goto Dustwallow Marsh,30.970,65.965,-1
.goto 1414,53.26,71.18,-1
+|cRXP_WARN_Logout skip on the Mushroom to teleport to the RFD entrance, then zone into RFD|r
.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Click here to Copy + Paste this macro once you're inside RFD to ghetto Hearth to Theramore Isle|r
.link https://youtu.be/WClMOzjgOgc >> |cRXP_WARN_Click here for video reference|r
>>If you are unable to do this, run back to Theramore Isle
step
.goto Dustwallow Marsh,67.476,51.300
.subzone 513 >> Travel to Theramore Isle
.isOnQuest 4450,626
step
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >> Take the boat to Menethil Harbor
.zoneskip The Hinterlands
step
#completewith next
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Hinterlands >> Fly to Hinterlands
.target Shellei Brondir
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.accept 2877 >> Accept Skulk Rock Clean-up
.target Fraggar Thundermantle
step
.goto The Hinterlands,13.81,42.67,20,0
.goto The Hinterlands,14.33,41.18,20,0
.goto The Hinterlands,13.644,41.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Thulfram|r
>>|cRXP_FRIENDLY_Innkeeper Thulfram|r |cRXP_WARN_patrols upstairs|r
.home Aerie Peak >> Set Hearthstone to Aerie Peak
.target Innkeeper Thulfram
step
.goto The Hinterlands,14.154,43.623
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agnar Beastamer|r
>>|cRXP_FRIENDLY_Agnar Beastamer|r |cRXP_WARN_is downstairs in the Keep|r
.turnin 3843 >> Turn in The Newest Member of the Family
.accept 4297 >> Accept Food for Baby
.isQuestTurnedIn 3842
.target Agnar Beastamer
step
#completewith next
.goto The Hinterlands,46.56,40.60
.subzone 1884 >> Travel to Agol'watha
step
.goto The Hinterlands,46.56,40.60,60,0
.goto The Hinterlands,46.24,39.85,60,0
.goto The Hinterlands,57.65,42.83
>>Kill |cRXP_ENEMY_Green Sludges|r and |cRXP_ENEMY_Jade Oozes|r
.complete 2877,1 
.mob +Green Sludge
.complete 2877,2 
.mob +Jade Ooze
step
.isOnQuest 4297
.goto The Hinterlands,58.8,49.0,80,0
.goto The Hinterlands,71.6,53.0,80,0
.goto The Hinterlands,69.6,62.4,80,0
.goto The Hinterlands,59.6,51.6,80,0
.goto The Hinterlands,69.8,56.2
>>Kill |cRXP_ENEMY_Silvermane Stalkers|r. Loot them for their |cRXP_LOOT_Flanks|r
>>|cRXP_WARN_The |cRXP_ENEMY_Silvermane Stalkers|r are in|r |T132320:0|t[Stealth]
.complete 4297,1 
.mob Silvermane Stalker
step
.goto The Hinterlands,45.61,68.92,75,0
.goto The Hinterlands,44.08,65.22,75,0
.goto The Hinterlands,48.08,62.18,75,0
.goto The Hinterlands,50.40,63.79,75,0
.goto The Hinterlands,47.20,65.95
>>Kill |cRXP_ENEMY_Vilebranch Trolls|r. Loot them for the |T132836:0|t[|cRXP_LOOT_OOX-09/HL Distress Beacon|r]
.use 8704 >>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-09/HL Distress Beacon|r] to start the quest|r
>>|cRXP_WARN_If you are unlucky and don't find it after some time, skip this step. However, it is recommended you farm until you find it|r
.collect 8704,1,485,1 
.accept 485 >> Accept Find OOX-09/HL!
.mob Vilebranch Axe Thrower
.mob Vilebranch Scalper
.mob Vilebranch Soothsayer
.mob Vilebranch Wolf Pup
step
.isOnQuest 485
.goto The Hinterlands,49.352,37.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
>>|cRXP_WARN_Do NOT accept the follow up and attempt to do the Escort, unless you are in a group|r
.turnin 485 >> Turn in Find OOX-09/HL!
.target Homing Robot OOX-09/HL
step
.isQuestTurnedIn 485
.group 2
.goto The Hinterlands,49.352,37.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
.accept 836,1 >> Accept Rescue OOX-09/HL!
.target Homing Robot OOX-09/HL
step
.isOnQuest 836
.group 2
.goto The Hinterlands,72.46,66.16,40,0
.goto The Hinterlands,76.22,61.81,45,0
.goto The Hinterlands,79.33,61.26
>>Escort the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r to safety
.complete 836,1 
.target Homing Robot OOX-22/FE
step
#completewith next
>>Loot the |cRXP_LOOT_Pupellyverbos Ports|r on the ground
.complete 580,1 
step
.line The Hinterlands,81.95,49.41,81.21,52.91,81.98,54.30,81.97,56.42,80.77,58.37,80.34,59.40,79.45,60.76,78.69,61.39,76.86,62.73,75.91,63.81,75.29,65.60,76.72,66.85,78.53,67.51,78.60,68.97,77.90,70.97,76.71,71.26,76.52,72.95,77.07,74.64
.goto The Hinterlands,81.95,49.41,70,0
.goto The Hinterlands,81.21,52.91,70,0
.goto The Hinterlands,81.98,54.30,70,0
.goto The Hinterlands,81.97,56.42,70,0
.goto The Hinterlands,80.77,58.37,70,0
.goto The Hinterlands,80.34,59.40,70,0
.goto The Hinterlands,79.45,60.76,70,0
.goto The Hinterlands,78.69,61.39,70,0
.goto The Hinterlands,76.86,62.73,70,0
.goto The Hinterlands,75.91,63.81,70,0
.goto The Hinterlands,75.29,65.60,70,0
.goto The Hinterlands,76.72,66.85,70,0
.goto The Hinterlands,78.53,67.51,70,0
.goto The Hinterlands,78.60,68.97,70,0
.goto The Hinterlands,77.90,70.97,70,0
.goto The Hinterlands,76.71,71.26,70,0
.goto The Hinterlands,76.52,72.95,70,0
.goto The Hinterlands,77.07,74.64,70,0
.goto The Hinterlands,81.21,52.91,70,0
.goto The Hinterlands,75.91,63.81
.use 9328 >> |cRXP_WARN_Use the|r |T134442:0|t[Super Snapper FX] |cRXP_WARN_on|r |cRXP_ENEMY_Gammerita|r
>>|cRXP_WARN_This will cause |cRXP_ENEMY_Gammerita|r to agro you. Be ready to run away after using it|r
.complete 2944,1 
.unitscan Gammerita
step
.goto The Hinterlands,81.7,49.3,70,0
.goto The Hinterlands,79.3,60.5,70,0
.goto The Hinterlands,77.5,70.3,70,0
.goto The Hinterlands,75.7,64.5,70,0
.goto The Hinterlands,81.9,52.9,70,0
.goto The Hinterlands,77.9,65.5
>>Loot the |cRXP_LOOT_Pupellyverbos Ports|r on the ground
.complete 580,1 
step
.group
.goto The Hinterlands,80.78,46.82
>>Click on |cRXP_PICK_Cortello's Treasure|r underwater
.turnin 626 >> Turn in Cortello's Riddle
.isOnQuest 626
step
#completewith SkullRock
.goto The Hinterlands,47.20,65.95
.hs >> Hearth to Aerie Peak
>>Grind until your Hearthstone is off cooldown
.cooldown item,6948,<0
step
#completewith SkullRock
.hs >> Hearth to Aerie Peak
.cooldown item,6948,>0,1
step
.goto The Hinterlands,14.154,43.623
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agnar Beastamer|r
>>|cRXP_FRIENDLY_Agnar Beastamer|r |cRXP_WARN_is downstairs in the Keep|r
.turnin 4297 >> Turn in Food for Baby
.accept 4298 >> Accept Becoming a Parent
.turnin 4298 >> Turn in Becoming a Parent
.isQuestTurnedIn 3842
.target Agnar Beastamer
step
#label SkullRock
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.target Fraggar Thundermantle
.turnin 2877 >> Turn in Skulk Rock Clean-up
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fly Wetlands >> Fly to Wetlands
.target Guthrum Thunderfist
.zoneskip The Hinterlands,1
step 
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
.home >> Set your Hearthstone to Wetlands
.target Innkeeper Helbrek
step
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankdeposit 3900,9328,9330,11724 >> Deposit the following items into your bank:
>>|T132796:0|t[Pupellyverbos Port] 
>>|T134442:0|t[Super Snapper FX] 
>>|T134300:0|t[Snapshot of Gammerita] 
>>|T132766:0|t[Overdue Package] 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankwithdraw 10443 >> Withdraw the following items into your bank:
>>|T133471:0|t[Singed Letter] (If you have it) 
.target Bailey Stonemantle
step
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
>>|cRXP_FRIENDLY_Curator Thorius|r |cRXP_WARN_patrols through the Hall of Explorers|r
.turnin 3368 >> Turn in Suntara Stones
.accept 3371 >> Accept Dwarven Justice
.target Curator Thorius
step
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Searing Gorge >> Fly to Searing Gorge
.target Gryth Thurden
.zoneskip Searing Gorge
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 49-50 Searing Gorge
#next 50-51 Tanaris/Un'goro
step
.group
.goto Searing Gorge,38.804,28.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
.accept 7722 >> Accept What the Flux?
.target Master Smith Burninate
step
.goto Searing Gorge,38.582,27.807
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
.accept 7723 >> Accept Curse These Fat Fingers
.accept 7724 >> Accept Fiery Menace!
.accept 7727 >> Accept Incendosaurs? Whateverosaur is More Like It
.target Hansel Heavyhands
step
.solo
.goto Searing Gorge,37.645,26.481
>>Click the |cRXP_PICK_Wanted Board|r
.accept 7728 >> Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 >> Accept JOB OPPORTUNITY: Culling the Competition
step
.group
.goto Searing Gorge,37.645,26.481
>>Click the |cRXP_PICK_Wanted Board|r
.accept 7728 >> Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 >> Accept JOB OPPORTUNITY: Culling the Competition
.accept 7701 >> Accept WANTED: Overseer Maltorius
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3441 >> Accept Divine Retribution
.target Velarok Windblade
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.skipgossip
.complete 3441,1 
.target Velarok Windblade
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3441 >> Turn in Divine Retribution
.accept 3442 >> Accept The Flawless Flame
.target Velarok Windblade
step
#completewith FlawlessFlame
>>Kill |cRXP_ENEMY_Heavy War Golems|r and |cRXP_ENEMY_Greater Lava Spiders|r
.complete 7723,1 
.mob +Heavy War Golem
.goto Searing Gorge,33.20,43.58,0
.complete 7724,1 
.goto Searing Gorge,27.56,45.45,0
.mob +Greater Lava Spider
step
#completewith FlawlessFlame
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.mob +Dark Iron Steamsmith
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.mob +Dark Iron Lookout
step
#label FlawlessFlame
.goto Searing Gorge,43.83,35.08,0
.goto Searing Gorge,24.18,54.52,0
.goto Searing Gorge,28.54,64.55,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,30.10,76.16,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,30.10,76.16
>>Kill |cRXP_ENEMY_Inferno Elementals|r, |cRXP_ENEMY_Blazing Elementals|r and |cRXP_ENEMY_Magma Elementals|r. Loot them for their |cRXP_LOOT_Heart of Flames|r
>>Kill |cRXP_ENEMY_Heavy War Golems|r and |cRXP_ENEMY_Magma Elementals|r. Loot them for their |cRXP_LOOT_Golem Oils|r
>>|cRXP_WARN_Prioritize these two objectives|r
.complete 3442,1 
.mob +Inferno Elemental
.mob +Blazing Elemental
.mob +Magma Elemental
.complete 3442,2 
.mob +Magma Elemental
.mob +Heavy War Golem
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3442 >> Turn in The Flawless Flame
.accept 3443 >> Accept Forging the Shaft
.target Velarok Windblade
step
#completewith next
.goto Searing Gorge,47.54,46.89
.subzone 1443 >> Jump down to the platform below and enter the cave. Follow the arrow
step
.goto Searing Gorge,46.66,42.48,40,0
.goto Searing Gorge,51.67,37.02,40,0
.goto Searing Gorge,45.41,21.65
>>Kill |cRXP_ENEMY_Incendosaurs|r
.complete 7727,1 
.mob Incendosaur
step
.goto Searing Gorge,48.41,41.08,40,0
.goto Searing Gorge,47.94,47.58,40,0
.goto Searing Gorge,49.86,45.97,40,0
.goto Searing Gorge,49.75,45.82,35 >> Run back out of the cave, then follow the platform to the upper entrance of the cave
.isOnQuest 7729,3443,7722,7701
step
.group 4
.isOnQuest 7722,7701
#completewith next
>>Kill |cRXP_ENEMY_Overseer Maltorius|r. Loot him for his |cRXP_LOOT_Head|r
>>Loot the |cRXP_LOOT_Secret Plans: Fiery Flux|r on the bench
.complete 7701,1 
.goto Searing Gorge,40.81,35.77
.complete 7722,1 
.goto Searing Gorge,40.447,35.739
.mob Overseer Maltorius
step
.goto Searing Gorge,43.18,35.09,60,0
.goto Searing Gorge,43.54,31.51,60,0
.goto Searing Gorge,45.81,25.66,60,0
.goto Searing Gorge,43.18,35.09
>>Kill |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |cRXP_LOOT_Thorium Plated Daggers|r and the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Any |cRXP_ENEMY_Dark Iron Dwarf|r may drop |cRXP_LOOT_Thorium Plated Daggers|r and the|r |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Use the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r] to start the quest|r
.complete 7729,1 
.mob +Dark Iron Taskmaster
.complete 7729,2 
.mob +Dark Iron Slaver
.complete 3443,1 
.mob +Dark Iron Taskmaster
.mob +Dark Iron Slaver
.collect 11818,1,4451 
.disablecheckbox
.accept 4451 >> Accept The Key to Freedom
.use 11818 
step
.group 4
.isOnQuest 7722,7701
>>Kill |cRXP_ENEMY_Overseer Maltorius|r. Loot him for his |cRXP_LOOT_Head|r
>>Loot the |cRXP_LOOT_Secret Plans: Fiery Flux|r on the bench
.complete 7701,1 
.goto Searing Gorge,40.81,35.77
.complete 7722,1 
.goto Searing Gorge,40.447,35.739
.mob Overseer Maltorius
step
.solo
.goto Searing Gorge,41.163,25.537
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dying Archaeologist|r
.turnin 3371 >> Turn in Dwarven Justice
.target Dying Archaeologist
step
.group
.goto Searing Gorge,41.163,25.537
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dying Archaeologist|r
.turnin 3371 >> Turn in Dwarven Justice
.accept 3372 >> Accept Release Them
.target Dying Archaeologist
step << skip
#completewith next
+Logout skip out of the cave. There are MANY different spots you can use
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> |cRXP_WARN_Click here for video reference|r
step
#completewith next
.goto Searing Gorge,49.80,45.72,20 >> Exit the cave and head back to |cRXP_FRIENDLY_Velarok Windblade|r
step
.solo
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3443 >> Turn in Forging the Shaft
.target Velarok Windblade
step
.group
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3443 >> Turn in Forging the Shaft
.accept 3452 >> Accept The Flame's Casing
.target Velarok Windblade
step
.group 3
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>>Kill |cRXP_ENEMY_Twilight Dark Shamans|r, |cRXP_ENEMY_Twilight Fire Guards|r, |cRXP_ENEMY_Twilight Geomancers|r and |cRXP_ENEMY_Twilight Idolaters|r. Loot them for the |cRXP_LOOT_Symbol of Ragnaros|r
>>|cRXP_WARN_Skip this step for now if you are unable to complete it|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.group
.isQuestComplete 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3452 >> Turn in The Flame's Casing
.accept 3453 >> Accept The Torch of Retribution
.timer 28,The Torch of Retribution RP
.turnin 3453 >> Turn in The Torch of Retribution
.accept 3454 >> Accept The Torch of Retribution
.target Velarok Windblade
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3453 >> Accept The Torch of Retribution
.timer 28,The Torch of Retribution RP
.turnin 3453 >> Turn in The Torch of Retribution
.accept 3454 >> Accept The Torch of Retribution
.target Velarok Windblade
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,39.055,39.067
>>Click on the |cRXP_PICK_Torch of Retribution|r
.turnin 3454 >> Turn in The Torch of Retribution
step
.group
.isQuestTurnedIn 3452
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r and |cRXP_FRIENDLY_Squire Maltrake|r
.accept 3462 >> Accept Squire Maltrake
.target +Velarok Windblade
.goto Searing Gorge,39.057,38.990
.turnin 3462 >> Turn in Squire Maltrake
.accept 3463 >> Accept Set Them Ablaze!
.goto Searing Gorge,39.165,38.997
.target +Squire Maltrake
step
#completewith WarGolem
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.mob +Dark Iron Steamsmith
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.mob +Dark Iron Lookout
step
#completewith next
>>Kill |cRXP_ENEMY_Heavy War Golems|r
.complete 7723,1 
.goto Searing Gorge,33.20,43.58,0
.mob Heavy War Golem
step
>>Kill |cRXP_ENEMY_Greater Lava Spiders|r
.complete 7724,1 
.goto Searing Gorge,32.05,42.00,70,0
.goto Searing Gorge,27.4,45.6,70,0
.goto Searing Gorge,28.4,56.6,70,0
.goto Searing Gorge,30.90,66.71,70,0
.goto Searing Gorge,22.86,76.47,70,0
.goto Searing Gorge,27.56,45.45
.mob Greater Lava Spider
step
#label WarGolem
>>Kill |cRXP_ENEMY_Heavy War Golems|r
.complete 7723,1 
.goto Searing Gorge,50.6,39.6,70,0
.goto Searing Gorge,41.6,41.6,70,0
.goto Searing Gorge,32.8,45.8,70,0
.goto Searing Gorge,32.4,53.6,70,0
.goto Searing Gorge,35.6,40.4,70,0
.goto Searing Gorge,41.6,41.6,70,0
.goto Searing Gorge,33.20,43.58
.mob Heavy War Golem
step
.solo
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.mob +Dark Iron Steamsmith
.goto Searing Gorge,39.15,50.18,40,0
.goto Searing Gorge,43.33,51.12,40,0
.goto Searing Gorge,40.42,49.93
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,33.303,54.477,50,0
.goto Searing Gorge,35.667,60.682,50,0
.goto Searing Gorge,44.030,60.908,50,0
.goto Searing Gorge,50.069,54.737
.mob +Dark Iron Lookout
step
.group
#completewith next
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.mob +Dark Iron Steamsmith
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,50.06,54.73,0
.mob +Dark Iron Lookout
step
.group
.isQuestTurnedIn 3452
>>Click the |cRXP_PICK_Sentry Braziers|r atop the Towers
>>|cRXP_WARN_You must have the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_equiped|r
.use 10515 
.complete 3463,4 
.goto Searing Gorge,33.303,54.477
.complete 3463,1 
.goto Searing Gorge,35.667,60.682
.complete 3463,2 
.goto Searing Gorge,44.030,60.908
.complete 3463,3 
.goto Searing Gorge,50.069,54.737
step
.goto Searing Gorge,54.553,50.414
>>Click |cRXP_PICK_The Charred Oak|r. Loot it for the |cRXP_LOOT_Bundle of Charred Oak|r
.complete 53,1 
.isQuestTurnedIn 50
step
#optional
.goto Searing Gorge,65.592,62.172
>>Click on the |cRXP_PICK_Wooden Outhouse|r
.accept 4451 >> Accept The Key to Freedom
.turnin 4451 >> Turn in The Key to Freedom
.use 11818 
.itemcount 11818,1 
step
.group 2
.goto Searing Gorge,71.92,73.79,50,0
.goto Searing Gorge,72.64,79.74
>>Kill |cRXP_ENEMY_Margol the Rager|r. Loot it for |T134229:0|t[|cRXP_LOOT_Margol's Horn|r]
.use 10000 >>|cRXP_WARN_Use |T134229:0|t[|cRXP_LOOT_Margol's Horn|r] to start the quest|r
.collect 10000,1,3181,1 
.accept 3181 >> Accept The Horn of the Beast
.mob Margol the Rager
step
>>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
>>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
.complete 7728,1 
.mob +Dark Iron Steamsmith
.goto Searing Gorge,39.15,50.18,40,0
.goto Searing Gorge,43.33,51.12,40,0
.goto Searing Gorge,40.42,49.93
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,33.303,54.477,50,0
.goto Searing Gorge,35.667,60.682,50,0
.goto Searing Gorge,44.030,60.908,50,0
.goto Searing Gorge,50.069,54.737
.mob +Dark Iron Lookout
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,39.165,38.997
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Maltrake|r
.turnin 3463 >> Turn in Set Them Ablaze!
.target Squire Maltrake
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,38.847,38.985
>>Click the |cRXP_PICK_Hoard of the Black Dragonflight|r on the ground
.accept 3481 >> Accept Trinkets...
.turnin 3481 >> Turn in Trinkets...
step
.group
.isQuestTurnedIn 3452
#completewith TPturnins
.use 10569 >>|cRXP_WARN_Open the|r |T132595:0|t[Hoard of the Black Dragonflight]
+|cRXP_WARN_Ensure you keep the|r |T134430:0|t[Black Dragonflight Molt]|cRXP_WARN_. Do not destroy it. You will need it later|r
step
.isQuestComplete 7701
.goto Searing Gorge,37.737,26.561
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lookout Captain Lolo Longstriker|r
.turnin 7701 >>Turn in WANTED: Overseer Maltorius
.target Lookout Captain Lolo Longstriker
step
.goto Searing Gorge,38.582,27.807
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
.turnin 7723 >> Turn in Curse These Fat Fingers
.turnin 7724 >> Turn in Fiery Menace!
.turnin 7727 >> Turn in Incendosaurs? Whateverosaur is More Like It
.target Hansel Heavyhands
step
.isQuestComplete 7722
.goto Searing Gorge,38.804,28.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
.turnin 7722 >> Turn in What the Flux?
.target Master Smith Burninate
step
#label TPturnins
.goto Searing Gorge,38.973,27.505
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r
.turnin 7729 >> Turn in JOB OPPORTUNITY: Culling the Competition
.turnin 7728 >> Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass
.target Taskmaster Scrange
step
.isOnQuest 3181
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fly Loch Modan>> Fly to Loch Modan
.target Lanie Reed
step
.abandon 7701 >> Abandon WANTED: Overseer Maltorius
.abandon 7722 >> Abandon What the Flux?
.abandon 3452 >> Abandon The Flame's Casing
step
.isOnQuest 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.turnin 3181 >> Turn in The Horn of the Beast
.target Mountaineer Pebblebitty
step
.isQuestTurnedIn 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.accept 3182 >> Accept Proof of Deed
.target Mountaineer Pebblebitty
step << !Mage
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
.fly Ironforge >> Fly to Ironforge
.zoneskip Loch Modan,1
.target Thorgrum Borrelson
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step << Mage
#completewith SWH
.goto Ironforge,31.33,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r
.vendor >> |cRXP_BUY_Buy 10|r |T134419:0|t[Rune of Teleportations] |cRXP_BUY_from her|r
.collect 17031,10 
.target Ginny Longberry
step << !Mage
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fly Ironforge >> Fly to Ironforge
.zoneskip Searing Gorge,1
.target Lanie Reed
step << !Druid !Hunter !Warrior !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step
.isQuestTurnedIn 3181
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
>>|cRXP_FRIENDLY_Curator Thorius|r |cRXP_WARN_patrols through the Hall of Explorers|r
.turnin 3182 >> Turn in Proof of Deed
.accept 3201 >> Accept At Last!
.target Curator Thorius
step
.isQuestTurnedIn 2963
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r
.accept 2946 >> Accept Seeing What Happens
.target Historian Karnik
step
.isOnQuest 3201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >> Fly Loch Modan
.zoneskip Ironforge,1
.target Gryth Thurden
step
.isOnQuest 3201
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.turnin 3201 >> Turn in At Last!
.target Mountaineer Pebblebitty
step
.isOnQuest 53
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum|r
.fly Westfall >> Fly to Westfall
.zoneskip Loch Modan,1
.target Thorgrum Borrelson
step
.isOnQuest 53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.501,47.742
.fly Westfall >> Fly to Westfall
.zoneskip Ironforge,1
.target Gryth Thurden
step
.goto Westfall,44.620,80.254
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
.turnin 53 >> Turn in Sweet Amber
.isOnQuest 53
.target Grimbooze Thunderbrew
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step
.group
.isQuestTurnedIn 3463
.destroy 10515 >> Destroy the |T135466:0|t[Torch of Retribution]. You no longer need it
step
#label SWH
#completewith next
.hs >> Hearth to Menethil Harbor
step
#completewith next
.goto Wetlands,7.270,62.527,25 >> Travel to the Menethil Harbor Dock
step
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >> Take the boat to Theramore
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.300
.fly Tanaris >> Fly to Tanaris
.target Baldruc
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 50-51 Tanaris/Un'goro
#next 51-52 Blasted Lands
step
#optional
.isQuestComplete 4450
.goto Tanaris,51.465,28.814
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 4450 >> Turn in Ledger from Tanaris
.target Krinkle Goodsteel
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.accept 2605 >> Accept The Thirsty Goblin
.target Marin Noggenfogger
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 11727,11725,11724,11723,8623 >> Withdraw the following items from your bank:
>>|T133741:0|t[Goodsteel Ledger] 
>>|T134321:0|t[Solid Crystal Leg Shaft] 
>>|T132766:0|t[Overdue Package] 
>>|T135272:0|t[Goodsteel's Balanced Flameberge] 
>>|T132836:0|t[OOX-17/TN Distress Beacon] (If you have it) 
.target Gimblethorn
step
.isQuestTurnedIn 3481
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 10575 >> Deposit the following items into your bank:
>>|T134430:0|t[Black Dragonflight Molt] (If you have it) 
.target Gimblethorn
step
.goto Tanaris,51.465,28.814
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 4450 >> Turn in Ledger from Tanaris
.target Krinkle Goodsteel
step
.goto Tanaris,52.51,27.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r
.home >> Set your Hearthstone to Gadgetzan
.target Innkeeper Fizzgrimble
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 3362 >> Accept Thistleshrub Valley
.target Tran'rek
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 10 >> Accept The Scrimshank Redemption
.target Senior Surveyor Fizzledowser
step
#completewith next
.goto Tanaris,54.63,70.75,20 >> Enter The Gaping Chasm Hive
step
.goto Tanaris,55.956,71.164
>>Loot the |cRXP_LOOT_Scrimshank's Surveying Gear|r on the ground
>>|cRXP_WARN_The |cRXP_LOOT_Scrimshank's Surveying Gear|r is inside of the Hive|r
.complete 10,1 
step
.goto Tanaris,60.235,64.714
.use 8623 >>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r] to start the quest|r
>>|cRXP_WARN_Skip this step if you do not have it|r
.collect 8623,1,351,1 
.accept 351 >> Accept Find OOX-17/TN
.itemcount 8623,1
step
.goto Tanaris,60.235,64.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
>>|cRXP_WARN_Do NOT accept the follow up and attempt to do the Escort, unless you are in a group|r
.turnin 351 >> Turn in Find OOX-17/TN!
.isOnQuest 351
.target Homing Robot OOX-17/TN
step
.group 2
.isQuestTurnedIn 351
.goto Tanaris,60.235,64.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
.accept 648,1 >> Accept Rescue OOX-17/TN!
.target Homing Robot OOX-17/TN
step
.group 2
.isOnQuest 648
.goto Tanaris,66.99,23.14
>>Escort the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r to safety
.complete 648,1 
.target Homing Robot OOX-17/TN
step
#completewith next
.isOnQuest 2946 
.goto Tanaris,39.231,80.091,20,0
.goto Tanaris,37.632,81.398,10 >> Take the mountain path to avoid Elite |cRXP_ENEMY_Dune Smashers|r
step
.goto Tanaris,37.632,81.398
.isOnQuest 2946
>>Click the |cRXP_PICK_Uldum Pedestal|r
>>|cRXP_WARN_There is ONE Elite |cRXP_ENEMY_Dune Smasher|r which patrols. Ensure you avoid it. The rest are stationary|r
.turnin 2946 >> Turn in Seeing What Happens
step
.isQuestTurnedIn 2946
.goto Tanaris,37.632,81.398
>>Click the |cRXP_PICK_Uldum Pedestal|r
.accept 2954 >> Accept The Stone Watcher
step
.isQuestTurnedIn 2946
.goto Tanaris,37.632,81.398
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Stone Watcher of Norgannon|r
>>|cRXP_WARN_There is ONE Elite |cRXP_ENEMY_Dune Smasher|r which patrols. Ensure you avoid it|r
.skipgossip 1
.target Stone Watcher of Norgannon
step
.isQuestTurnedIn 2946
.goto Tanaris,37.632,81.398
>>Click the |cRXP_PICK_Uldum Pedestal|r
.turnin 2954 >> Turn in The Stone Watcher
.accept 2977 >> Accept Return to Ironforge
step
.isOnQuest 2605
.isOnQuest 3362
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>>Kill |cRXP_ENEMY_Gnarled Thistleshrubs|r and |cRXP_ENEMY_Thistleshrub Rootshapers|r
>>Kill |cRXP_ENEMY_Thistleshrub Dew Collectors|r. Loot them for the |cRXP_LOOT_Laden Dew Gland|r
>>|cRXP_WARN_Prioritize killing |cRXP_ENEMY_Thistleshrub Dew Collectors|r as the |cRXP_LOOT_Laden Dew Gland|r has a low drop chance|r
.complete 3362,1 
.mob +Gnarled Thistleshrub
.complete 3362,2 
.mob +Thistleshrub Rootshaper
.complete 2605,1 
.mob +Thistleshrub Dew Collector
step
.isOnQuest 2605
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>>Kill |cRXP_ENEMY_Thistleshrub Dew Collectors|r. Loot them for the |cRXP_LOOT_Laden Dew Gland|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
.isOnQuest 3362
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>>Kill |cRXP_ENEMY_Gnarled Thistleshrubs|r and |cRXP_ENEMY_Thistleshrub Rootshapers|r
.complete 3362,1 
.mob +Gnarled Thistleshrub
.complete 3362,2 
.mob +Thistleshrub Rootshaper

step
.goto Tanaris,29.37,59.97,80,0
.goto Tanaris,28.70,67.32,80,0
.goto Tanaris,31.66,74.70
.goto Tanaris,29.37,59.97,0
.goto Tanaris,28.70,67.32,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tooga|r
>>|cRXP_WARN_This will start an escort quest|r
>>|cRXP_WARN_If you can't see |cRXP_FRIENDLY_Tooga|r anywhere you may skip this step|r
.accept 1560 >> Accept Tooga's Quest
.unitscan Tooga
step
.isOnQuest 1560
.goto Tanaris,66.571,25.632
>>Escort Tooga across Tanaris to Steamwheedle Port
>>|cRXP_WARN_Do not run too far ahead of |cRXP_FRIENDLY_Tooga|r otherwise the quest may fail!|r
.complete 1560,1 
.target Tooga
step
.isQuestComplete 1560
.goto Tanaris,66.571,25.632
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torta|r
.turnin 1560 >> Turn in Tooga's Quest
.target Torta
step
#completewith next
.goto Tanaris,26.98,56.09,0
.goto Tanaris,26.98,56.09,125,0
.goto Un'Goro Crater,71.63,75.95
.zone 1449 >> Travel to Un'goro Crater
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4290 >> Accept The Fare of Lar'korwi
.target Torwa Pathfinder
step
#completewith CompleteCrystals
>>Loot |cRXP_LOOT_Power Crystals|r on the ground as you quest through Un'Goro Crater
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
step
#completewith Soils
>>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground as you quest through Un'Goro Crater
.collect 11018,25 
step
.goto Un'Goro Crater,63.02,68.60
>>Click on the |cRXP_PICK_Wrecked Raft|r
.accept 3844 >> Accept It's a Secret to Everybody
step
.goto Un'Goro Crater,63.107,69.057
>>Click the |cRXP_PICK_Small Pack|r underwater
.turnin 3844 >> Turn in It's a Secret to Everybody
.accept 3845 >> Accept It's a Secret to Everybody
step
#label CompleteCrystals
.goto Un'Goro Crater,68.73,56.70
>>Loot the |cRXP_LOOT_Piece of Threshadon Carcass|r
.complete 4290,1 
step
.goto Un'Goro Crater,45.41,12.13
>>Travel to Marshal's Refuge
>>Loot |cRXP_LOOT_Power Crystals|r on the ground en-route
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
step
#completewith next
.goto Un'Goro Crater,45.41,12.13
.subzone 541 >> Travel to Marshal's Refuge
step
.goto Un'Goro Crater,42.942,9.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muigin|r
.accept 4141 >> Accept Muigin and Larion
.target Muigin
step
.goto Un'Goro Crater,44.658,8.098
.use 11107 >> |cRXP_WARN_Open the|r |T133653:0|t[Small Pack]
.complete 3845,1 
.complete 3845,2 
.complete 3845,3 
.isOnQuest 3845
step
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3845 >> Turn in It's a Secret to Everybody
.accept 3908 >> Accept It's a Secret to Everybody
.target Linken
step
.destroy 11108 >> Destroy the |T134944:0|t[Faded Photograph]
.destroy 3108 >> Destroy the |T135427:0|t[Heavy Throwing Daggers] << !Rogue
>>|cRXP_WARN_You no longer need these|r
step
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4284 >> Accept Crystals of Power
.turnin 4284 >> Turn in Crystals of Power
.target J.D. Collie
step
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fp Un'Goro >> Get the Un'Goro Crater Flight Path
.target Gryfe
step
#completewith lashers
.goto Un'Goro Crater,67.6,32.6,0
>>Kill |cRXP_ENEMY_Bloodpetal Lashers|r, |cRXP_ENEMY_Bloodpetal Threshers|r and |cRXP_ENEMY_Bloodpetal Flayers|r. Loot them for their |cRXP_LOOT_Bloodpetals|r
.complete 4141,1 
.mob Bloodpetal Lasher
.mob Bloodpetal Thresher
.mob Bloodpetal Flayer
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4290 >> Turn in The Fare of Lar'korwi
.accept 4291 >> Accept The Scent of Lar'korwi
.target Torwa Pathfinder
step
.goto Un'Goro Crater,67.324,73.041,8,0
.goto Un'Goro Crater,66.601,66.727,8,0
.goto Un'Goro Crater,60.926,72.234,8,0
.goto Un'Goro Crater,62.285,65.985,8,0
.goto Un'Goro Crater,63.240,77.350,8,0
.goto Un'Goro Crater,67.324,73.041,8,0
.goto Un'Goro Crater,66.601,66.727
.goto Un'Goro Crater,67.324,73.041,0
.goto Un'Goro Crater,60.926,72.234,0
.goto Un'Goro Crater,62.285,65.985,0
.goto Un'Goro Crater,63.240,77.350,0
>>Kill |cRXP_ENEMY_Lar'korwi Mates|r. Loot them for their |cRXP_LOOT_Ravasaur Pheromone Glands|r
>>|cRXP_WARN_Walking over |cRXP_PICK_Raptor Nests|r on the ground will trigger a |cRXP_ENEMY_Lar'korwi Mate|r to spawn|r
.complete 4291,1 
.mob Lar'korwi Mate
step
#label lashers
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4291 >> Turn in The Scent of Lar'korwi
.target Torwa Pathfinder
step
.goto Un'Goro Crater,75.6,44.4,80,0
.goto Un'Goro Crater,69.6,22.6,80,0
.goto Un'Goro Crater,57.6,37.6,80,0
.goto Un'Goro Crater,74.6,39.8,80,0
.goto Un'Goro Crater,67.6,32.6,80,0
.goto Un'Goro Crater,75.6,44.4,80,0
.goto Un'Goro Crater,69.6,22.6,80,0
.goto Un'Goro Crater,57.6,37.6,80,0
.goto Un'Goro Crater,74.6,39.8,80,0
.goto Un'Goro Crater,67.6,32.6
>>Kill |cRXP_ENEMY_Bloodpetal Lashers|r, |cRXP_ENEMY_Bloodpetal Threshers|r and |cRXP_ENEMY_Bloodpetal Flayers|r. Loot them for their |cRXP_LOOT_Bloodpetals|r
.complete 4141,1 
.mob Bloodpetal Lasher
.mob Bloodpetal Thresher
.mob Bloodpetal Flayer
step
#label Soils
>>Kill |cRXP_ENEMY_Ravasaurs|r. Loot them for |T133743:0|t[A Mangled Journal]
>>|cRXP_WARN_Any mob in Un'Goro Crater may drop it|r
>>|cRXP_WARN_Use |T133743:0|t[A Mangled Journal] to start the quest|r
.collect 11116,1,3884,1 
.accept 3884 >> Accept Williden's Journal
.use 11116
step
.dungeon Mara
.goto Un'Goro Crater,63.04,66.10
>>Grind |cRXP_ENEMY_Raptors|r until you've found a Maraudon group
>>|cRXP_WARN_Once your group is starting to fill up, Hearth to Gadgetzan to turn in a few quests, then fly to Desolace. You will have to accept a few quests in Desolace before running Maraudon|r
.hs >> Hearth to Gadgetzan
step
#completewith next
.hs >> Hearth to Gadgetzan
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2605 >> Turn in The Thirsty Goblin
.accept 2606 >> Accept In Good Taste
.target Marin Noggenfogger
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 10 >> Turn in The Scrimshank Redemption
.accept 110 >> Accept Insect Part Analysis
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 110 >> Turn in Insect Part Analysis
.accept 113 >> Accept Insect Part Analysis
.target Alchemist Pestlezugg
step
.goto Tanaris,51.059,26.873
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2606 >> Turn in In Good Taste
.accept 2641 >> Accept Sprinkle's Secret Ingredient
.target Sprinkle
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 3362 >> Turn in Thistleshrub Valley
.target Tran'rek
step
.goto Tanaris,50.210,27.483
.target Senior Surveyor Fizzledowser
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 113 >> Turn in Insect Part Analysis
.accept 162 >> Accept Rise of the Silithid
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 2799,5807,3900 >> Withdraw the following items from your bank:
>>|T134298:0|t[Gorilla Fangs] (If you have any) 
>>|T133471:0|t[Fool's Stout Report] 
>>|T132796:0|t[Pupellyverbos Port] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 11018,11133,8594 >> Deposit the following items into your bank:
>>|T133849:0|t[Un'Goro Soil] 
>>|T135357:0|t[Linken's Training Sword] 
>>|T134331:0|t[Insect Analysis Report] 
.target Gimblethorn
step
.dungeon Mara
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Desolace >> Fly to Desolace
.zoneskip Tanaris,1
.target Bera Stonehammer
step
.dungeon Mara
.goto Desolace,64.64,9.25,15,0
.goto Desolace,63.827,10.669
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Marandis|r
.accept 7065 >> Accept Corruption of Earth and Seed
.target Keeper Marandis
step
.dungeon Mara
.goto Desolace,66.275,6.554
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
.home >> Set your Hearthstone to Desolace
.target Innkeeper Lyshaerya
step
.dungeon Mara
.goto Desolace,68.501,8.880
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talendria|r
.accept 7041 >> Accept Vyletongue Corruption
.target Keeper Marandis
step
.dungeon Mara
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
.accept 7028 >> Accept Twisted Evils
.target Willow
step
.dungeon Mara
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
.accept 7067 >> Accept The Pariah's Instructions
.target Centaur Pariah
step
.dungeon Mara
.goto Desolace,29.89,62.44,0
.goto 1414,38.43,57.97
.zone 1414 >> Travel to Maraudon
step
.dungeon Mara
#completewith EnterMaraudon
>>Kill all |cRXP_ENEMY_Monsters|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
>>|cRXP_WARN_This can be completed OUTSIDE and INSIDE of the Instance. Don't attempt to complete this now|r
.complete 7028,1 
.isOnQuest 7028
step
.dungeon Mara
>>Kill |cRXP_ENEMY_The Nameless Prophet|r. Loot it for the |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance. |cRXP_ENEMY_The Nameless Prophets|r may be patrolling|r
.collect 17757,1,7067,1 
.mob The Nameless Prophet
.isOnQuest 7067
step << skip 
.dungeon Mara
#completewith next
>>Kill |cRXP_ENEMY_Shadowshard Smashers|r and |cRXP_ENEMY_Shadowshard Rumblers|r. Loot them for their |cRXP_LOOT_Shadowshard Fragments|r
>>|cRXP_WARN_These are only found in the Purple section outside of the Instance|r
.complete 7070,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7070
step
.dungeon Mara
.goto 1414,38.469,57.287,20,0
.goto 1414,38.380,57.376,30,0
.goto 1414,38.469,57.287
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Gelk|r
>>Kill |cRXP_ENEMY_Gelk|r. Loot him for the |T134104:0|t[|cRXP_LOOT_Gem of the Second Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17762,1,7067,1 
.use 17757 
.mob Spirit of Gelk
.mob Gelk
.isOnQuest 7067
step << skip 
.dungeon Mara
.goto 1414,38.13,56.90,60,0
.goto 1414,28.76,56.96,60,0
.goto 1414,38.13,56.90
>>Kill |cRXP_ENEMY_Shadowshard Smashers|r and |cRXP_ENEMY_Shadowshard Rumblers|r. Loot them for their |cRXP_LOOT_Shadowshard Fragments|r
>>|cRXP_WARN_These are only found in the Purple section outside of the Instance|r
.complete 7070,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7070
step
.dungeon Mara
.goto 1414,38.497,57.721
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Kolk|r
>>Kill |cRXP_ENEMY_Kolk|r. Loot him for the |T134129:0|t[|cRXP_LOOT_Gem of the First Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17761,1,7067,1 
.use 17757 
.mob Spirit of Kolk
.mob Kolk
.isOnQuest 7067
step
.dungeon Mara
.goto 1414,38.77,58.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
.accept 7044 >> Accept Legends of Maraudon
.target Cavindra
step
.dungeon Mara
.goto 1414,38.928,58.354
>>|cRXP_WARN_Use the|r |T134865:0|t[Coated Cerulean Vial] |cRXP_WARN_in the Orange pool|r
.complete 7041,2 
.use 17693 
.isOnQuest 7041
step
.dungeon Mara
.goto 1414,39.00,58.32,70,0
.goto 1414,39.13,57.68,60,0
.goto 1414,39.25,57.71,20,0
.goto 1414,39.13,57.68
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Magra|r
>>Kill |cRXP_ENEMY_Magra|r. Loot him for the |T134135:0|t[|cRXP_LOOT_Gem of the Third Khan|r]
>>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
.collect 17763,1,7067,1 
.use 17757 
.mob Spirit of Magra
.mob Magra
.isOnQuest 7067
step
.dungeon Mara
#label EnterMaraudon
.goto 1414,39.266,58.205
.subzone 2100,2 >> Enter the Maraudon Instance through the Orange side
step
.dungeon Mara
#completewith CrystalCarving
>>Kill any |cRXP_ENEMY_Monster|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
.complete 7028,1 
.isOnQuest 7028
step
.dungeon Mara
#completewith next
>>|cRXP_WARN_Use the|r |T134804:0|t[Filled Cerulean Vial] |cRXP_WARN_on small flowers/plants inside Orange|r
>>Kill the |cRXP_ENEMY_Noxxious Scions|r that are summoned
.complete 7041,1 
.use 17696 
.isOnQuest 7041
step
.dungeon Mara
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Veng|r
>>Kill |cRXP_ENEMY_Veng|r. Loot him for the |T134116:0|t[|cRXP_LOOT_Gem of the Fifth Khan|r]
>>|cRXP_ENEMY_Veng|r |cRXP_WARN_patrols around INSIDE the Maraudon Orange Instance|r
.collect 17765,1,7067,1 
.use 17757 
.mob Spirit of Veng
.mob Veng
.isOnQuest 7067
step
.dungeon Mara
>>|cRXP_WARN_Use the|r |T134804:0|t[Filled Cerulean Vial] |cRXP_WARN_on small flowers/plants inside Orange|r
>>Kill the |cRXP_ENEMY_Noxxious Scions|r that are summoned
.complete 7041,1 
.use 17696 
.isOnQuest 7041
step
.dungeon Mara
>>Kill |cRXP_ENEMY_Noxxion|r. Loot him for the |cRXP_LOOT_Celebrian Rod|r
>>Kill |cRXP_ENEMY_Lord Vyletongue|r. Loot him for the |cRXP_LOOT_Celebrian Diamond|r
>>|cRXP_ENEMY_Noxxion|r |cRXP_WARN_is in the Orange section and |cRXP_ENEMY_Lord Vyletongue|r in the Purple|r
.complete 7044,2 
.complete 7044,1 
.isOnQuest 7044
step
.dungeon Mara
>>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Maraudos|r
>>Kill |cRXP_ENEMY_Maraudos|r. Loot him for the |T134132:0|t[|cRXP_LOOT_Gem of the Fourth Khan|r]
>>|cRXP_ENEMY_Maraudos|r |cRXP_WARN_patrols around INSIDE the Maraudon Purple Instance|r
.collect 17764,1,7067,1 
.use 17757 
.mob Spirit of Maraudos
.mob Maraudos
.isOnQuest 7067
step
.dungeon Mara
>>|cRXP_WARN_Channel any of the|r |T134129:0|t|T134104:0|t|T134135:0|t|T134132:0|t|T134116:0|t[|cRXP_LOOT_Gems of the Khans|r] |cRXP_WARN_to create the|r |T133277:0|t[|cRXP_LOOT_Amulet of Union|r]
.complete 7067,1 
.use 17761,1
.use 17762,1
.use 17763,1
.use 17764,1
.use 17765,1
.itemcount 17761,1
.itemcount 17762,1
.itemcount 17763,1
.itemcount 17764,1
.itemcount 17765,1
.isOnQuest 7067
step
.dungeon Mara
>>Kill |cRXP_ENEMY_Celebras the Cursed|r then talk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.turnin 7044 >> Turn in Legends of Maraudon
.isQuestComplete 7044
.mob Celebras the Cursed
.target Celebras the Redeemed
step
.dungeon Mara
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.accept 7046 >> Accept The Scepter of Celebras
.timer 14,Incantation of Celebras Spawning RP
.isQuestTurnedIn 7044
.target Celebras the Redeemed
step
.dungeon Mara
.cast 6477 >> Click the |cRXP_PICK_Incantation of Celebras|r on the ground
.timer 34,The Scepter of Celebras RP
.isQuestTurnedIn 7044
step
.dungeon Mara
>>|cRXP_WARN_Wait out the RP|r
.complete 7046,1 
.isQuestTurnedIn 7044
step
.dungeon Mara
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celebras the Redeemed|r
.turnin 7046 >> Turn in The Scepter of Celebras
.isQuestTurnedIn 7044
.target Celebras the Redeemed
step
.dungeon Mara
>>Kill |cRXP_ENEMY_Princess Theradras|r
.complete 7065,1 
.mob Princess Theradras
.isOnQuest 7065
step
.dungeon Mara
#label CrystalCarving
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaetar's Spirit|r
.accept 7066 >> Accept Seed of Life
.target Zaetar's Spirit
step
.dungeon Mara
>>Kill any |cRXP_ENEMY_Monster|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
>>|cRXP_WARN_This can be completed OUTSIDE and INSIDE of the Instance|r
.complete 7028,1 
.isOnQuest 7028
step << Druid
.dungeon Mara
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
.dungeon Mara
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << Druid
.dungeon Mara
.isOnQuest 7066
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Keeper Remulos|r
.turnin 7066 >> Turn in Seed of Life
.target Keeper Remulos
step
.dungeon Mara
.hs >> Hearth to Nijel's Point
step
.dungeon Mara
.goto Desolace,64.64,9.15,0
.goto Desolace,63.827,10.669
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Marandis|r
.turnin 7065 >> Turn in Corruption of Earth and Seed
.target Keeper Marandis
.isQuestComplete 7065
step
.dungeon Mara
.goto Desolace,68.501,8.880
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talendria|r
.turnin 7041 >> Turn in Vyletongue Corruption
.target Talendria
.isQuestComplete 7041
step
.dungeon Mara
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
.turnin 7028 >> Turn in Twisted Evils
.target Willow
.isQuestComplete 7028
step
.dungeon Mara
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
>>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
.turnin 7067 >> Turn in The Pariah's Instructions
.target Centaur Pariah
.isQuestComplete 7067
step
.dungeon Mara
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.fly Un'Goro Crater >> Fly to Un'Goro Crater
.target Baritanas Skyriver
.zoneskip Desolace,1
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Un'Goro Crater >> Fly to Un'Goro Crater
.zoneskip Tanaris,1
.target Bera Stonehammer
step
.goto Un'Goro Crater,43.947,7.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
.collect 11116,1,3884,1 
.accept 3884 >> Accept Williden's Journal
.turnin 3884 >> Turn in Williden's Journal
.use 11116
.target Williden Marshal
step
.goto Un'Goro Crater,42.942,9.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muigin|r
.turnin 4141 >> Turn in Muigin and Larion
.accept 4142 >> Accept A Visit to Gregan
.target Muigin
step
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fly Ratchet >> Fly to Ratchet
.zoneskip Un'Goro Crater,1
.target Gryfe
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the Boat to Booty Bay
step
.group
.goto Stranglethorn Vale,26.694,73.613
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.accept 8551 >> Accept The Captain's Chest
step
.group
.goto Stranglethorn Vale,27.618,76.735
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
.accept 348 >> Accept Stranglethorn Fever
.target Fin Fizracket
step
.goto Stranglethorn Vale,27.135,77.451
.target Whiskey Slim
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
.turnin 580 >> Turn in Whiskey Slim's Lost Grogstep
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 1122 >> Turn in Report Back to Fizzlebub
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
.bankdeposit 11316 >> Deposit the following items into your bank:
>>|T133941:0|t[Bloodpetal] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 2767 >> Turn in Rescue OOX-22/FE!
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 648 >> Turn in Rescue OOX-17/TN!
.isQuestComplete 648
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 836 >> Turn in Rescue OOX-09/HL!
.isQuestComplete 836
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.accept 3721 >> Accept An OOX of Your Own
.turnin 3721 >> Turn in An OOX of Your Own
.isQuestTurnedIn 836
.isQuestTurnedIn 648
.isQuestTurnedIn 2767
step
.group 3
.goto Stranglethorn Vale,23.24,71.92
>>Kill |cRXP_ENEMY_Mok'rash|r. Loot him for the |T133694:0|t[|cRXP_LOOT_Monogrammed Sash|r]
>>|cRXP_WARN_Use the |T133694:0|t[|cRXP_LOOT_Monogrammed Sash|r] to start the quest|r
>>|cRXP_WARN_Kite |cRXP_ENEMY_Mok'rash|r around the giant Goblin Statue if needed|r
.collect 3985,1,8552,1 
.use 3985
.accept 8552 >> Accept The Monogrammed Sash
.link https://www.youtube.com/watch?v=xw2mGnQaCQM >> Click here for video reference << Priest
.link https://youtu.be/ZaSOwy1h-ZI >> |cRXP_WARN_Click here for video reference|r << !Warlock !Priest
.link https://youtu.be/cT3Hfq1vZRc >> |cRXP_WARN_Click here for video reference|r << Warlock
.mob Mok'rash
step
.group 3
.goto Stranglethorn Vale,36.95,69.73
>>Kill |cRXP_ENEMY_Gorlash|r. Loot him for |cRXP_LOOT_Smotts' Chest|r
.complete 8551,1 
.mob Gorlash
step
.goto Stranglethorn Vale,32.38,82.23,0
.goto Stranglethorn Vale,34.22,73.25,60,0
.goto Stranglethorn Vale,34.01,77.21,60,0
.goto Stranglethorn Vale,32.34,79.44,60,0
.goto Stranglethorn Vale,32.38,82.23,60,0
.goto Stranglethorn Vale,36.29,83.22,60,0
.goto Stranglethorn Vale,36.69,77.51,60,0
.goto Stranglethorn Vale,41.59,76.88,60,0
.goto Stranglethorn Vale,35.28,72.67,60,0
.goto Stranglethorn Vale,37.08,68.55,60,0
.goto Stranglethorn Vale,37.23,65.05,60,0
.goto Stranglethorn Vale,38.66,61.78
>>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
>>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r] to start the quest|r
.use 4098
.collect 4098,1,594,1 
.accept 594 >> Accept Message in a Bottle
step
#completewith next
.goto Stranglethorn Vale,37.02,81.53
.subzone 297 >> Travel to Jaguero Isle
step
.goto Stranglethorn Vale,38.532,80.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
>>|cRXP_WARN_Beware of |cRXP_ENEMY_Jaguero Stalkers|r in|r |T132320:0|t[Stealth] |cRXP_WARN_throughout the Island|r
.turnin 594 >> Turn in Message in a Bottle
.target Princess Poobah
step
.group
.goto Stranglethorn Vale,38.532,80.580
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.accept 630 >> Accept Message in a Bottle
step
.group 4
.goto Stranglethorn Vale,40.94,83.89
>>Kill |cRXP_ENEMY_King Mukla|r. Loot him for the |cRXP_LOOT_Shackle Key|r
.complete 630,1 
.mob King Mukla
step
.goto Stranglethorn Vale,38.532,80.580
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.turnin 630 >> Turn in Message in a Bottle
.isQuestComplete 630
step
.group 3
.addquestitem 2799,348
.goto Stranglethorn Vale,35.271,60.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Unbagwa|r
>>|cRXP_WARN_Turn in your 10|r |T134298:0|t[Gorilla Fangs] |cRXP_WARN_to summon|r |cRXP_ENEMY_Mokk the Savage|r
>>Kill |cRXP_ENEMY_Mokk the Savage|r. Loot him for the |cRXP_LOOT_Heart of Mokk|r
>>|cRXP_WARN_You'll have to deal with 3 waves of attacking|r |cRXP_ENEMY_Gorillas|r
.complete 348,1 
.collect 2799,10 
.disablecheckbox
.link https://www.youtube.com/watch?v=oEw3666RKIE >> |cRXP_WARN_Click here for video reference|r
.target Witch Doctor Unbagwa
.mob Mokk the Savage
step
#completewith ReturnBB
.goto Stranglethorn Vale,28.97,73.05,100 >> Travel to Booty Bay
step
.goto Stranglethorn Vale,26.694,73.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.turnin 8551 >> Turn in The Captain's Chest
.turnin 8552 >> Turn in The Monogrammed Sash
.accept 8553 >> Accept The Captain's Cutlass
.isQuestComplete 8551
.isQuestComplete 8552
.target Captain Hecklebury Smotts
step
.goto Stranglethorn Vale,26.694,73.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.turnin 8551 >> Turn in The Captain's Chest
.isQuestComplete 8551
.target Captain Hecklebury Smotts
step
.goto Stranglethorn Vale,26.694,73.613
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.turnin 8552 >> Turn in The Monogrammed Sash
.accept 8553 >> Accept The Captain's Cutlass
.isQuestComplete 8552
step
.isQuestTurnedIn 8552
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r and |cRXP_FRIENDLY_Sprogger|r
.accept 8553 >> Accept The Captain's Cutlass
.target +Captain Hecklebury Smotts
.goto Stranglethorn Vale,26.694,73.613
.turnin 8553 >> Turn in The Captain's Cutlass
.goto Stranglethorn Vale,26.655,73.642
.target +Sprogger
step
.goto Stranglethorn Vale,27.618,76.735
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
.turnin 348 >> Turn in Stranglethorn Fever
.isQuestComplete 348
.target Fin Fizracket
step
.abandon 8551 >> Abandon The Captain's Chest
step
.abandon 348 >> Abandon Stranglethorn Fever
step
.abandon 630 >> Abandon Message in a Bottle
step << !Mage
#label ReturnBB
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >> Fly to Stormwind
.zoneskip Stranglethorn Vale,1
.target Gyll
step << Mage
#label ReturnBB
#completewith next
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Warrior
#phase 1-3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Warrior
#phase 4-6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.accept 8417 >> Accept A Troubled Spirit
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>Go into The Slaughtered Lamb and go downstairs
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Spackle Thornberry
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
>>|cRXP_BUY_Buy the following items for a faster turn in at Blasted Lands shortly|r
>>|cRXP_WARN_This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any|r
>>|cRXP_WARN_The|r |T134089:0|t[Imperfect Draenethyst Fragment] |cRXP_WARN_and|r |T134564:0|t[Flawless Draenethyst Sphere] |cRXP_WARN_are rare and may not be on the Auction House|r
.blastedLands
.collect 10593,1,3501,1 
.collect 8244,1,2521,1 
.target Auctioneer Jaxon
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Blasted Lands>> Fly to Blasted Lands
.target Dungar Longdrink
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 51-52 Blasted Lands
#next 52-52 Searing Gorge/WPL
step
.goto Blasted Lands,67.570,19.291
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r atop the Tower
.accept 2783 >> Accept Petty Squabbles
.target Ambassador Ardalan
step
.dungeon ZF
.isQuestComplete 2991
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r atop the Tower
.turnin 2991 >> Turn in Nekrum's Medallion
.accept 2992 >> Accept The Divination
.timer 11,The Divination RP
.turnin 2992 >> Turn in The Divination
.accept 2993 >> Accept Return to the Hinterlands
.target Thadius Grimshade
step
.dungeon ZF
.isQuestTurnedIn 2991
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r atop the Tower
.accept 2992 >> Accept The Divination
.timer 11,The Divination RP
.turnin 2992 >> Turn in The Divination
.accept 2993 >> Accept Return to the Hinterlands
.target Thadius Grimshade
step
#phase 1-3 << Warrior
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2783 >> Turn in Petty Squabbles
.accept 2801 >> Accept A Tale of Sorrow
.target Fallen Hero of the Horde
step << Warrior
#phase 4-6
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2783 >> Turn in Petty Squabbles
.turnin 8417 >> Turn in A Troubled Spirit
.accept 2801 >> Accept A Tale of Sorrow
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.complete 2801,1 
.skipgossip
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2801 >> Turn in A Tale of Sorrow
.target Fallen Hero of the Horde
step << Hunter/Rogue
#completewith next
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_Prioritize |cRXP_ENEMY_Scorpids|r, |cRXP_ENEMY_Vultures|r and |cRXP_ENEMY_Boars|r so you can receive the 25 Agility buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Hunter/Rogue
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
>>|cRXP_WARN_Once you have 3 |cRXP_LOOT_Pincers|r, 2 |cRXP_LOOT_Gizzards|r and 1 |cRXP_LOOT_Lung|r turn in the quest for the 25 Agility buff|r
.collect 8393,3,2585,1 
.collect 8396,2,2585,1 
.collect 8392,1,2585,1 
.accept 2585 >> Accept The Decisive Striker
.disablecheckbox
.turnin 2585 >> Turn in The Decisive Striker
.disablecheckbox
.target Bloodmage Drazial
step << Hunter/Rogue
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
.accept 2585 >> Accept The Decisive Striker
.turnin 2585 >> Turn in The Decisive Striker
.target Bloodmage Drazial
step << Druid/Paladin/Warrior
#completewith next
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_Prioritize |cRXP_ENEMY_Hyenas|r, |cRXP_ENEMY_Boars|r and |cRXP_ENEMY_Scorpids|r so you can receive the 25 Strength buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Druid/Paladin/Warrior
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
>>|cRXP_WARN_Once you have 3 |cRXP_LOOT_Jowls|r, 2 |cRXP_LOOT_Lungs|r and 1 |cRXP_LOOT_Pincer|r turn in the quest for the 25 Strength buff|r
.collect 8391,3,2581,1 
.collect 8392,2,2581,1 
.collect 8393,1,2581,1 
.accept 2581 >> Accept Snickerfang Jowls
.disablecheckbox
.turnin 2581 >> Turn in Snickerfang Jowls
.disablecheckbox
.target Bloodmage Drazial
step << Druid/Paladin/Warrior
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2581 >> Accept Snickerfang Jowls
.turnin 2581 >> Turn in Snickerfang Jowls
.target Bloodmage Drazial
step
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>Kill |cRXP_ENEMY_Vultures|r. Loot them for their |cRXP_LOOT_Gizzards|r
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for their |cRXP_LOOT_Brains|r
>>Kill |cRXP_ENEMY_Boars|r. Loot them for their |cRXP_LOOT_Lungs|r
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Pincers|r
>>Kill |cRXP_ENEMY_Hyenas|r. Loot them for their |cRXP_LOOT_Jowls|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r share spawns with |cRXP_ENEMY_Boars|r, and |cRXP_ENEMY_Hyenas|r share spawns with|r |cRXP_ENEMY_Scorpids|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step
.addquestitem 8391,2581
.addquestitem 8392,2583
.addquestitem 8393,2585
.addquestitem 8394,2601
.addquestitem 8396,2603
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r and |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2601 >> Accept The Basilisk's Bite
.turnin 2601 >> Turn in The Basilisk's Bite
.accept 2603 >> Accept Vulture's Vigor
.turnin 2603 >> Turn in Vulture's Vigor
.goto Blasted Lands,50.640,14.299
.accept 2585 >> Accept The Decisive Striker
.turnin 2585 >> Turn in The Decisive Striker
.accept 2583 >> Accept A Boar's Vitality
.turnin 2583 >> Turn in A Boar's Vitality
.accept 2581 >> Accept Snickerfang Jowls
.turnin 2581 >> Turn in Snickerfang Jowls
.goto Blasted Lands,50.548,14.204
.target Bloodmage Lynnore
.target Bloodmage Drazial
step
#optional
#completewith BLend
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
.accept 3501 >> Accept Everything Counts In Large Amounts
.turnin 3501 >> Turn in Everything Counts In Large Amounts
.collect 10593,1,3501,1 
.itemcount 10593,1 
.target Kum'isha the Collector
step
#optional
#completewith BLend
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
.accept 2521 >> Accept To Serve Kum'isha
.turnin 2521 >> Turn in To Serve Kum'isha
.collect 8244,1,2521,1 
.itemcount 8244,1 
.target Kum'isha the Collector
step
#label BLend
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Constantine|r
.fly Redridge >> Fly to Redridge
.target Alexandra Constantine
.zoneskip Burning Steppes
step
#completewith next
.goto Burning Steppes,78.7,81.1,60,0
.goto Burning Steppes,77.5,68.0
.zone Burning Steppes >> Travel to Burning Steppes
step
.goto Burning Steppes,82.4,63.6,60,0
.goto Burning Steppes,84.555,68.677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.accept 3823 >> Accept Extinguish the Firegut
.target Oralius
step
.goto Burning Steppes,75.34,48.62,70,0
.goto Burning Steppes,82.89,37.61,70,0
.goto Burning Steppes,80.74,44.38
>>Kill |cRXP_ENEMY_Firegut Ogre Mages|r, |cRXP_ENEMY_Firegut Ogres|r and |cRXP_ENEMY_Firegut Brutes|r
.complete 3823,1 
.mob +Firegut Ogre Mage
.complete 3823,2 
.mob +Firegut Ogre
.complete 3823,3 
.mob +Firegut Brute
step
.goto Burning Steppes,84.555,68.677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 3823 >> Turn in Extinguish the Firegut
.target Oralius
step
.goto Burning Steppes,84.334,68.326
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgun Stoutarm|r
.fly Searing Gorge >> Fly to Searing Gorge
.target Borgun Stoutarm
.zoneskip Searing Gorge
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 52-52 Searing Gorge/WPL
#next 52-53 Felwood
step 
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3452 >> Accept The Flame's Casing
.target Velarok Windblade
step
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>>Kill |cRXP_ENEMY_Twilight Dark Shamans|r, |cRXP_ENEMY_Twilight Fire Guards|r, |cRXP_ENEMY_Twilight Geomancers|r and |cRXP_ENEMY_Twilight Idolaters|r. Loot them for the |cRXP_LOOT_Symbol of Ragnaros|r
>>|cRXP_WARN_Skip this step if you aren't confident soloing these Elites|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.isQuestComplete 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3452 >> Turn in The Flame's Casing
.target Velarok Windblade
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3453 >> Accept The Torch of Retribution
.timer 28,The Torch of Retribution RP
.turnin 3453 >> Turn in The Torch of Retribution
.accept 3454 >> Accept The Torch of Retribution
.target Velarok Windblade
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.055,39.067
>>Click on the |cRXP_PICK_Torch of Retribution|r
.turnin 3454 >> Turn in The Torch of Retribution
step
.isQuestTurnedIn 3452
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r and |cRXP_FRIENDLY_Squire Maltrake|r
.accept 3462 >> Accept Squire Maltrake
.goto Searing Gorge,39.057,38.990
.turnin 3462 >> Turn in Squire Maltrake
.accept 3463 >> Accept Set Them Ablaze!
.goto Searing Gorge,39.165,38.997
.target Velarok Windblade
.target Squire Maltrake
step
.isQuestTurnedIn 3452
>>Click the |cRXP_PICK_Sentry Braziers|r atop the Towers
>>|cRXP_WARN_You must have the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_equiped|r
.use 10515 
.complete 3463,4 
.goto Searing Gorge,33.303,54.477
.complete 3463,1 
.goto Searing Gorge,35.667,60.682
.complete 3463,2 
.goto Searing Gorge,44.030,60.908
.complete 3463,3 
.goto Searing Gorge,50.069,54.737
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.165,38.997
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Maltrake|r
.turnin 3463 >> Turn in Set Them Ablaze!
.target Squire Maltrake
step
.isQuestTurnedIn 3463
.destroy 10515 >> Destroy the |T135466:0|t[Torch of Retribution]. You no longer need it
step
.isQuestTurnedIn 3452
.goto Searing Gorge,38.847,38.985
>>Click the |cRXP_PICK_Hoard of the Black Dragonflight|r on the ground
.accept 3481 >> Accept Trinkets...
.turnin 3481 >> Turn in Trinkets...
step
#optional
.itemcount 10569,1
.use 10569 >>|cRXP_WARN_Open the|r |T132595:0|t[Hoard of the Black Dragonflight]
+|cRXP_WARN_Ensure you keep the|r |T134430:0|t[Black Dragonflight Molt]|cRXP_WARN_. Do not destroy it. You will need it later|r
step
.group 4
.isOnQuest 3372
.goto Searing Gorge,24.61,30.97,25,0
.goto Searing Gorge,29.144,25.849
>>Open the |cRXP_PICK_Twilight Artifact|r. Loot it for the |cRXP_LOOT_Mysterious Artifact|r
>>|cRXP_WARN_Jump onto the |cRXP_PICK_Twilight Artifact|r to loot it|r
>>|cRXP_WARN_Skip this step if you are unable to complete it|r
.complete 3372,1 
step
.group 4
.goto Searing Gorge,29.505,26.325
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamael Lunthistle|r
.accept 3377 >> Accept Prayer to Elune
.skipgossip
.turnin 3377 >> Turn in Prayer to Elune
.accept 3378 >> Accept Prayer to Elune
.target Zamael Lunthistle
step
.group 4
.isOnQuest 3378
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>>Kill |cRXP_ENEMY_Twilight Dark Shamans|r, |cRXP_ENEMY_Twilight Fire Guards|r, |cRXP_ENEMY_Twilight Geomancers|r and |cRXP_ENEMY_Twilight Idolaters|r. Loot them for the |cRXP_LOOT_Prayer to Elune|r
>>|cRXP_WARN_Skip this step if you are unable to complete it|r
.complete 3378,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.group 4
#completewith next
.isQuestComplete 3372
.goto Searing Gorge,49.56,45.38
.subzone 1443 >> Jump down into The Slag Pit. Follow the arrow
step
.group 4
.isQuestComplete 3372
.goto Searing Gorge,41.252,25.408
>>Click the |cRXP_PICK_Altar of Suntara|r
.turnin 3372 >> Turn in Release Them
step
.group
.abandon 3372 >> Abandon Release Them
step
.group 4
.isQuestTurnedIn 3372
.goto Searing Gorge,41.163,25.541
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dying Archaeologist|r
.target Dying Archaeologist
.accept 3566 >> Accept Rise, Obsidion!
step
.group 4
.isQuestTurnedIn 3372
>>Kill |cRXP_ENEMY_Lathoric the Black|r and |cRXP_ENEMY_Obsidion|r. Loot them for the |cRXP_LOOT_Head of Lathoric the Black|r and the |cRXP_LOOT_Heart of Obsidion|r
.complete 3566,1 
.mob +Lathoric the Black
.complete 3566,2 
.mob +Obsidion
step << !Mage skip
.group
.isQuestTurnedIn 3372
#completewith next
+Logout skip out of the cave. There are MANY different spots you can use
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> |cRXP_WARN_Click here for video reference|r
step << !Mage
.group
#completewith next
.goto Searing Gorge,49.80,45.72,20 >> Exit the cave and head back to Thorium Point
step << !Mage
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
.fly Ironforge >> Fly to Ironforge
.target Lanie Reed
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
#phase 4-6
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.accept 8250 >> Accept Magecraft
.trainer >> Train your class spells
.target Dink
step << Mage
#phase 1-3
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step
#completewith CHam
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Hammerfall|r
>>|cRXP_FRIENDLY_Courier Hammerfall|r |cRXP_WARN_patrols through all of Ironforge|r
.accept 5090 >> Accept A Call to Arms: The Plaguelands!
.unitscan Courier Hammerfall
step
.isQuestComplete 3566
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
>>|cRXP_FRIENDLY_Curator Thorius|r |cRXP_WARN_patrols through the Hall of Explorers|r
.turnin 3566 >> Turn in Rise Obsidion!
.target Curator Thorius
step
.abandon 3566 >> Abandon Rise Obsidion!
step
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r
.accept 3448 >> Accept Passing the Burden
.target Historian Karnik
step
.isOnQuest 2977
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r
.turnin 2977 >> Turn in Return to Ironforge
.accept 2964 >> Accept A Future Task
.target Historian Karnik
step
.isQuestTurnedIn 2977
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r
.accept 2964 >> Accept A Future Task
.target Historian Karnik
step
.isOnQuest 2964
.goto Ironforge,69.930,18.548
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Explorer Magellas|r
.turnin 2964 >> Turn in A Future Task
.target High Explorer Magellas
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laris Geardawdle|r
.accept 4512 >> Accept A Little Slime Goes a Long Way
.target Laris Geardawdle
step << Rogue
#phase 4-6
.goto Ironforge,51.981,14.851
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
.trainer >> Train your class spells
.accept 8233 >> Accept A Simple Request
.target Hulfdan Blackbeard
step << Rogue
#phase 1-3
.goto Ironforge,51.981,14.851
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
.trainer >> Train your class spells
.target Hulfdan Blackbeard
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warlock
#phase 4-6
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.trainer >> Train your class spells
.accept 8419 >> Accept An Imp's Request
.target Briarthorn
step << Warlock
#phase 1-3
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
.trainer >> Train your class spells
.target Briarthorn
step
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tymor|r
.turnin 3448 >> Turn in Passing the Burden
.accept 3449 >> Accept Arcane Runes
.accept 3450 >> Accept An Easy Pickup
.target Tymor
step << Paladin
#phase 1-3
.goto Ironforge,23.126,6.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
.trainer >> Train your class spells
.target Brandur Ironhammer
step << Paladin
#phase 4-6
.goto Ironforge,23.126,6.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
.trainer >> Train your class spells
.accept 8415 >> Accept Chillwind Point
.target Brandur Ironhammer
step << Priest
#phase 1-3
.goto Ironforge,26.970,7.323,15,0
.goto Ironforge,24.337,10.433,5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
.trainer >> Train your class spells
.target High Priest Rohan
step << Priest
#phase 4-6
.goto Ironforge,26.970,7.323,15,0
.goto Ironforge,24.337,10.433,5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
.trainer >> Train your class spells
.accept 8254 >> Accept Cenarion Aid
.target High Priest Rohan
step << Warrior
.goto Ironforge,65.905,88.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
.trainer >> Train your class spells
.target Bilban Tosslespanner
step << Hunter
#phase 4-6
.goto Ironforge,70.889,83.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olmin Burningbeard|r
.trainer >> Train your class spells
.accept 8151 >> Accept The Hunter's Charm
.target Olmin Burningbeard
step << Hunter
#phase 1-3
.goto Ironforge,70.889,83.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olmin Burningbeard|r
.trainer >> Train your class spells
.target Olmin Burningbeard
step
#label CHam
.goto Ironforge,70.860,94.570
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiggs Fuselighter|r
.turnin 3450 >> Turn in An Easy Pickup
.accept 3451 >> Accept Signal for Pickup
.turnin 3451 >> Turn in Signal for Pickup
.target Xiggs Fuselighter
step
.goto Ironforge,33.4,20.0,70,0
.goto Ironforge,25.6,61.6,70,0
.goto Ironforge,64.8,77.8,70,0
.goto Ironforge,70.6,48.0,70,0
.goto Ironforge,65.0,22.6,70,0
.goto Ironforge,50.4,10.4,70,0
.goto Ironforge,32.6,21.0,70,0
.goto Ironforge,40.8,39.4,70,0
.goto Ironforge,51.2,56.6,70,0
.goto Ironforge,55.8,35.2,70,0
.goto Ironforge,33.0,22.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Hammerfall|r
>>|cRXP_FRIENDLY_Courier Hammerfall|r |cRXP_WARN_patrols through all of Ironforge|r
.accept 5090 >> Accept A Call to Arms: The Plaguelands!
.unitscan Courier Hammerfall
step
.goto Ironforge,18.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
.home Ironforge >> Set your Hearthstone to Ironforge
.target Innkeeper Firebrew
step
.isQuestTurnedIn 3481
.itemcount 10575,1 
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 10575 >> Deposit the following items into your bank:
>>|T134430:0|t[Black Dragonflight Molt] (If you have it) 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankdeposit 10444,10445 >> Deposit the following items into your bank:
>>|T134537:0|t[Standard Issue Flare Gun] 
>>|T132594:0|t[Drawing Kit] 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankwithdraw 10819,9328,9330 >> Withdraw the following items from your bank:
>>|T132927:0|t[Wildkin Feather] 
>>|T134442:0|t[Super Snapper FX] 
>>|T134300:0|t[Snapshot of Gammerita] 
.target Bailey Stonemantle
step << Rogue
#completewith AzureBag
.isOnQuest 8233
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Southshore >> Fly to Southshore
.target Gryth Thurden
step << Rogue
.isOnQuest 8233
.goto Hillsbrad Foothills,75.575,22.076,20,0
.goto Hillsbrad Foothills,86.026,78.879
.subzone 3486 >> Travel to Ravenholdt Manor
step << Rogue
.isOnQuest 8233
.goto Hillsbrad Foothills,86.026,78.879
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r upstairs
.turnin 8233 >> Turn in A Simple Request
.accept 8234 >> Accept Sealed Azure Bag
.target Lord Jorach Ravenholdt
step << Rogue
.isQuestTurnedIn 8233
.goto Hillsbrad Foothills,86.026,78.879
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r upstairs
.accept 8234 >> Accept Sealed Azure Bag
.target Lord Jorach Ravenholdt
step << Rogue
.isOnQuest 8234
#label AzureBag
#completewith Tragan
.goto Hillsbrad Foothills,83.395,32.309,90,0
.goto The Hinterlands,7.50,58.87
.zone The Hinterlands >> Travel to The Hinterlands
step
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Hinterlands>> Fly to The Hinterlands
.target Gryth Thurden
.zoneskip The Hinterlands
step
.dungeon ZF
.isOnQuest 2993
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 2993 >> Turn in Return to the Hinterlands
.target Gryphon Master Talonaxe
step
#label Tragan
.goto The Hinterlands,40.63,59.65
>>Loot the |cRXP_LOOT_Violet Tragan|r underwater
.complete 2641,1 
step
#completewith FlyWPL
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fly Western Plaguelands>> Fly to Western Plaguelands
.target Guthrum Thunderfist
step
#phase 1-3 << Paladin
.isOnQuest 5066
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5066 >> Turn in A Call to Arms: The Plaguelands!
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
#phase 1-3 << Paladin
.isQuestTurnedIn 5066
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
.isQuestTurnedIn 5066
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8415 >> Turn in Chillwind Point
.accept 8414 >> Accept Dispelling Evil
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
.isOnQuest 5066
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5066 >> Turn in A Call to Arms: The Plaguelands!
.turnin 8415 >> Turn in Chillwind Point
.accept 8414 >> Accept Dispelling Evil
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
#phase 1-3 << Paladin
.isOnQuest 5091
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5091 >> Turn in A Call to Arms: The Plaguelands!
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
.isOnQuest 5091
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5091 >> Turn in A Call to Arms: The Plaguelands!
.turnin 8415 >> Turn in Chillwind Point
.accept 8414 >> Accept Dispelling Evil
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
#phase 1-3 << Paladin
.isQuestTurnedIn 5091
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
.isQuestTurnedIn 5091
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8415 >> Turn in Chillwind Point
.accept 8414 >> Accept Dispelling Evil
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
#phase 1-3 << Paladin
.isOnQuest 5090
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5090 >> Turn in A Call to Arms: The Plaguelands!
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
.isOnQuest 5090
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5090 >> Turn in A Call to Arms: The Plaguelands!
.turnin 8415 >> Turn in Chillwind Point
.accept 8414 >> Accept Dispelling Evil
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
#phase 1-3 << Paladin
.isQuestTurnedIn 5090
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
.isQuestTurnedIn 5090
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8415 >> Turn in Chillwind Point
.accept 8414 >> Accept Dispelling Evil
.accept 5092 >> Accept Clear the Way
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.968,83.546
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
.accept 5401 >> Accept Argent Dawn Commission
.turnin 5401 >> Turn in Argent Dawn Commission
.target Argent Officer Pureheart
step
#completewith next
.cast 17670 >> |cRXP_WARN_Equip the|r |T133440:0|t[Argent Dawn Commission] |cRXP_WARN_to start collecting|r |T133447:0|t[Scourgestones]
.use 12846
step
#label FlyWPL
#phase 1-3 << Paladin
.goto Western Plaguelands,48.91,80.84,70,0
.goto Western Plaguelands,50.01,76.90
>>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r << !Paladin
>>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r. Loot them for their |cRXP_LOOT_Minion's Scourgestones|r << Paladin
.complete 5092,1 
.mob +Skeletal Flayer
.complete 5092,2 
.mob +Slavering Ghoul
.mob +Skeletal Flayer
.mob +Slavering Ghoul
step << Paladin
#label FlyWPL
#phase 4-6
.goto Western Plaguelands,48.91,80.84,70,0
.goto Western Plaguelands,50.01,76.90
>>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r << !Paladin
>>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r. Loot them for their |cRXP_LOOT_Minion's Scourgestones|r << Paladin
.complete 5092,1 
.mob +Skeletal Flayer
.complete 5092,2 
.mob +Slavering Ghoul
.complete 8414,1 << Paladin 
.mob +Skeletal Flayer
.mob +Slavering Ghoul
step << Paladin
#phase 4-6
.goto Western Plaguelands,51.99,82.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r
.turnin 8414 >> Turn in Dispelling Evil
.accept 8416 >> Accept Inert Scourgestones
.target High Priest Thel'danis
step
#phase 1-3 << Paladin
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5092 >> Turn in Clear the Way
.target Commander Ashlam Valorfist
step << Paladin
#phase 4-6
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5092 >> Turn in Clear the Way
.turnin 8416 >> Turn in Inert Scourgestones
.target Commander Ashlam Valorfist
step << !Mage
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.fly Menethil Harbor >> Fly to Menethil Harbor
.target Bibilfaz Featherwhistle
.zoneskip Western Plaguelands,1
step << !Mage
.goto Wetlands,4.560,57.160
.zone Darkshore >> Take the boat to Darkshore
.zoneskip Darnassus
.zoneskip Teldrassil
step << !Mage
#completewith next
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.fly Teldrassil >> Fly to Teldrassil
.target Caylais Moonfeather
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 3661 >> Turn in Favored of Elune?
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
>>|cRXP_WARN_Skip this step if you aren't above level 52. You'll do it later|r
.accept 978 >> Accept Moontouched Wildkin
.target Erelas Ambersky
.xp <52,1
step << !Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r upstairs
.turnin 2944 >> Turn in The Super Snapper FX
.accept 2943 >> Accept Return to Troyas
.target Daryn Lightwind
step << !Mage
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step << Mage
#completewith next
.zone Darnassus >> Teleport to Darnassus
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Idriana|r, |cRXP_FRIENDLY_Garryeth|r or |cRXP_FRIENDLY_Lairn|r
.bankwithdraw 8594,11133,11018 >> Withdraw the following items from your bank:
>>|T134331:0|t[Insect Analysis Report] 
>>|T135357:0|t[Linken's Training Sword] 
>>|T133849:0|t[Un'Goro Soil] (If you have 20) 
.target Idriana
.target Garryeth
.target Lairn
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Idriana|r, |cRXP_FRIENDLY_Garryeth|r or |cRXP_FRIENDLY_Lairn|r
.bankdeposit 8526 >> Deposit the following items into your bank:
>>|T134527:0|t[Violet Tragan] 
.target Idriana
.target Garryeth
.target Lairn
step
.goto Darnassus,67.427,15.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Saelienne|r
.accept 3763 >> Accept Assisting Arch Druid Staghelm
.target Innkeeper Saelienne
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 3763 >> Turn in Assisting Arch Druid Staghelm
.target Arch Druid Fandral Staghelm
step
#optional
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.accept 3764 >> Accept Un'Goro Soil
.itemcount 11018,20 
.target Arch Druid Fandral Staghelm
step
#optional
.goto Darnassus,31.485,8.237
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenal|r
.turnin 3764 >> Turn in Un'Goro Soil
.itemcount 11018,20 
.target Jenal
step
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r
.turnin 162 >> Turn in Rise of the Silithid
.accept 4493 >> Accept March of the Silithid
.target Gracina Spiritmight
step
.group
.isQuestComplete 3378
.goto Darnassus,38.334,80.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astarii Starseeker|r
.turnin 3378 >> Turn in Prayer to Elune
.target Astarii Starseeker
step << Warlock
#era
#phase 4-6
#ah
.goto Darnassus,56.245,54.039,-1
.goto Darnassus,56.374,51.820,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
>>Buy the following items for a instant turn ins at Felwood shortly. Skip this step if you wish to not buy any
>>|T132888:0|t[Felcloth]
.collect 14256,1,8419,1 
.target Auctioneer Tolon
.target Auctioneer Golothas
step
.group
.abandon 3378 >> Abandon Prayer to Elune
step << Druid
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.trainer >> Train your class spells
.target Mathrengyl Bearwalker
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.goto Darnassus,58.718,34.905
.trainer >> Train your class spells
.target Arias'ta Bladesinger
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.trainer >> Train your class spells
.target Syurna
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
step
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Travel through the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 3661 >> Turn in Favored of Elune?
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
>>|cRXP_WARN_Skip this step if you aren't above level 52. You'll do it later|r
.accept 978 >> Accept Moontouched Wildkin
.target Erelas Ambersky
.xp <52,1
step << Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r upstairs
.turnin 2944 >> Turn in The Super Snapper FX
.accept 2943 >> Accept Return to Troyas
.target Daryn Lightwind
step
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Azshara >> Fly to Azshara
.zoneskip Teldrassil,1
.target Vesprystus
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 52-53 Felwood
#next 53-54 Feralas/Azshara
step
.goto Azshara,11.368,78.166
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
.accept 5535 >> Accept Spiritual Unrest
.accept 5536 >> Accept A Land Filled with Hatred
.target Loh'atu
step
#completewith next
.goto Azshara,17.12,69.00,0
.goto Azshara,14.22,72.74,0
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
step
.goto Azshara,19.35,63.02,60,0
.goto Azshara,20.65,60.89
>>Kill |cRXP_ENEMY_Haldarr Satyrs|r, |cRXP_ENEMY_Haldarr Tricksters|r and |cRXP_ENEMY_Haldarr Felsworns|r
.complete 5536,1 
.mob +Haldarr Satyr
.complete 5536,2 
.mob +Haldarr Trickster
.complete 5536,3 
.mob +Haldarr Felsworn
step
#phase 1-3 << Priest
.goto Azshara,17.12,69.00,60,0
.goto Azshara,14.22,72.74,60,0
.goto Azshara,17.12,69.00
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
>>|cRXP_WARN_Save an |cRXP_LOOT_Ichor of Undeath|r for your Sunken Temple class quest later if you get one from them, if not you'll get one later|r << Priest
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
.mob +Highborne Apparition
.mob +Highborne Lichling
step << Priest
#phase 4-6
.goto Azshara,17.12,69.00,60,0
.goto Azshara,14.22,72.74,60,0
.goto Azshara,17.12,69.00
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
>>|cRXP_WARN_Save an |cRXP_LOOT_Ichor of Undeath|r for your Sunken Temple class quest later if you get one from them, if not you'll get one later|r << Priest
.complete 5535,1 
.mob +Highborne Apparition
.complete 5535,2 
.mob +Highborne Lichling
.collect 7972,1,8256,1,1 << Priest 
.mob +Highborne Apparition
.mob +Highborne Lichling
step
.goto Azshara,11.368,78.166
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
.turnin 5535 >> Turn in Spiritual Unrest
.turnin 5536 >> Turn in A Land Filled with Hatred
.target Loh'atu
step
#completewith next
.goto Ashenvale,55.97,31.97,0
.goto Felwood,54.14,86.83
.zone Felwood >> Travel to Felwood
step
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
.accept 4101 >> Accept Cleansing Felwood
.target Arathandris Silversky
step
.goto Felwood,50.927,85.005
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
.accept 8460 >> Accept Timbermaw Ally
.target Grazle
step
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
>>Kill |cRXP_ENEMY_Deadwood Warriors|r, |cRXP_ENEMY_Deadwood Pathfinders|r and |cRXP_ENEMY_Deadwood Gardeners|r
.complete 8460,1 
.mob +Deadwood Warrior
.complete 8460,2 
.mob +Deadwood Pathfinder
.complete 8460,3 
.mob +Deadwood Gardener
step
.goto Felwood,50.927,85.005
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
.turnin 8460 >> Turn in Timbermaw Ally
.accept 8462 >> Accept Speak to Nafien
.target Grazle
step
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
.reputation 576,unfriendly
>>|cRXP_WARN_Do NOT skip this step. You'll need the reputation later to travel through Timbermaw Hold to the north|r
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
>>|cRXP_WARN_You will need 12 stacks of|r |T132892:0|t[Mageweave Cloth] |cRXP_WARN_for doing Cloth turnins in Major cities soon. Furbolgs are a great source of them. Skip this step if you already have them|r
.collect 4338,240 
.xp 52.5
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step << Warlock
#phase 4-6
.goto Felwood,43.27,84.98,45,0
.goto Felwood,43.41,88.13,70,0
.goto Felwood,39.45,84.55
>>Kill |cRXP_ENEMY_Jadefire Satyrs|r and |cRXP_ENEMY_Jadefire Felsworns|r. Loot them for a Felcloth
.collect 14256,1,8419,1 
.mob Jadefire Satyr
.mob Jadefire Felsworn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.accept 5155 >> Accept Forces of Jaedenar
.goto Felwood,51.21,82.10
.target Greta Mosshoof
step
#completewith next
.use 11912 >> |cRXP_WARN_Open the|r |T132763:0|t[Package of Empty Ooze Containers]
.collect 11914,6 
.collect 11948,6 
step
.goto Felwood,40.77,66.86
>>Kill |cRXP_ENEMY_Cursed Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Cursed Ooze Jars] |cRXP_WARN_on their corpses|r
.complete 4512,1 
.use 11912 
.use 11914 
.mob Cursed Ooze
step << Warlock
#phase 4-6
.isOnQuest 8419
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8419 >> Turn in An Imp's Request
.accept 8421 >> Accept The Wrong Stuff
.target Impsy
step << Warlock
#phase 4-6
#optional
.isQuestTurnedIn 8419
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.accept 8421 >> Accept The Wrong Stuff
.target Impsy
step << Warlock
#phase 4-6
#completewith FinalOoze
.goto Felwood,40.48,59.07,0
.goto Felwood,39.98,54.76,0
>>Kill |cRXP_ENEMY_Tainted Oozes|r. Loot them for their |cRXP_LOOT_Bloodvenom Essences|r
.isOnQuest 8421
.complete 8421,2 
.mob Tainted Ooze
step
#completewith next
.goto Felwood,40.48,59.07,0
.goto Felwood,39.98,54.76,0
>>Kill |cRXP_ENEMY_Tainted Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Tainted Ooze Jars] |cRXP_WARN_on their corpses|r
.use 11948 
.complete 4512,2 
.mob Tainted Ooze
step
.goto Felwood,38.55,59.14,50,0
.goto Felwood,36.49,61.40,60,0
.goto Felwood,35.01,59.83,60,0
.goto Felwood,36.49,61.40,60,0
.goto Felwood,38.55,59.14,60,0
.goto Felwood,36.49,61.40
>>Kill |cRXP_ENEMY_Jaedenar Hounds|r, |cRXP_ENEMY_Jaedenar Guardians|r, |cRXP_ENEMY_Jaedenar Adepts|r and |cRXP_ENEMY_Jaedenar Cultists|r
.complete 5155,1 
.mob +Jaedenar Hound
.complete 5155,2 
.mob +Jaedenar Guardian
.complete 5155,3 
.mob +Jaedenar Adept
.complete 5155,4 
.mob +Jaedenar Cultist
step
#label FinalOoze
.goto Felwood,40.48,59.07,70,0
.goto Felwood,39.98,54.76,0
>>Kill |cRXP_ENEMY_Tainted Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Tainted Ooze Jars] |cRXP_WARN_on their corpses|r
.use 11948 
.complete 4512,2 
.mob Tainted Ooze
step << Warlock
#phase 4-6
.goto Felwood,40.48,59.07,70,0
.goto Felwood,39.98,54.76,0
>>Kill |cRXP_ENEMY_Tainted Oozes|r. Loot them for their |cRXP_LOOT_Bloodvenom Essences|r
.isOnQuest 8421
.complete 8421,2 
.mob Tainted Ooze
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5155 >> Turn in Forces of Jaedenar
.accept 5157 >> Accept Collection of the Corrupt Water
.target Greta Mosshoof
step
.goto Felwood,38.55,59.14,50,0
.goto Felwood,35.173,59.778
.use 12922 >>|cRXP_WARN_Use the|r |T132788:0|t[Empty Canteen] |cRXP_WARN_at the Moon Well in the center of Jaedenar|r
.complete 5157,1 
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5157 >> Turn in Collection of the Corrupt Water
.accept 5158 >> Accept Seeking Spiritual Aid
.target Greta Mosshoof
step << Warlock
#phase 4-6
.goto Felwood,49.0,29.6,70,0
.goto Felwood,53.0,22.8,70,0
.goto Felwood,49.4,18.0,70,0
.goto Felwood,46.4,24.6,70,0
.goto Felwood,49.0,29.6,70,0
.goto Felwood,53.0,22.8,70,0
.goto Felwood,49.4,18.0,70,0
.goto Felwood,46.4,24.6
>>Kill |cRXP_ENEMY_Irontree Stompers|r, |cRXP_ENEMY_Irontree Wanderers|r and |cRXP_ENEMY_Withered Protectors|r. Loot them for their |cRXP_LOOT_Rotting Wood|r
.isOnQuest 8421
.complete 8421,1 
.mob Irontree Stomper
.mob Irontree Wanderer
.mob Withered Protector
step
#completewith next
.goto Felwood,61.50,16.96,100,0
.goto Felwood,62.488,24.242
.subzone 1998 >> Travel to Talonbranch Glade
step
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishellena|r
.fp Felwood>> Get the Felwood Flight Path
.target Mishellena
step
.goto Felwood,64.768,8.129
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8462 >> Turn in Speak to Nafien
.target Nafien
step << !Druid
.dungeon Mara
.isOnQuest 7066
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Moonglade,35.77,71.94
.zone Moonglade >> Travel to Moonglade via Timbermaw Hold
>>|cRXP_WARN_Ensure you are at least at an Unfriendly standing with Timbermaw Hold. If you are at a Hostile standing they will attack you. Kill Furbolgs until you have reached Unfriendly|r
step << !Druid
#completewith next
.goto Moonglade,48.102,67.346
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
.fp Moonglade >> Get the Moonglade Flight path
.target Sindrayl
step << !Druid
.dungeon Mara
.isOnQuest 7066
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Keeper Remulos|r
.turnin 7066 >> Turn in Seed of Life
.target Keeper Remulos
step << !Druid
.dungeon Mara
.isQuestTurnedIn 7066
.goto Moonglade,35.77,71.94,0
.goto Winterspring,27.76,34.59
.zone Winterspring >> Travel to Winterspring via Timbermaw Hold
step
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >> Travel to Winterspring via Timbermaw Hold
>>|cRXP_WARN_Ensure you are at least at an Unfriendly standing with Timbermaw Hold. If you are at a Hostile standing they will attack you. Kill Furbolgs until you have reached Unfriendly|r
step
#hardcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_Blizzard has adjusted the quest [The Videre Elixir] so it will no longer kill you on Official Hardcore Servers|r
.turnin 3908 >> Turn in It's a Secret to Everybody
.timer 36,It's a Secret to Everybody RP
.accept 3909 >> Accept The Videre Elixir
.target Donova Snowden
step
#softcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_You may safely complete this quest as part of the quest chain for [The Videre Elixir]|r
.turnin 3908 >> Turn in It's a Secret to Everybody
.timer 36,It's a Secret to Everybody RP
.accept 3909 >> Accept The Videre Elixir
.target Donova Snowden
step
#completewith FlyFelwood
.goto Winterspring,32.8,44.3,70,0
.goto Winterspring,37.4,44.2,70,0
.goto Winterspring,40.5,37.5,70,0
.goto Winterspring,43.6,42.6,70,0
.goto Winterspring,45.9,41.6,70,0
.goto Winterspring,47.9,45.1,70,0
.goto Winterspring,50.5,38.0,70,0
.goto Winterspring,60.6,33.7
>>Loot |cRXP_LOOT_Moontouched Feathers|r on the ground
>>|cRXP_WARN_You may skip this quest and complete it later if you wish|r
.complete 978,1
.isOnQuest 978
step
#completewith next
.goto Winterspring,62.334,36.609 << !Hunter
.goto Winterspring,60.389,37.917 << Hunter
.subzone 2255 >> Travel to Everlook
step << Hunter
#completewith next
.goto Winterspring,60.389,37.917
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azzleby|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Felpaw Ravager|r shortly
.target Azzleby
step
#label FlyFelwood
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maethrya|r
.fp Winterspring >> Get the Winterspring Flight Path
.fly Felwood >> Fly to Felwood << Hunter/Warlock
.zoneskip Winterspring,1
.target Maethrya
step << Hunter
.goto Felwood,62.19,17.11
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Felpaw Ravager|r to tame it|r 
.train 17267 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 7)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Felpaw Ravager
step << Hunter
.goto Felwood,51.22,29.61,70,0
.goto Felwood,49.66,34.65,70,0
.goto Felwood,39.23,36.84,70,0
.goto Felwood,38.38,41.71,70,0
.goto Felwood,38.56,50.18
>>|cRXP_WARN_Abandon your current|r |cRXP_FRIENDLY_Felpaw Ravager|r
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ironbeak Hunter|r or |cRXP_ENEMY_Angerclaw Mauler|r to tame it|r 
.train 2977 >>|cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 7)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Ironbeak Hunter
.mob Angerclaw Mauler
step << Warlock
#phase 4-6
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.isQuestComplete 8421
.turnin 8421 >> Turn in The Wrong Stuff
.target Impsy
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << !Mage
#completewith next
.hs >> Hearth to Ironforge
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laris Geardawdle|r
.turnin 4512 >> Turn in A Little Slime Goes a Long Way
.timer 10,A Little Slime Goes a Long Way RP
.accept 4513 >> Accept A Little Slime Goes a Long Way
.target Laris Geardawdle
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,27.18,8.60 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> Train your class spells
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Dink << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> Train your class spells
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
.goto Ironforge,69.294,83.568
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulbrek Firehand|r
.stable >> Withdraw your pet
.target Ulbrek Firehand
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.goto Ironforge,35.90,60.17
.bankwithdraw 11316 >> Withdraw the following items from your bank:
>>|T133941:0|t[Bloodpetal] 
.target Bailey Stonemantle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.goto Ironforge,35.90,60.17
.bankdeposit 12907,11955 >> Deposit the following items into your bank:
>>|T132788:0|t[Corrupt Moonwell Water] 
>>|T133622:0|t[Bag of Empty Ooze Containers] 
.target Bailey Stonemantle
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T133021:0|t[Mithril Casing] |cRXP_BUY_from the Auction House. You will need this later for a quest in Un'Goro Crater|r
>>|cRXP_WARN_Skip this step if you can't acquire one|r
.collect 10561,1,4244,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Priest
#ah
#phase 4-6
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy a|r |T134797:0|t[Ichor of Undeath] |cRXP_BUY_from the Auction House. You will need this later for your Sunken Temple class quest|r
>>|cRXP_WARN_Skip this step if you can't acquire one|r
.collect 7972,1,8256,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.506,47.746
.fly Wetlands >> Fly to Wetlands
.target Gryth Thurden
.zoneskip Ironforge,1
step
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> Take the boat to Theramore
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Janene|r
.goto Dustwallow Marsh,66.587,45.223
.home >> Set your Hearthstone to Theramore
.target Innkeeper Janene
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.300
.fly Feathermoon >> Fly to Feathermoon Stronghold
.target Baldruc
.zoneskip Dustwallow Marsh,1
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 53-54 Feralas/Azshara
#next 54-55 Un'Goro
step
.goto Feralas,30.632,42.706
.target Pratt McGrubben
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.accept 7733 >> Accept Improved Quality
step
.goto Feralas,31.777,45.498
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
.turnin 2943 >> Turn in Return to Troyas
.timer 13,Return to Troyas RP
.accept 2879 >> Accept The Stave of Equinex
.target Troyas Moonbreeze
step
#completewith next
.goto Feralas,44.810,43.423,60 >> Swim to |cRXP_FRIENDLY_Zorbin Fandazzle|r
step
#era
.goto Feralas,44.810,43.423
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
.accept 7003 >> Accept Zapped Giants
.accept 7721 >> Accept Fuel for the Zapping
.target Zorbin Fandazzle
step
#completewith next
>>Kill |cRXP_ENEMY_Sea Elementals|r and |cRXP_ENEMY_Sea Sprays|r. Loot them for their |cRXP_LOOT_Water Elemental Cores|r
.complete 7721,1 
.mob Sea Elemental
.mob Sea Spray
step
.goto Feralas,44.6,50.8,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,46.0,63.0,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,44.6,50.8,70,0
.goto Feralas,44.6,46.6,70,0
.goto Feralas,39.0,35.8,70,0
.goto Feralas,35.0,34.6,70,0
.goto Feralas,40.6,38.0,70,0
.goto Feralas,46.0,53.0
>>Kill |cRXP_ENEMY_Wave Striders|r, |cRXP_ENEMY_Deep Striders|r and |cRXP_ENEMY_Shore Striders|r. Loot them for their |cRXP_LOOT_Miniaturization Residues|r
.use 18904 >>|cRXP_WARN_Use|r [Zorbin's Ultra-Shrinker] |cRXP_WARN_to weaken them|r
.complete 7003,1 
.mob Wave Strider
.mob Deep Strider
.mob Shore Strider
step
.goto Feralas,44.6,50.8,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,46.0,63.0,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,44.6,50.8,70,0
.goto Feralas,44.6,46.6,70,0
.goto Feralas,39.0,35.8,70,0
.goto Feralas,35.0,34.6,70,0
.goto Feralas,40.6,38.0,70,0
.goto Feralas,46.0,53.0
>>Kill |cRXP_ENEMY_Sea Elementals|r and |cRXP_ENEMY_Sea Sprays|r. Loot them for their |cRXP_LOOT_Water Elemental Cores|r
.complete 7721,1 
.mob Sea Elemental
.mob Sea Spray
step
.goto Feralas,44.810,43.423
.target Zorbin Fandazzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
.turnin 7003 >> Turn in Zapped Giants
.turnin 7721 >> Turn in Fuel for the Zapping
step
.destroy 18904 >> Destroy |T133003:0|t[Zorbin's Ultra-Shrinker]
step
.goto Feralas,54.84,32.84
>>Kill |cRXP_ENEMY_Rage Scar Yetis|r, |cRXP_ENEMY_Elder Rage Scars|r and |cRXP_ENEMY_Ferocious Rage Scars|r. Loot them for their |cRXP_LOOT_Rage Scar Yeti Hide|r and |T134362:0|t[|cRXP_LOOT_Pristine Yeti Hide|r]
>>|cRXP_WARN_Use the |T134362:0|t[|cRXP_LOOT_Pristine Yeti Hide|r] to start the quest|r
>>|cRXP_WARN_If you do not find the |T134362:0|t[|cRXP_LOOT_Pristine Yeti Hide|r], skip it|r
.complete 7733,1 
.collect 18969,1,7735 
.disablecheckbox
.accept 7735 >> Accept Pristine Yeti Hide
.disablecheckbox
.use 18969 
.mob Rage Scar Yeti
.mob Elder Rage Scar
.mob Ferocious Rage Scar
step
.goto Feralas,45.118,25.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
.turnin 4142 >> Turn in A Visit to Gregan
.target Gregan Brewspewer
step
.isOnQuest 3909
.goto Feralas,45.118,25.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
>>|cRXP_BUY_Buy|r |T134006:0|t[Bait]
.collect 11141,1,3909,1 
.target Gregan Brewspewer
step
.goto Feralas,42.388,21.999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rockbiter|r
.accept 2844 >> Accept The Giant Guardian
.target Rockbiter
step
.isOnQuest 3909
#completewith next
.goto Feralas,44.627,10.568
.cast 14008 >> |cRXP_WARN_Place the|r |T134006:0|t[Bait] |cRXP_WARN_on the ground next to |cRXP_FRIENDLY_Miblon Snarltooth|r to distract him|r
.use 11141 
.target Miblon Snarltooth
step
.isOnQuest 3909
.goto Feralas,44.605,10.185,-1
.goto Feralas,44.517,10.220,-1
>>Loot the |cRXP_LOOT_Evoroot|r inside the Ruins
.collect 11242,1,3909,1 
.use 11141 
step
.isOnQuest 2879
>>Loot the |cRXP_PICK_Four Flames|r for the |cRXP_LOOT_Essences|r
.collect 9257,1,2879,1
.goto Feralas,40.538,12.657
.collect 9258,1,2879,1
.goto Feralas,38.507,15.790
.collect 9255,1,2879,1
.goto Feralas,37.750,12.177
.collect 9256,1,2879,1
.goto Feralas,39.927,9.436
step
.isOnQuest 2879
.goto Feralas,38.88,13.13
.use 9263 >>|cRXP_WARN_Use|r |T135145:0|t[Troyas' Stave] |cRXP_WARN_at the|r |cRXP_PICK_Equinex Monolith|r
.complete 2879,1
step
.goto Feralas,38.82,13.17
>>Click the |cRXP_PICK_Equinex Monolith|r
.turnin 2879 >> Turn in The Stave of Equinex
.accept 2942 >> Accept The Morrow Stone
step
#completewith next
>>Grind |cRXP_ENEMY_Harpies|r until your HS cooldown is <10 minutes
.cooldown item,6948,<10m
step
.goto Feralas,38.224,10.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay Leafrunner|r
>>|cRXP_WARN_This will start an escort quest|r
.turnin 2844 >> Turn in The Giant Guardian
.accept 2845,1 >> Accept Wandering Shay
.target Shay Leafrunner
step
.goto Feralas,38.252,10.293
>>Open |cRXP_PICK_Shay's Chest|r. Loot it for |T133706:0|t[|cRXP_LOOT_Shay's Bell|r]
.complete 2845,1 
.target Shay Leafrunner
step
.goto Feralas,42.38,22.00
>>Escort |cRXP_FRIENDLY_Shay Leafrunner|r to safety
.use 9189 >>|cRXP_WARN_Use|r |T133706:0|t[|cRXP_LOOT_Shay's Bell|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Shay|r wanders away from you|r
>>|cRXP_WARN_If you run too far away from her the quest will fail|r
.complete 2845,2 
.target Shay Leafrunner
step
.goto Feralas,42.388,21.999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rockbiter|r
.turnin 2845 >> Turn in Wandering Shay
.target Rockbiter
step
#hardcoreserver
.isOnQuest 3909
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
>>|cRXP_WARN_Blizzard has adjusted the quest [The Videre Elixir] so it will no longer kill you on Official Hardcore Servers|r
.accept 4041 >> Accept The Videre Elixir
.turnin 4041 >> Turn in The Videre Elixir
.complete 3909,1 
.target Gregan Brewspewer
step
#softcoreserver
.isOnQuest 3909
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
>>|cRXP_WARN_You may safely complete this quest as part of the quest chain for [The Videre Elixir]|r
.accept 4041 >> Accept The Videre Elixir
.turnin 4041 >> Turn in The Videre Elixir
.complete 3909,1 
.target Gregan Brewspewer
step
#completewith next
.goto Feralas,31.777,45.498
.subzone 1116 >> Travel to Feathermoon Stronghold. Swimming across is faster than waiting for the boat
step
.goto Feralas,31.777,45.498
.target Troyas Moonbreeze
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
.turnin 2942 >> Turn in The Morrow Stone
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 7733 >> Turn in Improved Quality
.turnin 7735 >> Turn in Pristine Yeti Hide
.itemcount 18969,1 
.use 18969 
.target Pratt McGrubben
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 7733 >> Turn in Improved Quality
.target Pratt McGrubben
step
#optional
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 7735 >> Turn in Pristine Yeti Hide
.itemcount 18969,1 
.use 18969 
.target Pratt McGrubben
step
.hs Theramore >> Hearth to Theramore
.zoneskip Feralas,1
step
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Ratchet >> Fly to Ratchet
.target Baldruc
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankwithdraw 12907,10444,10445 >> Withdraw the following items from your bank:
>>|T132788:0|t[Corrupt Moonwell Water] 
>>|T134537:0|t[Standard Issue Flare Gun] 
>>|T132594:0|t[Drawing Kit] 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,62.448,38.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv Rizzlefix|r
.accept 4502 >> Accept Volcanic Activity
.target Liv Rizzlefix
step
.goto The Barrens,62.500,38.546
>>Open |cRXP_PICK_Marvon's Chest|r. Loot it for the |cRXP_LOOT_Stone Circle|r
.complete 3444,1 
step
.goto The Barrens,62.050,39.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
.home >> Set your Hearthstone to Ratchet
.target Innkeeper Wiley
step
#label SpiritualAid
.goto The Barrens,65.827,43.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
.turnin 5158 >> Turn in Seeking Spiritual Aid
.timer 48,Seeking Spiritual Aid RP
.accept 5159 >> Accept Cleansed Water Returns to Felwood
.target Islen Waterseer
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankdeposit 12906,12383 >> Deposit the following items into your bank:
>>|T134754:0|t[Purified Moonwell Water] 
>>|T132926:0|t[Moontouched Feathers] (If you have them) 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Azshara >> Fly to Azshara
.target Bragok
.zoneskip Azshara
step << Mage
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
>>|cRXP_WARN_This will teleport you to the top of the mountain|r
.turnin 3503 >> Turn in Meeting with the Master
.target Sanath Lim-yo
step << Mage
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.turnin 8250 >> Turn in Magecraft
.accept 8251 >> Accept Magic Dust
.target Archmage Xylem
.isOnQuest 8250
step << Mage
#phase 4-6
#completewith KJI
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8151 >> Turn in The Hunter's Charm << Hunter
.accept 8153 >> Accept Courser Antlers << Hunter
.turnin 8254 >> Turn in Cenarion Aid << Priest
.accept 8255 >> Accept Of Coursers We Know << Priest
.target Ogtinc
step << Hunter/Priest
#phase 4-6
#completewith Missing
>>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Perfect Courser Antlers|r << Hunter
>>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Healthy Courser Glands|r << Priest
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.isOnQuest 8153 << Hunter
.isOnQuest 8255 << Priest
.mob Mosshoof Courser
step << Rogue
#phase 4-6
.goto Azshara,48.42,30.29,70,0
.goto Azshara,44.34,26.09,70,0
.goto Azshara,45.26,21.60
>>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Timbermaw Shamans|r. Loot them for the |cRXP_LOOT_Sealed Azure Bag|r
>>|cRXP_WARN_You may have to tick the [At War] checkbox for [Timbermaw Hold] in your Reputation pane to make them hostile towards you|r
.complete 8234,1 
.mob Timbermaw Shaman
step
#label KJI
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.accept 3601 >> Accept Kim'jael Indeed!
.target Kim'jael
step << Mage
#phase 4-6
#completewith next
>>Kill |cRXP_ENEMY_Blood Elf Reclaimers|r and |cRXP_ENEMY_Blood Elf Surveyors|r. Loot them for their |cRXP_LOOT_Glittering Dust|r
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
#era
.goto Azshara,55.97,29.98,30,0
.goto Azshara,56.55,28.36,30,0
.goto Azshara,57.71,31.13,50,0
.goto Azshara,59.17,31.93,40,0
.goto Azshara,58.96,28.23,30,0
.goto Azshara,56.55,28.36
>>Open the |cRXP_PICK_Kim'jael's Equipment|r. Loot it for |cRXP_LOOT_Kim'Jael's Compass|r, |cRXP_LOOT_Kim'Jael's Scope|r, |cRXP_LOOT_Kim'Jael's Stuffed Chicken|r and |cRXP_LOOT_Kim'Jael's Wizzlegoober|r
>>|cRXP_PICK_Kim'jael's Equipment|r |cRXP_WARN_boxes are scattered throughout the |cRXP_ENEMY_Blood Elf|r camp|r
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step << Mage
#phase 4-6
.goto Azshara,55.97,29.98,30,0
.goto Azshara,56.55,28.36,30,0
.goto Azshara,57.71,31.13,50,0
.goto Azshara,59.17,31.93,40,0
.goto Azshara,58.96,28.23,30,0
.goto Azshara,56.55,28.36
>>Kill |cRXP_ENEMY_Blood Elf Reclaimers|r and |cRXP_ENEMY_Blood Elf Surveyors|r. Loot them for their |cRXP_LOOT_Glittering Dust|r
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
#era
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.turnin 3601 >> Turn in Kim'jael Indeed!
.accept 5534 >> Accept Kim'jael's "Missing" Equipment
.target Kim'jael
step << Mage/Rogue
#phase 4-6
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
>>|cRXP_WARN_This will teleport you to the top of the mountain|r
.turnin 3503 >> Turn in Meeting with the Master
.target Sanath Lim-yo
step << Mage/Rogue
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.turnin 8251 >> Turn in Magic Dust << Mage
.accept 8252 >> Accept The Siren's Coral << Mage
.turnin 8234 >> Turn in Sealed Azure Bag << Rogue
.accept 8235 >> Accept Encoded Fragments << Rogue
.target Archmage Xylem
step << Rogue
#phase 4-6
.isQuestTurnedIn 8234
#completewith next
+|cRXP_WARN_Ensure you have to unticked the [At War] checkbox for [Timbermaw Hold] in your Reputation pane to make them non-hostile towards you again|r
step << Mage/Rogue
#completewith RuneRubbing
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Mage
#phase 4-6
#completewith RuneRubbing
>>Kill |cRXP_ENEMY_Spitelash Siren|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
.complete 8252,1 
.mob Spitelash Siren
.isOnQuest 8252
step
#completewith RuneRubbing
>>|cRXP_ENEMY_Spitelash Myrmidons|r and |cRXP_ENEMY_Spitelash Siren|r. Loot them for |cRXP_LOOT_Some Rune|r
.complete 5534,1 
.mob Spitelash Myrmidon
.mob Spitelash Siren
step
#label RuneRubbing
>>Click the |cRXP_PICK_Runes|r. Loot them for the |cRXP_LOOT_Rubbings|r
.complete 3449,2 
.goto Azshara,39.57,50.32
.complete 3449,1 
.goto Azshara,36.95,53.18
.complete 3449,3 
.goto Azshara,39.33,55.42
.complete 3449,4 
.goto Azshara,42.34,64.14
step << Mage
#phase 4-6
#completewith next
>>Kill |cRXP_ENEMY_Spitelash Sirens|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
.complete 8252,1 
.mob Spitelash Siren
.isOnQuest 8252
step
.goto Azshara,43.0,45.6,70,0
.goto Azshara,47.0,41.6,70,0
.goto Azshara,47.4,65.0,70,0
.goto Azshara,46.0,52.8
>>|cRXP_ENEMY_Spitelash Myrmidons|r and |cRXP_ENEMY_Spitelash Sirens|r. Loot them for |cRXP_LOOT_Some Rune|r
.complete 5534,1 
.mob Spitelash Myrmidon
.mob Spitelash Siren
step << Mage
#phase 4-6
.goto Azshara,43.0,45.6,70,0
.goto Azshara,47.0,41.6,70,0
.goto Azshara,47.4,65.0,70,0
.goto Azshara,46.0,52.8
>>Kill |cRXP_ENEMY_Spitelash Sirens|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
.complete 8252,1 
.mob Spitelash Siren
.isOnQuest 8252
step
#label Missing
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.turnin 5534 >> Turn in Kim'jael's "Missing" Equipment
.target Kim'jael
step << Rogue
#phase 4-6
.goto Azshara,66.6,25.6,70,0
.goto Azshara,68.8,29.4,70,0
.goto Azshara,74.2,29.6,70,0
.goto Azshara,76.6,25.0,70,0
.goto Azshara,80.8,24.6,70,0
.goto Azshara,86.6,19.6,70,0
.goto Azshara,74.6,12.6,70,0
.goto Azshara,69.0,27.6
>>Kill |cRXP_ENEMY_Forest Oozes|r. Loot them for their |cRXP_LOOT_Encoded Fragments|r
>>|cRXP_WARN_Cast|r |T133644:0|t[Pick Pocket] |cRXP_WARN_on them before you kill them|r
.complete 8235,1 
.mob Forest Ooze
.isOnQuest 8235
step << Mage/Rogue
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
>>|cRXP_WARN_This will teleport you to the top of the mountain|r
.turnin 3503 >> Turn in Meeting with the Master
.target Sanath Lim-yo
step << Mage/Rogue
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.turnin 8252 >> Turn in The Siren's Coral << Mage
.turnin 8235 >> Turn in Encoded Fragments << Rogue
.target Archmage Xylem
.isQuestComplete 8252 << Mage
.isQuestComplete 8235 << Rogue
step << Mage/Rogue
.dungeon ST
#phase 4-6
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.accept 8253 >> Accept Destroy Morphaz << Mage
.accept 8236 >> Accept The Azure Key << Rogue
.target Archmage Xylem
.isQuestTurnedIn 8235 << Rogue
.isQuestTurnedIn 8252 << Mage
step << Mage/Rogue
#completewith ArcaneRunes
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest
#phase 4-6
.goto Azshara,51.0,30.8,80,0
.goto Azshara,47.0,19.0,80,0
.goto Azshara,57.2,21.2,80,0
.goto Azshara,71.0,29.6,80,0
.goto Azshara,75.8,21.8,80,0
.goto Azshara,57.2,21.2
>>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Perfect Courser Antlers|r << Hunter
>>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Healthy Courser Glands|r << Priest
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
.isOnQuest 8153 << Hunter
.isOnQuest 8255 << Priest
step
.goto Azshara,56.55,28.36
.xp 53.5 >> Grind |cRXP_ENEMY_Blood Elves|r until you are 50% into level 53
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step << Hunter/Priest
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8153 >> Turn in Courser Antlers << Hunter
.accept 8231 >> Accept Wavethrashing << Hunter
.turnin 8255 >> Turn in Of Coursers We Know << Priest
.accept 8256 >> Accept The Ichor of Undeath << Priest
.target Ogtinc
.isQuestComplete 8153 << Hunter
.isQuestComplete 8255 << Priest
step << Hunter
#phase 4-6
.goto Azshara,88.69,25.88,70,0
.goto Azshara,87.0,9.0
.goto Azshara,54.2,42.2,0
.goto Azshara,59.2,35.6,0
.goto Azshara,71.6,36.8,0
.goto Azshara,90.4,33.6,0
.goto Azshara,88.69,25.88,0
>>Kill |cRXP_ENEMY_Wavethrashers|r. Loot them for their |cRXP_LOOT_Wavethrasher Scales|r
>>|cRXP_WARN_These can be hard to find. Ensure to use|r |T132328:0|t[Track Beasts] |cRXP_WARN_and cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_around the coast to find them faster|r
.complete 8231,1 
.isOnQuest 8231
.mob Wavethrasher
.mob Young Wavethrasher
.mob Great Wavethrasher
step << Priest
#phase 4-6
.goto Azshara,17.12,69.00,60,0
.goto Azshara,14.22,72.74,60,0
.goto Azshara,17.12,69.00
>>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r. Loot them for an |cRXP_LOOT_Ichor of Undeath|r
.complete 8256,1 
.mob Highborne Apparition
.mob Highborne Lichling
step << Hunter/Priest
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8231 >> Turn in Wavethrashing << Hunter
.turnin 8256 >> Turn in The Ichor of Undeath << Priest
.target Ogtinc
.isQuestComplete 8231 << Hunter
.isQuestComplete 8256 << Priest
step << Hunter/Priest
.dungeon ST
#phase 4-6
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.accept 8232 >> Accept The Green Drake << Hunter
.accept 8257 >> Accept Blood of Morphaz << Priest
.target Ogtinc
step
#completewith ArcaneRunes
.goto Azshara,60.11,73.02,150,0
.goto Azshara,72.71,75.91,150,0
.goto Azshara,77.800,91.327,20 >> Swim around to the small island with the Landing Pad
step
#completewith next
.cast 12283 >>|cRXP_WARN_Use the|r |T134537:0|t[Standard Issue Flare Gun] |cRXP_WARN_while on top of the Landing Pad and wait for |cRXP_FRIENDLY_Pilot Xiggs Fuselighter|r to arrive|r
.timer 40,Arcane Runes RP
.use 10444
step
#label ArcaneRunes
.goto Azshara,77.800,91.327
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Xiggs Fuselighter|r
.turnin 3449 >> Turn in Arcane Runes
.accept 3461 >> Accept Return to Tymor
.target Pilot Xiggs Fuselighter
step
.destroy 10444 >> Destroy the |T134537:0|t[Standard Issue Flare Gun]
step << Mage
#completewith next
.zone Ironforge >>Teleport to Ironforge
.xp <54,1
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
.trainer >> Train your class spells
.target Dink
.xp <54,1
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
#phase 1-3
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.trainer >> Train your class spells
.target Loganaar
step << Druid
#phase 4-6
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.trainer >> Train your class spells
.accept 9063 >> Accept Torwa Pathfinder
.target Loganaar
step
#completewith FlyTanaris
.hs >> Hearth to Ratchet
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#label FlyTanaris
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Tanaris >> Fly to Tanaris
.target Bragok
.zoneskip The Barrens,1
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 54-55 Un'Goro
#next 55-56 Felwood II
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 11018,8526,11955 >> Withdraw the following items from your bank:
>>|T133849:0|t[Un'Goro Soil] (If you have any) 
>>|T134527:0|t[Violet Tragan] 
>>|T133622:0|t[Bag of Empty Ooze Containers] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 10445 >> Deposit the following items into your bank:
>>|T132594:0|t[Drawing Kit] 
.target Gimblethorn
step
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Tanaris>> Fly to Tanaris
.target Bragok
step
.goto Tanaris,51.059,26.873
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2641 >> Turn in Sprinkle's Secret Ingredient
.accept 2661 >> Accept Delivery for Marin
.target Sprinkle
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4493 >> Turn in March of the Silithid
.accept 4496 >> Accept Bungle in the Jungle
.target Alchemist Pestlezugg
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2661 >> Turn in Delivery for Marin
.accept 2662 >> Accept Noggenfogger Elixir
.turnin 2662 >> Turn in Noggenfogger Elixir
.target Marin Noggenfogger
step
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3444 >> Turn in The Stone Circle
.target Marvon Rivetseeker
step
#completewith Pylons
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Un'Goro>> Fly to Un'Goro
.target Bera Stonehammer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r and |cRXP_FRIENDLY_Hol'anyee Marshal|r
.accept 3881 >> Accept Expedition Salvation
.target +Williden Marshal
.goto Un'Goro Crater,43.947,7.137
.accept 3883 >> Accept Alien Ecology
.goto Un'Goro Crater,43.889,7.240
.target +Hol'anyee Marshal
step
.goto Un'Goro Crater,43.497,7.420
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
.accept 3882 >> Accept Roll the Bones
.target Spark Nilminer
step
#completewith next
.use 11955 >> |cRXP_WARN_Open the|r |T133622:0|t[Bag of Empty Ooze Containers]
.collect 11953,10 
step
#label Pylons
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4285 >> Accept The Northern Pylon
.accept 4287 >> Accept The Eastern Pylon
.accept 4288 >> Accept The Western Pylon
.target J.D. Collie
step
.goto Un'Goro Crater,43.533,8.436
>>Click the |cRXP_PICK_Wanted Poster|r
.accept 4501 >> Accept Beware of Pterrordax
step
.goto Un'Goro Crater,43.615,8.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
.accept 4492 >> Accept Lost!
.target Spraggle Frock
step
.goto Un'Goro Crater,44.232,11.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
.accept 4503 >> Accept Shizzle's Flyer
.target Shizzle
step
#completewith NorthPylon
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Young Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
#completewith NorthPylon
>>Kill |cRXP_ENEMY_Pterrordaxes|r and |cRXP_ENEMY_Fledgling Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
#label NorthPylon
.goto Un'Goro Crater,56.503,12.492
>>Click the |cRXP_PICK_Northern Crystal Pylon|r
.complete 4285,1 
.skipgossip
step
#completewith Bait
>>Kill |cRXP_ENEMY_Pterrordaxes|r and |cRXP_ENEMY_Fledgling Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
#completewith Bait
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Young Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
#completewith Bait
>>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,68.541,36.539
>>Loot the |cRXP_LOOT_Crate of Foodstuffs|r on the ground
.complete 3881,1 
step
.goto Un'Goro Crater,77.225,49.980
>>Click the |cRXP_PICK_Eastern Crystal Pylon|r
.complete 4287,1 
.skipgossip
step << !Druid
#label Bait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4292 >> Accept The Bait for Lar'korwi
.target Torwa Pathfinder
step << Druid
#phase 1-3
#label Bait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4292 >> Accept The Bait for Lar'korwi
.target Torwa Pathfinder
step << Druid
#phase 4-6
#label Bait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4292 >> Accept The Bait for Lar'korwi
.turnin 9063 >> Turn in Torwa Pathfinder
.accept 9052 >> Accept Bloodpetal Poison
.target Torwa Pathfinder
step
.group
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4289 >> Accept The Apes of Un'Goro
.target Torwa Pathfinder
step
.use 11568 >> |cRXP_WARN_Open|r |T133635:0|t[Torwa's Pouch] |cRXP_WARN_for the|r |T133970:0|t[Preserved Threshadon Meat] |cRXP_WARN_and|r |T134743:0|t[Preserved Pheromone Mixture]
.collect 11569,1,4292,1 
.collect 11570,1,4292,1 
step << Druid
#phase 4-6
#completewith GlandWallSample
>>Open the |cRXP_PICK_Bloodpetal Sprouts|r on the ground. Loot them for |cRXP_LOOT_Bloodcaps|r
.complete 9052,2 
.isOnQuest 9052
step
#completewith GlandWallSample
>>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
#completewith FinishBait
>>Kill |cRXP_ENEMY_Pterrordaxes|r and |cRXP_ENEMY_Fledgling Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
.goto Un'Goro Crater,79.929,49.896
>>|cRXP_WARN_Use the|r |T133970:0|t[Preserved Threshadon Meat] |cRXP_WARN_on the stone-slab, then use the|r |T134743:0|t[Preserved Pheromone Mixture] |cRXP_WARN_on it to summon|r |cRXP_ENEMY_Lar'korwi|r
>>Kill |cRXP_ENEMY_Lar'korwi|r. Loot him for his |cRXP_LOOT_Head|r
.use 11568 
.use 11569 
.use 11570 
.complete 4292,1 
.mob Lar'korwi
step
#label FinishBait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4292 >> Turn in The Bait for Lar'korwi
.target Torwa Pathfinder
step
#completewith GlandWallSample
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Young Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
.goto Un'Goro Crater,56.3,90.6,40,0
.goto Un'Goro Crater,44.3,90.4,40,0
.goto Un'Goro Crater,56.3,90.6,40,0
.goto Un'Goro Crater,44.1,66.2,70,0
.goto Un'Goro Crater,53.5,62.9,70,0
.goto Un'Goro Crater,52.3,69.8,70,0
.goto Un'Goro Crater,44.3,90.4
>>Kill |cRXP_ENEMY_Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
>>|cRXP_WARN_You don't need to collect all |cRXP_LOOT_Webbed Pterrordax Scales|r right now|r
.complete 4501,1 
.complete 4503,2 
.disablecheckbox
.mob Pterrordax
step
#label GlandWallSample
.goto Un'Goro Crater,49.93,81.70,70 >> Enter The Slithering Scar Hive
.isOnQuest 4496,3883
step << Druid
#phase 4-6
.isOnQuest 9052
#completewith ScentGland
>>Kill |cRXP_ENEMY_Gorishi Stingers|r and |cRXP_ENEMY_Gorishi Wasps|r. Loot them for their |cRXP_LOOT_Gorishi Stings|r
.complete 9052,1 
.mob Gorishi Wasp
.mob Gorishi Stinger
step
#completewith next
>>Kill the |cRXP_ENEMY_Gorishi|r. Loot them for their |cRXP_LOOT_Gorishi Scent Gland|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
step
.goto Un'Goro Crater,48.671,85.322
>>|cRXP_WARN_Enter The Slithering Scar Hive|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Unused Scraping Vial] |cRXP_WARN_in the centre of the circular room|r
.complete 3883,1 
step
#label ScentGland
.goto Un'Goro Crater,44.8,75.6,70,0
.goto Un'Goro Crater,45.0,83.6,70,0
.goto Un'Goro Crater,55.0,83.6,70,0
.goto Un'Goro Crater,54.4,76.4,70,0
.goto Un'Goro Crater,48.8,85.3
>>Kill the |cRXP_ENEMY_Gorishi|r. Loot them for their |cRXP_LOOT_Gorishi Scent Gland|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
step << Druid
#phase 4-6
.isOnQuest 9052
.goto Un'Goro Crater,44.8,75.6,70,0
.goto Un'Goro Crater,45.0,83.6,70,0
.goto Un'Goro Crater,55.0,83.6,70,0
.goto Un'Goro Crater,54.4,76.4,70,0
.goto Un'Goro Crater,48.8,85.3
>>Kill |cRXP_ENEMY_Gorishi Stingers|r and |cRXP_ENEMY_Gorishi Wasps|r. Loot them for their |cRXP_LOOT_Gorishi Stings|r
.complete 9052,1 
.mob Gorishi Wasp
.mob Gorishi Stinger
step << Druid
#phase 4-6
.isOnQuest 9052
#completewith UngoroAsh
>>Open the |cRXP_PICK_Bloodpetal Sprouts|r on the ground. Loot them for |cRXP_LOOT_Bloodcaps|r
.complete 9052,2 
step
#completewith WesternPylon
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith WesternPylon
>>Kill |cRXP_ENEMY_Frenzied Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#completewith WesternPylon
>>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,38.457,66.066
>>Loot the |cRXP_LOOT_Research Equipment|r on the ground
.complete 3881,2 
step
.goto Un'Goro Crater,30.928,50.438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
.accept 974 >> Accept Finding the Source
.target Krakle
step
#label WesternPylon
.goto Un'Goro Crater,23.827,59.201
>>Click the |cRXP_PICK_Western Crystal Pylon|r
.complete 4288,1 
.skipgossip
step
#completewith CompletePterro
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith CompletePterro
>>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
#label CompletePterro
.goto Un'Goro Crater,20.6,60,40,70,0
.goto Un'Goro Crater,22.4,50.0,70,0
.goto Un'Goro Crater,22.2,41,0,70,0
.goto Un'Goro Crater,34.8,29.4,70,0
.goto Un'Goro Crater,39.6,42.2,70,0
.goto Un'Goro Crater,36.8,76.6,70,0
.goto Un'Goro Crater,24.6,61.6
>>Kill |cRXP_ENEMY_Frenzied Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#completewith next
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
.goto Un'Goro Crater,27.0,44.8,70,0
.goto Un'Goro Crater,34.6,28.6,70,0
.goto Un'Goro Crater,42.8,54.6,70,0
.goto Un'Goro Crater,37.0,73.4,70,0
.goto Un'Goro Crater,28.4,60.8
>>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
>>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,27.0,44.8,70,0
.goto Un'Goro Crater,34.6,28.6,70,0
.goto Un'Goro Crater,42.8,54.6,70,0
.goto Un'Goro Crater,37.0,73.4,70,0
.goto Un'Goro Crater,28.4,60.8
>>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
>>|cRXP_LOOT_Dinosaur Bones|r |cRXP_WARN_may also be looted from the ground. The location is marked on your map to the southwest|r
.complete 3882,1 
.goto Un'Goro Crater,31.04,77.70,0
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith next
.goto Un'Goro Crater,47.1,47.1,10,0
.goto Un'Goro Crater,47.7,48.3,10,0
.goto Un'Goro Crater,48.2,50.1,10,0
.goto Un'Goro Crater,48.67,49.33,15,0
.goto Un'Goro Crater,48.02,47.05,10,0
.goto Un'Goro Crater,48.81,45.94,10 >> |cRXP_WARN_Travel up the Lava Path of Fire Plume Ridge for a shortcut to the top. Follow the Arrow precisely|r
step
.goto Un'Goro Crater,49.631,45.694
.use 12472 >>|cRXP_WARN_Use|r |T132995:0|t[Krakle's Thermometer] |cRXP_WARN_atop Fire Plume Ridge at the Hot Spot|r
.complete 974,1 
step
.goto Un'Goro Crater,30.928,50.438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
.turnin 974 >> Turn in Finding the Source
.accept 980 >> Accept The New Springs
.target Krakle
step
#label UngoroAsh
.goto Un'Goro Crater,45.4,45.2,70,0
.goto Un'Goro Crater,46,0,56.6,70,0
.goto Un'Goro Crater,56.6,55.6,70,0
.goto Un'Goro Crater,53.8,41.6,70,0
.goto Un'Goro Crater,49.8,53.4
>>Kill |cRXP_ENEMY_Scorching Elementals|r and |cRXP_ENEMY_Living Blazes|r. Loot them for their |cRXP_LOOT_Ash|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
step << Druid
#phase 4-6
.isOnQuest 9052
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>Open the |cRXP_PICK_Bloodpetal Sprouts|r on the ground. Loot them for |cRXP_LOOT_Bloodcaps|r
.complete 9052,2 
step << Druid
#phase 4-6
.isQuestComplete 9052
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 9052 >> Turn in Bloodpetal Poison
.accept 9051 >> Accept Toxic Test
.target Torwa Pathfinder
step << Druid
#phase 4-6
.isOnQuest 9051
>>Look for a |cRXP_ENEMY_Devilsaur|r or |cRXP_ENEMY_Ironhide Devilsaur|r. Avoid |cRXP_ENEMY_Tyrant Devilsaurs|r
>>|cRXP_WARN_You should be able to see their patrols on your map|r
>>|cRXP_WARN_The way you do this is spamming|r |T136090:0|t[Hibernate]|cRXP_WARN_. You should only spam|r |T136090:0|t[Hibernate] |cRXP_WARN_and nothing else. If it breaks early start spamming|r |T136090:0|t[Hibernate] |cRXP_WARN_again, they run with 170% movement speed so you can't outrun a|r |cRXP_ENEMY_Devilsaur|r
>>|cRXP_WARN_Use the|r |T135125:0|t[Devilsaur Barb] |cRXP_WARN_on it once it has been|r |T136090:0|t[Hibernated]
>>|cRXP_WARN_Shift into|r |T132144:0|t[Travel Form] |cRXP_WARN_and run away to reset it after|r
.complete 9051,1 
.use 22432 
.unitscan Devilsaur
.unitscan Ironhide Devilsaur
step << Druid
#phase 4-6
.isQuestComplete 9051
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 9051 >> Turn in Toxic Test
.target Torwa Pathfinder
step
.goto Un'Goro Crater,51.909,49.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ringo|r
.turnin 4492 >> Turn in Lost!
.accept 4491,1 >> Accept A Little Help From My Friends
>>|cRXP_WARN_This will start an escort quest|r
.target Ringo
step
.goto Un'Goro Crater,43.617,8.497
>>Escort |cRXP_FRIENDLY_Ringo|r to Marshal's Refuge
.use 11804 >> |cRXP_WARN_Use|r |T132805:0|t[Spraggle's Canteen] |cRXP_WARN_on him when he faints and stops following you|r
.complete 4491,1 
.target Ringo
step
.goto Un'Goro Crater,43.617,8.497
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
.turnin 4491 >> Turn in A Little Help From My Friends
.turnin 4501 >> Turn in Beware of Pterrordax
.target Spraggle Frock
step
.goto Un'Goro Crater,43.497,7.420
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
.turnin 3882 >> Turn in Roll the Bones
.target Spark Nilminer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r and |cRXP_FRIENDLY_Hol'anyee Marshal|r
.turnin 3883 >> Turn in Alien Ecology
.target +Hol'anyee Marshal
.goto Un'Goro Crater,43.889,7.240
.turnin 3881 >> Turn in Expedition Salvation
.goto Un'Goro Crater,43.947,7.137
.target +Williden Marshal
step
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 4285 >> Turn in The Northern Pylon
.turnin 4287 >> Turn in The Eastern Pylon
.turnin 4288 >> Turn in The Western Pylon
.accept 4321 >> Accept Making Sense of It
.turnin 4321 >> Turn in Making Sense of It
.target J.D. Collie
step
#completewith AADS
.destroy 11482 >> Destroy the |T133740:0|t[Crystal Pylon User's Manual]
step
.goto Un'Goro Crater,44.232,11.586
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
.turnin 4503 >> Turn in Shizzle's Flyer
.target Shizzle
step
.group
.goto Un'Goro Crater,46.378,13.444
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
.accept 4243 >> Accept Chasing A-Me 01
.target Karna Remtravel
step
.group
#completewith next
.goto Un'Goro Crater,63.66,16.56
.subzone 542 >> Travel to Fungal Rock
step
.group 2
.goto Un'Goro Crater,63.66,16.56,70,0
.goto Un'Goro Crater,65.47,16.48
>>Kill |cRXP_ENEMY_Un'Goro Gorillas|r, |cRXP_ENEMY_Un'Goro Stompers|r and |cRXP_ENEMY_Un'Goro Thunderer|r. Loot them for their |cRXP_LOOT_Pelts|r
>>|cRXP_ENEMY_Un'Goro Gorillas|r |cRXP_WARN_will call for help at low health, pay attention to your surroundings when this happens|r
>>|cRXP_ENEMY_Un'Goro Stompers|r |cRXP_WARN_will|r |T136224:0|t[Enrage] |cRXP_WARN_at low health|r
>>|cRXP_ENEMY_Un'Goro Thunderer|r |cRXP_WARN_cast a high damage|r |T136105:0|t[Thunderclap]
.complete 4289,1 
.mob +Un'Goro Gorilla
.complete 4289,2 
.mob +Un'Goro Stomper
.complete 4289,3 
.mob +Un'Goro Thunderer
step
.group
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4289 >> Turn in The Apes of Un'Goro
.accept 4301 >> Accept The Mighty U'cha
.target Torwa Pathfinder
step << skip
#som
#phase 3-6
.goto Un'Goro Crater,46.86,15.11,100,0
.goto Un'Goro Crater,42.03,21.77,100,0
.goto Un'Goro Crater,49.54,20.49,100,0
.goto Un'Goro Crater,52.00,27.21,100,0
.goto Un'Goro Crater,64.11,24.14,100,0
.goto Un'Goro Crater,59.65,31.29
>>Kill the Tar Beasts in the area. Loot them for their Tar
>>Be careful as the Tar Lords cast Entangling Roots << !Warrior !Rogue !Paladin
>>Be careful as the Tar Lords cast Entangling Roots, and all Tar Beasts have a thorns-like effect where you can be Disarmed for 4 seconds << Warrior/Rogue/Paladin
.complete 4504,1 
step
.group
#completewith AMe
.goto Un'Goro Crater,63.66,16.56
.subzone 542 >> Travel to Fungal Rock
step
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.turnin 4243 >> Turn in Chasing A-Me 01
.itemcount 10561,<1 
.target A-Me 01
step
#label AMe
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
>>|cRXP_WARN_Don't accept the follow up yet|r
.turnin 4243 >> Turn in Chasing A-Me 01
.itemcount 10561,1 
.target A-Me 01
step
.group
.goto Un'Goro Crater,68.49,12.18
>>Kill |cRXP_ENEMY_U'cha|r. Loot him for his |cRXP_LOOT_Pelt|r
.complete 4301,1 
.mob U'cha
step
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.accept 4244 >> Accept Chasing A-Me 01
.turnin 4244 >> Turn in Chasing A-Me 01
.accept 4245 >> Accept Chasing A-Me 01
.itemcount 10561,1 
.target A-Me 01
step
.isQuestTurnedIn 4244
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.accept 4245 >> Accept Chasing A-Me 01
.target A-Me 01
step
.group 2
.isOnQuest 4245
.goto Un'Goro Crater,46.378,13.444
>>Escort |cRXP_FRIENDLY_A-Me 01|r to |cRXP_FRIENDLY_Karna Remtravel|r at Marshal's Refuge
.complete 4245,1 
.target A-Me 01
step
.group
.isQuestComplete 4245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
.turnin 4245 >>Turn in Chasing A-Me 01
.target Karna Remtravel
step
.isQuestTurnedIn 3764 
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground
.collect 11018,5,4496,1 
step
.isQuestAvailable 3764 
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground
.collect 11018,25,4496,1
step
.group
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4301 >> Turn in The Mighty U'cha
.target Torwa Pathfinder
step
.abandon 4301 >> Abandon The Mighty U'cha
step
.abandon 4243 >> Abandon Chasing A-Me 01
step
.solo
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fly Tanaris >> Fly to Gadgetzan
.target Gryfe
.zoneskip Un'Goro Crater,1
step
.group
#completewith next
.goto Tanaris,50.88,26.96
.subzone 976 >> Travel to Tanaris
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4496 >> Turn in Bungle in the Jungle
.target Alchemist Pestlezugg
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankwithdraw 12906,12383 >> Withdraw the following items from your bank:
>>|T134754:0|t[Purified Moonwell Water] 
>>|T132926:0|t[Moontouched Feathers] (If you have them) 
.target Gimblethorn
step
.isOnQuest 4513
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
.bankdeposit 11954 >> Deposit the following items into your bank:
>>|T134836:0|t[Filled Pure Sample Jar] 
.target Gimblethorn
step << skip
#som
#phase 3-6
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 4504 >> Turn in Super Sticky
step
#era/som
.hs >> Hearth to Ratchet
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#era/som
.goto The Barrens,62.448,38.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv Rizzlefix|r
.turnin 4502 >> Turn in Volcanic Activity
.target Liv Rizzlefix
step << Mage
#completewith Morrowgrain
.zone Darnassus >> Teleport to Darnassus
step << !Mage
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Teldrassil >> Fly to Teldrassil
.target Bragok
.zoneskip The Barrens,1
step << !Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 978 >> Accept Moontouched Wildkin
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r up stairs
.accept 5250 >> Accept Starfall
.target Daryn Lightwind
step << !Mage
#completewith Morrowgrain
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step
#completewith AADS
.line Darnassus,36.6,42.4,37.6,16.2,52.6,19.2,56.6,8.8,65.4,15.8,60.8,23.4,62.4,55.6,68.0,59.2,63.8,72.2,60.2,67.8,49.2,80.8,39.6,74.6,38.6,47.0,61.6,40.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herald Moonstalker|r
>>|cRXP_FRIENDLY_Herald Moonstalker|r |cRXP_WARN_patrols throughout Darnassus|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find her faster|r << Hunter
.accept 1047 >> Accept The New Frontier
.unitscan Herald Moonstalker
step
.goto Darnassus,64.021,23.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raedon Duskstriker|r
>>Do the Darnassus cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7792 >> Turn in A Donation of Wool
.turnin 7798 >> Turn in A Donation of Silk
.turnin 7799 >> Turn in A Donation of Mageweave
.turnin 7800 >> Turn in A Donation of Runecloth
.target Raedon Duskstriker
step
#label AADS
.goto Darnassus,67.427,15.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Saelienne|r
.accept 3763 >> Accept Assisting Arch Druid Staghelm
.target Innkeeper Saelienne
step
.line Darnassus,36.6,42.4,37.6,16.2,52.6,19.2,56.6,8.8,65.4,15.8,60.8,23.4,62.4,55.6,68.0,59.2,63.8,72.2,60.2,67.8,49.2,80.8,39.6,74.6,38.6,47.0,61.6,40.6
.goto Darnassus,36.6,42.4,60,0
.goto Darnassus,37.6,16.2,60,0
.goto Darnassus,52.6,19.2,60,0
.goto Darnassus,56.6,8.8,50,0
.goto Darnassus,65.4,15.8,50,0
.goto Darnassus,60.8,23.4,50,0
.goto Darnassus,62.4,55.6,50,0
.goto Darnassus,68.0,59.2,50,0
.goto Darnassus,63.8,72.2,50,0
.goto Darnassus,60.2,67.8,50,0
.goto Darnassus,49.2,80.8,50,0
.goto Darnassus,39.6,74.6,50,0
.goto Darnassus,38.6,47.0,50,0
.goto Darnassus,61.6,40.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herald Moonstalker|r
>>|cRXP_FRIENDLY_Herald Moonstalker|r |cRXP_WARN_patrols throughout Darnassus|r
>>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find her faster|r << Hunter
.accept 1047 >> Accept The New Frontier
.unitscan Herald Moonstalker
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 3763 >> Turn in Assisting Arch Druid Staghelm
.accept 3764 >> Accept Un'Goro Soil
.turnin 1047 >> Turn in The New Frontier
.accept 6761 >> Accept The New Frontier
.target Arch Druid Fandral Staghelm
step
.goto Darnassus,31.485,8.237
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenal|r
.turnin 3764 >> Turn in Un'Goro Soil
.target Jenal
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.accept 3781 >> Accept Morrowgrain Research
.target Arch Druid Fandral Staghelm
step
#label Morrowgrain
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r on the middle floor
.turnin 3781 >> Turn in Morrowgrain Research
.turnin 6761 >> Turn in The New Frontier
.accept 6762 >> Accept Rabine Saturna
.target Mathrengyl Bearwalker
step << Druid
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.trainer >> Train your class spells
.target Mathrengyl Bearwalker
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
.goto Darnassus,58.718,34.905
.trainer >> Train your class spells
.target Arias'ta Bladesinger
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
.trainer >> Train your class spells
.target Jandria
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
.trainer >> Train your class spells
.target Syurna
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
.trainer >> Train your class spells
.target Jocaste
step
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Travel through the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step << Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 978 >> Accept Moontouched Wildkin
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r up stairs
.accept 5250 >> Accept Starfall
.target Daryn Lightwind
step
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Felwood >> Fly to Felwood
.target Vesprystus
.zoneskip Teldrassil,1
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 55-56 Felwood II
#next 56-57 Burning Steppes
step
#completewith next
.goto Felwood,55.78,17.11
.subzone 1768 >> Travel to Irontree Cavern
step
.goto Felwood,57.30,17.79
>>Kill |cRXP_ENEMY_Warpwood Moss Flayers|r and |cRXP_ENEMY_Warpwood Shredders|r. Loot them for their |cRXP_LOOT_Blood Ambers|r
.complete 4101,1 
.mob Warpwood Moss Flayer
.mob Warpwood Shredder
step
#completewith next
.goto Felwood,51.21,82.10
.subzone 2479 >> Travel to the Emerald Sanctuary
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5159 >> Turn in Cleansed Water Returns to Felwood
.target Greta Mosshoof
step
.group
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.accept 5165 >> Accept Dousing the Flames of Protection
.target Greta Mosshoof
step
.goto Felwood,50.889,81.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
.accept 5156 >> Accept Verifying the Corruption
.target Taronn Redfeather
step
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.accept 4421 >> Accept The Corruption of the Jadefire
.goto Felwood,51.350,81.511
.target Eridan Bluewind
step
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
.turnin 4101 >> Turn in Cleansing Felwood
.target Arathandris Silversky
step
.isQuestTurnedIn 4101
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
>>|cRXP_WARN_Select the option:|r "I need a Cenarion beacon."
.collect 11511,1 
.target Arathandris Silversky
step
.isQuestTurnedIn 4101
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
>>Kill |cRXP_ENEMY_Deadwood Warriors|r, |cRXP_ENEMY_Deadwood Pathfinders|r and |cRXP_ENEMY_Deadwood Gardeners|r. Loot them for their |cRXP_LOOT_Corrupted Soul Shards|r
.collect 11515,6,5882,1 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.isQuestTurnedIn 4101
.goto Felwood,54.20,86.80
.target Arathandris Silversky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
.accept 5882 >> Accept Salve via Hunting
.turnin 5882 >> Turn in Salve via Hunting
step
.isQuestTurnedIn 4101
#completewith next
+From this point on you may cleanse |cRXP_PICK_Corrupted Songflowers|r on the ground. After cleansing it, clicking on the |cRXP_PICK_Cleansed Songflower|r will provide a 5% crit buff as well as increasing all attributes by 15 for 1 hour
>>This requires you to use two |T132804:0|t[Cenarion Plant Salves]
step
.group 2
>>Kill |cRXP_ENEMY_Jadefire Felsworns|r, |cRXP_ENEMY_Jadefire Shadowstalkers|r, |cRXP_ENEMY_Jadefire Rogues|r and |cRXP_ENEMY_Xavathras|r
>>|cRXP_WARN_This area can be very dangerous. Be extremely cautious|r
>>|cRXP_ENEMY_Jadefire Felsworns|r |cRXP_WARN_cast|r |T136135:0|t[Cripple] |cRXP_WARN_which slows your movement speed|r
>>|cRXP_ENEMY_Jadefire Shadowstalkers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth] |cRXP_WARN_and patrol around, as well as apply a|r |T136093:0|t[Slowing Poison] |cRXP_WARN_which slows you for 25 seconds|r
.complete 4421,1 
.mob +Jadefire Felsworn
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,2 
.mob +Jadefire Shadowstalker
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,3 
.mob +Jadefire Rogue
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,4 
.goto Felwood,32.23,67.10
.mob +Xavathras
step
.group
#completewith eStart
.goto Felwood,35.367,58.376
.subzone 1770 >> Travel to Shadow Hold
step
.group 2
#completewith next
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
.group 2
>>Kill |cRXP_ENEMY_Jaedenar Enforcers|r, |cRXP_ENEMY_Jaedenar Darkweavers|r, |cRXP_ENEMY_Jaedenar Warlocks|r and |cRXP_ENEMY_Jaedenar Legionnaires|r. Loot them for a |T134235:0|t[|cRXP_LOOT_Blood Red Key|r]
>>|cRXP_WARN_Use the |T134235:0|t[|cRXP_LOOT_Blood Red Key|r] to start the quest|r
>>|cRXP_WARN_This will begin an escort quest. Start this escort even if you still need to Extinguish Braziers|r
.collect 13140,1,5202,1 
.accept 5202 >> Accept A Strange Red Key
.use 13140 
.mob Jaedenar Enforcer
.mob Jaedenar Darkweaver
.mob Jaedenar Warlock
.mob Jaedenar Legionnaire
step
.group 2
#label eStart
.goto Felwood,36.207,55.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Arko'narin|r
.turnin 5202 >> Turn in A Strange Red Key
.accept 5203,1 >> Accept Rescue From Jaedenar
.target Captured Arko'narin
step
.group 2
#completewith next
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
.group 2
.goto Felwood,35.44,59.01
>>|cRXP_WARN_Escort |cRXP_FRIENDLY_Arko'narin|r through Shadow Hold. Once you approach the final |cRXP_PICK_Brazier|r, 3 |cRXP_ENEMY_Felguards|r will spawn which you will have to deal with|r
>>|cRXP_WARN_After exiting Shadow Hold, you will need to kill the |cRXP_ENEMY_Spirit of Trey Lightforge|r. Let |cRXP_FRIENDLY_Arko'narin|r tank him as much as possible|r
.complete 5203,1 
.target Arko'narin
.mob Spirit of Trey Lightforge
step
.group 2
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
.group
.isQuestComplete 5165
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5165 >> Turn in Dousing the Flames of Protection
.accept 5242 >> Accept A Final Blow
.target Greta Mosshoof
step
.group
.isQuestTurnedIn 5165
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.accept 5242 >> Accept A Final Blow
.target Greta Mosshoof
step
.group
.abandon 5165 >> Abandon Dousing the Flames of Protection
step
.group
.isQuestComplete 5203
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.turnin 5203 >> Turn in Rescue From Jaedenar
.accept 5204 >> Accept Retribution of the Light
.target Jessir Moonbow
step
.group
.isQuestTurnedIn 5203
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.accept 5204 >> Accept Retribution of the Light
.target Jessir Moonbow
step
.group
.isQuestComplete 4421
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4421 >> Turn in The Corruption of the Jadefire
.accept 4906 >> Accept Further Corruption
.target Eridan Bluewind
step
.group
.isQuestTurnedIn 4421
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.accept 4906 >> Accept Further Corruption
.target Eridan Bluewind
step
.group
#completewith ShadowLord
.goto Felwood,35.367,58.376
.subzone 1770 >> Travel to Shadow Hold
step
.group 2
.isQuestTurnedIn 5203
.goto Felwood,38.499,50.414
>>Kill |cRXP_ENEMY_Rakaiah|r
.complete 5204,1 
.mob Rakaiah
step
.group 2
.isQuestTurnedIn 5203
.goto Felwood,38.499,50.414
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Remains of Trey Lightforge|r
.turnin 5204 >> Turn in Retribution of the Light
.accept 5385 >> Accept The Remains of Trey Lightforge
.target Remains of Trey Lightforge
step
.group 2
#label ShadowLord
.isQuestTurnedIn 5165
.goto Felwood,38.814,46.782
>>|cRXP_WARN_Continue further into Shadow Hold|r
>>Kill |cRXP_ENEMY_Salia|r, |cRXP_ENEMY_Moora|r and |cRXP_ENEMY_Shadow Lord Fel'dan|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_Kill |cRXP_ENEMY_Salia|r first as she casts|r |T136206:0|t[Mind Control]
.complete 5242,1 
.mob +Moora
.complete 5242,2 
.mob +Salia
.complete 5242,3 
.mob +Shadow Lord Fel'dan
step << skip
.group
#completewith next
.goto Felwood,38.744,47.008
+|cRXP_WARN_Perform a Logout skip on the Urn next to |cRXP_ENEMY_Shadow Lord Fel'dan|r to teleport to Irontree Woods|r
.link https://www.twitch.tv/videos/1219250841?t=02h06m57s >> |cRXP_WARN_Click here for video reference|r
.subzoneskip 1770,1
step
.group
#completewith next
subzone 2618 >> Exit Shadow Hold and head north to Jadefire Run
step
.group
.isQuestTurnedIn 4421
.goto Felwood,41.58,19.19,90,0
.goto Felwood,38.98,22.31
>>Kill |cRXP_ENEMY_Xavaric|r. Loot him for the |T133942:0|t[|cRXP_LOOT_Flute of Xavaric|r]
>>|cRXP_WARN_Use the |T133942:0|t[|cRXP_LOOT_Flute of Xavaric|r] to start the quest|r
.complete 4906,4 
.collect 11668,1,939,1 
.accept 939 >> Accept Flute of Xavaric
.use 11668 
.mob Xavaric
step
.group
.isQuestTurnedIn 4421
.goto Felwood,38.98,22.31,70,0
.goto Felwood,43.44,14.47,70,0
.goto Felwood,38.98,22.31,70,0
.goto Felwood,38.98,22.31
>>Kill |cRXP_ENEMY_Jadefire Hellcallers|r, |cRXP_ENEMY_Jadefire Betrayers|r and |cRXP_ENEMY_Jadefire Trickster|r. Loot them for their |cRXP_LOOT_Jadefire Felbinds|r
.complete 4906,1 
.mob +Jadefire Hellcaller
.complete 4906,2 
.mob +Jadefire Betrayer
.complete 4906,3 
.mob +Jadefire Trickster
.complete 939,1 
.mob +Jadefire Hellcaller
.mob +Jadefire Betrayer
.mob +Jadefire Trickster
step
>>Kill |cRXP_ENEMY_Entropic Beasts|r and |cRXP_ENEMY_Entropic Horrors|r
>>|cRXP_WARN_Be cautious of the Elite |cRXP_ENEMY_Infernals|r that patrol the Shatter Scar Vale|r
.complete 5156,1 
.mob +Entropic Beast
.goto Felwood,41.535,43.007,50,0
.goto Felwood,40.91,40.37,50,0
.goto Felwood,42.84,37.62,60,0
.goto Felwood,45.43,40.02,60,0
.goto Felwood,41.10,41.06
.complete 5156,2 
.mob +Entropic Horror
.goto Felwood,41.535,43.007,50,0
.goto Felwood,40.91,40.37,50,0
.goto Felwood,42.84,37.62,60,0
.goto Felwood,45.43,40.02,60,0
.goto Felwood,41.10,41.06
.complete 5156,3 
.goto Felwood,41.535,43.007
step
.goto Felwood,50.889,81.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
.turnin 5156 >> Turn in Verifying the Corruption
.target Taronn Redfeather
step
.group
.isQuestComplete 5242
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5242 >> Turn in A Final Blow
.target Greta Mosshoof
step
.group
.isOnQuest 5385
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.turnin 5385 >> Turn in The Remains of Trey Lightforge
.target Jessir Moonbow
step
.group
.isQuestComplete 4906
.isQuestComplete 939
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4906 >> Turn in Further Corruption
.turnin 939 >> Turn in Flute of Xavaric
.target Eridan Bluewind
step
.group
.isQuestComplete 4906
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4906 >> Turn in Further Corruption
.target Eridan Bluewind
step
.group
.isQuestComplete 939
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 939 >> Turn in Flute of Xavaric

.target Eridan Bluewind
step
.abandon 5242 >> Abandon A Final Blow
step
.abandon 5385 >> Abandon The Remains of Trey Lightforge
step
.abandon 4421 >> Abandon The Corruption of the Jadefire
step << Warlock
.dungeon ST
#phase 4-6
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.accept 8422 >> Accept Trolls of a Feather
.target Impsy
step
.goto Felwood,64.769,8.131
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.accept 8461 >> Accept Deadwood of the North
.target Nafien
step
.goto Felwood,62.61,10.12,70,0
.goto Felwood,62.73,7.31,70,0
.goto Felwood,61.33,7.46,70,0
.goto Felwood,59.79,5.92,70,0
.goto Felwood,62.61,10.12
>>Kill |cRXP_ENEMY_Deadwood Den Watchers|r, |cRXP_ENEMY_Deadwood Den Avengers|r and |cRXP_ENEMY_Deadwood Den Shamans|r
>>|cRXP_WARN_If you find the |T136232:0|t[|cRXP_LOOT_Deadwood Ritual Totem|r], don't start the quest from this item yet|r
.complete 8461,1 
.mob +Deadwood Den Watcher
.complete 8461,2 
.mob +Deadwood Avenger
.complete 8461,3 
.mob +Deadwood Shaman
step
.goto Felwood,62.61,10.12,70,0
.goto Felwood,62.73,7.31,70,0
.goto Felwood,61.33,7.46,70,0
.goto Felwood,59.79,5.92,70,0
.goto Felwood,62.61,10.12
.xp 55 >> Grind Furbolgs to level 55
step
.goto Felwood,64.769,8.131
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8461 >> Turn in Deadwood of the North
.accept 8465 >> Accept Speak to Salfa
.target Nafien
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
>>|cRXP_WARN_If you have more than 5|r |T132926:0|t[Deadwood Headdress Feathers] |cRXP_WARN_you may turn them in for reputation with Timbermaw Hold|r
.dailyturnin 8467 >> Turn in Feathers for Nafien
.itemcount 21377,>5 
.target Nafien
step
#completewith next
.goto Felwood,65.48,3.47,20 >> Travel through Timbermaw Hold to |cRXP_FRIENDLY_Kernda|r
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernda|r
>>|cRXP_FRIENDLY_Kernda|r |cRXP_WARN_patrols the lower Timbermaw Hold path|r
.use 20741 >>|cRXP_WARN_Use the |T136232:0|t[|cRXP_LOOT_Deadwood Ritual Totem|r] to start the quest|r
>>Skip this step if you aren't neutral with Timbermaw Hold
.accept 8470 >> Accept Deadwood Ritual Totem
.turnin 8470 >> Turn in Deadwood Ritual Totem
.reputation 576,neutral,<0,1 
.itemcount 20741,1 
.target Kernda
step
.goto Felwood,65.692,2.810
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meilosh|r
>>Skip this step if you aren't friendly with Timbermaw Hold
.accept 6031 >> Accept Runecloth
.turnin 6031 >> Turn in Runecloth
.reputation 576,friendly,<0,1 
.itemcount 14047,30 
.target Meilosh
step
#completewith next
.goto Winterspring,27.736,34.499,20 >> Travel through Timbermaw Hold to |cRXP_FRIENDLY_Salfa|r in Winterspring
step
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8465 >> Turn in Speak to Salfa
.accept 8464 >> Accept Winterfall Activity
.target Salfa
step
#softcoreserver
.isQuestComplete 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_Do not accept the follow up Meet at the Grave|r
.turnin 3909 >> Turn in The Videre Elixir
.turnin 980 >> Turn in The New Springs
.accept 5082 >> Accept Threat of the Winterfall
.target Donova Snowden
step
#softcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 980 >> Turn in The New Springs
.accept 5082 >> Accept Threat of the Winterfall
.target Donova Snowden
step
#softcoreserver
.destroy 11243 >> Delete any |T134813:0|t[Videre Elixirs] you have
step
#hardcoreserver
.isQuestComplete 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_Blizzard has adjusted the quest chain for [The Videre Elixir] so it will no longer kill you on Official Hardcore Servers|r
.turnin 3909 >> Turn in The Videre Elixir
.accept 3912 >> Accept Meet at the Grave
.turnin 980 >> Turn in The New Springs
.accept 5082 >> Accept Threat of the Winterfall
.target Donova Snowden
step
#hardcoreserver
.isQuestTurnedIn 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_Blizzard has adjusted the quest chain for [The Videre Elixir] so it will no longer kill you on Official Hardcore Servers|r
.accept 3912 >> Accept Meet at the Grave
.turnin 980 >> Turn in The New Springs
.accept 5082 >> Accept Threat of the Winterfall
.target Donova Snowden
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 980 >> Turn in The New Springs
.accept 5082 >> Accept Threat of the Winterfall
.target Donova Snowden
step
.goto Winterspring,42.3,42.6,70,0
.goto Winterspring,33.8,36.2,70,0
.goto Winterspring,30.1,35.6,90,0
.goto Winterspring,41.3,43.3
>>Kill |cRXP_ENEMY_Winterfall Pathfinders|r, |cRXP_ENEMY_Winterfall Den Watchers|r and |cRXP_ENEMY_Winterfall Totemics|r. Loot them for a |T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r]
.use 12771 >>|cRXP_WARN_Use the |T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r] to start the quest|r
>>|cRXP_WARN_Ignore the quest to kill the |cRXP_ENEMY_Winterfall|r for now, just loot the|r |T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r] |cRXP_WARN_and move on|r
.collect 12771,1,5083,1 
.accept 5083 >> Accept Winterfall Firewater
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5083 >> Turn in Winterfall Firewater
.accept 5084 >> Accept Falling to Corruption
.target Donova Snowden
step
.goto Winterspring,32.8,44.3,70,0
.goto Winterspring,37.4,44.2,70,0
.goto Winterspring,40.5,37.5,70,0
.goto Winterspring,43.6,42.6,70,0
.goto Winterspring,45.9,41.6,70,0
.goto Winterspring,47.9,45.1,70,0
.goto Winterspring,50.5,38.0,70,0
.goto Winterspring,60.6,33.7
>>Loot |cRXP_LOOT_Moontouched Feathers|r on the ground
.complete 978,1
.isOnQuest 978
step
#completewith next
.goto Winterspring,61.348,38.973
.subzone 2255 >> Travel to Everlook
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregor Greystone|r and |cRXP_FRIENDLY_Jessica Redpath|r
.accept 6028 >> Accept The Everlook Report
.accept 6030 >> Accept Duke Nicholas Zverenhoff
.target +Gregor Greystone
.goto Winterspring,61.348,38.973
.accept 5601 >> Accept Sister Pamela
.goto Winterspring,61.281,38.981
.target +Jessica Redpath
step
.hs >> Hearth to Ratchet
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip Winterspring,1
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankdeposit 15788,15790,20741 >> Deposit the following items into your bank:
>>|T134942:0|t[Everlook Report] 
>>|T133737:0|t[Studies in Spirit Speaking] 
>>|T136232:0|t[Deadwood Ritual Totem] (If you have it) 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
.bankwithdraw 10575,11954,10445 >> Withdraw the following items from your bank:
>>|T134430:0|t[Black Dragonflight Molt] (If you have it) 
>>|T134836:0|t[Filled Pure Sample Jar] 
>>|T132594:0|t[Drawing Kit] 
.target Fuzruckle
.target Zikkel
step 
#hardcoreserver
.isOnQuest 3912
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Tanaris >> Fly to Tanaris
.target Bragok
step
#hardcoreserver
.isOnQuest 3912
#completewith next
.goto Tanaris,53.99,28.63
.cast 417627 >> |cRXP_WARN_Use the|r |T134813:0|t[Videre Elixir] |cRXP_WARN_at the Tanaris graveyard|r
>>|cRXP_WARN_Blizzard has adjusted this quest so consuming this will NOT kill your character on Official Hardcore Servers. It will lower your health to 3% however. Ensure you bandage or eat food before leaving the graveyard|r
.use 11243 
step
#hardcoreserver
.isOnQuest 3912
.goto Tanaris,53.93,23.33
>>|cRXP_WARN_Ensure you bandage or eat food before leaving the graveyard|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaeriyan|r
>>|cRXP_WARN_You must have the |T132331:0|t[Near Death Experience] debuff to see|r |cRXP_FRIENDLY_Gaeriyan|r |cRXP_WARN_by drinking the|r |T134813:0|t[Videre Elixir]
>>|cRXP_WARN_Blizzard has adjusted this quest so consuming this will NOT kill your character on Official Hardcore Servers|r
.use 11243 
.turnin 3912 >> Turn in Meet at the Grave
.accept 3913 >> Accept A Grave Situation
.target Gaeriyan
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,53.93,23.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaeriyan|r
>>|cRXP_WARN_You must have the |T132331:0|t[Near Death Experience] debuff to see|r |cRXP_FRIENDLY_Gaeriyan|r |cRXP_WARN_by drinking the|r |T134813:0|t[Videre Elixir]
>>|cRXP_WARN_Blizzard has adjusted this quest so consuming this will NOT kill your character on Official Hardcore Servers|r
.use 11243 
.accept 3913 >> Accept A Grave Situation
.target Gaeriyan
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,53.815,29.061
>>Click the |cRXP_PICK_Conspicuous Gravestone|r
.turnin 3913 >> Turn in A Grave Situation
.accept 3914 >> Accept Linken's Sword
step
#hardcoreserver
#completewith next
.destroy 11243 >> Delete any remaining |T134813:0|t[Videre Elixirs] you have
step
.isQuestTurnedIn 3912
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Un'Goro >> Fly to Un'Goro
.target Bera Stonehammer
.zoneskip Tanaris,1
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3914 >> Turn in Linken's Sword
.accept 3941 >> Accept A Gnome's Assistance
.target Linken
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 3941 >> Turn in A Gnome's Assistance
.timer 25,A Gnome's Assistance RP
.accept 3942 >> Accept Linken's Memory
.target J.D. Collie
step << Druid 
.dungeon ST
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Un'Goro >> Fly to Un'Goro
.target Bragok
.zoneskip The Barrens,1
step << Druid
.dungeon ST
#phase 4-6
.isQuestTurnedIn 9051
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 9053 >> Accept A Better Ingredient
.target Torwa Pathfinder
step << !Mage
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
.fly Theramore >> Fly to Dustwallow
.target Gryfe
.zoneskip Un'Goro Crater,1
step << !Mage 
.dungeon !ST << Druid
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Theramore >> Fly to Dustwallow
.target Bragok
.zoneskip The Barrens,1
step << !Mage
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >> Take the boat from Theramore to Wetlands
step << !Mage
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.fly Ironforge >> Fly to Ironforge
.target Shellei Brondir
step << Mage
.zone Ironforge >> Teleport to Ironforge
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 56-57 Burning Steppes
#next 57-58 Western/Eastern Plaguelands
step << Mage
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tymor|r
.turnin 3461 >> Turn in Return to Tymor
.isOnQuest 3461
.target Tymor
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laris Geardawdle|r
.turnin 4513 >> Turn in A Little Slime Goes a Long Way
.target Laris Geardawdle
step << !Mage
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tymor|r
.turnin 3461 >> Turn in Return to Tymor
.isOnQuest 3461
.target Tymor
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.accept 3702 >> Accept The Smoldering Ruins of Thaurissan
.target Royal Historian Archesonus
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.skipgossip
.complete 3702,1 
.target Royal Historian Archesonus
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.turnin 3702 >> Turn in The Smoldering Ruins of Thaurissan
.accept 3701 >> Accept The Smoldering Ruins of Thaurissan
.target Royal Historian Archesonus
step
.goto Ironforge,18.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
.home Ironforge >> Set your Hearthstone to Ironforge
.target Innkeeper Firebrew
.zoneskip Ironforge,1
step
.goto Ironforge,55.492,47.728
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.fly Burning Steppes>> Fly to Burning Steppes
.target Gryth Thurden
.zoneskip Ironforge,1
step
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.accept 4283 >> Accept FIFTY! YEP!
.accept 3824 >> Accept Gor'tesh the Brute Lord
.target Oralius
step
.group
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
.accept 4182 >> Accept Dragonkin Menace
.target Helendis Riverhorn
step
#completewith next
.goto Burning Steppes,65.236,24.007
.subzone 251 >> Travel to Flame Crest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r and |cRXP_FRIENDLY_Maxwort Uberglint|r
.accept 4726 >> Accept Broodling Essence
.target +Tinkee Steamboil
.goto Burning Steppes,65.236,24.007
.accept 4296 >> Accept Tablet of the Seven
.goto Burning Steppes,65.152,23.911
.target +Maxwort Uberglint
step
.group 3
#completewith BroodlingEssence
.goto Burning Steppes,81.8,27.8,0
.goto Burning Steppes,91.4,32.6,0
.goto Burning Steppes,89.8,54.6,0
.goto Burning Steppes,81.8,60.0,0
>>Kill |cRXP_ENEMY_Black Broodlings|r, |cRXP_ENEMY_Black Dragonspawns|r, |cRXP_ENEMY_Black Wyrmkins|r and a |cRXP_ENEMY_Black Drake|r
.complete 4182,1 
.mob +Black Broodling
.complete 4182,2 
.mob +Black Dragonspawn
.complete 4182,4 
.mob +Black Wyrmkin
.complete 4182,3 
.mob +Black Drake
.isOnQuest 4182
step
#completewith next
.goto Burning Steppes,81.8,27.8,0
.goto Burning Steppes,91.4,32.6,0
.goto Burning Steppes,89.8,54.6,0
.goto Burning Steppes,81.8,60.0,0
.use 12284 >> |cRXP_WARN_Use the|r |T133001:0|t[Draco-Incarcinatrix 900] |cRXP_WARN_on |cRXP_ENEMY_Black Broodlings|r, then kill them. Note that taking damage will stop your cast|r
>>Loot the |cRXP_LOOT_Broodling Essence|r on the ground after they die
.complete 4726,1 
.mob Black Broodling
step
#optional
.goto Burning Steppes,95.074,31.553
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
.accept 4022 >> Accept A Taste of Flame
.itemcount 10575,1 
.target Cyrus Therepentous
step
#optional
.goto Burning Steppes,95.074,31.553
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
>>Select the gossip option: "I present you with proof of my deeds, Cyrus."
.complete 4022,1 
.turnin 4022 >> Turn in A Taste of Flame
.itemcount 10575,1 
.target Cyrus Therepentous
step
#label BroodlingEssence
.goto Burning Steppes,91.64,33.51,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,81.8,60.0,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,90.6,43.6
.use 12284 >> |cRXP_WARN_Use the|r |T133001:0|t[Draco-Incarcinatrix 900] |cRXP_WARN_on |cRXP_ENEMY_Black Broodlings|r, then kill them. Note that taking damage will stop your cast|r
>>Loot the |cRXP_LOOT_Broodling Essence|r on the ground after they die
.complete 4726,1 
.mob Black Broodling
step
.group 3
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,81.8,60.0,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,90.6,43.6
>>Kill |cRXP_ENEMY_Black Broodlings|r, |cRXP_ENEMY_Black Dragonspawns|r, |cRXP_ENEMY_Black Wyrmkins|r and a |cRXP_ENEMY_Black Drake|r
.complete 4182,1 
.mob +Black Broodling
.complete 4182,2 
.mob +Black Dragonspawn
.complete 4182,4 
.mob +Black Wyrmkin
.complete 4182,3 
.mob +Black Drake
.isOnQuest 4182
step
#completewith next
>>Click the |cRXP_PICK_Thaurissan Relics|r on the ground
.complete 3701,1 
step
.goto Burning Steppes,54.121,40.757
>>Click the |cRXP_PICK_Tablet of the Seven|r. Loot it for the |cRXP_LOOT_Tablet Transcript |r
.complete 4296,1 
.skipgossip
step
.goto Burning Steppes,54.2,38.3,60,0
.goto Burning Steppes,65.6,43.9,60,0
.goto Burning Steppes,63.5,33.8,60,0
.goto Burning Steppes,57.4,36.4
>>Click the |cRXP_PICK_Thaurissan Relics|r on the ground
.complete 3701,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Blackrock Orcs|r and |cRXP_ENEMY_Worgs|r. Loot them for their |cRXP_LOOT_Blackrock Medallions|r
.complete 4283,1 
.mob Blackrock Slayer
.mob Blackrock Warlock
.mob Blackrock Sorcerer
.mob Blackrock Soldier
.mob Blackrock Worg
.mob Slavering Ember Worg
.mob Giant Ember Worg
step
.goto Burning Steppes,39.21,55.27
>>Kill |cRXP_ENEMY_Gor'tesh|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_ENEMY_Gor'tesh|r |cRXP_WARN_hits very hard and has a thrash attack, be careful|r
.complete 3824,1 
.mob Gor'tesh
step
.goto Burning Steppes,39.21,55.27,0
.goto Burning Steppes,41.8,35.4,0
.goto Burning Steppes,49.6,55.4,0
.goto Burning Steppes,50.6,61.8,0
.goto Burning Steppes,55.4,54.6,0
.goto Burning Steppes,39.21,55.27,60,0
.goto Burning Steppes,49.6,55.4,0,60,0
.goto Burning Steppes,50.6,61.8,0,60,0
.goto Burning Steppes,55.4,54.6,0,60,0
.goto Burning Steppes,48.8,59.6
>>Kill |cRXP_ENEMY_Blackrock Orcs|r and |cRXP_ENEMY_Worgs|r. Loot them for their |cRXP_LOOT_Blackrock Medallions|r
.complete 4283,1 
.mob Blackrock Slayer
.mob Blackrock Warlock
.mob Blackrock Sorcerer
.mob Blackrock Soldier
.mob Blackrock Worg
.mob Slavering Ember Worg
.mob Giant Ember Worg
step
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 4283 >> Turn in FIFTY! YEP!
.turnin 3824 >> Turn in Gor'tesh the Brute Lord
.accept 3825 >> Accept Ogre Head On A Stick = Party
.target Oralius
step
.group
.isQuestComplete 4182
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
.turnin 4182 >> Turn in Dragonkin Menace
.accept 4183 >> Accept The True Masters
.target Helendis Riverhorn
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
.accept 4183 >> Accept The True Masters
.target Helendis Riverhorn
step
.group
.abandon 4182 >> Abandon Dragonkin Menace
step
.group
.isQuestTurnedIn 4182
#completewith next
.goto Burning Steppes,84.333,68.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgus Stoutarm|r
.fly Redridge >> Fly to Redridge Mountains
.target Borgus Stoutarm
step
.group
.isQuestTurnedIn 4182
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 4183 >> Turn in The True Masters
.accept 4184 >> Accept The True Masters
.target Magistrate Solomon
step
.isQuestTurnedIn 4182
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fly Stormwind >> Fly to Stormwind
.target Ariena Stormfeather
.zoneskip Redridge Mountains,1
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.accept 6182 >> Accept The First and the Last
.turnin 4184 >> Turn in The True Masters
.accept 4185 >> Accept The True Masters
.target Highlord Bolvar Fordragon
.xp <56,1
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 4184 >> Turn in The True Masters
.accept 4185 >> Accept The True Masters
.target Highlord Bolvar Fordragon
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.102,17.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
.complete 4185,1 
.skipgossip
.target Lady Katrana Prestor
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 4185 >> Turn in The True Masters
.accept 4186 >> Accept The True Masters
.target Highlord Bolvar Fordragon
step
.group
.isQuestTurnedIn 4182
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step
.group
.isQuestTurnedIn 4182
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 6182 >> Turn in The First and the Last
.accept 6183 >> Accept Honor the Dead
.turnin 6183 >> Turn in Honor the Dead
.accept 6184 >> Accept Flint Shadowmore
.target Master Mathias Shaw
.xp <56,1
step
.group
.isQuestTurnedIn 4182
#completewith next
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Redridge>> Fly to Redridge Mountains
.zoneskip Stormwind City,1
.target Dungar Longdrink
step
.group
.isQuestTurnedIn 4182
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 4186 >> Turn in The True Masters
.accept 4223 >> Accept The True Masters
.target Magistrate Solomon
step
.group
.isQuestTurnedIn 4182
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
.fly Burning Steppes >> Fly to Burning Steppes
.zoneskip Redridge Mountains,1
.target Ariena Stormfeather
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
.turnin 4223 >> Turn in The True Masters
.accept 4224 >> Accept The True Masters
.target Marshal Maxwell
step
.destroy 11467 >> Delete any leftover |T133439:0|t[Blackrock Medallions]
step
#completewith next
.goto Burning Steppes,65.236,24.007
.subzone 251 >> Travel to Flame Crest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r and |cRXP_FRIENDLY_Maxwort Uberglint|r
.turnin 4726 >> Turn in Broodling Essence
.accept 4808 >> Accept Felnok Steelspring
.target +Tinkee Steamboil
.goto Burning Steppes,65.236,24.007
.turnin 4296 >> Turn in Tablet of the Seven
.goto Burning Steppes,65.152,23.911
.target +Maxwort Uberglint
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,65.012,23.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
.complete 4224,1 
.skipgossip
.target Ragged John
step
.goto Burning Steppes,80.997,46.790
>>Click the |cRXP_PICK_Soft Dirt Mound|r atop the mountain
.complete 3825,1 
step
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 3825 >> Turn in Ogre Head On A Stick = Party
.target Oralius
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
.turnin 4224 >> Turn in The True Masters
.target Marshal Maxwell
step
.goto Burning Steppes,84.333,68.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgus Stoutarm|r
.fly Stormwind >> Fly to Stormwind
.target Borgus Stoutarm
step
.goto Stormwind City,44.274,73.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clavicus Knavingham|r up stairs
>>Do the Stormwind cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7791 >> Turn in A Donation of Wool
.turnin 7793 >> Turn in A Donation of Silk
.turnin 7794 >> Turn in A Donation of Mageweave
.turnin 7795 >> Turn in A Donation of Runecloth
.target Clavicus Knavingham
step
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.accept 6182 >> Accept The First and the Last
.target Highlord Bolvar Fordragon
.xp <56,1
step
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 6182 >> Turn in The First and the Last
.accept 6183 >> Accept Honor the Dead
.turnin 6183 >> Turn in Honor the Dead
.accept 6184 >> Accept Flint Shadowmore
.target Master Mathias Shaw
.xp <56,1
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Spackle Thornberry
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
.trainer >> Train your class spells
.target Sheldras Moontree
step
.hs >> Hearth to Ironforge
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip Stormwind City,1
step 
#softcoreserver
.goto Ironforge,32.209,63.266
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Rotimer|r
.accept 7261 >> Accept The Sovereign Imperative
.target Lieutenant Rotimer
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankwithdraw 15788,15790 >> Withdraw the following items from your bank:
>>|T134942:0|t[Everlook Report] 
>>|T133737:0|t[Studies in Spirit Speaking] 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
.bankdeposit 12438 >> Deposit the following items into your bank:
>>|T133469:0|t[Tinkee's Letter] 
.target Bailey Stonemantle
step
#phase 1-5
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy the following items from the Auction House. You will need these later for a free quest turn in in EPL|r
.collect 12359,2,6026,1 
.collect 11128,1,6026,1 
.collect 10562,8,6026,1 
.collect 10560,8,6026,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#phase 6
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_Buy the following items from the Auction House. You will need these later for multiple free quest turn ins in EPL|r
>>|cRXP_WARN_There are 5 different quests and each require 30. If you can't get 30 of one type then skip it|r
.collect 22529,30,9136,1 
.collect 22526,30,9126,1 
.collect 22525,30,9124,1 
.collect 22527,30,9128,1 
.collect 22528,30,9131,1 
.collect 12359,2,6026,1 
.collect 11128,1,6026,1 
.collect 10562,8,6026,1 
.collect 10560,8,6026,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#sticky
.goto Ironforge,74.082,48.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
>>Do the Gnomeregan cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7807 >> Turn in A Donation of Wool
.turnin 7808 >> Turn in A Donation of Silk
.turnin 7809 >> Turn in A Donation of Mageweave
.turnin 7811 >> Turn in A Donation of Runecloth
.zoneskip Ironforge,1
.target Bubulo Acerbus
step
#sticky
.goto Ironforge,43.224,31.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
>>Do the Ironforge cloth turn ins. You'll need 3 stacks of each cloth. Skip this step if you're unable to complete all of them
.turnin 7802 >> Turn in A Donation of Wool
.turnin 7803 >> Turn in A Donation of Silk
.turnin 7804 >> Turn in A Donation of Mageweave
.turnin 7805 >> Turn in A Donation of Runecloth
.zoneskip Ironforge,1
.target Mistina Steelshield
step
.goto Ironforge,38.368,55.303
.target Royal Historian Archesonus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.turnin 3701 >> Turn in The Smoldering Ruins of Thaurissan
step
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth|r
.fly Southshore >> Fly to Southshore
.zoneskip Ironforge,1
.target Gryth Thurden
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 57-58 Western/Eastern Plaguelands
#next 58-59 Felwood/Winterspring
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Anderson|r
.home >> Set your Hearthstone to Southshore
.target Innkeeper Anderson
step
#hardcoreserver
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Western Plaguelands >> Fly to Western Plaguelands
.target Darla Harris
step
#softcoreserver
#completewith next
.goto Alterac Mountains,39.461,81.230,100 >> Travel towards |cRXP_FRIENDLY_Lieutenant Haggerdin|r in Alterac Mountains
step
#softcoreserver
.isOnQuest 7261
.goto Alterac Mountains,39.461,81.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Haggerdin|r
.turnin 7261 >> Turn in The Sovereign Imperative
.target Lieutenant Haggerdin
step
#softcoreserver
#completewith TravelWPL
.goto Western Plaguelands,42.702,84.031
.zone Western Plaguelands >> Travel to Western Plaguelands
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5215 >> Accept The Scourge Cauldrons
.accept 5097 >> Accept All Along the Watchtowers
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.967,83.546
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
.turnin 6028 >> Turn in The Everlook Report
.target Argent Officer Pureheart
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5215 >> Turn in The Scourge Cauldrons
.accept 5216 >> Accept Target: Felstone Field
.target High Priestess MacDonnell
step
#label TravelWPL
.goto Western Plaguelands,43.419,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
.accept 5903 >> Accept A Plague Upon Thee
.target Nathaniel Dumah
step
.isQuestTurnedIn 6183
.goto Western Plaguelands,43.607,84.506
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flint Shadowmore|r
.turnin 6184 >> Turn in Flint Shadowmore
.accept 6185 >> Accept The Eastern Plagues
.target Flint Shadowmore
step
#completewith ADC
.cast 17670 >> |cRXP_WARN_Equip the|r |T133440:0|t[Argent Dawn Commission] |cRXP_WARN_to start collecting|r |T133447:0|t[Scourgestones]
.use 12846
step
.goto Western Plaguelands,37.015,57.145
>>Kill |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Loot him for the |cRXP_LOOT_Felstone Field Cauldron Key|r
>>|cRXP_ENEMY_Cauldron Lord Bilemaw|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
.complete 5216,1 
.unitscan Cauldron Lord Bilemaw
step
.goto Western Plaguelands,37.194,56.860
>>Click on the |cRXP_PICK_Scourge Cauldron|r
.turnin 5216 >> Turn in Target: Felstone Field
.accept 5217 >> Accept Return to Chillwind Camp
step
#completewith next
.goto Western Plaguelands,38.05,54.59,12 >>Go inside the house
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Felstone|r up stairs
.accept 5021 >>Accept Better Late Than Never
.target Janice Felstone
step
#completewith next
.goto Western Plaguelands,38.05,54.56,8,0
>>Exit the house
.goto Western Plaguelands,38.58,55.33,6 >>Go inside the barn
step
.goto Western Plaguelands,38.72,55.24
>>Click |cRXP_PICK_Janice's Parcel|r on the ground
>>|cRXP_WARN_This has a 5 second cast time|r
>>|cRXP_WARN_You can do this from behind the wall to avoid aggroing anything inside|r
>>|cRXP_WARN_Avoid aggroing the |cRXP_ENEMY_Scarlets|r outside the barn. If you do, run away|r
.turnin 5021 >>Turn in Better Late Than Never
.accept 5022 >>Accept Better Late Than Never
step
#completewith next
.subzone 3197 >> Travel to Chillwind Camp
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5217 >> Turn in Return to Chillwind Camp
.accept 5219 >> Accept Target: Dalson's Tears
.target High Priestess MacDonnell
step
#label ADC
.goto Western Plaguelands,46.681,71.135,-1
.goto Western Plaguelands,46.558,71.156,-1
.use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,4 
step
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time at all costs|r

.accept 4984 >> Accept The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith DalsonCauldron
.goto Western Plaguelands,49.2,58.4,0
.goto Western Plaguelands,51.6,47.6,0
.goto Western Plaguelands,43.0,48.2,0
.goto Western Plaguelands,43.4,57.8,0
.goto Western Plaguelands,46.6,40.4,0
>>Kill |cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Carrion Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Wolves|r to spawn|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,47.796,50.671
>>|cRXP_WARN_Enter the Dalson's Tears Barn|r
>>Click |cRXP_PICK_Mrs. Dalson's Diary|r on the ground
.accept 5058 >> Accept Mrs. Dalson Diary
.turnin 5058 >> Turn in Mrs. Dalson Diary
step
.goto Western Plaguelands,47.86,49.88,25,0
.goto Western Plaguelands,48.48,51.56,25,0
.goto Western Plaguelands,47.39,51.77,25,0
.goto Western Plaguelands,46.64,49.21,25,0
.goto Western Plaguelands,47.86,49.88
>>Kill the |cRXP_LOOT_Wandering Skeleton|r. Loot it for the |cRXP_LOOT_Dalson Outhouse Key|r
>>|cRXP_WARN_The |cRXP_LOOT_Wandering Skeleton|r patrols around the Dalson's Tear Barn and House|r
.collect 12738,1,5060,1 
.unitscan Wandering Skeleton
step
#completewith next
.goto Western Plaguelands,48.109,49.654
>>Click the |cRXP_PICK_Outhouse|r to summon |cRXP_ENEMY_Farmer Dalson|r
.turnin 5059 >> Turn in Locked Away
step
.goto Western Plaguelands,48.115,49.814
>>Kill |cRXP_ENEMY_Farmer Dalson|r. Loot him for the |cRXP_LOOT_Dalson Cabinet Key|r
.collect 12739,1,5060,1 
.mob Farmer Dalson
step
.goto Western Plaguelands,47.353,49.626
>>Click the |cRXP_PICK_Locked Cabinet|r up stairs in the house
.turnin 5060 >> Turn in Locked Away
step
.goto Western Plaguelands,46.156,52.427
>>Kill |cRXP_ENEMY_Cauldron Lord Malvinious|r. Loot him for the |cRXP_LOOT_Dalson's Tears Cauldron Key|r
>>|cRXP_ENEMY_Cauldron Lord Malvinious|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
.complete 5219,1 
.unitscan Cauldron Lord Malvinious
step
#label DalsonCauldron
.goto Western Plaguelands,46.176,52.009
>>Click on the |cRXP_PICK_Scourge Cauldron|r
.turnin 5219 >> Turn in Target: Dalson's Tears
.accept 5220 >> Accept Return to Chillwind Camp
step
.goto Western Plaguelands,49.2,58.4,0
.goto Western Plaguelands,51.6,47.6,0
.goto Western Plaguelands,43.0,48.2,0
.goto Western Plaguelands,43.4,57.8,0
.goto Western Plaguelands,49.2,58.4,70,0
.goto Western Plaguelands,51.6,47.6,70,0
.goto Western Plaguelands,43.0,48.2,70,0
.goto Western Plaguelands,43.4,57.8,70,0
.goto Western Plaguelands,46.6,40.4,70,0
.goto Western Plaguelands,49.2,58.4,70,0
.goto Western Plaguelands,51.6,47.6,70,0
.goto Western Plaguelands,43.0,48.2,70,0
.goto Western Plaguelands,43.4,57.8,70,0
.goto Western Plaguelands,46.6,40.4
>>Kill |cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Carrion Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Wolves|r to spawn|r
.complete 4984,1 
.unitscan Diseased Wolf

step << skip 
#requires wolves
.goto Western Plaguelands,38.401,54.053
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Felstone|r
.turnin 5050 >> Turn in Good Luck Charm
.target Janice Felstone
.accept 5051 >> Accept Two Halves Become One
.isQuestTurnedIn 5022
step << skip 
#sticky
#completewith next
.goto Western Plaguelands,36.9,58.2
>>Kill the |cRXP_LOOT_Jabbering Ghoul|r that walks around the farm and loot him
.collect 12722,1
.isQuestTurnedIn 5022
step << skip 
>>Right click on the half-charm to combine them
.complete 5051,1 
.isQuestTurnedIn 5022
step << skip 
.goto Western Plaguelands,38.401,54.053
.target Janice Felstone
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Felstone|r
.turnin 5051 >> Turn in Two Halves Become One
.isQuestTurnedIn 5022

step
.goto Western Plaguelands,44.217,63.319,-1
.goto Western Plaguelands,44.247,63.131,-1
.use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,3 
step
.goto Western Plaguelands,42.326,66.105,-1
.goto Western Plaguelands,42.422,66.222,-1
.use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,2 
step
.goto Western Plaguelands,40.116,71.561,-1
.goto Western Plaguelands,40.038,71.713,-1
.use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
.complete 5097,1 
step
#completewith next
.subzone 3197 >> Travel to Chillwind Camp
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5097 >> Turn in All Along the Watchtowers

.target Commander Ashlam Valorfist
.accept 5533 >> Accept Scholomance
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
.turnin 5533 >> Turn in Scholomance
.target Alchemist Arbington
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.target High Priestess MacDonnell
.turnin 5220 >> Turn in Return to Chillwind Camp
.accept 5222 >> Accept Target: Writhing Haunt
step
.isQuestTurnedIn 5097
.destroy 12815 >> Delete the |T135432:0|t[Beacon Torch]
step
.goto Western Plaguelands,53.021,66.052
>>Kill |cRXP_ENEMY_Cauldron Lord Razarch|r. Loot him for the |cRXP_LOOT_Writhing Haunt Cauldron Key|r
>>|cRXP_ENEMY_Cauldron Lord Razarch|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time at all costs|r
.complete 5222,1 
.unitscan Cauldron Lord Razarch
step
.goto Western Plaguelands,53.020,65.718
>>Click on the |cRXP_PICK_Scourge Cauldron|r
.turnin 5222 >> Turn in Target: Writhing Haunt
.accept 5223 >> Accept Return to Chillwind Camp
step
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time at all costs|r

.turnin 4984 >> Turn in The Wildlife Suffers Too
.accept 4985 >> Accept The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith ArriveTirion
.isOnQuest 4985
>>Kill any |cRXP_ENEMY_Diseased Grizzlies|r you see en-route to Eastern Plaguelands
>>|cRXP_WARN_It is important you kill any you see along the way, but you don't have to complete it now|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
#completewith next
.goto Eastern Plaguelands,9.57,66.20
.zone Eastern Plaguelands >> Travel to Eastern Plaguelands
step
#label ArriveTirion
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.accept 5542 >> Accept Demon Dogs
.accept 5543 >> Accept Blood Tinged Skies
.accept 5544 >> Accept Carrion Grubbage
.target Tirion Fordring
step
#completewith PamelaRedpath
>>Kill |cRXP_ENEMY_Plaguebats|r
>>Kill |cRXP_ENEMY_Plaguehound Runts|r
>>Kill |cRXP_ENEMY_Carrion Grubs|r. Loot them for their |cRXP_LOOT_Worm Meat|r
.complete 5543,1 
.mob +Plaguebat
.complete 5542,1 
.mob +Plaguehound Runt
.complete 5544,1 
.mob +Carrion Grub
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,27.266,74.956
>>Click the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_SI:7 Insignia (Fredo)|r
.complete 6185,2 
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,28.805,74.880
>>Click the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_SI:7 Insignia (Turyen)|r
.complete 6185,3 
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,28.806,79.853
>>Click the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_SI:7 Insignia (Rutger)|r
.complete 6185,1 
step
#label PamelaRedpath
.goto Eastern Plaguelands,36.489,90.718
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
.turnin 5601 >> Turn in Sister Pamela
.accept 5149 >> Accept Pamela's Doll
.target Pamela Redpath
step
.goto Eastern Plaguelands,38.038,92.549,15,0
.goto Eastern Plaguelands,39.643,92.522,15,0
.goto Eastern Plaguelands,39.622,90.079
>>Loot |T134164:0|t[|cRXP_LOOT_Pamela's Doll's Head|r], |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Left Side|r] and |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Right Side|r] throughout the buildings
>>|cRXP_WARN_They all spawn randomly in any of the 3 buildings in Darrowshire|r
.collect 12886,1,5149,1 
.collect 12887,1,5149,1 
.collect 12888,1,5149,1 
step
>>|cRXP_WARN_Use|r |T134164:0|t[|cRXP_LOOT_Pamela's Doll's Head|r]|cRXP_WARN_,|r |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Left Side|r] |cRXP_WARN_or|r |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Right Side|r] |cRXP_WARN_to combine them into|r |cRXP_LOOT_Pamela's Doll|r
.complete 5149,1 
.use 12886
.use 12887
.use 12888
step
.goto Eastern Plaguelands,36.489,90.718
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
.turnin 5149 >> Turn in Pamela's Doll
.accept 5152 >> Accept Auntie Marlene
.accept 5241 >> Accept Uncle Carlin
.target Pamela Redpath
step
>>Kill |cRXP_ENEMY_Plaguebats|r
>>Kill |cRXP_ENEMY_Plaguehound Runts|r and |cRXP_ENEMY_Plaguehounds|r
>>Kill |cRXP_ENEMY_Carrion Grubs|r. Loot them for their |cRXP_LOOT_Worm Meat|r
.complete 5543,1 
.mob +Plaguebat
.goto Eastern Plaguelands,33.8,82.2,70,0
.goto Eastern Plaguelands,17.2,78.2,70,0
.goto Eastern Plaguelands,16.6,65.8,70,0
.goto Eastern Plaguelands,40.8,71.8,70,0
.goto Eastern Plaguelands,48.8,77.6,70,0
.goto Eastern Plaguelands,32.2,83.4,70,0
.goto Eastern Plaguelands,31.6,71.6
.complete 5542,1 
.mob +Plaguehound Runt
.goto Eastern Plaguelands,33.8,82.2,70,0
.goto Eastern Plaguelands,17.2,78.2,70,0
.goto Eastern Plaguelands,16.6,65.8,70,0
.goto Eastern Plaguelands,40.8,71.8,70,0
.goto Eastern Plaguelands,48.8,77.6,70,0
.goto Eastern Plaguelands,32.2,83.4,70,0
.goto Eastern Plaguelands,31.6,71.6
.complete 5542,2 
.mob +Plaguehound
.goto Eastern Plaguelands,46.6,64.6,70,0
.goto Eastern Plaguelands,51.6,61.0,70,0
.goto Eastern Plaguelands,50.0,54.6,70,0
.goto Eastern Plaguelands,53.8,51.6,70,0
.goto Eastern Plaguelands,61.6,61.2,70,0
.goto Eastern Plaguelands,75.0,73.2,70,0
.goto Eastern Plaguelands,68.6,58.4,70,0
.goto Eastern Plaguelands,54.6,59.0
.complete 5544,1 
.mob +Carrion Grub
.goto Eastern Plaguelands,46.6,64.6,70,0
.goto Eastern Plaguelands,51.6,61.0,70,0
.goto Eastern Plaguelands,50.0,54.6,70,0
.goto Eastern Plaguelands,53.8,51.6,70,0
.goto Eastern Plaguelands,61.6,61.2,70,0
.goto Eastern Plaguelands,75.0,73.2,70,0
.goto Eastern Plaguelands,68.6,58.4,70,0
.goto Eastern Plaguelands,54.6,59.0
step
.goto Eastern Plaguelands,81.437,59.820
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
.turnin 6030 >> Turn in Duke Nicholas Zverenhoff
.target Duke Nicholas Zverenhoff
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5241 >> Turn in Uncle Carlin
.accept 5211 >> Accept Defenders of Darrowshire
.target Carlin Redpath
step
#ah
.goto Eastern Plaguelands,80.605,57.979
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
.accept 6026 >> Accept That's Asking A Lot
.turnin 6026 >> Turn in That's Asking A Lot
.itemcount 12359,2 
.itemcount 11128,1 
.itemcount 10562,8 
.itemcount 10560,8 
.target Smokey LaRue
step
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaelyn Steelwing|r
.fp Chapel >> Get the Light's Hope Chapel flight path
.target Khaelyn Steelwing
step
.goto Eastern Plaguelands,79.405,63.983
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
.accept 5281 >> Accept The Restless Souls
.accept 6021 >> Accept Zaeldarr the Outcast
.target Caretaker Alen
step
#completewith Egan
.goto Eastern Plaguelands,60.6,68.4,0
.goto Eastern Plaguelands,67.7,41.5,0
.goto Eastern Plaguelands,75.5,51.2,0
.goto Eastern Plaguelands,41.8,30.4,0
.goto Eastern Plaguelands,28.35,28.49,0
>>Kill |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Gibbering Ghouls|r and |cRXP_ENEMY_Cannibal Ghouls|r. Talk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that spawn from their corpses
.complete 5211,1 
.mob Diseased Flayer
.mob Gibbering Ghoul
.mob Cannibal Ghoul
.target Darrowshire Spirit
step
.goto Eastern Plaguelands,69.2,50.6,70,0
.goto Eastern Plaguelands,64.6,32.0,70,0
.goto Eastern Plaguelands,51.6,30.6,70,0
.goto Eastern Plaguelands,56.6,40.0,70,0
.goto Eastern Plaguelands,44.4,36.4,70,0
.goto Eastern Plaguelands,48.0,24.6,70,0
.goto Eastern Plaguelands,50.9,38.3
>>Kill |cRXP_ENEMY_Frenzied Plaguehounds|r
.complete 5542,3 
.mob Frenzied Plaguehound
step
.goto Eastern Plaguelands,41.2,25.2,70,0
.goto Eastern Plaguelands,42.1,38.2,70,0
.goto Eastern Plaguelands,32.0,35.8,70,0
.goto Eastern Plaguelands,33.8,25.8,70,0
.goto Eastern Plaguelands,29.9,23.1,70,0
.goto Eastern Plaguelands,26.5,37.5,70,0
.goto Eastern Plaguelands,20.4,20.8,70,0
.goto Eastern Plaguelands,31.4,29.6
>>Open the |cRXP_PICK_Large Termite Mounds|r throughout Plaguewood. Loot them for the |cRXP_LOOT_Plagueland Termites|r
.complete 5903,1 
step
#label Egan
.goto Eastern Plaguelands,14.448,33.740
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Egan|r
.turnin 5281 >> Turn in The Restless Souls
.target Egan
step
.goto Eastern Plaguelands,60.6,68.4,0
.goto Eastern Plaguelands,67.7,41.5,0
.goto Eastern Plaguelands,75.5,51.2,0
.goto Eastern Plaguelands,41.8,30.4,0
.goto Eastern Plaguelands,28.35,28.49,0
.goto Eastern Plaguelands,28.35,28.49,70,0
.goto Eastern Plaguelands,37.85,31.10,70,0
.goto Eastern Plaguelands,66.0,39.2,80,0
.goto Eastern Plaguelands,59.4,69.0,100,0
.goto Eastern Plaguelands,77.4,54.0,70,0
.goto Eastern Plaguelands,80.6,43.6,80,0
.goto Eastern Plaguelands,66.0,39.2
>>Kill |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Gibbering Ghouls|r and |cRXP_ENEMY_Cannibal Ghouls|r. Talk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that spawn from their corpses
.complete 5211,1 
.mob Diseased Flayer
.mob Gibbering Ghoul
.mob Cannibal Ghoul
.target Darrowshire Spirit
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5211 >> Turn in Defenders of Darrowshire
.target Carlin Redpath
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5542 >> Turn in Demon Dogs
.turnin 5543 >> Turn in Blood Tinged Skies
.turnin 5544 >> Turn in Carrion Grubbage
.accept 5742 >> Accept Redemption
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.complete 5742,1 
.skipgossip
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5742 >> Turn in Redemption
.target Tirion Fordring
step
.group
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.accept 5781 >> Accept Of Forgotten Memories
.target Tirion Fordring
step
#completewith next
.goto Eastern Plaguelands,27.850,86.245,15 >> Enter The Undercroft crypt
step
.goto Eastern Plaguelands,27.467,84.853
>>Kill |cRXP_ENEMY_Zaeldarr the Outcast|r. Loot him for his |cRXP_LOOT_Head|r
.complete 6021,1 
.mob Zaeldarr the Outcast
step
.group
.goto Eastern Plaguelands,27.276,85.213
>>Click the |cRXP_PICK_Torn Scroll|r on the ground
.accept 6024 >> Accept Hameya's Plea
step
.group 3
#completewith next
.goto Eastern Plaguelands,28.307,86.885
.cast 6478 >>Click the |cRXP_PICK_Loose Dirt Mound|r to summon |cRXP_ENEMY_Mercutio Filthgorger|r and 3 additional |cRXP_ENEMY_Crypt Robbers|r
step
.group 3
.goto Eastern Plaguelands,28.307,86.885
>>Kill |cRXP_ENEMY_Mercutio Filthgorger|r. Loot him for |cRXP_LOOT_Taelan's Hammer|r
.complete 5781,1 
.mob Mercutio Filthgorger
step
.group
.isQuestComplete 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5781 >> Turn in Of Forgotten Memories
.accept 5845 >> Accept Of Lost Honor
.target Tirion Fordring
step
.group
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.accept 5845 >> Accept Of Lost Honor
.target Tirion Fordring
step
.group
.abandon 5781 >> Abandon Of Forgotten Memories
step
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#completewith next
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Western Plaguelands >> Fly to Western Plaguelands
.target Darla Harris
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5223 >> Turn in Return to Chillwind Camp
.accept 5225 >> Accept Target: Gahrron's Withering
.target High Priestess MacDonnell
step
.goto Western Plaguelands,43.418,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
.turnin 5903 >> Turn in A Plague Upon Thee
.accept 5904 >> Accept A Plague Upon Thee
.target Nathaniel Dumah
step
.isQuestTurnedIn 6183
.goto Western Plaguelands,43.607,84.506
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flint Shadowmore|r
.turnin 6185 >> Turn in The Eastern Plagues
.accept 6186 >> Accept The Blightcaller Cometh
.target Flint Shadowmore
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
.accept 5537 >> Accept Skeletal Fragments
.target Alchemist Arbington
step
.isQuestTurnedIn 5903
.destroy 15043 >> Delete any left over |T134321:0|t[Plagueland Termites]
step
.goto Western Plaguelands,49.2,78.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marlene Redpath|r
>>|cRXP_FRIENDLY_Marlene Redpath|r may also be upstairs
.turnin 5152 >> Turn in Auntie Marlene
.accept 5153 >> Accept A Strange Historian
.target Marlene Redpath
step
.goto Western Plaguelands,49.696,76.754
>>Click |cRXP_PICK_Joseph Redpath's Monument|r. Loot it for |cRXP_LOOT_Joseph's Wedding Ring|r
.complete 5153,1 
step
#completewith CountingTime
>>Kill |cRXP_ENEMY_Skeletal Executioners|r and |cRXP_ENEMY_Skeletal Acolytes|r. Loot them for their |cRXP_LOOT_Skeletal Fragments|r
.complete 5537,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
step
.solo
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
.turnin 5153 >> Turn in A Strange Historian
.accept 5154 >> Accept The Annals of Darrowshire
.target Chromie
step
.group
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
.turnin 5153 >> Turn in A Strange Historian
.accept 5154 >> Accept The Annals of Darrowshire
.accept 4971 >> Accept A Matter of Time
.target Chromie
step
#completewith next
.goto Western Plaguelands,43.822,69.250,10,0 >> Enter the Ruins of Andorhal Town Hall
.link https://youtu.be/GUb1Ny4NwQw >> |cRXP_WARN_Click here for video reference on how to enter the Town Hall safely|r
step
.goto Western Plaguelands,43.50,69.46
>>Enter the Ruins of Andorhal Town Hall
>>Open the |cRXP_PICK_Musty Tomes|r. Loot them for the |cRXP_LOOT_Annals of Darrowshire|r
>>|cRXP_WARN_The correct |cRXP_PICK_Musty Tome|r will have its pages be a completely dark-shade, or have a brown stain. If it's only half white and half black, that is a trap|r
>>|cRXP_WARN_There can be times where all |cRXP_PICK_Musty Tomes|r are traps and you must open them to force a correct one to spawn|r
.complete 5154,1 
.link https://youtu.be/GUb1Ny4NwQw >> |cRXP_WARN_Click here for video reference on how to identify the correct|r |cRXP_PICK_Musty Tome|r
step
.group 3
.goto Western Plaguelands,45.172,62.559,25,0
.goto Western Plaguelands,46.858,62.040,25,0
.goto Western Plaguelands,48.324,62.610,25,0
.goto Western Plaguelands,48.10,63.92,20,0
.goto Western Plaguelands,48.06,66.18
>>Kill |cRXP_ENEMY_Temporal Parasites|r
.use 12627 >>|cRXP_WARN_Use the|r |T134229:0|t[Temporal Displacer] |cRXP_WARN_at the silos to make them spawn. If the silo isn't pulsing blue then it cannot spawn any|r |cRXP_ENEMY_Temporal Parasites|r
>>|cRXP_WARN_Multiple |cRXP_ENEMY_Temporal Parasites|r can spawn at the same time, and once one dies, another one can instantly spawn|r
.complete 4971,1 
.mob Temporal Parasite
step
.isQuestComplete 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
.turnin 4971 >> Turn in A Matter of Time
.accept 4972 >> Accept Counting Out Time
.turnin 5154 >> Turn in The Annals of Darrowshire
.accept 5210 >> Accept Brother Carlin
.target Chromie
step
.isQuestTurnedIn 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
.accept 4972 >> Accept Counting Out Time
.turnin 5154 >> Turn in The Annals of Darrowshire
.accept 5210 >> Accept Brother Carlin
.target Chromie
step
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
.turnin 5154 >> Turn in The Annals of Darrowshire
.accept 5210 >> Accept Brother Carlin
.target Chromie
step
.abandon 4971 >> Abandon A Matter of Time
step
.isQuestTurnedIn 4971
.goto Western Plaguelands,38.71,68.25,20,0
.goto Western Plaguelands,38.51,69.74,20,0
.goto Western Plaguelands,40.63,68.40,20,0
.goto Western Plaguelands,41.08,67.45,20,0
.goto Western Plaguelands,40.69,66.16,20,0
.goto Western Plaguelands,41.46,69.85,15,0
.goto Western Plaguelands,42.17,68.88,20,0
.goto Western Plaguelands,42.67,70.31
>>Open the |cRXP_PICK_Small Lockboxes|r. Loot them for |cRXP_LOOT_Andorhal Watches|r
>>|cRXP_WARN_These are found inside of the burnt-down houses|r
.complete 4972,1 
step
#label CountingTime
.isQuestTurnedIn 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
.turnin 4972 >> Turn in Counting Out Time
.target Chromie
step
.goto Western Plaguelands,37.8,70.6,70,0
.goto Western Plaguelands,42.6,73.8,70,0
.goto Western Plaguelands,49.6,69.4,70,0
.goto Western Plaguelands,49.6,63.6,70,0
.goto Western Plaguelands,43.0,63.4,70,0
.goto Western Plaguelands,39.8,67.4
>>Kill |cRXP_ENEMY_Skeletal Executioners|r and |cRXP_ENEMY_Skeletal Acolytes|r. Loot them for their |cRXP_LOOT_Skeletal Fragments|r
.complete 5537,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
.turnin 5537 >> Turn in Skeletal Fragments
.target Alchemist Arbington
step
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.fly Eastern Plaguelands >> Fly to Eastern Plaguelands
.zoneskip Western Plaguelands,1
.target Bibilfaz Featherwhistle
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5210 >> Turn in Brother Carlin
.accept 5181 >> Accept Villains of Darrowshire
.target Carlin Redpath
step
.group
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.accept 5168 >> Accept Heroes of Darrowshire
.target Carlin Redpath
step
.goto Eastern Plaguelands,79.405,63.983
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
.turnin 6021 >> Turn in Zaeldarr the Outcast
.target Caretaker Alen
step
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,71.300,33.959
>>Loot the |cRXP_LOOT_Symbol of Lost Honor|r underwater
.complete 5845,1 
step
.group 2
.goto Eastern Plaguelands,64.80,21.45,35,0
.goto Eastern Plaguelands,70.8,16.2
>>Kill |cRXP_ENEMY_Infiltrator Hameya|r. Loot him for |cRXP_LOOT_Hameya's Key|r
>>|cRXP_ENEMY_Mossflayer Scouts|r |cRXP_WARN_will run away and call for help as soon as you agro them|r
>>|cRXP_ENEMY_Infiltrator Hameya|r |cRXP_WARN_patrols around the graves of Zul'Mashar|r
.complete 6024,1 
.unitscan Infiltrator Hameya
step
.goto Eastern Plaguelands,51.106,49.937
>>Loot the |cRXP_LOOT_Skull of Horgus|r underwater
.complete 5181,1 
step
.goto Eastern Plaguelands,53.913,65.755
>>Loot the |cRXP_LOOT_Shattered Sword of Marduk|r on the ground
.complete 5181,2 
step
.group
.isQuestComplete 6024
.goto Eastern Plaguelands,28.036,86.155
>>Click the |cRXP_PICK_Mound of Dirt|r
.turnin 6024 >> Turn in Hameya's Plea
step
.abandon 6024 >> Abandon Hameya's Plea
step
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5845 >> Turn in Of Lost Honor
.accept 5846 >> Accept Of Love and Family
.target Tirion Fordring
step
#completewith next
>>Kill |cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Plague Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Grizzlies|r to spawn|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
.group
.isOnQuest 5168
.goto Western Plaguelands,63.789,57.192
>>Loot |cRXP_LOOT_Redpath's Shield|r on the ground
>>|cRXP_WARN_The other objective of this quest requires going into Hearthglen. If you are not comfortable going into Hearthglen with a group later, skip this step now and abandon Heroes of Darrowshire|r
.complete 5168,2 
step
.goto Western Plaguelands,62.644,58.945
>>Kill |cRXP_ENEMY_Cauldron Lord Soulwrath|r. Loot him for the |cRXP_LOOT_Gahrron's Withering Cauldron Key|r
>>|cRXP_ENEMY_Cauldron Lord Soulwrath|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
.complete 5225,1 
.unitscan Cauldron Lord Soulwrath
step
.goto Western Plaguelands,62.573,58.573
>>Click on the |cRXP_PICK_Scourge Cauldron|r
.turnin 5225 >> Turn in Target: Gahrron's Withering
.accept 5226 >> Accept Return to Chillwind Camp
step
.goto Western Plaguelands,58.8,58.6,70,0
.goto Western Plaguelands,53.6,48.0,70,0
.goto Western Plaguelands,58.8,52.6,70,0
.goto Western Plaguelands,67.2,46.6,70,0
.goto Western Plaguelands,66.0,55.6,70,0
.goto Western Plaguelands,60.8,50.8
>>Kill |cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Plague Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Grizzlies|r to spawn|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time at all costs|r

.turnin 4985 >> Turn in The Wildlife Suffers Too
.accept 4986 >> Accept Glyphed Oaken Branch
.target Mulgris Deepriver
step
#completewith next
.isQuestTurnedIn 5781
.goto Western Plaguelands,65.7,75.4
.subzone 2298 >> Travel to Caer Darrow
step
.isQuestTurnedIn 5781
.goto Western Plaguelands,65.7,75.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artist Renfray|r
.turnin 5846 >> Turn in Of Love and Family
.target Artist Renfray
step
.goto Western Plaguelands,48.348,31.996
>>Click on the |cRXP_PICK_Northridge Lumber Mill Crate|r to place the |cRXP_PICK_Termite Barrel|r and then click on the |cRXP_PICK_Termite Barrel|r after
.skipgossip
.turnin 5904 >> Turn in A Plague Upon Thee
.accept 6389 >> Accept A Plague Upon Thee
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.accept 6004 >> Accept Unfinished Business
.target Kirsta Deepshadow
step
.goto Western Plaguelands,50.85,40.68,60,0
.goto Western Plaguelands,51.97,44.47,60,0
.goto Western Plaguelands,41.23,51.54,60,0
.goto Western Plaguelands,50.85,40.68
>>Kill |cRXP_ENEMY_Scarlet Medics|r, |cRXP_ENEMY_Scarlet Hunters|r, |cRXP_ENEMY_Scarlet Mages|r and |cRXP_ENEMY_Scarlet Knights|r
>>|cRXP_ENEMY_Scarlet Medics|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Hunters|r share spawns|r
>>|cRXP_ENEMY_Scarlet Mages|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Knights|r share spawns|r
.complete 6004,1 
.mob +Scarlet Medic
.complete 6004,2 
.mob +Scarlet Hunter
.complete 6004,3 
.mob +Scarlet Mage
.complete 6004,4 
.mob +Scarlet Knight
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6004 >> Turn in Unfinished Business
.accept 6023 >> Accept Unfinished Business
.target Kirsta Deepshadow
step
.goto Western Plaguelands,56.38,34.11,50,0
.goto Western Plaguelands,57.83,36.10
>>Kill |cRXP_ENEMY_Huntsman Radley|r
.complete 6023,1 
.mob Huntsman Radley
step
.goto Western Plaguelands,54.520,23.818
>>Kill |cRXP_ENEMY_Cavalier Durgen|r
>>|cRXP_ENEMY_Cavalier Durgen|r |cRXP_WARN_will patrol up and down the Tower. Wait at the bottom for him to come to you instead of going inside|r
.complete 6023,2 
.unitscan Cavalier Durgen
step
.solo
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6023 >> Turn in Unfinished Business
.target Kirsta Deepshadow
step
.group
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6023 >> Turn in Unfinished Business
.accept 6025 >> Accept Unfinished Business
.target Kirsta Deepshadow
step
.group
#completewith HearthglenFinish
.goto Western Plaguelands,45.7,18.8
.subzone 190 >> Travel to Hearthglen
step
.group 2
.goto Western Plaguelands,45.7,18.8
>>Ascend the Hearthglen Tower
>>|cRXP_WARN_You may either run straight to the top and jump down or clear your way up|r
>>|cRXP_WARN_Avoid |cRXP_ENEMY_High Protector Lorik|r who is a strong Elite that roams Hearthglen|r
>>|cRXP_WARN_This quest can be difficult. Skip it if you are not confident going into Hearthglen|r
.complete 6025,1 
.link https://youtu.be/zScCxcSNqdI >> |cRXP_WARN_Click here for video reference|r
.unitscan High Protector Lorik
step
.group 4
#label HearthglenFinish
.isOnQuest 5168
.goto Western Plaguelands,42.519,18.990
>>Loot |cRXP_LOOT_Davil's Libram|r on the table
>>|cRXP_WARN_Avoid |cRXP_ENEMY_High Protector Lorik|r who is a strong Elite that roams Hearthglen|r
>>|cRXP_WARN_This quest can be difficult. Skip it if you are not confident going into Hearthglen|r
.complete 5168,1 
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6025 >> Turn in Unfinished Business
.isQuestComplete 6025
.target Kirsta Deepshadow
step
.abandon 6025 >> Abandon Unfinished Business
step
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip Western Plaguelands,1
step
#completewith PlagueUpon
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.fly Western Plaguelands >> Fly to Western Plaguelands
.target Darla Harris
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5226 >> Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
step
.goto Western Plaguelands,42.702,84.031
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5237 >> Accept Mission Accomplished!
.turnin 5237 >> Turn in Mission Accomplished!
step
#label PlagueUpon
.goto Western Plaguelands,43.418,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
.turnin 6389 >> Turn in A Plague Upon Thee
.target Nathaniel Dumah
step << Paladin
.dungeon ST
#phase 4-6
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 8418 >> Accept Forging the Mightstone
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.fly Eastern Plaguelands >> Fly to Eastern Plaguelands
.zoneskip Western Plaguelands,1
.target Bibilfaz Featherwhistle
step
.isQuestComplete 5168
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5181 >> Turn in Villains of Darrowshire
.turnin 5168 >> Turn in Heroes of Darrowshire
.target Carlin Redpath
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5181 >> Turn in Villains of Darrowshire
.target Carlin Redpath
step
#ah
.goto Eastern Plaguelands,80.937,58.515
+|cRXP_WARN_If you bought|r |T133614:0|t[Dark Iron Scraps] |cRXP_WARN_/|r |T134139:0|t[Core of Elements] |cRXP_WARN_/|r |T133571:0|t[Crypt Fiend Parts] |cRXP_WARN_/|r |T133724:0|t[Bone Fragments] |cRXP_WARN_/|r |T136074:0|t[Savage Fronds] |cRXP_WARN_take them out of your mail. If you did not buy any, skip this step|r
.itemcount 22529,<30 
.itemcount 22526,<30 
.itemcount 22525,<30 
.itemcount 22527,<30 
.itemcount 22528,<30 
step
#completewith 5TurnIns
>>|cRXP_WARN_If you do not have the Reputation required to accept these quests, grind on nearby |cRXP_ENEMY_Undead|r until you are Friendly with the Argent Dawn|r
.reputation 529,friendly
step
#optional
.goto Eastern Plaguelands,81.200,59.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne|r
.accept 9136 >> Accept Savage Flora
.turnin 9136 >> Turn in Savage Flora
.itemcount 22529,30
.target Rayne
step
#optional
.goto Eastern Plaguelands,81.505,58.556
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Leopold|r
.accept 9124 >> Accept Cryptstalker Armor Doesn't Make Itself...
.turnin 9124 >> Turn in Cryptstalker Armor Doesn't Make Itself...
.itemcount 22525,30
.target Huntsman Leopold
step
#optional
.goto Eastern Plaguelands,81.428,58.507
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rohan the Assassin|r
.accept 9126 >> Accept Bonescythe Digs
.turnin 9126 >> Turn in Bonescythe Digs
.itemcount 22526,30
.target Rohan the Assassin
step
#optional
.goto Eastern Plaguelands,81.523,58.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r
.accept 9128 >> Accept The Elemental Equation
.turnin 9128 >> Turn in The Elemental Equation
.itemcount 22527,30
.target Archmage Angela Dosantos
step
#optional
#label 5TurnIns
.goto Eastern Plaguelands,81.798,58.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korfax|r
.accept 9131 >> Accept Binding the Dreadnaught
.turnin 9131 >> Turn in Binding the Dreadnaught
.itemcount 22528,30
.target Korfax, Champion of the Light
step
#optional
.goto Eastern Plaguelands,80.605,57.979
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
.accept 6026 >> Accept That's Asking A Lot
.turnin 6026 >> Turn in That's Asking A Lot
.itemcount 12359,2 
.itemcount 11128,1 
.itemcount 10562,8 
.itemcount 10560,8 
.target Smokey LaRue
step
.abandon 5168 >> Abandon Heroes of Darrowshire
step << Mage
.dungeon !ST
#completewith next
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.dungeon !ST
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << !Mage
.dungeon !ST
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaelyn Steelwing|r
.fly Stormwind >> Fly to Stormwind City
.target Khaelyn Steelwing
step
.dungeon ST
#completewith IntoTheTemple
+You will now fly around and pickup quests for Sunken Temple. Start looking for a group to run Sunken Temple
>>You still need to complete 2 quests in Blasted Lands to unlock you class quests soon. 1 of them requires killing 50 mobs << Warrior
step
.dungeon ST
#completewith next
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaelyn Steelwing|r
.fly Hinterlands >> Fly to The Hinterlands
.target Khaelyn Steelwing
step
.dungeon ST
.goto The Hinterlands,33.751,75.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Atal'ai Exile|r
.accept 1446 >> Accept Jammal'an the Prophet
.target Atal'ai Exile
step
.dungeon ST
.isQuestTurnedIn 3444
#completewith next
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fly Wetlands >> Fly to Wetlands
.target Guthrum Thunderfist
step
.dungeon ST
.isQuestTurnedIn 3444
#completewith next
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >> Take the boat to Theramore
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
.dungeon ST
.isQuestTurnedIn 3444
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.476,51.300
.fly Tanaris >> Fly to Tanaris
.target Baldruc
step
.dungeon ST
.isQuestTurnedIn 3444
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.accept 3446 >> Accept Into the Depths
.accept 3447 >> Accept Secret of the Circle
.target Marvon Rivetseeker
step
.dungeon ST
.isQuestTurnedIn 4787 
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.accept 3528 >> Accept The God Hakkar
.target Yeh'kinya
step << Mage
.dungeon ST
#completewith next
.zone Stormwind City >> Teleport to Stormwind City
step << Mage
.dungeon ST
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
step << !Mage
.dungeon ST
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Ratchet >> Fly to Ratchet
.target Bera Stonehammer
.zoneskip Tanaris,1
step << !Mage
.dungeon ST
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the Boat to Booty Bay
.zoneskip The Hinterlands
step << !Mage
.dungeon ST
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >> Fly to Stormwind
.target Gyll
step
.dungeon ST
#label IntoTheTemple
.isQuestTurnedIn 1469
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.accept 1475 >> Accept Into The Temple of Atal'Hakkar
.target Brohann Caskbelly
step
#completewith next
.goto Stormwind City,47.87,31.31,8,0
.goto Stormwind City,47.87,31.31,6 >>Travel toward |cRXP_FRIENDLY_Royal Factor Bathrilor|r upstairs
step
.goto Stormwind City,48.47,30.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Factor Bathrilor|r inside on the 2nd floor
.turnin 5022 >> Turn in Better Late Than Never
.accept 5048 >> Accept Good Natured Emma
.target Royal Factor Bathrilor
step
.goto Stormwind City,52.37,42.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ol' Emma|r either inside her home on the 2nd floor, or patrolling the Trade District
>>Skip the follow up as you won't return to WPL before hitting 60
.turnin 5048 >> Turn in Good Natured Emma
.unitscan Ol' Emma
step
.isQuestTurnedIn 6183
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 6186 >> Turn in The Blightcaller Cometh
.target Highlord Bolvar Fordragon
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> Train your class spells
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
.goto StormwindClassic,38.54,26.86
.trainer >> Train your class spells
.target Brother Joshua
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> Train your class spells
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
.trainer >> Train your class spells
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.trainer >> Train your class spells
.target Einris Brightspear
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>Go into The Slaughtered Lamb and go downstairs
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
.trainer >> Train your class spells
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
.vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
.target Spackle Thornberry
step << Warrior
.dungeon ST
#phase 1-3
#completewith STEntry
#phase 4-6 << Warrior
.zone Blasted Lands >> You will now run Sunken Temple. Continue to look for a group if you need. You may fly to Blasted Lands and grind mobs there while you form a group
.zoneskip Swamp of Sorrows
.zoneskip 1415
step
.dungeon ST
#completewith STEntry
#phase 4-6 << Warrior
.zone Blasted Lands >> You will now run Sunken Temple. Continue to look for a group if you need. You may fly to Blasted Lands and grind mobs there while you form a group << !Warrior
.zone Blasted Lands >> Continue to look for a Sunken Temple group if needed while you fly and complete you 2 class quests in Blasted Lands << Warrior
.zoneskip Swamp of Sorrows
.zoneskip 1415
step << Warrior
.dungeon !ST
#phase 4-6
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Blasted Lands >> Fly to Blasted Lands
.target Dungar Longdrink
.isQuestAvailable 8423,8424
step
.dungeon ST
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Blasted Lands >> Fly to Blasted Lands
.target Dungar Longdrink
.zoneskip Stormwind City,1
step << Warrior 
#phase 4-6
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.accept 8423 >> Accept Warrior Kinship
.target Fallen Hero of the Horde
step << Warrior 
#phase 4-6
.goto Blasted Lands,44.2,34.8,70,0
.goto Blasted Lands,47.7,38.6,70,0
.goto Blasted Lands,52.2,37.4,70,0
.goto Blasted Lands,54.8,44.8,70,0
.goto Blasted Lands,51.2,55.6,70,0
.goto Blasted Lands,45.8,48.2,70,0
.goto Blasted Lands,49.0,36.6
>>Kill |cRXP_ENEMY_Helboars|r
.complete 8423,1 
.mob Helboar
step << Warrior 
#label WarriorST
#phase 4-6
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 8423 >> Turn in Warrior Kinship
.accept 8424 >> Accept War on the Shadowsworn
.target Fallen Hero of the Horde
step << Warrior 
#phase 4-6
.goto Blasted Lands,63.8,30.1,60,0
.goto Blasted Lands,63.1,45.8,60,0
.goto Blasted Lands,65.9,33.3,60,0
.goto Blasted Lands,63.6,39.2
>>Kill |cRXP_ENEMY_Shadowsworn Adepts|r, |cRXP_ENEMY_Shadowsworn Cultists|r and |cRXP_ENEMY_Shadowsworn Thugs|r
.complete 8424,1 
.mob +Shadowsworn Adept
.complete 8424,2 
.mob +Shadowsworn Cultist
.complete 8424,3 
.mob +Shadowsworn Thug
step << Warrior 
#phase 4-6
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 8424 >> Turn in War on the Shadowsworn
.target Fallen Hero of the Horde
step << Warrior
.dungeon !ST
#phase 4-6
#completewith TravelRatchet
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Constantine|r
.fly Booty Bay >> Fly to Booty Bay
.target Alexandra Constantine
step << Warrior
.dungeon ST
#phase 4-6
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.accept 8425 >> Accept Voodoo Feathers
.target Fallen Hero of the Horde
step
.dungeon ST
#label STEntry
.goto 1415,56.33,76.28
.subzone 1477 >> Travel to Sunken Temple
step
.dungeon ST
.isOnQuest 1475
#completewith next
>>Loot the |cRXP_LOOT_Atal'ai Tablets|r on the ground
>>|cRXP_WARN_These can be looted en-route to the instance portal, as well as inside Sunken Temple|r
.complete 1475,1 
step
.dungeon ST
.goto 1415,56.33,76.28,40,0
.goto 1415,56.46,75.54,20,0
.goto 1415,56.83,75.86,20,0
.goto 1415,56.94,76.03,15,0
.goto 1415,57.06,75.58,20,0
.goto 1415,56.76,75.35,15,0
.goto 1415,56.809,75.151
.subzone 1477,2 >> Zone into Sunken Temple
step
.dungeon ST
.isOnQuest 1475
#sticky
>>Loot the |cRXP_LOOT_Atal'ai Tablets|r on the ground
.complete 1475,1 
step << Druid
.dungeon ST
#phase 4-6
.isOnQuest 9053
#completewith Altar
>>Kill |cRXP_ENEMY_Atal'alarion|r. Loot him for the |cRXP_LOOT_Putrid Vine|r
>>|cRXP_ENEMY_Atal'alarion|r |cRXP_WARN_is on the lower level of Sunken Temple and is summoned by clicking all |cRXP_PICK_Atal'ai Statues|r on the platforms|r
.complete 9053,1 
step 
.dungeon ST
.isOnQuest 3446
#completewith next
>>Click on the |cRXP_PICK_Altar of Hakkar|r
>>|cRXP_WARN_The |cRXP_PICK_Altar of Hakkar|r is located on the lower level of Sunken Temple|r
.turnin 3446 >> Turn in Into the Depths
step 
.dungeon ST
.isOnQuest 3447
>>Click on the |cRXP_PICK_Idol of Hakkar|r
>>|cRXP_WARN_Clicking all of the |cRXP_PICK_Atal'ai Statues|r on the platforms will activate the|r |cRXP_PICK_Idol of Hakkar|r
>>|cRXP_WARN_The |cRXP_PICK_Idol of Hakkar|r is located on the lower level of Sunken Temple|r
.turnin 3447 >> Turn in Secret of the Circle
step 
.dungeon ST
.isOnQuest 3446
#label Altar
>>Click on the |cRXP_PICK_Altar of Hakkar|r
>>|cRXP_WARN_The |cRXP_PICK_Altar of Hakkar|r is located on the lower level of Sunken Temple|r
.turnin 3446 >> Turn in Into the Depths
step << Druid
.dungeon ST
#phase 4-6
.isOnQuest 9053
>>Kill |cRXP_ENEMY_Atal'alarion|r. Loot him for the |cRXP_LOOT_Putrid Vine|r
>>|cRXP_ENEMY_Atal'alarion|r |cRXP_WARN_is on the lower level of Sunken Temple and is summoned by clicking all |cRXP_PICK_Atal'ai Statues|r on the platforms|r
.complete 9053,1 
step << Paladin/Warrior/Warlock
.dungeon ST
#phase 4-6
.isOnQuest 8418,8425,8422
>>Kill |cRXP_ENEMY_Gasher|r and |cRXP_ENEMY_Zul'Lor|r. Loot them for their |cRXP_LOOT_Amber Voodoo Feathers|r
>>Kill |cRXP_ENEMY_Mijan|r and |cRXP_ENEMY_Hukku|r. Loot them for their |cRXP_LOOT_Blue Voodoo Feathers|r
>>Kill |cRXP_ENEMY_Zolo|r and |cRXP_ENEMY_Loro|r. Loot them for their |cRXP_LOOT_Green Voodoo Feathers|r
>>|cRXP_WARN_This quest is completed on the upper level of Sunken Temple|r
.complete 8418,1 << Paladin 
.complete 8418,2 << Paladin 
.complete 8418,3 << Paladin 
.complete 8425,1 << Warrior 
.complete 8425,2 << Warrior 
.complete 8425,3 << Warrior 
.complete 8422,1 << Warlock 
.complete 8422,2 << Warlock 
.complete 8422,3 << Warlock 
step
.dungeon ST
.isOnQuest 3528
>>|cRXP_WARN_Use the|r |T132834:0|t[Egg of Hakkar] |cRXP_WARN_while next to the Dragonflayer Skeleton, then complete the event|r
>>Kill the minions of |cRXP_ENEMY_Hakkar|r until the |cRXP_ENEMY_Avatar of Hakkar|r joins
>>Kill the |cRXP_ENEMY_Avatar of Hakkar|r. Loot it for the |T136148:0|t[|cRXP_LOOT_Essence of Hakkar|r]
>>|cRXP_WARN_Use the|r |T136148:0|t[|cRXP_LOOT_Essence of Hakkar|r] |cRXP_WARN_to fill the|r |T132834:0|t[Egg of Hakkar]
.collect 10663,1,3528,1 
.disablecheckbox
.complete 3528,1 
.use 10465 
.use 10663 
step
.dungeon ST
.isOnQuest 1446
>>Kill |cRXP_ENEMY_Jammal'an the Prophet|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_You must kill the 6 |cRXP_ENEMY_Trolls|r on the upper platforms to gain access to|r |cRXP_ENEMY_Jammal'an the Prophet|r
.complete 1446,1 
step << Hunter/Mage/Priest/Rogue
.dungeon ST
#phase 4-6
.isOnQuest 8232,8253,8257,8236
>>Kill |cRXP_ENEMY_Morphaz|r. Loot it for the |cRXP_LOOT_Tooth of Morphaz|r << Hunter
>>Kill |cRXP_ENEMY_Morphaz|r. Loot it for the |cRXP_LOOT_Arcane Shard|r << Mage
>>Kill |cRXP_ENEMY_Morphaz|r. Loot it for the |cRXP_LOOT_Blood of Morphaz|r << Priest
>>Kill |cRXP_ENEMY_Morphaz|r. Loot it for the |cRXP_LOOT_Azure Key|r << Rogue
.complete 8232,1 << Hunter 
.complete 8253,1 << Mage 
.complete 8257,1 << Priest 
.complete 8236,1 << Rogue 
step
.dungeon ST
>>Kill the |cRXP_ENEMY_Shade of Eranikus|r. Loot him for the |T135229:0|t[|cRXP_LOOT_Essence of Eranikus|r]
>>|cRXP_WARN_Use the |T135229:0|t[|cRXP_LOOT_Essence of Eranikus|r] to start the quest|r
>>|cRXP_WARN_Ensure you have killed all |cRXP_ENEMY_Dragonkin|r mobs on the upper level before engaging the |cRXP_ENEMY_Shade of Eranikus|r otherwise they will all agro onto you|r
.collect 10454,1,3373,1 
.accept 3373 >> Accept The Essence of Eranikus
step
.dungeon ST
.isOnQuest 3373
>>Click the |cRXP_PICK_Essence Font|r
.turnin 3373 >> Turn in The Essence of Eranikus
step << Warrior
.dungeon ST
#phase 4-6
.isQuestComplete 8425
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Hero of the Horde|r
>>|cRXP_WARN_It is strongly advised you choose the|r |T132788:0|t[|cFF0070FFDiamond Flask|r] |cRXP_WARN_as your reward. Although the other rewards are also very good, you will not ever replace the|r |T132788:0|t[|cFF0070FFDiamond Flask|r]
.turnin 8425 >> Turn in Voodoo Feathers
.target Fallen Hero of the Horde
step
.dungeon ST
#completewith TempleTurnIn
.zone Stormwind City >> Travel to Stormwind
step
.dungeon ST
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Constantine|r
.fly Stormwind >> Fly to Stormwind
.target Alexandra Constantine
.zoneskip Stormwind City
step
.dungeon ST
#label TempleTurnIn
.isQuestComplete 1475
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.turnin 1475 >> Turn in Into The Temple of Atal'Hakkar
.target Brohann Caskbelly
step
.dungeon ST
#phase 4-6
#completewith next
.hs >> Hearth to Southshore
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.isOnQuest 1446,8418
step << Rogue
#phase 4-6
.isQuestComplete 8236
.goto Hillsbrad Foothills,75.575,22.076,20,0
.goto Hillsbrad Foothills,86.026,78.879
.subzone 3486 >> Travel to Ravenholdt Manor
step << Rogue
#phase 4-6
.isQuestComplete 8236
.goto Hillsbrad Foothills,86.026,78.879
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r upstairs
.turnin 8236 >> Turn in The Azure Key
.target Lord Jorach Ravenholdt
step << Rogue
#phase 4-6
.isQuestTurnedIn 8236
.goto Hillsbrad Foothills,83.395,32.309,90,0
.goto The Hinterlands,7.50,58.87
.zone The Hinterlands >> Travel to The Hinterlands
step
.dungeon ST
.isQuestComplete 1446
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Hinterlands >> Fly to The Hinterlands
.target Darla Harris
.zoneskip The Hinterlands
step
.dungeon ST
.isQuestComplete 1446
.goto The Hinterlands,33.751,75.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Atal'ai Exile|r
.turnin 1446 >> Turn in Jammal'an the Prophet
.target Atal'ai Exile
step << Warrior/Priest/Hunter/Rogue/Warlock
.dungeon ST
#completewith next
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fly Booty Bay >> Fly to Booty Bay
.target Guthrum Thunderfist
step << Paladin
.dungeon ST
#phase 4-6
.isQuestComplete 8418
#completewith next
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
.fly Western Plaguelands >> Fly to Western Plaguelands
.target Guthrum Thunderfist
step << Paladin
.dungeon ST
#phase 4-6
.isQuestComplete 8418
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8418 >> Turn in Forging the Mightstone
.target Commander Ashlam Valorfist
step << Paladin
.dungeon ST
#phase 4-6
.isQuestTurnedIn 8418
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.fly Booty Bay >> Fly to Booty Bay
.target Bibilfaz Featherwhistle
.zoneskip Western Plaguelands,1
step << Mage
#completewith next
.cast 3565 >> Teleport to Darnassus
step << Mage
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 4986 >> Turn in Glyphed Oaken Branch
.target Mathrengyl Bearwalker
step << Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
step << Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
step << Mage
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Azshara >> Fly to Azshara
.target Vesprystus
.zoneskip Teldrassil,1
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step << Druid
.isOnQuest 6762
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
.turnin 6762 >> Turn in Rabine Saturna
.target Rabine Saturna
step << Druid
.goto Moonglade,48.102,67.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
.fly Azshara >> Fly to Azshara
.target Sindrayl
.zoneskip Moonglade,1
step << !Druid !Mage
#completewith next
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.fly Booty Bay >> Fly to Booty Bay
.target Dungar Longdrink
.zoneskip Stormwind City,1
step << !Druid !Mage
#label TravelRatchet
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> Take the Boat to Ratchet
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 58-59 Felwood/Winterspring
#next 59-60 Winterspring/Silithus part 1
step << !Druid !Mage
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.fly Azshara >> Fly to Azshara
.target Bragok
step << Hunter
.dungeon ST
#phase 4-6
.isQuestComplete 8232
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8232 >> Turn in The Green Drake
.target Ogtinc
step << Mage
.dungeon ST
#phase 4-6
.isQuestComplete 8253
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
>>|cRXP_WARN_This will teleport you to the top of the mountain|r
.turnin 3503 >> Turn in Meeting with the Master
.target Sanath Lim-yo
step << Mage
.dungeon ST
#phase 4-6
.isQuestComplete 8253
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
.turnin 8253 >> Turn in Destroy Morphaz
.target Archmage Xylem
step << Mage
.dungeon ST
#phase 4-6
.isQuestTurnedIn 8253
#completewith ArcaneRunes
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
>>|cRXP_WARN_This will teleport you back down|r
.turnin 3421 >> Turn in Return Trip
.timer 8,Return Trip RP
.target Nyrill
step
#completewith COTF
.goto Ashenvale,55.97,31.97,0
.goto Felwood,54.14,86.83
.zone Felwood >> Travel to Felwood
step << Priest
.dungeon ST
#phase 4-6
.isQuestComplete 8257
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 8257 >> Turn in Blood of Morphaz
.target Greta Mosshoof
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 3942 >> Turn in Linken's Memory
.accept 4084 >> Accept Silver Heart
.target Eridan Bluewind
step
#label COTF
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.accept 4421 >> Accept The Corruption of the Jadefire
.target Eridan Bluewind
step
#hardcoreserver
.isQuestTurnedIn 3912
#completewith next
>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood. Loot them for their |cRXP_LOOT_Silvery Claws|r
.complete 4084,1 
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
>>Kill |cRXP_ENEMY_Jadefire Felsworns|r, |cRXP_ENEMY_Jadefire Shadowstalkers|r, |cRXP_ENEMY_Jadefire Rogues|r and |cRXP_ENEMY_Xavathras|r
>>|cRXP_WARN_This area can be very dangerous. Be extremely cautious|r
>>|cRXP_ENEMY_Jadefire Felsworns|r |cRXP_WARN_cast|r |T136135:0|t[Cripple] |cRXP_WARN_which slows your movement speed|r
>>|cRXP_ENEMY_Jadefire Shadowstalkers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth] |cRXP_WARN_and patrol around, as well as apply a|r |T136093:0|t[Slowing Poison] |cRXP_WARN_which slows you for 25 seconds|r
.complete 4421,1 
.mob +Jadefire Felsworn
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,2 
.mob +Jadefire Shadowstalker
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,3 
.mob +Jadefire Rogue
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,4 
.goto Felwood,32.23,67.10
.mob +Xavathras
step
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4421 >> Turn in The Corruption of the Jadefire
.accept 4906 >> Accept Further Corruption
.target Eridan Bluewind
step << Warlock
.dungeon ST
#phase 4-6
.isQuestComplete 8422
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8422 >> Turn in Trolls of a Feather
.target Impsy
step
#hardcoreserver
.isQuestTurnedIn 3912
>>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r in Felwood. Loot them for their |cRXP_LOOT_Silvery Claws|r
>>Kill |cRXP_ENEMY_Irontree Stompers|r or |cRXP_ENEMY_Irontree Wanderers|r. Loot them for their |cRXP_LOOT_Irontree Heart|r
.complete 4084,1 
.mob +Angerclaw Grizzly
.mob +Angerclaw Mauler
.mob +Felpaw Ravager
.mob +Felpaw Scavenger
.goto Felwood,55.6,23.4,70,0
.goto Felwood,56.3,20.6,70,0
.goto Felwood,50.5,12.6,70,0
.goto Felwood,62.4,16.1,70,0
.goto Felwood,53.5,28.1,70,0
.goto Felwood,46.8,19.6,70,0
.goto Felwood,39.8,30.8,70,0
.goto Felwood,55.6,23.4
.complete 4084,2 
.goto Felwood,48.4,29.2,70,0
.goto Felwood,46.8,23.9,70,0
.goto Felwood,50.3,18.6,70,0
.goto Felwood,51.8,25.5
.mob +Irontree Stomper
.mob +Irontree Wanderer
step
.goto Felwood,41.58,19.19,90,0
.goto Felwood,38.98,22.31
>>Kill |cRXP_ENEMY_Xavaric|r. Loot him for the |T133942:0|t[|cRXP_LOOT_Flute of Xavaric|r]
>>|cRXP_WARN_Use the |T133942:0|t[|cRXP_LOOT_Flute of Xavaric|r] to start the quest|r
.complete 4906,4 
.collect 11668,1,939,1 
.accept 939 >> Accept Flute of Xavaric
.use 11668 
.mob Xavaric
step
.goto Felwood,38.98,22.31,70,0
.goto Felwood,43.44,14.47,70,0
.goto Felwood,38.98,22.31,70,0
.goto Felwood,38.98,22.31
>>Kill |cRXP_ENEMY_Jadefire Hellcallers|r, |cRXP_ENEMY_Jadefire Betrayers|r and |cRXP_ENEMY_Jadefire Trickster|r. Loot them for their |cRXP_LOOT_Jadefire Felbinds|r
.complete 4906,1 
.mob +Jadefire Hellcaller slain (8)
.complete 4906,2 
.mob +Jadefire Betrayer slain (8)
.complete 4906,3 
.mob +Jadefire Trickster slain (8)
.complete 939,1 
.mob +Jadefire Hellcaller slain (8)
.mob +Jadefire Betrayer slain (8)
.mob +Jadefire Trickster slain (8)
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4084 >> Turn in Silver Heart
.accept 4005 >> Accept Aquementas
.target Eridan Bluewind
step
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 939 >> Turn in Flute of Xavaric
.turnin 4906 >> Turn in Further Corruption
.accept 4441 >> Accept Felbound Ancients
.target Eridan Bluewind
step
#completewith next
.goto Felwood,60.204,5.841
.subzone 1762 >> Travel to Felpaw Village
step
.goto Felwood,60.204,5.841
>>Click the |cRXP_PICK_Deadwood Cauldron|r
>>|cRXP_WARN_If you create an escape path, you can simply click the |cRXP_PICK_Deadwood Cauldron|r and then run away. You don't need to kill all surrounding|r |cRXP_ENEMY_Furbolgs|r
.turnin 5084 >> Turn in Falling to Corruption
.accept 5085 >> Accept Mystery Goo
step
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >> Travel to Winterspring via Timbermaw Hold
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5085 >> Turn in Mystery Goo
.accept 5086 >> Accept Toxic Horrors
.target Donova Snowden
step
#completewith next
.goto Winterspring,27.898,34.449,15,0
.goto Winterspring,27.898,34.449,0
.goto Felwood,65.280,7.515,20 >> Travel to Felwood via Timbermaw Hold
step
.goto Felwood,50.6,22.4,70,0
.goto Felwood,49.6,26.6,70,0
.goto Felwood,48.0,24.0,70,0
.goto Felwood,49.6,26.6
>>Kill |cRXP_ENEMY_Toxic Horrors|r. Loot them for their |cRXP_LOOT_Toxic Horror Droplets|r
.complete 5086,1 
.mob Toxic Horror
step
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >> Travel to Winterspring via Timbermaw Hold
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5086 >> Turn in Toxic Horrors
.accept 5087 >> Accept Winterfall Runners
.accept 4842 >> Accept Strange Sources
.target Donova Snowden
step
#sticky
#label runners
>>Kill the |cRXP_ENEMY_Winterfall Runners|r. Loot them for their |cRXP_LOOT_Winterfall Crate|r
>>|cRXP_WARN_Their spawn point is on the west side of Winterspring near the Timbermaw tunnel. Their patrol route is marked on your map|r
.complete 5087,1 
.line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29
.unitscan Winterfall Runner
step
.goto Winterspring,32.4,37.6,0
.goto Winterspring,30.6,35.8,70,0
.goto Winterspring,33.6,36.8,70,0
.goto Winterspring,39.4,43.8,70,0
.goto Winterspring,41.6,42.8
>>Kill |cRXP_ENEMY_Winterfall Pathfinders|r, |cRXP_ENEMY_Winterfall Den Watchers|r and |cRXP_ENEMY_Winterfall Totemics|r
>>|cRXP_WARN_If you find the |T135816:0|t[|cRXP_LOOT_Winterfall Ritual Totem|r], don't start the quest from this item yet|r
.complete 5082,1 
.mob +Winterfall Pathfinder
.complete 5082,2 
.mob +Winterfall Den Watcher
.complete 5082,3 
.mob +Winterfall Totemic
step
#completewith next
.goto Felwood,65.48,3.47,20 >> Travel through Timbermaw Hold to |cRXP_FRIENDLY_Kernda|r
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernda|r
>>|cRXP_FRIENDLY_Kernda|r |cRXP_WARN_patrols the lower Timbermaw Hold path|r
.use 20741 >>|cRXP_WARN_Use the |T136232:0|t[|cRXP_LOOT_Deadwood Ritual Totem|r] to start the quest|r
.accept 8470 >> Accept Deadwood Ritual Totem
.turnin 8470 >> Turn in Deadwood Ritual Totem
.reputation 576,neutral,<0,1 
.itemcount 20741,1 
.target Kernda
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernda|r
>>|cRXP_FRIENDLY_Kernda|r |cRXP_WARN_patrols the lower Timbermaw Hold path|r
.use 20742 >>|cRXP_WARN_Use the |T135816:0|t[|cRXP_LOOT_Winterfall Ritual Totem|r] to start the quest|r
>>Skip this step if you aren't neutral with Timbermaw Hold
.accept 8471 >> Accept Winterfall Ritual Totem
.turnin 8471 >> Turn in Winterfall Ritual Totem
.reputation 576,neutral,<0,1 
.itemcount 20742,1 
.target Kernda
step
.goto Felwood,65.692,2.810
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meilosh|r
>>Skip this step if you aren't friendly with Timbermaw Hold
.accept 6031 >> Accept Runecloth
.turnin 6031 >> Turn in Runecloth
.reputation 576,friendly,<0,1 
.itemcount 14047,30 
.target Meilosh
step
#requires runners
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
>>|cRXP_WARN_Be ready to move away from |cRXP_FRIENDLY_Donova Snowden|r quickly as after you turn in Winterfall Runners, 3 |cRXP_ENEMY_Winterfall Ambushers|r will attack her location|r
.turnin 5082 >> Turn in Threat of the Winterfall
.turnin 5087 >> Turn in Winterfall Runners
.target Donova Snowden
step
.group
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.accept 5121 >> Accept High Chief Winterfall
.target Donova Snowden
step
#completewith next
.goto Winterspring,51.971,30.387
.subzone 2253 >> Travel to Starfall Village
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r and |cRXP_FRIENDLY_Jaron Stoneshaper|r
.turnin 5250 >> Turn in Starfall
.accept 5244 >> Accept The Ruins of Kel'Theril
.target +Wynd Nightchaser
.goto Winterspring,51.971,30.387
.turnin 5244 >> Turn in The Ruins of Kel'Theril
.accept 4861 >> Accept Enraged Wildkin
.goto Winterspring,52.139,30.429
.target +Jaron Stoneshaper
step
.group 3
#completewith next
.goto Winterspring,69.75,38.24
>>Kill |cRXP_ENEMY_High Chief Winterfall|r. Loot him for his |T133740:0|t[|cRXP_LOOT_Crudely-written Log|r]
>>|cRXP_WARN_Use the |T133740:0|t[|cRXP_LOOT_Crudely-written Log|r] to start the quest|r
.complete 5121,1 
.collect 12842,1,5123,1 
.accept 5123 >> Accept The Final Piece
.use 12842 
.mob High Chief Winterfall
step
.goto Winterspring,66.83,34.86,70,0
.goto Winterspring,68.00,37.71
>>Kill |cRXP_ENEMY_Winterfall Shamans|r, |cRXP_ENEMY_Winterfall Den Watchers|r and |cRXP_ENEMY_Winterfall Ursas|r
.complete 8464,1 
.mob +Winterfall Shaman
.complete 8464,2 
.mob +Winterfall Shaman
.complete 8464,3 
.mob +Winterfall Ursa
step
.group 3
.goto Winterspring,69.75,38.24
>>Kill |cRXP_ENEMY_High Chief Winterfall|r. Loot him for his |T133740:0|t[|cRXP_LOOT_Crudely-written Log|r]
>>|cRXP_WARN_Use the |T133740:0|t[|cRXP_LOOT_Crudely-written Log|r] to start the quest|r
.complete 5121,1 
.collect 12842,1,5123,1 
.accept 5123 >> Accept The Final Piece
.use 12842 
.mob High Chief Winterfall
step
#completewith next
.subzone 2255 >> Travel to Everlook
step << Hunter
.goto Winterspring,60.389,37.916
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azzleby|r
.stable >> Stable your pet. You will tame a |cRXP_ENEMY_Winterspring Screecher|r shortly
.target Azzleby
.zoneskip Winterspring,1
step << Hunter
.goto Winterspring,57.8,26.4,70,0
.goto Winterspring,59.6,18.0
>>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Winterspring Screecher|r to tame it|r
.train 3666 >>|cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 8)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
.mob Winterspring Screecher
.zoneskip Winterspring,1
step << Hunter
#completewith next
.subzone 2255 >> Travel to Everlook
step << Hunter
.goto Winterspring,60.389,37.916
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulbrek Firehand|r
.stable >> Withdraw your pet
.target Azzleby
.zoneskip Winterspring,1
step
.goto Winterspring,61.358,38.837
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
.home >> Set your Hearthstone to Everlook
.target Innkeeper Vizzie
.zoneskip Winterspring,1
step
.isOnQuest 4808
.goto Winterspring,61.455,36.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy Coppergrab|r
.bankwithdraw 12438 >> Withdraw the following items from your bank:
>>|T133469:0|t[Tinkee's Letter] 
.target Izzy Coppergrab
step
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
.turnin 4808 >> Turn in Felnok Steelspring
.accept 4809 >> Accept Chillwind Horns
.target Felnok Steelspring
step
.group
.goto Winterspring,61.919,38.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
.accept 969 >> Accept Luck Be With You
.target Witch Doctor Mau'ari
step
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.accept 3783 >> Accept Are We There, Yeti?
.target Umi Rumplesnicker
step
#completewith YetiCave
>>Kill |cRXP_ENEMY_Fledgling Chillwinds|r, |cRXP_ENEMY_Chillwind Chimaeras|r and |cRXP_ENEMY_Chillwind Ravagers|r. Loot them for their |cRXP_LOOT_Uncracked Chillwind Horns|r
>>|cRXP_WARN_Don't go out of your way to complete this yet|r
.complete 4809,1 

.mob Chillwind Chimaera

step
.goto Winterspring,66.3,42.6
>>Kill |cRXP_ENEMY_Ice Thistle Yetis|r and |cRXP_ENEMY_Rogue Ice Thistles|r. Loot them for their |cRXP_LOOT_Thick Yeti Fur|r
.complete 3783,1
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
step
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.turnin 3783 >> Turn in Are We There, Yeti?
.accept 977 >> Accept Are We There, Yeti?
.target Umi Rumplesnicker
step
#label YetiCave
#completewith next
.goto Winterspring,67.59,42.96,35,0
.goto Winterspring,67.97,41.44,30 >> Enter the Yeti Cave
step
.goto Winterspring,69.90,41.67
>>Kill |cRXP_ENEMY_Ice Thistle Matriarchs|r and |cRXP_ENEMY_Ice Thistle Patriarchs|r. Loot them for their |cRXP_LOOT_Pristine Yeti Horns|r
.complete 977,1 
.mob Ice Thistle Matriarch
.mob Ice Thistle Patriarch
step
#completewith next
>>Kill |cRXP_ENEMY_Fledgling Chillwinds|r, |cRXP_ENEMY_Chillwind Chimaeras|r and |cRXP_ENEMY_Chillwind Ravagers|r. Loot them for their |cRXP_LOOT_Uncracked Chillwind Horns|r
>>|cRXP_WARN_Don't go out of your way to complete this yet|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
#completewith next
.subzone 2248 >> Travel south to Dun Mandarr
step
.goto Winterspring,58.991,59.784
>>Click the |cRXP_PICK_Damaged Crate|r on the ground
.turnin 4861 >> Turn in Enraged Wildkin
.accept 4863 >> Accept Enraged Wildkin
step
.goto Winterspring,61.439,60.691
>>Click on |cRXP_PICK_Jaron's Wagon|r
.turnin 4863 >> Turn in Enraged Wildkin
.accept 4864 >> Accept Enraged Wildkin
step
.goto Winterspring,61.398,60.728
>>Loot |cRXP_LOOT_Jaron's Supplies|r on the ground
.complete 4864,1 
step
.goto Winterspring,63.86,59.39,70,0
.goto Winterspring,65.52,60.29,70,0
.goto Winterspring,65.05,63.03,70,0
.goto Winterspring,65.52,60.29
>>Kill |cRXP_ENEMY_Crazed Owlbeasts|r, |cRXP_ENEMY_Moontouched Owlbeasts|r and |cRXP_ENEMY_Berserk Owlbeasts|r. Loot them for a |cRXP_LOOT_Blue-feathered Amulet|r
.complete 4864,2 
.mob Crazed Owlbeast
.mob Moontouched Owlbeast
.mob Berserk Owlbeast
step
#completewith DDG
>>Kill |cRXP_ENEMY_Fledgling Chillwinds|r, |cRXP_ENEMY_Chillwind Chimaeras|r and |cRXP_ENEMY_Chillwind Ravagers|r. Loot them for their |cRXP_LOOT_Uncracked Chillwind Horns|r
>>|cRXP_WARN_Don't go out of your way to complete this yet|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
.group 3
.goto Winterspring,59.06,68.33
>>Loot the |cRXP_LOOT_Frostmaul Shards|r on the ground scattered around Frostwhisper Gorge
.complete 969,1 
step
#label DDG
.goto Winterspring,59.88,73.95
>>Explore Darkwhisper Gorge. You can do this without agroing any of the nearby Elites
.complete 4842,1 
step
.hs >> Hearth to Everlook
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
.zoneskip Winterspring,1
step
.isQuestComplete 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.turnin 977 >> Turn in Are We There, Yeti?
.accept 5163 >> Accept Are We There, Yeti?
.target Umi Rumplesnicker
step
.isQuestTurnedIn 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.accept 5163 >> Accept Are We There, Yeti?
.target Umi Rumplesnicker
step
.isQuestTurnedIn 977
.goto Winterspring,61.543,38.615
.use 12928 >> |cRXP_WARN_Use|r |T133003:0|t[Umi's Mechanical Yeti] |cRXP_WARN_on|r |cRXP_FRIENDLY_Legacki|r
.complete 5163,1 
.target Legacki
step
.isQuestComplete 4809
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
.turnin 4809 >> Turn in Chillwind Horns
.target Felnok Steelspring
step
.group
.isQuestComplete 969
.goto Winterspring,61.919,38.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
.turnin 969 >> Turn in Luck Be With You
.target Witch Doctor Mau'ari
step
.abandon 969 >> Abandon Luck Be With You
step
#completewith SalfaTurnIn
>>Kill |cRXP_ENEMY_Fledgling Chillwinds|r, |cRXP_ENEMY_Chillwind Chimaeras|r and |cRXP_ENEMY_Chillwind Ravagers|r. Loot them for their |cRXP_LOOT_Uncracked Chillwind Horns|r
>>|cRXP_WARN_Don't go out of your way to complete this yet|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
#completewith next
.goto Winterspring,52.139,30.429
.subzone 2253 >> Travel to Starfall Village
step
.goto Winterspring,52.139,30.429
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaron Stoneshaper|r
.turnin 4864 >> Turn in Enraged Wildkin
.target Jaron Stoneshaper
step
.group
.isQuestComplete 5121
.isQuestComplete 5123
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 4842 >> Turn in Strange Sources
.turnin 5121 >> Turn in High Chief Winterfall
.turnin 5123 >> Turn in The Final Piece
.accept 5128 >> Accept Words of the High Chief
.target Donova Snowden
step
.group
.isQuestComplete 5121
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 4842 >> Turn in Strange Sources
.turnin 5121 >> Turn in High Chief Winterfall
.target Donova Snowden
step
.group
.isQuestComplete 5123
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 4842 >> Turn in Strange Sources
.turnin 5123 >> Turn in The Final Piece
.accept 5128 >> Accept Words of the High Chief
.target Donova Snowden
step
.group
.isQuestTurnedIn 5123
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 4842 >> Turn in Strange Sources
.accept 5128 >> Accept Words of the High Chief
.target Donova Snowden
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 4842 >> Turn in Strange Sources
.target Donova Snowden
step
.abandon 5121 >> Abandon High Chief Winterfall
step
#label SalfaTurnIn
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8464 >> Turn in Winterfall Activity
.target Salfa
step << !Druid
#completewith next
.goto Moonglade,35.77,71.94
.zone Moonglade >> Travel to Moonglade via Timbermaw Hold
step << Druid
#completewith next
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
.turnin 6762 >> Turn in Rabine Saturna
.accept 1124 >> Accept Wasteland
.target Rabine Saturna
step
.group
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
>>|cRXP_WARN_Skip this step if the Dire Maul dialogue is not available|r
.skipgossip
.accept 5527 >> Accept A Reliquary of Purity
.target Rabine Saturna
step << Druid
.goto Moonglade,44.148,45.228
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
.fly Teldrassil >> Fly to Teldrassil
.target Silva Fil'naveth
.skipgossip
step << !Druid
.goto Moonglade,48.102,67.346
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
.fp Moonglade >> Get the Moonglade Flight path
.fly Teldrassil >> Fly to Teldrassil << !Mage
.target Sindrayl
.zoneskip Moonglade,1
step << Mage
.zone Darnassus >> Teleport to Darnassus
.zoneskip Moonglade,1
step << Mage
.goto Darnassus,39.31,84.67
.use 11682 >>|cRXP_WARN_Use|r |T134870:0|t[Eridan's Vial] |cRXP_WARN_at the moonwell inside the Temple of the Moon|r
.complete 4441,1 
step << Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Travel through the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
step
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 979 >> Accept Find Ranshalla
.target Erelas Ambersky
step << !Mage
#completewith BlessedWater
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step << !Mage
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 4986 >> Turn in Glyphed Oaken Branch
.target Mathrengyl Bearwalker
step << !Mage
#label BlessedWater
.goto Darnassus,39.31,84.67
.use 11682 >>|cRXP_WARN_Use|r |T134870:0|t[Eridan's Vial] |cRXP_WARN_at the moonwell inside the Temple of the Moon|r
.complete 4441,1 
step << !Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Travel through the purple portal to Rut'theran Village
.zoneskip Darnassus,1
step
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
.fly Ashenvale >> Fly to Ashenvale
.target Vesprystus
step
#completewith FelboundAncients
.goto Ashenvale,55.97,31.97,0
.goto Felwood,54.14,86.83
.zone Felwood >> Travel to Felwood
step
.group
.isOnQuest 5128
.goto Felwood,51.136,81.754
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
.turnin 5128 >> Turn in Words of the High Chief
.target Kelek Skykeeper
step
#label FelboundAncients
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4441 >> Turn in Felbound Ancients
.timer 16,Felbound Ancients RP
.accept 4442 >> Accept Purified!
.turnin 4442 >> Turn in Purified!
.target Eridan Bluewind
step
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
>>|cRXP_WARN_Turn in any remaining|r |T132884:0|t[|cRXP_LOOT_Corrupted Soul Shards|r] |cRXP_WARN_you have to receive additional|r |T132804:0|t[|cRXP_LOOT_Cenarion Plant Salves|r]
>>|cRXP_WARN_If you don't have any, skip this step|r
.daily 4103 >> Accept Salve via Hunting
.dailyturnin 4103 >> Turn in Salve via Hunting
.target Arathandris Silversky
.zoneskip Felwood,1
step
#completewith next
#icon |T135934:0|t
.goto Felwood,55.808,10.438,0
.goto Felwood,50.575,13.918,0
.goto Felwood,63.336,22.610,0
.goto Felwood,40.142,44.353,0
.goto Felwood,40.142,56.523,0
.goto Felwood,48.260,75.650,0
.goto Felwood,45.942,85.219,0
.goto Felwood,52.893,87.825,0
.goto Felwood,52.893,87.825,25,0
.goto Felwood,45.942,85.219,25,0
.goto Felwood,48.260,75.650,25,0
.goto Felwood,40.142,56.523,25,0
.goto Felwood,40.142,44.353,25,0
.goto Felwood,50.575,13.918,25,0
.goto Felwood,55.808,10.438,25,0
.goto Felwood,63.336,22.610,25,0
.cast 6478 >> |cRXP_WARN_Look for a |cRXP_PICK_Corrupted Songflower|r. Click it to cleanse it. Click the |cRXP_PICK_Cleansed Songflower|r to receive the hour-long|r |T135934:0|t[Songflower Serenade] |cRXP_WARN_buff|r
>>|cRXP_WARN_Their locations have been marked on your map. Skip this step if you aren't able to find one|r
.itemcount 11516,2 
step
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishellena|r
.fly Tanaris >> Fly to Tanaris
.target Mishellena
.zoneskip Felwood,1
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 59-60 Winterspring/Silithus part 1
#next 59-60 Winterspring/Silithus part 2
step
.group
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.accept 4507 >> Accept Pawn Captures Queen
.target Alchemist Pestlezugg
step
.isQuestTurnedIn 977
.goto Tanaris,51.059,26.873
.use 12928 >> |cRXP_WARN_Use|r |T133003:0|t[Umi's Mechanical Yeti] |cRXP_WARN_on|r |cRXP_FRIENDLY_Sprinkle|r
.complete 5163,2 
.target Sprinkle
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 4504 >> Accept Super Sticky
.target Tran'rek
step
#hardcoreserver
.isQuestTurnedIn 4084
#completewith SummonAquementas
>>Open |T133647:0|t[Eridan's Supplies] for the |T133742:0|t[Book of Aquor], |cRXP_LOOT_Silvery Claws|r and |cRXP_LOOT_Irontree Heart|r
.use 11617 
.collect 11169,1,4005,1 
.collect 11172,11,4005,1 
.collect 11173,1,4005,1 
step 
.dungeon ST
.isQuestComplete 3528
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3528 >> Turn in The God Hakkar
.target Yeh'kinya
step
.isQuestTurnedIn 4084
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >> Travel to Lost Rigger Cove
step
.isQuestTurnedIn 4084
#completewith next
#label SummonAquementas
.goto Tanaris,70.43,49.90
.cast 13978 >> |cRXP_WARN_Use the|r |T133742:0|t[Book of Aquor] |cRXP_WARN_to summon |cRXP_ENEMY_Aquementas|r at the stone summoning circle within Lost Rigger Cove|r
.timer 15,Aquementas RP
.use 11617 
.use 11169 
step
#hardcoreserver
.isQuestTurnedIn 4084
.goto Tanaris,70.43,49.93
>>Kill |cRXP_ENEMY_Aquementas|r
.complete 4005,1 
.use 11617 
.use 11169 
.mob Aquementas
step
#completewith next
.subzone 976 >> Travel to Gadgetzan
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Un'Goro >> Fly to Un'Goro Crater
.target Bera Stonehammer
.zoneskip Tanaris,1
step
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 4005 >> Turn in Aquementas
.accept 3961 >> Accept Linken's Adventure
.target J.D. Collie
step
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3961 >> Turn in Linken's Adventure
.accept 3962 >> Accept It's Dangerous to Go Alone
.target Linken
step
.isQuestTurnedIn 977
.goto Un'Goro Crater,43.660,9.371
.use 12928 >> |cRXP_WARN_Use|r |T133003:0|t[Umi's Mechanical Yeti] |cRXP_WARN_on|r |cRXP_FRIENDLY_Quixxil|r
.complete 5163,3 
.target Quixxil
step
#hardcoreserver
.isQuestTurnedIn 4005
.destroy 11169 >> Delete the |T133742:0|t[Book of Aquor]
step
.goto Un'Goro Crater,46.2,19.6,70,0
.goto Un'Goro Crater,50.6,26.6,70,0
.goto Un'Goro Crater,48.4,32.8,70,0
.goto Un'Goro Crater,59.6,32.4,70,0
.goto Un'Goro Crater,63.4,23.6,70,0
.goto Un'Goro Crater,59.4,24.6,70,0
.goto Un'Goro Crater,51.6,24.8
>>Kill |cRXP_ENEMY_Tar Beasts|r, |cRXP_ENEMY_Tar Creepers|r, |cRXP_ENEMY_Tar Lurkers|r and |cRXP_ENEMY_Tar Lords|r. Loot them for their |cRXP_LOOT_Super Sticky Tar|r
.complete 4504,1 
.mob Tar Beast
.mob Tar Creeper
.mob Tar Lurker
.mob Tar Lord
step << Druid
.dungeon ST
#phase 4-6
.isQuestComplete 9053
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 9053 >> Turn in A Better Ingredient
.target Torwa Pathfinder
step
#hardcoreserver
.group 3
.isOnQuest 3962
#completewith next
>>|cRXP_WARN_Make your way to the top of Fire Plume Ridge|r
.cast 14247 >>|cRXP_WARN_Equip the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_in your off-hand|r
>>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura. His aura will knock you back, and he can periodically recast it during combat. Ensure someone is always ready to use the|r |T135467:0|t[Silver Totem of Aquementas]
.use 11522 
step
#hardcoreserver
.group 3
.isOnQuest 3962
.goto Un'Goro Crater,49.401,49.305
>>|cRXP_WARN_Use the|r |T135467:0|t[Silver Totem of Aquementas] |cRXP_WARN_on |cRXP_ENEMY_Blazerunner|r to dispel his aura|r
>>Kill |cRXP_ENEMY_Blazerunner|r
.complete 3962,1 
.use 11522 
.mob Blazerunner
step
#hardcoreserver
.group 3
.isOnQuest 3962
.goto Un'Goro Crater,50.279,49.973
>>Open the |cRXP_PICK_Ornate Chest|r. Loot it for the |cRXP_LOOT_Golden Flame|r
.complete 3962,2 
step
.group 3
#completewith next
.goto Un'Goro Crater,49.93,81.70,70 >> Enter The Slithering Scar Hive
.isOnQuest 4507
step
.group 3
#completewith next
.cast 15627 >> |cRXP_WARN_Use the|r |T134809:0|t[Gorishi Queen Lure] |cRXP_WARN_at the |cRXP_PICK_Gorishi Silithid Crystal|r inside of The Slithering Scar. You will have to defeat 3 waves of attacking |cRXP_ENEMY_Gorishi|r. If you kill the final mob of each wave while OUTSIDE of the main room, you will be able to drink/eat between waves|r
.use 11833
.isOnQuest 4507
step
.group 3
.goto Un'Goro Crater,43.520,81.079
>>Defeat the 3 waves of |cRXP_ENEMY_Gorishi|r attackers. Use the outside room as a reset point to eat/drink between waves if needed
>>Kill the |cRXP_ENEMY_Gorishi Hive Queen|r. Loot her for her |cRXP_LOOT_Brain|r
.use 11833
.complete 4507,1
.isOnQuest 4507

step
#completewith next
.goto Un'Goro Crater,28.71,21.43,40,0
.goto Un'Goro Crater,29.78,10.25,40,0
.goto Silithus,88.40,23.81,60,0
.goto Un'Goro Crater,28.71,21.43,0
.zone Silithus >> Travel to Silithus
step
.solo
.isQuestTurnedIn 6762
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
.turnin 1124 >> Turn in Wasteland
.target Layo Starstrike
step
.group
.isQuestTurnedIn 6762
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
.turnin 1124 >> Turn in Wasteland
.accept 1125 >> Accept The Spirits of Southwind
.target Layo Starstrike
step
#completewith end
.xpto60 >> Skip to the Winterspring/Silithus part 2 guide once you have enough xp to ding 60
step
#phase 4
#completewith CH1
.subzone 3425 >> Travel to Cenarion Hold
step
#phase 4
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calandrath|r
.accept 8307 >> Accept Desert Recipe
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
.goto Silithus,51.80,38.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r upstairs
.accept 8277 >> Accept Deadly Desert Venom
.target Beetix Ficklespragg
step
.group
#phase 4
.goto Silithus,51.351,38.273
>>Click the |cRXP_PICK_Wanted Poster: Deathclasp|r
.accept 8283 >> Accept Wanted - Deathclasp, Terror of the Sands
step
#phase 4
.isOnQuest 8275
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.turnin 8275 >> Turn in Taking Back Silithus
.accept 8280 >> Accept Securing the Supply Lines
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.accept 8280 >> Accept Securing the Supply Lines
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,49.673,37.461
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
.accept 8284 >> Accept The Twilight Mystery
.target Geologist Larksbane
step
#phase 4
#label CH1
.goto Silithus,48.574,37.781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
.accept 8318 >> Accept Secret Communication
.target Bor Wildmane
step
#phase 4
.goto Silithus,37.943,45.315
>>Click the |cRXP_PICK_Sandy Cookbook|r at the Twilight Base Camp
>>|cRXP_WARN_Approach the Twilight Base Camp from the south for easier access to the|r |cRXP_PICK_Sandy Cookbook|r
.turnin 8307 >> Turn in Desert Recipe
.accept 8313 >> Accept Sharing the Knowledge
.skill cooking,<285,1 
step
#phase 4
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calandrath|r
.turnin 8313 >> Turn in Sharing the Knowledge
.accept 8317 >> Accept Kitchen Assistance
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
.goto Silithus,54.6,33.6,70,0
.goto Silithus,53.4,18.6,70,0
.goto Silithus,58.6,14.8,70,0
.goto Silithus,62.4,20.0,70,0
.goto Silithus,58.6,26.6,70,0
.goto Silithus,67.0,32.2,70,0
.goto Silithus,70.0,38.8,70,0
.goto Silithus,61.0,42.8,70,0
.goto Silithus,58.2,23.8
.goto Silithus,36.8,33.0,0
>>Kill |cRXP_ENEMY_Dredge Strikers|r. Loot them for their |cRXP_LOOT_Sandworm Meat|r
>>Kill |cRXP_ENEMY_Sand Skitterers|r. Loot them for their |cRXP_LOOT_Skitterer Fangs|r
>>Kill |cRXP_ENEMY_Stonelash Scorpids|r. Loot them for their |cRXP_LOOT_Scorpid Stingers|r
>>|cRXP_WARN_You don't need to collect all |cRXP_LOOT_Sandworm Meat|r now|r
.skill cooking,<285,1 
.complete 8280,1 
.mob +Dredge Striker
.collect 20424,10,8317,1,1 
.mob +Dredge Striker
.complete 8277,2 
.mob +Sand Skitterer
.complete 8277,1 
.mob +Stonelash Scorpid
step
#phase 4
.goto Silithus,54.6,33.6,70,0
.goto Silithus,53.4,18.6,70,0
.goto Silithus,58.6,14.8,70,0
.goto Silithus,62.4,20.0,70,0
.goto Silithus,58.6,26.6,70,0
.goto Silithus,67.0,32.2,70,0
.goto Silithus,70.0,38.8,70,0
.goto Silithus,61.0,42.8,70,0
.goto Silithus,58.2,23.8
.goto Silithus,36.8,33.0,0
>>Kill |cRXP_ENEMY_Dredge Strikers|r
>>Kill |cRXP_ENEMY_Sand Skitterers|r. Loot them for their |cRXP_LOOT_Skitterer Fangs|r
>>Kill |cRXP_ENEMY_Stonelash Scorpids|r. Loot them for their |cRXP_LOOT_Scorpid Stingers|r
.complete 8280,1 
.mob +Dredge Striker
.complete 8277,2 
.mob +Sand Skitterer
.complete 8277,1 
.mob +Stonelash Scorpid
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.turnin 8280 >> Turn in Securing the Supply Lines
.accept 8281 >> Accept Stepping Up Security
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.70,38.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r upstairs
.turnin 8277 >> Turn in Deadly Desert Venom
.accept 8278 >> Accept Noggle's Last Hope
.target Beetix Ficklespragg
step
.group 2
#completewith next
.goto Silithus,63.72,48.98,50,0 
>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r. |cRXP_WARN_Only ever engage ONE |cRXP_ENEMY_Tortured Druid|r or |cRXP_ENEMY_Tortured Sentinel|r at a time. When they die they have a chance to spawn a |cRXP_ENEMY_Hive'Ashi Drone|r which you will also have to kill|r
>>|cRXP_ENEMY_Hive'Ashi Drones|r may drop |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r]
.use 20461 >>|cRXP_WARN_Use |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r] to start the quest|r
.complete 1125,1 
.mob +Tortured Druid
.complete 1125,2 
.mob +Tortured Sentinel
.collect 20461,1,8308,1,1 
.mob +Tortured Druid
.mob +Tortured Sentinel
.accept 8308 >> Accept Brann Bronzebeard's Lost Letter
.disablecheckbox
step
.group 2
.isOnQuest 5527
.goto Silithus,63.225,55.354
>>Enter the small lodge
>>Open the |cRXP_PICK_Dusty Reliquary|r on the ground. Loot it for the |cRXP_LOOT_Reliquary of Purity|r
.complete 5527,1 
step
.group 2
.goto Silithus,63.72,48.98 
>>Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r. |cRXP_WARN_Only ever engage ONE |cRXP_ENEMY_Tortured Druid|r or |cRXP_ENEMY_Tortured Sentinel|r at a time. When they die they have a chance to spawn a |cRXP_ENEMY_Hive'Ashi Drone|r which you will also have to kill|r
>>|cRXP_ENEMY_Hive'Ashi Drones|r may drop |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r]
.use 20461 >>|cRXP_WARN_Use |T133463:0|t[|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r] to start the quest|r
.complete 1125,1 
.mob +Tortured Druid
.complete 1125,2 
.mob +Tortured Sentinel
.collect 20461,1,8308,1,1 
.mob +Tortured Druid
.mob +Tortured Sentinel
.accept 8308 >> Accept Brann Bronzebeard's Lost Letter
.disablecheckbox
step
.group
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
.turnin 1125 >> Turn in The Spirits of Southwind
.accept 1126 >> Accept Hive in the Tower
.target Layo Starstrike
step
.group 2
.goto Silithus,60.354,52.558
>>Ascend the Southwind Village Tower. Entering the tower spawns 3 |cRXP_ENEMY_Hive'Ashi Drones|r which you will need to kill
>>Click the |cRXP_PICK_Hive'Ashi Pod|r atop the Tower. This will spawn 2 |cRXP_ENEMY_Hive'Ashi Ambushers|r
>>Kill the |cRXP_ENEMY_Hive'Ashi Ambushers|r. Loot them for the |cRXP_LOOT_Encrusted Silithid Object|r
.complete 1126,1 
.mob Hive'Ashi Ambusher
step
.group
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
.turnin 1126 >> Turn in Hive in the Tower
.accept 6844 >> Accept Umber, Archivist
.target Layo Starstrike
step
.group
.isQuestTurnedIn 1126
.destroy 17345 >> Delete the |T134437:0|t[Silithid Goo]. It isn't used for anything
step
#phase 4
#completewith next
.subzone 2740 >> Travel to The Crystal Vale. Avoid the Elite |cRXP_ENEMY_Hive'Ashi|r mobs en-route
step
#phase 4
.goto Silithus,26.6,13.3,70,0
.goto Silithus,21.8,10.4,70,0
.goto Silithus,19.7,22.0,70,0
.goto Silithus,21.8,10.4,70,0
.goto Silithus,26.6,13.3,70,0
.goto Silithus,21.8,10.4
>>Loot the |cRXP_LOOT_Twilight Tablet Fragments|r on the ground
.complete 8284,1 
step
#phase 4
#completewith next
.subzone 3425 >> Travel to Cenarion Hold
step
#phase 4
.goto Silithus,49.673,37.461
.target Geologist Larksbane
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
.turnin 8284 >> Turn in The Twilight Mystery
.accept 8285 >> Accept The Deserter
step
#phase 4
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
.accept 8304 >> Accept Dearest Natalia
.target Commander Mar'alith
.xp <58,1
step
#phase 4
#completewith FinishKilling
>>Kill |cRXP_ENEMY_Stonelash Flayers|r and |cRXP_ENEMY_Stonelash Pincers|r. Loot them for their |cRXP_LOOT_Stingers|r
>>Kill |cRXP_ENEMY_Rock Stalkers|r. Loot them for their |cRXP_LOOT_Fangs|r
.complete 8278,1 
.mob +Stonelash Flayer
.complete 8278,2 
.mob +Stonelash Flayer
.complete 8278,3 
.mob +Rock Stalker
step
#phase 4
#completewith FinishKilling
>>Kill |cRXP_ENEMY_Dredge Crushers|r. Loot them for their |cRXP_LOOT_Sandworm Meat|r
.complete 8281,1 
.collect 20424,10,8317,1 
.skill cooking,<285,1 
.mob Dredge Crusher
step
#phase 4
#completewith FinishKilling
>>Kill |cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.skill cooking,285,1 
.mob Dredge Crusher
step
#phase 4
.goto Silithus,41.279,88.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
.accept 8308 >> Accept Brann Bronzebeard's Lost Letter
.turnin 8308 >> Turn in Brann Bronzebeard's Lost Letter
.use 20461 
.itemcount 20461,1 
.target Rutgar Glyphshaper
step
#phase 4
.isOnQuest 8304
.goto Silithus,41.279,88.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
.skipgossip
.complete 8304,2 
.target Rutgar Glyphshaper
step
#label FinishKilling
#phase 4
.isOnQuest 8304
.goto Silithus,40.815,88.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frankal Stonebridge|r
.skipgossip
.complete 8304,1 
.target Frankal Stonebridge
step
.group 3
#phase 4
.isOnQuest 8283
.goto Silithus,44.06,90.48,25,0
.goto Silithus,44.97,92.48
>>Kill |cRXP_ENEMY_Deathclasp|r. Loot her for her |cRXP_LOOT_Pincer|r
>>|cRXP_ENEMY_Deathclasp|r |cRXP_WARN_has a knockback abilitiy as well as an 8 second stun. Ensure to stay out of melee range of her at all times. Skip this step if you are not confident|r
.complete 8283,1 
.mob Deathclasp
step
#phase 4
#completewith FinishCrushers
>>Kill |cRXP_ENEMY_Stonelash Flayers|r and |cRXP_ENEMY_Stonelash Pincers|r. Loot them for their |cRXP_LOOT_Stingers|r
>>Kill |cRXP_ENEMY_Rock Stalkers|r. Loot them for their |cRXP_LOOT_Fangs|r
.complete 8278,1 
.mob +Stonelash Flayer
.complete 8278,2 
.mob +Stonelash Flayer
.complete 8278,3 
.mob +Rock Stalker
step
#phase 4
.goto Silithus,36.4,60.4,75,0
.goto Silithus,39.0,52.6,75,0
.goto Silithus,29.2,41.6,75,0
.goto Silithus,45.4,56.6,75,0
.goto Silithus,58.6,59.2,75,0
.goto Silithus,39.0,56.2
>>Kill |cRXP_ENEMY_Dredge Crushers|r. Loot them for their |cRXP_LOOT_Sandworm Meat|r
.complete 8281,1 
.collect 20424,10,8317,1 
.skill cooking,<285,1 
.mob Dredge Crusher
step
#phase 4
#label FinishCrushers
.goto Silithus,36.4,60.4,75,0
.goto Silithus,39.0,52.6,75,0
.goto Silithus,29.2,41.6,75,0
.goto Silithus,45.4,56.6,75,0
.goto Silithus,58.6,59.2,75,0
.goto Silithus,39.0,56.2
>>Kill |cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.skill cooking,285,1 
.mob Dredge Crusher
step
#phase 4
>>Kill |cRXP_ENEMY_Stonelash Flayers|r and |cRXP_ENEMY_Stonelash Pincers|r. Loot them for their |cRXP_LOOT_Stingers|r
>>Kill |cRXP_ENEMY_Rock Stalkers|r. Loot them for their |cRXP_LOOT_Fangs|r
.complete 8278,1 
.mob +Stonelash Flayer
.goto Silithus,23.8,81.6,70,0
.goto Silithus,31.8,78.0,70,0
.goto Silithus,42.6,83.8,70,0
.goto Silithus,48.4,69.2,70,0
.goto Silithus,34.0,73.2,70,0
.goto Silithus,41.4,80.8
.complete 8278,2 
.mob +Stonelash Pincer
.goto Silithus,36.4,60.4,75,0
.goto Silithus,39.0,52.6,75,0
.goto Silithus,29.2,41.6,75,0
.goto Silithus,45.4,56.6,75,0
.goto Silithus,58.6,59.2,75,0
.goto Silithus,39.0,56.2
.complete 8278,3 
.goto Silithus,23.8,81.6,70,0
.goto Silithus,31.8,78.0,70,0
.goto Silithus,42.6,83.8,70,0
.goto Silithus,48.4,69.2,70,0
.goto Silithus,34.0,73.2,70,0
.goto Silithus,41.4,80.8
.mob +Rock Stalker
step
#phase 4
.goto Silithus,67.192,69.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
.turnin 8285 >> Turn in The Deserter
.accept 8279 >> Accept The Twilight Lexicon
.target Hermit Ortell
step
#phase 4
#completewith DearestNatalia
.subzone 3425 >> Travel to Cenarion Hold
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.turnin 8281 >> Turn in Stepping Up Security
.target Windcaller Proudhorn
step
#phase 4
#optional
.isQuestTurnedIn 8313
.goto Silithus,49.880,36.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishta|r
>>|cRXP_BUY_Buy 10|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from her|r
.collect 3713,10,8317,1 
.skill cooking,<285,1 
.target Mishta
step
#phase 4
#optional
.isQuestTurnedIn 8313
.goto Silithus,50.866,38.414
>>|cRXP_WARN_Using your|r |T133971:0|t[Cooking] |cRXP_WARN_profession, cook up 10|r |T134020:0|t[Smoked Desert Dumplings] |cRXP_WARN_at the Cooking Brazier in Cenarion Hold|r
.collect 20452,10,8317,1 
.skill cooking,<285,1 
step
#phase 4
#optional
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calandrath|r
.turnin 8317 >> Turn in Kitchen Assistance
.itemcount 20452,10 
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r and |cRXP_FRIENDLY_Noggle Ficklespragg|r upstairs
.turnin 8278 >> Turn in Noggle's Last Hope
.target +Beetix Ficklespragg
.goto Silithus,51.70,38.50
.accept 8282 >> Accept Noggle's Lost Satchel
.goto Silithus,51.615,38.517
.target +Noggle Ficklespragg
step
#phase 4
#label DearestNatalia
.isOnQuest 8304
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
.turnin 8304 >> Turn in Dearest Natalia
.target Commander Mar'alith
step
#phase 4
.isQuestComplete 8283
.goto Silithus,50.755,33.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vish Kozus|r atop the Tower
.turnin 8283 >> Turn in Wanted - Deathclasp, Terror of the Sands
.target Vish Kozus
step
#phase 4
#completewith FinalKeeper
>>Kill any of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Encrypted Twilight Texts|r
.collect 20404,20,8323,1 
.mob Twilight Avenger
.mob Twilight Stonecaller
.mob Twilight Geolord
.mob Twilight Master
step
#phase 4
.goto Silithus,40.86,42.22
>>Kill |cRXP_ENEMY_Twilight Keeper Havunth|r. Loot him for the |cRXP_LOOT_Twilight Lexicon - Chapter 3|r
.complete 8279,3 
.unitscan Twilight Keeper Havunth
step
#phase 4
.goto Silithus,26.66,36.08
>>Kill |cRXP_ENEMY_Twilight Keeper Mayna|r. Loot her for the |cRXP_LOOT_Twilight Lexicon - Chapter 1|r
.complete 8279,1 
.unitscan Twilight Keeper Mayna
step
#label FinalKeeper
#phase 4
.goto Silithus,16.13,86.52
>>Kill |cRXP_ENEMY_Twilight Keeper Exeter|r. Loot him for the |cRXP_LOOT_Twilight Lexicon - Chapter 2|r
.complete 8279,2 
.unitscan Twilight Keeper Exeter
step
#phase 4
.goto Silithus,18.6,82.2,70,0
.goto Silithus,19.8,87.0
>>Kill any of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Encrypted Twilight Texts|r
.collect 20404,20,8323,1 
.mob Twilight Avenger
.mob Twilight Stonecaller
.mob Twilight Geolord
.mob Twilight Master
step
#phase 4
.goto Silithus,44.562,91.379
>>Loot |cRXP_LOOT_Noggle's Satchel|r on the ground
>>|cRXP_WARN_Wait for |cRXP_ENEMY_Deathclasp|r to patrol up the hill before looting|r |cRXP_LOOT_Noggle's Satchel|r
.complete 8282,1 
step
#phase 4
.goto Silithus,67.192,69.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
.turnin 8279 >> Turn in The Twilight Lexicon
.accept 8287 >> Accept A Terrible Purpose
.accept 8323,1 >> Accept True Believers
.turnin 8323 >> Turn in True Believers
.target Hermit Ortell
step << skip
#phase 4
#completewith next
.goto Silithus,67.200,69.246,-1
.goto Silithus,66.868,69.481,-1
+|cRXP_WARN_Perform a Logout skip on any of the torches next to |cRXP_FRIENDLY_Hermit Ortell|r to teleport to Cenarion Hold. If you are unable to do this just run there normally|r
.link https://www.youtube.com/watch?v=bFS4TUbJse8&ab_channel=RestedXP >> |cRXP_WARN_Click here for video reference|r
.subzoneskip 3447,1
step
#phase 4
.goto Silithus,48.574,37.781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
.turnin 8318 >> Turn in Secret Communication
.target Bor Wildmane
step
#phase 4
#label end
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
.turnin 8287 >> Turn in A Terrible Purpose
.target Commander Mar'alith
step
#phase 4
.goto Silithus,51.615,38.517
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noggle Ficklespragg|r upstairs
.turnin 8282 >> Turn in Noggle's Lost Satchel
.target Noggle Ficklespragg
]]);

RXPGuides.RegisterGuide([[
#hardcore
#version 23
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 59-60 Winterspring/Silithus part 2
step
#completewith next
.goto Silithus,50.581,34.448
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cloud Skydancer|r
.fly Un'Goro >> Fly to Un'Goro Crater
.target Cloud Skydancer
step
#hardcoreserver
.isQuestComplete 3962
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3962 >> Turn in It's Dangerous to Go Alone
.target Linken
step
#hardcoreserver
.abandon 3962 >> Abandon It's Dangerous to Go Alone
step
#completewith GadgetzanTurnins
.goto Silithus,50.581,34.448,-1
.goto Un'Goro Crater,45.234,5.833,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cloud Skydancer|r or |cRXP_FRIENDLY_Gryfe|r
.fly Tanaris >> Fly to Tanaris
.target Cloud Skydancer
.target Gryfe
step
.isQuestComplete 4507
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4507 >> Turn in Pawn Captures Queen
.target Alchemist Pestlezugg
step
.isQuestTurnedIn 4507
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.accept 4508 >> Accept Calm Before the Storm
.target Alchemist Pestlezugg
step
.abandon 4507 >> Abandon Pawn Captures Queen
step
#label GadgetzanTurnins
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 4504 >> Turn in Super Sticky
.target Tran'rek
step
.hs >> Hearth to Everlook
>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
.isQuestComplete 4809
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
.turnin 4809 >> Turn in Chillwind Horns
.target Felnok Steelspring
step
.isQuestTurnedIn 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.turnin 5163 >> Turn in Are We There, Yeti?
.target Umi Rumplesnicker
step
#completewith next
>>Kill |cRXP_ENEMY_Fledgling Chillwinds|r, |cRXP_ENEMY_Chillwind Chimaeras|r and |cRXP_ENEMY_Chillwind Ravagers|r. Loot them for their |cRXP_LOOT_Uncracked Chillwind Horns|r
>>|cRXP_WARN_Don't go out of your way to complete this yet|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
.goto Winterspring,63.074,59.482
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.turnin 979 >> Turn in Find Ranshalla
.accept 4901,1 >> Accept Guardians of the Altar
>>|cRXP_WARN_Guardians of the Altar will begin an escort quest. If you're in a party ensure everyone has turned in Find Ranshalla first. Auto accept has been turned off for Guardians of the Altar|r
.target Ranshalla
step
.goto Winterspring,64.59,61.06,20,0
.goto Winterspring,65.82,58.76,20,0
.goto Winterspring,66.48,60.02,20,0
.goto Winterspring,66.25,61.50,20,0
.goto Winterspring,65.56,64.57,20,0
.goto Winterspring,64.797,63.784
>>Escort |cRXP_FRIENDLY_Ranshalla|r through Owl Wing Thicket
>>Click the |cRXP_PICK_Fire of Elune|r torches inside the caves when |cRXP_FRIENDLY_Ranshalla|r begins channelling her spell on them, and then the |cRXP_PICK_Altar of Elune|r at the end
.complete 4901,1
.target Ranshalla
step
.isQuestComplete 4809
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
.turnin 4809 >> Turn in Chillwind Horns
.target Felnok Steelspring
step 
#label horns
#completewith next
>>Kill |cRXP_ENEMY_Fledgling Chillwinds|r, |cRXP_ENEMY_Chillwind Chimaeras|r and |cRXP_ENEMY_Chillwind Ravagers|r. Loot them for their |cRXP_LOOT_Uncracked Chillwind Horns|r
.complete 4809,1 
.goto Winterspring,66.4,47.2,75,0
.goto Winterspring,57.0,40.2,75,0
.goto Winterspring,53.2,37.4,75,0
.goto Winterspring,47.2,43.6,75,0
.goto Winterspring,44.6,41.2,75,0
.goto Winterspring,39.2,36.4,75,0
.goto Winterspring,56.4,25.4,75,0
.goto Winterspring,57.0,20.4,75,0
.goto Winterspring,65.4,27.6,75,0
.goto Winterspring,60.2,24.6
.turnin 4809 >> Turn in Chillwind Horns
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
.target Felnok Steelspring
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step 
#completewith horns
.xpto60 >> Skip the |cRXP_ENEMY_Chimaera|r quest and turn in the quests you have if you're ready to ding 60
step << Druid
.isOnQuest 6844,5527
.cast 18960 >> Cast Teleport: Moonglade
.zoneskip Moonglade
step << !Druid
.isOnQuest 6844,5527
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maethrya|r
.fly Moonglade >> Fly to Moonglade
.target Maethrya
step
.isQuestTurnedIn 1126
.goto Moonglade,47.736,39.678,30,0
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
>>|cRXP_FRIENDLY_Umber|r |cRXP_WARN_may be patrolling through Nighthaven|r
.turnin 6844 >> Turn in Umber, Archivist
.accept 6845 >> Accept Uncovering Past Secrets
.target Umber
step
.isQuestTurnedIn 1126
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
.turnin 6845 >> Turn in Uncovering Past Secrets
.target Rabine Saturna
step
.isQuestComplete 5527
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
.turnin 5527 >> Turn in A Reliquary of Purity
.target Rabine Saturna
step
.isQuestTurnedIn 1126
.goto Moonglade,47.736,39.678,30,0
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
>>|cRXP_FRIENDLY_Umber|r |cRXP_WARN_may be patrolling through Nighthaven|r
.accept 1185 >> Accept Under the Chitin Was...
.turnin 1185 >> Turn in Under the Chitin Was...
.target Umber
step << !Mage
.dungeon BRD
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishellena|r
.fly Teldrassil >> Fly to Teldrassil
.target Mishellena
step << Mage
.dungeon BRD
.zone Darnassus >> Teleport to Darnassus
step << !Mage
.dungeon BRD
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 4901 >> Turn in Guardians of the Altar
.target Erelas Ambersky
step << !Mage
.dungeon BRD
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 4902 >> Accept Wildkin of Elune
.target Erelas Ambersky
step << !Mage
.dungeon BRD
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step
.dungeon BRD
.isQuestTurnedIn 4507
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r upstairs
.turnin 4508 >> Turn in Calm Before the Storm
.accept 4510 >> Accept Calm Before the Storm
.target Gracina Spiritmight
step
.dungeon BRD
.goto Darnassus,39.38,42.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Idriana|r
.turnin 4510 >> Turn in Calm Before the Storm
.target Idriana
step << Mage
.dungeon BRD
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
step << Mage
.dungeon BRD
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 4901 >> Turn in Guardians of the Altar
.target Erelas Ambersky
step << Mage
.dungeon BRD
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 4902 >> Accept Wildkin of Elune
.target Erelas Ambersky
step << Mage
.dungeon BRD
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step
.dungeon BRD
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 4902 >> Turn in Wildkin of Elune
.target Arch Druid Fandral Staghelm
step
.dungeon BRD
#completewith AcceptBRDQuests
+You will now fly around to accept quests for Blackrock Depths.
>>Blackrock Depths is a very convoluted dungeon. In order to complete all quests in the most efficient way, it is required to leave the dungeon midrun to turn in/accept follow up quests so it may all be completed in 1 run.
>>Try to ensure all party members have the same quests and prequests complete, along with 2-3 hours of playtime.
step
.dungeon BRD
.isQuestTurnedIn 3481
>>Remember to take out |T134430:0|t[Black Dragonflight Molt] from your bank if you completed the quest in Searing Gorge for it earlier. You will need it shortly
.collect 10575,1,4022,1 
step
.dungeon BRD
#completewith HurleyBlackbreath
.zone Ironforge >> Travel to Ironforge
step
.dungeon BRD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
>>|cRXP_WARN_If you have a Mage in your group you will set your Hearth to Lakeshire instead|r
.goto Ironforge,18.10,51.60
.home >> Set your Hearthstone to Ironforge
.target Innkeeper Firebrew
step 
.dungeon BRD
.isQuestTurnedIn 3701
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.accept 4341 >> Accept Kharan Mighthammer
.target King Magni Bronzebeard
step
.dungeon BRD
#completewith next
.subzone 131 >> Travel to Kharanos
step
.dungeon BRD
#label HurleyBlackbreath
.goto Dun Morogh,46.825,52.361
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
.accept 4126 >> Accept Hurley Blackbreath
.target Ragnar Thunderbrew
step
.dungeon BRD
>>|cRXP_WARN_Fly to Lakeshire. Set your Hearthstone to Lakeshire ONLY if you have a Mage in your group for BRD, if not skip this step and leave your Hearth in Ironforge|r
.home >> Set your Hearthstone to Lakeshire
step
.dungeon BRD
#completewith BSQuests
.fly Burning Steppes >> Fly to Burning Steppes from your nearest Flight Master
step
.dungeon BRD
.goto Burning Steppes,84.555,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.accept 4286 >> Accept The Good Stuff
.target Oralius
step
.dungeon BRD

.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
>>|cRXP_WARN_If you cannot accept this quest complete the Dragonkin Menace quest chain|r
.accept 4241 >> Accept Marshal Windsor
.target Marshal Maxwell
step
.dungeon BRD
.goto Burning Steppes,85.415,70.064
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jalinda Sprig|r
.accept 4262 >> Accept Overmaster Pyron
.target Jalinda Sprig
step
.dungeon BRD
.isQuestTurnedIn 3481
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
>>Select the option: "I present you with proof of my deeds, Cyrus."
.accept 4022 >> Accept A Taste of Flame
.turnin 4022 >> Turn in A Taste of Flame
.itemcount 10575,1 
.target Cyrus Therepentous
step
.dungeon BRD
.isQuestAvailable 4022
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
>>If you are missing the |T134430:0|t[Black Dragonflight Molt] and cannot complete the quest, talk to |cRXP_FRIENDLY_Cyrus|r and select the option: "I do not possess any proof, Cyrus."
>>This will spawn a level 54 Elite Dragon at the entrance of the small cave. Ensure you have party members with you to help kill it, then loot it for the |T134430:0|t[Black Dragonflight Molt]
>>Select the option after: "I present you with proof of my deeds, Cyrus."
.collect 10575,1,4022,1 
.accept 4022 >> Accept A Taste of Flame
.turnin 4022 >> Turn in A Taste of Flame
.target Cyrus Therepentous
step
.dungeon BRD
.isQuestTurnedIn 4022
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
.accept 4024 >> Accept A Taste of Flame
.target Cyrus Therepentous
step
.dungeon BRD
.goto Burning Steppes,65.152,23.911
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
.accept 4123 >> Accept The Heart of the Mountain
.target Maxwort Uberglint
step
.dungeon BRD
#label BSQuests
.goto Burning Steppes,66.058,21.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yuka Screwspigot|r
.accept 4136 >> Accept Ribbly Screwspigot
.target Yuka Screwspigot
step
#softcoreserver
#softcore
.dungeon BRD
+Die intentionally in the lava in Blackrock Mountain, ideally near the Molten Core entrance location
>>For this step you must be a |T132331:0|t[Ghost] to talk to |cRXP_FRIENDLY_Franclorn Forgewright|r inside Blackrock Mountain. Resurrect at your corpse once you have the quest
.goto 1415,48.624,64.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Franclorn Forgewright|r
.accept 3801 >> Accept Dark Iron Legacy
.turnin 3801 >> Turn in Dark Iron Legacy
.accept 3802 >> Accept Dark Iron Legacy
.target Franclorn Forgewright
step
#hardcoreserver
.dungeon BRD
.goto 1415,48.656,64.134
.cast 417803 >>Click the |cRXP_PICK_Brazier of Embersight|r to gain the |T136215:0|t[Emberglow Vision] debuff
step
#hardcoreserver
.dungeon BRD
.goto 1415,48.624,64.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Franclorn Forgewright|r
>>You must have the |T136215:0|t[Emberglow Vision] debuff to see him
.accept 3801 >> Accept Dark Iron Legacy
.turnin 3801 >> Turn in Dark Iron Legacy
.accept 3802 >> Accept Dark Iron Legacy
.target Franclorn Forgewright
step
.dungeon BRD
#label AcceptBRDQuests
.goto 1415,48.409,63.815
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothos Riftwaker|r
.accept 7848 >> Accept Attunement to the Core
.target Lothos Riftwaker
step
.dungeon BRD
.isOnQuest 4262
>>Kill |cRXP_ENEMY_Overmaster Pyron|r
>>|cRXP_ENEMY_Overmaster Pyron|r |cRXP_WARN_patrols outside of the BRD instance portal|r
.complete 4262,1 
.mob Overmaster Pyron
step
.dungeon BRD
.subzone 1584,2 >>Enter Blackrock Depths
step
.dungeon BRD
#completewith FannyPack
.isOnQuest 4286
>>Kill |cRXP_ENEMY_Dwarves|r inside of BRD. Loot them for their |cRXP_LOOT_Dark Iron Fanny Packs|r
.complete 4286,1 
step
.dungeon BRD
.isOnQuest 4341
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kharan Mighthammer|r
>>If your group does not have a Rogue you may need to kill |cRXP_ENEMY_High Interrogator Gerstahn|r for the |cRXP_LOOT_Prison Cell Key|r to open the doors
.turnin 4341 >> Turn in Kharan Mighthammer
.accept 4342 >> Accept Kharan's Tale
step
.dungeon BRD
.isQuestTurnedIn 4341
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kharan Mighthammer|r
.accept 4342 >> Accept Kharan's Tale
step
.dungeon BRD
.isQuestTurnedIn 4341
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kharan Mighthammer|r
.complete 4342,1 
.skipgossip
step
.dungeon BRD
.isQuestTurnedIn 4341
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kharan Mighthammer|r
.turnin 4342 >> Turn in Kharan's Tale
.accept 4361 >> Accept The Bearer of Bad News
step
.dungeon BRD
.isOnQuest 4241
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r
>>If your group does not have a Rogue you may need to kill |cRXP_ENEMY_High Interrogator Gerstahn|r for the |cRXP_LOOT_Prison Cell Key|r to open the doors
.turnin 4241 >> Turn in Marshal Windsor
.accept 4242 >> Accept Abandoned Hope
step
.dungeon BRD
.isQuestTurnedIn 4241
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r
.accept 4242 >> Accept Abandoned Hope
step
.dungeon BRD
#completewith next
+Hearth to Ironforge if your Hearth was set there. If you have a Mage in group, kindly ask them for a portal to Ironforge
step
.dungeon BRD
.isQuestTurnedIn 4341
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.turnin 4361 >> Turn in The Bearer of Bad News
.accept 4362 >> Accept The Fate of the Kingdom
.target King Magni Bronzebeard
step
.dungeon BRD
#completewith PyronIncendius
>>Hearth to Lakeshire if your Hearth is set there. Otherwise fly to Burning Steppes manually
.fly Burning Steppes >> Fly to Burning Steppes
step
.dungeon BRD
.isQuestComplete 4286
.goto Burning Steppes,84.555,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 4286 >> Turn in The Good Stuff
.target Oralius
step
.dungeon BRD
.isOnQuest 4242
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
>>|cRXP_WARN_The quest chain will stop here until you find|r |T134331:0|t[A Crumpled Up Note] |cRXP_WARN_at BRD|r
.turnin 4242 >> Turn in Abandoned Hope
.target Marshal Maxwell
step
.dungeon BRD
.isQuestComplete 4262
.goto Burning Steppes,85.415,70.064
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jalinda Sprig|r
.turnin 4262 >> Turn in Overmaster Pyron
.accept 4263 >> Accept Incendius!
.target Jalinda Sprig
step
.dungeon BRD
#label PyronIncendius
.isQuestTurnedIn 4262
.goto Burning Steppes,85.415,70.064
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jalinda Sprig|r
.accept 4263 >> Accept Incendius!
.target Jalinda Sprig
step
.dungeon BRD
.subzone 1584,2 >>Enter Blackrock Depths
step
.dungeon BRD
#completewith next
+Complete the Ring of Law boss event, then take the exit up the tunnel and immediately turn right, crossing up over the top of the Ring of Law, making your way to the Vault
step
.dungeon BRD
.isOnQuest 4123
>>Loot |cRXP_LOOT_The Heart of the Mountain|r inside of the safe wall. It takes 15 seconds for it to respawn
>>There is a trick which allows you to loot it without having to open the safe. View the link below to see how it is done
.complete 4123,1 
.link https://youtu.be/694e1n_aiKY >> Click here to see how to loot the Heart of the Mountain
step
.dungeon BRD
.isOnQuest 3802
>>Kill |cRXP_ENEMY_Fineous Darkvire|r. Loot him for the |cRXP_LOOT_Ironfel|r
.complete 3802,1 
step
.dungeon BRD
.isOnQuest 4263
>>Kill |cRXP_ENEMY_Lord Incendius|r
.complete 4263,1 
step
.dungeon BRD
.isQuestComplete 3802
>>Run back near the location above the Ring of Law
>>Click the |cRXP_PICK_Monument of Franclorn Forgewright|r
.turnin 3802 >> Turn in Dark Iron Legacy
step
.dungeon BRD
.isOnQuest 4024
>>Head to the Shadowforge Gates at the start of the entrance
>>Kill |cRXP_ENEMY_Bael'Gar|r
.use 11231 >>|cRXP_WARN_Use the|r |T134430:0|t[Altered Black Dragonflight Molt] |cRXP_WARN_on his corpse|r
.complete 4024,1 
step
.dungeon BRD
.isQuestTurnedIn 4242
>>Kill |cRXP_ENEMY_Dwarves|r at BRD. Loot them for |T134331:0|t[A Crumpled Up Note]
.use 11446 >> |cRXP_WARN_Use|r |T134331:0|t[A Crumpled Up Note] |cRXP_WARN_to start the quest|r
>>|cRXP_WARN_It is important you do this before killing bosses |cRXP_ENEMY_General Angerforge|r and|r |cRXP_ENEMY_Golem Lord Argelmach|r
>>|cRXP_WARN_If you still have not found this by now clear around the Detention Block until it drops|r
.collect 11446,1,4264,1 
.accept 4264 >> Accept A Crumpled Up Note
step
.dungeon BRD
.isOnQuest 4264
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r
.turnin 4264 >> Turn in A Crumpled Up Note
.accept 4282 >> Accept A Shred of Hope
step
.dungeon BRD
.isQuestTurnedIn 4264
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r
.accept 4282 >> Accept A Shred of Hope
step
.dungeon BRD
.isOnQuest 4282
>>Kill |cRXP_ENEMY_General Angerforge|r and |cRXP_ENEMY_Golem Lord Argelmach|r. Loot them both for |cRXP_LOOT_Marshal Windsor's Lost Information|r
.complete 4282,1 
.complete 4282,2 
step
.dungeon BRD
.isQuestTurnedIn 4264
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Windsor|r
>>|cRXP_WARN_ENSURE ALL PARTY MEMBERS HAVE AUTO ACCEPT OFF FOR THIS STEP! RestedXP HAS AUTO ACCEPT OFF FOR THIS STEP|r
>>|cRXP_WARN_Accepting this quest will begin the Jail Break escort. Ensure you have cleared all of the Detention Block area for an easier time escorting|r |cRXP_FRIENDLY_Marshal Windsor|r
.turnin 4282 >> Turn in A Shred of Hope
.accept 4322,1 >> Accept Jail Break!
step
.dungeon BRD
.isOnQuest 4322
>>Escort |cRXP_FRIENDLY_Marshal Windsor|r through BRD
.complete 4322,1 
step
.dungeon BRD
#completewith next
.isOnQuest 4126
>>Enter the Bar and go into the small room on the left. Do NOT attack any of the neutral mobs while running through the Bar
>>Click on the 3 |cRXP_PICK_Thunderbrew Lager Kegs|r to destroy them, forcing |cRXP_ENEMY_Hurley Blackbreath|r and his 3 |cRXP_ENEMY_Blackbreath Cronies|r to engage
>>Kill |cRXP_ENEMY_Hurley Blackbreath|r. Loot him for the |cRXP_LOOT_Lost Thunderbrew Recipe|r
.complete 4126,1 
step
.dungeon BRD
.isOnQuest 4136
>>Enter the Bar and go into the small room on the left. Do NOT attack any of the neutral mobs while running through the Bar
>>Kill |cRXP_ENEMY_Ribbly Screwspigot|r. Loot him for his |cRXP_LOOT_Head|r
>>To engage |cRXP_ENEMY_Ribbly Screwspigot|r have your tank talk to him, then bring him back along with his |cRXP_ENEMY_Cronies|r into the room with the kegs
.complete 4136,1 
.skipgossip
step
.dungeon BRD
.isOnQuest 4126
>>Enter the Bar and go into the small room on the left. Do NOT attack any of the neutral mobs while running through the Bar
>>Click on the 3 |cRXP_PICK_Thunderbrew Lager Kegs|r to destroy them, forcing |cRXP_ENEMY_Hurley Blackbreath|r and his 3 |cRXP_ENEMY_Blackbreath Cronies|r to engage
>>Kill |cRXP_ENEMY_Hurley Blackbreath|r. Loot him for the |cRXP_LOOT_Lost Thunderbrew Recipe|r
.complete 4126,1 
step
.dungeon BRD
.isOnQuest 7848
>>Loot the |cRXP_LOOT_Core Fragment|r on the ground outside of the Molten Core instance portal
.complete 7848,1 
step
.dungeon BRD
.isOnQuest 4362
>>Kill |cRXP_ENEMY_Emperor Dagran Thaurissan|r
>>|cRXP_WARN_You must NOT kill |cRXP_ENEMY_Princess Moira Bronzebeard|r in order to complete and turn in this quest|r
>>|cRXP_WARN_Have a party member kite |cRXP_ENEMY_Princess Moira Bronzebeard|r while the rest of the group kills|r |cRXP_ENEMY_Emperor Dagran Thaurissan|r
.complete 4362,1 
step
.dungeon BRD
.isQuestComplete 4362
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Moira Bronzebeard|r
.turnin 4362 >> Turn in The Fate of the Kingdom
.accept 4363 >> Accept The Princess's Surprise
.target Princess Moira Bronzebeard
step
.dungeon BRD
.isQuestTurnedIn 4362
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Moira Bronzebeard|r
.accept 4363 >> Accept The Princess's Surprise
.target Princess Moira Bronzebeard
step
.dungeon BRD
#completewith HurleyTurnin
#label FannyPack
+Hearth to Ironforge if your Hearth was set there. If you have a Mage in group, kindly ask them for a portal to Ironforge
step
.dungeon BRD
.isOnQuest 4363
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.turnin 4363 >> Turn in The Princess's Surprise
.target King Magni Bronzebeard
step
.dungeon BRD
#completewith next
+Travel to Kharanos
step
.dungeon BRD
#label HurleyTurnin
.isQuestComplete 4126
.goto Dun Morogh,46.825,52.361
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
.turnin 4126 >> Turn in Hurley Blackbreath
.target Ragnar Thunderbrew
step
.dungeon BRD
#completewith BSTurnins
>>Hearth to Lakeshire if your Hearth is set there. Otherwise fly to Burning Steppes manually
.fly Burning Steppes >> Fly to Burning Steppes
step
.dungeon BRD
.isQuestComplete 4286
.goto Burning Steppes,84.555,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 4286 >> Turn in The Good Stuff
.target Oralius
step
.dungeon BRD
.isQuestComplete 4322
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
.turnin 4322 >> Turn in Jail Break!
.accept 6402 >> Accept Stormwind Rendezvous
.target Marshal Maxwell
step
.dungeon BRD
.isQuestTurnedIn 4322
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
.accept 6402 >> Accept Stormwind Rendezvous
.target Marshal Maxwell
step
.dungeon BRD
.isQuestComplete 4263
.goto Burning Steppes,85.415,70.064
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jalinda Sprig|r
.turnin 4263 >> Turn in Incendius!
.target Jalinda Sprig
step
.dungeon BRD
.isQuestComplete 4024
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
.turnin 4024 >> Turn in A Taste of Flame
.target Cyrus Therepentous
step
.dungeon BRD
.isQuestComplete 4123
.goto Burning Steppes,65.152,23.911
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
.turnin 4123 >> Turn in The Heart of the Mountain
.target Maxwort Uberglint
step
.dungeon BRD
#label BSTurnins
.isQuestComplete 4136
.goto Burning Steppes,66.058,21.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yuka Screwspigot|r
.turnin 4136 >> Turn in Ribbly Screwspigot
.target Yuka Screwspigot
step
.dungeon BRD
.isQuestTurnedIn 4322
.goto Burning Steppes,84.334,68.326
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgun Stoutarm|r
>>Have a Mage port you if you have one in your group
.fly Stormwind >> Fly to Stormwind
.target Borgun Stoutarm
.zoneskip Stormwind City
step
.dungeon BRD
.isQuestTurnedIn 4322
#completewith next
.goto StormwindClassic,70.424,85.171,5,0
.goto StormwindClassic,69.709,86.083
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Rowe|r and |cRXP_FRIENDLY_Reginald Windsor|r
>>|cRXP_FRIENDLY_Squire Rowe|r will call for |cRXP_FRIENDLY_Reginald Windsor's|r arrival after you talk to him at the Gates of Stormwind
>>|cRXP_WARN_IF YOU ARE IN A PARTY ENSURE NO ONE AUTO ACCEPTS The Great Masquerade. AUTO ACCEPT HAS BEEN TURNED OFF FOR THIS STEP|r
.turnin 6402 >> Turn in Stormwind Rendezvous
.target +Squire Rowe
.accept 6403,1 >> Accept The Great Masquerade
.target +Reginald Windsor
.skipgossip
step
.dungeon BRD
.isQuestTurnedIn 4322
.goto StormwindClassic,75.955,19.114,-1
.goto StormwindClassic,76.865,20.830,-1
>>Escort |cRXP_FRIENDLY_Reginald Windsor|r into Stormwind Keep
>>Do not assist |cRXP_FRIENDLY_Reginald Windsor|r in combat while inside the Keep. If you do so there is a high chance you may die. Stay back at the arrow location and let the event finish on its own. It will take a few minutes
.complete 6403,1 
.target Reginald Windsor
step
.dungeon BRD
.isQuestComplete 6403
.goto StormwindClassic,77.569,18.864
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 6403 >> Turn in The Great Masquerade
.accept 6501 >> Accept The Dragon's Eye
.target Highlord Bolvar Fordragon
step
.dungeon BRD
.isQuestComplete 7848
.goto 1415,48.409,63.815
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothos Riftwaker|r
>>|cRXP_WARN_You can either turn this in now or the next time you are in Blackrock Mountain|r
.turnin 7848 >> Turn in Attunement to the Core
.target Lothos Riftwaker
step
#completewith Grindto60
.zone Felwood >> Travel to Felwood
step
.goto Moonglade,48.102,67.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
.fly Felwood >> Fly to Felwood
.target Sindrayl
.zoneskip Moonglade,1
step
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maethrya|r
.fly Felwood >> Fly to Felwood
.target Maethrya
.zoneskip Winterspring,1
step << !Mage
#sticky
#label Grindto60
.goto Felwood,62.77,10.57,70,0
.goto Felwood,62.77,10.57,0
.xpto60 >> Grind |cRXP_ENEMY_Furbolgs|r at Felpaw Village until you have enough XP to ding 60, then fly to Darnassus
.mob Deadwood Shaman
.mob Deadwood Den Watcher
.mob Deadwood Avenger
step << !Mage
.goto Moonglade,48.102,67.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
.fly Teldrassil >> Fly to Teldrassil
.target Sindrayl
.zoneskip Moonglade,1
step << !Mage
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishellena|r
.fly Teldrassil >> Fly to Teldrassil
.target Mishellena
step << Mage
#sticky
.goto Felwood,62.77,10.57
.xpto60 >> Grind |cRXP_ENEMY_Furbolgs|r at Felpaw Village until you have enough XP to ding 60, then Teleport to Darnassus
.mob Deadwood Shaman
.mob Deadwood Den Watcher
.mob Deadwood Avenger
step << Mage
.zone Darnassus >> Teleport to Darnassus
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 4901 >> Turn in Guardians of the Altar
.target Erelas Ambersky
step << !Mage
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 4902 >> Accept Wildkin of Elune
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step
.isQuestTurnedIn 4507
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r upstairs
.turnin 4508 >> Turn in Calm Before the Storm
.accept 4510 >> Accept Calm Before the Storm
.target Gracina Spiritmight
step
.goto Darnassus,39.38,42.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Idriana|r
.turnin 4510 >> Turn in Calm Before the Storm
.target Idriana
step << Mage
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >> Take the purple portal to Rut'theran Village
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 4901 >> Turn in Guardians of the Altar
.target Erelas Ambersky
step << Mage
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 4902 >> Accept Wildkin of Elune
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.889,89.456
.zone Darnassus >> Take the purple portal into Darnassus
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 4902 >> Turn in Wildkin of Elune
.target Arch Druid Fandral Staghelm
step
+Congratulations on finishing the RestedXP 1-60 Hardcore Survival Guide! Thank you for using RestedXP.

]])

