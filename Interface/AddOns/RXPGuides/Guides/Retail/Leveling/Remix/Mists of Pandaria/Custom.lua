RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 11) Landfall
#displayname Chapter 2 - Landfall Intro
#title Landfall
#next 5) Krasarang Wilds 1
step
.isOnQuest 29940
.goto 418,76.65,5.18 >> |cRXP_WARN_Follow the Arrow|r
step
#completewith Meet the Scout
.cast 441154 >> Use |T134491:0|t[Nostwin's Voucher] to teleport to Infinite Bazaar.
.use 217930
.itemcount 217930,1
step << Alliance
.isQuestComplete 80446
.goto 393,75.04,45.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>Turn in Looking for Group
.target Arturos
step << Alliance
.isQuestComplete 80447
.goto 393,76.55,48.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>Turn in Looking for More
.target Pythagorus
step << Alliance
#completewith Meet the Scout
.goto 393,67.15,43.64,10,0
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu
step << Alliance
.isQuestComplete 80448
.goto 393,64.6,42.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>Turn in A Fresh Scene
.target Larah Treebender
step << Alliance
#label Meet the Scout
.goto 390,84.00,58.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
.accept 32246 >>Accept Meet the Scout
.target Lyalia
step << Horde
.isQuestComplete 80447
.goto 391,21.13,40.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>Turn in Looking for More
.target Pythagorus
step << Horde
.isQuestComplete 80446
.goto 391,28.56,30.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>Accept Looking for Group
.target Arturos
step << Horde
#completewith Meet the Scout
.goto 391,30.05,40.79,10,0
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu
step << Horde
.isQuestComplete 80448
.goto 391,32.98,54.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>Accept A Fresh Scene
.target Larah Treebender
step << Horde
#completewith Meet the Scout
.goto 390,59.14,17.93,10 >> Leave the building
step << Horde
#label Meet the Scout
.goto 390,62.8,28.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.accept 32249 >>Accept Meet the Scout
.target Sunwalker Dezco
step
#completewith next
.aura -449510
.cast 449508 >> Use |T134488:0|t[Nostwin's Return Service] to return to Krasarang Wilds.
.use 449508
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 1) Dragonriding
step << Alliance
.goto 371,45.8,84.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
.target Moratari
.accept 80012 >>Accept Dragonriding
step << Alliance
.goto 371,45.81,84.7
>>Click on the |cRXP_PICK_Portal|r
.complete 80012,1 
.complete 80012,3 
.disablecheckbox
step << Alliance
.goto 371,65.25,37.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_MoratariLord Andestrasz|r
.complete 80012,4 
.target Lord Andestrasz
step << Horde
.goto 371,45.79,84.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
.target Moratari
.accept 80012 >>Accept Dragonriding
step << Horde
.goto 371,45.84,84.73
>>Click on the |cRXP_PICK_Portal|r
.complete 80012,1 
.complete 80012,3 
.disablecheckbox
step << Horde
.goto 371,65.25,37.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.complete 80012,4 
.target Lord Andestrasz
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.turnin 80012 >>Turn in Dragonriding
.target Lord Andestrasz
.accept 80013 >>Accept How to Glide with Your Dragon
step
#completewith How to Glide with Your Dragon
.goto 371,65.25,37.20,30,0
.cast 437035 >>Use |T134376:0|t[Bronze Timepiece] to teleport to the dragonriding quests.
.itemcount 216712,1
.use 216712
step
#completewith How to Glide with Your Dragon
>>Use your Dragonriding Mount.
.complete 80013,1 
step
#label How to Glide with Your Dragon
.goto 371,65.37,37.27
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,2,1 
step
.goto 371,66.55,37.05
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,2,2 
step
.goto 371,67.45,36.12
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,2,3 
step
.goto 371,67.57,34.72
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,2,4 
step
.goto 371,67.32,33.95
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,2,5 
step
.goto 371,66.8,33.41
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,3 
step
.goto 371,66.75,33.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 80013 >>Turn in How to Glide with Your Dragon
.timer 2,RP
.target Celormu
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 80015 >>Accept How to Dive with Your Dragon
.target Lord Andestrasz
step
#completewith How to Dive with Your Dragon
>>Use your Dragonriding Mount.
.complete 80015,1 
step
#label How to Dive with Your Dragon
.goto 371,65.37,37.27
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,1 
step
.goto 371,66.59,37.19
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,2 
step
.goto 371,67.92,37.28
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,3 
step
.goto 371,68.9,38.16
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,4 
step
.goto 371,69.72,39.82
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,5 
step
.goto 371,69.93,44.03
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,6 
step
.goto 371,68.09,46.82
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,7 
step
.goto 371,66.33,49.38
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,3 
step
.goto 371,66.26,49.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 80015 >>Turn in How to Dive with Your Dragon
.timer 2,RP
.target Celormu
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 80016 >>Accept The Need For Higher Velocities
.target Lord Andestrasz
step
.goto 371,65.35,37.27
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,1 
step
.goto 371,66.35,37.22
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,2 
step
.goto 371,68.31,36.03
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,3 
step
.goto 371,68.62,32.48
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,4 
step
.goto 371,67.29,27.3
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,5 
step
.goto 371,65.89,25.58
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,6 
step
.goto 371,65.03,24.33
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,3 
step
.goto 371,64.99,24.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 80016 >>Turn in The Need For Higher Velocities
.timer 2,RP
.target Celormu
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 80017 >>Accept The Need For Higher Altitudes
.target Lord Andestrasz
step
#completewith next
>>Use your Dragonriding Mount.
.complete 80017,1 
step
.goto 371,65.35,37.18
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,1 
step
.goto 371,66.27,37.05
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,2 
step
.goto 371,67.83,35.58
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,3 
step
.goto 371,68.76,33.22
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,4 
step
.goto 371,68.17,29.85
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,5 
step
.goto 371,65.26,29.44
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,6 
step
.goto 371,62.6,28.68
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,3 
step
.goto 371,62.46,28.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 80017 >>Turn in The Need For Higher Altitudes
.timer 2,RP
.target Celormu
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 80018 >>Accept Fashionable Flying
.target Lord Andestrasz
step
.goto 371,65.05,37.00
>>Click on the |cRXP_PICK_Rostrum of Transformation|r and press |cRXP_WARN_escape to close the window.|r
.complete 80018,1 
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.turnin 80018 >>Turn in Fashionable Flying
.accept 80349 >>Accept Time to Return
.target Lord Andestrasz
step << Horde
#completewith next
.cast 421177 >>Click on the |cRXP_PICK_Portal to Honeydew Village|r
.goto 371,65.20,37.45
step << Horde
.goto 371,28.52,14.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
.turnin 80349 >>Turn in Time to Return
.target Moratari
step << Alliance
#completewith next
.goto 371,65.21,37.46,5,0
.goto 371,45.8,84.6,40 >>Click on the |cRXP_PICK_Portal|r to go back.
step << Alliance
.goto 371,45.78,84.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
.turnin 80349 >>Turn in Time to Return
.target Moratari
step << Horde
.goto 371,45.79,84.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
.turnin 80349 >>Turn in Time to Return
.target Moratari
step << Alliance
#completewith next
.goto 371,65.11,37.32,30 >>Click on the |cRXP_PICK_Portal|r
step
#completewith next
.goto 371,65.27,37.18
.gossipoption 121340 >>Talk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 80013 >>Accept How to Glide with Your Dragon
.target Lord Andestrasz
step
.goto 371,65.21,37.46,5,0
.goto 371,45.8,84.6,40 >> |cRXP_WARN_We'll keep this quest for its teleport item.|r
*Click on the |cRXP_PICK_Portal|r to go back.
.itemcount 216712,1
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 1) Monk Quests
step
.isQuestAvailable 31834
.zoneskip 379
.cast 126892 >>Use Zen Pilgrimage
step
.goto 379,48.60,42.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.accept 31834 >>Accept Begin Your Training: Master Cheng
.target Master Hight
step
#completewith next
.goto 379,48.12,43.3,10 >>Leave the Temple
step
.isOnQuest 31834
.goto 379,47.06,40.15
.gossipoption 41015 >>Talk to |cRXP_FRIENDLY_Master Cheng|r
.timer 29,RP
.target Master Cheng
step
.isOnQuest 31834
>>|cRXP_WARN_Follow the Arrow.|r When |cRXP_FRIENDLY_Master Cheng|r stops moving, retarget him to bow, then defeat him in a duel.
.emote BOW,66138
.goto 379,48.12,40.35
.complete 31834,1 
.target Master Cheng
.mob Master Cheng
step
#completewith next
.goto 379,48.25,43.34,10 >> Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31834 >>Turn in Begin Your Training: Master Cheng
.accept 31835 >>Accept Continue Your Training: Master Kistane
.accept 31840 >>Accept Practice Makes Perfect: Master Cheng
.target Master Hight
step
#completewith next
.goto 379,48.12,43.3,10 >>Leave the Temple
step
.isOnQuest 31840
.goto 379,47.06,40.15
.gossipoption 41015 >>Talk to |cRXP_FRIENDLY_Master Cheng|r
.timer 30,RP
.target Master Cheng
step
.isOnQuest 31835
.goto 379,48.05,39.02
.gossipoption 40841 >>Talk to |cRXP_FRIENDLY_Master Kistane|r
.timer 30,RP
.target Master Kistane
step
>>|cRXP_WARN_Follow the Arrow.|r When |cRXP_FRIENDLY_Master Cheng|r and |cRXP_FRIENDLY_Master Kistane|r stops moving, retarget them to bow, then defeat him in a duel.
.emote BOW,66138
.emote BOW,65899
.goto 379,48.11,40.31
.complete 31840,1 
.complete 31835,1 
.target Master Cheng
.mob Master Cheng
.target Master Kistane
.mob Master Kistane
step
#completewith next
.goto 379,48.25,43.34,10 >> Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31835 >>Turn in Continue Your Training: Master Kistane
.turnin -31840 >>Turn in Practice Makes Perfect: Master Cheng
.accept 31836 >>Accept Continue Your Training: Master Yoon
.target Master Hight
step
#completewith next
.goto 379,49.17,42.86,10 >>Leave the Temple
step
.isOnQuest 31836
#loop
.goto 379,48.96,40.88,10,0
.goto 379,48.95,40.48,10,0
.goto 379,48.74,40.65,10,0
.goto 379,48.55,40.71,10,0
.gossipoption 40843 >>Talk to |cRXP_FRIENDLY_Master Yoon|r
.timer 30,RP
.target Master Yoon
step
#loop
.goto 379,48.95,40.48,10,0
.goto 379,48.74,40.65,10,0
.goto 379,48.55,40.71,10,0
>>|cRXP_WARN_Follow the Arrow.|r When |cRXP_FRIENDLY_Master Yoon|r stops moving, retarget him to bow, then defeat him in a duel.
.emote BOW,66073
.complete 31836,1 
.target Master Yoon
step
#completewith next
.goto 379,48.25,43.34,10 >> Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31836 >>Turn in Continue Your Training: Master Yoon
.accept 31837 >>Accept Continue Your Training: Master Cheng
.target Master Hight
step
#completewith next
.goto 379,48.25,43.34,10 >> Enter the Temple
step
.isOnQuest 31837
.goto 379,48.53,41.49
.gossipoption 40975 >>Talk to |cRXP_FRIENDLY_Master Cheng|r
.timer 30,RP
.target Master Cheng
step
>>|cRXP_WARN_Follow the Arrow.|r When |cRXP_FRIENDLY_Master Cheng|r stops moving, retarget him to bow, then defeat him in a duel.
.emote BOW,66180
.goto 379,48.10,40.31
.complete 31837,1 
.target Master Cheng
step
#completewith next
.goto 379,48.25,43.34,10 >> Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31837 >>Turn in Continue Your Training: Master Cheng
.accept 31838 >>Accept Continue Your Training: Master Tsang
.target Master Hight
step
#completewith next
.goto 379,48.12,43.3,10 >>Leave the Temple
step
.isOnQuest 31838
.goto 379,48.07,41.37
.gossipoption 41014 >>Talk to |cRXP_FRIENDLY_Master Tsang|r
.timer 30,RP
.target Master Tsang
step
>>|cRXP_WARN_Follow the Arrow.|r When |cRXP_FRIENDLY_Master Tsang|r stops moving, retarget him to bow, then defeat him in a duel.
*Use |T606542:0|tCrackling Jade Lightning on the Monk Trainees around you on the Balance Poles, then deafeat Master Tsang
.emote BOW,66149
.goto 379,48.12,40.37
.complete 31838,1 
.target Master Tsang
step
#completewith next
.goto 379,48.25,43.34,10 >> Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31838 >>Turn in Continue Your Training: Master Tsang
.accept 31839 >>Accept Continue Your Training: Master Hsu
.target Master Hight
step
#completewith next
.goto 379,48.12,43.3,10 >>Leave the Temple
step
.isOnQuest 31839
.goto 379,47.49,40.93
.gossipoption 40709 >>Talk to |cRXP_FRIENDLY_Master Hsu|r
.timer 30,RP
.target Master Hsu
step
>>|cRXP_WARN_Follow the Arrow.|r When |cRXP_FRIENDLY_Master Hsu|r stops moving, retarget him to bow, then defeat him in a duel.
.emote BOW,65977
.goto 379,48.11,40.36
.complete 31839,1 
.target Master Hsu
step
#completewith next
.goto 379,48.25,43.34,10 >> Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31839 >>Turn in Continue Your Training: Master Hsu
.accept 31944 >>Accept Complete Your Training: The Final Test
.target Master Hight
step
#completewith next
.goto 379,48.12,43.3,10 >>Leave the Temple
step
.isOnQuest 31944
.goto 379,48.32,41.52
.gossipoption 41235 >>Talk to |cRXP_FRIENDLY_Master Hight|r
.timer 30,RP
.target Master Hight
step
>>|cRXP_WARN_Follow the Arrow.|r When |cRXP_FRIENDLY_Master Hight|r stops moving, retarget him to bow, then defeat him in a duel.
.emote BOW,66732
.goto 379,48.15,40.46
.complete 31944,1 
.target Master Hight
step
#completewith next
.goto 379,48.25,43.34,10 >> Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31944 >>Turn in Complete Your Training: The Final Test
.target Master Hight
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3) Krasarang Crane Wing
step
.xp >34,1
.goto 418,44.20,42.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
.accept 30269 >>Accept Unsafe Passage
.target Koro Mistwalker
step
.xp >34,1
#completewith AccompanyKoro
#label TalkKoro
.goto 418,44.20,42.87
.gossipoption 40208 >>Talk to |cRXP_FRIENDLY_Koro Mistwalker|r
.timer 80,RP
.target Koro Mistwalker
step
.xp >34,1
#completewith AccompanyKoro
#requires TalkKoro
.goto 418,43.81,38.3
>>|cRXP_WARN_Escort |cRXP_FRIENDLY_Koro Mistwalker.|r Kill |cRXP_ENEMY_Riverblade Bloodletters|r|r
.cast 113142 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r when he stops moving
.skipgossip 58978,1
.timer 80,RP
.mob Riverblade Bloodletter
.target Koro Mistwalker
step
.xp >34,1
#label AccompanyKoro
.goto 418,43.88,36.85
>>|cRXP_WARN_Continue to Escort |cRXP_FRIENDLY_Koro Mistwalker.|r Kill |cRXP_ENEMY_Riverblade Bloodletters|r|r
.complete 30269,1 
.mob Riverblade Bloodletter
step
.xp >34,1
.goto 418,40.60,33.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
.turnin 30269 >>Turn in Unsafe Passage
.accept 30270 >>Accept Blinding the Riverblades
.accept 30694 >>Accept Tread Lightly
.target Koro Mistwalker
step
.xp >34,1
.goto 418,40.49,34.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
.accept 30268 >>Accept The Murksweats
.target Anduin Wrynn
step
.xp >34,1
#completewith Riverblade Pathstalker
#hidewindow
#loop
.goto 418,38.88,38.20,40,0
.goto 418,36.91,41.20,40,0
.goto 418,35.84,35.96,40,0
.goto 418,36.89,37.32,40,0
.goto 418,38.16,34.17,40,0
.goto 418,40.75,30.61,40,0
.goto 418,43.71,30.95,40,0
.goto 418,45.13,29.71,40,0
.goto 418,46.13,28.25,40,0
.goto 418,47.48,30.29,40,0
.goto 418,48.35,33.53,40,0
.goto 418,47.02,36.37,40,0
.goto 418,45.52,38.23,40,0
.goto 418,38.88,38.20,0
.goto 418,36.91,41.20,0
.goto 418,35.84,35.96,0
.goto 418,36.89,37.32,0
.goto 418,38.16,34.17,0
.goto 418,40.75,30.61,0
.goto 418,43.71,30.95,0
.goto 418,45.13,29.71,0
.goto 418,46.13,28.25,0
.goto 418,47.48,30.29,0
.goto 418,48.35,33.53,0
.goto 418,47.02,36.37,0
.goto 418,45.52,38.23,0
+1
step
.xp >34,1
#completewith Traps Poked
>>Kill |cRXP_ENEMY_Riverblade Pathstalker|r
.complete 30270,1 
.mob riverblade pathstalker
step
.xp >34,1
#completewith Traps Poked
>>Kill |cRXP_ENEMY_Murkscale Striker|r Loot them for |T348531:0|t[|cRXP_LOOT_Murkscale Head|r]
.complete 30268,1 
.mob Murkscale Striker
step
.xp >34,1
#label Traps Poked
>>Click on |cRXP_PICK_Traps|r |cRXP_WARN_make sure to not step on them.|r
.complete 30694,1 
step
.xp >34,1
#completewith next
>>Kill |cRXP_ENEMY_Murkscale Striker|r Loot them for |cRXP_LOOT_Murkscale Head|r
.complete 30268,1 
.mob Murkscale Striker
step
.xp >34,1
#label Riverblade Pathstalker
>>Kill |cRXP_ENEMY_Riverblade Pathstalker|r
.complete 30270,1 
.mob riverblade pathstalker
step
.xp >34,1
#loop
.goto 418,37.32,43.07,35,0
.goto 418,35.50,34.25,35,0
.goto 418,42.04,38.52,42,0
.goto 418,37.32,43.07,0
.goto 418,35.50,34.25,0
.goto 418,42.04,38.52,0
>>Kill |cRXP_ENEMY_Murkscale Striker|r Loot them for |cRXP_LOOT_Murkscale Head|r
.complete 30268,1 
.mob Murkscale Striker
step
.xp >34,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r and |cRXP_FRIENDLY_Koro Mistwalker|r
.turnin 30268 >>Turn in The Murksweats
.goto 418,40.49,34.66
.target +Anduin Wrynn
.turnin 30270 >>Turn in Blinding the Riverblades
.turnin 30694 >>Turn in Tread Lightly
.accept 30272 >>Accept Striking the Rain
.accept 30695 >>Accept Ahead on the Way
.goto 418,40.60,33.69
.target +Koro Mistwalker
.accept 30271 >>Accept Sha Can Awe
.goto 418,40.49,34.66
.target +Anduin Wrynn
step
.xp >34,1
#completewith West Pagoda Cleansed
>>Kill |cRXP_ENEMY_Incarnation of Despair|r and |cRXP_ENEMY_Haunt of Despair|r |cRXP_WARN_while standing near |cRXP_FRIENDLY_Hopeless Acolytes|r|r
.complete 30272,1 
.complete 30271,1 
.mob Incarnation of Despair
.mob Haunt of Despair
.target Hopeless Acolyte
step
.xp >34,1
.goto 418,43.05,54.22
>>Kill |cRXP_ENEMY_Maw of Despair|r
.complete 30695,2 
.mob Maw of Despair
step
.xp >34,1
.goto 418,37.78,54.37
#label West Pagoda Cleansed
>>Kill |cRXP_ENEMY_Maw of Despair|r
.complete 30695,1 
.mob Maw of Despair
step
.xp >34,1
#loop
.goto 418,38.20,51.86,40,0
.goto 418,36.95,50.92,40,0
.goto 418,37.20,49.43,40,0
.goto 418,38.97,48.36,40,0
.goto 418,39.65,48.84,40,0
.goto 418,40.36,47.18,40,0
.goto 418,41.60,46.87,40,0
.goto 418,41.75,48.12,40,0
.goto 418,42.72,50.25,40,0
.goto 418,43.12,51.13,40,0
.goto 418,38.20,51.86,0
.goto 418,36.95,50.92,0
.goto 418,37.20,49.43,0
.goto 418,38.97,48.36,0
.goto 418,39.65,48.84,0
.goto 418,40.36,47.18,0
.goto 418,41.60,46.87,0
.goto 418,41.75,48.12,0
.goto 418,42.72,50.25,0
.goto 418,43.12,51.13,0
>>Kill |cRXP_ENEMY_Incarnation of Despair|r and |cRXP_ENEMY_Haunt of Despair|r |cRXP_WARN_while standing near |cRXP_FRIENDLY_Hopeless Acolytes|r|r
.complete 30272,1 
.complete 30271,1 
.mob Incarnation of Despair
.mob Haunt of Despair
.target Hopeless Acolyte
step
.xp >34,1
.goto 418,40.42,50.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r |cRXP_WARN_next to you.|r
.turnin 30271 >>Turn in Ahead on the Way
.turnin 30272 >>Turn in Striking the Rain
.turnin 30695 >>Turn in Ahead on the Way
.accept 30273 >>Accept In the House of the Red Crane
.target Anduin Wrynn
step
.xp >34,1
#completewith next
.goto 418,40.42,57.31,15,0
.goto 418,40.95,57.12,15,0
.goto 418,40.43,54.48,20,0
>>|cRXP_WARN_Follow the arrow down into the temple|r
.gossipoption 39489 >>Talk to |cRXP_FRIENDLY_Chi-Ji|r
.timer 10,RP
.target Chi-Ji
step
.xp >34,1
.goto 418,40.45,54.52
>>Kill |cRXP_ENEMY_Sha of Despair|r
.complete 30273,1 
.timer 10,RP
.mob Sha of Despair
step
.xp >34,1
.goto 418,40.97,57.19,15,0
.goto 418,40.44,57.11,15,0
.goto 418,40.43,49.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chi-Ji|r |cRXP_WARN_outside|r
.turnin 30273 >>Turn in In the House of the Red Crane
.target Chi-Ji
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3) Krasarang Wilds Dojani
step
.convertquest 30349,30127 << Horde
#completewith Dojani Dominator
>>Kill |cRXP_ENEMY_Dojani Reclaimer|r, |cRXP_ENEMY_Surveyor|r and |cRXP_ENEMY_Dojani Enforcer|r
*|cRXP_WARN_Avoid the red circles on the ground; to deal extra damage, pull enemies inside them.|r
.complete 30349,1 
.complete 30349,2 
.complete 30349,3 
.mob Dojani Reclaimer
.mob Dojani Surveyor
.mob Dojani Enforcer
step
.convertquest 30351,30130 << Horde
#completewith Dojani Dominator
>>Click on |cRXP_PICK_Leaves|r
.complete 30351,1 
step
.convertquest 30346,30129 << Horde
#label Dojani Dominator
.goto 418,55.45,34.50
>>Kill |cRXP_ENEMY_Dojani Dominator.|r Loot him for |cRXP_LOOT_Dojani Orders|r
.complete 30346,1 
.mob Dojani Dominator
step << Alliance
>>Click on the quest pop-up to turn in the quest.
.goto 418,55.501,34.431
.turnin 30346 >>Turn in Where are the Pools
.accept 30347 >>Accept The Pools of Youth
step << Horde
.goto 418,55.501,34.431
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.turnin 30129 >>Turn in Where are the Pools
.accept 30128 >>Accept The Pools of Youth
.target Kang Bramblestaff
step
#label DojaniSurvRecEnfSlain
#completewith FirstSwoopDojani
>>Kill |cRXP_ENEMY_Dojani Reclaimer|r, |cRXP_ENEMY_Surveyor|r and |cRXP_ENEMY_Dojani Enforcer|r
*|cRXP_WARN_Avoid the red circles on the ground; to deal extra damage, pull enemies inside them.|r
.complete 30349,1 
.complete 30349,2 
.complete 30349,3 
.mob Dojani Reclaimer
.mob Dojani Surveyor
.mob Dojani Enforcer
step
#label ImperialLotusLeaves
#completewith FirstSwoopDojani
>>Click on |cRXP_PICK_Leaves|r
.complete 30351,1 
step
.isOnQuest 30351
#hidewindow
#label FirstSwoopDojani
#completewith DojaniSurvRecEnfSlain
.goto 418,56.45,38.88,35,0
.goto 418,55.06,40.81,35,0
.goto 418,53.24,37.76,35 >> 1
step
#requires FirstSwoopDojani
.isOnQuest 30347,30128
#completewith next
.gossipoption 39799 >>Talk to |cRXP_FRIENDLY_Na Lek|r
.goto 418,51.928,32.742
.timer 15,RPs
.target Na Lek
step
.convertquest 30347,30128 << Horde
#requires FirstSwoopDojani
#loop
.goto 418,51.66,33.08,10,0
.goto 418,52.36,32.81,10,0
.goto 418,51.89,32.20,10,0
.goto 418,51.66,33.08,0
.goto 418,52.36,32.81,0
.goto 418,51.89,32.20,0
>>Kill |cRXP_ENEMY_Sleeping Guardian.|r Click on the |cRXP_PICK_Water of Youth.|r
.complete 30347,1 
.mob Sleeping Guardian
step
#completewith Dojani Enforcer
#hidewindow
#loop
.goto 418,55.30,32.08,40,0
.goto 418,55.66,30.16,40,0
.goto 418,54.54,30.84,40,0
.goto 418,56.45,38.88,35,0
.goto 418,55.06,40.81,35,0
.goto 418,53.24,37.76,35,0
.goto 418,55.30,32.08,0
.goto 418,55.66,30.16,0
.goto 418,54.54,30.84,0
.goto 418,56.45,38.88,0
.goto 418,55.06,40.81,0
.goto 418,53.24,37.76,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Dojani Reclaimer|r, |cRXP_ENEMY_Surveyor|r and |cRXP_ENEMY_Dojani Enforcer|r
*|cRXP_WARN_Avoid the red circles on the ground; to deal extra damage, pull enemies inside them.|r
.complete 30349,1 
.complete 30349,2 
.complete 30349,3 
.mob Dojani Reclaimer
.mob Dojani Surveyor
.mob Dojani Enforcer
step
>>Click on |cRXP_PICK_Leaves|r
.complete 30351,1 
step
#label Dojani Enforcer
>>Kill |cRXP_ENEMY_Dojani Reclaimer|r, |cRXP_ENEMY_Surveyor|r and |cRXP_ENEMY_Dojani Enforcer|r
*|cRXP_WARN_Avoid the red circles on the ground; to deal extra damage, pull enemies inside them.|r
.complete 30349,1 
.complete 30349,2 
.complete 30349,3 
.mob Dojani Reclaimer
.mob Dojani Surveyor
.mob Dojani Enforcer
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3) Krasarang Wilds Horde Campaign
<< Horde
step
.goto 390,62.92,28.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.accept 32249 >>Accept Meet the Scout
.target Sunwalker Dezco
step
.goto 390,63.40,20.77
.fp >>Get the The Golden Terrace Flight Path
step
.goto 390,63.40,20.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowmaster Ku|r
.accept 31391 >>Accept The Klaxxi
.target Bowmaster Ku
step
.goto 390,63.14,22.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Weng the Merciful|r
.accept 31385 >>Accept The Golden Lotus
.target Weng the Merciful
step
.goto 418,8.74,64.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Rokla|r
.turnin 32249 >>Turn in Meet the Scout
.target Scout Rokla
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
.accept 32250 >>Accept The Might of the Warchief
.target Garrosh Hellscream
step
.goto 418,12.02,63.42
>>Kill |cRXP_ENEMY_Alliance|r
.complete 32250,1 
.mob Alliance
step
>>|cRXP_WARN_Follow the arrow|r
.goto 418,10.70,53.15
.complete 32250,2 
step
>>|cRXP_WARN_Follow the arrow|r
.goto 418,15.73,57.75
.complete 32250,3 
step
.goto 418,15.73,57.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
.turnin 32250 >>Turn in The Might of the Warchief
.accept 32108 >>Accept Domination Point
.target Garrosh Hellscream
step
.goto 418,8.53,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Signal Fire|r
.turnin 32108 >>Turn in Domination Point
.target Signal Fire
step
.goto 418,10.38,53.71
.accept 32251 >>Accept Dagger in the Dark
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.accept 32256 >>Accept Rise Of An Empire
.target General Nazgrim
step
.goto 418,12.74,56.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bounty Board|r
.accept 32222 >>Accept WANTED: Chief Engineer Cogwrench
.target Bounty Board
step
.goto 418,12.97,56.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.accept 32214 >>Accept Bilgewater Infiltrators
.target Rivett Clutchpop
step
.goto 418,13.80,55.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke|r
.accept 32197 >>Accept Mystery Meatloaf
.target Duke
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss-Lady Trixel|r
.accept 32136 >>Accept Work Order: Fuel
.target Boss-Lady Trixel
step
.goto 418,25.26,60.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixy Buzzsaw|r
.accept 32237 >>Accept Precious Resource
.target Bixy Buzzsaw
step
.goto 418,25.54,60.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzle Gearslip|r
.turnin 32136 >>Turn in Work Order: Fuel
.target Grizzle Gearslip
.accept 32137 >>Accept Runnin' On Empty
step
.goto 418,21.34,65.00
.complete 32197,1 
step
.goto 418,25.33,64.38
.complete 32137,1 
step
.goto 418,26.05,58.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sezik Steampot|r
.turnin 32197 >>Turn in Mystery Meatloaf
.target Sezik Steampot
step
.goto 418,21.78,54.02
.complete 32237,1 
step
.goto 418,19.36,63.11
>>Kill |cRXP_ENEMY_Saboteur|r
.complete 32214,1 
.mob Saboteur
step
.goto 418,25.26,60.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixy Buzzsaw|r
.turnin 32237 >>Turn in Precious Resource
.target Bixy Buzzsaw
step
.goto 418,21.66,51.14
>>Kill |cRXP_ENEMY_Chief Engineer Cogwrench|r
.complete 32222,1 
.mob Chief Engineer Cogwrench
step
.goto 418,13.79,55.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss-Lady Trixel|r
.turnin 32137 >>Turn in Runnin' On Empty
.target Boss-Lady Trixel
step
.goto 418,12.91,56.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 32214 >>Turn in Bilgewater Infiltrators
.target Rivett Clutchpop
step
.goto 418,10.08,53.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r
.turnin 32222 >>Turn in WANTED: Chief Engineer Cogwrench
.target Blood Guard Gro'tash
step
.goto 418,10.38,53.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim to queue for "Dagger in the Dark"|r
.complete 32251,1 
.target General Nazgrim to queue for "Dagger in the Dark"
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3) Krasarang Wilds Hozen
step
.goto 418,51.66,75.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tony Tuna|r
.accept 30667 >>Accept Particular Plumage
.target Tony Tuna
step
.goto 418,51.53,76.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
.accept 30666 >>Accept Sudden, Unexpected Crocolisk Aggression
.target Jay Cloudfall
step
#completewith Mortbreath crocolisk
#hidewindow
#loop
.goto 418,47.65,69.69,35,0
.goto 418,44.59,68.24,35,0
.goto 418,42.59,69.95,35,0
.goto 418,44.07,73.97,50,0
.goto 418,47.65,69.69,0
.goto 418,44.59,68.24,0
.goto 418,42.59,69.95,0
.goto 418,44.07,73.97,0
+1
step
#completewith Emerald Tailfeather
>>Kill |cRXP_ENEMY_Mortbreath crocolisk|r
.complete 30666,1 
.mob mortbreath crocolisk
step
#completewith Emerald Tailfeather
>>Kill |cRXP_ENEMY_Dusky Lory|r Loot them for |T132921:0|t[|cRXP_LOOT_Dusky Tailfeather|r]
.complete 30667,3 
.mob Dusky Lory
step
#completewith Emerald Tailfeather
>>Kill |cRXP_ENEMY_Crimson Lory|r Loot them for |T132929:0|t[|cRXP_LOOT_Crimson Tailfeather|r]
.complete 30667,2 
.mob Crimson Lory
step
#label Emerald Tailfeather
>>Kill |cRXP_ENEMY_Emerald Lory|r Loot them for |T132924:0|t[|cRXP_LOOT_Emerald Tailfeather|r]
.complete 30667,1 
.mob Emerald Lory
step
#completewith Crimson Tailfeather
>>Kill |cRXP_ENEMY_Mortbreath crocolisk|r
.complete 30666,1 
.mob mortbreath crocolisk
step
#completewith Crimson Tailfeather
>>Kill |cRXP_ENEMY_Dusky Lory|r Loot them for |T132921:0|t[|cRXP_LOOT_Dusky Tailfeather|r]
.complete 30667,3 
.mob Dusky Lory
step
#label Crimson Tailfeather
>>Kill |cRXP_ENEMY_Crimson Lory|r Loot them for |T132929:0|t[|cRXP_LOOT_Crimson Tailfeather|r]
.complete 30667,2 
.mob Crimson Lory
step
#completewith next
>>Kill |cRXP_ENEMY_Mortbreath crocolisk|r
.complete 30666,1 
.mob mortbreath crocolisk
step
>>Kill |cRXP_ENEMY_Dusky Lory|r Loot them for |T132921:0|t[|cRXP_LOOT_Dusky Tailfeather|r]
.complete 30667,3 
.mob Dusky Lory
step
#label Mortbreath crocolisk
>>Kill |cRXP_ENEMY_Mortbreath crocolisk|r
.complete 30666,1 
.mob mortbreath crocolisk
step
.goto 418,51.66,75.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tony Tuna|r
.turnin 30667 >>Turn in Particular Plumage
.target Tony Tuna
step
.goto 418,51.53,76.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
.turnin 30666 >>Turn in Sudden, Unexpected Crocolisk Aggression
.accept 30668 >>Accept Build Your Own Raft
.target Jay Cloudfall
step
.goto 418,52.26,77.95
>>Click on |cRXP_PICK_Tough Kelp|r
.complete 30668,2 
step
.goto 418,52.38,76.18
>>Click on |cRXP_PICK_Spare Plank|r
.complete 30668,1 
step
.goto 418,51.54,76.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
.turnin 30668 >>Turn in Build Your Own Raft
.accept 30669 >>Accept The Lorewalker on the Lake
.target Jay Cloudfall
step
.goto 418,51.68,76.58
>>Click on the |cRXP_PICK_Raft|r
.complete 30669,1 
step
.goto 418,45.97,78.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Ana Wu|r
.turnin 30669 >>Turn in The Lorewalker on the Lake
.accept 30671 >>Accept Wisdom Has A Price
.accept 30691 >>Accept Misery
.target Wise Ana Wu
step
#completewith next
>>Kill |cRXP_ENEMY_Great Grey Shark|r and |cRXP_ENEMY_Nayeli Hammerhead.|r Loot them for |T350573:0|t[|cRXP_LOOT_Shark Fillet|r].
.complete 30671,1 
.mob Great Grey Shark
.mob Nayeli Hammerhead
step
#completewith next
#title Swim Down
.goto 418,46.00,80.23,10 >> Enter the |cRXP_WARN_underwater|r Cave.
step
>>Kill |cRXP_ENEMY_Nahassa.|r
.complete 30691,1 
.goto 418,46.202,83.462
.mob Nahassa
step
>>Click on the quest pop-up to turn in the quest
.goto 418,46.202,83.462
.turnin 30691 >>Turn in Misery
step
#completewith next
.goto 418,46,80.23,10 >> Leave the Cave.
step
#loop
.goto 418,47.04,79.26,40,0
.goto 418,49.13,78.94,40,0
.goto 418,46.31,77.34,40,0
.goto 418,44.45,79.32,40,0
.goto 418,47.04,79.26,0
.goto 418,49.13,78.94,0
.goto 418,46.31,77.34,0
.goto 418,44.45,79.32,0
>>Kill |cRXP_ENEMY_Great Grey Shark|r and |cRXP_ENEMY_Nayeli Hammerhead.|r Loot them for |T350573:0|t[|cRXP_LOOT_Shark Fillet|r].
.complete 30671,1 
.mob Great Grey Shark
.mob Nayeli Hammerhead
step
.goto 418,45.98,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Ana Wu|r |cRXP_WARN_on the surface.|r
.turnin 30671 >>Turn in Wisdom Has A Price
.target Wise Ana Wu
.accept 30672 >>Accept Balance
step
#completewith next
>>Kill |cRXP_ENEMY_Unga Fish-Getter.|r Loot them for the quest |cRXP_LOOT_Buried Hozen Treasure|r. Click it in your bags
.complete 30672,1 
.collect 80827,1,30675,0
.accept 30675 >>Accept Buried Hozen Treasure
.mob Unga Fish-getter
step
.goto 418,45.17,84.59
>>|cRXP_WARN_Follow the Arrow|r
.accept 30674 >>Accept Balance Without Violence
step << Alliance
#completewith UngaFishGetter
#hidewindow
#loop
.goto 418,43.49,85.45,40,0
.goto 418,44.42,87.40,40,0
.goto 418,47.74,87.01,40,0
.goto 418,48.64,87.54,40,0
.goto 418,50.20,86.64,40,0
.goto 418,51.12,86.50,40,0
.goto 418,51.76,84.55,40,0
.goto 418,49.38,84.88,40,0
.goto 418,43.49,85.45,0
.goto 418,44.42,87.40,0
.goto 418,47.74,87.01,0
.goto 418,48.64,87.54,0
.goto 418,50.20,86.64,0
.goto 418,51.12,86.50,0
.goto 418,51.76,84.55,0
.goto 418,49.38,84.88,0
+1
step << Horde
#completewith UngaFishGetter
#hidewindow
#loop
.goto 418,43.49,85.45,40,0
.goto 418,42.377,86.719,25,0
.goto 418,44.42,87.40,40,0
.goto 418,47.74,87.01,40,0
.goto 418,48.64,87.54,40,0
.goto 418,50.20,86.64,40,0
.goto 418,51.12,86.50,40,0
.goto 418,51.76,84.55,40,0
.goto 418,49.38,84.88,40,0
.goto 418,43.49,85.45,0
.goto 418,42.38,86.72,0
.goto 418,44.42,87.40,0
.goto 418,47.74,87.01,0
.goto 418,48.64,87.54,0
.goto 418,50.20,86.64,0
.goto 418,51.12,86.50,0
.goto 418,51.76,84.55,0
.goto 418,49.38,84.88,0
+1
step
#completewith Buried Hozen Treasure
>>Kill |cRXP_ENEMY_Unga Fish-Getter.|r Loot them for the quest |cRXP_LOOT_Buried Hozen Treasure|r
.complete 30672,1 
.collect 80827,1,30675,0
.accept 30675 >>Accept Buried Hozen Treasure
.mob Unga Fish-getter
step
#completewith Buried Hozen Treasure
>>Interact with |cRXP_PICK_Flailing Carp|r
.complete 30674,1 
.target Flailing Carp
step
#label Buried Hozen Treasure
>>Click on |cRXP_PICK_Dirt.|r
.complete 30675,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Unga Fish-Getter.|r Loot them for the quest |cRXP_LOOT_Buried Hozen Treasure|r
.complete 30672,1 
.mob unga fish-getter
step
>>Interact with |cRXP_PICK_Flailing Carp|r
.complete 30674,1 
.target Flailing Carp
step
#label UngaFishGetter
>>Kill |cRXP_ENEMY_Unga Fish-Getter.|r Loot them for the quest |cRXP_LOOT_Buried Hozen Treasure|r
.complete 30672,1 
.collect 80827,1,30675,0
.accept 30675 >>Accept Buried Hozen Treasure
.mob unga fish-getter
step
>>Click on the quest pop-up to turn in the quest
.turnin 30674 >>Turn in Balance Without Violence
.turnin 30675 >>Turn in Buried Hozen Treasure
step
.goto 418,51.52,76.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
.turnin 30672 >>Turn in Balance
.target Jay Cloudfall
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3) Krasarang Wilds Ik'thik
step << Alliance
#completewith Ik'thik Mantid
#hidewindow
#loop
.goto 418,14.46,36.69,30,0
.goto 418,14.23,35.67,30,0
.goto 418,15.45,35.45,30,0
.goto 418,15.88,34.63,30,0
.goto 418,16.98,35.28,30,0
.goto 418,17.36,36.67,30,0
.goto 418,15.70,37.35,30,0
.goto 418,14.46,36.69,0
.goto 418,14.23,35.67,0
.goto 418,15.45,35.45,0
.goto 418,15.88,34.63,0
.goto 418,16.98,35.28,0
.goto 418,17.36,36.67,0
.goto 418,15.70,37.35,0
+1
step << Horde
#completewith Ik'thik Mantid
#hidewindow
#loop
.goto 418,15.633,37.257,25,0
.goto 418,17.204,35.091,35,0
.goto 418,15.527,34.668,25,0
.goto 418,11.823,37.577,35,0
.goto 418,13.210,37.820,25,0
.goto 418,14.136,41.437,35,0
.goto 418,15.633,37.257,0
.goto 418,17.204,35.091,0
.goto 418,15.527,34.668,0
.goto 418,11.823,37.577,0
.goto 418,13.210,37.820,0
.goto 418,14.136,41.437,0
+1
step
.convertquest 30361,30175 << Horde
#completewith next
>>Kill |cRXP_ENEMY_Ik'thik Mantid|r
.complete 30361,1 
.mob Ik'thik Precursor
.mob Ik'thik Vanguard
step
.convertquest 30357,30164 << Horde
>>Interact with |cRXP_FRIENDLY_Stoneplow Envoy|r
.complete 30357,1 
.target Stoneplow Envoy
step
#label Ik'thik Mantid
>>Kill |cRXP_ENEMY_Ik'thik Mantid|r
.complete 30361,1 
.mob Ik'thik Precursor
.mob Ik'thik Vanguard
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3) Krasarang Wilds Korjan
step << Alliance
#completewith Korjan Reclaimer
#hidewindow
#loop
.goto 418,26.71,37.67,25,0
.goto 418,27.51,39.57,25,0
.goto 418,26.35,39.35,25,0
.goto 418,25.45,39.14,25,0
.goto 418,26.75,42.26,25,0
.goto 418,25.13,42.55,25,0
.goto 418,23.64,41.59,25,0
.goto 418,24.14,39.28,25,0
.goto 418,23.44,37.83,25,0
.goto 418,24.84,38.08,25,0
.goto 418,26.71,37.67,0
.goto 418,27.51,39.57,0
.goto 418,26.35,39.35,0
.goto 418,25.45,39.14,0
.goto 418,26.75,42.26,0
.goto 418,25.13,42.55,0
.goto 418,23.64,41.59,0
.goto 418,24.14,39.28,0
.goto 418,23.44,37.83,0
.goto 418,24.84,38.08,0
+1
step << Horde
#completewith Korjan Reclaimer
#hidewindow
#loop
.goto 418,26.75,42.26,25,0
.goto 418,25.13,42.55,25,0
.goto 418,23.64,41.59,25,0
.goto 418,24.14,39.28,25,0
.goto 418,23.44,37.83,25,0
.goto 418,24.84,38.08,25,0
.goto 418,26.71,37.67,25,0
.goto 418,27.51,39.57,25,0
.goto 418,26.35,39.35,25,0
.goto 418,25.45,39.14,25,0
.goto 418,26.75,42.26,0
.goto 418,25.13,42.55,0
.goto 418,23.64,41.59,0
.goto 418,24.14,39.28,0
.goto 418,23.44,37.83,0
.goto 418,24.84,38.08,0
.goto 418,26.71,37.67,0
.goto 418,27.51,39.57,0
.goto 418,26.35,39.35,0
.goto 418,25.45,39.14,0
+1
step
.convertquest 30356,30229 << Horde
#completewith Captives Freed
>>Kill |cRXP_ENEMY_Korjan Reclaimer|r
.complete 30356,1 
.mob Korjan Reclaimer
.mob Korjan Slavemaster
.mob Korjan Collector
step
.convertquest 30355,30230 << Horde
#completewith Captives Freed
>>Click on |cRXP_PICK_Mogu Artifacts|r
.complete 30355,1 
step
.convertquest 30354,30163 << Horde
#label Captives Freed
>>Interact with |cRXP_FRIENDLY_Captive Sentinels|r
.complete 30354,1 
.target Captive Sentinel
step
#completewith next
>>Kill |cRXP_ENEMY_Korjan Reclaimer|r
.complete 30356,1 
.mob korjan reclaimer
.mob Korjan Slavemaster
.mob Korjan Collector
step
>>Click on |cRXP_PICK_Mogu Artifacts|r
.complete 30355,1 
step
#label Korjan Reclaimer
>>Kill |cRXP_ENEMY_Korjan Reclaimer|r
.complete 30356,1 
.mob korjan reclaimer
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 4) Valley of the Four Winds 1
#displayname Chapter 2 - Valley of the Four Winds Pt. 1
#title Valley of the Four Winds 1
#next 5) Krasarang Wilds 1
step
.goto 376,85.94,22.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.accept 29907 >>Accept Chen and Li Li
.timer 15,Roleplay Duration
.target Chen Stormstout
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nan Thunderfoot|r
.goto 376,83.76,20.20
.home >>Set your Hearthstone to Thunderfoot Inn
.target Nan Thunderfoot
step
>>Wait for the roleplay
.goto 376,83.70,21.02
.complete 29907,1 
step
.goto 376,83.70,21.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pang Thunderfoot|r
.turnin 29907 >>Turn in Chen and Li Li
.target Pang Thunderfoot
.accept 29908 >>Accept A Seemingly Endless Nuisance
step
.goto 376,82.70,21.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muno the Farmhand|r
.accept 29877 >>Accept A Poor Grasp of the Basics
.target Muno the Farmhand
step
#completewith BuriedFarmEquipment
#hidewindow
#loop
.goto 376,82.017,18.318,25,0
.goto 376,78.302,23.206,25,0
.goto 376,79.416,26.042,25,0
.goto 376,82.792,23.050,25,0
.goto 376,84.614,13.816,25,0
.goto 376,82.017,18.318,0
.goto 376,78.302,23.206,0
.goto 376,79.416,26.042,0
.goto 376,82.792,23.050,0
.goto 376,84.614,13.816,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Virmen Pesterer|r and |cRXP_ENEMY_Large virmen|r
.complete 29908,2 
.complete 29908,1 
.mob Virmen Pesterling
.mob Snagtooth Virmen
.mob Snagtooth Tool-Grabber
.mob Snagtooth Troublemaker
step
>>|cRXP_WARN_Click on the|r |cRXP_PICK_Rake Trees|r
.complete 29877,1 
step
#label BuriedFarmEquipment
>>Kill |cRXP_ENEMY_Virmen Pesterer|r and |cRXP_ENEMY_Large virmen|r
.complete 29908,2 
.complete 29908,1 
.mob Virmen Pesterling
.mob Snagtooth Virmen
.mob Snagtooth Tool-Grabber
.mob Snagtooth Troublemaker
step
.goto 376,82.70,21.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muno the Farmhand|r
.turnin 29877 >>Turn in A Poor Grasp of the Basics
.target Muno the Farmhand
step
.goto 376,83.69,21.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pang Thunderfoot|r
.turnin 29908 >>Turn in A Seemingly Endless Nuisance
.target Pang Thunderfoot
.accept 29909 >>Accept Low Turnip Turnout
step
.goto 376,81.60,25.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ang Thunderfoot|r
.turnin 29909 >>Turn in Low Turnip Turnout
.accept 29940 >>Accept Taking a Crop
.target Ang Thunderfoot
step
#loop
.goto 376,81.877,25.752,8,0
.goto 376,81.925,26.512,8,0
.goto 376,82.399,26.466,8,0
.goto 376,82.585,26.275,8,0
.goto 376,82.676,25.538,8,0
.goto 376,82.190,25.828,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ana Thunderfoot|r
.accept 29910 >>Accept Rampaging Rodents
.target Ana Thunderfoot
step
#completewith next
>>|cRXP_WARN_Click on|r |cRXP_ENEMY_Plump Marmots|r
.complete 29910,1 
.mob Plump Marmot
step
>>Click on the |cRXP_FRIENDLY_Marmot Holes|r. |cRXP_WARN_|cRXP_ENEMY_Plump Marmots|r can interrupt your casts|r
.goto 376,82.364,25.759
.complete 29910,2 
step
>>|cRXP_WARN_Click on|r |cRXP_FRIENDLY_Plump Marmots|r
.goto 376,82.364,25.759
.complete 29910,1 
.mob Plump Marmot
step
#completewith next
#title Enter Cave
.goto 376,86.478,28.052,8 >>|cRXP_WARN_Enter the cave|r
step
>>|cRXP_WARN_Pick up the|r |cRXP_PICK_Stolen Turnips|r
.goto 376,85.19,27.17
.complete 29940,1 
stepw
#completewith next
#title Leave Cave
.goto 376,86.478,28.052,8 >>|cRXP_WARN_Leave the cave|r
step
>>|cRXP_WARN_Pick up the|r |cRXP_PICK_Stolen Watermelon|r
.goto 376,85.301,32.329
.complete 29940,2 
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 5) Krasarang Wilds 1
#displayname Chapter 3 - Krasarang Wilds Pt. 1
#title Krasarang Wilds 1
#next 6) Valley of the Four Winds 2
step
.goto 418,76.22,7.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.accept 30079 >>Accept What's Eating Zhu's Watch?
.target Ken-Ken
step
.goto 418,75.84,7.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
.complete 30079,4 
.accept 30080 >>Accept Finding Yi-Mo
.target Mei Barrelbottom
step
.goto 418,75.48,9.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yun|r |cRXP_WARN_inside the hut.|r
.complete 30079,3 
.target Yun
step
.goto 418,76.69,8.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Despondent Warden of Zhu|r
.complete 30079,1 
.skipgossip
.target Despondent Warden of Zhu
step
.goto 418,77.48,8.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunni|r
.complete 30079,2 
.skipgossip
.target Sunni
step
.isOnQuest 30079
.goto 418,77.26,8.69,5 >> Leave the hut
step
.goto 418,81.31,6.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yi-Mo Longbrow|r
.complete 30080,1 
.skipgossip
.target Yi-Mo Longbrow
step
.goto 418,81.31,6.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yi-Mo Longbrow|r
.turnin 30080 >>Turn in Finding Yi-Mo
.accept 30082 >>Accept Cheer Up, Yi-Mo
.target Yi-Mo Longbrow
step
.isOnQuest 30082
.goto 418,81.31,6.85
.gossipoption 40648 >>Talk to |cRXP_FRIENDLY_Yi-Mo Longbrow|r
.skipgossip 58376,1
.timer 60,RP
step
.isOnQuest 30082
.goto 418,81.31,6.83
.cast 108175 >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(1)|r
step
.isOnQuest 30082
.goto 418,80.98,6.88
.cast 108175 >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(2)|r
step
.isOnQuest 30082
.goto 418,80.65,6.95
.cast 108175 >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(3)|r
step
.isOnQuest 30082
.goto 418,80.33,7
.cast 108175 >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(4)|r
step
.isOnQuest 30082
.goto 418,80.01,7.08
.cast 108175 >>Kill |cRXP_ENEMY_Thunderbird|r then interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(5)|r
.mob Thunderbird
step
.isOnQuest 30082
.goto 418,79.68,7.14
.cast 108175 >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(6)|r
step
.isOnQuest 30082
.goto 418,79.35,7.2
.cast 108175 >>Kill |cRXP_ENEMY_Thunderbird|r then interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(7)|r
.mob Thunderbird
step
.isOnQuest 30082
.goto 418,79.02,7.28
.cast 108175 >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(8)|r
step
.isOnQuest 30082
.goto 418,78.69,7.34
.cast 108175 >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(9)|r
step
.isOnQuest 30082
.goto 418,78.37,7.41
.cast 108175 >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(10)|r
step
.isOnQuest 30082
.goto 418,78.04,7.49
.cast 108175 >>Kill |cRXP_ENEMY_Thunderbird|r then interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(11)|r
.mob Thunderbird
step
.isOnQuest 30082
.goto 418,77.71,7.56
.cast 108175 >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(12)|r
step
.isOnQuest 30082
.goto 418,77.38,7.64
.cast 108175 >>Kill |cRXP_ENEMY_Thunderbird|r then interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(13)|r
.mob Thunderbird
step
.isOnQuest 30082
.goto 418,77.07,7.73
.cast 108175 >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r |cRXP_WARN_(14)|r
step
.goto 418,75.84,7.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
.turnin 30082 >>Turn in Cheer Up, Yi-Mo
.target Mei Barrelbottom
.accept 30091 >>Accept Tears of Pandaria
step
.goto 418,76.20,7.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.turnin 30079 >>Turn in What's Eating Zhu's Watch?
.accept 30081 >>Accept Materia Medica
.target Ken-Ken
step
#completewith SaltyCore
#hidewindow
#loop
.goto 418,75.80,11.14,40,0
.goto 418,75.22,11.85,40,0
.goto 418,73.71,11.21,35,0
.goto 418,72.47,12.42,35,0
.goto 418,71.21,10.30,35,0
+1
step
#completewith Chunk of Honeycomb
>>Kill |cRXP_ENEMY_Weeping Horror.|r Loot them for |cRXP_LOOT_Salty Core|r
.complete 30091,1 
.complete 30081,1 
.mob weeping horror
step
#completewith Chunk of Honeycomb
>>Click on |cRXP_PICK_Slick Mudfish|r
.complete 30081,2 
step
#label Chunk of Honeycomb
.goto 418,75.80,11.14,0
.goto 418,75.22,11.85,0
.goto 418,73.71,11.21,0
.goto 418,72.47,12.42,0
.goto 418,71.21,10.30,0
>>Click on |cRXP_PICK_Rain-Slick Honeycombs|r
.complete 30081,3 
step
#completewith next
>>Kill |cRXP_ENEMY_Weeping Horror.|r Loot them for |cRXP_LOOT_Salty Core|r
.complete 30091,1 
.complete 30081,1 
.mob weeping horror
step
>>Click on |cRXP_PICK_Slick Mudfish|r
.complete 30081,2 
step
#label SaltyCore
>>Kill |cRXP_ENEMY_Weeping Horror.|r Loot them for |cRXP_LOOT_Salty Core|r
.complete 30091,1 
.complete 30081,1 
.mob weeping horror
step
.goto 418,75.84,7.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
.turnin 30091 >>Turn in Tears of Pandaria
.target Mei Barrelbottom
.accept 30083 >>Accept Securing the Province
.accept 30084 >>Accept Borderlands
step
.goto 418,76.22,7.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.turnin 30081 >>Turn in Materia Medica
.accept 30088 >>Accept Why So Serious?
.target Ken-Ken
step
#completewith next
>>Kill |cRXP_ENEMY_Wildscale Saurok|r
.complete 30083,1 
.mob Wildscale Herbalist
step
.isOnQuest 30083
.goto 376,77.23,57.34,10 >> Enter the Cave
step
#completewith Leave the Cave
>>Kill |cRXP_ENEMY_Wildscale Saurok|r
.complete 30083,1 
.mob Wildscale Herbalist
step
.isOnQuest 30088
.goto 376,75.02,55.26
.cast 3365 >> Click on the Stone Tablet
step
.goto 376,76.63,56.72,20,0
.goto 376,76.51,55.44,20,0
.goto 376,75.71,56.69,20,0
.goto 376,73.88,56.41
>>Click on |cRXP_PICK_Jar of Pigment|r
.complete 30088,2 
step
#label Leave the Cave
#title Leave Cave
.isOnQuest 30088
.goto 376,76.26,55.52,20,0
.goto 376,77.04,57.27,20 >>Leave the Cave
step
#loop
.goto 418,71.27,9.11,20,0
.goto 376,77.34,58.65,20,0
.goto 376,76.67,56.99,20,0
.goto 376,76.55,55.41,20,0
.goto 376,76.04,55.79,20,0
.goto 376,74.15,56.29,20,0
.goto 418,71.27,9.11,0
.goto 376,77.34,58.65,0
.goto 376,76.67,56.99,0
.goto 376,76.55,55.41,0
.goto 376,76.04,55.79,0
.goto 376,74.15,56.29,0
>>Kill |cRXP_ENEMY_Wildscale Saurok|r
.complete 30083,1 
.mob Wildscale Herbalist
step
#completewith Memorial Flame of Po
>>Kill |cRXP_ENEMY_Krasari Stalker.|r Loot them for |T134298:0|t[|cRXP_LOOT_Huge Panther Fang|r].
.complete 30088,1 
.mob Krasari Stalker
step
.goto 418,71.27,17.46
>>Use |T135432:0|t[Flame of Zhu's Watch] near the |cRXP_WARN_Memorial.|r
.complete 30084,3 
.use 78928
step
.goto 418,72.77,18.08
>>Use |T135432:0|t[Flame of Zhu's Watch] near the |cRXP_WARN_Memorial.|r
.complete 30084,1 
.use 78928
step
#label Memorial Flame of Po
.goto 418,73.87,16.85
>>Use |T135432:0|t[Flame of Zhu's Watch] near the |cRXP_WARN_Memorial.|r
.complete 30084,2 
.use 78928
step
#loop
.goto 418,74.05,15.35,20,0
.goto 418,74.06,18.86,20,0
.goto 418,70.95,18.69,20,0
.goto 418,70.06,16.99,20,0
.goto 418,74.05,15.35,0
.goto 418,74.06,18.86,0
.goto 418,70.95,18.69,0
.goto 418,70.06,16.99,0
>>Kill |cRXP_ENEMY_Krasari Stalker.|r Loot them for |cRXP_LOOT_Huge Panther Fang.|r
.complete 30088,1 
.mob Krasari Stalker
step
.goto 418,75.83,7.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
.turnin 30083 >>Turn in Securing the Province
.target Mei Barrelbottom
.turnin 30084 >>Turn in Borderlands
step
.goto 418,76.21,7.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.turnin 30088 >>Turn in Why So Serious?
.target Ken-Ken
.accept 30089 >>Accept Apply Directly to the Forehead
step
#loop
.goto 418,76.51,8.20,20,0
.goto 418,76.39,8.46,20,0
.goto 418,76.69,8.86,20,0
.goto 418,76.83,9.33,20,0
.goto 418,76.13,9.00,20,0
.goto 418,75.95,8.40,20,0
.goto 418,75.94,7.79,20,0
.goto 418,77.29,8.31,20,0
.goto 418,77.47,9.84,20,0
.goto 418,75.44,8.30,20,0
.goto 418,76.51,8.20,0
.goto 418,76.39,8.46,0
.goto 418,76.69,8.86,0
.goto 418,76.83,9.33,0
.goto 418,76.13,9.00,0
.goto 418,75.95,8.40,0
.goto 418,75.94,7.79,0
.goto 418,77.29,8.31,0
.goto 418,77.47,9.84,0
.goto 418,75.44,8.30,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Despondents Wardens of Zhu|r then kill |cRXP_ENEMY_Manifestation of Despair.|r
.complete 30089,1 
.target Despondent Warden of Zhu
.mob Manifestation of Despair
step
.goto 418,76.22,7.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.turnin 30089 >>Turn in Apply Directly to the Forehead
.target Ken-Ken
.accept 30090 >>Accept Zhu's Despair
step
#loop
.goto 418,75.65,8.73,40,0
.goto 418,77.24,9.52,40,0
.goto 418,77.07,8.21,40,0
.goto 418,75.65,8.73,0
.goto 418,77.24,9.52,0
.goto 418,77.07,8.21,0
>>Kill |cRXP_ENEMY_Essence of Despairs|r
.complete 30090,1 
.mob essence of despair
step
.goto 418,76.49,8.77
>>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow.|r. Kill the |cRXP_ENEMY_Quintessence of Despair|r
.complete 30090,2 
.target Yi-Mo Longbrow
.target Quintessence of Despair
step << Horde
#completewith next
.logout 19 >>Logout to skip RP
step
.goto 418,76.22,7.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.turnin 30090 >>Turn in Zhu's Despair
.target Ken-Ken
step
.goto 418,75.85,7.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
.accept 30178 >>Accept Into the Wilds << Alliance
.accept 30133 >>Accept Into the Wilds << Horde
.target Mei Barrelbottom
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 6) Valley of the Four Winds 2
#displayname Chapter 4 - Valley of the Four Winds Pt. 2
#title Valley of the Four Winds 2
#next 7) Krasarang Wilds 2
step
#completewith next
.cooldown item,6948,>0,1
.hs >>Hearth to Thunderfoot Inn
step
#loop
.goto 376,81.877,25.752,8,0
.goto 376,81.925,26.512,8,0
.goto 376,82.399,26.466,8,0
.goto 376,82.585,26.275,8,0
.goto 376,82.676,25.538,8,0
.goto 376,82.190,25.828,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ana Thunderfoot|r
.turnin 29910 >>Turn in Rampaging Rodents
.target Ana Thunderfoot
step
.goto 376,81.59,25.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ang Thunderfoot|r
.turnin 29940 >>Turn in Taking a Crop
.target Ang Thunderfoot
.accept 29911 >>Accept Practically Perfect Produce
step
.goto 376,83.70,21.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pang Thunderfoot|r
.turnin 29911 >>Turn in Practically Perfect Produce
.target Pang Thunderfoot
.accept 29912 >>Accept The Fabulous Miss Fanny
step
>>Pick up |T645346:0|t[|cRXP_PICK_Ang's Giant Pink Turnip|r], |T645349:0|t[|cRXP_PICK_Ang's Summer Watermelon|r], and |T461809:0|t[|cRXP_PICK_Pang's Extra-Spicy Tofu]
.collect 75259,1,29912,1
.goto 376,84.313,21.945
.collect 75258,1,29912,1
.goto 376,84.152,22.075
.collect 75256,1,29912,1
.goto 376,83.997,22.060
step
.goto 376,82.99,21.42
.gossipoption 40435 >>Talk to |cRXP_FRIENDLY_Miss Fanny|r |cRXP_WARN_1|r
.timer 2,RP
step
.goto 376,82.99,21.42
.gossipoption 40431 >>Talk to |cRXP_FRIENDLY_Miss Fanny|r |cRXP_WARN_2|r
.timer 2,RP
step
.goto 376,82.99,21.42
.gossipoption 40430 >>Talk to |cRXP_FRIENDLY_Miss Fanny|r |cRXP_WARN_3|r
step
.convertquest 29875,29874 <<Alliance
.goto 376,84.09,21.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiao|r
.accept 30086 >>Accept The Search for the Hidden Master
.disablecheckbox
.turnin 30086 >>Turn in The Search for the Hidden Master
.disablecheckbox
.accept 29871 >>Accept Clever Ashyo
.accept 29872 >>Accept Lin Tenderpaw
.accept 29875 >>Accept Kang Bramblestaff
.target Xiao
step
.goto 376,75.23,24.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liang Thunderfoot|r
.turnin 29912 >>Turn in The Fabulous Miss Fanny
.target Liang Thunderfoot
.accept 29913 >>Accept The Meat They'll Eat
.accept 29914 >>Accept Back to the Sty
step
#completewith Ling
>>Kill |cRXP_ENEMY_Adolescent Mushans|r. Loot them for the |T237348:0|t[|cRXP_LOOT_Mushan Shoulder Steaks|r]
.complete 29913,1 
.mob Adolescent Mushan
step
>>Pick up |cRXP_FRIENDLY_Jian|r
.goto 376,70.185,24.146
.complete 29914,1 
.target Jian
step
#loop
.goto 376,70.832,27.857,25,0
.goto 376,69.738,28.920,20,0
.goto 376,70.832,27.857,0
.goto 376,69.738,28.920,0
>>Pick up |cRXP_FRIENDLY_Smelly|r
.complete 29914,3 
.target Smelly
step
#completewith next
>>Kill |cRXP_ENEMY_Wyrmhorn Turtles|r. Loot them for the |T237349:0|t[|cRXP_LOOT_Turtle Meat Scraps|r]
.complete 29913,2 
.mob Wyrmhorn Turtle
step
#label Ling
#loop
.goto 376,66.654,28.408,10,0
.goto 376,67.082,30.280,10,0
.goto 376,66.654,28.408,0
.goto 376,67.082,30.280,0
>>Pick up |cRXP_FRIENDLY_Ling|r
.complete 29914,2 
.target Ling
step
>>Kill |cRXP_ENEMY_Wyrmhorn Turtles|r. Loot them for the |T237349:0|t[|cRXP_LOOT_Turtle Meat Scraps|r]
.complete 29913,2 
.goto 376,67.431,29.011
.goto 376,66.004,32.550,0
.mob Wyrmhorn Turtle
step
#loop
.goto 376,71.818,32.955,25,0
.goto 376,72.835,25.457,25,0
.goto 376,68.621,26.309,25,0
.goto 376,67.378,32.271,30,0
.goto 376,71.818,32.955,0
.goto 376,72.835,25.457,0
.goto 376,68.621,26.309,0
.goto 376,67.378,32.271,0
>>Kill |cRXP_ENEMY_Adolescent Mushans|r. Loot them for the |T237348:0|t[|cRXP_LOOT_Mushan Shoulder Steaks|r]
.complete 29913,1 
.mob Adolescent Mushan
step
.goto 376,75.22,24.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liang Thunderfoot|r
.turnin 29913 >>Turn in The Meat They'll Eat
.turnin 29914 >>Turn in Back to the Sty
.accept 29915 >>Accept A Neighbor's Duty
.target Liang Thunderfoot
step
.goto 376,78.11,32.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis the Shepherd Boy|r
.turnin 29915 >>Turn in A Neighbor's Duty
.target Francis the Shepherd Boy
.accept 29916 >>Accept Piercing Talons and Slavering Jaws
.accept 29917 >>Accept Lupello
step
#completewith Lupello
>>Kill |cRXP_ENEMY_Thieving Wolves|r
.complete 29916,2 
.mob Thieving Wolf
step
#completewith Lupello
>>Kill |cRXP_ENEMY_Thieving Plainshawks|r
.complete 29916,1 
.mob Thieving Plainshawk
step
#label Lupello
.goto 376,81.220,40.110,12,0
.goto 376,82.351,38.481,12,0
.goto 376,82.002,39.723
>>Kill |cRXP_ENEMY_Lupello|r
.complete 29917,1 
.mob Lupello
step
#completewith ThievingWolf
#hidewindow
#loop
.goto 376,83.421,33.525,25,0
.goto 376,81.487,33.047,25,0
.goto 376,75.694,38.619,25,0
.goto 376,83.421,33.525,0
.goto 376,81.487,33.047,0
.goto 376,75.694,38.619,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Thieving Wolves|r
.complete 29916,2 
.mob Thieving Wolf
step
>>Kill |cRXP_ENEMY_Thieving Plainshawks|r
.complete 29916,1 
.mob Thieving Plainshawk
step
#label ThievingWolf
>>Kill |cRXP_ENEMY_Thieving Wolves|r
.complete 29916,2 
.mob Thieving Wolf
step
.goto 376,78.13,32.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis the Shepherd Boy|r
.turnin 29916 >>Turn in Piercing Talons and Slavering Jaws
.turnin 29917 >>Turn in Lupello
.timer 12,Roleplay Duration
.target Francis the Shepherd Boy
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shang Thunderfoot|r
.accept 29918 >>Accept A Lesson in Bravery
.goto 376,78.188,32.806
.target Shang Thunderfoot
step
#loop
.goto 376,83.334,27.036,45,0
.goto 376,74.878,37.148,45,0
.goto 376,77.079,27.024,45,0
.goto 376,83.334,27.036,0
.goto 376,74.878,37.148,0
.goto 376,77.079,27.024,0
>>|cRXP_WARN_Look into the sky. Use the|r |T134326:0|t[Rancher's Lariat] |cRXP_WARN_on a|r |cRXP_ENEMY_Great White Plainshawk|r
>>Kill |cRXP_ENEMY_Great White Plainshawk|r
.use 75208
.complete 29918,1 
.timer 6,RP
.mob Great White Plainshawk
step
#loop
.goto 376,74.69,34.6,8,0
.goto 376,74.41,34.5,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shang Thunderfoot|r
.turnin 29918 >>Turn in A Lesson in Bravery
.target Shang Thunderfoot
step
.goto 376,75.28,35.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.accept 29919 >>Accept Great Minds Drink Alike
.target Chen Stormstout
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
>>|cRXP_WARN_Follow|r |cRXP_FRIENDLY_Chen Stormstout|r
*|cRXP_WARN_Open your boxes,euip new gear, combine your gems, and clean up your inventory|r
.goto 376,68.72,43.52
.skipgossip 1
.timer 147,Roleplay Duration
.complete 29919,1 
.target Chen Stormstout
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r, |cRXP_FRIENDLY_Chen Stormstout|r, and |cRXP_FRIENDLY_Li Li|r
.turnin 29919 >>Turn in Great Minds Drink Alike
.goto 376,68.72,43.12
.target +Mudmug
.accept 29944 >>Accept Leaders Among Breeders
.goto 376,68.876,43.155
.target +Chen Stormstout
.accept 29945 >>Accept Yellow and Red Make Orange
.goto 376,68.881,43.308
.target +Li Li
step
#completewith Frenzyhop
>>Pick up the |T133938:0|t[Meadow Marigold]
.complete 29945,1 
step
#completewith Frenzyhop
>>Kill |cRXP_ENEMY_Tawnyhide Stags|r, |cRXP_ENEMY_Tawnyhide Does|r, and |cRXP_ENEMY_Tawnyhide Fawns|r. Loot them for the |T134830:0|t[Vial of Animal Blood]
.complete 29945,2 
.mob Tawnyhide Stag
.mob Tawnyhide Doe
.mob Tawnyhide Fawn
step
.goto 376,68.55,38.24
>>Kill |cRXP_ENEMY_Aiyu the Skillet|r
.complete 29944,1 
.mob Aiyu the Skillet
step
.goto 376,66.685,38.168
.line 376,66.063,37.171,66.534,37.736,66.690,38.577,66.195,39.540
>>Kill |cRXP_ENEMY_Jinanya the Clawblade|r
.complete 29944,2 
.mob Jinanya the Clawblade
step
#label Frenzyhop
.goto 376,64.57,40.73
>>Kill |cRXP_ENEMY_Frenzyhop|r
.complete 29944,3 
.mob Frenzyhop
step
#completewith next
>>Kill the |cRXP_ENEMY_deers|r, |cRXP_ENEMY_Mushan Nomads|r, and |cRXP_ENEMY_Longfang Howlers|r. Loot them for the |T134830:0|t[Vial of Animal Blood]
.complete 29945,2 
.mob Tawnyhide Stag
.mob Tawnyhide Doe
.mob Tawnyhide Fawn
.mob Mushan Nomads
.mob Longfang Howler
step
#loop
.goto 376,65.688,43.014,28,0
.goto 376,70.109,49.136,20,0
.goto 376,71.492,47.352,20,0
.goto 376,65.688,43.014,0
.goto 376,70.109,49.136,0
.goto 376,71.492,47.352,0
>>Pick up the |T133938:0|t[Meadow Marigold]
.complete 29945,1 
step
#loop
.goto 376,72.318,44.864,35,0
.goto 376,69.969,35.925,45,0
.goto 376,63.691,38.550,40,0
.goto 376,66.756,48.196,35,0
.goto 376,71.100,48.800,35,0
.goto 376,72.318,44.864,0
.goto 376,69.969,35.925,0
.goto 376,63.691,38.550,0
.goto 376,66.756,48.196,0
.goto 376,71.100,48.800,0
>>Kill the |cRXP_ENEMY_deers|r, |cRXP_ENEMY_Mushan Nomads|r, and |cRXP_ENEMY_Longfang Howlers|r. Loot them for the |T134830:0|t[Vial of Animal Blood]
.complete 29945,2 
.mob Tawnyhide Stag
.mob Tawnyhide Doe
.mob Tawnyhide Fawn
.mob Mushan Nomads
.mob Longfang Howler
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r, |cRXP_FRIENDLY_Chen Stormstout|r, and |cRXP_FRIENDLY_Mudmug|r
.turnin 29945 >>Turn in Yellow and Red Make Orange
.accept 29947 >>Accept Crouching Carrot, Hidden Turnip
.goto 376,68.88,43.31
.target +Li Li
.turnin 29944 >>Turn in Leaders Among Breeders
.accept 29946 >>Accept The Warren-Mother
.goto 376,68.878,43.140
.target +Chen Stormstout
.accept 29948 >>Accept Thieves to the Core
.goto 376,68.713,43.113
.target +Mudmug
step
#completewith Chufa
>>|cRXP_WARN_Don't kill the |cRXP_ENEMY_Twitchheel Hoarder|r.|r
>>|cRXP_WARN_Use the|r |T133960:0|t[Orange-Painted Turnip] |cRXP_WARN_to throw the turnip near |cRXP_ENEMY_Twitchheel Hoarder|r.|r Wait until they have counted towards the quest before you throw the next one.
.complete 29947,1 
.use 76370
.mob Twitchheel Hoarder
step
#completewith Chufa
>>Pick up the |cRXP_PICK_Stolen Sack of Hops|r inside the cave
.complete 29948,1 
step
#completewith next
.goto 376,69.087,39.689,8 >>Enter the cave
step
#label Chufa
.goto 376,68.328,36.743,12,0
.goto 376,67.89,37.46
>>Kill |cRXP_ENEMY_Chufa|r |cRXP_WARN_inside the cave|r
.complete 29946,1 
.mob Chufa
step
#completewith next
>>|cRXP_WARN_Don't kill the |cRXP_ENEMY_Twitchheel Hoarder|r.|r
>>|cRXP_WARN_Use the|r T133960:0|t[Orange-Painted Turnip] |cRXP_WARN_to throw the turnip near |cRXP_ENEMY_Twitchheel Hoarder|r.|r Wait until they have counted towards the quest before you throw the next one.
.complete 29947,1 
.mob Twitchheel Hoarder
step
#loop
.goto 376,66.700,37.985,15,0
.goto 376,68.863,36.211,15,0
.goto 376,69.472,34.920,15,0
.goto 376,68.909,36.655,15,0
.goto 376,66.700,37.985,0
.goto 376,68.863,36.211,0
.goto 376,69.472,34.920,0
.goto 376,68.909,36.655,0
>>Pick up the |cRXP_PICK_Stolen Sack of Hops|r
.complete 29948,1 
step
#loop
.goto 376,65,141,38.141,30,0
.goto 376,69.133,40.985,30,0
.goto 376,68.399,33.112,30,0
.goto 376,65,141,38.141,0
.goto 376,69.133,40.985,0
.goto 376,68.399,33.112,0
>>|cRXP_WARN_Don't kill the |cRXP_ENEMY_Twitchheel Hoarder|r.|r
>>|cRXP_WARN_Use the|r T133960:0|t[Orange-Painted Turnip] |cRXP_WARN_to throw the turnip near |cRXP_ENEMY_Twitchheel Hoarder|r.|r Wait until they have counted towards the quest before you throw the next one.
.use 76370
.complete 29947,1 
.mob Twitchheel Hoarder
step
#completewith next
.goto 376,65.9,38.34,20 >> Leave the cave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r, |cRXP_FRIENDLY_Li Li|r, and |cRXP_FRIENDLY_Chen Stormstout|r
.turnin 29948 >>Turn in Thieves to the Core
.goto 376,68.71,43.12
.target +Mudmug
.turnin 29947 >>Turn in Crouching Carrot, Hidden Turnip
.goto 376,68.88,43.31
.target +Li Li
.turnin 29946 >>Turn in The Warren-Mother
.accept 29949 >>Accept Legacy
.timer 6,Roleplay Duration
.goto 376,68.881,43.144
.target +Chen Stormstout
step
.goto 376,68.77,43.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r
.turnin 29949 >>Turn in Legacy
.accept 29950 >>Accept Li Li's Day Off
.target Li Li
step
>>If |cRXP_FRIENDLY_Li Li|r has despawned |cRXP_WARN_then use the|r |T413582:0|t[Li Li's Wishing-Stone] |cRXP_WARN_to resummon her near the camp|r
.goto 376,60.75,35.78
.use 763650
.complete 29950,2 
step << Alliance
.achievement 6846,2 >>Click on the |cRXP_PICK_Scroll|r
.goto 418,30.55,38.59
step
.goto 376,61.23,34.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clever Ashyo|r
.turnin 29871 >>Turn in Clever Ashyo
.accept 29577 >>Accept Ashyo's Vision
.timer 47,Roleplay Duration
.target Clever Ashyo
step
.goto 376,60.61,33.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan|r
.accept 29757 >>Accept Bottletoads
.target Yan
step
.goto 376,59.82,27.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhang Yue|r
.accept 29600 >>Accept Snap Judgment
.target Zhang Yue
step
#completewith RazorbackSnapper
#hidewindow
#loop
.goto 376,64.425,27.991,22,0
.goto 376,64.613,24.968,22,0
.goto 376,62.705,24.250,22,0
.goto 376,61.884,26.753,22,0
.goto 376,64.425,27.991,0
.goto 376,64.613,24.968,0
.goto 376,62.705,24.250,0
.goto 376,61.884,26.753,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Razorback Snapper|r
.complete 29600,1 
.mob Razorback Snapper
step
>>|cRXP_WARN_Click on the |cRXP_PICK_Gurgling Toadspawn|r (water bubbles)|r
.complete 29757,1 
step
#label RazorbackSnapper
>>Kill |cRXP_ENEMY_Razorback Snapper|r
.complete 29600,1 
.mob Razorback Snapper
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clever Ashyo|r
.goto 376,59.250,27.563
.skipgossip 56113
.complete 29577,1 
step
.goto 376,59.83,27.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhang Yue|r
.turnin 29577 >>Turn in Ashyo's Vision
.turnin 29600 >>Turn in Snap Judgment
.accept 29581 >>Accept The Golden Dream
.target Zhang Yue
step
>>Kill |cRXP_ENEMY_Krosh|r. Loot him for the |T134964:0|t[Krosh's Back]
.goto 376,65.35,25.73
.collect 83767,1,29758
.accept 29758 >>Accept Guess Whose Back
.mob Krosh
step
>>Pick up the |cRXP_PICK_Dreamleaf Bush|r
.goto 376,65.24,26.28
.complete 29581,1 
step
.goto 376,60.62,33.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan|r
.turnin 29581 >>Turn in The Golden Dream
.turnin 29757 >>Turn in Bottletoads
.turnin 29758 >>Turn in Guess Whose Back
.target Yan
step
.goto 376,68.71,43.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r
.accept 29951 >>Accept Muddy Water
.target Mudmug
step
>>If |cRXP_FRIENDLY_Li Li|r has despawned |cRXP_WARN_then use the|r |T413582:0|t[Li Li's Wishing-Stone] |cRXP_WARN_to resummon her near the waterfall|r
.goto 376,75.45,43.00
.use 763650
.complete 29950,3 
step
#loop
.goto 376,74.343,48.529,25,0
.goto 376,72.876,55.405,25,0
.goto 376,69.513,56.363,25,0
.goto 376,67.209,60.601,30,0
.goto 376,69.113,61.606,25,0
.goto 376,74.343,48.529,0
.goto 376,72.876,55.405,0
.goto 376,69.513,56.363,0
.goto 376,67.209,60.601,0
.goto 376,69.113,61.606,0
>>|cRXP_WARN_Click on the |cRXP_PICK_Muddy Water|r until your vial is filled|r
.complete 29951,1 
step
.goto 376,63.56,58.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Journeyman Chu|r
.accept 30059 >>Accept The Moth Rebellion
.target Journeyman Chu
step
>>If |cRXP_FRIENDLY_Li Li|r has despawned |cRXP_WARN_then use the|r |T413582:0|t[Li Li's Wishing-Stone] |cRXP_WARN_to resummon her near the center of the village|r
.goto 376,62.55,59.11
.use 763650
.complete 29950,1 
step
.goto 376,62.67,59.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silkmaster Tsai|r
.accept 30072 >>Accept Where Silk Comes From
.target Silkmaster Tsai
step
>>|cRXP_WARN_Click on the|r |cRXP_PICK_Mulberry Barrel|r
.goto 376,61.13,56.73
.complete 30072,1 
step
>>Click on the |cRXP_FRIENDLY_Hungry Silkworms|r
.goto 376,61.209,60.834,15,0
.complete 30072,2 
.target Hungry Silkworm
step
#completewith next
.goto 376,62.48,61.58,10 >> Enter the Hut
step
>>|cRXP_WARN_Click on the|r |cRXP_PICK_Silk Cocoon Bucket|r
.goto 376,62.36,62.49
.complete 30072,3 
step
#completewith next
.goto 376,62.48,61.58,10 >> Leave the Hut
step
#loop
.goto 376,61.209,60.834,15,0
.goto 376,62.378,56.573,15,0
.goto 376,61.209,60.834,0
.goto 376,62.378,56.573,0
>>Click on the |cRXP_FRIENDLY_Hungry Silkworms|r
.complete 30072,2 
.target Hungry Silkworm
step
#completewith TinyMutatedSilkmoth
#hidewindow
#loop
.goto 376,64.020,55.545,35,0
.goto 376,66.575,53.118,35,0
.goto 376,68.216,54.578,35,0
.goto 376,64.506,63.334,35,0
.goto 376,64.020,55.545,0
.goto 376,66.575,53.118,0
.goto 376,68.216,54.578,0
.goto 376,64.506,63.334,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Tiny Mutated Silkmoth|r
.complete 30059,2 
.mob Tiny Mutated Silkmoth
step
>>Kill |cRXP_ENEMY_Mutated Silkmoth|r
.complete 30059,1 
.mob Mutated Silkmoth
step
#label TinyMutatedSilkmoth
>>Kill |cRXP_ENEMY_Tiny Mutated Silkmoth|r
.complete 30059,2 
.mob Tiny Mutated Silkmoth
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Journeyman Chu|r and |cRXP_FRIENDLY_Master Goh|r
.turnin 30059 >>Turn in The Moth Rebellion
.goto 376,63.55,58.46
.target +Journeyman Chu
.accept 30058 >>Accept Mothallus!
.goto 376,63.625,58.526
.target Master Goh
step
#completewith next
.goto 376,64.364,57.972
.cast 6478 >>|cRXP_WARN_Click on the |cRXP_PICK_Mothallus Bait|r
.timer 14,Roleplay Duration
step
.goto 376,62.66,59.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silkmaster Tsai|r
.turnin 30072 >>Turn in Where Silk Comes From
.target Silkmaster Tsai
step
>>|cRXP_WARN_Click on the |cRXP_PICK_Mothallus Bait|r to start the spawn roleplay|r
>>Kill |cRXP_ENEMY_Mothallus|r
.goto 376,64.364,57.972
.complete 30058,1 
.mob Mothallus
step
.goto 376,63.63,58.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Goh|r
.turnin 30058 >>Turn in Mothallus!
.target Master Goh
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r and |cRXP_FRIENDLY_Li Li|r
.turnin 29951 >>Turn in Muddy Water
.goto 376,68.72,43.11
.target +Mudmug
step
#completewith next
.cast 106276 >> Use |T135975:0|t[Li Li's Wishing-Stone] to summon |cRXP_FRIENDLY_Li Li|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r
.turnin 29950 >>Turn in Li Li's Day Off
.timer 15,Roleplay Duration
.goto 376,68.78,43.44
.target +Li Li
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.accept 29952 >>Accept Broken Dreams
.goto 376,68.853,43.400
.target Chen Stormstout
step
#completewith ListenToChen
#label TalkChenStormstout
.goto 376,68.853,43.400
.gossipoption 40423 >>Talk to |cRXP_FRIENDLY_Chen Stormstout|r
step
#requires TalkChenStormstout
#completewith next
+|cRXP_WARN_During quest downtime, maximize efficiency by focusing on the following activities based on your current needs:|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
.use 211279
.usespell 436523
.usespell 433397
step
#label ListenToChen
>>|cRXP_WARN_Don't run ahead of|r |cRXP_FRIENDLY_Uncle Gao|r, but follow him after killing the mobs|r
>>Kill the |cRXP_ENEMY_Unruly Alemental|r and |cRXP_ENEMY_Wuk-Wuk|r |cRXP_WARN_by using|r |T572033:0|t[Stormstout Fu] (1). Use |T132805:0|t[Drink] (2) to heal.
.goto 376,34.761,70.381,15,0
.goto 376,35.841,72.712,15,0
.goto 376,36.687,72.242,15,0
.goto 376,36.364,71.080,15,0
.goto 376,34.611,70.778
.skipgossip 56133,1
.complete 29952,1 
.mob Unruly Alemental
.mob Wuk-Wuk
step
.goto 376,68.85,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.turnin 29952 >>Turn in Broken Dreams
.target Chen Stormstout
.accept 30046 >>Accept Chen's Resolution
step
#completewith next
.cast 441154 >> Use |T134491:0|t[Nostwin's Voucher] to teleport to Infinite Bazaar.
.use 217930
.itemcount 217930,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.goto 376,55.89,49.44
.turnin 30046 >>Turn in Chen's Resolution
.accept 30048 >>Accept Li Li and the Grain
.accept 30049 >>Accept Doesn't Hold Water
.accept 30053 >>Accept Hop Hunting
.target Chen Stormstout
step
.goto 376,55.14,47.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stonecarver Mac|r
.accept 32045 >>Accept Children of the Water
.target Stonecarver Mac
step
#completewith next
#loop
.goto 376,55.24,50.69,10,0
.goto 376,54.96,50.54,10,0
.goto 376,55.07,50.29,10,0
.goto 376,54.93,50.14,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lei Lan|r
.home >>Set your Hearthstone to The Lazy Turnip
.target Innkeeper Lei Lan
step
.goto 376,52.69,62.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r
.turnin 30048 >>Turn in Li Li and the Grain
.accept 30031 >>Accept Taste Test
.target Li Li
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainlord Kai|r and |cRXP_FRIENDLY_Grainer Pan|r
.accept 30029 >>Accept Wee Little Shenanigans
.goto 376,52.738,62.994
.target +Grainlord Kai
.accept 30030 >>Accept Out of Sprite
.goto 376,52.595,62.986
.target +Grainer Pan
step
#completewith AgedGrain
>>Kill |cRXP_ENEMY_Tricky Maizer|r
.complete 30029,1 
.mob Tricky Maizer
step
>>|cRXP_WARN_Click on the |cRXP_PICK_Light Grain|r|r
.goto 376,53.688,63.296
.complete 30031,2 
step
>>|cRXP_WARN_Click on the |cRXP_PICK_Fresh Grain|r|r
.goto 376,53.036,64.488
.complete 30031,4 
step
#completewith next
.goto 376,51.589,64.262,8 >>|cRXP_WARN_Enter the mill|r
step
#title Go up
.goto 376,51.449,64.484
>>Kill |cRXP_ENEMY_Cornan|r |cRXP_WARN_inside the mill|r
.complete 30030,1 
.mob Cornan
step
>>|cRXP_WARN_Click on the |cRXP_PICK_Malted Grain|r|r
.goto 376,50.718,61.954
.complete 30031,3 
step
#label AgedGrain
>>|cRXP_WARN_Click on the |cRXP_PICK_AgedGrain|r|r
.goto 376,51.202,60.831
.complete 30031,1 
step
#loop
.goto 376,53.887,62.260,30,0
.goto 376,52.820,65.814,30,0
.goto 376,50.537,60.261,40,0
.goto 376,53.887,62.260,0
.goto 376,52.820,65.814,0
.goto 376,50.537,60.261,0
>>Kill |cRXP_ENEMY_Tricky Maizer|r
.complete 30029,1 
.mob Tricky Maizer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r, |cRXP_FRIENDLY_Grainer Pan|r, and |cRXP_FRIENDLY_Grainlord Kai|r
.turnin 30031 >>Turn in Taste Test
.goto 376,52.69,62.84
.target +Li Li
.turnin 30030 >>Turn in Out of Sprite
.goto 376,52.595,62.975
.target +Grainer Pan
.accept 30028 >>Accept Grain Recovery
.turnin 30029 >>Turn in Wee Little Shenanigans
.accept 30032 >>Accept The Quest for Better Barley
.goto 376,52.743,63.001
.target +Grainlord Kai
step
#completewith next
>>|cRXP_WARN_Click on the |cRXP_PICK_Stolen Malt Sacks|r|r to pick up |T133849:0|t[Sacks of Grain]
.complete 30028,1 
step
>>|cRXP_WARN_Click on the |cRXP_PICK_Rappeling Rope|r
.goto 376,51.26,77.49
.complete 30032,1 
step
.isOnQuest 30032
#completewith next
.goto 376,53.599,76.171,8 >>|cRXP_WARN_Enter the cave|r
step
>>|cRXP_WARN_Click on the |cRXP_PICK_Malted Cave Barley|r|r
.goto 376,53.35,75.29
.complete 30032,2 
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7) Krasarang Wilds 2
#displayname Chapter 5 - Krasarang Wilds Pt. 2
#title Krasarang Wilds 2
#next 8) Valley of the Four Winds 3
step << Horde
.goto 418,67.62,25.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.accept 30352 >>Accept Crane Mastery
.accept 30353 >>Accept Profit Mastery
.target Daggle Bombstrider
step << Horde
#completewith CourierFound
>>Kill |cRXP_ENEMY_Carp Hunter|r
.complete 30352,1 
.mob carp hunter
step << Horde
#completewith CourierFound
>>Kill |cRXP_ENEMY_Krasari Huntress.|r Loot them for |cRXP_LOOT_Vial of Tiger Blood.|r
.complete 30353,1 
.mob Krasari Huntress
step << Horde
.goto 418,68.80,22.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chezin Dawnchaser|r
.accept 30179 >>Accept Poisoned!
.target Chezin Dawnchaser
step << Horde
#loop
.goto 418,67.565,24.310,30,0
.goto 418,65.963,19.910,30,0
.goto 418,69.549,18.694,30,0
.goto 418,67.565,24.310,0
.goto 418,65.963,19.910,0
.goto 418,69.549,18.694,0
.complete 30179,1 
step << Horde
#label CourierFound
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhu's Watch Courier|r
.goto 418,62.55,25.45
.complete 30133,1 
.target Zhu's Watch Courier
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r and |cRXP_FRIENDLY_Kor Bloodtusk|r
.turnin 30179 >>Turn in Poisoned!
.goto 418,59.89,24.69
.target +Sunwalker Dezco
.accept 30124 >>Accept Blind Them!
.goto 418,59.875,24.803
.target +Kor Bloodtusk
step << Horde
.isOnQuest 29875
.goto 418,60.09,25.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.turnin 29875 >>Turn in Kang Bramblestaff
.accept 30123 >>Accept Skitterer Stew
.target Kang Bramblestaff
step << Horde
#optional
.goto 418,60.09,25.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.accept 30123 >>Accept Skitterer Stew
.target Kang Bramblestaff
step << Horde
#completewith next
>>Kill |cRXP_FRIENDLY_Jungle Skitterer|r. Loot them for the |T237415:0|t[|cRXP_LOOT_Intact Skitterer Glands]
.complete 30123,1 
.mob Jungle Skitterer
step << Horde
#loop
.goto 418,62.343,30.723,15,0
.goto 418,61.027,29.295,15,0
.goto 418,62.343,30.723,0
.goto 418,61.027,29.295,0
>>Kill |cRXP_ENEMY_Darnassian Outrider|r
.complete 30124,1 
.mob Darnassian Outrider
step << Horde
#completewith SkittererGlands
>>Kill |cRXP_ENEMY_Carp Hunter|r
.complete 30352,1 
.mob carp hunter
step << Horde
#completewith SkittererGlands
>>Kill |cRXP_FRIENDLY_Jungle Skitterer|r. Loot them for the |T237415:0|t[|cRXP_LOOT_Intact Skitterer Glands]
.complete 30123,1 
.mob Jungle Skitterer
step << Horde
#label SkittererGlands
#loop
.goto 418,63.44,37.62,45,0
.goto 418,65.40,30.81,30,0
.goto 418,69.69,30.41,45,0
.goto 418,72.12,21.28,55,0
.goto 418,64.77,21.72,40,0
.goto 418,61.02,22.06,55,0
.goto 418,63.44,37.62,0
.goto 418,65.40,30.81,0
.goto 418,69.69,30.41,0
.goto 418,72.12,21.28,0
.goto 418,64.77,21.72,0
.goto 418,61.02,22.06,0
>>Kill |cRXP_ENEMY_Krasari Huntress.|r Loot them for |cRXP_LOOT_Vial of Tiger Blood.|r
.complete 30353,1 
.mob Krasari Huntress
step << Horde
#completewith CarpHunterSlain
#hidewindow
#loop
.goto 418,60.77,22.11,45,0
.goto 418,65.09,22.15,35,0
.goto 418,65.20,32.70,30,0
.goto 418,63.44,37.62,45,0
.goto 418,60.77,22.11,0
.goto 418,65.09,22.15,0
.goto 418,65.20,32.70,0
.goto 418,63.44,37.62,0
+1
step << Horde
#completewith next
>>Kill |cRXP_ENEMY_Carp Hunter|r
.complete 30352,1 
.mob carp hunter
step << Horde
>>Kill |cRXP_FRIENDLY_Jungle Skitterer|r. Loot them for the |T237415:0|t[|cRXP_LOOT_Intact Skitterer Glands]
.complete 30123,1 
.mob Jungle Skitterer
step << Horde
#label CarpHunterSlain
>>Kill |cRXP_ENEMY_Carp Hunter|r
.complete 30352,1 
.mob carp hunter
step << Horde
.goto 418,67.63,25.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.turnin 30352 >>Turn in Profit Mastery
.accept 31262 >>Accept Crane Mastery: Needlebeak
.turnin 30353 >>Turn in Profit Mastery
.accept 31260 >>Accept Profit Mastery: Chasheen
.target Daggle Bombstrider
step << Horde
>>Kill |cRXP_ENEMY_Needlebeak|r. Loot it for |T133707:0|t[|cRXP_LOOT_The Needlebeak|r]
.goto 418,62.73,20.46
.complete 31262,1 
.mob Needlebeak
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r and |cRXP_FRIENDLY_Kor Bloodtusk|r
.turnin 30123 >>Turn in Skitterer Stew
.goto 418,60.09,25.00
.target +Kang Bramblestaff
.turnin 30124 >>Turn in Blind Them!
.accept 30127 >>Accept Threat from Dojan
.goto 418,59.87,24.80
.target +Kor Bloodtusk
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r and |cRXP_FRIENDLY_Kang Bramblestaff|r
.accept 30130 >>Accept Herbal Remedies
.goto 418,59.883,24.694
.target +Sunwalker Dezco
.accept 30129 >>Accept The Mogu Agenda
.goto 418,60.09,25.00
.target +Kang Bramblestaff
step << Horde
>>Kill |cRXP_ENEMY_Chasheen|r. Loot him for the |T134817:0|t[|cRXP_LOOT_Ancient Tiger's Blood]
.goto 418,61.81,32.09
.complete 31260,1 
.mob Ancient Tiger's Blood
step << Alliance
.goto 418,67.62,25.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.accept 30352 >>Accept Crane Mastery
.accept 30353 >>Accept Profit Mastery
.target Daggle Bombstrider
step << Alliance
#completewith Zhu's Watch Courier
>>Kill |cRXP_ENEMY_Carp Hunter|r
.complete 30352,1 
.mob carp hunter
step << Alliance
#completewith Zhu's Watch Courier
>>Kill |cRXP_ENEMY_Krasari Huntress.|r Loot them for |cRXP_LOOT_Vial of Tiger Blood.|r
.complete 30353,1 
.mob Krasari Huntress
step << Alliance
#label Zhu's Watch Courier
.goto 418,67.94,31.53
>>Click on |cRXP_PICK_Northeast Oubliette Shackle|r
.complete 30274,1 
step << Alliance
#completewith next
.goto 418,67.46,32.3,35 >> |cRXP_WARN_Walk into the purple bubble.|r
step << Alliance
.goto 418,66.69,31.57
>>Click on |cRXP_PICK_Northwest Oubliette Shackle|r
.complete 30274,2 
step << Alliance
.goto 418,66.26,30.95
>>|cRXP_WARN_Follow the Arrow|r
.accept 30274 >>Accept The Arcanic Oubliette
.complete 30178,1 
.skipgossip
.target Zhu's Watch Courier
step << Alliance
.goto 418,66.70,33.68
>>Click on |cRXP_PICK_Southwest Oubliette Shackle|r
.complete 30274,3 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin,|r|cRXP_FRIENDLY_Lyalia|r and |cRXP_FRIENDLY_Kang Bramblestaff|r
.turnin 30274 >>Turn in The Arcanic Oubliette
.accept 30344 >>Accept The Lost Dynasty
.goto 418,67.45,32.64
.accept 30384 >>Accept Blind Them!
.goto 418,67.45,32.71
.turnin 29874 >>Turn in Kang Bramblestaff
.accept 30350 >>Accept Squirmy Delight
.goto 418,67.36,32.75
.target Kang Bramblestaff
.target Lorekeeper Vaeldrin
.target Lyalia
step << Alliance
#completewith Vial of Tiger Blood
>>Kill |cRXP_ENEMY_Jungle Skitterer|r Loot them for |cRXP_LOOT_Intact Skitterer Glands.|r
.complete 30350,1 
step << Alliance
#completewith Vial of Tiger Blood
>>Kill |cRXP_ENEMY_Carp Hunter|r
.complete 30352,1 
.mob carp hunter
step << Alliance
#completewith Vial of Tiger Blood
>>Kill |cRXP_ENEMY_Krasari Huntress.|r Loot them for |cRXP_LOOT_Vial of Tiger Blood.|r |cRXP_WARN_Most of them are stealthed and usually located next to trees|r
.complete 30353,1 
.mob Krasari Huntress
step << Alliance
#hidewindow
#label Vial of Tiger Blood
.goto 418,65.44,35.54,20,0
.goto 418,64.7,35.17,20,0
.goto 418,63.89,35.25,20,0
.goto 418,63.78,36.24,20,0
.goto 418,62.66,36.89,20,0
.goto 418,62.12,36.21,20,0
.goto 418,61.57,37.11,20,0
.goto 418,60.53,37.18,20,0
.goto 418,60.34,36.39,20,0
.goto 418,59.51,36.21,20,0
.goto 418,60.89,34,20,0
.goto 418,61.46,34.78,20,0
.goto 418,62.13,33.6,20,0
.goto 418,63.51,32.23,20,0
.goto 418,64.63,31.86,20,0
.goto 418,64.63,30.79,20,0
.goto 418,63.32,30.79,20,0
.goto 418,61.66,32.92,20,0
.goto 418,61.9,30.26,20,0
.goto 418,61.1,28.9,20,0
.goto 418,61.69,27.68,20,0
.goto 418,62.57,28.66,20,0
.goto 418,63.44,27.13,20,0
.goto 418,63.01,25.74,20,0
.goto 418,63.87,24.98,20
step << Alliance
#completewith next
>>Kill |cRXP_ENEMY_Sunwalker Scout|r
.complete 30384,1 
.mob sunwalker scout
step
.isQuestComplete 30352
.isQuestComplete 30353
.goto 418,67.63,25.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.turnin 30352 >>Turn in Profit Mastery
.turnin 30353 >>Turn in Profit Mastery
.accept 31260 >>Accept Profit Mastery: Chasheen
.accept 31262 >>Accept Crane Mastery: Needlebeak
.target Daggle Bombstrider
step << Alliance
#loop
.goto 418,63.94,24.99,30,0
.goto 418,66.8,25.15,30,0
.goto 418,67.36,26.95,30,0
>>Kill |cRXP_ENEMY_Sunwalker Scout|r
.complete 30384,1 
.mob sunwalker scout
step << Alliance
#loop
.goto 418,69.73,23.71,25,0
.goto 418,69.59,22.68,25,0
.goto 418,69.56,20.78,25,0
.goto 418,68.89,20.6,25,0
.goto 418,66.89,20.32,25,0
.goto 418,66.72,23.3,25,0
>>Click on |cRXP_PICK_Dynastic Tablets.|r
.complete 30344,1 
step << Alliance
.isQuestAvailable 30352
.isQuestAvailable 30353
#loop
.goto 418,71.7,23.47,20,0
.goto 418,70.47,25.23,20,0
.goto 418,70.6,26.06,20,0
.goto 418,70.23,28.97,20,0
.goto 418,70.73,29.82,20,0
>>Kill |cRXP_ENEMY_Krasari Huntress.|r Loot them for |cRXP_LOOT_Vial of Tiger Blood.|r |cRXP_WARN_Most of them are stealthed and usually located next to trees|r
.complete 30353,1 
.mob Krasari Huntress
step
.isQuestAvailable 30352
.isQuestAvailable 30353
#hidewindow
#completewith Carp Hunter
.goto 418,67.69,30.25,30,0
.goto 418,64.56,30.29,30,0
.goto 418,63.88,28.24,30,0
.goto 418,65.56,26.2,30,0
.goto 418,68.22,27.7,30,0
#loop
+1
step << Alliance
#completewith next
.isQuestAvailable 30352
.isQuestAvailable 30353
>>Kill |cRXP_ENEMY_Jungle Skitterer|r Loot them for |cRXP_LOOT_Intact Skitterer Glands.|r
.complete 30350,1 
step << Alliance
#label Carp Hunter
.isQuestAvailable 30352
.isQuestAvailable 30353
>>Kill |cRXP_ENEMY_Carp Hunter|r
.complete 30352,1 
.mob carp hunter
step << Alliance
.goto 418,67.63,25.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.turnin 30352 >>Turn in Profit Mastery
.turnin 30353 >>Turn in Profit Mastery
.accept 31260 >>Accept Profit Mastery: Chasheen
.accept 31262 >>Accept Crane Mastery: Needlebeak
.target Daggle Bombstrider
step << Alliance
#completewith Chasheen
.isOnQuest 31260
>>Kill |cRXP_ENEMY_Jungle Skitterer|r Loot them for |cRXP_LOOT_Intact Skitterer Glands.|r
.complete 30350,1 
step << Alliance
.isOnQuest 31260
.goto 418,62.84,20.33
>>Kill |cRXP_ENEMY_Needlebeak.|r
.complete 31262,1 
.mob Needlebeak
step << Alliance
.isOnQuest 31260
.goto 418,61.65,31.97
#label Chasheen
>>Kill |cRXP_ENEMY_Chasheen|r Loot him for |cRXP_LOOT_Ancient Tiger's Blood|r
.complete 31260,1 
.mob Chasheen
step << Alliance
.isOnQuest 31260
>>Kill |cRXP_ENEMY_Jungle Skitterer|r Loot them for |cRXP_LOOT_Intact Skitterer Glands.|r
.complete 30350,1 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff,|r |cRXP_FRIENDLY_Lyalia|r and |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.turnin 30350 >>Turn in Squirmy Delight
.goto 418,67.45,32.64
.target +Kang Bramblestaff
.turnin 30384 >>Turn in Blind Them!
.goto 418,67.45,32.71
.target +Lyalia
.turnin 30344 >>Turn in The Lost Dynasty
.goto 418,67.46,32.64
.target +Lorekeeper Vaeldrin
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin,|r |cRXP_FRIENDLY_Kang Bramblestaff|r and |cRXP_FRIENDLY_Lyalia|r
.accept 30346 >>Accept Where are the Pools
.goto 418,67.45,32.64
.accept 30349 >>Accept Threat from Dojan
.goto 418,67.45,32.71
.accept 30351 >>Accept Lotus Tea
.goto 418,67.37,32.76
.target Lyalia
.target Kang Bramblestaff
.target Lorekeeper Vaeldrin
step << Alliance
.goto 418,67.63,25.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.turnin 31260 >>Turn in Profit Mastery: Chasheen
.turnin 31262 >>Turn in Crane Mastery: Needlebeak
step
#include 3) Krasarang Wilds Dojani
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor Bloodtusk|r and |cRXP_FRIENDLY_Sunwalker Dezco|r
.turnin 30127 >>Turn in Threat from Dojan
.goto 418,59.88,24.81
.target +Kor Bloodtusk
.turnin 30128 >>Turn in The Pools of Youth
.turnin 30130 >>Turn in Herbal Remedies
.accept 30131 >>Accept Life
.goto 418,59.881,24.700
.target +Sunwalker Dezco
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.goto 418,59.881,24.700
.skipgossip 58113,1
.complete 30131,1 
.target Sunwalker Dezco
step << Horde
.goto 418,60.41,25.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.turnin 30131 >>Turn in Life
.accept 30132 >>Accept Going West
.target Sunwalker Dezco
step << Horde
.goto 418,67.63,25.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.turnin 31260 >>Turn in Profit Mastery: Chasheen
.turnin 31262 >>Turn in Crane Mastery: Needlebeak
.target Daggle Bombstrider
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Sunwalker Scout|r
.goto 418,43.80,42.77
.complete 30132,1 
.target Sunwalker Scout
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Kang Bramblestaff|r |cRXP_WARN_next to you.|r
.turnin 30351 >>Turn in Lotus Tea
.target Kang Bramblestaff
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r and |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.turnin 30349 >>Turn in Threat from Dojan
.goto 418,67.45,32.7
.turnin 30347 >>Turn in The Pools of Youth
.accept 30348 >>Accept Immortality?
.timer 22,RP
.goto 418,67.46,32.64
.target Lorekeeper Vaeldrin
.target Lyalia
step << Alliance
.goto 418,67.42,32.41
>>|cRXP_WARN_During quest downtime, maximize efficiency by focusing on the following activities based on your current needs:|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397
.complete 30348,1 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r and |cRXP_FRIENDLY_Lyalia|r
.turnin 30348 >>Turn in Immortality?
.goto 418,67.46,32.64
.accept 30363 >>Accept Going on the Offensive
.goto 418,67.45,32.7
.target Lyalia
step << Alliance
.goto 418,43.93,43.41
.isOnQuest 30269
>>Interact with |cRXP_FRIENDLY_Incursion Sentinel|r
.complete 30363,1 
.timer 58, RP
.target Incursion Sentinel
step
.goto 418,44.20,42.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
.turnin 30178 >>Turn in Into the Wilds
.target Koro Mistwalker
step
#include 3) Krasarang Crane Wing
step
.goto 418,29.67,39.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tired Shushen|r
.accept 30168 >>Accept Thieving Raiders
.accept 30169 >>Accept Raid Leader Slovan
.target Tired Shushen
step
#completewith next
>>Kill |cRXP_FRIENDLY_Riverblade Flesh-hunter|r. Loot them for the |T132594:0|t[|cRXP_LOOT_Pillaged Jinyu Loot|r]
.complete 30168,1 
.mob Riverblade Flesh-hunter
step
.goto 418,31.80,28.97
>>Kill |cRXP_ENEMY_Slovan|r
.complete 30169,1 
.mob Slovan
step
#loop
.goto 418,35.86,80.50,35,0
.goto 418,31.56,49.07,42,0
.goto 418,27.90,44.32,42,0
.goto 418,31.80,28.97,42,0
>>Kill |cRXP_FRIENDLY_Riverblade Flesh-hunter|r and |cRXP_FRIENDLY_Riverblade Slayer|r. Loot them for the |T132594:0|t[|cRXP_LOOT_Pillaged Jinyu Loot|r]
.complete 30168,1 
.mob Riverblade Flesh-hunter
step << Alliance
.achievement 6846,3 >>Click on the |cRXP_PICK_Scroll|r
.goto 418,30.55,38.59
step
.goto 418,29.67,39.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tired Shushen|r
.turnin 30168 >>Turn in Thieving Raiders
.turnin 30169 >>Turn in Raid Leader Slovan
.target Tired Shushen
step << Horde
.goto 418,28.69,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor Bloodtusk|r
.turnin 30132 >>Turn in Going West
.accept 30163 >>Accept For the Tribe
.accept 30229 >>Accept The Greater Danger
.target Kor Bloodtusk
step << Horde
.goto 418,28.84,50.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.accept 30230 >>Accept Re-Reclaim
.target Kang Bramblestaff
step << Alliance
.goto 418,24.71,34.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
.turnin 30465 >>Turn in Going on the Offensive
.accept 30356 >>Accept Sever Their Supply Line
.accept 30354 >>Accept No Sister Left Behind
.target Lyalia
step << Alliance
.goto 418,25.21,34.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.accept 30355 >>Accept Re-Reclaim
.target Kang Bramblestaff
step
#include 3) Krasarang Wilds Korjan
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor Bloodtusk|r and |cRXP_FRIENDLY_Kang Bramblestaff|r
.turnin 30163 >>Turn in For the Tribe
.turnin 30229 >>Turn in The Greater Danger
.goto 418,28.68,50.88
.target +Kor Bloodtusk
.turnin 30230 >>Turn in Re-Reclaim
.goto 418,28.84,50.57
.target +Kang Bramblestaff
step << Horde
.goto 418,29.06,51.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Han|r
.accept 30175 >>Accept The Mantid
.target Ambassador Han
step << Horde
.goto 418,15.98,39.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.accept 30164 >>Accept The Stoneplow Convoy
.target Sunwalker Dezco
step << Alliance
.goto 418,25.20,34.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.turnin 30355 >>Turn in Re-Reclaim
.target Kang Bramblestaff
step << Alliance
.goto 418,24.70,34.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
.turnin 30354 >>Turn in No Sister Left Behind
.turnin 30356 >>Turn in Sever Their Supply Line
.target Lyalia
step << Alliance
.goto 418,24.88,34.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Han|r
.accept 30361 >>Accept The Mantid
.target Ambassador Han
step << Alliance
.goto 418,15.08,39.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.accept 30357 >>Accept The Stoneplow Convoy
.target Lorekeeper Vaeldrin
step
#include 3) Krasarang Wilds Ik'thik
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Len|r and |cRXP_FRIENDLY_Sunwalker Dezco|r
.turnin 30175 >>Turn in The Mantid
.goto 418,15.69,39.71
.target +Ambassador Len
.turnin 30164 >>Turn in The Stoneplow Convoy
.accept 30174 >>Accept For Family
.goto 418,15.98,39.78
.target +Sunwalker Dezco
step << Alliance
.goto 418,15.70,39.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Len|r
.turnin 30361 >>Turn in The Mantid
.target Ambassador Len
step << Alliance
.goto 418,15.09,39.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.turnin 30357 >>Turn in The Stoneplow Convoy
.target Lorekeeper Vaeldrin
step << Alliance
.goto 418,15.09,39.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.accept 30359 >>Accept The Lord Reclaimer
.target Lorekeeper Vaeldrin
step << Horde
#completewith next
.gossipoption 40073 >>Talk to |cRXP_FRIENDLY_Kor Bloodtusk|r
.timer 5,Roleplay Duration
.goto 418,23.644,48.828
step << Horde
.goto 418,23.587,48.691
>>Kill |cRXP_ENEMY_Groundbreaker Brojai|r
.complete 30174,1 
.mob Groundbreaker Brojai
step << Horde
.goto 418,28.89,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.turnin 30174 >>Turn in For Family
.target Sunwalker Dezco
step << Alliance
.isOnQuest 30359
.goto 418,23.58,48.84
.gossipoption 40353 >>Talk to |cRXP_FRIENDLY_Lyalia|r
.timer 10,RP
.target Lyalia
step << Alliance
.goto 418,23.53,48.75
>>Kill |cRXP_ENEMY_Groundbreaker Brojai|r
.complete 30359,1 
.mob groundbreaker brojai
step << Alliance
.goto 418,24.69,34.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.turnin 30359 >>Turn in The Lord Reclaimer
.target Lorekeeper Vaeldrin
.accept 30445 >>Accept The Waters of Youth
.timer 40,RP
step << Alliance
#completewith Turn in The Waters of Youth
.cast 441154 >> Use |T134491:0|t[Nostwin's Voucher] to teleport to Infinite Bazaar.
.use 217930
.itemcount 217930,1
step << Alliance
.isQuestComplete 80446
.goto 393,75.04,45.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>Turn in Looking for Group
.target Arturos
step << Alliance
.isQuestComplete 80447
.goto 393,76.55,48.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>Turn in Looking for More
.target Pythagorus
step << Alliance
#completewith Turn in The Waters of Youth
.goto 393,67.15,43.64,10,0
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu
step << Alliance
.goto 393,64.6,42.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>Accept A Fresh Scene
.target Larah Treebender
step << Alliance
.goto 390,84.00,58.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
.accept 32246 >>Accept Meet the Scout
.target Lyalia
step << Alliance
#completewith Turn in The Waters of Youth
.aura -449510
.cast 449508 >> Use |T134488:0|t[Nostwin's Return Service] to return to Krasarang Wilds.
.use 449508
step << Alliance
.goto 418,24.71,34.03
#label Turn in The Waters of Youth
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
.turnin 30445 >>Turn in The Waters of Youth
.target Lyalia
step
#include 3) Krasarang Wilds Hozen
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7) Kun-Lai Summit Defense Shado-Pan
step
#completewith DefenseShadopan
.goto 379,45.05,89.96,20 >> Enter the Castle
step
.isOnQuest 31455,31453
#optional
.goto 379,44.48,89.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
.turnin 31455 >>Turn in The Shado-Pan << Alliance
.turnin 31453 >>Turn in The Shado-Pan << Horde
.accept 30665 >>Accept The Defense of Shado-Pan Fallback
.accept 30670 >>Accept Turnabout
.target Shado-Master Chong
step
#label DefenseShadopan
.goto 379,44.48,89.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
.accept 30665 >>Accept The Defense of Shado-Pan Fallback
.accept 30670 >>Accept Turnabout
.target Shado-Master Chong
step
#completewith Holed Up
>>Kill |cRXP_ENEMY_sha-infested yaungol|r
.complete 30665,1 
.mob Sha-Infested Yaungol
step
#completewith Holed Up
>>Kill |cRXP_ENEMY_Blind Rage.|r Loot them for |cRXP_LOOT_Blind Rage Essence.|r
.complete 30670,1 
.mob Blind Rage
step
#completewith Holed Up
.goto 379,44.51,89.06,10 >> Leave the Castle
step
#label Holed Up
.goto 379,42.94,88.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sya Zhong|r |cRXP_WARN_inside the small house|r
.accept 30682 >>Accept Holed Up
.target Sya Zhong
step
#completewith Jin Warmkeg
>>Kill |cRXP_ENEMY_Sha-Infested Yaungol.|r
.complete 30665,1 
.mob Sha-Infested Yaungol
step
#completewith Jin Warmkeg
>>Kill |cRXP_ENEMY_Blind Rage.|r Loot them for |cRXP_LOOT_Blind Rage Essence.|r
.complete 30670,1 
.mob Blind Rage
step
.goto 379,43.12,88.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sya Zhong|r
.complete 30682,4 
.skipgossip
.target Sya Zhong
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ya Firebough|r
.complete 30682,2 
.goto 379,41.07,87.00
.skipgossip
.target Ya Firebough
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Lady Fung|r
.complete 30682,3 
.goto 379,42.84,85.71
.skipgossip
.target Old Lady Fung
step
#label Jin Warmkeg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin Warmkeg|r
.complete 30682,1 
.goto 379,43.88,86.17
.skipgossip
.target Jin Warmkeg
step
#completewith Sha-Infested Yaungol
#hidewindow
#loop
.goto 379,45.15,88.27,40,0
.goto 379,42.89,87.97,40,0
.goto 379,41.06,86.39,40,0
.goto 379,42.80,86.06,40,0
.goto 379,45.15,88.27,0
.goto 379,42.89,87.97,0
.goto 379,41.06,86.39,0
.goto 379,42.80,86.06,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Sha-Infested Yaungol.|r
.complete 30665,1 
.mob Sha-Infested Yaungol
step
>>Kill |cRXP_ENEMY_Blind Rage.|r Loot them for |cRXP_LOOT_Blind Rage Essence.|r
.complete 30670,1 
.mob Blind Rage
step
#label Sha-Infested Yaungol
>>Kill |cRXP_ENEMY_Sha-Infested Yaungol|r
.complete 30665,1 
.mob Sha-Infested Yaungol
step
#completewith next
.goto 379,44.51,89.06,12 >> Enter the Castle
step
.goto 379,44.47,89.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
.turnin 30665 >>Turn in The Defense of Shado-Pan Fallback
.turnin 30670 >>Turn in Turnabout
.turnin 30682 >>Turn in Holed Up
.accept 30690 >>Accept Unmasking the Yaungol
.target Shado-Master Chong
step
#completewith KobaiTrapMask
.goto 379,44.51,89.06,12 >> Leave the Castle
step
#sticky
#label KobaiTrapMask
.complete 30690,1 
step
#label KobaiTrap
#completewith KobaiTrapMask
#loop
.goto 379,44.94,86.47,20,0
.goto 379,45.14,85.98,20,0
.goto 379,45.51,85.53,20,0
.goto 379,45.82,86.57,20,0
.goto 379,45.49,86.96,20,0
.goto 379,44.94,86.47,0
.goto 379,45.14,85.98,0
.goto 379,45.51,85.53,0
.goto 379,45.82,86.57,0
.goto 379,45.49,86.96,0
.cast 118938 >>Use |T537467:0|t[Blinding Rage Trap] near |cRXP_ENEMY_Kobai.|r
.mob Kobai
.use 81741
step
.isOnQuest 30690
#requires KobaiTrap
#completewith KobaiTrapMask
.goto 379,45.44,85.47
.cast 118984 >>Pull |cRXP_ENEMY_Kobai|r inside the Trap and use |T133564:0|t[Blinding Rage Trap] on |cRXP_ENEMY_Kobai|r to steal his mask.
.use 118984
.mob Kobai
step
#requires KobaiTrapMask
>>Kill |cRXP_ENEMY_Malevolent Fury|r
.complete 30690,2 
.mob malevolent fury
step
#completewith next
.goto 379,44.51,89.06,12 >> Enter the Castle
step
.goto 379,44.48,89.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
.turnin 30690 >>Turn in Unmasking the Yaungol
.target Shado-Master Chong
.accept 30699 >>Accept To Winter's Blossom
step
#completewith next
.goto 379,45.13,89.98,10 >> Leave the Castle
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7) Kun-Lai Summit Despoiler
step
#loop
.goto 379,71.57,74.97,40,0
.goto 379,70.74,72.41,40,0
.goto 379,71.55,71.05,40,0
.goto 379,71.57,74.97,0
.goto 379,70.74,72.41,0
.goto 379,71.55,71.05,0
>>Kill |cRXP_ENEMY_Burilgi Despoiler|r. Loot him for |T133364:0|t[Muskpaw's Keepsake]. This will start a quest.
.accept 30582 >>Accept The Late Mrs. Muskpaw
.mob Burilgi Despoiler
step
#loop
.goto 379,71.61,70.08,20,0
.goto 379,71.21,69.36,20,0
.goto 379,71.61,70.08,0
.goto 379,71.21,69.36,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r
.turnin 30582 >>Turn in The Late Mrs. Muskpaw
.accept 30488 >>Accept The Missing Muskpaw
.accept 30489 >>Accept Fresh Needle Scent
.accept 30804 >>Accept The Fearmaster
.target Lao Muskpaw
step
#completewith next
.goto 379,73.05,73.49,20,0
.goto 381,16.39,39.7,10,0
.goto 381,26.25,61.08,10,0
.goto 381,41.97,40.32,10,0
.goto 381,53.77,32.01,10,0
.goto 381,65.53,43.08,10,0
>>Kill |cRXP_ENEMY_Needle Sprite.|r Loot them for |T134439:0|t[|cRXP_LOOT_Pungent Sprite Needles|r].
.complete 30489,1 
.mob Needle Sprite
step
.goto 381,63.96,59.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muskpaw Jr.|r
.turnin 30488 >>Turn in The Missing Muskpaw
.target Muskpaw Jr.
step
.group
.goto 381,63.96,59.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muskpaw Jr.|r
.accept 30491 >>Accept At the Yak Wash
.target Muskpaw Jr.
step
#completewith next
.goto 381,65.53,43.08,10,0
.goto 381,53.77,32.01,10,0
.goto 381,41.97,40.32,10,0
.goto 381,26.25,61.08,10,0
.goto 381,16.39,39.7,10,0
.goto 379,73.05,73.49,10,0
.goto 379,71.92,72.18,30,0
.goto 379,71.5,72.05,30,0
.goto 379,69.31,72.72,30,0
.goto 379,67.99,72.47,30,0
.goto 379,65.68,73.11,30,0
.goto 379,66.96,74.17,30,0
>>Kill |cRXP_ENEMY_Needle Sprite.|r Loot them for |cRXP_LOOT_Pungent Sprite Needles.|r
.complete 30489,1 
.mob Needle Sprite
step
#loop
.goto 379,71.57,74.97,40,0
.goto 379,70.74,72.41,40,0
.goto 379,71.55,71.05,40,0
.goto 379,71.57,74.97,0
.goto 379,70.74,72.41,0
.goto 379,71.55,71.05,0
>>Kill |cRXP_ENEMY_Burilgi Despoiler|r to accept quest:[Yakity Yak]
*|cRXP_WARN_This can take multiple kills|r
.accept 30587 >>Accept Yakity Yak
.mob Burilgi Despoiler
step
#completewith The Fearmaster
>>Kill |cRXP_ENEMY_Needle Sprite.|r Loot them for |cRXP_LOOT_Pungent Sprite Needles|r
.complete 30489,1 
.mob Needle Sprite
step
#completewith The Fearmaster
>>Kill |cRXP_ENEMY_Burilgi Despoiler|r
.complete 30587,1 
.mob burilgi despoiler
step
#label The Fearmaster
.goto 379,67.84,73.97
>>Kill |cRXP_ENEMY_The Fearmaster|r
.complete 30804,1 
.mob the fearmaster
step
#completewith Needle Sprite
#hidewindow
#loop
.goto 379,68.10,71.70,40,0
.goto 379,70.00,70.27,40,0
.goto 379,72.67,71.49,40,0
.goto 379,71.79,74.10,40,0
.goto 379,66.54,74.19,40,0
.goto 379,68.10,71.70,0
.goto 379,70.00,70.27,0
.goto 379,72.67,71.49,0
.goto 379,71.79,74.10,0
.goto 379,66.54,74.19,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Needle Sprite.|r Loot them for |cRXP_LOOT_Pungent Sprite Needles|r
.complete 30489,1 
.mob Needle Sprite
step
>>Kill |cRXP_ENEMY_Burilgi Despoiler|r
.complete 30587,1 
.mob burilgi despoiler
step
#label Needle Sprite
>>Kill |cRXP_ENEMY_Needle Sprite.|r Loot them for |cRXP_LOOT_Pungent Sprite Needles|r
.complete 30489,1 
.mob Needle Sprite
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.vehicle >>Interact with an |cRXP_FRIENDLY_Escaped Yak|r
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow|r and Use |T132335:0|t[Rush](1) to sprint.
.complete 30491,1,1 
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.isOnQuest 30489
.vehicle >>Interact with an |cRXP_FRIENDLY_Escaped Yak|r
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow|r and Use |T132335:0|t[Rush](1) to sprint.
.complete 30491,1,2 
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.isOnQuest 30489
.vehicle >>Interact with an |cRXP_FRIENDLY_Escaped Yak|r
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow|r and Use |T132335:0|t[Rush](1) to sprint.
.complete 30491,1,3 
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.isOnQuest 30489
.vehicle >>Interact with an |cRXP_FRIENDLY_Escaped Yak|r
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow|r and Use |T132335:0|t[Rush](1) to sprint.
.complete 30491,1,4 
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.isOnQuest 30489
.vehicle >>Interact with an |cRXP_FRIENDLY_Escaped Yak|r
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow|r and Use |T132335:0|t[Rush](1) to sprint.
.complete 30491,1,5 
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.isOnQuest 30489
.vehicle >>Interact with an |cRXP_FRIENDLY_Escaped Yak|r
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow|r and Use |T132335:0|t[Rush](1) to sprint.
.complete 30491,1,6 
step
#loop
.goto 379,71.21,69.39,25,0
.goto 379,71.94,70.30,25,0
.goto 379,71.21,69.39,0
.goto 379,71.94,70.30,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r
.turnin 30489 >>Turn in Fresh Needle Scent
.turnin 30587 >>Turn in Yakity Yak
.turnin 30804 >>Turn in The Fearmaster
.target Lao Muskpaw
step
.group
.goto 379,71.40,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muskpaw Jr.|r
.turnin 30491 >>Turn in At the Yak Wash
.accept 30492 >>Accept Back in Yak
.target Muskpaw Jr.
step
#label Yaungoil
.goto 379,71.73,63.03
.achievement 6847,3 >>Click on the |cRXP_PICK_Scroll|r
step
.goto 379,65.49,60.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slimy Inkstain|r
.accept 30614 >>Accept Oil Stop
.target Slimy Inkstain
step
.goto 379,64.88,60.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey Sootassle|r
.accept 30616 >>Accept Traffic Issues
.target Smokey Sootassle
step
.group
.goto 379,65.12,61.65
>>|cRXP_WARN_Follow the Arrow|r
.complete 30492,1 
step
.group
.goto 379,64.71,61.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Eightcoins|r
.turnin 30492 >>Turn in Back in Yak
step
.goto 379,64.71,61.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Eightcoins|r
.accept 30808 >>Accept A Grummle's Luck
.target Lucky Eightcoins
step
#completewith Filled Oil Vial
>>Kill |cRXP_ENEMY_Ruqin Infantry|r and |cRXP_ENEMY_Ruqin Elder|r
.complete 30616,1 
.mob Ruqin Infantry
.mob Ruqin Elder
step
#completewith Filled Oil Vial
>>Click on |cRXP_PICK_Bags of Stolen Luckydos.|r
.complete 30808,1 
step
#label Filled Oil Vial
.goto 379,63.34,68.46
>>Click on |cRXP_PICK_Yaungol Oil Derrik.|r
.complete 30614,1 
step
#completewith Ruqin Yaungols
#hidewindow
#loop
.goto 379,62.19,69.29,20,0
.goto 379,62.04,67.93,20,0
.goto 379,63.38,66.86,20,0
.goto 379,62.19,69.29,0
.goto 379,62.04,67.93,0
.goto 379,63.38,66.86,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Ruqin Infantry|r and |cRXP_ENEMY_Ruqin Elder|r
.complete 30616,1 
.mob Ruqin Infantry
.mob Ruqin Elder
.mob Ruqin Outrider
step
>>Click on |cRXP_PICK_Bags of Stolen Luckydos.|r
.complete 30808,1 
step
#label Ruqin Yaungols
>>Kill |cRXP_ENEMY_Ruqin Infantry|r and |cRXP_ENEMY_Ruqin Elder|r
.complete 30616,1 
.mob Ruqin Infantry
.mob Ruqin Elder
.mob Ruqin Outrider
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7) Kun-Lai Summit My Son
step
.goto 379,74.97,88.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Shi,|r
.accept 30467 >>Accept My Son...
.accept 30469 >>Accept Repossession
.target Merchant Shi
step
.goto 379,74.80,88.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swordmistress Mei|r
.accept 30468 >>Accept Enraged Vengeance
.target Swordmistress Mei
step
.goto 379,75.14,87.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
.accept 30496 >>Accept The Waterspeaker's Staff
.accept 30967 >>Accept Free the Dissenters
.target Waterspeaker Gorai
step << Alliance
#completewith Role Call
>>Kill |cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Orachi
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
step << Alliance
#completewith Role Call
>>Click on |cRXP_PICK_Stolen Supplies.|r
.complete 30469,1 
step << Alliance
#completewith Role Call
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkgill Dissenter.|r
.complete 30967,1 
.skipgossip
.target Inkgill Dissenter
step << Alliance
#label Role Call
.goto 379,74.48,83.55
.achievement 6846,1 >>Click on the |cRXP_PICK_Scroll|r
step
#completewith Orachi
>>Kill |cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Orachi
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
step << Alliance
#completewith Orachi
>>Click on |cRXP_PICK_Stolen Supplies.|r
.complete 30469,1 
step << Alliance
#completewith Orachi
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkgill Dissenter.|r
.complete 30967,1 
.skipgossip
.target Inkgill Dissenter
step
#completewith Orachi
>>Kill |cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Orachi
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
step
#completewith Orachi
>>Click on |cRXP_PICK_Stolen Supplies.|r
.complete 30469,1 
step
#completewith Orachi
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkgill Dissenter.|r
.complete 30967,1 
.skipgossip
.target Inkgill Dissenter
step
.goto 379,74.27,78.13
>>Kill |cRXP_ENEMY_Orachi.|r Loot him for |cRXP_LOOT_Stolen Inkgill Ritual Staff.|r
.complete 30496,1 
.mob Orachi
step
#label Orachi
.goto 379,74.68,76.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu-Peng|r
.turnin 30467 >>Turn in My Son...
.accept 30834 >>Accept Father and Child Reunion
.target Wu-Peng
step
#completewith Turn in The Waterspeaker's Staff
#hidewindow
#loop
.goto 379,73.08,76.26,40,0
.goto 379,73.17,77.19,40,0
.goto 379,74.33,78.61,40,0
.goto 379,74.79,79.76,40,0
.goto 379,74.77,82.39,40,0
.goto 379,73.86,82.87,40,0
.goto 379,73.72,84.08,40,0
.goto 379,74.63,84.98,40,0
.goto 379,73.08,76.26,0
.goto 379,73.17,77.19,0
.goto 379,74.33,78.61,0
.goto 379,74.79,79.76,0
.goto 379,74.77,82.39,0
.goto 379,73.86,82.87,0
.goto 379,73.72,84.08,0
.goto 379,74.63,84.98,0
+1
step
#completewith Inkgill Dissenters
>>Kill |cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
.mob Orachi
step
#completewith Inkgill Dissenters
>>Click on |cRXP_PICK_Stolen Supplies.|r
.complete 30469,1 
step
#label Inkgill Dissenters
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkgill Dissenter.|r
.complete 30967,1 
.skipgossip
.target Inkgill Dissenter
step
#completewith next
>>Kill |cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
.mob Orachi
step
>>Click on |cRXP_PICK_Stolen Supplies.|r
.complete 30469,1 
step
#label Turn in The Waterspeaker's Staff
>>Kill |cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
.mob Orachi
step
.goto 379,75.21,88.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
.turnin 30496 >>Turn in The Waterspeaker's Staff
.turnin 30967 >>Turn in Free the Dissenters
.target Waterspeaker Gorai
step
.goto 379,74.78,88.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swordmistress Mei|r
.turnin 30468 >>Turn in Enraged Vengeance
.target Swordmistress Mei
step
.goto 379,74.97,88.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Shi|r
.turnin 30469 >>Turn in Repossession
.turnin 30834 >>Turn in Father and Child Reunion
.target Merchant Shi
step
.goto 379,75.21,88.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
.accept 30480 >>Accept The Ritual
.target Waterspeaker Gorai
step
.goto 379,75.21,88.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
.target Waterspeaker Gorai
.complete 30480,1 
.timer 34,RP
.skipgossip 60973,1
step
.goto 379,74.90,88.58
>>|cRXP_WARN_During quest downtime, maximize efficiency by focusing on the following activities based on your current needs:|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397
.complete 30480,2 
step
>>Kill |cRXP_ENEMY_Explosive Hatred|r
.complete 30480,3 
.timer 14,RP
.mob Explosive Hatred
step
.goto 379,74.90,88.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
.turnin 30480 >>Turn in The Ritual
.target Waterspeaker Gorai
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7) Main Campaign Jade Forest Neutral
step
.goto 371,46.65,46.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
.accept 29716 >>Accept The Double Hozen Dare
.target An Windfur
.accept 29717 >>Accept Down Kitty!
step
.goto 371,46.46,45.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tzu the Ironbelly|r
.accept 29865 >>Accept The Silkwood Road
.target Tzu the Ironbelly
step
.goto 371,46.63,45.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
.accept 29866 >>Accept The Threads that Stick
.target Lo Wanderbrew
step
#completewith SilkwoodStalker
#hidewindow
#loop
.goto 371,45.10,47.18,30,0
.goto 371,44.98,49.66,35,0
.goto 371,43.92,51.05,35,0
.goto 371,41.70,50.53,42,0
.goto 371,42.87,47.47,42,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Silkwood Stalker|r
.complete 29865,1 
.mob Silkwood Stalker
step
>>Click on |cRXP_PICK_Silk Patches|r
.complete 29866,1 
step
#label SilkwoodStalker
>>Kill |cRXP_ENEMY_Silkwood Stalker|r
.complete 29865,1 
.mob Silkwood Stalker
step
#completewith JadeGuardian
#hidewindow
#loop
.goto 371,39.81,47.28,32,0
.goto 371,37.61,48.69,38,0
.goto 371,36.68,45.59,38,0
.goto 371,37.27,43.31,38,0
.goto 371,38.38,41.85,38,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Jade Guardian|r
.complete 29717,1 
.mob Jade Guardian
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scared Pandaren Cubs|r
.complete 29716,1 
.skipgossip 55267,1
.target Scared Pandaren Cubs
step
#label JadeGuardian
>>Kill |cRXP_ENEMY_Jade Guardian|r
.complete 29717,1 
.mob Jade Guardian
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r |cRXP_WARN_next to you|r
*If she's no longer next to you then head back to Dawn's Blossom
.turnin 29716 >>Turn in The Double Hozen Dare
.turnin 29717 >>Turn in Down Kitty!
.accept 29723 >>Accept The Jade Witch
.target An Windfur
step
#completewith next
.gossipoption 39810 >>Talk to |cRXP_FRIENDLY_Widow Greenpaw|r
.timer 35,Roleplay Duration
.target Widow Greenpaw
step
>>|cRXP_WARN_Follow|r |cRXP_FRIENDLY_Widow Greenpaw|r
>>Kill |cRXP_ENEMY_Widow Greenpaw|r when she becomes hostile
.goto 371,39.75,46.22
.complete 29723,1 
.mob Widow Greenpaw
step
.goto 371,46.46,45.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tzu the Ironbelly|r
.turnin 29865 >>Turn in The Silkwood Road
.target Tzu the Ironbelly
step
.goto 371,46.63,45.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
.turnin 29866 >>Turn in The Threads that Stick
.target Lo Wanderbrew
step
.goto 371,46.86,45.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
*|cRXP_WARN_She runs around in a circle around the village|r
.turnin 29723 >>Turn in The Jade Witch
.target An Windfur
step
.goto 371,46.86,45.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai Wanderbrew|r
.accept 29993 >>Accept Find the Boy
.target Kai Wanderbrew
step
.goto 371,47.16,46.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
.accept 29925 >>Accept All We Can Spare
.target Toya
step
.goto 371,54.67,44.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Wei|r
.turnin 29993 >>Turn in Find the Boy
.accept 29995 >>Accept Shrine of the Dawn
.target Inkmaster Wei
step
.goto 371,54.89,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Glenzu|r
.accept 29881 >>Accept The Perfect Color
.target Inkmaster Glenzu
step
.goto 371,55.32,45.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Jo Po|r
.accept 29882 >>Accept Quill of Stingers
.target Inkmaster Jo Po
step
#completewith FreshlyFallenPetal
#hidewindow
#loop
.goto 371,56.56,42.36,34,0
.goto 371,52.97,42.98,45,0
.goto 371,51.79,44.56,35,0
.goto 371,53.90,49.59,42,0
.goto 371,53.78,45.35,40,0
+1
step
#completewith next
>>Kill |cRXP_FRIENDLY_Orchard Wasps|r. Loot them for the |T133723:0|t[Wasp Stinger]
.complete 29882,1 
.mob Orchard Wasps
step
>>Click on the |cRXP_PICK_Freshly Fallen Petals|r
.complete 29881,1 
step
#label FreshlyFallenPetal
>>Kill |cRXP_FRIENDLY_Orchard Wasps|r. Loot them for the |T133723:0|t[Wasp Stinger]
.complete 29882,1 
.mob Orchard Wasps
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Jo Po|r and |cRXP_FRIENDLY_Inkmaster Glenzu|r
.turnin 29882 >>Turn in Quill of Stingers
.goto 371,55.32,45.22
.target +Inkmaster Jo Po
.turnin 29881 >>Turn in The Perfect Color
.goto 371,54.89,45.31
.target +Inkmaster Glenzu
step
.goto 371,52.57,38.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syra Goldendraft|r
.turnin 29995 >>Turn in Shrine of the Dawn
.accept 29920 >>Accept Getting Permission
.target Syra Goldendraft
step
#completewith next
.gossipoption 40636 >>Talk to |cRXP_FRIENDLY_Pandriarch Bramblestaff|r
.target Pandriarch Bramblestaff
step
>>Defeat |cRXP_ENEMY_Pandriarch Bramblestaff|r
.goto 371,54.08,38.46
.complete 29920,2 
.skipgossip 56209,1
.mob Pandriarch Bramblestaff
step
#completewith next
.gossipoption 40637 >>Talk to |cRXP_FRIENDLY_Pandriarch Goldendraft|r
.target Pandriarch Goldendraft
step
>>Defeat |cRXP_ENEMY_Pandriarch Goldendraft|r
.goto 371,53.59,36.74
.complete 29920,3 
.mob Pandriarch Goldendraft
step
#completewith next
.gossipoption 40541 >>Talk to |cRXP_FRIENDLY_Pandriarch Windfur|r
.target Pandriarch Windfur
step
>>Defeat |cRXP_ENEMY_Pandriarch Windfur|r
.goto 371,52.54,35.57
.complete 29920,1 
.skipgossip 56206,1
.mob Pandriarch Windfur
step
.goto 371,52.59,38.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
.turnin 29920 >>Turn in Getting Permission
.target Lo Wanderbrew
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r and |cRXP_FRIENDLY_Foreman Mann|r
.turnin 29925 >>Turn in All We Can Spare
.goto 371,50.91,27.07
.target +Lorewalker Cho
.accept 29928 >>Accept I Have No Jade And I Must Scream
.goto 371,50.94,27.02
.target +Foreman Mann
step
.goto 371,48.17,29.96,30,0
.goto 371,48.29,32.51,35,0
.goto 371,48.31,31.03
>>Kill |cRXP_ENEMY_Puckish Sprites|r. Pick up the |cRXP_PICK_Chunks of Jade|r
.complete 29928,1 
.mob Puckfish Sprite
step
.goto 371,50.94,27.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
.turnin 29928 >>Turn in I Have No Jade And I Must Scream
.accept 29926 >>Accept Calamity Jade
.accept 29927 >>Accept Mann's Man
.target Foreman Mann
step
#completewith next
#title Enter Cave
.goto 372,75.17,23.51,10 >>|cRXP_WARN_Enter the cave|r
step
>>|cRXP_WARN_Follow the arrow|r
.goto 372,67.27,24.92
.complete 29927,1 
step
.goto 372,60.90,36.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
.turnin 29927 >>Turn in Mann's Man
.accept 29929 >>Accept Trapped!
.target Hao Mann
step
#completewith CalamityJade
#hidewindow
#loop
.goto 373,39.70,20.15,30,0
.goto 373,34.53,75.24,22,0
.goto 373,44.62,80.91,25,0
.goto 373,67.94,37.16,25,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Greenstone Nibbler|r and |cRXP_ENEMY_Greenstone Gorger|r
.complete 29926,1 
.mob +Greenstone Nibbler
.complete 29926,2 
.mob +Greenstone Gorger
step
>>Click on the |cRXP_FRIENDLY_Greenstone Miners|r
.goto 373,36.71,38.18
.complete 29929,1 
.target Greenstone Miner
step
#label CalamityJade
>>Kill |cRXP_ENEMY_Greenstone Nibbler|r and |cRXP_ENEMY_Greenstone Gorger|r
.complete 29926,1 
.mob +Greenstone Nibbler
.complete 29926,2 
.mob +Greenstone Gorger
step
#completewith next
#title Leave Cave
.goto 373,53.68,57.27,8,0
.goto 372,43.09,31.86,8,0
.goto 372,52.42,41.97,8,0
.goto 372,77.58,25.03,10 >>|cRXP_WARN_Go back up and leave the cave|r
step
.goto 371,46.29,29.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
.turnin 29929 >>Turn in Trapped!
.accept 29930 >>Accept What's Mined Is Yours
.target Hao Mann
step
#completewith next
.vehicle 56508 >>Enter the |cRXP_FRIENDLY_Jade Cart|r
.goto 371,46.27,29.47
.timer 52,Cart Duration
.target Jade Cart
step
>>Kill the attacking |cRXP_ENEMY_Brittle Greenstone Gorger|r
*|cRXP_WARN_Be careful not to attack |cRXP_ENEMY_Hutia|r|r
.goto 371,51.21,26.72
.complete 29930,1 
.timer 40,Hao Mann Roleplay
.mob Brittle Greenstone Gorger
step
.goto 371,50.94,27.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
.turnin 29926 >>Turn in Calamity Jade
.turnin 29930 >>Turn in What's Mined Is Yours
.accept 29931 >>Accept The Serpent's Heart
.target Foreman Mann
step
.goto 371,48.31,61.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
.turnin 29931 >>Turn in The Serpent's Heart
.accept 30495 >>Accept Love's Labor
.target Foreman Raike
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitemaster Shoku|r
.goto 371,48.18,60.02
.complete 30495,3 
.skipgossip 59392,2
.target Kitemaster Shoku
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Emi|r |cRXP_WARN_at the top of the statue|r
.goto 371,47.58,60.67
.complete 30495,4 
.skipgossip 59397,1
.target Taskmaster Emi
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Sawa|r
.goto 371,46.94,60.35
.complete 30495,2 
.skipgossip 59401,1
.target Surveyor Sawa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Dinh|r
.goto 371,46.37,61.81
.complete 30495,1 
.skipgossip 59395,1
.target Historian Dinh
step
.goto 371,48.31,61.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
.turnin 30495 >>Turn in Love's Labor
.accept 29932 >>Accept The Temple of the Jade Serpent
.target Foreman Raike
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Wind-Yi|r
.goto 371,55.85,57.08
.complete 29932,1 
.skipgossip 57242,1
.target Elder Sage Wind-Yi
step
.goto 371,58.13,58.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
.turnin 29932 >>Turn in The Temple of the Jade Serpent
.accept 29997 >>Accept The Scryer's Dilemma
.accept 29998 >>Accept The Librarian's Quandary
.target Elder Sage Rain-Zhu
step
.goto 371,58.03,59.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
.accept 29999 >>Accept The Rider's Bind
.accept 30005 >>Accept Lighting Up the Sky
.target Fei
step
#completewith LibrariansQuandary
>>Click on the |cRXP_PICK_Firework Launchers|r
.complete 30005,1 
step
>>Click on the |cRXP_FRIENDLY_Playful Crimson Serpent|r
.goto 371,58.17,61.38
.complete 29999,2 
.target Playful Crimson Serpent
step
#label LibrariansQuandary
.goto 371,56.27,60.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
.turnin 29998 >>Turn in The Librarian's Quandary
.accept 30001 >>Accept Moth-Ridden
.accept 30002 >>Accept Pages of History
.target Lorewalker Stonestep
step
#completewith next
>>Kill the |cRXP_ENEMY_Dappled Moths|r
.complete 30001,1 
.mob Dappled Moth
step
>>Click on the |cRXP_FRIENDLY_Playful Gold Serpent|r
.goto 371,56.00,60.34
.complete 29999,4 
.target Playful Gold Serpent
step
#completewith next
>>Kill the |cRXP_ENEMY_Dappled Moths|r
.complete 30001,1 
.mob Dappled Moth
step
.goto 371,56.00,60.34
>>Click on the |cRXP_PICK_Infested Books|r
>>Kill the |cRXP_ENEMY_Bookworms|r by clicking on them
.complete 30002,1 
.mob Bookworm
step
.goto 371,56.00,60.34
>>Kill the |cRXP_ENEMY_Dappled Moths|r
.complete 30001,1 
.mob Dappled Moth
step
.goto 371,56.26,60.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
.turnin 30001 >>Turn in Moth-Ridden
.turnin 30002 >>Turn in Pages of History
.accept 30004 >>Accept Everything In Its Place
.target Lorewalker Stonestep
step
#completewith PlayfulEmeraldSerpent
#title Leave Library
#label LeaveLibrary
.goto 371,57.45,60.99,10 >>|cRXP_WARN_Leave the library|r
step
#requires LeaveLibrary
#completewith EnterFountain
>>Click on the |cRXP_PICK_Firework Launchers|r
.complete 30005,1 
step
#label PlayfulEmeraldSerpent
>>Click on the |cRXP_FRIENDLY_Playful Emerald Serpent|r
.goto 371,56.54,58.40
.complete 29999,3 
.target Playful Emerald Serpent
step
#completewith next
#title Enter building
#label EnterFountain
.goto 371,56.82,57.09,12,0
.goto 371,56.43,56.46,12,0
.goto 371,56.67,55.76,12 >>|cRXP_WARN_Enter the Fountain of the Everseer|r
step
>>Kill |cRXP_ENEMY_Water Fiends|r. Loot them for the |T135139:0|t[Sryer's Staff]
.goto 371,57.09,55.79
.complete 29997,1 
.mob Water Fiend
step
.goto 371,57.57,56.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Mari|r
.turnin 29997 >>Turn in The Scryer's Dilemma
.accept 30011 >>Accept A New Vision
.target Wise Mari
step
#completewith next
>>Click on the |cRXP_PICK_Firework Launchers|r
.complete 30005,1 
step
>>Click on the |cRXP_FRIENDLY_Playful Azure Serpent|r
.goto 371,59.16,56.78
.complete 29999,1 
.target Playful Azure Serpent
step
#loop
.goto 371,58.10,57.36,20,0
.goto 371,57.46,59.97,20,0
.goto 371,57.87,61.19,25,0
.goto 371,56.60,58.04,25,0
.goto 371,58.82,56.60,25,0
.goto 371,58.10,57.36,0
.goto 371,57.46,59.97,0
.goto 371,57.87,61.19,0
.goto 371,56.60,58.04,0
.goto 371,58.82,56.60,0
>>Click on the |cRXP_PICK_Firework Launchers|r
.complete 30005,1 
step
.goto 371,58.14,58.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
.turnin 30004 >>Turn in Everything In Its Place
.turnin 30011 >>Turn in A New Vision
.target Elder Sage Rain-Zhu
step
.goto 371,58.03,59.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
.turnin 29999 >>Turn in The Rider's Bind
.turnin 30005 >>Turn in Lighting Up the Sky
.accept 30000 >>Accept The Jade Serpent
.target Fei
step
.goto 371,52.15,58.12
>>|cRXP_WARN_During quest downtime, maximize efficiency by focusing on the following activities based on your current needs:|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
.complete 30000,1 
step
.goto 371,55.84,57.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Wind-Yi|r
.turnin 30000 >>Turn in The Jade Serpent
.accept 30498 >>Accept Get Back Here! <<Alliance
.accept 30499 >>Accept Get Back Here! <<Horde
.target Elder Sage Wind-Yi
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7) Main Campaign Jade Forest Neutral 2
step
>>Use the |T133305:0|t[Cho Family Heirloom]
.goto 371,44.50,66.94
.use 80071
.complete 30485,1 
step
.convertquest 31303,31362 <<Horde
.goto 371,44.78,67.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30485 >>Turn in Last Piece of the Puzzle
.accept 31303 >>Accept The Seal is Broken
.target Lorewalker Cho
step
#completewith next
.goto 371,44.77,67.04
.vehicle 64249 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishi|r
.skipgossip 64244,1
.target Mishi
step
>>Use |T135821:0|t[Shoot Cannon] (1) on the |cRXP_PICK_Sha Fissures|r
.goto 371,46.88,58.29
.complete 31303,1 
step
.goto 371,49.30,61.47
.convertquest 30504,31319 <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31303 >>Turn in The Seal is Broken
.accept 30500 >>Accept Residual Fallout
.accept 30502 >>Accept Jaded Heart
.accept 30504 >>Accept Emergency Response
.target Lorewalker Cho
step
#completewith EmergencyResponse
>>Pick up |cRXP_PICK_Celestial Jades|r. Use them on the |cRXP_FRIENDLY_Sha Remnants|r to weaken them
>>Kill the |cRXP_FRIENDLY_Sha Remnants|r
.collect 80074,6,30502,0x1,-1
.disablecheckbox
.complete 30502,1 
.use 80074
.mob Sha Remnant
step
#completewith EmergencyResponse
>>Kill the |cRXP_FRIENDLY_Sha Echoes|r
.complete 30500,1 
.mob Sha Echo
step << Horde
#title Go upstaris
>>|cRXP_WARN_Use|r |T620828:0|t[Cho's Fireworks] on |cRXP_FRIENDLY_General Nazgrim|r |cRXP_WARN_upstairs|r
.goto 371,48.13,61.77
.use 86467
.complete 30504,1 
.target General Nazgrim
step << Horde
>>|cRXP_WARN_Use|r |T620828:0|t[Cho's Fireworks] on |cRXP_FRIENDLY_Shademaster Kiryn|r
.goto 371,47.24,62.54
.use 86467
.complete 30504,2 
.target Shademaster Kiryn
step << Horde
>>|cRXP_WARN_Use|r |T620828:0|t[Cho's Fireworks] on |cRXP_FRIENDLY_Shokia|r
.goto 371,46.87,60.70
.use 86467
.complete 30504,3 
.target Shokia
step << Alliance
>>|cRXP_WARN_Use|r |T620828:0|t[Cho's Fireworks] on |cRXP_FRIENDLY_Admiral Taylor|r
.goto 371,48.13,61.77
.use 86511
.complete 30504,1 
.target Admiral Taylor
step << Alliance
>>|cRXP_WARN_Use|r |T620828:0|t[Cho's Fireworks] on |cRXP_FRIENDLY_Mishka|r
.goto 371,46.37,61.67
.use 86511
.complete 30504,2 
.target Mishka
step << Alliance
#label EmergencyResponse
>>|cRXP_WARN_Use|r |T620828:0|t[Cho's Fireworks] on |cRXP_FRIENDLY_Sully|r
.goto 371,47.53,59.2
.use 86511
.complete 30504,3 
.target Sully
step << Horde
#label EmergencyResponse
>>|cRXP_WARN_Use|r |T620828:0|t[Cho's Fireworks]
.goto 371,48.02,59.08
.use 86467
.complete 30504,4 
step
#completewith next
>>Kill the |cRXP_FRIENDLY_Sha Echoes|r
.complete 30500,1 
.mob Sha Echo
step
#loop
.goto 371,49.36,58.31,40,0
.goto 371,48.06,62.74,40,0
.goto 371,46.08,63.17,40,0
.goto 371,46.63,57.54,40,0
>>Pick up |cRXP_PICK_Celestial Jades|r. Use them on the |cRXP_FRIENDLY_Sha Remnants|r to weaken them
>>Kill the |cRXP_FRIENDLY_Sha Remnants|r
.collect 80074,6,30502,0x1,-1
.disablecheckbox
.complete 30502,1 
.use 80074
.mob Sha Remnant
step
#loop
.goto 371,48.99,60.95,30,0
.goto 371,47.42,62.41,30,0
.goto 371,45.98,60.57,30,0
.goto 371,47.65,58.58,30,0
>>Kill the |cRXP_FRIENDLY_Sha Echoes|r
.complete 30500,1 
.mob Sha Echo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30500 >>Turn in Residual Fallout
.turnin 30502 >>Turn in Jaded Heart
.turnin 30504 >>Turn in Emergency Response
.goto 371,49.30,61.47
.target +Lorewalker Cho
step
.goto 371,49.31,61.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
.accept 30648 >>Accept Moving On
.target Fei
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 8) Valley of the Four Winds 3
#displayname Chapter 6 - Valley of the Four Winds Pt. 3
#title Valey of the Four Winds 3
#next 9) Kun-Lai Summit
step
#completewith next
.hs >>Hearth to The Lazy Turnip
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r, |cRXP_FRIENDLY_Grainer Pan|r, and |cRXP_FRIENDLY_Grainlord Kai|r
.goto 376,52.595,62.975
.target +Grainer Pan
.accept 30028 >>Accept Grain Recovery
step
#loop
.goto 376,59.581,69.383,30,0
.goto 376,54.601,70.412,30,0
.goto 376,51.092,68.264,35,0
.goto 376,51.900,63.731,35,0
.goto 376,56.060,63.842,25,0
.goto 376,58.172,59.069,35,0
.goto 376,59.581,69.383,0
.goto 376,54.601,70.412,0
.goto 376,51.092,68.264,0
.goto 376,51.900,63.731,0
.goto 376,56.060,63.842,0
.goto 376,58.172,59.069,0
>>|cRXP_WARN_Click on the |cRXP_PICK_Stolen Malt Sacks|r|r to pick up |T133849:0|t[Sacks of Grain]
*Also look on top of buildings
.complete 30028,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainlord Kai|r and |cRXP_FRIENDLY_Li Li|r
.turnin 30028 >>Turn in Grain Recovery
.goto 376,52.73,62.99
.target +Grainlord Kai
.turnin 30032 >>Turn in The Quest for Better Barley
.accept 30047 >>Accept The Chen Taste Test
.goto 376,52.685,62.829
.target +Li Li
step
.xp >40,1
.goto 376,38.58,51.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gai Lan|r |cRXP_WARN_twice.|r
.accept 30052 >>Accept Weed War
.skipgossip 57385,2
.complete 30053,2 
.target Gai Lan
step
.goto 376,38.58,51.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gai Lan|r twice
.skipgossip 57385,1
.complete 30053,2 
.target Gai Lan
step
.isOnQuest 30052
.gossipoption 40209 >>Talk to |cRXP_FRIENDLY_Gai Lan|r to start the quest. |cRXP_WARN_Don't finish it yet, just follow the guide|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Den Mudclaw|r and |cRXP_FRIENDLY_Mung-Mung|r
.accept 30056 >>Accept The Farmer's Daughter
.complete 30053,3 
.goto 376,44.24,34.23
.target +Den Mudclaw
.accept 30054 >>Accept Enough is Ookin' Enough
.goto 376,44.160,34.239
.target +Mung-Mung
.skipgossip 62385,1
step
.isOnQuest 30052
>>Kill |cRXP_WARN_Nasty Weed|r
*Click on |cRXP_ENEMY_Ugly Weed|r
*Run over the small weed
*|cRXP_WARN_Pick up and use the |cRXP_PICK_Weed-B-Gone Gas Bomb|r to destroy multiple small and medium ones at once|r
.goto 376,39.572,51.659
.skipgossip 57385,1
.complete 30052,1 
.mob Ugly Weed
.mob Nasty Weed
step
.isOnQuest 30052
.goto 376,38.57,51.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gai Lan|r
.turnin 30052 >>Turn in Weed War
.target Gai Lan
step
#completewith MinaMudclaw
>>Kill |cRXP_ENEMY_Springtail Virmens|r. Loot them for the |T133725:0|t[|cRXP_LOOT_Virment Tooth|r]
.complete 30054,1 
.mob Springtail Gnasher
.mob Springtail Leaper
.mob Springtail Digger
.mob Springtail Thumper
step
#completewith next
.goto 376,43.286,40.939,8 >>|cRXP_WARN_Enter the cave|r
step
.goto 376,43.548,35.329,0
.goto 376,41.33,38.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mina Mudclaw|r
.turnin 30056 >>Turn in The Farmer's Daughter
.accept 30057 >>Accept Seeing Orange
.target Mina Mudclaw
step
#label MinaMudclaw
>>Leave the cave
.goto 376,44.18,34.47
.complete 30057,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mung-Mung|r and |cRXP_FRIENDLY_Den Mudclaw|r
.turnin 30054 >>Turn in Enough is Ookin' Enough
.goto 376,44.17,34.24
.target +Mung-Mung
.turnin 30057 >>Turn in Seeing Orange
.goto 376,44.259,34.205
.target +Den Mudclaw
step
.goto 376,48.31,33.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gardener Fran|r |cRXP_WARN_twice.|r
.accept 30050 >>Accept Gardener Fran and the Watering Can
.complete 30053,1 
.turnin 30053 >>Turn in Hop Hunting
.skipgossip 62377,2
.target Gardener Fran
step
#completewith next
.goto 376,48.31,33.46
.gossipoption 36034 >>Talk to |cRXP_FRIENDLY_Gardener Fran|r again to start the quest
step
>>|cRXP_WARN_Use the|r [ExtraActionButton] |cRXP_WARN_while between the glowing vegetables|r. The type of vegetable you have to water switches roughly every 20 seconds
.goto 376,49.143,32.929,25,0
.goto 376,47.658,32.382,20,0
.goto 376,49.362,31.912,25,0
.goto 376,48.295,30.983,25,0
.goto 376,48.290,29.023,25,0
.goto 376,50.468,27.960,25,0
.goto 376,51.288,29.325,15,0
.goto 376,48.336,29.195,25,0
.complete 30050,1 
step
.goto 376,48.31,33.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gardener Fran|r
.turnin 30050 >>Turn in Gardener Fran and the Watering Can
.target Gardener Fran
step
.goto 376,54.28,38.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r
.turnin 30049 >>Turn in Doesn't Hold Water
.accept 30051 >>Accept The Great Water Hunt
.target Mudmug
step
.isOnQuest 30051
.goto 376,54.28,38.74
.gossipoption 40623 >>Talk to |cRXP_FRIENDLY_Mudmug|r
step
#completewith Succula
>>|cRXP_WARN_Run to the |cRXP_PICK_Swirling Pools|r while |cRXP_FRIENDLY_Mudmug|r is following you|r. Kill the spawning |cRXP_ENEMY_mobs|r
>>|cRXP_WARN_Don't run too far away from |cRXP_FRIENDLY_Mudmug|r|r
.complete 30051,2 
.mob Glade Pincher
.mob Waterbite Creeper
.mob Toothrow Skulker
step
.goto 376,55.97,33.84
>>Kill |cRXP_ENEMY_Kracor|r
.complete 32045,1 
.mob Kracor
step
.goto 376,55.130,25.580
>>Kill |cRXP_ENEMY_Thundergill|r
.complete 32045,2 
.mob Thundergill
step
#label Succula
.goto 376,51.439,26.673
>>Kill |cRXP_ENEMY_Succula|r
.complete 32045,3 
.mob Succula
step
.goto 376,55.95,49.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r
.turnin 30051 >>Turn in The Great Water Hunt
.accept 30172 >>Accept Barreling Along
.target Mudmug
step
.xp >40,1
#completewith next
>>This quest should get pushed into your quest log automatically
.accept 30055 >>Accept Stormstout's Hops
step
>>|cRXP_WARN_Don't run too far away from |cRXP_FRIENDLY_Mudmug|r|r
.goto 376,56.00,49.05
.complete 30172,1 
step
.xp >40,1
.goto 376,55.89,49.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.turnin 30055 >>Turn in Stormstout's Hops
.turnin 30047 >>Turn in The Chen Taste Test
.turnin 30172 >>Turn in Barreling Along
.accept 30073 >>Accept The Emperor
.timer 30,Roleplay Duration
.target Chen Stormstout
step
.xp <40,1
.goto 376,55.89,49.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.turnin 30047 >>Turn in The Chen Taste Test
.turnin 30172 >>Turn in Barreling Along
.target Chen Stormstout
step
.xp >40,1
.isOnQuest 30073
#completewith next
>>Wait for the roleplay
.complete 30073,1 
step
.goto 376,55.14,47.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stonecarver Mac|r
.turnin 32045 >>Turn in Children of the Water
.target Stonecarver Mac
step
.xp >40,1
>>Wait for the roleplay
.goto 376,55.97,49.55
.complete 30073,1 
step
.xp >40,1
.goto 376,55.84,49.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.turnin 30073 >>Turn in The Emperor
.accept 30074 >>Accept Knocking on the Door
.target Chen Stormstout
step
.xp >40,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.goto 376,32.25,68.56
.turnin 30074 >>Turn in Knocking on the Door
.target Chen Stormstout
step
.xp >40,1
#completewith next
.goto 376,29.220,66.185,10 >>Fly out of range of the NPCs to skip the roleplay
step
.xp >40,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.accept 30075 >>Accept Clear the Way
.goto 376,32.12,68.34
.target +Chen Stormstout
step
.xp >40,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r, and |cRXP_FRIENDLY_Li Li|r
.accept 30076 >>Accept The Fanciest Water
.goto 376,32.254,68.275
.target +Mudmug
.accept 30077 >>Accept Barrels, Man
.goto 376,32.34,68.48
.target +Li Li
step
.xp >40,1
#completewith BarreledPandaren
>>Kill |cRXP_ENEMY_Ale-Addled Hozen|r and |cRXP_ENEMY_Mischievous Virmen|r
.complete 30075,1 
.mob Ale-Addled Hozen
.mob Mischievous Virmen
step
.xp >40,1
#completewith BarreledPandaren
>>Kill |cRXP_ENEMY_Curious Water Spirits|r. Loot them for the |T134800:0|t[|cRXP_LOOT_SPritewater Essence|r]
.complete 30076,1 
.mob Curious Water Spirit
step
.xp >40,1
#label BarreledPandaren
#loop
.goto 376,37.869,64.733,35,0
.goto 376,35.533,66.383,35,0
.goto 376,37.869,64.733,0
.goto 376,35.533,66.383,0
>>|cRXP_WARN_Hide from |cRXP_ENEMY_Ook-Ook|r when he's near
>>Click on the |cRXP_PICK_Barreled Pandaren|r to free them
.complete 30077,1 
.target Barreled Pandaren
step
.xp >40,1
#completewith next
>>Kill |cRXP_ENEMY_Ale-Addled Hozen|r and |cRXP_ENEMY_Mischievous Virmen|r
.complete 30075,1 
.mob Ale-Addled Hozen
.mob Mischievous Virmen
step
.xp >40,1
#loop
.goto 376,36.702,64.690,30,0
.goto 376,36.858,71.038,30,0
.goto 376,36.702,64.690,0
.goto 376,36.858,71.038,0
>>Kill |cRXP_ENEMY_Curious Water Spirits|r. Loot them for the |T134800:0|t[|cRXP_LOOT_SPritewater Essence|r]
.complete 30076,1 
.mob Curious Water Spirit
step
.xp >40,1
#loop
.goto 376,33.576,64.610,35,0
.goto 376,30.822,68.634,35,0
.goto 376,37.986,64.710,35,0
.goto 376,33.576,64.610,0
.goto 376,30.822,68.634,0
.goto 376,37.986,64.710,0
>>Kill |cRXP_ENEMY_Ale-Addled Hozen|r and |cRXP_ENEMY_Mischievous Virmen|r
.complete 30075,1 
.mob Ale-Addled Hozen
.mob Mischievous Virmen
step
.xp >40,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r, |cRXP_FRIENDLY_Mudmug|r and |cRXP_FRIENDLY_Chen Stormstout|r
.turnin 30077 >>Turn in Barrels, Man
.goto 376,36.13,69.06
.target +Li Li
.turnin 30076 >>Turn in The Fanciest Water
.goto 376,36.01,69.09
.target +Mudmug
.turnin 30075 >>Turn in Clear the Way
.accept 30078 >>Accept Cleaning House
.goto 376,36.037,68.975
.target +Chen Stormstout
step
.xp >40,1
.group
#completewith FizzyYelloeAlemental
.gossipoption 39238 >>Talk to |cRXP_FRIENDLY_Chen Stormstout|r to start the "boss rush"
.goto 376,36.037,68.975
.target Chen Stormstout
step
.xp >40,1
.group
.goto 376,36.037,68.975,0
.goto 376,33.857,70.717
>>Kill |cRXP_ENEMY_Eddy|r
.complete 30078,1 
.mob Eddy
step
.xp >40,1
.group
.goto 376,36.037,68.975,0
.goto 376,34.588,70.465
>>Kill |cRXP_ENEMY_Jooga|r
*|cRXP_WARN_Click on |cRXP_PICK_Empty Kegs|r to stun him|r
.complete 30078,2 
.mob Jooga
step
.xp >40,1
.group
#label FizzyYelloeAlemental
.goto 376,36.037,68.975,0
.goto 376,38.67,69.34
>>Kill |cRXP_WARN_all the|r |cRXP_ENEMY_Fizzy Yellow Spirits|r to spawn the |cRXP_ENEMY_Fizzy Yellow Alemental|r
>>Kill |cRXP_ENEMY_Fizzy Yellow Alemental|r
.complete 30078,3 
.mob Fizzy Yellow Spirits
.mob Fizzy Yellow Alemental
step
.xp >40,1
.group
.goto 376,36.00,69.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.turnin 30078 >>Turn in Cleaning House
.target Chen Stormstout
step
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tani|r and |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
.accept 30183 >>Accept Stalker Mastery
.goto 376,16.195,82.538
.target +Tani
.accept 30181 >>Accept Mushan Mastery
.goto 376,16.068,82.618
.target +Hemet Nesingwary Jr.
step
.xp >45,1
#completewith next
>>Kill |cRXP_ENEMY_Dustback Mushan|r
.complete 30181,1 
.mob Dustback Mushan
step
.xp >45,1
#loop
.goto 376,16.099,67.419,42,0
.goto 376,12.860,68.913,30,0
.goto 376,10.496,71.845,30,0
.goto 376,15.001,73.442,40,0
.goto 376,11.775,80.562,30,0
.goto 376,14.325,78.846,42,0
.goto 376,16.099,67.419,0
.goto 376,12.860,68.913,0
.goto 376,10.496,71.845,0
.goto 376,15.001,73.442,0
.goto 376,11.775,80.562,0
.goto 376,14.325,78.846,0
>>Kill |cRXP_ENEMY_Gorge Stalker|r
.complete 30183,1 
.mob Gorge Stalker
step
.xp >45,1
#loop
.goto 376,14.440,66.456,55,0
.goto 376,26.025,68.550,42,0
.goto 376,26.957,80.187,42,0
.goto 376,11.589,79.370,45,0
.goto 376,14.440,66.456,0
.goto 376,26.025,68.550,0
.goto 376,26.957,80.187,0
.goto 376,11.589,79.370,0
>>Kill |cRXP_ENEMY_Dustback Mushan|r
.complete 30181,1 
.mob Dustback Mushan
step
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tani|r and |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
.turnin 30183 >>Turn in Stalker Mastery
.accept 30182 >>Accept Fox Mastery
.goto 376,16.195,82.538
.target +Tani
.turnin 30181 >>Turn in Mushan Mastery
.goto 376,16.068,82.626
.target +Hemet Nesingwary Jr.
step
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r and |cRXP_FRIENDLY_Matt "Lucky" Gotcher|r
.accept 30184 >>Accept Mushan Mastery: Darkhide
.goto 376,16.009,82.484
.target +Hemet Nesingwary Jr.
.accept 32038 >>Accept Stag Mastery
.goto 376,15.90,82.24
.target +Matt "Lucky" Gotcher
step
.xp >45,1
#completewith DarkhidesHead
>>Kill |cRXP_ENEMY_Wilderland Stags|r
.complete 32038,1 
.mob Wilderland Stag
step
.xp >45,1
#completewith DarkhidesHead
>>Kill |cRXP_ENEMY_Sly Foxes|r and |cRXP_ENEMY_Sly Pups|r
*|cRXP_WARN_Most of the time they're invisible|r
.complete 30182,1 
.mob Sly Fox
.mob Sly Pup
step
.xp >45,1
#label DarkhidesHead
>>Kill |cRXP_ENEMY_Darkhide|r. Loot him for |T132243:0|t[|cRXP_LOOT_Darkhide's Head|r]
.goto 376,26.106,75.552
.complete 30184,1 
.mob Darkhide
step
.xp >45,1
#completewith WilderlandStags
#hidewindow
#loop
.goto 376,22.277,76.530,25,0
.goto 376,20.213,69.976,42,0
.goto 376,28.106,68.363,45,0
.goto 376,30.175,82.637,35,0
.goto 376,20.904,81.513,42,0
.goto 376,22.277,76.530,0
.goto 376,20.213,69.976,0
.goto 376,28.106,68.363,0
.goto 376,30.175,82.637,0
.goto 376,20.904,81.513,0
+1
step
.xp >45,1
#completewith next
>>Kill |cRXP_ENEMY_Wilderland Stags|r
.complete 32038,1 
.mob Wilderland Stag
step
.xp >45,1
>>Kill |cRXP_ENEMY_Sly Foxes|r and |cRXP_ENEMY_Sly Pups|r
*|cRXP_WARN_Most of the time they're invisible|r
.complete 30182,1 
.mob Sly Fox
.mob Sly Pup
step
.xp >45,1
#label WilderlandStags
>>Kill |cRXP_ENEMY_Wilderland Stags|r
.complete 32038,1 
.mob Wilderland Stag
step
.goto 376,15.89,82.24
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matt "Lucky" Gotcher|r
.turnin 32038 >>Turn in Stag Mastery
.target Matt "Lucky" Gotcher
step
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tani|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 30182 >>Turn in Fox Mastery
.goto 376,16.201,82.534
.target +Tani
.turnin 30184 >>Turn in Mushan Mastery: Darkhide
.goto 376,16.01,82.50
.target +Hemet Nesingwary
step
.goto 376,16.07,82.62
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
.accept 30185 >>Accept Tortoise Mastery
.target Hemet Nesingwary Jr.
step
.xp >45,1
#loop
.goto 376,18.753,78.292,20,0
.goto 376,22.170,75.040,20,0
.goto 376,21.877,71.745,20,0
.goto 376,19.650,72.880,20,0
.goto 376,18.753,78.292,0
.goto 376,22.170,75.040,0
.goto 376,21.877,71.745,0
.goto 376,19.650,72.880,0
>>Kill |cRXP_ENEMY_Bulgeback Tortoises|r. Loot them for the |T1:0|t[|cRXP_LOOT_Intact Tortoise Shells|r]
.complete 30185,1 
.mob Bulgeback Tortoise
step
.xp >45,1
.goto 376,19.91,75.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
.turnin 30185 >>Turn in Tortoise Mastery
.target Hemet Nesingwary Jr.
.accept 30186 >>Accept Parental Mastery
step
.xp >45,1
#title Swim down
#completewith RescueHemetJr
.goto 376,21.834,74.394,10 >>|cRXP_WARN_Enter the underwater cave|r
step
.xp >45,1
#completewith RescueHemetJr
.goto 376,24.537,74.631
.gossipoption 40247 >>Talk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
step
.xp >45,1
#label RescueHemetJr
.goto 376,24.537,74.631
>>Kill |cRXP_ENEMY_Torjar's Bane|r
.complete 30186,1 
.mob Torjar's Bane
step
.xp >45,1
.goto 376,16.01,82.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 30186 >>Turn in Parental Mastery
.target Hemet Nesingwary
step
.goto 376,19.87,56.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
.turnin 29872 >>Turn in Lin Tenderpaw
.accept 29981 >>Accept Stemming the Swarm
.target Lin Tenderpaw
step
.goto 376,19.55,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
.accept 29982 >>Accept Evacuation Orders
.target Loon Mai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haiyun Greentill|r
.goto 376,15.85,56.27
.skipgossip 57123,1
.skipgossip 57124,1
.complete 29982,3 
.target Haiyun Greentill
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mia Marlfur|r
.goto 376,15.48,54.93
.skipgossip 57126,1
.skipgossip 57127,1
.complete 29982,4 
.target Mia Marlfur
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feng Shadepaw|r
.goto 376,12.850,55.721
.skipgossip 57121,1
.skipgossip 57122,1
.complete 29982,2 
.target Feng Shadepaw
step
#completewith next
>>Kill |cRXP_ENEMY_Ik'thik mantid|r
.complete 29981,1 
.mob Ik'thik Wingblade
.mob Ik'thik Swiftclaw
step
#completewith next
.gossipoption 40360 >>Talk to |cRXP_FRIENDLY_Wei Blacksoil|r once
.timer 1,Roleplay Duration
step
>>Kill the |cRXP_ENEMY_Ik'thik Ambusher|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wei Blacksoil|r twice
.goto 376,7.15,54.83
.skipgossip 57120,1
.complete 29982,1 
.mob Ik'thik Ambusher
.target Wei Blacksoil
step
#loop
.goto 376,9.85,47.00,42,0
.goto 376,11.64,52.86,42,0
.goto 376,12.50,60.47,38,0
.goto 376,9.46,60.36,38,0
.goto 376,9.85,47.00,0
.goto 376,11.64,52.86,0
.goto 376,12.50,60.47,0
.goto 376,9.46,60.36,0
>>Kill |cRXP_ENEMY_Ik'thik mantid|r
.complete 29981,1 
.mob Ik'thik Wingblade
.mob Ik'thik Swiftclaw
step
.goto 376,19.55,56.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
.turnin 29981 >>Turn in Stemming the Swarm
.turnin 29982 >>Turn in Evacuation Orders
.accept 29983 >>Accept The Hidden Master
.target Loon Mai
step
.goto 376,18.29,31.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.turnin 29983 >>Turn in The Hidden Master
.accept 29984 >>Accept Unyielding Fists: Trial of Bamboo
.target Master Bruised Paw
step
.isOnQuest 29984
.vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.timer 26,Roleplay Duration
.skipgossip 56714,1
.target Master Bruised Paw
step
>>Use |T132334:0|t[Unyielding Fist] (1) |cRXP_WARN_when the circle in the lower half of your screen is filled and glows|r
.goto 376,18.29,31.22
.complete 29984,1 
step
.goto 376,18.30,31.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.turnin 29984 >>Turn in Unyielding Fists: Trial of Bamboo
.target Master Bruised Paw
.accept 29985 >>Accept They Will Be Mist
.accept 29986 >>Accept Fog Wards
step
.goto 376,18.06,31.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
.accept 29992 >>Accept Tenderpaw By Name, Tender Paw By Reputation
.target Lin Tenderpaw
step
#completewith SouthernFogWard
>>Kill |cRXP_ENEMY_Mist Incarnations|r
.complete 29985,1 
.mob Mist Incarnation
step
#completewith SouthernFogWard
>>|cRXP_WARN_Click on the |cRXP_PICK_Jademoons|r to pick up|r |T136041:0|t[Jademoon Leaves]
.complete 29992,1 
step
>>Click on the |cRXP_PICK_Northern Fog Ward|r
.goto 376,16.017,32.103
.complete 29986,1 
step
>>Click on the |cRXP_PICK_Western Fog Ward|r
.goto 376,14.853,36.827
.complete 29986,2 
step
#label SouthernFogWard
>>Click on the |cRXP_PICK_Southern Fog Ward|r
.goto 376,18.104,41.459
.complete 29986,3 
step
#completewith MistIncarnation
#hidewindow
#loop
.goto 376,18.264,38.237,25,0
.goto 376,19.074,35.042,30,0
.goto 376,17.877,33.701,25,0
.goto 376,16.855,29.516,25,0
.goto 376,15.910,33.957,25,0
.goto 376,14.206,41.283,25,0
.goto 376,18.896,41.497,25,0
.goto 376,18.264,38.237,0
.goto 376,19.074,35.042,0
.goto 376,17.877,33.701,0
.goto 376,16.855,29.516,0
.goto 376,15.910,33.957,0
.goto 376,14.206,41.283,0
.goto 376,18.896,41.497,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Mist Incarnations|r
.complete 29985,1 
.mob Mist Incarnation
step
>>|cRXP_WARN_Click on the |cRXP_PICK_Jademoons|r to pick up|r |T136041:0|t[Jademoon Leaves]
.complete 29992,1 
step
#label MistIncarnation
>>Kill |cRXP_ENEMY_Mist Incarnations|r
.complete 29985,1 
.mob Mist Incarnation
step
.goto 376,18.06,31.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
.turnin 29992 >>Turn in Tenderpaw By Name, Tender Paw By Reputation
.target Lin Tenderpaw
step
.goto 376,18.30,31.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.turnin 29985 >>Turn in They Will Be Mist
.turnin 29986 >>Turn in Fog Wards
.accept 29987 >>Accept Unyielding Fists: Trial of Wood
.target Master Bruised Paw
step
.isOnQuest 29987
.vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.timer 18,Roleplay Duration
.goto 376,18.30,31.23
.skipgossip 56714,1
.target Master Bruised Paw
step
.goto 376,18.28,32.14
>>Use |T132334:0|t[Unyielding Fist] (1) |cRXP_WARN_when the circle in the lower half of your screen is filled and glows|r
.complete 29987,1 
step
.goto 376,18.29,31.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.turnin 29987 >>Turn in Unyielding Fists: Trial of Wood
.target Master Bruised Paw
TODO for Loremaster: Add missing quests after this point
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 9a) Townlong Steppes
#displayname Chapter 8 - Townlong Steppes
#next 9b) Dread Wastes
step
.goto 388,71.16,56.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 31695 >>Turn in Beyond the Wall
.accept 30814 >>Accept A Foot in the Door
.target Taran Zhu
step
#loop
.goto 388,70.33,54.19,30,0
.goto 388,70.06,53.00,30,0
.goto 388,71.12,52.16,30,0
.goto 388,71.47,53.14,30,0
.goto 388,70.33,54.19,0
.goto 388,70.06,53.00,0
.goto 388,71.12,52.16,0
.goto 388,71.47,53.14,0
>>Kill |cRXP_ENEMY_Osul Charger|r
.complete 30814,1 
.mob osul charger
step
.goto 388,71.16,56.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30814 >>Turn in A Foot in the Door
.accept 30769 >>Accept First Assault
.accept 30770 >>Accept Running Rampant
.accept 30771 >>Accept Perfect Pitch
.target Taran Zhu
step
#completewith Osul Sharphorn
#hidewindow
#loop
.goto 388,68.96,55.25,40,0
.goto 388,68.43,54.65,40,0
.goto 388,67.26,54.54,40,0
.goto 388,67.43,53.88,40,0
.goto 388,68.39,53.10,40,0
.goto 388,68.80,52.01,40,0
.goto 388,69.37,50.29,40,0
.goto 388,68.96,55.25,0
.goto 388,68.43,54.65,0
.goto 388,67.26,54.54,0
.goto 388,67.43,53.88,0
.goto 388,68.39,53.10,0
.goto 388,68.80,52.01,0
.goto 388,69.37,50.29,0
+1
step
#completewith Pots
>>Kill |cRXP_ENEMY_Osul Sharphorn|r
.complete 30769,1 
.mob osul sharphorn
step
#completewith Pots
>>Interact with |cRXP_FRIENDLY_Long-Haired Yak|r and |cRXP_FRIENDLY_Steppebeast|r
.complete 30770,1 
.target Long-Haired Yak
.target Steppebeast
step
#label Pots
>>Click on |cRXP_PICK_Pots|r
.complete 30771,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Osul Sharphorn|r
.complete 30769,1 
.mob osul sharphorn
step
>>Interact with |cRXP_FRIENDLY_Long-Haired Yak|r and |cRXP_FRIENDLY_Steppebeast|r
.complete 30770,1 
.target Long-Haired Yak
.target Steppebeast
step
#label Osul Sharphorn
>>Kill |cRXP_ENEMY_Osul Sharphorn|r
.complete 30769,1 
.mob osul sharphorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r and |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30769 >>Turn in First Assault
.accept 30772 >>Accept Seeing Red
.accept 30774 >>Accept Ranger Rescue
.goto 388,67.25,52.22
.turnin 30770 >>Turn in Running Rampant
.turnin 30771 >>Turn in Perfect Pitch
.accept 30773 >>Accept Pitching In
.goto 388,67.21,52.28
.target Suna Silentstrike
.target Ban Bearheart
step
#completewith next
>>Kill |cRXP_ENEMY_Osul Marauder.|r Loot them for |cRXP_LOOT_Stone Keys|r and use them to open nearby |cRXP_PICK_Cages.|r
.complete 30772,1 
.complete 30774,1 
.collect 81178,4,30774,0x2,-1
.disablecheckbox
.mob osul marauder
.target Longying Ranger
step
.goto 388,67.01,51.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katak the Defeated|r
.accept 30775 >>Accept The Exile
.target Katak the Defeated
step
#completewith Ku-Tong
>>Kill |cRXP_ENEMY_Osul Marauder|r |cRXP_ENEMY_Osul Spitfire|r Loot them for |cRXP_LOOT_Stone Keys|r and use them to open nearby |cRXP_PICK_Cages.|r
.complete 30772,1 
.complete 30774,1 
.collect 81178,4,30774,0x2,-1
.disablecheckbox
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
#completewith Ku-Tong
>>Throw |T463515:0|t[Ban's Explosives] on |cRXP_WARN_Ballistas.|r |cFFFF0000Don't throw it on the ones with the spinning pole.|r
.complete 30773,1 
.use 81193
step
.goto 388,66.97,47.93,10,0
.goto 388,66.96,48.25
#label Ku-Tong
>>Kill |cRXP_ENEMY_Ku-Tong|r |cRXP_WARN_inside the hut.|r
.complete 30775,3 
.mob ku-tong
step
#completewith Free Lin Silentstrike
>>Throw |T463515:0|t[Ban's Explosives] on |cRXP_WARN_Ballistas.|r |cFFFF0000Don't throw it on the ones with the spinning pole.|r
.complete 30773,1 
.use 81193
step
#completewith Free Lin Silentstrike
>>Kill |cRXP_ENEMY_Osul Marauder|r |cRXP_ENEMY_Osul Spitfire|r Loot them for |cRXP_LOOT_Stone Keys|r and use them to open nearby |cRXP_PICK_Cages.|r
.complete 30772,1 
.complete 30774,2 
.collect 81178,4,30774,0x2,-1
.disablecheckbox
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
.goto 388,66.58,49.16
#label Free Lin Silentstrike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Silentstrike|r
.complete 30774,3 
.skipgossip
.target Lin Silentstrike
step
#completewith Dominance
>>Kill |cRXP_ENEMY_Osul Marauder|r |cRXP_ENEMY_Osul Spitfire|r Loot them for |cRXP_LOOT_Stone Keys|r and use them to open nearby |cRXP_PICK_Cages.|r
.complete 30772,1 
.collect 81178,4,30774,0x2,-1
.complete 30774,2 
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
#completewith Dominance
>>Throw |T463515:0|t[Ban's Explosives] on |cRXP_WARN_Ballistas.|r |cFFFF0000Don't throw it on the ones with the spinning pole.|r
.complete 30773,1 
.use 81193
step
#label Dominance
.achievement 6847,2 >>Click on the |cRXP_PICK_Scroll|r
step
#completewith Urang
>>Kill |cRXP_ENEMY_Osul Marauder|r |cRXP_ENEMY_Osul Spitfire|r Loot them for |cRXP_LOOT_Stone Keys|r and use them to open nearby |cRXP_PICK_Cages.|r
.complete 30772,1 
.collect 81178,4,30774,0x2,-1
.complete 30774,2 
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
#completewith Urang
>>Throw |T463515:0|t[Ban's Explosives] on |cRXP_WARN_Ballistas.|r |cFFFF0000Don't throw it on the ones with the spinning pole.|r
.complete 30773,1 
.use 81193
step
.goto 388,64.80,50.21
#label Urang
>>Kill |cRXP_ENEMY_Urang|r |cRXP_WARN_inside the hut.|r
.complete 30775,2 
.mob urang
step
#completewith Battat
>>Kill |cRXP_ENEMY_Osul Marauder|r |cRXP_ENEMY_Osul Spitfire|r Loot them for |cRXP_LOOT_Stone Keys|r and use them to open nearby |cRXP_PICK_Cages.|r
.complete 30772,1 
.collect 81178,4,30774,0x2,-1
.complete 30774,2 
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
#completewith Battat
>>Throw |T463515:0|t[Ban's Explosives] on |cRXP_WARN_Ballistas.|r |cFFFF0000Don't throw it on the ones with the spinning pole.|r
.complete 30773,1 
.use 81193
step
.goto 388,65.75,51.4,10,0
.goto 388,65.72,51.64
#label Battat
>>Kill |cRXP_ENEMY_Battat|r |cRXP_WARN_inside the hut.|r
.complete 30775,1 
.mob battat
step
#completewith Osul Marauder
#hidewindow
#loop
.goto 388,66.14,52.44,40,0
.goto 388,67.49,50.99,40,0
.goto 388,68.05,49.37,40,0
.goto 388,67.27,46.01,40,0
.goto 388,67.43,44.31,40,0
.goto 388,67.10,43.57,40,0
.goto 388,66.34,45.13,40,0
.goto 388,66.25,46.27,40,0
.goto 388,64.89,50.58,40,0
.goto 388,66.14,52.44,0
.goto 388,67.49,50.99,0
.goto 388,68.05,49.37,0
.goto 388,67.27,46.01,0
.goto 388,67.43,44.31,0
.goto 388,67.10,43.57,0
.goto 388,66.34,45.13,0
.goto 388,66.25,46.27,0
.goto 388,64.89,50.58,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Osul Marauder|r |cRXP_ENEMY_Osul Spitfire|r Loot them for |cRXP_LOOT_Stone Keys|r and use them to open nearby |cRXP_PICK_Cages.|r
.complete 30772,1 
.collect 81178,4,30774,0x2,-1
.complete 30774,2 
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
>>Throw |T463515:0|t[Ban's Explosives] on |cRXP_WARN_Ballistas.|r |cFFFF0000Don't throw it on the ones with the spinning pole.|r
.complete 30773,1 
.use 81193
step
#label Osul Marauder
>>Kill |cRXP_ENEMY_Osul Marauder|r |cRXP_ENEMY_Osul Spitfire|r Loot them for |cRXP_LOOT_Stone Keys|r and use them to open nearby |cRXP_PICK_Cages.|r
.complete 30772,1 
.collect 81178,4,30774,0x2,-1
.complete 30774,2 
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r and |cRXP_FRIENDLY_Suna Silentstrike|r
.turnin 30774 >>Turn in Ranger Rescue
.turnin 30772 >>Turn in Seeing Red
.turnin 30773 >>Turn in Pitching In
.goto 388,67.21,52.27
.accept 30776 >>Accept Jung Duk
.goto 388,67.26,52.22
.target Suna Silentstrike
.target Ban Bearheart
step
.goto 388,66.99,51.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katak the Defeated|r
.turnin 30775 >>Turn in The Exile
.target Katak the Defeated
step
.goto 388,66.66,51
>>Click on |cRXP_PICK_Ceremonial Pile|r and Kill |cRXP_ENEMY_Jung Duk.|r
.complete 30776,1 
.mob jung duk
step
.goto 388,71.02,56.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30776 >>Turn in Jung Duk
.accept 30777 >>Accept In Search of Suna
.timer 15,RP
.target Ban Bearheart
step
.goto 388,82.68,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30777 >>Turn in In Search of Suna
.accept 30778 >>Accept Dust to Dust
.accept 30779 >>Accept Slaying the Scavengers
.target Ban Bearheart
step
.goto 388,82.71,73.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiao Tu|r
.accept 30781 >>Accept Last Toll of the Yaungol
.target Xiao Tu
step
.goto 388,82.59,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
.accept 30780 >>Accept Totemic Research
.target Yalia Sagewhisper
step
#completewith Eastern Smoke Trail
>>Kill |cRXP_ENEMY_Ashfang Hyena|r
.complete 30779,1 
.mob ashfang hyena
step
#completewith Eastern Smoke Trail
>>Click on |cRXP_PICK_Palewind Totems|r
.complete 30780,1 
step
#completewith Eastern Smoke Trail
>>Throw |T135432:0|t[Shado-Pan Torch] on |cRXP_ENEMY_Palewind Villagers|r
.complete 30778,1 
.mob Palewind Villager
step
#label Eastern Smoke Trail
.goto 388,81.26,72.27
>>Go to the smoke trail but ensure |cRXP_FRIENDLY_Xiao Tu|r is following you.
*|cRXP_WARN_Wait for him at the smoke trail.|r
*|cFFFF0000In case you lose him, talk to him at his original location.|r
.complete 30781,2 
.timer 6,RP
.target Xiao Tu
step
#completewith Northwestern Smoke Trail
>>Kill |cRXP_ENEMY_Ashfang Hyena|r
.complete 30779,1 
.mob ashfang hyena
step
#completewith Northwestern Smoke Trail
>>Click on |cRXP_PICK_Palewind Totems|r
.complete 30780,1 
step
#completewith Northwestern Smoke Trail
>>Throw |T135432:0|t[Shado-Pan Torch] on |cRXP_ENEMY_Palewind Villagers|r
.complete 30778,1 
.mob Palewind Villager
step
#label Northwestern Smoke Trail
.goto 388,84.12,70.62
>>Go to the smoke trail but ensure |cRXP_FRIENDLY_Xiao Tu|r is following you.
*|cRXP_WARN_Wait for him at the smoke trail.|r
*|cFFFF0000In case you lose him, talk to him at his original location.|r
.complete 30781,4 
.target Xiao Tu
step
#completewith Eastern Smoke Trail
>>Kill |cRXP_ENEMY_Ashfang Hyena|r
.complete 30779,1 
.mob ashfang hyena
step
#completewith Eastern Smoke Trail
>>Click on |cRXP_PICK_Palewind Totems|r
.complete 30780,1 
step
#completewith Eastern Smoke Trail
>>Throw |T135432:0|t[Shado-Pan Torch] on |cRXP_ENEMY_Palewind Villagers|r
.complete 30778,1 
.mob Palewind Villager
step
#label Eastern Smoke Trail
.goto 388,84.86,71.55
>>Go to the smoke trail but ensure |cRXP_FRIENDLY_Xiao Tu|r is following you.
*|cRXP_WARN_Wait for him at the smoke trail.|r
*|cFFFF0000In case you lose him, talk to him at his original location.|r
.complete 30781,1 
.target Xiao Tu
step
#completewith Trapped in a strange land
>>Kill |cRXP_ENEMY_Ashfang Hyena|r
.complete 30779,1 
.mob ashfang hyena
step
#completewith Trapped in a strange land
>>Click on |cRXP_PICK_Palewind Totems|r
.complete 30780,1 
step
#completewith Trapped in a strange land
>>Throw |T135432:0|t[Shado-Pan Torch] on |cRXP_ENEMY_Palewind Villagers|r
.complete 30778,1 
.mob Palewind Villager
step
#label Trapped in a strange land
.goto 388,84.08,72.87
.achievement 6847,4 >>Click on the |cRXP_PICK_Scroll|r
step
#completewith Southern Smoke Trail
>>Click on |cRXP_PICK_Palewind Totems|r
.complete 30780,1 
step
#completewith Southern Smoke Trail
>>Throw |T135432:0|t[Shado-Pan Torch] on |cRXP_ENEMY_Palewind Villagers|r
.complete 30778,1 
.mob Palewind Villager
step
#label Southern Smoke Trail
.goto 388,83.49,78.51
>>Go to the smoke trail but ensure |cRXP_FRIENDLY_Xiao Tu|r is following you.
*|cFFFF0000In case you lose him, talk to him at his original location.|r
.complete 30781,3 
.target Xiao Tu
step
#completewith Ashfang Hyena
#hidewindow
#loop
.goto 388,83.02,79.57,40,0
.goto 388,83.00,77.23,40,0
.goto 388,82.62,74.11,40,0
.goto 388,80.27,71.93,40,0
.goto 388,82.65,70.41,40,0
.goto 388,83.02,79.57,0
.goto 388,83.00,77.23,0
.goto 388,82.62,74.11,0
.goto 388,80.27,71.93,0
.goto 388,82.65,70.41,0
+1
step
#completewith Palewind Villagers
>>Kill |cRXP_ENEMY_Ashfang Hyena|r
.complete 30779,1 
.mob ashfang hyena
step
#completewith Palewind Villagers
>>Click on |cRXP_PICK_Palewind Totems|r
.complete 30780,1 
step
#label Palewind Villagers
>>Throw |T135432:0|t[Shado-Pan Torch] on |cRXP_ENEMY_Palewind Villagers|r
.complete 30778,1 
.mob Palewind Villager
step
#completewith next
>>Kill |cRXP_ENEMY_Ashfang Hyena|r
.complete 30779,1 
.mob ashfang hyena
step
>>Click on |cRXP_PICK_Palewind Totems|r
.complete 30780,1 
step
#label Ashfang Hyena
>>Kill |cRXP_ENEMY_Ashfang Hyena|r
.complete 30779,1 
.mob ashfang hyena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r and |cRXP_FRIENDLY_Yalia Sagewhisper|r
.turnin 30778 >>Turn in Dust to Dust
.turnin 30779 >>Turn in Slaying the Scavengers
.turnin 30781 >>Turn in Last Toll of the Yaungol
.goto 388,82.68,73.03
.turnin 30780 >>Turn in Totemic Research
.accept 30827 >>Accept What Lies Beneath
.goto 388,82.6,73.03
.target Yalia Sagewhisper
.target Ban Bearheart
step
.goto 388,82.59,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
.complete 30827,1 
.timer 18,RP
.skipgossip 60864,1
.target Yalia Sagewhisper
step
.goto 388,82.59,73.25
>>Click on |cRXP_PICK_Totem of Kindness|r
.complete 30827,2 
step
.goto 388,82.69,73.64
>>Click on |cRXP_PICK_Totem of Serenity|r
.complete 30827,4 
step
.goto 388,82.42,73.57
>>Click on |cRXP_PICK_Totem of Tranquility|r
.complete 30827,3 
.timer 30,RP
step
>>|cRXP_WARN_During quest downtime, maximize efficiency by focusing on the following activities based on your current needs:|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397
.complete 30827,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r and |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30827 >>Turn in What Lies Beneath
.accept 30783 >>Accept Hatred Becomes Us
.goto 388,82.59,73.04
.accept 30782 >>Accept Spiteful Spirits
.goto 388,82.68,73.03
.target Ban Bearheart
step
#completewith Spiteful Spirit
#hidewindow
#loop
.goto 388,83.22,73.59,40,0
.goto 388,82.28,73.91,40,0
.goto 388,81.97,72.68,40,0
.goto 388,83.02,71.87,40,0
.goto 388,83.22,73.59,0
.goto 388,82.28,73.91,0
.goto 388,81.97,72.68,0
.goto 388,83.02,71.87,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Spiteful Spirit|r
.complete 30782,1 
.mob spiteful spirit
step
>>Throw |T310733:0|t[Totem of Harmony] on |cRXP_FRIENDLY_Crazed Shado-Pan Rangers|r and kill |cRXP_ENEMY_Seething Hatred.|r
.complete 30783,1 
.mob Seething Hatred
step
#label Spiteful Spirit
>>Kill |cRXP_ENEMY_Spiteful Spirit|r
.complete 30782,1 
.mob spiteful spirit
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r and |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30783 >>Turn in Hatred Becomes Us
.goto 388,82.6,73.03
.turnin 30782 >>Turn in Spiteful Spirits
.accept 30784 >>Accept The Point of No Return
.goto 388,82.67,73.03
.target Yalia Sagewhisper
.target Ban Bearheart
step
.goto 388,84.08,70.52
>>Kill |cRXP_ENEMY_Suna Silentstrike|r
.complete 30784,1 
.mob Suna Silentstrike
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r and |cRXP_FRIENDLY_Yalia Sagewhisper|r
.turnin 30784 >>Turn in The Point of No Return
.accept 30785 >>Accept Gao-Ran Battlefront
.goto 388,82.68,73.02
.goto 388,82.59,73.03
.target Yalia Sagewhisper
.target Ban Bearheart
step
.goto 388,76.41,82.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30785 >>Turn in Gao-Ran Battlefront
.target Taran Zhu
.accept 30884 >>Accept Behind the Battlefront
step
.goto 388,75.86,83.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.accept 30891 >>Accept Treatment for the Troops
.target Septi the Herbalist
step
#completewith next
>>Click on |cRXP_PICK_Violet Citron|r
.complete 30891,1 
step
.goto 388,76.94,78.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin 30884 >>Turn in Behind the Battlefront
.target Taoshi
.accept 30887 >>Accept Unwelcome Intruders
step
#completewith Krik'thik Deep-Scout
#hidewindow
#loop
.goto 388,77.99,80.34,40,0
.goto 388,78.69,80.95,40,0
.goto 388,79.41,78.88,40,0
.goto 388,79.84,76.93,40,0
.goto 388,78.77,75.90,40,0
.goto 388,78.41,75.15,40,0
.goto 388,76.48,76.91,40,0
.goto 388,77.99,80.34,0
.goto 388,78.69,80.95,0
.goto 388,79.41,78.88,0
.goto 388,79.84,76.93,0
.goto 388,78.77,75.90,0
.goto 388,78.41,75.15,0
.goto 388,76.48,76.91,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Krik'thik Deep-Scout|r
.complete 30887,1 
.mob krik'thik deep-scout
step
>>Click on |cRXP_PICK_Violet Citron|r
.complete 30891,1 
step
#label Krik'thik Deep-Scout
>>Kill |cRXP_ENEMY_Krik'thik Deep-Scout|r
.complete 30887,1 
.mob krik'thik deep-scout
step
.goto 388,75.86,83.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.turnin 30891 >>Turn in Treatment for the Troops
.target Septi the Herbalist
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r and |cRXP_FRIENDLY_Mao the Lookout|r
.turnin 30887 >>Turn in Unwelcome Intruders
.accept 30888 >>Accept Breach in the Defenses
.accept 30890 >>Accept The Restless Watch
.goto 388,79.47,84.47
.accept 30889 >>Accept Trap Setting
.goto 388,79.38,84.45
.target Mao the Lookout
.target Taoshi
step
#completewith Scout Jai-gan
*Use |T135815:0|t[Shado-Pan Flare] near moving red dust to make |cRXP_ENEMY_Krik'thik Scentlayer|r visible.
>>Kill |cRXP_ENEMY_Krik'thik Scentlayer|r
.complete 30888,1 
.mob krik'thik scentlayer
.use 81925
step
#completewith Scout Jai-gan
>>Click on |cRXP_PICK_Shado-Pan Spike Traps|r
.complete 30889,1 
step
.goto 388,82.21,84.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Wei-chin|r
.complete 30890,1 
.skipgossip
.target Scout Wei-chin
step
.goto 388,81.30,86.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Long|r
.complete 30890,2 
.skipgossip
.target Scout Long
step
.goto 388,82.52,89.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Ying|r
.complete 30890,3 
.skipgossip
.target Scout Ying
step
#label Scout Jai-gan
.goto 388,79.02,90.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jai-gan|r
.complete 30890,4 
.skipgossip
.target Scout Jai-gan
step
#completewith Krik'thik Scentlayer
#hidewindow
#loop
.goto 388,80.71,87.11,40,0
.goto 388,81.30,83.97,40,0
.goto 388,81.34,82.25,40,0
.goto 388,81.98,84.61,40,0
.goto 388,81.87,88.40,40,0
.goto 388,81.11,90.75,40,0
.goto 388,80.71,87.11,0
.goto 388,81.30,83.97,0
.goto 388,81.34,82.25,0
.goto 388,81.98,84.61,0
.goto 388,81.87,88.40,0
.goto 388,81.11,90.75,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Krik'thik Scentlayer|r
*Use |T135815:0|t[Shado-Pan Flare] near moving red dust to make |cRXP_ENEMY_Krik'thik Scentlayer|r visible.
.complete 30888,1 
.mob krik'thik scentlayer
step
>>Click on |cRXP_PICK_Shado-Pan Spike Traps|r
.complete 30889,1 
.use 81925
step
#label Krik'thik Scentlayer
>>Kill |cRXP_ENEMY_Krik'thik Scentlayer|r
*Use |T135815:0|t[Shado-Pan Flare] near moving red dust to make |cRXP_ENEMY_Krik'thik Scentlayer|r visible.
.complete 30888,1 
.mob krik'thik scentlayer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r and |cRXP_FRIENDLY_Mao the Lookout|r
.turnin 30888 >>Turn in Breach in the Defenses
.turnin 30890 >>Turn in The Restless Watch
.accept 30960 >>Accept Returning from the Pass
.goto 388,79.46,84.47
.turnin 30889 >>Turn in Trap Setting
.goto 388,79.39,84.46
.target Mao the Lookout
.target Taoshi
step
.goto 388,76.41,82.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30960 >>Turn in Returning from the Pass
.target Taran Zhu
.accept 30893 >>Accept The Endless Swarm
step
.goto 388,75.86,83.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.accept 30892 >>Accept Back on Their Feet
.accept 30894 >>Accept Rummaging Through the Remains
.target Septi the Herbalist
step
#completewith Krik'thik Limbpincer
#hidewindow
#loop
.goto 388,73.68,86.64,40,0
.goto 388,73.53,88.82,40,0
.goto 388,74.50,90.48,40,0
.goto 388,75.25,89.01,40,0
.goto 388,74.78,87.34,40,0
.goto 388,74.72,85.84,40,0
.goto 388,73.68,86.64,0
.goto 388,73.53,88.82,0
.goto 388,74.50,90.48,0
.goto 388,75.25,89.01,0
.goto 388,74.78,87.34,0
.goto 388,74.72,85.84,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Krik'thik Limbpincer|r and |cRXP_ENEMY_Krik'thik Locust-Guard|r and click on their |cRXP_PICK_Krik'thik Limbs|r
.complete 30893,1 
.complete 30894,1 
.mob Krik'thik Limbpincer
.mob Krik'thik Locust-Guard
step
>>Use |T237266:0|t[Citron-Infused Bandages] on |cRXP_FRIENDLY_Injured Gao-ran Blackguards|r
*|cRXP_WARN_Priotize your own healing spells, if you have any.|r
.complete 30892,1 
.use 82787
.target Injured Gao-ran Blackguards
step
#label Krik'thik Limbpincer
>>Kill |cRXP_ENEMY_Krik'thik Limbpincer|r and |cRXP_ENEMY_Krik'thik Locust-Guard|r and click on their |cRXP_PICK_Krik'thik Limbs|r
.complete 30893,1 
.complete 30894,1 
.mob Krik'thik Limbpincer
.mob Krik'thik Locust-Guard
step
.goto 388,75.86,83.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.turnin 30892 >>Turn in Back on Their Feet
.turnin 30894 >>Turn in Rummaging Through the Remains
.target Septi the Herbalist
step
.goto 388,76.42,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30893 >>Turn in The Endless Swarm
.target Taran Zhu
.accept 30895 >>Accept Improvised Ammunition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Feng|r and |cRXP_FRIENDLY_Initiate Chao|r
.accept 30896 >>Accept Thieves and Troublemakers
.goto 388,70.46,86.37
.accept 30897 >>Accept In the Wrong Hands
.goto 388,70.33,86.67
.target Initiate Feng
.target Initiate Chao
step
#completewith next
>>Kill |cRXP_ENEMY_Agitated Nettleskins|r and |cRXP_ENEMY_Agitated Seedstealer.|r Loot them for |cRXP_LOOT_Volatile Dread Orbs|r
.complete 30896,1 
.complete 30895,1 
.mob Agitated Nettleskin
.mob Agitated Seedstealer
step
.goto 388,63.07,87.65
>>Kill |cRXP_ENEMY_Needlebottom.|r Loot them for |cRXP_LOOT_Chao's Sword|r
.complete 30897,1 
.mob Needlebottom
step
#loop
.goto 388,65.27,87.95,40,0
.goto 388,67.00,87.12,40,0
.goto 388,68.90,89.21,40,0
.goto 388,68.65,85.72,40,0
.goto 388,69.97,84.44,40,0
.goto 388,65.27,87.95,0
.goto 388,67.00,87.12,0
.goto 388,68.90,89.21,0
.goto 388,68.65,85.72,0
.goto 388,69.97,84.44,0
>>Kill |cRXP_ENEMY_Agitated Nettleskins|r and |cRXP_ENEMY_Agitated Seedstealer.|r Loot them for |cRXP_LOOT_Volatile Dread Orbs|r |cRXP_WARN_Additionally click on them|r
.complete 30896,1 
.complete 30895,1 
.mob Agitated Nettleskin
.mob Agitated Seedstealer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Feng|r and |cRXP_FRIENDLY_Initiate Chao|r
.turnin 30897 >>Turn in In the Wrong Hands
.goto 388,70.34,86.67
.turnin 30896 >>Turn in Thieves and Troublemakers
.goto 388,70.46,86.38
.target Initiate Chao
.target Initiate Feng
step
.goto 388,76.41,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30895 >>Turn in Improvised Ammunition
.target Taran Zhu
.accept 30898 >>Accept Cutting the Swarm
step
.goto 388,74.8,84.72
.isOnQuest 30898
.vehicle >>Click on |cRXP_PICK_Dragon Launcher|r
.target Dragon Launcher
step
>>Use |T135597:0|t[Dragon Cannon] to kill incoming |cRXP_ENEMY_Krik'thik Drones|r
.complete 30898,1 
.mob krik'thik drone
step
.goto 388,74.22,85.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin 30898 >>Turn in Cutting the Swarm
.target Taoshi
.accept 30900 >>Accept Terror of the Dread Wastes
step
.goto 388,74.41,86.37
>>Kill |cRXP_ENEMY_Norvakess|r who emerges through dirt.
.complete 30900,1 
.mob norvakess
step
.goto 388,76.42,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30900 >>Turn in Terror of the Dread Wastes
.target Taran Zhu
.accept 30901 >>Accept Along the Southern Front
step
.goto 388,67.31,80.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin 30901 >>Turn in Along the Southern Front
.target Taoshi
.accept 30970 >>Accept Enraged By Hatred
step
.goto 388,67.36,80.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Pao-Me|r
.accept 30971 >>Accept Taking Stock
.target Initiate Pao-Me
step
#completewith Seething Fleshripper
#hidewindow
#loop
.goto 388,64.17,82.63,40,0
.goto 388,66.69,83.71,40,0
.goto 388,66.65,81.43,40,0
.goto 388,64.17,82.63,0
.goto 388,66.69,83.71,0
.goto 388,66.65,81.43,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Seething Fleshripper|r
.complete 30970,1 
.mob seething fleshripper
step
>>Click on |cRXP_PICK_Shado-Pan Fire Arrows|r
.complete 30971,1 
step
#label Seething Fleshripper
>>Kill |cRXP_ENEMY_Seething Fleshripper|r
.complete 30970,1 
.mob seething fleshripper
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r and |cRXP_FRIENDLY_Initiate Pao-Me|r
.turnin 30970 >>Turn in Enraged By Hatred
.goto 388,67.32,80.86
.turnin 30971 >>Turn in Taking Stock
.accept 30972 >>Accept Joining the Fight
.goto 388,67.37,80.67
.target Taoshi
.target Initiate Pao-Me
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r and |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30972 >>Turn in Joining the Fight
.goto 388,61.59,79.36
.accept 30973 >>Accept Up In Flames
.goto 388,61.64,79.33
.target Taran Zhu
.target Lao-Chin the Iron Belly
step
#loop
.goto 388,61.24,79.28,40,0
.goto 388,60.77,78.83,40,0
.goto 388,62.14,79.64,40,0
.goto 388,60.58,81.01,40,0
.goto 388,61.24,79.28,0
.goto 388,60.77,78.83,0
.goto 388,62.14,79.64,0
.goto 388,60.58,81.01,0
>>Kill |cRXP_ENEMY_Kor'thik Timberhusk|r
.complete 30973,1 
.mob kor'thik timberhusk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r and |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.turnin 30973 >>Turn in Up In Flames
.goto 388,61.64,79.32
.accept 30975 >>Accept The Taking of Dusklight Bridge
.goto 388,61.6,79.35
.target Lao-Chin the Iron Belly
.target Taran Zhu
step
.isOnQuest 30975
.goto 422,44.87,9.87,5 >> |cRXP_WARN_Follow the Arrow|r
.timer 15, Time until enemy arrival
step
.goto 422,43.33,10.89,20,0
.goto 422,44.38,12.08,20,0
.goto 422,45.57,11.24,20,0
.goto 422,44.85,9.96
>>Kill |cRXP_ENEMY_Kor'thik Bloodletter|r and |cRXP_ENEMY_Hulking Kor'thik Fleshrender|r |cRXP_WARN_pickup barrels for a damage buff.|r
.complete 30975,1 
.complete 30975,2 
.mob hulking kor'thik fleshrender
.mob kor'thik bloodletter
step
.goto 388,61.11,83.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30975 >>Turn in The Taking of Dusklight Bridge
.target Taran Zhu
.accept 30976 >>Accept Joining the Hunt
step
.goto 388,67.94,67.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.target Orbiss
.accept 30786 >>Accept A Spear Through My Side, A Chain Through My Soul
step
.goto 388,68.42,71.46,10,0
.goto 388,67.94,67.66
>>Kill |cRXP_ENEMY_Dmong Naruuk|r |cRXP_WARN_as soon as he's on 0%|r you can move back to the quest giver.
.complete 30786,1 
.mob dmong naruuk
step
.goto 388,67.94,67.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin 30786 >>Turn in A Spear Through My Side, A Chain Through My Soul
.target Orbiss
.accept 30787 >>Accept The Torches
step
#loop
>>Kill |cRXP_ENEMY_Osul Mist-Shamans|r then click on |cRXP_PICK_Mist-Shaman's Torch|r
.goto 388,66.30,67.89,30,0
.goto 388,65.76,68.96,30,0
.goto 388,67.94,69.51,30,0
.goto 388,66.30,67.89,0
.goto 388,65.76,68.96,0
.goto 388,67.94,69.51,0
.complete 30787,1 
.mob Osul Mist-Shaman
step
.goto 388,67.94,67.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin 30787 >>Turn in The Torches
.target Orbiss
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r and |cRXP_FRIENDLY_Rensai Oakhide|r
.turnin 30976 >>Turn in Joining the Hunt
.accept 30899 >>Accept In Skilled Hands
.goto 388,54.04,78.08
.accept 30977 >>Accept Grounded Welcome
.goto 388,53.93,78.14
.target Rensai Oakhide
.target Taran Zhu
step
.goto 388,51.27,83.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Ye|r
.accept 31032 >>Accept Choking the Skies
.target Marksman Ye
step
#completewith next
>>Kill |cRXP_ENEMY_Kor'thik Fleetwing.|r
*Use |T135433:0|t[Wu Kao Torch] near dead |cRXP_ENEMY_Kor'thik Fleetwing.|r
.complete 30977,1 
.complete 31032,1 
.mob kor'thik fleetwing
.use 83768
step
.goto 388,51.67,87.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
.turnin 30899 >>Turn in In Skilled Hands
.target Hawkmaster Nurong
.accept 30978 >>Accept Hostile Skies
step
.goto 388,51.66,87.31
.isOnQuest 30978
.vehicle >>Click on |cRXP_PICK_Nurong's Cannon|r
.target Nurong's Cannon
step
.goto 388,51.66,87.31
>>Use |T135597:0|t[Nurong's Cannon Shot](1) Shootdown |cRXP_ENEMY_Kor'thik Swarmers|r and |cRXP_WARN_afterwards|r kill |cRXP_ENEMY_Voress'thalik.|r
*|cRXP_WARN_Don't spam shot at |cRXP_ENEMY_Voress'thalik|r, try to be gentle :)|r
.complete 30978,1 
.complete 30978,2 
.target Voress'thalik
.target Kor'thik Swarmers
step
.goto 388,51.67,87.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
.turnin 30978 >>Turn in Hostile Skies
.target Hawkmaster Nurong
.accept 30979 >>Accept Devastation Below
step
#loop
.goto 388,53.64,87.59,20,0
.goto 388,54.25,87.76,20,0
.goto 388,53.64,87.59,0
.goto 388,54.25,87.76,0
>>Kill |cRXP_ENEMY_Voress'thalik|r
.complete 30979,1 
.mob voress'thalik
step
.goto 388,53.99,86.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
.turnin 30979 >>Turn in Devastation Below
.accept 30980 >>Accept Heroes of the Shado-Pan
.target Hawkmaster Nurong
step
#loop
.goto 388,52.28,82.91,20,0
.goto 388,50.37,84.64,20,0
.goto 388,51.30,85.97,20,0
.goto 388,52.28,82.91,0
.goto 388,50.37,84.64,0
.goto 388,51.30,85.97,0
>>Kill |cRXP_ENEMY_Kor'thik Fleetwing.|r
*Use |T135433:0|t[Wu Kao Torch] near dead |cRXP_ENEMY_Kor'thik Fleetwing.|r
.complete 30977,1 
.complete 31032,1 
.mob kor'thik fleetwing
.use 83768
step
.goto 388,51.26,83.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Ye|r
.turnin 31032 >>Turn in Choking the Skies
.target Marksman Ye
step
.goto 388,53.92,78.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
.turnin 30977 >>Turn in Grounded Welcome
.target Rensai Oakhide
step
.goto 388,54.07,77.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30980 >>Turn in Heroes of the Shado-Pan
.target Taran Zhu
.accept 31065 >>Accept Buried Beneath
step
.goto 388,53.49,77.40
>>Click on |cRXP_PICK_Wu Kao Spyglass.|r
.complete 31065,1 
step
.goto 388,54.06,77.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 31065 >>Turn in Buried Beneath
.target Taran Zhu
.accept 30981 >>Accept Taoshi and Korvexxis
.accept 31063 >>Accept Lao-Chin and Serevex
.accept 31064 >>Accept Nurong and Rothek
step
.goto 388,53.94,78.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
.accept 31687 >>Accept Thinning the Sik'thik
.accept 31688 >>Accept The Search for Restless Leng
.target Rensai Oakhide
step
#completewith Korvexxis
>>Kill |cRXP_ENEMY_Sik'thik Mantids|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
#completewith Korvexxis
>>Click on |cRXP_PICK_Sik'thik Cages|r
.complete 31688,1 
.complete 31688,2 
step
#label Korvexxis
.goto 388,46.64,83.04
>>Kill |cRXP_ENEMY_Korvexxis|r
.complete 30981,1 
.mob korvexxis
step
#completewith Serevex
>>Kill |cRXP_ENEMY_Sik'thik Mantids|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
#completewith Serevex
>>Click on |cRXP_PICK_Sik'thik Cages|r
.complete 31688,1 
.complete 31688,2 
step
#label Serevex
.goto 388,45.35,77.39
>>Kill |cRXP_ENEMY_Serevex|r
.complete 31063,1 
.mob serevex
step
#completewith Rothek
>>Kill |cRXP_ENEMY_Sik'thik Mantids|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
#completewith Rothek
>>Click on |cRXP_PICK_Sik'thik Cages|r
.complete 31688,1 
.complete 31688,2 
step
#label Rothek
.goto 388,39.82,75.66
>>Kill |cRXP_ENEMY_Rothek|r
.complete 31064,1 
.mob rothek
step
#completewith Sik'thik Mantids
#hidewindow
#loop
.goto 388,40.70,80.95,40,0
.goto 388,42.62,78.48,40,0
.goto 388,44.29,77.31,40,0
.goto 388,46.64,76.70,40,0
.goto 388,46.60,74.42,40,0
.goto 388,49.41,78.82,40,0
.goto 388,47.78,83.93,40,0
.goto 388,46.95,86.57,40,0
.goto 388,40.70,80.95,0
.goto 388,42.62,78.48,0
.goto 388,44.29,77.31,0
.goto 388,46.64,76.70,0
.goto 388,46.60,74.42,0
.goto 388,49.41,78.82,0
.goto 388,47.78,83.93,0
.goto 388,46.95,86.57,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Sik'thik Mantids|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
>>Click on |cRXP_PICK_Sik'thik Cages|r
.complete 31688,1 
.complete 31688,2 
step
#label Sik'thik Mantids
>>Kill |cRXP_ENEMY_Sik'thik Mantids|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
.goto 388,47.49,78.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30981 >>Turn in Nurong and Rothek
.target Taran Zhu
.turnin 31063 >>Turn in Lao-Chin and Serevex
.turnin 31064 >>Turn in Nurong and Rothek
.accept 30968 >>Accept The Sha of Hatred
.timer 38,RP
step
.goto 388,53.92,78.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
.turnin 31687 >>Turn in Thinning the Sik'thik
.turnin 31688 >>Turn in The Search for Restless Leng
.target Rensai Oakhide
step
.goto 388,46.05,82.59
>>Kill |cRXP_ENEMY_Sha of Hatred|r
.complete 30968,1 
.mob Sha of Hatred
step
.goto 388,46.12,82.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin 30968 >>Turn in The Sha of Hatred
.target Taoshi
step
.isQuestAvailable 30964
.goto 388,47.37,79.1 >> Leave the Temple
step
.goto 388,49.15,71.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Bamfu|r
.accept 30922 >>Accept Natural Antiseptic
.accept 30963 >>Accept The Field Armorer
.accept 30964 >>Accept A Proper Poultice
.target Provisioner Bamfu
step
.goto 388,49.14,71.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
.accept 30921 >>Accept The Motives of the Mantid
.accept 30923 >>Accept Set the Mantid Back
.target Tai Ho
step
#completewith Gunpowder Casks
>>Kill |cRXP_ENEMY_Longshadow Mushan|r Loot them for |cRXP_LOOT_Full Mushan Bladder.|r
.complete 30922,1 
.mob Longshadow Mushan
.mob Longshadow Bull
step
#completewith Gunpowder Casks
>>Kill |cRXP_ENEMY_Rankbite Tortoise|r and |cRXP_ENEMY_Rankbite Ancient.|r Loot them for |cRXP_LOOT_Rankbite Shell Fragment.|r
.complete 30963,1 
.mob Rankbite Tortoise
.mob Rankbite Ancient
step
#completewith Gunpowder Casks
>>Click on |cRXP_PICK_Mao-Willow's.|r
.complete 30964,1 
step
#completewith Gunpowder Casks
>>Kill |cRXP_ENEMY_Kri'thik Screamer|r and |cRXP_ENEMY_Kri'thik Boneslicer.|r |cRXP_WARN_Ideally only one at a time.|r
.complete 30921,1 
.complete 30921,2 
.complete 30921,3 
.complete 30921,4 
.mob Kri'thik Screamer
.mob Kri'thik Boneslicer
step
>>Throw |T463484:0|t[Gunpowder Casks] on the weapons.
.goto 388,55.41,53.09
.use 81891
.complete 30923,1 
step
#label Gunpowder Casks
>> Throw |T463484:0|t[Gunpowder Casks] on the supplies.
.goto 388,56.59,54.04
.use 81891
.complete 30923,2 
step
#completewith next
>>Click on |cRXP_PICK_Mao-Willow's.|r
.complete 30964,1 
step
#loop
.goto 388,57.59,53.91,40,0
.goto 388,56.84,50.49,40,0
.goto 388,55.29,51.79,40,0
.goto 388,55.97,54.82,40,0
.goto 388,57.59,53.91,0
.goto 388,56.84,50.49,0
.goto 388,55.29,51.79,0
.goto 388,55.97,54.82,0
>>Kill |cRXP_ENEMY_Kri'thik Screamer|r and |cRXP_ENEMY_Kri'thik Boneslicer.|r |cRXP_WARN_Ideally only one at a time.|r
.complete 30921,1 
.complete 30921,2 
.complete 30921,3 
.complete 30921,4 
.mob Kri'thik Screamer
.mob Kri'thik Boneslicer
step
#completewith Full Mushan Bladder
#hidewindow
#loop
.goto 388,56.83,50.58,40,0
.goto 388,57.59,54.05,40,0
.goto 388,58.51,56.64,40,0
.goto 388,59.20,57.76,40,0
.goto 388,58.12,59.26,40,0
.goto 388,58.38,61.03,40,0
.goto 388,58.09,64.19,40,0
.goto 388,57.20,64.49,40,0
.goto 388,55.87,62.68,40,0
.goto 388,56.04,67.92,40,0
.goto 388,54.48,69.09,40,0
.goto 388,52.91,66.00,40,0
.goto 388,50.48,63.93,40,0
.goto 388,51.25,70.61,40,0
.goto 388,56.83,50.58,0
.goto 388,57.59,54.05,0
.goto 388,58.51,56.64,0
.goto 388,59.20,57.76,0
.goto 388,58.12,59.26,0
.goto 388,58.38,61.03,0
.goto 388,58.09,64.19,0
.goto 388,57.20,64.49,0
.goto 388,55.87,62.68,0
.goto 388,56.04,67.92,0
.goto 388,54.48,69.09,0
.goto 388,52.91,66.00,0
.goto 388,50.48,63.93,0
.goto 388,51.25,70.61,0
+1
step
#completewith Mao-Willow
>>Kill |cRXP_ENEMY_Longshadow Mushan|r Loot them for |cRXP_LOOT_Full Mushan Bladder.|r
.complete 30922,1 
.mob Longshadow Mushan
.mob Longshadow Bull
step
#completewith Mao-Willow
>>Kill |cRXP_ENEMY_Rankbite Tortoise|r and |cRXP_ENEMY_Rankbite Ancient.|r Loot them for |cRXP_LOOT_Rankbite Shell Fragment.|r
.complete 30963,1 
.mob Rankbite Tortoise
.mob Rankbite Ancient
step
#label Mao-Willow
>>Click on |cRXP_PICK_Mao-Willow's.|r
.complete 30964,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Longshadow Mushan|r Loot them for |cRXP_LOOT_Full Mushan Bladder.|r
.complete 30922,1 
.mob Longshadow Mushan
step
>>Kill |cRXP_ENEMY_Rankbite Tortoise|r and |cRXP_ENEMY_Rankbite Ancient.|r Loot them for |cRXP_LOOT_Rankbite Shell Fragment.|r
.complete 30963,1 
.mob Rankbite Tortoise
.mob Rankbite Ancient
step
#label Full Mushan Bladder
>>Kill |cRXP_ENEMY_Longshadow Mushan|r Loot them for |cRXP_LOOT_Full Mushan Bladder.|r
.complete 30922,1 
.mob Longshadow Mushan
.mob Longshadow Bull
step
#loop
.goto 388,49.23,70.64,20,0
.goto 388,49.15,71.41,20,0
.goto 388,49.23,70.64,0
.goto 388,49.15,71.41,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Bamfu|r
.turnin 30922 >>Turn in Natural Antiseptic
.turnin 30963 >>Turn in The Field Armorer
.turnin 30964 >>Turn in A Proper Poultice
.target Provisioner Bamfu
step
.goto 388,49.13,71.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
.turnin 30921 >>Turn in The Motives of the Mantid
.turnin 30923 >>Turn in Set the Mantid Back
.target Tai Ho
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 9b) Dread Wastes
#displayname Chapter 9 - Dread Wastes
step
.goto 390,14.13,76.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowmistress Li|r
.target Bowmistress Li
.accept 31001 >>Accept Falling Down
.accept 31002 >>Accept Nope
step
#completewith DreadspinnerTender
#hidewindow
#loop
.goto 422,74.173,24.745,25,0
.goto 422,72.484,22.262,25,0
.goto 422,70.920,22.080,20,0
.goto 422,71.506,28.578,25,0
.goto 422,65.619,27.905,25,0
.goto 422,67.872,31.332,30,0
.goto 422,74.173,24.745,0
.goto 422,72.484,22.262,0
.goto 422,70.920,22.080,0
.goto 422,71.506,28.578,0
.goto 422,65.619,27.905,0
.goto 422,67.872,31.332,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Dreadspinner Tender|r
.complete 31002,2 
.mob Dreadspinner Tender
step
>>|cRXP_WARN_Use the|r |T133837:0|t[Shado-Pan Dragon Gun] |cRXP_WARN_to destroy the |cRXP_PICK_Dreadspinner Eggs|r in front of you|r
*The gun also damages the spiders
*You can cancel the channel with ESC
.use 82807
.complete 31002,1 
step
#label DreadspinnerTender
>>Kill |cRXP_ENEMY_Dreadspinner Tender|r
.complete 31002,2 
.mob Dreadspinner Tender
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Lann|r
.goto 422,72.55,28.68
.skipgossip 62166,1
.complete 31001,1 
.target Marksman Lann
step
.goto 422,72.55,28.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Lann|r
.turnin 31001 >>Turn in Falling Down
.turnin 31002 >>Turn in Nope
.accept 31003 >>Accept Psycho Mantid
.target Marksman Lann
step
.goto 422,73.48,27.49
>>Kill |cRXP_ENEMY_Adjunct Kree'zot|r
.complete 31003,1 
.mob Adjunct Kree'zot
step
.goto 422,73.67,27.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Tik|r
.turnin 31003 >>Turn in Psycho Mantid
.target Klaxxi'va Tik
.accept 31004 >>Accept Preserved in Amber
step
>>Click on the |cRXP_PICK_Ancient Amber Chunk|r
.goto 422,70.210,25.661
.complete 31004,1 
step
.goto 422,70.21,25.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31004 >>Turn in Preserved in Amber
.target Kil'ruk the Wind-Reaver
.accept 31676 >>Accept Ancient Vengeance
.accept 31005 >>Accept Wakening Sickness
step
#completewith VengefulGurthani
#hidewindow
#loop
.goto 422,71.394,30.671,30,0
.goto 422,71.329,39.100,30,0
.goto 422,71.394,30.671,30,0
.goto 422,66.021,27.701,30,0
.goto 422,71.394,30.671,0
.goto 422,66.021,27.701,0
.goto 422,71.329,39.100,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Vengeful Gurthani Spirit|r
.complete 31676,1 
.mob Vengeful Gurthani Spirit
step
>>Kill |cRXP_ENEMY_Sapflies|r. Loot them for the |T237143:0|t[|cRXP_LOOT_Sapfly Bits|r]
.complete 31005,1 
.mob Sapfly
step
#label VengefulGurthani
>>Kill |cRXP_ENEMY_Vengeful Gurthani Spirit|r
.complete 31676,1 
.mob Vengeful Gurthani Spirit
step
.goto 422,70.19,25.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31005 >>Turn in Wakening Sickness
.turnin 31676 >>Turn in Ancient Vengeance
.accept 31006 >>Accept The Klaxxi Council
.target Kil'ruk the Wind-Reaver
step
.goto 422,55.67,34.90
>>Fly to Klaxxi'vess |cRXP_WARN_don't select the gossipoption.|r
.complete 31006,1 
step
.goto 422,54.99,34.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31006 >>Turn in The Klaxxi Council
.target Kil'ruk the Wind-Reaver
.accept 31007 >>Accept The Dread Clutches
.accept 31660 >>Accept Not Fit to Swarm
step
.goto 422,54.77,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.accept 31009 >>Accept Dead Zone
.target Kor'ik
step
.goto 422,55.02,35.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
.accept 31008 >>Accept Amber Arms
.target Ambersmith Zikk
step
#completewith next
>>Kill |cRXP_ENEMY_Shek'zeer Bladesworn|r
.complete 31008,1 
.mob Shek'zeer Bladesworn
step
>>Click on the |cRXP_ENEMY_Inactive Sonic Relay|r
.goto 422,40.02,39.00
.complete 31009,1 
step
>>Click on the popup under your minimap or complete the quest in your questlog
.goto 422,40.02,39.00
.turnin 31009 >>Turn in Dead Zone
.accept 31010 >>Accept In Her Clutch
.timer 70,Defend Duration
step
.goto 422,44.59,41.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha-Haunted Crystal|r
.accept 31661 >>Accept A Source of Terrifying Power
.target Sha-Haunted Crystal
step
#completewith ParagonWeakened
>>Kill |cRXP_ENEMY_Shek'zeer Swarmborn|r and |cRXP_ENEMY_Shek'zeer Clutch-Keeper|r
.complete 31660,1 
.complete 31007,1 
.mob Shek'zeer Swarmborn
.mob Shek'zeer Clutch-Keeper
step
#completewith ParagonWeakened
>>Kill |cRXP_ENEMY_Shek'zeer Bladesworn|r
.complete 31008,1 
.mob Shek'zeer Bladesworn
step
#label ParagonWeakened
>>Click on the |cRXP_PICK_Ancient Amber Chunk|r
>>|cRXP_WARN_Defend|r |cRXP_FRIENDLY_Malik the Unscathed|r
.goto 422,44.76,41.58
.complete 31010,1 
step
#completewith AmberBlade
>>Kill |cRXP_ENEMY_Shek'zeer Swarmborn|r and |cRXP_ENEMY_Shek'zeer Clutch-Keeper|r
.complete 31660,1 
.complete 31007,1 
.mob Shek'zeer Swarmborn
.mob Shek'zeer Clutch-Keeper
step
#label AmberBlade
#loop
.goto 422,49.124,43.860,30,0
.goto 422,39.037,39.632,30,0
.goto 422,49.124,43.860,0
.goto 422,39.037,39.632,0
>>Kill |cRXP_ENEMY_Shek'zeer Bladesworn|r
.complete 31008,1 
.mob Shek'zeer Bladesworn
step
#completewith next
>>Kill |cRXP_ENEMY_Shek'zeer Swarmborn|r
.complete 31660,1 
.mob Shek'zeer Swarmborn
step
#loop
.goto 422,41.597,42.415,35,0
.goto 422,42.505,46.290,35,0
.goto 422,47.282,41.128,35,0
.goto 422,44.549,40.010,25,0
.goto 422,41.597,42.415,0
.goto 422,42.505,46.290,0
.goto 422,47.282,41.128,0
.goto 422,44.549,40.010,0
>>Kill |cRXP_ENEMY_Shek'zeer Clutch-Keeper|r
.complete 31007,1 
.mob Shek'zeer Clutch-Keeper
step
>>Kill |cRXP_ENEMY_Shek'zeer Swarmborn|r
.goto 422,44.797,41.647
.complete 31660,1 
.mob Shek'zeer Swarmborn
step
.goto 422,55.02,35.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
.turnin 31008 >>Turn in Amber Arms
.target Ambersmith Zikk
.turnin 31661 >>Turn in A Source of Terrifying Power
.accept 31108 >>Accept Concentrated Fear
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r and |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31010 >>Turn in In Her Clutch
.goto 422,54.94,34.13
.target +Malik the Unscathed
.turnin 31007 >>Turn in The Dread Clutches
.goto 422,54.986,34.045
.target +Kil'ruk the Wind-Reaver
step
.goto 422,54.98,34.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31660 >>Turn in Not Fit to Swarm
.target Kil'ruk the Wind-Reaver
step
.goto 422,54.76,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.accept 31066 >>Accept A Cry From Darkness
.timer 34,Roleplay Duratin
.target Kor'ik
step
.goto 422,55.07,35.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r
.accept 31107 >>Accept Citizens of a New Empire
.target Malik the Unscathed
.accept 31689 >>Accept The Dreadsworn
step
#completewith QitartheDeathcaller
>>Kill |cRXP_ENEMY_Vor'thik Dreadsworn|r
.complete 31689,1 
.mob Vor'thik Dreadsworn
step
#completewith QitartheDeathcaller
>>Click on the |cRXP_PICK_Vor'thik Eggs|r
.complete 31107,1 
step
#label QitartheDeathcaller
.goto 422,59.40,18.44
>>Kill |cRXP_ENEMY_Qi'tar the Deathcaller|r
.complete 31066,1 
.mob Qi'tar the Deathcaller
step
#completewith DreadAmberFocus
>>Kill |cRXP_ENEMY_Vor'thik Dreadsworn|r
.complete 31689,1 
.mob Vor'thik Dreadsworn
step
#completewith DreadAmberFocus
>>Click on the |cRXP_PICK_Vor'thik Eggs|r
.complete 31107,1 
step
#label DreadAmberFocus
#loop
.goto 422,57.697,12.068,25,0
.goto 422,56.946,18.664,25,0
.goto 422,58.205,18.625,25,0
.goto 422,60.180,15.167,28,0
.goto 422,57.697,12.068,0
.goto 422,56.454,15.593,0
.goto 422,56.946,18.664,0
.goto 422,58.205,18.625,0
.goto 422,60.180,15.167,0
>>Kill |cRXP_ENEMY_Vor'thik Fear-Shaper|r. Loot them for the |T348563:0|t[|cRXP_LOOT_Dread Amber Focus|r]
.complete 31108,1 
.mob Vor'thik Fear-Shaper
step
#completewith next
>>Kill |cRXP_ENEMY_Vor'thik Dreadsworn|r
.complete 31689,1 
.mob Vor'thik Dreadsworn
step
#loop
.goto 422,58.700,17.269,25,0
.goto 422,58.369,19.191,20,0
.goto 422,59.651,20.048,20,0
.goto 422,60.288,17.509,20,0
.goto 422,58.700,17.269,0
.goto 422,58.369,19.191,0
.goto 422,59.651,20.048,0
.goto 422,60.288,17.509,0
>>Click on the |cRXP_PICK_Vor'thik Eggs|r
.complete 31107,1 
step
#loop
.goto 422,59.164,14.671,25,0
.goto 422,56.862,11.771,25,0
.goto 422,57.658,16.739,32,0
.goto 422,59.164,14.671,0
.goto 422,56.862,11.771,0
.goto 422,57.658,16.739,0
>>Kill |cRXP_ENEMY_Vor'thik Dreadsworn|r
.complete 31689,1 
.mob Vor'thik Dreadsworn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r and |cRXP_FRIENDLY_Ambersmith Zikk|r
.turnin 31107 >>Turn in Citizens of a New Empire
.turnin 31689 >>Turn in The Dreadsworn
.goto 422,55.060,35.482
.target +Malik the Unscathed
.turnin 31108 >>Turn in Concentrated Fear
.goto 422,55.016,35.555
.target +Ambersmith Zikk
step
.goto 422,54.76,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.turnin 31066 >>Turn in A Cry From Darkness
.accept 31087 >>Accept Extending Our Coverage
.accept 31605 >>Accept The Zan'thik Dig
.target Kor'ik
step
.goto 422,55.06,35.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.accept 31019 >>Accept Amber Is Life
.accept 31175 >>Accept Skeer the Bloodseeker
.target Kil'ruk the Wind-Reaver
step
.isOnQuest 31730
#optional
.goto 422,51.21,11.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.turnin 31730 >>Turn in A Not So Friendly Request
.accept 31067 >>Accept The Heavens Hum With War
.target Sapmaster Vu
step
.goto 422,51.21,11.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.accept 31067 >>Accept The Heavens Hum With War
.target Sapmaster Vu
step
#completewith next
.goto 422,53.525,15.100,10 >>|cRXP_WARN_Enter The Amber Vault|r
step
.goto 422,53.08,12.36
>>Click on the |cRXP_PICK_Scroll of Auspice|r
.accept 31068 >>Accept Sacred Recipe
.target Scroll of Auspice
step
.goto 422,52.78,10.56
>>Kill |cRXP_ENEMY_Azzix K'tai|r
.complete 31067,1 
.mob Azzix K'tai
step
#completewith next
.goto 422,53.525,15.100,10 >>|cRXP_WARN_Leave The Amber Vault|r
step
.goto 422,50.73,11.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.turnin 31068 >>Turn in Sacred Recipe
.timer 36,Lya of Ten Songs Roleplay
.target Lya of Ten Songs
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r, |cRXP_FRIENDLY_Olon|r, and |cRXP_FRIENDLY_Thirsty Missho|r
.turnin 31067 >>Turn in The Heavens Hum With War
.accept 31069 >>Accept Bound With Shade
.goto 422,51.21,11.39
.target +Sapmaster Vu
.accept 31070 >>Accept Daggers of the Great Ones
.goto 422,51.16,11.21
.target +Olon
.accept 31071 >>Accept I Bring Us Great Shame
.goto 422,51.133,11.109
.target +Thirsty Missho
step
.goto 422,50.44,12.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.daily 31076,31129 >>Accept Fate of the Stormstouts
.target Chen Stormstout
step
.isOnQuest 31076
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.goto 422,50.73,11.70
.skipgossip 62667,1
.complete 31076,2 
.target Lya of Ten Songs
step
.isOnQuest 31076
.goto 422,50.91,11.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Dan Stormstout|r
.complete 31076,3 
.skipgossip 62845,1
.target Big Dan Stormstout
step
.isOnQuest 31076
.goto 422,51.21,11.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.complete 31076,1 
.skipgossip 62666,1
.target Sapmaster Vu
step
.isOnQuest 31129
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.goto 422,50.73,11.70
.skipgossip 62667,1
.complete 31129,2 
.target Lya of Ten Songs
step
.isOnQuest 31129
.goto 422,50.91,11.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Dan Stormstout|r
.complete 31129,3 
.skipgossip 62845,1
.target Big Dan Stormstout
step
.isOnQuest 31129
.goto 422,51.21,11.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.complete 31129,1 
.skipgossip 62666,1
.target Sapmaster Vu
step
.goto 422,50.73,11.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.accept 31072 >>Accept Rending Daggers
.target Lya of Ten Songs
step
.goto 422,50.45,12.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.turnin 31076 >>Turn in Fate of the Stormstouts
.target Chen Stormstout
step
#completewith BladeofIlikkax
>>Kill |cRXP_LOOT_Frightened Mushan|r. Loot them for the |T135671:0|t[|cRXP_LOOT_Large Mushan Tooths|r]
.complete 31070,1 
.mob Frightened Mushan
step
>>Click on the |cRXP_PICK_Lost Mugs|r
.goto 422,51.72,19.07
.complete 31071,1 
step
#label BladeofIlikkax
>>Kill |cRXP_ENEMY_Ilikkax|r. Loot him for the |T538490:0|t[|cRXP_LOOT_Blade of Ilikkax|r]
.goto 422,50.94,20.86
.complete 31072,2 
.mob Ilikkax
step
#loop
.goto 422,52.106,21.147,15,0
.goto 422,53.558,19.712,15,0
.goto 422,52.106,21.147,0
.goto 422,53.558,19.712,0
>>Kill |cRXP_ENEMY_Kz'Kzik|r. Loot him for the |T538490:0|t[|cRXP_LOOT_Blade of Kz'Kzik]
.complete 31072,1 
.mob Kz'Kzik
step
.goto 422,54.11,20.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.accept 31077 >>Accept Evie Stormstout
.target Chen Stormstout
step
>>Click on the |cRXP_PICK_Lost Keg|r
.goto 422,54.41,20.33
.complete 31071,2 
step
#completewith LostPicnic
>>Kill |cRXP_LOOT_Frightened Mushan|r. Loot them for the |T135671:0|t[|cRXP_LOOT_Large Mushan Tooths|r]
.complete 31070,1 
.mob Frightened Mushan
step
#completewith LostPicnic
>>Kill |cRXP_ENEMY_Dread Lurker|r and |cRXP_ENEMY_Nagging Dreadlings|r
.complete 31069,1 
.mob Dread Lurker
.mob Nagging Dreadling
step
#label LostPicnic
>>Click on the |cRXP_PICK_Lost Picnic Supplies|r
.goto 422,56.02,19.43
.complete 31071,3 
step
#completewith next
>>Kill |cRXP_LOOT_Frightened Mushan|r. Loot them for the |T135671:0|t[|cRXP_LOOT_Large Mushan Tooths|r]
.complete 31070,1 
.mob Frightened Mushan
step
#loop
.goto 422,57.958,20.062,32,0
.goto 422,56.105,16.052,32,0
.goto 422,53.995,17.333,32,0
.goto 422,55.094,19.947,30,0
.goto 422,57.958,20.062,0
.goto 422,56.105,16.052,0
.goto 422,53.995,17.333,0
.goto 422,55.094,19.947,0
>>Kill |cRXP_ENEMY_Dread Lurker|r and |cRXP_ENEMY_Nagging Dreadlings|r
.complete 31069,1 
.mob Dread Lurker
.mob Nagging Dreadling
step
#loop
.goto 422,51.940,14.578,36,0
.goto 422,49.263,16.335,36,0
.goto 422,47.060,20.709,35,0
.goto 422,49.102,22.156,36,0
.goto 422,56.034,14.707,36,0
.goto 422,51.940,14.578,0
.goto 422,49.263,16.335,0
.goto 422,47.060,20.709,0
.goto 422,49.102,22.156,0
.goto 422,56.034,14.707,0
>>Kill |cRXP_LOOT_Frightened Mushan|r. Loot them for the |T135671:0|t[|cRXP_LOOT_Large Mushan Tooths|r]
.complete 31070,1 
.mob Frightened Mushan
step
>>|cRXP_WARN_Follow the arrow|r
.goto 422,50.18,10.19
.complete 31077,1 
.timer 27,Roleplay Duration
step
#completewith
>>Turn in the other quests while waiting for the roleplay
.complete 31077,2 
step
.goto 422,50.73,11.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.turnin 31072 >>Turn in Rending Daggers
.accept 31074 >>Accept Wood and Shade
.target Lya of Ten Songs
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thirsty Missho|r, |cRXP_FRIENDLY_Olon|r, and |cRXP_FRIENDLY_Sapmaster Vu|r
.turnin 31071 >>Turn in I Bring Us Great Shame
.goto 422,51.139,11.112
.target +Thirsty Missho
.turnin 31070 >>Turn in Daggers of the Great Ones
.goto 422,51.17,11.22
.target +Olon
.turnin 31069 >>Turn in Bound With Shade
.accept 31073 >>Accept Bound With Wood
.goto 422,51.21,11.40
.target +Sapmaster Vu
step
.goto 422,50.18,10.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.turnin 31077 >>Turn in Evie Stormstout
.target Chen Stormstout
.accept 31078 >>Accept Han Stormstout
step
.goto 422,50.18,12.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Defender Azzo|r
.accept 31133 >>Accept Kor'thik Aggression
.target Defender Azzo
step
#completewith HanStormstout
>>Kill |cRXP_ENEMY_Kor'thik Mantid|r
.complete 31133,1 
.mob Kor'thik Chitinel
.mob Kor'thik Battlesinger
.mob Kor'thik Havoc
step
#completewith next
.goto 422,46.710,16.787,10 >>|cRXP_WARN_Enter the Morrowchamber|r
step
>>|cRXP_WARN_Follow the arrow to avoid taking too much damage|r
>>Click on |cRXP_FRIENDLY_Han Stormstout|r
.goto 422,44.943,16.787,14,0
.goto 422,44.668,16.058,14,0
.goto 422,45.091,15.212,14,0
.goto 422,44.523,15.761,14,0
.goto 422,43.555,15.680,14,0
.goto 422,43.043,15.209,14,0
.goto 422,43.375,16.047,14,0
.goto 422,43.77,16.74
.complete 31078,1 
.target Han Stormstout
step
#label HanStormstout
>>|cRXP_WARN_Follow the arrow to avoid taking too much damage|r
.goto 422,43.375,16.047,14,0
.goto 422,43.043,15.209,14,0
.goto 422,43.555,15.680,14,0
.goto 422,44.523,15.761,14,0
.goto 422,45.091,15.212,14,0
.goto 422,44.668,16.058,14,0
.goto 422,44.41,16.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r
.turnin 31078 >>Turn in Han Stormstout
.target Chen Stormstout
step
#completewith HanStormstout
>>Kill |cRXP_ENEMY_Kor'thik Mantid|r
.complete 31133,1 
.mob Kor'thik Chitinel
.mob Kor'thik Battlesinger
.mob Kor'thik Havoc
step
#completewith MarkoftheEmpress
#label LeaveMorrowchamber
.goto 422,46.710,16.787,10 >>|cRXP_WARN_Leave the Morrowchamber|r
step
#completewith MarkoftheEmpress
#requires LeaveMorrowchamber
.goto 422,44.754,15.935,8 >>|cRXP_WARN_Enter the house|r
step
#label MarkoftheEmpress
>>Run down the stairs
.goto 422,44.754,15.935,0
.goto 422,44.515,16.778
.complete 31074,1 
step
#completewith HeartrootofKypariKor
#label LeavetheHouseA
.goto 422,44.754,15.935,8 >>|cRXP_WARN_Leave the house|r
step
#completewith HeartrootofKypariKor
#requires LeavetheHouseA
.goto 422,43.050,13.965,8 >>|cRXP_WARN_Enter the house|r
step
#label HeartrootofKypariKor
>>Run down the stairs
.goto 422,43.116,14.988
.complete 31074,2 
step
#completewith KorthikMantid
#hidewindow
#loop
.goto 422,42.796,7.545,35,0
.goto 422,44.556,7.456,35,0
.goto 422,48.603,11.101,35,0
.goto 422,47.245,19.051,35,0
.goto 422,45.008,18.417,37,0
.goto 422,45.957,13.026,35,0
.goto 422,43.095,12.129,35,0
.goto 422,42.796,7.545,0
.goto 422,44.556,7.456,0
.goto 422,48.603,11.101,0
.goto 422,47.245,19.051,0
.goto 422,45.008,18.417,0
.goto 422,45.957,13.026,0
.goto 422,43.095,12.129,0
+1
step
#completewith next
.goto 422,43.050,13.965,8 >>|cRXP_WARN_Leave the house|r
step
>>Click on the |cRXP_FRIENDLY_Wihtered Husks|r |cRXP_WARN_(possible while mounted)|r
.complete 31073,1 
.target Withrered Husk
step
#label KorthikMantid
>>Kill |cRXP_ENEMY_Kor'thik Mantid|r
.complete 31133,1 
.mob Kor'thik Chitinel
.mob Kor'thik Battlesinger
.mob Kor'thik Havoc
step
.goto 422,50.20,12.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Defender Azzo|r
.turnin 31133 >>Turn in Kor'thik Aggression
.target Defender Azzo
step
.goto 422,50.73,11.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.turnin 31074 >>Turn in Wood and Shade
.target Lya of Ten Songs
step
.goto 422,51.21,11.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.turnin 31073 >>Turn in Bound With Wood
.accept 31075 >>Accept Sunset Kings
.target Sapmaster Vu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.goto 422,38.19,17.18
.turnin 31075 >>Turn in Sunset Kings
.target Sapmaster Vu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boggeo|r, |cRXP_FRIENDLY_Olon|r, and |cRXP_FRIENDLY_Lya of Ten Songs|r
.accept 31079 >>Accept The Horror Comes A-Rising
.goto 422,38.159,17.339
.target +Boggeo
.accept 31080 >>Accept Fiery Wings
.goto 422,38.20,17.13
.target +Olon
.accept 31081 >>Accept Incantations Fae and Primal
.goto 422,38.302,17.137
.target +Lya of Ten Songs
step
.goto 422,38.65,17.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
.accept 31082 >>Accept Great Vessel of Salvation
.target Chief Rikkitun
step
#completewith FliterringDust
>>Kill |cRXP_ENEMY_Shuffling Mistlurkers|r and |cRXP_ENEMY_Kyparite|r (|cRXP_WARN_look for the brown moving thing|r)
.complete 31079,1 
.complete 31079,2 
.mob Shuffling Mistlurker
.mob Kyparite
step
.goto 422,33.07,19.13
>>Kill |cRXP_ENEMY_Mygoness|r
.complete 31081,2 
.mob Mygoness
step
.goto 422,32.10,17.35
>>Kill |cRXP_ENEMY_Ahgunoss|r
.complete 31081,1 
.mob Ahgunoss
step
#label FliterringDust
#loop
.goto 422,34.321,22.761,35,0
.goto 422,39.261,24.069,35,0
.goto 422,39.536,19.790,35,0
.goto 422,36.998,14.867,35,0
.goto 422,34.321,22.761,0
.goto 422,39.261,24.069,0
.goto 422,39.536,19.790,0
.goto 422,36.998,14.867,0
>>Click on |cRXP_FRIENDLY_Rikkilea Flitterlings|r. |cRXP_WARN_Try to catch the dust|r
.complete 31080,1 
.target Rikkilea Flitterling
step
#completewith Motherseed
>>Kill |cRXP_ENEMY_Shuffling Mistlurkers|r and |cRXP_ENEMY_Kyparite|r (|cRXP_WARN_look for the brown moving thing|r)
.complete 31079,1 
.complete 31079,2 
.mob Shuffling Mistlurker
.mob Kyparite
step
#completewith next
#loop
.goto 422,36.998,14.867,35,0
.goto 422,35.666,18.056,35,0
.goto 422,35.956,22.458,35,0
.goto 422,34.321,19.465,35,0
.goto 422,36.998,14.867,0
.goto 422,35.666,18.056,0
.goto 422,35.956,22.458,0
.goto 422,34.321,19.465,0
.cast 122165 >>Click on a |cRXP_PICK_Motherseed|r
step
>>Bring the |cRXP_FRIENDLY_Motherseed|r back |cRXP_WARN_(you can only do one at a time)|r
*|cRXP_WARN_Use the|r |T133706:0|t[Rikkitun Bell] |cRXP_WARN_when you can't click on the seeds|r
.goto 422,36.897,17.445
.use 84267
.complete 31082,1,1 
step
#completewith next
#loop
.goto 422,34.321,19.465,35,0
.goto 422,36.998,14.867,35,0
.goto 422,35.666,18.056,35,0
.goto 422,35.956,22.458,35,0
.goto 422,34.321,19.465,0
.goto 422,36.998,14.867,0
.goto 422,35.666,18.056,0
.goto 422,35.956,22.458,0
.cast 122165 >>Click on a |cRXP_PICK_Motherseed|r
step
>>Bring the |cRXP_FRIENDLY_Motherseed|r back |cRXP_WARN_(you can only do one at a time)|r
*|cRXP_WARN_Use the|r |T133706:0|t[Rikkitun Bell] |cRXP_WARN_when you can't click on the seeds|r
.goto 422,36.897,17.445
.use 84267
.complete 31082,1,2 
step
#completewith next
#loop
.goto 422,35.956,22.458,35,0
.goto 422,34.321,19.465,35,0
.goto 422,36.998,14.867,35,0
.goto 422,35.666,18.056,35,0
.goto 422,35.956,22.458,0
.goto 422,34.321,19.465,0
.goto 422,36.998,14.867,0
.goto 422,35.666,18.056,0
.cast 122165 >>Click on a |cRXP_PICK_Motherseed|r
step
#label Motherseed
>>Bring the |cRXP_FRIENDLY_Motherseed|r back |cRXP_WARN_(you can only do one at a time)|r
*|cRXP_WARN_Use the|r |T133706:0|t[Rikkitun Bell] |cRXP_WARN_when you can't click on the seeds|r
.goto 422,36.897,17.445
.use 84267
.complete 31082,1 
step
#loop
.goto 422,32.060,20.009,35,0
.goto 422,33.450,23.674,35,0
.goto 422,36.371,20.878,35,0
.goto 422,38.385,14.506,35,0
.goto 422,32.060,20.009,0
.goto 422,33.450,23.674,0
.goto 422,36.371,20.878,0
.goto 422,38.385,14.506,0
>>Kill |cRXP_ENEMY_Shuffling Mistlurkers|r and |cRXP_ENEMY_Kyparite|r (|cRXP_WARN_look for the brown moving thing|r)
.complete 31079,1 
.complete 31079,2 
.mob Shuffling Mistlurker
.mob Kyparite
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boggeo|r, |cRXP_FRIENDLY_Olon|r, and |cRXP_FRIENDLY_Lya of Ten Songs|r
.turnin 31079 >>Turn in The Horror Comes A-Rising
.goto 422,38.16,17.34
.target +Boggeo
.turnin 31080 >>Turn in Fiery Wings
.goto 422,38.20,17.12
.target +Olon
.turnin 31081 >>Turn in Incantations Fae and Primal
,giti 422,38.304,17.137
.target +Lya of Ten Songs
step
.goto 422,38.65,17.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
.turnin 31082 >>Turn in Great Vessel of Salvation
.target Chief Rikkitun
.accept 31084 >>Accept Bind the Glamour
step
#completewith next
.gossipoption 40853 >>Talk to |cRXP_FRIENDLY_Chief Rikkitun|r
.timer 55,Roleplay Duration
.goto 422,38.65,17.25
.target Chief Rikkitun
step
.goto 422,38.65,17.25,0
>>Follow |cRXP_FRIENDLY_Chief Rikkitun|r. |cRXP_WARN_Don't run too far away from him (at maximum 90 yards)|r
.goto 422,39.67,23.18
.complete 31084,1 
.target Chief Rikkitun
step
.goto 422,38.65,17.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
.turnin 31084 >>Turn in Bind the Glamour
.target Chief Rikkitun
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r and |cRXP_FRIENDLY_Sapmaster Vu|r
.accept 31085 >>Accept Fires and Fears of Old
.goto 422,38.30,17.13
.target +Lya of Ten Songs
.accept 31086 >>Accept Blood of Ancients
.goto 422,38.183,17.184
.target +Sapmaster Vu
step
>>Click on the |cRXP_PICK_Chunk of Solidified Amber|r
.goto 422,30.22,30.58
.complete 31086,1 
step
#completewith next
.goto 422,30.23,31.68
.cast 123270 >>Click on the rocks
step
>>|cRXP_WARN_Use the|r |T645165:0|t[Ruining Fork]
.goto 422,32.67,33.88
.use 84771
.complete 31085,1 
step
>>Kill |cRXP_ENEMY_Adjunct G'kkal|r, |cRXP_ENEMY_Adjunct Okzyk|r, and |cRXP_ENEMY_Adjunct Pivvika|r
.goto 422,33.013,34.129
.complete 31085,2 
.mob Adjunct G'kkal
.mob Adjunct Okzyk
.mob Adjunct Pivvika
step
#completewith next
.goto 422,30.233,31.716,10 >>|cRXP_WARN_Leave The Amber Hibernal|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r and |cRXP_FRIENDLY_Lya of Ten Songs|r
.turnin 31086 >>Turn in Blood of Ancients
.goto 422,50.22,12.11
.target +Sapmaster Vu
.turnin 31085 >>Turn in Fires and Fears of Old
.goto 422,50.29,12.07
.target +Lya of Ten Songs
step
#completewith SeekertheBloodseeker
.goto 422,25.752,53.923,12 >>|cRXP_WARN_Enter the underwater cave|r
step
#label SeekertheBloodseeker
>>Click on the |cRXP_PICK_Ancient Amber Chunk|r
.goto 422,25.709,50.342
.complete 31175,1 
.timer 30,Roleplay Duration
step
.goto 422,25.71,50.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeer the Bloodseeker|r
.turnin 31175 >>Turn in Skeer the Bloodseeker
.target Skeer the Bloodseeker
.accept 31176 >>Accept A Strange Appetite
.accept 31177 >>Accept Fine Dining
.accept 31178 >>Accept A Bloody Delight
step
#completewith next
.goto 422,25.752,53.923,12 >>|cRXP_WARN_Leave the cave|r
step
#completewith VolatileBlood
#hidewindow
#loop
.goto 422,25.435,55.593,25,0
.goto 422,27.393,53.959,30,0
.goto 422,28.144,65.767,40,0
.goto 422,22.978,65.299,32,0
.goto 422,25.435,55.593,0
.goto 422,27.393,53.959,0
.goto 422,28.144,65.767,0
.goto 422,22.978,65.299,0
+1
step
#completewith ClackerTail
>>Kill |cRXP_ENEMY_Dread Remora|r. Loot them for the |T136124:0|t[|cRXP_LOOT_Volatile Blood|r]
.complete 31178,1 
.mob Dread Remora
step
#completewith ClackerTail
>>Click on the |cRXP_PICK_Spiny Starfish|rs
.complete 31176,1 
step
#label ClackerTail
>>Kill |cRXP_ENEMY_Briny Clacker|r. Loot them for the |T134048:0|t[|cRXP_LOOT_Clacker Tail|r]
.complete 31177,1 
.mob Briny Clacker
step
#completewith next
>>Kill |cRXP_ENEMY_Dread Remora|r. Loot them for the |T136124:0|t[|cRXP_LOOT_Volatile Blood|r]
.complete 31178,1 
.mob Dread Remora
step
>>Click on the |cRXP_PICK_Spiny Starfish|rs
.complete 31176,1 
step
#label VolatileBlood
>>Kill |cRXP_ENEMY_Dread Remora|r. Loot them for the |T136124:0|t[|cRXP_LOOT_Volatile Blood|r]
.complete 31178,1 
.mob Dread Remora
step
#completewith next
.goto 422,25.752,53.923,12 >>|cRXP_WARN_Enter the cave|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeer the Bloodseeker|r
.goto 422,25.71,50.61
.turnin 31176 >>Turn in A Strange Appetite
.turnin 31177 >>Turn in Fine Dining
.turnin 31178 >>Turn in A Bloody Delight
.accept 31179 >>Accept The Scent of Blood
.timer 90,Quest Duration
.target Skeer the Bloodseeker
step
>>|cRXP_WARN_Go to the waypoint location|r.
>>Kill the spwaning |cRXP_ENEMY_Muckscale Flesheater|r and the |cRXP_ENEMY_Muckscale Serpentus|r
.goto 422,25.711,52.037
.complete 31179,1 
.complete 31179,2 
.mob Muckscale Flesheater
.mob Muckscale Serpentus
step
#completewith next
.goto 422,25.752,53.923,12 >>|cRXP_WARN_Leave the cave|r
step
#completewith next
.goto 422,46.339,52.976,10 >>|cRXP_WARN_Enter Amberglow Hollow|r
step
.goto 422,46.38,52.95
.complete 31087,1 
step
.goto 422,48.125,49.781
>>Kill |cRXP_ENEMY_Adjunct Zet'uk|r
.complete 31087,2 
.mob Adjunct Zet'uk
step
>>Click on the |cRXP_PICK_Silent Beacon|r
.goto 422,48.12,49.75
.complete 31087,3 
step
.goto 422,48.11,49.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.turnin 31087 >>Turn in Extending Our Coverage
.accept 31088 >>Accept Crime and Punishment
.accept 31090 >>Accept Better With Age
.target Kor'ik
step
#completewith AmberFilledJar
.goto 422,46.339,52.976,10 >>|cRXP_WARN_Leave Amberglow Hollow|r
step
#completewith IkthikHarvester
#hidewindow
#loop
.goto 422,45.535,52.012,18,0
.goto 422,42.260,50.297,22,0
.goto 422,41.542,52.595,22,0
.goto 422,39.638,52.012,22,0
.goto 422,36.958,51.815,22,0
.goto 422,34.739,51.846,22,0
.goto 422,32.738,50.473,22,0
.goto 422,38.626,49.036,26,0
.goto 422,40.356,47.884,26,0
.goto 422,45.105,57.507,22,0
.goto 422,49.250,62.705,22,0
.goto 422,48.803,64.237,22,0
.goto 422,49.711,66.443,22,0
.goto 422,51.484,66.092,22,0
.goto 422,45.535,52.012,0
.goto 422,42.260,50.297,0
.goto 422,41.542,52.595,0
.goto 422,39.638,52.012,0
.goto 422,36.958,51.815,0
.goto 422,34.739,51.846,0
.goto 422,32.738,50.473,0
.goto 422,38.626,49.036,0
.goto 422,40.356,47.884,0
.goto 422,45.105,57.507,0
.goto 422,49.250,62.705,0
.goto 422,48.803,64.237,0
.goto 422,49.711,66.443,0
.goto 422,51.484,66.092,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Ik'thik Harvester|r
.complete 31088,1 
.mob Ik'thik Harvester
step
#label AmberFilledJar
>>Clik on |cRXP_PICK_Amber Collectors|r
.complete 31090,1 
step
#label IkthikHarvester
>>Kill |cRXP_ENEMY_Ik'thik Harvester|r
.complete 31088,1 
.mob Ik'thik Harvester
step
#completewith next
.goto 422,46.339,52.976,10 >>|cRXP_WARN_Enter Amberglow Hollow|r
step
.goto 422,48.11,49.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.turnin 31088 >>Turn in Crime and Punishment
.turnin 31090 >>Turn in Better With Age
.accept 31089 >>Accept By the Sea, Nevermore
.target Kor'ik
step
>>|cRXP_WARN_Use the|r |T645165:0|t[Klaxxi Tuning Fork]
.goto 422,43.42,63.55
.use 84119
.complete 31089,1 
.timer 30,Roleplay Duration
step
.goto 422,43.32,63.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.turnin 31089 >>Turn in By the Sea, Nevermore
.target Kaz'tik the Manipulator
.accept 31091 >>Accept Reunited
step
#completewith next
.goto 422,43.321,63.498
.gossipoption 28603 >>Talk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
step
>>|cRXP_WARN_Follow and defend |cRXP_FRIENDLY_Kaz'tik the Manipulator|r|r
.goto 422,43.321,63.498,0
.goto 422,41.763,72.038
.skipgossip 63876,1
.complete 31091,1 
step
.goto 422,41.38,71.42
.complete 31091,2 
step
.goto 422,41.75,72.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.turnin 31091 >>Turn in Reunited
.target Kaz'tik the Manipulator
.accept 31092 >>Accept Feed or Be Eaten
.accept 31359 >>Accept The Kunchong Whisperer
step
#completewith OracleHissir
>>Kill |cRXP_ENEMY_Muckscale Tribe|r
.complete 31359,2 
.mob Muckscale Tribe
step
#completewith OracleHissir
>>Kill |cRXP_ENEMY_Brinshell Snappers|r. Loot them for the |T237345:0|t[|cRXP_LOOT_Succulent Turtle Filet|r]
*|cRXP_WARN_Use the|r |T237345:0|t[|cRXP_LOOT_Succulent Turtle Filet|r]
.use 86489
.collect 86489,6,31092,0x1,-1
.complete 31092,1 
.mob Brineshell Snapper
step
#label OracleHissir
.goto 422,41.935,63.781
>>Kill |cRXP_ENEMY_Oracle Hiss'ir|r
.complete 31359,1 
.mob Oracle Hiss'ir
step
.goto 422,41.87,63.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Glowing Amber|r
.accept 31398 >>Accept Falling to Pieces
.target Glowing Amber
step
#completewith next
>>Kill |cRXP_ENEMY_Muckscale Tribe|r
.complete 31359,2 
.mob Muckscale Tribe
step
#loop
.goto 422,44.334,67.336,38,0
.goto 422,45.885,61.940,38,0
.goto 422,39.003,62.402,38,0
.goto 422,35.147,56.680,38,0
.goto 422,34.928,66.549,38,0
.goto 422,39.065,67.311,38,0
.goto 422,41.935,63.781,38,0
.goto 422,44.334,67.336,0
.goto 422,45.885,61.940,0
.goto 422,39.003,62.402,0
.goto 422,35.147,56.680,0
.goto 422,34.928,66.549,0
.goto 422,39.065,67.311,0
.goto 422,41.935,63.781,0
>>Kill |cRXP_ENEMY_Brinshell Snappers|r. Loot them for the |T237345:0|t[|cRXP_LOOT_Succulent Turtle Filet|r]
*|cRXP_WARN_Use the|r |T237345:0|t[|cRXP_LOOT_Succulent Turtle Filet|r]
.use 86489
.collect 86489,6,31092,0x1,-1
.complete 31092,1 
.mob Brineshell Snapper
step
#loop
.goto 422,41.935,63.781,32,0
.goto 422,37.183,57,529,32,0
.goto 422,38.893,68.359,32,0
.goto 422,41.935,63.781,0
.goto 422,37.183,57,529,0
.goto 422,38.893,68.359,0
>>Kill |cRXP_ENEMY_Muckscale Tribe|r
.complete 31359,2 
.mob Muckscale Tribe
step
.goto 422,31.80,88.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
.turnin 31605 >>Turn in The Zan'thik Dig
.accept 31606 >>Accept The Dissector Wakens
.timer 47,Roleplay Duration
.target Rik'kal the Dissector
step
.goto 422,31.80,88.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
.turnin 31606 >>Turn in The Dissector Wakens
.target Rik'kal the Dissector
step
.goto 422,54.73,72.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.accept 31265 >>Accept Mazu's Breath
.target Deck Boss Arie
step
>>|cRXP_WARN_Use the|r |T134851:0|t[Potion of Mazu's Breath]
.use 85869
.goto 422,54.73,72.17
.complete 31265,1 
step
.goto 422,54.73,72.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.turnin 31265 >>Turn in Mazu's Breath
.target Deck Boss Arie
.accept 31182 >>Accept You Otter Know
.accept 31181 >>Accept Fresh Pots
step
#completewith ColdwhiskerOtter
#hidewindow
#loop
.goto 422,56.84,80.93,35,0
.goto 422,61.55,79.81,40,0
.goto 422,60.64,85.37,40,0
+1
step
#completewith next
>>Click on the |cRXP_FRIENDLY_Coldwhisker Otter|r
.complete 31182,1 
.target Coldwhisker Otter
step
>>Kill |cRXP_ENEMY_Sea Monarch|r. Loot them for the |T237338:0|t[Sea Monarch Chunks]
>>Click on |cRXP_PICK_Empty Crab Pots|r
.complete 31181,1 
.mob Sea Monarch
step
#label ColdwhiskerOtter
>>Click on the |cRXP_FRIENDLY_Coldwhisker Otter|r
.complete 31182,1 
.target Coldwhisker Otter
step
.goto 422,54.73,72.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.turnin 31181 >>Turn in Fresh Pots
.turnin 31182 >>Turn in You Otter Know
.accept 31183 >>Accept Meet the Cap'n
.target Deck Boss Arie
step
.goto 422,55.67,72.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r
.turnin 31183 >>Turn in Meet the Cap'n
.target Captain "Soggy" Su-Dao
.accept 31184 >>Accept Old Age and Treachery
.accept 31185 >>Accept Walking Dog
step
.goto 422,54.72,72.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.accept 31188 >>Accept Shark Week
.accept 31187 >>Accept On the Crab
.target Deck Boss Arie
step
.goto 422,47.98,73.73
>>|cRXP_WARN_Use the|r |T134434:0|t[Dog's Whistle] |cRXP_WARN_to summon your|r |cRXP_FRIENDLY_Dog|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dog|r
.accept 31186 >>Accept Dog Food
.use 85955
.target Dog
step
#completewith BringDogWhaleCorpse
>>Kill |cRXP_ENEMY_Longfin Thresher|r. Loot them for the |T125055:0|t[Thresher Jaw].
>>|cRXP_WARN_Use the|r |T125055:0|t[Thresher Jaw]
.use 85998
.complete 31188,1 
.mob Longfin Thresher
step
#completewithBringDogWhaleCorpse
>>Click on the |cRXP_PICK_Full Crab Pots|r
.complete 31187,1 
step
#completewith BringDogWhaleCorpse
>>Kill |cRXP_FRIENDLY_Rockshell Snapclaws|r.
*|cRXP_WARN_Don't kill the too fast. Wait until your dog is in range and has eaten the previous one.|r
.complete 31186,1 
.mob Rockshell Snapclaw
step
>>|cRXP_WARN_Follow the arrow|r
*|cRXP_WARN_Make sure you have summoned your|r |cRXP_FRIENDLY_Dog|r
.goto 422,45.83,73.55
.use 85955
.complete 31185,1 
step
>>|cRXP_WARN_Follow the arrow|r
*|cRXP_WARN_Make sure you have summoned your|r |cRXP_FRIENDLY_Dog|r
.goto 422,44.93,78.32
.use 85955
.complete 31185,2 
step
>>Click on the |cRXP_PICK_Footlocker|r
.goto 422,44.72,78.66
.complete 31184,1 
step
#label BringDogWhaleCorpse
>>|cRXP_WARN_Follow the arrow|r
*|cRXP_WARN_Make sure you have summoned your|r |cRXP_FRIENDLY_Dog|r
.use 85955
.goto 422,40.14,78.07
.complete 31185,3 
step
#completewith ThresherTeeth
#hidewindow
#loop
.goto 422,46.07,70.14,55,0
.goto 422,46.06,80.77,55,0
.goto 422,44.40,77.46,55,0
.goto 422,39.52,78.78,55,0
+1
step
#completewith DogFed
>>Kill |cRXP_ENEMY_Longfin Thresher|r. Loot them for the |T125055:0|t[Thresher Jaw].
>>|cRXP_WARN_Use the|r |T125055:0|t[Thresher Jaw]
.use 85998
.complete 31188,1 
.mob Longfin Thresher
step
#completewith DogFed
>>Click on the |cRXP_PICK_Full Crab Pots|r
.complete 31187,1 
step
#label DogFed
>>Kill |cRXP_FRIENDLY_Rockshell Snapclaws|r.
*|cRXP_WARN_Don't kill the too fast. Wait until your dog is in range and has eaten the previous one.|r
.complete 31186,1 
.use 85955
.mob Rockshell Snapclaw
step
#completewith next
>>Kill |cRXP_ENEMY_Longfin Thresher|r. Loot them for the |T125055:0|t[Thresher Jaw].
>>|cRXP_WARN_Use the|r |T125055:0|t[Thresher Jaw]
.use 85998
.complete 31188,1 
.mob Longfin Thresher
step
>>Click on the |cRXP_PICK_Full Crab Pots|r
.complete 31187,1 
step
#label ThresherTeeth
>>Kill |cRXP_ENEMY_Longfin Thresher|r. Loot them for the |T125055:0|t[Thresher Jaw].
>>|cRXP_WARN_Use the|r |T125055:0|t[Thresher Jaw]
.use 85998
.complete 31188,1 
.mob Longfin Thresher
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dog|r |cRXP_WARN_next to you|r
*|cRXP_WARN_Use the|r |T134434:0|t[Dog's Whistle] |cRXP_WARN_to summon your|r |cRXP_FRIENDLY_Dog|r if you can't see it
.turnin 31186 >>Turn in Dog Food
.use 85955
.target Dog
step
.goto 422,55.66,72.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r
.turnin 31184 >>Turn in Old Age and Treachery
.target Captain "Soggy" Su-Dao
.turnin 31185 >>Turn in Walking Dog
step
.goto 422,54.72,72.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.turnin 31187 >>Turn in On the Crab
.turnin 31188 >>Turn in Shark Week
.accept 31189 >>Accept Reeltime Strategy
.target Deck Boss Arie
step
.goto 422,53.64,76.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Angler Ju Lien|r
.complete 31189,1 
.skipgossip 64259,1
.target Master Angler Ju Lien
step
#completewith next
.cast 125460 >>Click on the |cRXP_PICK_Bamboo Rod|r
.goto 422,53.69,76.02
.cast 131712 >>Click on the |cRXP_PICK_Serpent Rod|r
.goto 422,53.68,76.05
.cast 131715 >>Click on the |cRXP_PICK_Classic Rod|r
.goto 422,53.59,76.04
.cast 131718 >>Click on the |cRXP_PICK_Improvised Rod|r
.goto 422,53.58,76.02
step
>>Kill the |cRXP_ENEMY_Jiao Spawn|r
.complete 31189,2 
.goto 422,53.64,76.06
.mob Jiao Spawn
step
.goto 422,54.72,72.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.turnin 31189 >>Turn in Reeltime Strategy
.target Deck Boss Arie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r
.accept 31190 >>Accept The Mariner's Revenge
.goto 422,54.77,72.11
.target Captain "Soggy" Su-Dao
step
#completewith next
.goto 422,56.15,76.33
.vehicle 64235 >>Click on the |cRXP_PICK_Mist-Hopper Jr.|r
step
>>|cRXP_WARN_Use the|r |T514302:0|t[Harpoon Cannon] (2) |cRXP_WARN_and shoot at the crosshairs|r
.goto 422,56.15,76.33
.complete 31190,1 
.complete 31190,3 
.complete 31190,4 
.complete 31190,2 
step
#completewith next
.exitvehicle >>Leave the vehicle
step
.goto 422,56.57,75.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r
.turnin 31190 >>Turn in The Mariner's Revenge
.target Captain "Soggy" Su-Dao
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.accept 31354 >>Accept Mazu's Bounty
.goto 422,56.57,75.83
.target Deck Boss Arie
step
.goto 422,54.90,72.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Angler Ju Lien|r
.turnin 31354 >>Turn in Mazu's Bounty
.target Master Angler Ju Lien
step
#loop
.goto 422,62.190,56.784,30,0
.goto 422,64.457,64.439,28,0
.goto 422,67.859,63.296,30,0
.goto 422,67.536,57.168,30,0
.goto 422,62.190,56.784,0
.goto 422,64.457,64.439,0
.goto 422,67.859,63.296,0
.goto 422,67.536,57.168,0
>>Kill |cRXP_ENEMY_Mistblade Ripper|r
.complete 31019,1,6 
.mob Mistblade Ripper
step
#completewith next
.goto 422,66.772,63.952,10 >>Enter the cave
step
>>Kill |cRXP_ENEMY_Mistblade Scale-Lord|r
.goto 422,66.43,66.11
.complete 31019,1 
.complete 31019,2 
.mob Mistblade Ripper
.mob Mistblade Scale-Lord
step
.goto 422,66.86,65.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Amber Chunk|r and |cRXP_FRIENDLY_Korven the Prime|r
.turnin 31019 >>Turn in Amber Is Life
.timer 30,Roleplay Duration
.target +Ancient Amber Chunk
.accept 31021 >>Accept Living Amber
.accept 31020 >>Accept Feeding the Beast
.target +Korven the Prime
step
#completewith next
>>Kill |cRXP_ENEMY_Coldbite Crocolisk|r
.complete 31020,1 
.mob Coldbite Crocolisk
step
#loop
.goto 422,66.219,62.486,25,0
.goto 422,66.151,57.196,25,0
.goto 422,63.967,60.886,25,0
.goto 422,66.219,62.486,0
.goto 422,66.151,57.196,0
.goto 422,63.967,60.886,0
>>Click on |cRXP_PICK_Amber Fragments|r.
>>|cRXP_WARN_Use the|r |T463485:0|t[Living Ember] |cRXP_WARN_NEAR |cRXP_FRIENDLY_Korven the Prime|r|r to feed him, while he is not eating a crocodile
.use 82864
.collect 82864,9,31021,0x1,-1
.complete 31021,1 
.target Korven the Prime
step
#loop
.goto 422,67.291,56.815,40,0
.goto 422,65.163,54.581,40,0
.goto 422,62.413,56.369,40,0
.goto 422,64.395,61.529,40,0
.goto 422,66.929,60.934,40,0
.goto 422,65.853,58.294,40,0
.goto 422,67.291,56.815,0
.goto 422,65.163,54.581,0
.goto 422,62.413,56.369,0
.goto 422,64.395,61.529,0
.goto 422,66.929,60.934,0
.goto 422,65.853,58.294,0
>>Kill |cRXP_ENEMY_Coldbite Crocolisk|r
.complete 31020,1 
.mob Coldbite Crocolisk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.goto 422,62.687,60.813
.goto 422,66.86,65.35,0
.turnin 31020 >>Turn in Feeding the Beast
.turnin 31021 >>Turn in Living Amber
.accept 31022 >>Accept Kypari Zar
.target Korven the Prime
step
>>Click on the |cRXP_PICK_Sonar Tower|r
.goto 422,59.799,59.477
.complete 31022,1 
.timer 102,Roleplay Duration
step
>>Kill the spwaning |cRXP_ENEMY_Ik'thik Towerguards|r
.goto 422,59.799,59.477
.complete 31022,2 
.mob Ik'thik Towerguard
step
.goto 422,66.86,65.35,0
.goto 422,59.799,59.477
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.turnin 31022 >>Turn in Kypari Zar
.accept 31026 >>Accept The Root of the Problem
.target Korven the Prime
step
#completewith next
.goto 422,58.526,59.398,8 >>|cRXP_WARN_Enter the cave|r
step
.goto 422,57.368,57.776
>>Kill |cRXP_ENEMY_Coldbite Matriarch|r
*|cRXP_WARN_Running over the eggs will spawn more small crocodiles|r
.complete 31026,1 
.mob Coldbite Matriarch
step
.goto 422,57.368,57.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.turnin 31026 >>Turn in The Root of the Problem
.accept 32030 >>Accept Once in a Hundred Lifetimes
.target Korven the Prime
step
#completewith next
.goto 422,58.526,59.398,8 >>|cRXP_WARN_Leave the cave|r
step
.goto 422,54.26,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.turnin 31092 >>Turn in Feed or Be Eaten
.turnin 31359 >>Turn in The Kunchong Whisperer
.turnin 31398 >>Turn in Falling to Pieces
.target Kaz'tik the Manipulator
step
.goto 422,55.06,35.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31179 >>Turn in The Scent of Blood
.target Kil'ruk the Wind-Reaver
step
.goto 422,54.72,34.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Ik|r
.turnin 32030 >>Turn in Once in a Hundred Lifetimes
.accept 31782 >>Accept Overthrone
.target Klaxxi'va Ik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Ik|r
.goto 422,54.72,34.74
.complete 31782,1 
.target Klaxxi'va Ik
step
.goto 422,55.11,34.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Vor|r
.turnin 31782 >>Turn in Overthrone
.target Klaxxi'va Vor
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 9c) Chapter 10 - Jade Forest 2
#displayname Chapter 10 - Jade Forest Pt. 2
#title Jade Forest 2
<< Horde
step
.goto 371,27.59,32.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.accept 31121 >>Accept Stay a While, and Listen
.target Lorewalker Cho
step
#completewith next
.vehicle 63138 >>|cRXP_WARN_Click on Cho's Pot|r
.timer 78,Roleplay Duration
.goto 371,27.68,32.56
step
>>Wait for the roleplay. Don't try to skip it.
.goto 371,27.68,32.56
.complete 31121,1 
step
.goto 371,27.59,32.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31121 >>Turn in Stay a While, and Listen
.accept 31132 >>Accept A Mile in My Shoes
.timer 1,Roleplay Duration
.target Lorewalker Cho
step
#completewith next
.goto 371,30.84,34.05
.logout 19 >>|cRXP_WARN_Logout at the waypoint location|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.goto 371,30.84,34.05
.goto 371,27.59,32.68,0
.turnin 31132 >>Turn in A Mile in My Shoes
.accept 31134 >>Accept If These Stones Could Speak
.target Lorewalker Cho
step
>>Click on the |cRXP_PICK_First Stone Monolith|r
.goto 371,30.88,33.69
.complete 31134,1 
step
>>Click on the |cRXP_PICK_Second Stone Monolith|r. Kill the |cRXP_ENEMY_Bloodthirsty Saurok|r
.goto 371,30.64,33.78
.complete 31134,2 
.mob Bloodthirsty Saurok
step
>>Click on the |cRXP_PICK_Third Stone Monolith|r
.goto 371,30.59,34.15
.complete 31134,3 
step
.goto 371,30.84,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31134 >>Turn in If These Stones Could Speak
.accept 31152 >>Accept Peering Into the Past
.timer 90,Roleplay Duration
.target Lorewalker Cho
step
>>|cRXP_WARN_Follow|r |cRXP_FRIENDLY_Lorewalker Cho|r
.goto 371,31.46,34.79,22,0
.goto 371,30.04,31.51,22,0
.goto 371,28.83,32.60
.complete 31152,1 
.target Lorewalker Cho
step
.goto 371,28.83,32.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31152 >>Turn in Peering Into the Past
.target Lorewalker Cho
.accept 31167 >>Accept Family Tree
step
>>|cRXP_WARN_Click on the|r |cRXP_PICK_Incense Bundle|r
.goto 371,28.79,32.48
.complete 31167,1 
step
.goto 371,28.83,32.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31167 >>Turn in Family Tree
.target Lorewalker Cho
.accept 29879 >>Accept Swallowed Whole
step
#completewith EngorgedCrocolisk
#hidewindow
#loop
.goto 371,24.48,35.57,32,0
.goto 371,23.57,33.43,32,0
.goto 371,22.41,34.98,32,0
.goto 371,23.62,36.74,32,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Engorged Crocolisk|r
.complete 29879,1 
.mob Engorged Crocolisk
step
>>Pick up the |T133912:0|t[|cRXP_PICK_Speckled Trouts|r] (|cRXP_WARN_possible while mounted)|r
.complete 29879,2 
.target Speckled Trout
step
#label EngorgedCrocolisk
>>Kill |cRXP_ENEMY_Engorged Crocolisk|r
.complete 29879,1 
.mob Engorged Crocolisk
step
.goto 371,26.29,37.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tooki Tooki|r
.turnin 29879 >>Turn in Swallowed Whole
.accept 29935 >>Accept Orders are Orders
.target Tooki Tooki
step
.goto 371,25.88,38.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bo Bo|r
.accept 29933 >>Accept The Bees' Knees
.target Bo Bo
step
.goto 371,25.93,38.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nibi Nibi|r
.accept 29924 >>Accept Kill Kher Shan
.target Nibi Nibi
step
.goto 371,28.19,38.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeek Jeek|r
.accept 31241 >>Accept Wicked Wikkets
.target Jeek Jeek
step
#completewith next
>>Kill |cRXP_ENEMY_Battleworn Paratroopers|r. Loot them for the |T463448:0|t[|cRXP_LOOT_Alliance Service Medallion|r]
.complete 31241,1 
.mob Battleworn Paratrooper
step
>>Kill |cRXP_ENEMY_Jack Arrow|r. Loot him for |T134166:0|t[Captain Jack's Head]. Click it in your bags.
.goto 371,30.86,41.18
.collect 134166,1,31261,0
.accept 31261 >>Accept Captain Jack's Dead
.mob Jack Arrow
step
#loop
.goto 371,30.13,39.94,32,0
.goto 371,31.26,39.61,32,0
.goto 371,31.78,42.50,32,0
.goto 371,29.95,42.19,32,0
>>Kill |cRXP_ENEMY_Battleworn Paratroopers|r. Loot them for the |T463448:0|t[|cRXP_LOOT_Alliance Service Medallion|r]
.complete 31241,1 
.mob Battleworn Paratrooper
step
#completewith next
.goto 371,33.35,42.34,8 >>Enter the cave
step
.goto 371,33.35,41.63
>>Kill |cRXP_ENEMY_Kher Shan|r |cRXP_WARN_inside the cave|r
.complete 29924,1 
.mob Kher Shan
step
.goto 371,33.35,41.63
>>Click on the quest popup under your minimap or turn in the quest in your quest log.
.turnin 29924 >>Turn in Kill Kher Shan
step
#loop
.goto 371,32.93,45.42,20,0
.goto 371,30.78,45.11,20,0
.goto 371,29.10,43.94,25,0
.goto 371,28.24,43.10,28,0
.goto 371,29.45,45.55,30,0
>>Kill |cRXP_ENEMY_Tigerflies|r. Loot them for the |T1:0|t[|cRXP_LOOT_Bug Leg|r]
.complete 29933,1 
.mob Tigerfly
step
.goto 371,27.99,47.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
.turnin 29935 >>Turn in Orders are Orders
.turnin 31261 >>Turn in Captain Jack's Dead
.turnin 29933 >>Turn in The Bees' Knees
.turnin 31241 >>Turn in Wicked Wikkets
.accept 29936 >>Accept Instant Messaging
.target Chief Kah Kah
step
>>|cRXP_WARN_Click on the|r |cRXP_PICK_Signal Flare|r
.goto 371,27.98,46.78
.complete 29936,1 
step
.goto 371,28.27,47.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 29936 >>Turn in Instant Messaging
.target General Nazgrim
.accept 29941 >>Accept Beyond the Horizon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
.goto 371,28.349,46.970
.skipgossip 56340,1
.complete 29941,1 
.target Shokia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kah Kah|r
.goto 371,27.988,47.194
.skipgossip 56336,1
.complete 29941,4 
.target Kah Kah
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.goto 371,27.099,48.986
.skipgossip 56478,1
.complete 29941,3 
.target Shademaster Kiryn
step
#loop
.goto 371,27.058,50.655,12,0
.goto 371,28.068,50.402,12,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gorrok|r
.skipgossip 56477,1
.complete 29941,2 
.target Sergeant Gorrok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r and |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 29941 >>Turn in Beyond the Horizon
.goto 371,28.25,47.77
.target +General Nazgrim
.accept 29937 >>Accept Furious Fowl
.goto 371,28.297,47.793
.target +Rivett Clutchpop
step
.goto 371,27.985,47.196
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
.accept 31239 >>Accept What's in a Name Name?
.target Chief Kah Kah
step
#hidewindow
#completewith RiverstrideJinyu
#label RiverstrideJinyuA
.goto 371,28.409,45.372,18,0
.goto 371,30.067,47.278,25,0
.goto 371,34.370,47.798,25,0
.goto 371,33.611,45.314,25,0
.goto 371,29.212,44.341,25 >>A
step
#completewith next
>>Kill |cRXP_ENEMY_Hungry Bloodtalons|r. Loot them for the |T237412:0|t[|cRXP_LOOT_Fistful of Bird Guts|r]
.complete 29937,1 
.mob Hungry Bloodtalon
step
#completewith RiverstrideJinyuA
#label RiverstrideJinyu
.goto 371,28.409,45.372,0
.goto 371,30.067,47.278,0
.goto 371,34.370,47.798,0
.goto 371,33.611,45.314,0
.goto 371,29.212,44.341,0
>>Kill |cRXP_ENEMY_Riverstride Jinyu|r
.complete 31239,1 
.mob Riverstride Jinyu
step
#requires RiverstrideJinyu
#completewith next
>>Kill |cRXP_ENEMY_Riverstride Jinyu|r
.complete 31239,1 
.mob Riverstride Jinyu
step
#requires RiverstrideJinyu
#loop
.goto 371,31.903,49.596,22,0
.goto 371,31.407,53.829,22,0
.goto 371,29.808,51.347,25,0
.goto 371,27.943,52.863,28,0
.goto 371,25.672,51.566,38,0
.goto 371,29.510,50.449,28,0
.goto 371,30.147,47.972,20,0
.goto 371,31.903,49.596,0
.goto 371,31.407,53.829,0
.goto 371,29.808,51.347,0
.goto 371,27.943,52.863,0
.goto 371,25.672,51.566,0
.goto 371,29.510,50.449,0
.goto 371,30.147,47.972,0
>>Kill |cRXP_ENEMY_Hungry Bloodtalons|r. Loot them for the |T237412:0|t[|cRXP_LOOT_Fistful of Bird Guts|r]
.complete 29937,1 
.mob Hungry Bloodtalon
step
.goto 371,27.24,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 29937 >>Turn in Furious Fowl
.accept 29939 >>Accept Boom Bait
.target Rivett Clutchpop
step
.goto 371,27.033,50.842
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eekle Eekle|r
.accept 29942 >>Accept Silly Wikket, Slickies are for Hozen
.target Eekle Eekle
step
#completewith ExplodedSlicky
>>Kill |cRXP_ENEMY_Muck Snapper|r. Loot them for the |T237339:0|t[Snapper Steaks]
.complete 29942,1 
.mob Muck Snapper
step
#completewith next
.goto 371,26.726,55.367
.cast 105999 >>|cRXP_WARN_Use the|r |T463515:0|t[Gut Bomb] |cRXP_WARN_at the waypoint location|r.
step
#label ExplodedSlicky
>>Pick up the |T133916:0|t[|cRXP_PICK_Exploded Slickies|r]
.goto 371,26.726,55.367,0
.goto 371,26.55,55.64
.use 76262
.complete 29939,1 
step
#loop
.goto 371,26.000,54.147,35,0
.goto 371,27.173,54.755,22,0
.goto 371,27.457,56.936,35,0
.goto 371,26.010,56.384,28,0
.goto 371,26.000,54.147,0
.goto 371,27.173,54.755,0
.goto 371,27.457,56.936,0
.goto 371,26.010,56.384,0
>>Kill |cRXP_ENEMY_Muck Snapper|r. Loot them for the |T237339:0|t[Snapper Steaks]
.complete 29942,1 
.mob Muck Snapper
step
>>Kill |cRXP_ENEMY_Muck Snapper|r. Loot them for the |T237339:0|t[Snapper Steaks]
.goto 371,27.12,55.13
.complete 29942,1 
.mob Muck Snapper
step
.goto 371,27.04,50.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eekle Eekle|r
.turnin 29942 >>Turn in Silly Wikket, Slickies are for Hozen
.target Eekle Eekle
step
.goto 371,27.24,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 29939 >>Turn in Boom Bait
.target Rivett Clutchpop
step
#loop
.goto 371,30.067,47.278,25,0
.goto 371,28.409,45.372,18,0
.goto 371,29.212,44.341,25,0
.goto 371,33.611,45.314,25,0
.goto 371,34.370,47.798,25,0
.goto 371,30.067,47.278,0
.goto 371,28.409,45.372,0
.goto 371,29.212,44.341,0
.goto 371,33.611,45.314,0
.goto 371,34.370,47.798,0
>>Kill |cRXP_ENEMY_Riverstride Jinyu|r
.complete 31239,1 
.mob Riverstride Jinyu
step
.goto 371,27.98,47.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
.turnin 31239 >>Turn in What's in a Name Name?
.target Chief Kah Kah
step
.goto 371,28.60,47.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
.accept 29730 >>Accept Scouting Report: Hostile Natives
.timer 1,Roleplay Duration
.target Riko
step
>>Click on the |cRXP_PICK_Warning Sign|r
.goto 371,38.31,45.42
.complete 29730,1 
.target Warning Sign
step
>>Click on the |cRXP_PICK_Lifelike Jade Statue|r
.goto 371,38.87,45.98
.complete 29730,2 
.timer 1,Roleplay Duration
.target Lifelike Jade Statue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Widow Greenpaw|r
.goto 371,39.23,46.21
.skipgossip 55381,1
.timer 11,Roleplay Duration
.complete 29730,3 
.target Widow Greenpaw
step
.isOnQuest 29730
#completewith next
.exitvehicle >>Leave the vehicle
step
.goto 371,28.60,47.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
.turnin 29730 >>Turn in Scouting Report: Hostile Natives
.target Riko
step
.goto 371,28.65,47.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.accept 29731 >>Accept Scouting Report: On the Right Track
.timer 32,Roleplay Duration
.target Shademaster Kiryn
step
>>Use |T458733:0|t[Smoke Bomb] (1) on |cRXP_ENEMY_Lurking Tiger|r
.goto 371,48.60,60.12
.complete 29731,1 
.mob Lurking Tiger
step
#completewith next
.exitvehicle >>Exit the vehicle
step
.goto 371,28.65,47.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.turnin 29731 >>Turn in Scouting Report: On the Right Track
.target Shademaster Kiryn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
.accept 29823 >>Accept Scouting Report: The Friend of My Enemy
.goto 371,28.60,47.43
.timer 43,Roleplay Duration
.target Riko
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r when she gets trapped
>>|T132939:0|t[Uppercut] (1): |cRXP_WARN_Used to knock enemies away|r
>>|T237150:0|t[Fling Filth] (2): |cRXP_WARN_Used to kill the enemies at range|r
.goto 371,49.82,70.51
.complete 29823,1 
.skipgossip 55688,1
step
#completewith next
.exitvehicle >>Exit the vehicle
step
.goto 371,28.60,47.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
.turnin 29823 >>Turn in Scouting Report: The Friend of My Enemy
.target Riko
step
.goto 371,28.64,47.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
.accept 29824 >>Accept Scouting Report: Like Jinyu in a Barrel
.timer 23,Roleplay Duration
.target Shokia
step
>>Click on the |cRXP_PICK_Sniper Rifle|r
>>|cRXP_WARN_Afterwards click on the |cRXP_ENEMY_Pearlfin Poolwatcher|r to kill them and to protect |cRXP_FRIENDLY_Shademaster Kiryn|r|r
*You also have to click on |cRXP_ENEMY_Kiryn's Poison Barrels|r
.goto 371,62.56,82.15
.complete 29824,1 
.mob Pearlfin Poolwatcher
.target Kiryn Poison Barrel
step
#completewith next
.exitvehicle >>Exit the vehicle
step
.goto 371,28.64,47.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
.turnin 29824 >>Turn in Scouting Report: Like Jinyu in a Barrel
.target Shokia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.accept 29943 >>Accept Guerrillas in our Midst
.goto 371,28.67,47.53
.target General Nazgrim
step
.goto 371,27.23,50.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.accept 29968 >>Accept Green-ish Energy
.target Rivett Clutchpop
step
#completewith AllianceInfiltrator
#hidewindow
#loop
.goto 371,29.17,52.67,30,0
.goto 371,30.32,53.83,25,0
.goto 371,31.79,51.26,35,0
.goto 371,29.56,50.01,35,0
.goto 371,29.17,52.67,0
.goto 371,30.32,53.83,0
.goto 371,31.79,51.26,0
.goto 371,29.56,50.01,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Alliance Infiltrator|r
.complete 29943,1 
.mob Alliance Infiltrator
step
>>Click on the |cRXP_PICK_Green Branches|r
.complete 29968,1 
step
#label AllianceInfiltrator
>>Kill |cRXP_ENEMY_Alliance Infiltrator|r
.complete 29943,1 
.mob Alliance Infiltrator
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r |cRXP_WARN_next to you|r
.turnin 29943 >>Turn in Guerrillas in our Midst
.accept 29966 >>Accept Burning Down the House
.target General Nazgrim
step
>>|cRXP_WARN_Use|r |T461806:0|t[Nazgrim's Grog]
.use 76336
.goto 371,29.44,54.18
.complete 29966,1 
step
.goto 371,27.23,50.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 29968 >>Turn in Green-ish Energy
.accept 29967 >>Accept Boom Goes the Doonamite!
.target Rivett Clutchpop
step
#completewith next
.gossipoption 40650 >>Talk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.target Rivett Clutchpop
step
>>Use |T136173:0|t[Throw Methane Bomb] (1) to create a poison cloud at the rectangle position
>>Kill |cRXP_ENEMY_Jinyu Attackers|r
.goto 371,28.91,49.18
.complete 29967,1 
.mob Jinyu Attackers
step
.goto 371,28.98,49.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 29967 >>Turn in Boom Goes the Doonamite!
.target Rivett Clutchpop
step
.goto 371,28.67,47.53
.convertquest 30015,31230 << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 29966 >>Turn in Burning Down the House
.accept 30015 >>Accept Dawn's Blossom
.target General Nazgrim
step
.goto 371,46.81,46.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30015 >>Turn in Dawn's Blossom
.timer 25,Roleplay Duration
.target Lorewalker Cho
step
.goto 371,47.15,46.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
.accept 31230 >>Accept Welcome to Dawn's Blossom
.target Toya
step
.goto 371,46.78,45.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai Wanderbrew|r
.complete 31230,3 
.target Kai Wanderbrew
step
.goto 371,48.49,44.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Windfur|r
.complete 31230,1 
.target Master Windfur
step
.goto 371,45.72,43.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peiji Goldendraft|r
.complete 31230,2 
.target Peiji Goldendraft
step
.goto 371,47.16,46.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
.turnin 31230 >>Turn in Welcome to Dawn's Blossom
.target Toya
step
#include 7) Main Campaign Jade Forest Neutral
step
.goto 371,28.03,47.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 30499 >>Turn in Get Back Here!
.target General Nazgrim
.accept 30484 >>Accept Gauging Our Progress
.accept 30466 >>Accept Sufficient Motivation
step
>>Click on the |cRXP_PICK_Barrel of Slickies|r
.goto 371,28.15,47.34
.complete 30466,2 
step
#completewith GaugingOurProgress
>>Click on the |cRXP_FRIENDLY_Lazy Hozen|r
.complete 30466,1 
.target Lazy Hozen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.goto 371,28.41,47.79
.complete 30484,2 
.skipgossip 59305,1
.target Rivett Clutchpop
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.goto 371,29.16,50.89
.complete 30484,1 
.skipgossip 56841,1
.target Shademaster Kiryn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
.goto 371,28.45,51.92
.complete 30484,3 
.skipgossip 56838,1
.target Shokia
step
#label GaugingOurProgress
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
.goto 371,27.00,54.94
.complete 30484,4 
.skipgossip 56840,1
.target Riko
step
#loop
.goto 371,26.99,50.60,25,0
.goto 371,27.18,46.53,26,0
.goto 371,28.70,47.40,25,0
.goto 371,28.72,49.73,20,0
>>Click on the |cRXP_FRIENDLY_Lazy Hozen|r
.complete 30466,1 
.target Lazy Hozen
step
.goto 371,28.03,47.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 30466 >>Turn in Sufficient Motivation
.turnin 30484 >>Turn in Gauging Our Progress
.target General Nazgrim
step << Horde
.goto 371,28.22,46.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.accept 30485 >>Accept Last Piece of the Puzzle
.target Lorewalker Cho
step
#include 7) Main Campaign Jade Forest Neutral 2
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 9c) Chapter 10 - Jade Forest 2
#displayname Chapter 10 - Jade Forest Pt. 2
#title Jade Forest 2
<< Alliance
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pearlkeeper Fujin.|r
.accept 29894 >>Accept Spirits of the Water
.goto 371,58.76,81.28
.target Pearlkeeper Fujin
step
.goto 371,58.58,82.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r
.complete 29894,1 
.skipgossip 30,RP
.target Elder Lusshan
step
.goto 371,58.97,81.7
>>do xyz
.complete 29894,2 
step
.goto 371,58.97,81.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
.turnin 29894 >>Turn in Spirits of the Water
.target Bold Karasshi
step
.goto 371,58.98,81.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r
.accept 29733 >>Accept SI:7 Report: Lost in the Woods
.timer 35,RP
.skipgossip 55333,1
.target Rell Nightwind
step
#completewith next
.goto 371,49.88,70.76
.gossipoption 40098 >>Talk to |cRXP_FRIENDLY_Amber Kearnen|r
.timer 25,RP
.target Amber Kearnen
step
.goto 371,49.83,70.96
>>Use |T135975:0|t[Twin Strike,] |T135975:0|t[Masterful Strike] and |T135975:0|t[Sure Strike.]
.complete 29733,1 
.mob Ambushing Hozen
step
#completewith next
.exitvehicle >>Leave the vehicle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r and |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
.turnin 29733 >>Turn in SI:7 Report: Lost in the Woods
.goto 371,58.97,81.83
.target +Rell Nightwind
.accept 29725 >>Accept SI:7 Report: Fire From the Sky
.timer 46,RP
.goto 371,58.89,81.89,5,0
.goto 371,58.84,81.67
.target +Sully "The Pickle" McLeary
step
.isOnQuest 29725
.goto 371,50.64,62.99,10 >>|cRXP_WARN_Follow the Arrow.|r |cRXP_WARN_Kill |cRXP_ENEMY_Lurking Tiger|r using|r |T463556:0|t[Light Scope](1)
.mon Lurking Tiger
step
.isOnQuest 29725
.goto 371,48.47,58.6,10 >>|cRXP_WARN_Follow the Arrow.|r |cRXP_WARN_Kill |cRXP_ENEMY_Lurking Tiger|r using|r |T463556:0|t[Light Scope](1)
.timer 7,RP
step
.isOnQuest 29725
.goto 371,46.35,61.74,10 >>|cRXP_WARN_Follow the Arrow.|r |cRXP_WARN_Kill |cRXP_ENEMY_Lurking Tiger|r using|r |T463556:0|t[Light Scope](1)
.timer 45,RP
step
.isOnQuest 29725
.goto 371,50.94,63.06,20 >>|cRXP_WARN_Follow the Arrow.|r |cRXP_WARN_Kill |cRXP_ENEMY_Lurking Tiger|r using|r |T463556:0|t[Light Scope](1)
.timer 10,RP
step
.goto 371,50.94,63.06
>>|cRXP_WARN_Kill |cRXP_ENEMY_Ambushing Hozen|r using|r |T463556:0|t[Light Scope](1)
.complete 29725,4 
.mob Ambushing Hozen
step
#completewith next
.exitvehicle >>Leave the vehicle
step
.goto 371,58.84,81.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
.turnin 29725 >>Turn in SI:7 Report: Fire From the Sky
.target Sully "The Pickle" McLeary
step
.goto 371,59.07,81.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Little Lu|r
.accept 29726 >>Accept SI:7 Report: Hostile Natives
.timer 35,RP
.target Little Lu
step
.goto 371,38.31,45.4
>>Click on the |cRXP_PICK_Sign|r
.complete 29726,1 
step
.goto 371,38.86,46.2
>>Click on the |cRXP_FRIENDLY_Lifelike Jade Statue|r
.complete 29726,2 
.target Lifelike Jade Statue
step
.goto 371,38.94,46.32
>>Click on the |cRXP_FRIENDLY_Suspicious Jade Statue|r
.complete 29726,3 
.timer 8,RP
.target Suspicious Jade Statue
step
.isOnQuest 29726
.goto 371,39.32,46.23
.gossipoption 40113 >>Talk to |cRXP_FRIENDLY_Widow Greenpaw|r
.timer 53,RP
.target Widow Greenpaw
step
.goto 371,39.25,46.22
>>do xyz
.complete 29726,4 
.target Widow Greenpaw
step
#completewith next
.exitvehicle >>Leave the vehicle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Little Lu|r and |cRXP_FRIENDLY_Amber Kearnen|r
.turnin 29726 >>Turn in SI:7 Report: Hostile Natives
.goto 371,59.06,81.89
.target +Little Lu
.accept 29727 >>Accept SI:7 Report: Take No Prisoners
.timer 16,RP
.goto 371,58.93,81.93
.target +Amber Kearnen
step
#completewith next
.goto 371,28.58,54.44,10 >>Click on the |cRXP_PICK_Sniper Rifle.|r
step
>>Click on|cRXP_ENEMY_Hozen's|r |cRXP_PICK_Barrel's|r and |cRXP_ENEMY_Orc's.|r
.complete 29727,1 
step
.goto 371,58.93,81.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amber Kearnen|r
.turnin 29727 >>Turn in SI:7 Report: Take No Prisoners
.target Amber Kearnen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r and |cRXP_FRIENDLY_Admiral Taylor|r
.accept 29888 >>Accept Seek Out the Lorewalker
.goto 371,58.97,81.70
.target +Bold Karasshi
.accept 29903 >>Accept A Perfect Match
.goto 371,58.87,81.69
.target +Admiral Taylor
step
#loop
.goto 371,58.87,82.35,30,0
.goto 371,59.32,83.5,30,0
.goto 371,59.44,84.3,30,0
.goto 371,59.65,85.66,30,0
.goto 371,58.9,84.7,30,0
.goto 371,58.5,84.21,30,0
.goto 371,57.98,82.23,30,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pearlfin Aqualyte.|r
.complete 29903,1 
.target Pearlfin Aqualyte
step
.goto 371,58.87,81.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 29903 >>Turn in A Perfect Match
.target Admiral Taylor
.accept 29904 >>Accept Bigger Fish to Fry
step
#loop
.goto 371,58.72,78.06,30,0
.goto 371,59.89,76.45,30,0
.goto 371,58.72,75.34,30,0
.goto 371,57.75,76.67,30,0
.goto 371,58.72,78.06,0
.goto 371,59.89,76.45,0
.goto 371,58.72,75.34,0
.goto 371,57.75,76.67,0
>>Kill |cRXP_ENEMY_Wild Stalker,|r |cRXP_ENEMY_Stoneskin Basilisk,|r |cRXP_ENEMY_Wild Huntress|r and |cRXP_ENEMY_Jeweled Macaw.|r
.complete 29904,1 
.mob Wild Stalker
.mob Stoneskin Basilisk
.mob Wild Huntress
.mob Jeweled Macaw
step
.goto 371,58.86,81.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 29904 >>Turn in Bigger Fish to Fry
.target Admiral Taylor
.accept 29905 >>Accept Let Them Burn
.accept 29906 >>Accept Carp Diem
step
#completewith next
>>Kill |cRXP_ENEMY_Grookin Reinforcement|r and |cRXP_ENEMY_Slingtail Recruit.|r
.complete 29905,1 
.mob Grookin Reinforcement
.mob Slingtail Recruit
step
.goto 371,54.98,79.96
>>Kill |cRXP_ENEMY_Chief Gukgut|r
.complete 29906,1 
.mob chief gukgut
step
#loop
.goto 371,53.42,80.34,30,0
.goto 371,53.61,81.31,30,0
.goto 371,54.09,82.81,30,0
.goto 371,55.79,81.84,30,0
>>Kill |cRXP_ENEMY_Grookin Reinforcement|r and |cRXP_ENEMY_Slingtail Recruit.|r
.complete 29905,1 
.mob Grookin Reinforcement
.mob Slingtail Recruit
step
.goto 371,58.89,81.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r
.turnin 29905 >>Turn in Let Them Burn
.turnin 29906 >>Turn in Carp Diem
.target Elder Lusshan
step
.goto 371,53.72,91.50
>>Click on the |cRXP_FRIENDLY_Mouthwatering Brew.|r
.turnin 29888 >>Turn in Seek Out the Lorewalker
.accept 29889 >>Accept Borrowed Brew
.target Mouthwatering Brew
step
#completewith next
.goto 371,53.71,91.48
.cast 105594 >>Click on the |cRXP_FRIENDLY_Mouthwatering Brew.|r
.timer 7,RP
step
.goto 371,53.67,91.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 29889 >>Turn in Borrowed Brew
.accept 31130 >>Accept A Visit with Lorewalker Cho
.timer 13,RP
.target Lorewalker Cho
step
.goto 371,53.72,90.99
>>Click on the |cRXP_PICK_Tree|r
.complete 31130,1 
.timer 27,RP
step
#completewith next
.goto 371,54.08,90.67
.gossipoption 33293 >>Click on the |cRXP_PICK_Painting|r
.timer 40,RP
step
>>Right-Click the Buff: |T237156:0|t[Painting] in your Buff Frame to save 20seconds.
.complete 31130,2 
.timer 24,RP
step
#completewith next
.goto 371,54.02,91.33
.cast 123949 >>Click on the |cRXP_PICK_Bird Feeder|r
step
>>Right-Click the Buff: |T605484:0|t[Feeding] in your Buff Frame to save 20seconds.
.complete 31130,3 
step
.goto 371,54.01,91.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31130 >>Turn in A Visit with Lorewalker Cho
.target Lorewalker Cho
.accept 29891 >>Accept Potency
.accept 29892 >>Accept Body
.accept 29893 >>Accept Hue
step
#hidewindow
#completewith Amberfly Wing
#loop
.goto 371,54.86,88.88,30,0
.goto 371,58.01,89.99,30,0
.goto 371,62.56,89.69,30,0
.goto 371,53.58,88.85,30,0
+1
step
#completewith Mist Horror Heart
>>Kill |cRXP_ENEMY_Glittering Amberfly.|r Click on them for |cRXP_LOOT_Amberfly Wing.|r
.complete 29893,1 
.mob Glittering Amberfly
step
#completewith Mist Horror Heart
>>Kill |cRXP_ENEMY_Bog Crocolisk|r Loot them for |cRXP_LOOT_Pristine Crocolisk Eye|r
.complete 29892,1 
.mob Bog Crocolisk
step
#label Mist Horror Heart
>>After killing 8 |cRXP_ENEMY_Mist Creeper's.|r The |cRXP_ENEMY_Mist Horror|r will spawn kill it and loot it for |cRXP_LOOT_Mist Horror Heart.|r
.complete 29891,1 
.complete 29891,2 
.mob mist creeper
.mob Mist Horror
step
#completewith next
>>Kill |cRXP_ENEMY_Glittering Amberfly.|r Click on them for |cRXP_LOOT_Amberfly Wing.|r
.complete 29893,1 
.mob Glittering Amberfly
step
>>Kill |cRXP_ENEMY_Bog Crocolisk|r Loot them for |cRXP_LOOT_Pristine Crocolisk Eye.|r
.complete 29892,1 
.mob Bog Crocolisk
step
#label Amberfly Wing
>>Kill |cRXP_ENEMY_Glittering Amberfly.|r Click on them for |cRXP_LOOT_Amberfly Wing.|r
.complete 29893,1 
.mob Glittering Amberfly
step
.goto 371,53.78,90.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 29891 >>Turn in Potency
.turnin 29892 >>Turn in Body
.turnin 29893 >>Turn in Hue
.accept 29890 >>Accept Finding Your Center
.timer 25,RP
.target Lorewalker Cho
step
#completewith next
.goto 371,54.68,92.06
.cast 105668 >> Click on |cRXP_PICK_Potent Dream Brew|r
.timer 102,RP
step
.goto 371,54.58,91.89
>>Use |T450906:0|t[Left](1) and |T450908:0|t[Right](2) to keep the line close to the center.
.complete 29890,1 
step
#completewith next
.exitvehicle >>Leave the vehicle
step
.goto 371,65.90,79.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
.turnin 29890 >>Turn in Finding Your Center
.accept 29898 >>Accept Sacred Waters
.target +Anduin Wrynn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Whitepaw|r and |cRXP_FRIENDLY_Lina Whitepaw|r
.accept 29899 >>Accept Rest in Peace
.goto 371,65.99,79.29
.target +Ren Whitepaw
.accept 29900 >>Accept An Ancient Legend
.goto 371,65.99,79.39
.target +Lina Whitepaw
step
#completewith next
>>Kill |cRXP_ENEMY_Tortured Spirits|r
.complete 29899,1 
.mob tortured spirit
step
#completewith next
.goto 371,66.38,82.16,10 >>Enter the Cave
step
.goto 371,66.82,82.08
>>Click on |cRXP_PICK_Restorative Body|r
.complete 29898,1 
step
.goto 371,66.96,83.03,15,0
.goto 371,67.26,81.63
>>Click on |cRXP_PICK_Restorative Mind|r
.complete 29898,2 
step
.goto 371,68.03,81.85
>>Click on |cRXP_PICK_Restorative Spirit|r
.complete 29898,3 
step
#completewith next
>>Kill |cRXP_ENEMY_Shade of Ling Heartfist|r
.complete 29900,1 
.mob shade of ling heartfist
step
.goto 371,66.43,80.01
>>Click on |cRXP_PICK_Restorative Heart|r
.complete 29898,4 
step
.goto 371,66.77,80.3
>>Kill |cRXP_ENEMY_Shade of Ling Heartfist|r
.complete 29900,1 
.mob shade of ling heartfist
step
.goto 371,66.50,80.51
>>Click on |cRXP_PICK_Scroll of Sorrow|r
.complete 29900,2 
step
#completewith next
.goto 371,66.72,81.92,20,0
.goto 371,66.38,82.16,10 >>Leave the Cave
step
#loop
.goto 371,65.99,82.12,30,0
.goto 371,65.78,82.97,30,0
.goto 371,65.15,81.93,30,0
.goto 371,65.71,81.28,30,0
>>Kill |cRXP_ENEMY_Tortured Spirits|r
.complete 29899,1 
.mob tortured spirit
step
.goto 371,65.98,79.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lina Whitepaw|r and |cRXP_FRIENDLY_Ren Whitepaw|r
.turnin 29898 >>Turn in Sacred Waters
.goto 371,65.99,79.4
.target +Lina Whitepaw
.turnin 29899 >>Turn in An Ancient Legend
.turnin 29900 >>Turn in An Ancient Legend
.accept 29901 >>Accept Anduin's Decision
.goto 371,65.99,79.3
.target +Ren Whitepaw
step
.goto 371,65.91,79.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin|r
.complete 29901,1 
.target Anduin
.skipgossip
step
.goto 371,58.88,81.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 29901 >>Turn in Anduin's Decision
.target Admiral Taylor
step
.goto 371,58.05,80.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r
.accept 29922 >>Accept In Search of Wisdom
.target Elder Lusshan
step
.goto 371,57.95,82.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitemaster Ut-Nam|r
.complete 29922,1 
.target Kitemaster Ut-Nam
step
.goto 371,47.14,46.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
.turnin 31230 >>Turn in Welcome to Dawn's Blossom
.target Toya
step
#include 7) Main Campaign Jade Forest Neutral
step
.goto 371,58.07,80.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 30498 >>Turn in Get Back Here!
.target Admiral Taylor
.accept 30568 >>Accept Helping the Cause
step
.goto 371,58.55,82.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
.accept 30565 >>Accept An Unexpected Advantage
.target Sully "The Pickle" McLeary
step
#completewith next
.goto 371,54.81,79.76
.gossipoption 39488 >>Talk to |cRXP_FRIENDLY_Amber Kearnen|r
.target Amber Kearnen
step
.goto 371,54.67,80.07
>>Kill the |cRXP_ENEMY_Hozen Brawler|r
.complete 30568,2 
.mob Hozen Brawler
step
#completewith next
#loop
.goto 371,59.09,83.75,30,0
.goto 371,60.04,83.81,30,0
.goto 371,59.43,85.06,30,0
.goto 371,58.73,84.73,30,0
.goto 371,59.09,83.75,0
.goto 371,60.04,83.81,0
.goto 371,59.43,85.06,0
.goto 371,58.73,84.73,0
.gossipoption 39293 >>Talk to |cRXP_FRIENDLY_Pearlfin Recruit|r
.target Pearlfin Recruit
step
>>Kill |cRXP_ENEMY_Pearlfin Recruit|r
.complete 30568,1 
.mob Pearlfin Recruit
step
#loop
.goto 371,59.97,86.51,30,0
.goto 371,59.06,86.94,30,0
.goto 371,59.71,88.47,30,0
.goto 371,60.53,88.23,30,0
.goto 371,61.05,87.74,30,0
.goto 371,61.09,86.98,30,0
.goto 371,59.97,86.51,0
.goto 371,59.06,86.94,0
.goto 371,59.71,88.47,0
.goto 371,60.53,88.23,0
.goto 371,61.05,87.74,0
.goto 371,61.09,86.98,0
>>Interact with |cRXP_FRIENDLY_Wounded Pearlfin.|r
.complete 30568,3 
.target Wounded Pearlfin
step
#loop
.goto 371,61.64,76.69,40,0
.goto 371,65.14,79.72,40,0
.goto 371,61.64,76.69,0
.goto 371,65.14,79.72,0
>>Kill |cRXP_ENEMY_Slingtail Ambusher|r Loot them for |cRXP_LOOT_Rusty Locking Bolt|r and |cRXP_LOOT_Water-Damaged Gear.|r
.complete 30565,2 
.complete 30565,1 
.mob Slingtail Ambusher
step
.goto 371,58.08,80.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 30568 >>Turn in Helping the Cause
.target Admiral Taylor
step
.goto 371,58.56,82.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
.turnin 30565 >>Turn in An Unexpected Advantage
.target Sully "The Pickle" McLeary
step << Alliance
.goto 371,58.85,81.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.accept 31362 >>Accept Last Piece of the Puzzle
.target Lorewalker Cho
step
#include 7) Main Campaign Jade Forest Neutral 2
]]);
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 9) Kun-Lai Summit
#displayname Chapter 7 - Kun-Lai Summit
#title Kun-Lai Summit
#next 9a) Townlong Steppes
step <<Monk
#include 1) Monk Quests
step
.goto 371,65.25,37.20,30,0
.cast 437035 >>Use |T134376:0|t[Bronze Timepiece] to teleport to the dragonriding quests.
.itemcount 216712,1
.use 216712
step << Alliance
#completewith next
.goto 371,65.21,37.46,5,0
.goto 371,45.8,84.6,40 >>Click on the |cRXP_PICK_Portal|r to go back.
step << Alliance
.isOnQuest 80013
.goto 418,86.84,11.06,10 >> |cRXP_WARN_Follow the Arrow|r
step << Alliance
#completewith next
.cast 441154 >> Use |T134491:0|t[Nostwin's Voucher] to teleport to Infinite Bazaar.
.use 217930
.itemcount 217930,1
step << Horde
.goto 371,65.25,37.20,30,0
.cast 437035 >>Use |T134376:0|t[Bronze Timepiece] to teleport to the dragonriding quests.
.itemcount 216712,1
.use 216712
step << Horde
.goto 371,65.21,37.46,5,0
.goto 371,28.59,14.03,40 >> Click on the |cRXP_PICK_Portal|r to go back.
.itemcount 216712,1
step << Horde
#include 7) Kun-Lai Summit Despoiler
step << Horde
#include 7) Kun-Lai Summit My Son
step << Alliance
.isQuestComplete 80446
.goto 393,75.04,45.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>Turn in Looking for Group
.target Arturos
step << Alliance
.isQuestComplete 80447
.goto 393,76.55,48.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>Turn in Looking for More
.target Pythagorus
step << Alliance
#completewith The Lorewalkers
.goto 393,67.15,43.64,10,0
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu
step << Alliance
.goto 393,64.6,42.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>Turn in A Fresh Scene
.target Larah Treebender
step << Alliance
#label The Lorewalkers
.goto 390,85.50,60.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scrollmaker Resshi|r |cRXP_WARN_underneath shrine of seven stars|r
.accept 31367 >>Accept The Lorewalkers
.target Scrollmaker Resshi
step << Alliance
.goto 390,84.96,60.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishi|r |cRXP_WARN_while mounted.|r
.complete 31367,1 
.target Mishi
step << Alliance
.goto 390,81.41,31.99,20 >> Enter the Temple
step << Alliance
.goto 390,83.28,29.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31367 >>Turn in The Lorewalkers
.target Lorewalker Cho
step << Alliance
.goto 390,81.41,31.99,20 >> Leave the Temple
step
.goto 390,80.78,33.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
.accept 33231 >>Accept Journey to the Timeless Isle
.target Chromie
step << Horde
.goto 379,72.27,91.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Bramblestaff|r
.accept 30457 >>Accept Call Out Their Leader
.target Mayor Bramblestaff
step << Horde
.goto 379,71.57,92.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Cheng|r
.accept 30460 >>Accept Hit Medicine
.target Apothecary Cheng
step << Horde
.goto 379,70.75,90.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hsieh|r
.accept 30459 >>Accept All of the Arrows
.target Commander Hsieh
step << Alliance
.goto 379,71.57,92.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Cheng|r
.accept 30460 >>Accept Hit Medicine
.target Apothecary Cheng
step << Alliance
.goto 379,72.27,91.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Bramblestaff|r
.accept 30457 >>Accept Call Out Their Leader
.target Mayor Bramblestaff
step << Alliance
.goto 379,70.75,90.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hsieh|r
.accept 30459 >>Accept All of the Arrows
.target Commander Hsieh
step
#completewith Injured Binan Warrior
#hidewindow
#loop
.goto 379,69.85,90.86,25,0
.goto 379,68.56,90.96,25,0
.goto 379,67.88,89.11,25,0
.goto 379,67.97,87.75,25,0
.goto 379,68.88,87.10,25,0
.goto 379,70.76,89.27,25,0
.goto 379,69.85,90.86,0
.goto 379,68.56,90.96,0
.goto 379,67.88,89.11,0
.goto 379,67.97,87.75,0
.goto 379,68.88,87.10,0
.goto 379,70.76,89.27,0
+1
step
#completewith Dit Da Jow
>>Kill |cRXP_ENEMY_Bataari Tribe Members|r and |cRXP_ENEMY_Bataari Fire-Warrior|r |cRXP_WARN_he spawns after killing 10x |cRXP_ENEMY_Bataari Tribe Members|r.|r
.complete 30457,1 
.complete 30457,2 
.mob Bataari Flamecaller
.mob bataari fire-warrior
.mob Bataari Yaungol
step
#completewith Dit Da Jow
>>Click on |cRXP_PICK_Arrows|r
.complete 30459,1 
step
#label Dit Da Jow
>>Use |T132798:0|t[Dit Da Jow] on |cRXP_FRIENDLY_Injured Binan Warrior|r
*|cRXP_WARN_Priotize your own healing spells, if you have any.|r
.complete 30460,1 
.use 79819
.target Injured Binan Warrior
step
#completewith next
>>Use |T132798:0|t[Dit Da Jow] on |cRXP_FRIENDLY_Injured Binan Warrior|r
*|cRXP_WARN_Priotize your own healing spells, if you have any.|r
.complete 30460,1 
.use 79819
.target Injured Binan Warrior
step
>>Click on |cRXP_PICK_Arrows|r
.complete 30459,1 
step
#label Injured Binan Warrior
>>Use |T132798:0|t[Dit Da Jow] on |cRXP_FRIENDLY_Injured Binan Warrior|r
*|cRXP_WARN_Priotize your own healing spells, if you have any.|r
.complete 30460,1 
.use 79819
.target Injured Binan Warrior
step
.goto 379,70.76,90.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hsieh|r
.turnin 30459 >>Turn in All of the Arrows
.target Commander Hsieh
step
.goto 379,72.27,91.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Bramblestaff|r
.turnin 30457 >>Turn in Call Out Their Leader
.target Mayor Bramblestaff
step
.goto 379,71.57,92.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Cheng|r
.turnin 30460 >>Turn in Hit Medicine
.target Apothecary Cheng
.accept 30508 >>Accept Admiral Taylor has Awakened <<Alliance
.accept 30511 >>Accept General Nazgrim has Awakened <<Horde
step << Alliance
.goto 379,71.48,93.18,5,0
.goto 379,71.53,93.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r |cRXP_WARN_inside the house upstairs.|r
.turnin 30508 >>Turn in Admiral Taylor has Awakened
.target Admiral Taylor
.accept 30512 >>Accept Westwind Rest
step << Alliance
#include 7) Kun-Lai Summit My Son
step << Alliance
#include 7) Kun-Lai Summit Despoiler
step << Horde
.goto 379,71.48,93.18,5,0
.goto 379,71.65,93.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 30511 >>Turn in General Nazgrim has Awakened
.accept 30513 >>Accept Eastwind Rest
.target General Nazgrim
step << Alliance
.goto 379,58.87,80.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Bo|r
.complete 30512,1 
.skipgossip 63754,1
.target Farmhand Bo
step << Alliance
.goto 379,56.34,84.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Tsulan|r
.complete 30512,2 
.skipgossip 63542,1
.target Elder Tsulan
step <<Alliance
.goto 379,56.34,84.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Tsulan|r
.turnin 30512 >>Turn in Westwind Rest
.target Elder Tsulan
.accept 30514 >>Accept Challenge Accepted
step << Horde
.goto 379,63.68,86.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r
.complete 30513,1 
.target Farmhand Ko
.skipgossip 63751,1
step << Horde
.goto 379,61.80,82.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.complete 30513,2 
.skipgossip 63535,1
.target Elder Shiao
step << Horde
.goto 379,61.19,82.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.turnin 30513 >>Turn in Eastwind Rest
.accept 30515 >>Accept Challenge Accepted
.target Elder Shiao
step
#completewith next
.goto 379,58.19,84.11
.cast 8386 >>Click on the |cRXP_PICK_Banner|r to summon |cRXP_ENEMY_Ur-Bataar|r |cRXP_WARN_to summon|r |cRXP_ENEMY_Ur-Bataar|r
step
.convertquest 30514,30515 <<Horde
.goto 379,58.20,84.35
>>Kill |cRXP_ENEMY_Ur-Bataar|r
.complete 30514,1 
.mob ur-bataar
step << Alliance
.goto 379,54.69,84.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Tsulan|r
.turnin 30514 >>Turn in Challenge Accepted
.target Elder Tsulan
step << Alliance
.goto 379,53.77,82.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.accept 30575 >>Accept Round 'Em Up
.target Admiral Taylor
step << Alliance
.goto 379,54.08,82.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai the Restless|r
.home >>Set your Hearthstone to Westwind Rest
.target Kai the Restless
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r |cRXP_FRIENDLY_Elder Tsulan|r
.accept 30583 >>Accept Blue Dwarf Needs Food Badly
.goto 379,54.15,83.30
.accept 30619 >>Accept Mogu?! Oh No-gu!
.goto 379,54.18,83.43
.target Elder Tsulan
.target Sully "The Pickle" McLeary
step << Alliance
.goto 379,53.78,84.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Bo|r
.accept 30569 >>Accept Trouble on the Farmstead
.target Farmhand Bo
step <<Alliance
#loop
.goto 379,53.45,83.36,10,0
.goto 379,53.46,83.08,10,0
.goto 379,53.68,83.28,10,0
.goto 379,53.45,83.36,0
.goto 379,53.46,83.08,0
.goto 379,53.68,83.28,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
.accept 30593 >>Accept Deanimate the Reanimated
.target Mishka
step << Horde
.goto 379,61.58,80.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.turnin 30515 >>Turn in Challenge Accepted
.target Elder Shiao
step << Horde
.goto 379,63.00,80.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.accept 31256 >>Accept Round 'Em Up
.target General Nazgrim
step << Horde
.goto 379,54.08,82.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai the Sleepy|r
.home >>Set your Hearthstone to Eastwind Rest
.target Mai the Sleepy
step << Horde
.goto 379,62.70,80.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.accept 30594 >>Accept Deanimate the Reanimated
.target Shademaster Kiryn
step << Horde
.goto 379,62.78,79.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.accept 31251 >>Accept Best Meals Anywhere!
.target Rivett Clutchpop
step << Horde
.goto 379,62.53,79.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r
.accept 30570 >>Accept Trouble on the Farmstead
.target Farmhand Ko
step << Horde
.goto 379,62.33,79.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.accept 30620 >>Accept Mogu?! Oh No-gu!
.target Elder Shiao
step
#completewith Profiting off of the Past
.convertquest 30575,31256 << Horde
.isOnQuest 30575,31256
+Interact with 3 |cRXP_FRIENDLY_Yaks.|r to make them follow you. |cRXP_WARN_Don't worry about the distance between you and the yak;|r |cFFFF0000the rope shouldn't break. This step won't complete when finishing the task.|r
.target Captured Yak
.mob Wild Plains Yak
step
#completewith Profiting off of the Past
.convertquest 30583,31251 << Horde
>>Kill |cRXP_ENEMY_Kun-lai Wildlife.|r Loot them for |cRXP_LOOT_Kun-Lai Meaty Bits|r
.complete 30583,1 
.mob Highlands Calf
.mob Highlands Mushan
.mob Razorquill Porcupine
.mob Summit Bonestripper
step
#label Profiting off of the Past
.goto 379,59.61,78.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bao Jian|r
.accept 30595 >>Accept Profiting off of the Past
.target Bao Jian
step
#completewith Mogujia Soul-caller
.isOnQuest 30595
+If you spot any |cRXP_PICK_Bottles|r click on them for a haste and dmg buff.
*|cRXP_WARN_Refresh its duration if you spot another.|r
step
.convertquest 30593,30594 << Horde
#loop
.goto 379,58.84,76.29,40,0
.goto 379,57.77,76.89,40,0
.goto 379,56.62,76.53,40,0
.goto 379,56.88,75.53,40,0
.goto 379,57.96,74.50,40,0
.goto 379,59.28,73.51,40,0
.goto 379,59.98,75.57,20,0
.goto 379,58.84,76.29,0
.goto 379,57.77,76.89,0
.goto 379,56.62,76.53,0
.goto 379,56.88,75.53,0
.goto 379,57.96,74.50,0
.goto 379,59.28,73.51,0
.goto 379,59.98,75.57,0
>>Kill |cRXP_ENEMY_Terracotta Warriors|r and |cRXP_ENEMY_Terracotta Guardians|r. Loot them for |cRXP_LOOT_Mogu Relic.|r |cRXP_WARN_Additionally Click on |cRXP_PICK_Mogu Relics|r |cRXP_WARN_on the ground.|r |r
.complete 30593,1 
.complete 30595,1 
.mob Terracotta Guardian
.mob Terracotta Warrior
step
.convertquest 30619,30620 << Horde
.goto 379,58.13,70.92
>>Kill |cRXP_ENEMY_Mogujia Soul-caller|r
.complete 30619,1 
.mob mogujia soul-caller
step
#label Mogujia Soul-caller
.goto 379,59.60,78.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bao Jian|r
.turnin 30595 >>Turn in Profiting off of the Past
.target Bao Jian
step
#completewith next
>>Kill |cRXP_ENEMY_Kun-lai Wildlife.|r Loot them for |cRXP_LOOT_Kun-Lai Meaty Bits|r
.complete 30583,1 
.mob Highlands Calf
.mob Highlands Mushan
.mob Razorquill Porcupine
.mob Summit Bonestripper
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Chow|r and |cRXP_FRIENDLY_Uyen Chow|r
.turnin 30569 >>Turn in Trouble on the Farmstead << Alliance
.turnin 30570 >>Turn in Trouble on the Farmstead << Horde
.accept 30571 >>Accept Farmhand Freedom
.goto 379,60.25,85.81
.accept 30581 >>Accept ... and the Pot, Too!
.goto 379,60.17,85.93
.target Uyen Chow
.target Farmer Chow
step
#completewith Back to Westwind Rest
.isOnQuest 30571
+If you spot any |cRXP_PICK_Bottles|r click on them for a haste and dmg buff.
*|cRXP_WARN_Refresh its duration if you spot another.|r
step
#completewith Farmstead Slaves
#hidewindow
#loop
.goto 379,60.88,86.97,40,0
.goto 379,61.29,86.14,40,0
.goto 379,61.92,87.15,40,0
.goto 379,61.87,87.85,40,0
.goto 379,61.31,87.85,40,0
.goto 379,61.41,88.37,40,0
.goto 379,60.79,88.00,40,0
.goto 379,60.50,87.52,40,0
.goto 379,58.87,88.61,40,0
.goto 379,58.38,88.40,40,0
.goto 379,58.31,89.41,40,0
.goto 379,58.33,90.11,40,0
.goto 379,58.85,90.11,40,0
.goto 379,58.95,89.78,40,0
.goto 379,60.88,86.97,0
.goto 379,61.29,86.14,0
.goto 379,61.92,87.15,0
.goto 379,61.87,87.85,0
.goto 379,61.31,87.85,0
.goto 379,61.41,88.37,0
.goto 379,60.79,88.00,0
.goto 379,60.50,87.52,0
.goto 379,58.87,88.61,0
.goto 379,58.38,88.40,0
.goto 379,58.31,89.41,0
.goto 379,58.33,90.11,0
.goto 379,58.85,90.11,0
.goto 379,58.95,89.78,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Ordo Overseer|r to rescue |cRXP_FRIENDLY_Farmstead Slaves.|r
.complete 30571,1 
.mob Ordo Raider
.mob Ordo Overseer
step
>>Kill |cRXP_ENEMY_Wascally Wirmen.|r Loot him for a lot of |cRXP_LOOT_Root Vegetables.|r |cRXP_WARN_Additionally click on |cRXP_PICK_Root Vegetables.|r |r
.complete 30581,1 
.mob Wascally Wirmen
step
#label Farmstead Slaves
>>Kill |cRXP_ENEMY_Ordo Overseer|r to rescue |cRXP_FRIENDLY_Farmstead Slaves.|r
.complete 30571,1 
.mob Ordo Raider
.mob Ordo Overseer
step
.goto 379,60.02,88.45
>>Click on |cRXP_PICK_Root Vegetable|r |cRXP_WARN_inside the small house|r
.complete 30581,2 
.mob Cookie McYaungol
step
#label Back to Westwind Rest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uyen Chow|r and |cRXP_FRIENDLY_Farmer Chow|r
.turnin 30581 >>Turn in ... and the Pot, Too!
.goto 379,60.17,85.92
.turnin 30571 >>Turn in Farmhand Freedom
.accept 31252 >>Accept Back to Westwind Rest << Alliance
.accept 31253 >>Accept Back to Eastwind Rest << Horde
.goto 379,60.24,85.8
.target Uyen Chow
.target Farmer Chow
step << Alliance
#completewith WildPlaneYakC
#hidewindow
#loop
.goto 379,55.21,86.24,40,0
.goto 379,53.95,88.55,40,0
.goto 379,53.73,90.23,40,0
.goto 379,51.77,88.90,40,0
.goto 379,50.04,88.73,40,0
.goto 379,50.07,85.97,40,0
.goto 379,50.01,84.46,40,0
.goto 379,51.98,81.15,40,0
.goto 379,54.55,79.55,40,0
.goto 379,55.21,86.24,0
.goto 379,53.95,88.55,0
.goto 379,53.73,90.23,0
.goto 379,51.77,88.90,0
.goto 379,50.04,88.73,0
.goto 379,50.07,85.97,0
.goto 379,50.01,84.46,0
.goto 379,51.98,81.15,0
.goto 379,54.55,79.55,0
+1
step << Horde
#completewith WildPlaneYakC
#hidewindow
#loop
.goto 379,63.51,84.80,40,0
.goto 379,65.95,85.31,40,0
.goto 379,67.45,80.68,40,0
.goto 379,66.52,77.04,40,0
.goto 379,64.40,78.05,40,0
.goto 379,63.51,84.80,0
.goto 379,65.95,85.31,0
.goto 379,67.45,80.68,0
.goto 379,66.52,77.04,0
.goto 379,64.40,78.05,0
+1
step
#completewith next
+Interact with 3 |cRXP_FRIENDLY_Yaks.|r
*|cFFFF0000If you already have 3 yaks following you ignore this step.|r
.target Captured Yak
.mob Wild Plains Yak
step
#label Kun-Lai Meaty Bits
>>Kill |cRXP_ENEMY_Kun-lai Wildlife.|r Loot them for |cRXP_LOOT_Kun-Lai Meaty Bits.|r
.complete 30583,1 
.mob Highlands Calf
.mob Highlands Mushan
.mob Razorquill Porcupine
.mob Summit Bonestripper
step
#completewith Yaksroundedup
#label WildPlaneYakA
*|cRXP_WARN_If you already have 3 yaks following you ignore this step.|r
.aura 114661,1+ >>Click on |cRXP_FRIENDLY_Wild Plane Yaks|r.
.target Captured Yak
.mob Wild Plains Yak
step
#requires WildPlaneYakA
#completewith Yaksroundedup
#label WildPlaneYakB
*|cRXP_WARN_If you already have 3 yaks following you ignore this step.|r
.cast 114653 >>Click on |cRXP_FRIENDLY_Wild Plane Yaks|r.
.target Captured Yak
.mob Wild Plains Yak
step
#requires WildPlaneYakB
#completewith Yaksroundedup
#label WildPlaneYakC
*|cRXP_WARN_If you already have 3 yaks following you ignore this step.|r
.cast 114653 >>Click on |cRXP_FRIENDLY_Wild Plane Yaks|r.
.target Captured Yak
.mob Wild Plains Yak
step
#label Yaksroundedup
.goto 379,54.08,83.57 << Alliance
.goto 379,62.48,80.14 << Horde
>>|cRXP_WARN_When you have 3 |cRXP_FRIENDLY_Captured Yaks|r follow the arrow.|r
.complete 30575,1 
step << Alliance
#completewith Mishka
.isOnQuest 30593
+If you spot any |cRXP_PICK_Bottles|r click on them for a haste and dmg buff.
*|cRXP_WARN_Refresh its duration if you spot another.|r
step << Alliance
.goto 379,53.79,84.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Bo|r
.turnin 31252 >>Turn in Back to Westwind Rest
.target Farmhand Bo
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Tsulan|r and |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
.turnin 30619 >>Turn in Mogu?! Oh No-gu!
.accept 30650 >>Accept Pandaren Prisoners
.goto 379,54.17,83.43
.turnin 30583 >>Turn in Blue Dwarf Needs Food Badly
.accept 30651 >>Accept Barrels of Fun
.goto 379,54.17,83.28
.target Sully "The Pickle" McLeary
.target Elder Tsulan
step << Alliance
.goto 379,53.76,82.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r |cRXP_WARN_inside the tent.|r
.turnin 30575 >>Turn in Round 'Em Up
.accept 30652 >>Accept In Tents Channeling
.target Admiral Taylor
step << Alliance
.isOnQuest 30652
.goto 379,53.84,83.02,10 >> Leave the tent.
step << Alliance
#label Mishka
#loop
.goto 379,53.45,83.36,10,0
.goto 379,53.46,83.08,10,0
.goto 379,53.68,83.28,10,0
.goto 379,53.45,83.36,0
.goto 379,53.46,83.08,0
.goto 379,53.68,83.28,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
.turnin 30593 >>Turn in Deanimate the Reanimated
.target Mishka
step << Horde
.goto 379,62.78,79.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 31251 >>Turn in Best Meals Anywhere!
.target Rivett Clutchpop
step << Horde
.goto 379,62.54,79.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r
.turnin 31253 >>Turn in Back to Eastwind Rest
.target Farmhand Ko
step << Horde
.goto 379,62.34,79.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.turnin 30620 >>Turn in Mogu?! Oh No-gu!
.accept 30655 >>Accept Pandaren Prisoners
.target Elder Shiao
step << Horde
.goto 379,62.73,79.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.accept 30656 >>Accept Barrels of Fun
.target Rivett Clutchpop
step << Horde
.goto 379,63.00,80.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 31256 >>Turn in Round 'Em Up
.target General Nazgrim
.accept 30657 >>Accept In Tents Channeling
step << Horde
.goto 379,62.69,80.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.turnin 30594 >>Turn in Deanimate the Reanimated
.target Shademaster Kiryn
step
.convertquest 30652,30657 << Horde
.convertquest 30650,30655 << Horde
.convertquest 30651,30656 << Horde
.convertquest 30660,30661
#completewith Akonu the Embercaller
>>Click on |cRXP_FRIENDLY_Pandaren Prisoners|r
.complete 30650,1 
.target Pandaren Prisoner
step
#sticky
#label EasternOilRigDestroyed
.goto 379,50.97,79.53
.use 80528
.cast 115550 >>Use |T252176:0|t[Explosives Barrel] |cRXP_WARN_next to the Rig|r
.timer 5,Explosion
.disablecheckbox
.complete 30651,1 
step
#title Pick up |T252176:0|t[|cRXP_PICK_Explosives Barrel|r]
#completewith EasternOilRigDestroyed
.goto 379,51.24,79.29,10,0
.goto 379,51,79.37
.collect 80528,1 >>Pick up a |T252176:0|t[|cRXP_PICK_Explosives Barrel|r]
step
#requires EasternOilRigDestroyed
.goto 379,50.4,78.66
>>Kill |cRXP_ENEMY_Musaan the Blazecaster|r
.complete 30652,1 
.mob musaan the blazecaster
step
.goto 379,50.38,79.28
.achievement 6847,1 >>Click on the |cRXP_PICK_Scroll|r
step
.goto 379,49.44,78.49
>>Kill |cRXP_ENEMY_Harala the Firespeaker|r
.complete 30652,3 
.mob harala the firespeaker
step
#sticky
#label SouthernOilRigDestroyed
.goto 379,49.57,81.04
.use 80528
.cast 115550 >>Use |T252176:0|t[Explosives Barrel] |cRXP_WARN_next to the Rig|r
.timer 5,Explosion
.disablecheckbox
.complete 30651,2 
step
#title Pick up |T252176:0|t[|cRXP_PICK_Explosives Barrel|r]
#completewith SouthernOilRigDestroyed
.goto 379,49.59,78.92,20,0
.goto 379,49.57,81.04
.collect 80528,1 >>Pick up a |T252176:0|t[|cRXP_PICK_Explosives Barrel|r]
step
#requires SouthernOilRigDestroyed
.goto 379,49.35,81.06,20,0
.goto 379,49.17,80.38
>>Kill |cRXP_ENEMY_Pao-kun the Pyromancerr|r
.complete 30652,4 
.mob pao-kun the pyromancer
step
.goto 379,47.70,80.05
>>Kill |cRXP_ENEMY_Akonu the Embercaller|r
.complete 30652,2 
.mob akonu the embercaller
step
.goto 379,48.9,76.89
>>Click on the questlog to turn in the quest.
.turnin 30652 >>Turn in In Tents Channeling
step
#sticky
#label WesternOilRigDestroyed
.goto 379,47.86,81.42
.use 80528
.cast 115550 >>Use |T252176:0|t[Explosives Barrel] |cRXP_WARN_next to the Rig|r
.timer 5,Explosion
.disablecheckbox
.complete 30651,3 
step
#title Pick up |T252176:0|t[|cRXP_PICK_Explosives Barrel|r]
#completewith WesternOilRigDestroyed
.goto 379,47.53,80.18,15,0
.goto 379,47.86,81.42
.collect 80528,1 >>Pick up a |T252176:0|t[|cRXP_PICK_Explosives Barrel|r]
step
#requires WesternOilRigDestroyed
#completewith Ordo Warbringer
>>Interact with |cRXP_FRIENDLY_Pandaren Prisoners|r
.complete 30650,1 
.target Pandaren Prisoner
step
#requires WesternOilRigDestroyed
#sticky
#label Ordo Warbringer
.goto 379,48.37,76.70
>>Kill |cRXP_ENEMY_Ordo Warbringer|r |cRXP_WARN_in the cave.|r
.complete 30660,1 
.mob ordo warbringer
step
#requires WesternOilRigDestroyed
#completewith Ordo Warbringer
.goto 379,48.9,76.89,10 >> Enter the cave.
step
#requires Ordo Warbringer
#loop
.goto 379,49.60,78.64,40,0
.goto 379,51.11,79.30,40,0
.goto 379,51.59,79.85,40,0
.goto 379,49.41,80.91,40,0
.goto 379,47.71,80.24,40,0
.goto 379,49.60,78.64,0
.goto 379,51.11,79.30,0
.goto 379,51.59,79.85,0
.goto 379,49.41,80.91,0
.goto 379,47.71,80.24,0
>>Interact with |cRXP_FRIENDLY_Pandaren Prisoners|r
.complete 30650,1 
.target Pandaren Prisoner
step
#include 7) Kun-Lai Summit Defense Shado-Pan
step << Alliance
.isOnQuest 33231
.cast 147988 >> Use |T134376:0|t[Curious Bronze Timepiece] to teleport to timeless isle.
step << Alliance
.goto 554,23.15,71.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Lara|r
.turnin 33231 >>Turn in Journey to the Timeless Isle
.target Watcher Lara
step << Alliance
.goto 379,54.08,82.87
.hs >>Use your Hearthstone to Westwind Rest
step << Alliance
#loop
.goto 379,54.02,83.39,10,0
.goto 379,53.91,83.57,10,0
.goto 379,53.85,83.35,10,0
.goto 379,53.66,83.45,10,0
.goto 379,53.76,83.68,10,0
.goto 379,54.05,83.43,10,0
.goto 379,54.33,82.97,10,0
.goto 379,54.31,82.76,10,0
.goto 379,54.02,83.39,0
.goto 379,53.91,83.57,0
.goto 379,53.85,83.35,0
.goto 379,53.66,83.45,0
.goto 379,53.76,83.68,0
.goto 379,54.05,83.43,0
.goto 379,54.33,82.97,0
.goto 379,54.31,82.76,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 30650 >>Turn in Pandaren Prisoners
.turnin 30660 >>Turn in The Ordo Warbringer 
.target Admiral Taylor
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
.turnin 30651 >>Turn in Barrels of Fun
.goto 379,54.17,83.27
.target Sully "The Pickle" McLeary
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Tsulan|r
.accept 31695 >>Accept Beyond the Wall
.goto 379,54.17,83.43
.target Elder Tsulan
step << Alliance
#loop
.goto 379,53.45,83.36,10,0
.goto 379,53.46,83.08,10,0
.goto 379,53.68,83.28,10,0
.goto 379,53.45,83.36,0
.goto 379,53.46,83.08,0
.goto 379,53.68,83.28,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
.accept 31460 >>Accept Cho's Missive
.target Mishka
step << Horde
#completewith next
.goto 379,54.08,82.87
.hs >>Use your Heartstone to Eastwind Rest
step << Horde
.goto 379,62.45,80.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 30661 >>Turn in The Ordo Warbringer
.target General Nazgrim
.turnin 30655 >>Turn in Pandaren Prisoners
step << Horde
.goto 379,62.77,79.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 30656 >>Turn in Barrels of Fun
.target Rivett Clutchpop
step << Horde
.goto 379,62.69,80.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.accept 31459 >>Accept Cho's Missive
.target Shademaster Kiryn
step << Horde
.goto 379,62.35,79.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.accept 31695 >>Accept Beyond the Wall
.target Elder Shiao
step
.goto 379,44.48,89.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
.accept 30699 >>Accept To Winter's Blossom
.target Shado-Master Chong
step
#sticky
#label Grummle's Luck
.goto 379,64.71,61.76,0,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Eightcoins|r
.turnin 30808 >>Turn in A Grummle's Luck
.target Lucky Eightcoins
step
#completewith Grummle's Luck
#label NostwinsVoucher
.cast 441154 >> Use |T134491:0|t[Nostwin's Voucher] to teleport to Infinite Bazaar.
.use 217930
.itemcount 217930,1
step
#completewith Grummle's Luck
#requires NostwinsVoucher
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r or |cRXP_FRIENDLY_Past Nostwin|r
.buy 217930,1
.goto 379,69.62,53.04
.itemcount 217930,0
.target Nostwin
.target Past Nostwin
step
#requires NostwinsVoucher
.isQuestComplete 80446
.goto 379,69.54,53.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>Turn in Looking for Group
.target Arturos
step
#requires NostwinsVoucher
.isQuestComplete 80447
.goto 379,69.76,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>Turn in Looking for More
.target Pythagorus
step
#requires NostwinsVoucher
.isQuestComplete 80448
.goto 379,69.84,53.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>Turn in A Fresh Scene
.target Larah Treebender
step
#label UpdradeGearKunlai
#completewith Grummle's Luck
.goto 379,69.58,52.47
.cast 436451 >>Talk to |cRXP_FRIENDLY_Momentus|r and upgrade your gear |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
*|cRXP_WARN_Skip this step if you don't want to or can't upgrade anything|r
.skipgossip
.target Momentus
step
#requires UpdradeGearKunlai
#completewith Grummle's Luck
#label GemsKunlai
.goto 379,69.34,52.59
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu
step
#requires Grummle's Luck
.goto 379,65.48,60.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slimy Inkstain|r
.turnin 30614 >>Turn in Oil Stop
.target Slimy Inkstain
step
.goto 379,64.89,60.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey Sootassle|r
.turnin 30616 >>Turn in Traffic Issues
.accept 30617 >>Accept Roadside Assistance
.target Smokey Sootassle
step
#loop
.goto 379,62.91,62.03,20,0
.goto 379,62.85,63.05,20,0
.goto 379,62.79,63.80,20,0
.goto 379,62.95,64.57,20,0
.goto 379,62.44,64.45,20,0
.goto 379,62.04,64.90,20,0
.goto 379,61.73,65.37,20,0
.goto 379,61.18,65.59,20,0
.goto 379,60.37,66.00,20,0
.goto 379,59.96,65.27,20,0
.goto 379,59.33,65.10,20,0
.goto 379,58.91,64.33,20,0
.goto 379,59.00,63.81,20,0
.goto 379,58.73,63.09,20,0
.goto 379,58.81,62.48,20,0
.goto 379,58.34,62.13,20,0
.goto 379,58.35,61.63,20,0
.goto 379,62.91,62.03,0
.goto 379,62.85,63.05,0
.goto 379,62.79,63.80,0
.goto 379,62.95,64.57,0
.goto 379,62.44,64.45,0
.goto 379,62.04,64.90,0
.goto 379,61.73,65.37,0
.goto 379,61.18,65.59,0
.goto 379,60.37,66.00,0
.goto 379,59.96,65.27,0
.goto 379,59.33,65.10,0
.goto 379,58.91,64.33,0
.goto 379,59.00,63.81,0
.goto 379,58.73,63.09,0
.goto 379,58.81,62.48,0
.goto 379,58.34,62.13,0
.goto 379,58.35,61.63,0
>>Click on |cRXP_PICK_Lucky Burlap Incense|r |cRXP_WARN_(possible while mounted)|r
.complete 30617,1 
step
.goto 379,58.1,61.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Trailscenter|r
.turnin 30617 >>Turn in Roadside Assistance
.accept 30592 >>Accept The Burlap Trail: To Burlap Waystation
.target Brother Trailscenter
step
.goto 379,57.34,61.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31460 >>Turn in Cho's Missive
.target Lorewalker Cho
.accept 30999 >>Accept Path Less Traveled
step
.goto 379,57.21,61.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Cloverleaf|r
.turnin 30999 >>Turn in Path Less Traveled
.target Uncle Cloverleaf
.accept 30601 >>Accept Instant Courage
step
#completewith next
.goto 379,57.5,60.17 >> Enter the House
step
.goto 379,57.72,61.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Sal|r |cRXP_WARN_inside the small house.|r
.accept 30618 >>Accept Resupplying One Keg
.target Big Sal
step
.goto 379,57.37,60.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chiyo Mistpaw|r |cRXP_WARN_inside the house.|r
.home >>Set your Hearthstone to The Lucky Traveller
.target Chiyo Mistpaw
step
.goto 379,57.33,60.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji-Lu the Lucky|r |cRXP_WARN_inside the house.|r
.accept 30621 >>Accept They Stole My Luck!
.target Ji-Lu the Lucky
step
#completewith next
.goto 379,57.5,60.17,5 >> Leave the House
step
#completewith Stolen Sprite Treasure
>>Kill |cRXP_ENEMY_Mischievous Snow Sprite|r and |cRXP_ENEMY_Suspicious Snow Pile|r
.complete 30621,4 
.complete 30621,1 
.complete 30621,2 
.complete 30621,3 
.mob Mischievous Snow Sprite
.mob Suspicious Snow Pile
step
#completewith Stolen Sprite Treasure
>>Click on |cRXP_PICK_Stolen Supplies|r
.complete 30618,1 
step
#completewith Stolen Sprite Treasure
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hiding Guides|r
.complete 30601,1 
.skipgossip
.target Hiding Guide
step
#label Stolen Sprite Treasure
.goto 379,59.1,52.86,30,0
.goto 380,67.33,77.53,30,0
.goto 380,53.37,69.48,30,0
.goto 380,50.97,63.32,30,0
.goto 380,46.7,57.95,30,0
.goto 380,51.65,44.26,30,0
.goto 380,53.14,25.91,30,0
.goto 380,42.65,20.78,30,0
.goto 380,32.2,31.27,30,0
.goto 380,33.46,42.71,30,0
.goto 380,41.54,44.4,30,0
.cast 3365 >> Click on the |cRXP_PICK_Stolen Sprite Treasure.|r
step
#completewith Lucky
#hidewindow
#loop
.goto 380,33.53,41.3,30,0
.goto 380,36.82,29.36,30,0
.goto 380,42.6,24.98,30,0
.goto 380,53.88,45.19,30,0
.goto 380,66,49.91,30,0
.goto 380,48.42,58.72,30,0
.goto 380,58.72,75.11,30,0
.goto 380,67.86,78.37,30,0
.goto 379,59.1,53.18,30,0
.goto 380,33.53,41.3,0
.goto 380,36.82,29.36,0
.goto 380,42.6,24.98,0
.goto 380,53.88,45.19,0
.goto 380,66,49.91,0
.goto 380,48.42,58.72,0
.goto 380,58.72,75.11,0
.goto 380,67.86,78.37,0
.goto 379,59.1,53.18,0
+1
step
#completewith Hiding Guide
>>Kill |cRXP_ENEMY_Mischievous Snow Sprite|r and |cRXP_ENEMY_Suspicious Snow Pile|r Loot them for |cRXP_LOOT_Lucky's Items|r
.complete 30621,4 
.complete 30621,1 
.complete 30621,2 
.complete 30621,3 
.mob Mischievous Snow Sprite
.mob Suspicious Snow Pile
step
#completewith Hiding Guide
>>Click on |cRXP_PICK_Stolen Supplies|r
.complete 30618,1 
step
#label Hiding Guide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hiding Guides|r
.complete 30601,1 
.skipgossip
.target Hiding Guide
step
#completewith next
>>Kill |cRXP_ENEMY_Mischievous Snow Sprite|r and |cRXP_ENEMY_Suspicious Snow Pile|r Loot them for |cRXP_LOOT_Lucky's Items|r
.complete 30621,4 
.complete 30621,1 
.complete 30621,2 
.complete 30621,3 
.mob Mischievous Snow Sprite
.mob Suspicious Snow Pile
step
>>Click on |cRXP_PICK_Stolen Supplies|r
.complete 30618,1 
step
#label Lucky
>>Kill |cRXP_ENEMY_Mischievous Snow Sprite|r and |cRXP_ENEMY_Suspicious Snow Pile.|r Loot them for |cRXP_LOOT_Lucky's Items|r
.complete 30621,4 
.complete 30621,1 
.complete 30621,2 
.complete 30621,3 
.mob Mischievous Snow Sprite
.mob Suspicious Snow Pile
step
#completewith TheyStoleMyLuck
.aura -449510
.cast 449508 >> Use |T134488:0|t[Nostwin's Return Service] to return to Westwood Rest << Alliance
.cast 449508 >> Use |T134488:0|t[Nostwin's Return Service] to return to Eastwood Rest << Horde
.use 449508
step
#completewith TheyStoleMyLuck
.goto 379,57.5,60.17,5 >> Enter the House
step
#label TheyStoleMyLuck
.goto 379,57.32,60.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji-Lu the Lucky|r |cRXP_WARN_inside small house.|r
.turnin 30621 >>Turn in They Stole My Luck!
.target Ji-Lu the Lucky
step
.goto 379,57.72,61.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Sal|r
.turnin 30618 >>Turn in Resupplying One Keg
.target Big Sal
step
.goto 379,57.22,61.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Cloverleaf|r
.turnin 30601 >>Turn in Instant Courage
.accept 30487 >>Accept Comin' Round the Mountain
.target Uncle Cloverleaf
step
.goto 379,57.30,61.55
>>Click on |cRXP_FRIENDLY_Ji-Lu's Cart|r
.complete 30487,1 
.timer 125,RP
.target Ji-Lu's Cart
step
.goto 379,48.13,48.92
>>|cRXP_WARN_During quest downtime, maximize efficiency by focusing on the following activities based on your current needs:|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397
.complete 30487,2 
step
.goto 379,48.13,49.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Bluestring|r
.turnin 30487 >>Turn in Comin' Round the Mountain
.target Lucky Bluestring
.accept 30683 >>Accept One Traveler's Misfortune
step
.goto 379,50.07,49.25
>>Click on |cRXP_PICK_Abandoned Wreakage.|r
.complete 30683,1 
.timer 9,RP
step
.goto 379,50.07,49.37
>>Kill |cRXP_ENEMY_Stone Guardians|r then |cRXP_ENEMY_General Sho Lien.|r
.complete 30683,2 
.mob general sho lien
.mob Stone Guardian
step
.goto 379,48.14,49.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Bluestring|r
.turnin 30683 >>Turn in One Traveler's Misfortune
.target Lucky Bluestring
.accept 30684 >>Accept Seeker's Folly
step
.goto 379,44.78,49.17
>>Click on the |cRXP_PICK_Shrine.|r
.complete 30684,1 
step
.goto 379,42.68,50.11
>>Click on the |cRXP_PICK_Shrine.|r
.complete 30684,2 
step
.goto 379,43.17,51.98
>>Click on the |cRXP_PICK_Shrine.|r
.complete 30684,3 
step
.goto 379,43.80,51.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30684 >>Turn in Seeker's Folly
.accept 30829 >>Accept The Tongue of Ba-Shon
.target Lorewalker Cho
step
#completewith Reclaimer Zuan
.goto 379,43.80,51.04
.gossipoption 40517 >>Talk to |cRXP_FRIENDLY_Lorewalker Cho|r
.timer 20,RP
.skipgossip 61315,1
.target Lorewalker Cho
step
#completewith Reclaimer Zuan
+|cRXP_WARN_During quest downtime, maximize efficiency by focusing on the following activities based on your current needs:|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397
step
#label Reclaimer Zuan
.goto 379,43.46,51.42
>>Kill |cRXP_ENEMY_Reclaimer Zuan|r
.complete 30829,1 
.mob Reclaimer Zuan
.mob Yachi
step
.goto 379,43.77,51.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30829 >>Turn in The Tongue of Ba-Shon
.accept 30795 >>Accept Staying Connected
.target Lorewalker Cho
step
.goto 379,57.11,47.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curious Text|r
.accept 30797 >>Accept It Was Almost Alive
.target Curious Text
step
.goto 379,57.11,47.89
>>Click on |cRXP_PICK_Torn Page|r
.complete 30797,1 
step
.goto 379,57.11,47.89
>>Use |T512479:0|t[The Tongue of Ba-Shon] near the book.
.complete 30795,1 
.use 81712
step
.goto 379,57.11,47.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
>>|cRXP_WARN_Use|r |T512479:0|t[The Tongue of Ba-Shon] |cRXP_WARN_if you can't see |cRXP_FRIENDLY_Image of Lorewalker Cho|r|r.
.turnin 30795 >>Turn in Staying Connected
.accept 30796 >>Accept An End to Everything
.turnin 30797 >>Turn in It Was Almost Alive
.accept 30799 >>Accept The Tomb of Shadows
.use 81712
.target Image of Lorewalker Cho
step
#loop
.goto 379,57.18,49.04,20,0
.goto 379,56.73,47.23,20,0
.goto 379,57.46,47.40,20,0
.goto 379,57.18,49.04,0
.goto 379,56.73,47.23,0
.goto 379,57.46,47.40,0
>>Kill |cRXP_ENEMY_Tormented Spirits|r
.complete 30796,1 
.mob tormented spirits
step
#completewith next
.goto 379,55.88,46.21,10 >> Enter the Temple
step
.goto 379,57.07,45.03
>>Click on the |cRXP_PICK_Tablet|r
.complete 30799,3 
step
.goto 379,57.13,43.49
>>Click on the |cRXP_PICK_Tablet|r |cRXP_WARN_next to the statue.|r
.complete 30799,1 
step
.goto 379,56.36,43.45
>>Click on the |cRXP_PICK_Tablet|r |cRXP_WARN_under the pole.|r
.complete 30799,2 
step
#completewith next
.cast 118927 >>Use |T512479:0|t[The Tongue of Ba-Shon] to summon an |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
step
.goto 379,55.88,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
>>|cRXP_WARN_Use|r |T512479:0|t[The Tongue of Ba-Shon] |cRXP_WARN_if you can't see |cRXP_FRIENDLY_Image of Lorewalker Cho|r|r.
.turnin 30796 >>Turn in An End to Everything
.turnin 30799 >>Turn in The Tomb of Shadows
.accept 30798 >>Accept Breaking the Emperor's Shield
.target Image of Lorewalker Cho
.use 81712
step
#completewith InterruptedSpiritbinding
#label LeaveTempleSpiritbinding
.goto 379,55.88,46.21,10 >> Leave the Temple
step
#requires LeaveTempleSpiritbinding
#completewith InterruptedSpiritbinding
#label EnterTempleSpiritbinding
.goto 379,53.33,49.35,10 >> Enter the Temple
step
#completewith InterruptedSpiritbinding
#requires EnterTempleSpiritbinding
.goto 379,52.98,51.25,15 >> |cRXP_WARN_Follow the Arrow|r
step
#label InterruptedSpiritbinding
.goto 379,52.93,51.34
>>Kill |cRXP_ENEMY_Imperial Guards|r and |cRXP_ENEMY_Nakk'rakas.|r
.complete 30798,1 
.mob Imperial Guard
.mob Nakk'rakas
step
#completewith next
.cast 118927 >>Use |T512479:0|t[The Tongue of Ba-Shon] to summon an |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
>>|cRXP_WARN_Use|r |T512479:0|t[The Tongue of Ba-Shon] |cRXP_WARN_if you can't see |cRXP_FRIENDLY_Image of Lorewalker Cho|r|r.
.turnin 30798 >>Turn in Breaking the Emperor's Shield
.accept 30800 >>Accept Stealing Their Thunder King
.target Image of Lorewalker Cho
.use 81712
step
#completewith BottomFragment
#label LeaveTempleBottomFragment
.goto 379,53.33,49.35,10 >> Leave the Temple
step
#completewith BottomFragment
#requires LeaveTempleBottomFragment
.goto 379,53.07,46.44,10 >> Enter the Temple
step
#label BottomFragment
.goto 385,84.12,61.59,10,0
.goto 385,81.57,74.06,10,0
.goto 385,58.66,72.54
>>Click on |cRXP_PICK_King's Coffer|r
.complete 30800,1 
step
.goto 385,39.71,69.08,10,0
.goto 385,34.33,61.67
>>Click on |cRXP_PICK_Tablet|r on the wall.
.complete 30800,2 
.mob Terracotta Gladiator
step
#completewith next
.cast 118927 >>Use |T512479:0|t[The Tongue of Ba-Shon] to summon an |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
>>|cRXP_WARN_Use|r |T512479:0|t[The Tongue of Ba-Shon] |cRXP_WARN_if you can't see |cRXP_FRIENDLY_Image of Lorewalker Cho|r|r.
.turnin 30800 >>Turn in Stealing Their Thunder King
.accept 30801 >>Accept Lessons from History
.target Image of Lorewalker Cho
.use 81712
step
.goto 385,34.33,61.67
>>Click on |cRXP_PICK_Tablet|r on the wall.
.complete 30801,1 
step
#completewith next
.cast 118927 >>Use |T512479:0|t[The Tongue of Ba-Shon] to summon an |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
step
.goto 385,33.44,62.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
>>|cRXP_WARN_Use|r |T512479:0|t[The Tongue of Ba-Shon] |cRXP_WARN_if you can't see |cRXP_FRIENDLY_Image of Lorewalker Cho|r|r.
.turnin 30801 >>Turn in Lessons from History
.accept 30802 >>Accept Chasing the Storm
.target Image of Lorewalker Cho
.use 81712
step
#loop
.goto 385,53.79,72.07,20,0
.goto 385,58.69,85.70,20,0
.goto 385,66.66,74.20,20,0
.goto 385,61.77,59.20,20,0
.goto 385,81.60,75.95,20,0
.goto 385,53.79,72.07,0
.goto 385,58.69,85.70,0
.goto 385,66.66,74.20,0
.goto 385,61.77,59.20,0
.goto 385,81.60,75.95,0
>>Kill |cRXP_ENEMY_Zandalari Warrior.|r Loot them for |cRXP_LOOT_Blood-Revealed Map.|r
.complete 30802,1 
.mob Zandalari Warrior
step
#completewith next
.cast 118927 >>Use |T512479:0|t[The Tongue of Ba-Shon] to summon an |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
>>|cRXP_WARN_Use|r |T512479:0|t[The Tongue of Ba-Shon] |cRXP_WARN_if you can't see |cRXP_FRIENDLY_Image of Lorewalker Cho|r|r.
.turnin 30802 >>Turn in Chasing the Storm
.accept 30935 >>Accept Fisherman's Tale
.target Image of Lorewalker Cho
.use 81712
step
#completewith next
.goto 385,82.66,75.15,15,0
.goto 385,83.41,64.77,15,0
.goto 379,52.99,46.57,10 >> Leave the Temple
step
#sticky
#label SpeaktoMishiLeiShensTomb
.goto 379,52.97,46.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishi|r
.complete 30935,1 
.skipgossip
.target Mishi
step
#completewith SpeaktoMishiLeiShensTomb
.goto 379,52.97,46.39
.logout >> |cRXP_WARN_Position yourself on the waypoint location.|r
*>>|cRXP_WARN_Press Escape and select Logout|r |cFFFF0000This is to skip RP.|r
step
#requires SpeaktoMishiLeiShensTomb
.cast 441154 >> Use |T134491:0|t[Nostwin's Voucher] to teleport to Infinite Bazaar.
.use 217930
.itemcount 217930,1
step
.isQuestComplete 80446
.goto 379,69.54,53.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>Turn in Looking for Group
.target Arturos
step
.isQuestComplete 80447
.goto 379,69.76,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>Turn in Looking for More
.target Pythagorus
step
.isQuestComplete 80448
.goto 379,69.84,53.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>Turn in A Fresh Scene
.target Larah Treebender
step
.isOnQuest 30935
.goto 379,69.34,52.59,10,0
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu
step
.isOnQuest 30935
#label access Zouchin Province
.goto 379,63.32,40.23
.logout >> |cRXP_WARN_Position yourself on the waypoint location.|r
*>>|cRXP_WARN_Press Escape and select Logout|r |cFFFF0000This is to skip RP.|r
.timer 15,Speak Timer
step
.goto 379,63.32,40.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shin Whispercloud|r |cRXP_WARN_once the Speak Timer (at the bottom of the main window) is up.|r
.complete 30935,2 
.skipgossip
.target Shin Whispercloud
step
#requires SpeakShinWhispercloudZouchinProvince
.goto 379,62.32,29.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r |cRXP_WARN_inside the house.|r
.turnin 30935 >>Turn in Fisherman's Tale
.accept 30944 >>Accept It Takes A Village
.target Lorewalker Cho
step
#completewith next
.goto 379,62.39,29.27,5 >> Leave the House
step
.goto 379,63.37,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steelbender Doshu|r
.accept 30945 >>Accept What's Yours Is Mine
.target Steelbender Doshu
step
.goto 379,63.74,30.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shomi|r |cRXP_WARN_outside and under the house.|r
.accept 30942 >>Accept Make A Fighter Out of Me
.target Shomi
step
#completewith Amani Skirmishers
#label ExhaustedDefenderRelieved
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exhausted Defenders|r
.complete 30944,1 
.skipgossip
.target Exhausted Defender
step
#completewith Amani Skirmishers
>>Kill |cRXP_ENEMY_Amani Skirmishers|r
.complete 30942,1 
.mob amani skirmishers
step
#label Amani Skirmishers
#completewith ExhaustedDefenderRelieved
#hidewindow
.isOnQuest 30942
.goto 379,63.63,31.79,40,0
.goto 379,64.56,29.79,30 >> 1
step
#requires Amani Skirmishers
.goto 379,63.17,29.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Hai|r
.accept 30816 >>Accept Checking In
.target Li Hai
step
#loop
.goto 379,63.33,28.75,10,0
.goto 379,63.58,28.73,10,0
.goto 379,63.23,28.65,10,0
.goto 379,63.47,28.81,10,0
.goto 379,63.33,28.75,0
.goto 379,63.58,28.73,0
.goto 379,63.23,28.65,0
.goto 379,63.47,28.81,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shu|r
.accept 30943 >>Accept Handle With Care
.target Elder Shu
step
#completewith Exhausted Defender Relieved
#hidewindow
#loop
.goto 379,63.50,28.22,40,0
.goto 379,61.90,28.16,40,0
.goto 379,63.93,31.50,40,0
.goto 379,64.59,29.73,40,0
.goto 379,64.05,28.68,40,0
.goto 379,63.50,28.22,0
.goto 379,61.90,28.16,0
.goto 379,63.93,31.50,0
.goto 379,64.59,29.73,0
.goto 379,64.05,28.68,0
+1
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exhausted Defenders|r
.complete 30944,1 
.skipgossip
.target Exhausted Defender
step
>>Kill |cRXP_ENEMY_Amani Skirmishers|r
.complete 30942,1 
.mob amani skirmishers
step
#label Exhausted Defender Relieved
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exhausted Defenders|r
.complete 30944,1 
.skipgossip
.target Exhausted Defender
step
.goto 379,60.60,21.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
.turnin 30816 >>Turn in Checking In
.accept 30794 >>Accept Emergency Care
.target Sage Liao
step
.isOnQuest 30794
#completewith next
>>Click on the |cRXP_PICK_Treasure Chests|r inside the hut << Hunter/Rogue/Warlock/Warrior/DeathKnight/DemonHunter/Mage
.goto 379,61.01,21.54
.collect 81177,1
step
.goto 379,60.61,21.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
.complete 30794,1 
.timer 8,RP
.target Sage Liao
step
.goto 379,60.61,21.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
.turnin 30794 >>Turn in Emergency Care
.target Sage Liao
step
.goto 379,60.61,21.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shu|r
.accept 30805 >>Accept Justice
.accept 30806 >>Accept The Scent of Life
.accept 30807 >>Accept By the Falls, For the Fallen
.target Elder Shu
step
#completewith next
>>Kill |cRXP_ENEMY_Azure Prickly Crawler.|r Loot them for |cRXP_LOOT_Opalescent Blue Crab Shell|r
.complete 30806,1 
.mob Azure Prickly Crawler
step
#loop
.goto 379,59.03,27.23,30,0
.goto 379,59.72,29.83,30,0
.goto 379,60.19,31.25,30,0
.goto 379,58.89,24.56,30,0
.goto 379,59.03,27.23,0
.goto 379,59.72,29.83,0
.goto 379,60.19,31.25,0
.goto 379,58.89,24.56,0
>>Click on |cRXP_PICK_Waterfall-Polished Stone|r
.complete 30807,1 
step
#completewith Captain Ripflesh
>>Kill |cRXP_ENEMY_Azure Prickly Crawler.|r Loot them for |cRXP_LOOT_Opalescent Blue Crab Shell|r
.complete 30806,1 
.mob Azure Prickly Crawler
step
#completewith Captain Ripflesh
>>Click on |cRXP_PICK_Barrels|r |cRXP_WARN_and additionally loot |cRXP_ENEMY_Me|r for more |cRXP_LOOT_Spices|r
.complete 30806,2 
step
#label Captain Ripflesh
.goto 379,62.11,23.51
>>Kill |cRXP_ENEMY_Captain Ripflesh|r and |cRXP_ENEMY_Blackmane Tracker|r
.complete 30805,1 
.complete 30805,2 
.disablecheckbox
.mob captain ripflesh
.mob Blackmane Tracker
.mob Blackmane Brigand
.mob Blackmane Pillager
step
#completewith Blackmane Mercenaries
#hidewindow
#loop
.goto 379,62.61,21.88,40,0
.goto 379,63.55,21.97,40,0
.goto 379,64.51,21.12,40,0
.goto 379,63.30,20.80,40,0
.goto 379,62.16,20.72,40,0
.goto 379,62.61,21.88,0
.goto 379,63.55,21.97,0
.goto 379,64.51,21.12,0
.goto 379,63.30,20.80,0
.goto 379,62.16,20.72,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Azure Prickly Crawler.|r Loot them for |cRXP_LOOT_Opalescent Blue Crab Shell|r
.complete 30806,1 
.mob Azure Prickly Crawler
step
>>Kill |cRXP_ENEMY_Blackmane Mercenaries.|r Loot them for |cRXP_LOOT_Pandaren Spices.|r |cRXP_WARN_Additionally click on |cRXP_PICK_Barrels|r |r
.complete 30805,2 
.complete 30806,2 
.mob Blackmane Tracker
.mob Blackmane Brigand
.mob Blackmane Pillager
step
#label Blackmane Mercenaries
>>Kill |cRXP_ENEMY_Azure Prickly Crawler.|r Loot them for |cRXP_LOOT_Opalescent Blue Crab Shell|r
.complete 30806,1 
.mob Azure Prickly Crawler
step
.goto 379,60.61,21.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
.turnin 30805 >>Turn in Justice
.turnin 30806 >>Turn in The Scent of Life
.turnin 30807 >>Turn in By the Falls, For the Fallen
.accept 30819 >>Accept Preparing the Remains
.target Sage Liao
step
#completewith Drakkari Frostweavers
#hidewindow
#loop
.goto 379,68.17,25.56,40,0
.goto 379,70.77,25.95,40,0
.goto 379,71.90,26.42,40,0
.goto 379,72.72,30.69,40,0
.goto 379,72.23,32.21,40,0
.goto 379,70.93,29.33,40,0
.goto 379,68.06,28.35,40,0
.goto 379,68.17,25.56,0
.goto 379,70.77,25.95,0
.goto 379,71.90,26.42,0
.goto 379,72.72,30.69,0
.goto 379,72.23,32.21,0
.goto 379,70.93,29.33,0
.goto 379,68.06,28.35,0
+1
step
#completewith Exhausted Defender
>>Kill |cRXP_ENEMY_Gurubashi Hexxer|r, |cRXP_ENEMY_Drakkari Frostweavers|r and |cRXP_ENEMY_Amani Skirmishers.|r
.complete 30942,1 
.mob +Amani Skirmishers
.complete 30942,2 
.mob +Gurubashi Hexxer
.complete 30942,3 
.mob +Drakkari Frostweavers
step
#completewith Exhausted Defender
>>Kill |cRXP_ENEMY_Amani Skullbreaker.|r Loot them for |cRXP_LOOT_Blood-Stained Blade.|r
.complete 30945,1 
.mob Amani Raptor-Handler
step
#completewith Exhausted Defender
>>Click on |cRXP_PICK_Volatile Blooms|r
.complete 30943,1 
step
#label Exhausted Defender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exhausted Defenders|r
.complete 30944,1 
.skipgossip
.target Exhausted Defender
step
#completewith Volatile Blooms
>>Kill |cRXP_ENEMY_Gurubashi Hexxer|r, |cRXP_ENEMY_Drakkari Frostweavers|r and |cRXP_ENEMY_Amani Skirmishers|r
.complete 30942,1 
.mob +Amani Skirmishers
.complete 30942,2 
.mob +Gurubashi Hexxer
.complete 30942,3 
.mob +Drakkari Frostweavers
step
#completewith Volatile Blooms
>>Kill |cRXP_ENEMY_Amani Skullbreaker|r and |cRXP_ENEMY_Raptor-Handler.|r Loot them for |cRXP_LOOT_Blood-Stained Blade.|r
.complete 30945,1 
.mob Amani Skullbreaker
.mob Amani Raptor-Handler
step
#label Volatile Blooms
>>Click on |cRXP_PICK_Volatile Blooms|r
.complete 30943,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Gurubashi Hexxer|r, |cRXP_ENEMY_Drakkari Frostweavers|r and |cRXP_ENEMY_Amani Skirmishers|r
.complete 30942,1 
.complete 30942,2 
.complete 30942,3 
.mob drakkari frostweaver
.mob gurubashi hexxer
.mob amani skirmisher
step
>>Kill |cRXP_ENEMY_Amani Skullbreaker.|r Loot them for |cRXP_LOOT_Blood-Stained Blade.|r
.complete 30945,1 
.mob Amani Skullbreaker
.mob Amani Raptor-Handler
step
#label Drakkari Frostweavers
>>Kill |cRXP_ENEMY_Gurubashi Hexxer|r, |cRXP_ENEMY_Drakkari Frostweavers|r and |cRXP_ENEMY_Amani Skirmishers|r
.complete 30942,1 
.complete 30942,2 
.complete 30942,3 
.mob drakkari frostweaver
.mob gurubashi hexxer
.mob amani skirmisher
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shomi|r |cRXP_WARN_next to you.|r
.turnin 30942 >>Turn in Make A Fighter Out of Me
.target Shomi
step
.goto 379,63.16,29.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Hai|r
.turnin 30819 >>Turn in Preparing the Remains
.target Li Hai
.accept 30820 >>Accept A Funeral
step
#loop
.goto 379,63.33,28.75,10,0
.goto 379,63.58,28.73,10,0
.goto 379,63.23,28.65,10,0
.goto 379,63.47,28.81,10,0
.goto 379,63.33,28.75,0
.goto 379,63.58,28.73,0
.goto 379,63.23,28.65,0
.goto 379,63.47,28.81,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shu|r
.turnin 30943 >>Turn in Handle With Care
.target Elder Shu
step
.goto 379,66.95,33.33
>>Click on the |cRXP_PICK_Incense|r
.complete 30820,1 
step
.goto 379,67.05,33.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
.turnin 30820 >>Turn in A Funeral
.target Sage Liao
step
.goto 379,63.37,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steelbender Doshu|r
.turnin 30945 >>Turn in What's Yours Is Mine
.target Steelbender Doshu
step
.goto 379,62.33,29.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r |cRXP_WARN_inside the house.|r
.turnin 30944 >>Turn in It Takes A Village
.accept 31011 >>Accept Enemies At Our Door
.target Lorewalker Cho
step
#completewith next
.goto 379,62.41,29.32,10 >> Leave the House
step
#completewith next
>>Kill |cRXP_ENEMY_Amani Berserker|r
.complete 31011,1 
.mob amani berserker
step
#loop
.goto 379,64.40,29.05,30,0
.goto 379,65.44,28.04,30,0
.goto 379,65.43,31.15,30,0
.goto 379,64.29,32.11,30,0
.goto 379,64.40,29.05,0
.goto 379,65.44,28.04,0
.goto 379,65.43,31.15,0
.goto 379,64.29,32.11,0
>>Kill |cRXP_ENEMY_Gurubashi Bloodrider|r |cRXP_WARN_who run up to the barricades|r
.complete 31011,3 
.mob gurubashi bloodrider
step
#completewith next
>>Kill |cRXP_ENEMY_Amani Berserker|r
.complete 31011,1 
.mob amani berserker
step
#loop
.goto 379,61.19,29.08,20,0
.goto 379,61.15,27.97,30,0
.goto 379,61.19,29.08,0
.goto 379,61.15,27.97,0
>>Kill |cRXP_ENEMY_Amani Behemoth|r |cRXP_WARN_You can use the blasting barrels to destroy them when they are at the barricade|r.
.complete 31011,2 
.mob amani behemoth
step
#loop
.goto 379,62.04,28.39,40,0
.goto 379,63.25,28.32,40,0
.goto 379,63.87,29.63,40,0
.goto 379,63.23,30.70,40,0
.goto 379,62.04,28.39,0
.goto 379,63.25,28.32,0
.goto 379,63.87,29.63,0
.goto 379,63.23,30.70,0
>>Kill |cRXP_ENEMY_Amani Berserker|r
.complete 31011,1 
.mob amani berserker
step
#completewith next
.goto 379,62.36,29.2,5 >> Enter the House
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r |cRXP_WARN_inside the house.|r
.turnin 31011 >>Turn in Enemies At Our Door
.accept 30946 >>Accept Revelations
.goto 379,62.33,29.06
.target Lorewalker Cho
step
.goto 379,62.59,28.90,5,0
.goto 379,62.46,29.05,5,0
.goto 379,62.48,28.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Zandalari Prisoner|r |cRXP_WARN_upstairs|r
.complete 30946,1 
.skipgossip
step
.goto 379,62.32,29.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30946 >>Turn in Revelations
.target Lorewalker Cho
step
.isOnQuest 30592
.hs >> Use your Hearthstone to One Keg
step
.goto 379,58.71,64.77,20,0
.goto 379,58.29,64.78,20,0
.goto 379,49.74,67.57,20,0
.goto 379,53.08,66.58
>>|cRXP_WARN_Follow the Arrow,|r defend and escort the grummies.
.complete 30592,1 
.mob Knucklethump Snatcher
.mob Ookin Marauder
.mob Broketooth Spear-Haver
.target Trail Packer
step
.goto 379,51.67,67.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Trailscenter|r
.turnin 30592 >>Turn in The Burlap Trail: To Burlap Waystation
.accept 30602 >>Accept The Rabbitsfoot
.target Brother Trailscenter
step
.goto 379,49.11,70.45
>>Interact with |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.complete 30602,1 
.target Brother Rabbitsfoot
step
.goto 379,49.10,70.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.accept 30603 >>Accept The Broketooth Ravage
.target Brother Rabbitsfoot
step
.goto 379,48.08,73.11
>>Kill |cRXP_ENEMY_Mo Mo|r |cRXP_WARN_in the mountain.|r Loot him for |cRXP_LOOT_Rabbitsfoot's Luckydo.|r
.complete 30603,1 
.mob Mo Mo
step
#completewith next
.isQuestAvailable 30602
+Click on |cRXP_PICK_Mo-Mo's Treasure Chest|r |cRXP_WARN_if it's there.|r
.goto 379,47.88,73.52
step
.goto 379,51.97,67.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.turnin 30602 >>Turn in The Rabbitsfoot
.turnin 30603 >>Turn in The Broketooth Ravage
.accept 30599 >>Accept A Monkey Idol
.accept 30600 >>Accept No Pack Left Behind
.accept 30604 >>Accept Breaking Broketooth
.target Brother Rabbitsfoot
step
#completewith Breaking Broketooth
.isOnQuest 30604
+If you spot any |cRXP_PICK_Bottles|r or |cRXP_PICK_Luckydo's|r click on them for very strong buffs.
*|cRXP_WARN_Refresh its duration if you spot another.|r
.target Luckydo
step
#completewith Ko Ko
>>Kill |cRXP_ENEMY_Broketooth Charger|r and |cRXP_ENEMY_Broketooth Tosser.|r
.complete 30604,1 
.complete 30604,2 
.mob Broketooth Charger
.mob broketooth tosser
step
#completewith Ko Ko
>>Interact with |cRXP_FRIENDLY_Dead Packer|r
.complete 30600,1 
.target Dead Packer
step
.isOnQuest 30599
.goto 379,56.84,70.99
.cast 6478 >>Kill |cRXP_ENEMY_Tak Tak|r then click on |cRXP_PICK_Tak Tak's Altar Knife|r
.timer 5, RP
.mob Tak Tak
step
#label Ko Ko
.goto 379,52.27,71.44
.isOnQuest 30599
.cast 6478 >>Kill |cRXP_ENEMY_Ko Ko|r then click on |cRXP_PICK_Ko-Ko's Altar Knife|r
.complete 30599,2 
.mob Ko Ko
step
.isOnQuest 30599
.goto 379,52.86,71.43,10 >> Enter the Cave
step
#completewith Dak Dak's Altar
>>Kill |cRXP_ENEMY_Broketooth Charger|r and |cRXP_ENEMY_Broketooth Tosser.|r
.complete 30604,1 
.complete 30604,2 
.mob Broketooth Charger
.mob broketooth tosser
step
#completewith Dak Dak's Altar
>>Interact with |cRXP_FRIENDLY_Dead Packers|r
.complete 30600,1 
.target Dead Packer
step
#label Dak Dak's Altar
#loop
.goto 383,51.21,31.60,20,0
.goto 383,38.75,45.06,60,0
.goto 383,40.88,74.58,60,0
.goto 384,49.65,39.63,60,0
.goto 383,51.21,31.60,0
.goto 383,38.75,45.06,0
.goto 383,40.88,74.58,0
.goto 384,49.65,39.63,0
.cast 6478 >>Kill |cRXP_ENEMY_Dak Dak|r then click on |cRXP_PICK_Dak Dak's Altar Knife|r
.mob Dak Dak
step
#completewith next
>>Kill |cRXP_ENEMY_Broketooth Charger|r and |cRXP_ENEMY_Broketooth Tosser.|r
.complete 30604,1 
.complete 30604,2 
.mob Broketooth Charger
.mob broketooth tosser
step
#loop
.goto 384,30.32,43.00,22,0
.goto 384,18.82,65.84,22,0
.goto 384,30.03,76.33,22,0
.goto 384,34.85,62.95,22,0
.goto 384,32.50,45.56,22,0
.goto 384,66.18,59.02,22,0
.goto 384,82.00,54.17,22,0
.goto 384,77.71,67.89,22,0
.goto 384,67.96,74.52,22,0
.goto 384,61.43,66.89,22,0
.goto 384,66.54,58.53,22,0
.goto 384,41.07,45.53,22,0
.goto 384,49.74,58.73,22,0
.goto 384,30.32,43.00,0
.goto 384,18.82,65.84,0
.goto 384,30.03,76.33,0
.goto 384,34.85,62.95,0
.goto 384,32.50,45.56,0
.goto 384,66.18,59.02,0
.goto 384,82.00,54.17,0
.goto 384,77.71,67.89,0
.goto 384,67.96,74.52,0
.goto 384,61.43,66.89,0
.goto 384,66.54,58.53,0
.goto 384,41.07,45.53,0
.goto 384,49.74,58.73,0
>>Interact with |cRXP_FRIENDLY_Dead Packer|r
.complete 30600,1 
.target Dead Packer
step
#completewith next
>>Kill |cRXP_ENEMY_Broketooth Charger|r and |cRXP_ENEMY_Broketooth Tosser.|r
.complete 30604,1 
.complete 30604,2 
.mob Broketooth Charger
.mob broketooth tosser
step
.isOnQuest 30599
.goto 379,52.86,71.43,10 >> Leave the Cave
step
#loop
.goto 379,55.52,70.17,30,0
.goto 379,52.80,70.65,30,0
.goto 379,55.52,70.17,0
.goto 379,52.80,70.65,0
>>Kill |cRXP_ENEMY_Broketooth Charger|r and |cRXP_ENEMY_Broketooth Tosser.|r
.complete 30604,1 
.complete 30604,2 
.mob Broketooth Charger
.mob broketooth tosser
step
#label Breaking Broketooth
.goto 379,51.97,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.turnin 30599 >>Turn in A Monkey Idol
.turnin 30600 >>Turn in No Pack Left Behind
.turnin 30604 >>Turn in Breaking Broketooth
.accept 30605 >>Accept Lucky Yakshoe
.target Brother Rabbitsfoot
step
.isOnQuest 30605
.goto 379,50.53,64.2
.cast 115562 >>Interact with |cRXP_ENEMY_Mok Mok|r
.timer 11,RP
.mob Mok Mok
step
.goto 379,50.57,64.08
>>|cRXP_WARN_During quest downtime, maximize efficiency by focusing on the following activities based on your current needs:|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397
.complete 30605,1 
step
.goto 379,50.56,64.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Yakshoe|r
.turnin 30605 >>Turn in Lucky Yakshoe
.accept 30606 >>Accept Thumping Knucklethump
.accept 30607 >>Accept Hozen Love Their Keys
.accept 30608 >>Accept The Snackrifice
.target Brother Yakshoe
step
#completewith Silverback Hozen
.isOnQuest 30606
+If you spot any |cRXP_PICK_Bottles|r or |cRXP_PICK_Luckydo's|r click on them for very strong buffs.
*|cRXP_WARN_Refresh its duration if you spot another.|r
step
#completewith Release Old Poot Poot
>>Kill |cRXP_ENEMY_Knucklethump Smasher|r and |cRXP_ENEMY_Knucklethump Jibstabber.|r
.complete 30606,1 
.mob Knucklethump Smasher
.mob Knucklethump Jibstabber
step
.goto 379,50.96,62.73,15,0
.goto 379,50.94,61.97,15,0
.goto 379,50.29,62.45,15,0
.goto 379,51.04,64.09,15,0
.goto 379,51.61,63.23,15,0
>>Click on |cRXP_PICK_Cages|r and destroy |cRXP_ENEMY_Prisoner Bindings|r to rescue |cRXP_FRIENDLY_Imprisoned Grummle|r
.complete 30608,1 
.target Imprisoned Grummle
.mob Prisoner Bindings
step
#completewith next
.goto 382,75.83,91.72,10 >> Enter the Cave
step
.goto 382,76.35,77.58,10,0
.goto 382,74.8,58.31,10,0
.goto 382,48.4,70.72,10,0
.goto 382,36.22,52.47,10,0
.goto 382,32.32,30.96,10,0
.goto 382,42.73,26.19
>>Kill |cRXP_ENEMY_Cho Cho the Wicked.|r Loot him for |cRXP_LOOT_Yeti Shackle Key.|r
.complete 30607,1 
.mob Cho Cho the Wicked
step
#label Release Old Poot Poot
.goto 382,42.73,26.19
>>Click on |cRXP_PICK_Old Poot Poot|r
.complete 30607,2 
.timer 25, Time until Cave Exit
.target Old Poot Poot
step
.isOnQuest 30607
.goto 379,50.72,62.5,25 >> |cRXP_WARN_Dismount the Yeti |cFFFF0000when outside the cave|r by using the |cFFFF0000/leavevehicle|r macro command.|r
.link /leavevehicle>> CLICK HERE FOR MACRO.
*|cRXP_WARN_It's recommended to safe this macro for future use.|r
step
#loop
.goto 379,49.90,64.28,25,0
.goto 379,51.63,63.58,25,0
.goto 382,74.31,85.72,25,0
.goto 379,49.90,64.28,0
.goto 379,51.63,63.58,0
.goto 382,74.31,85.72,0
>>Kill |cRXP_ENEMY_Knucklethump Smasher|r and |cRXP_ENEMY_Knucklethump Jibstabber.|r
.complete 30606,1 
.mob Knucklethump Smasher
.mob Knucklethump Jibstabber
step
#label Silverback Hozen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r and |cRXP_FRIENDLY_Brother Yakshoe.|r
.turnin 30607 >>Turn in Hozen Love Their Keys
.turnin 30608 >>Turn in The Snackrifice
.accept 30610 >>Accept Grummle! Grummle! Grummle!
.goto 379,52.02,67.18
.turnin 30606 >>Turn in Thumping Knucklethump
.accept 30611 >>Accept Unleash The Yeti!
.goto 379,51.98,67.22
.target Brother Rabbitsfoot
.target Brother Yakshoe
step
#completewith Turn in Grummle! Grummle! Grummle!
.isOnQuest 30611
+If you spot any |cRXP_PICK_Bottles|r or |cRXP_PICK_Luckydo's|r click on them for very strong buffs.
*|cRXP_WARN_Refresh its duration if you spot another.|r
step
#completewith Cagemaster
#hidewindow
#loop
.goto 379,46.33,64.87,40,0
.goto 379,46.74,66.01,40,0
.goto 379,45.41,65.40,40,0
.goto 379,45.88,64.12,30,0
.goto 379,45.27,63.01,30,0
.goto 379,46.06,62.07,30,0
.goto 379,46.83,63.26,30,0
.goto 379,46.33,64.87,0
.goto 379,46.74,66.01,0
.goto 379,45.41,65.40,0
.goto 379,45.88,64.12,0
.goto 379,45.27,63.01,0
.goto 379,46.06,62.07,0
.goto 379,46.83,63.26,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Cagemasters|r
.complete 30611,1 
.mob cagemaster
step
>>Click on |cRXP_PICK_Grummle Gear|r |cRXP_WARN_but ensure there's approximately a 2-second gap before clicking on the next one.|r
.complete 30610,1 
step
#label Cagemaster
>>Kill |cRXP_ENEMY_Cagemasters|r
.complete 30611,1 
.mob cagemaster
step
#label Turn in Grummle! Grummle! Grummle!
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Yakshoe|r and |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.turnin 30610 >>Turn in Grummle! Grummle! Grummle!
.turnin 30611 >>Turn in Unleash The Yeti!
.goto 379,45.95,64.06
.accept 30612 >>Accept The Leader Hozen
.goto 379,45.91,64.06
.timer 24,RP
.target Brother Yakshoe
.target Brother Rabbitsfoot
step
#completewith Turn in The Leader Hozen
.isOnQuest 30612
+If you spot any |cRXP_PICK_Bottles|r or |cRXP_PICK_Luckydo's|r click on them for very strong buffs.
*|cRXP_WARN_Refresh its duration if you spot another.|r
step
.goto 379,46.09,63.34
>>|cRXP_WARN_During quest downtime, maximize efficiency by focusing on the following activities based on your current needs:|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397
.complete 30612,1 
step
#loop
.goto 379,45.74,62.85,15,0
.goto 379,46.11,62.79,15,0
.goto 379,46.20,63.34,15,0
.goto 379,45.74,62.85,0
.goto 379,46.11,62.79,0
.goto 379,46.20,63.34,0
>>Kill |cRXP_ENEMY_The Ook of Dook|r
.complete 30612,2 
.mob the ook of dook
step
#label Turn in The Leader Hozen
.goto 379,51.97,67.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.turnin 30612 >>Turn in The Leader Hozen
.target Brother Rabbitsfoot
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Keenbean|r and |cRXP_FRIENDLY_Cousin Gootfur|r
.accept 30744 >>Accept Kota Blend
.accept 30745 >>Accept Trouble Brewing
.goto 379,42.42,69.66
.accept 30742 >>Accept Shut it Down
.accept 30743 >>Accept Gourmet Kafa
.goto 379,42.36,69.74
.target Uncle Keenbean
.target Cousin Gootfur
step
#completewith Kafa'kota Berry
>>Kill |cRXP_ENEMY_Kafa-Crazed Mountain Goats|r
.complete 30742,1 
.mob kafa-crazed mountain goat
step
#completewith Kafa'kota Berry
>>Click on |cRXP_PICK_Kafa'goot "Deposit"|r
.complete 30743,1 
step
#completewith Kafa'kota Berry
>>Kill |cRXP_ENEMY_Kafa-Crazed Yeti|r
.complete 30745,1 
.mob kafa-crazed yeti
step
#loop
.goto 379,40.39,71.44,30,0
.goto 379,40.04,71.93,30,0
.goto 379,39.45,73.15,30,0
.goto 379,38.79,73.67,30,0
.goto 379,39.45,75.67,20,0
.goto 379,39.25,74.67,20,0
.goto 379,39.21,74.17,20,0
.goto 379,38.67,74.28,20,0
.goto 379,38.27,75.01,20,0
.goto 379,38.00,75.24,20,0
.goto 379,37.89,74.07,20,0
.goto 379,38.55,74.39,20,0
.goto 379,38.30,73.21,30,0
.goto 379,39.25,74.30,30,0
.goto 379,39.44,75.38,30,0
.goto 379,39.71,78.09,30,0
.goto 379,38.46,78.35,30,0
.goto 379,36.93,77.58,30,0
.goto 379,37.55,78.04,30,0
.goto 379,37.68,77.16,30,0
.goto 379,37.70,75.61,30,0
.goto 379,40.39,71.44,0
.goto 379,40.04,71.93,0
.goto 379,39.45,73.15,0
.goto 379,38.79,73.67,0
.goto 379,39.45,75.67,0
.goto 379,39.25,74.67,0
.goto 379,39.21,74.17,0
.goto 379,38.67,74.28,0
.goto 379,38.27,75.01,0
.goto 379,38.00,75.24,0
.goto 379,37.89,74.07,0
.goto 379,38.55,74.39,0
.goto 379,38.30,73.21,0
.goto 379,39.25,74.30,0
.goto 379,39.44,75.38,0
.goto 379,39.71,78.09,0
.goto 379,38.46,78.35,0
.goto 379,36.93,77.58,0
.goto 379,37.55,78.04,0
.goto 379,37.68,77.16,0
.goto 379,37.70,75.61,0
#label Kafa'kota Berry
>>Click on |cRXP_PICK_Kafa'kota Berry|r and use |T133958:0|t[Kafa'kota Berries] to significantly boost your stats.
.complete 30744,1 
.turnin 30744 >>Turn in Kota Blend
.accept 30746 >>Accept A Fair Trade
.use 81054
step
.goto 379,36.95,76.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nephew Burrberry|r |cRXP_WARN_outside the cave ontop of the mountain.|r
.turnin 30746 >>Turn in A Fair Trade
.target Nephew Burrberry
step
#completewith Kafa-Crazed Mountain Goat
#hidewindow
#loop
.goto 379,38.72,73.54,30,0
.goto 379,38.55,72.60,30,0
.goto 379,40.04,71.97,30,0
.goto 379,40.73,72.39,30,0
.goto 379,40.41,73.12,30,0
.goto 379,39.51,76.93,30,0
.goto 379,38.42,78.15,30,0
.goto 379,38.72,73.54,0
.goto 379,38.55,72.60,0
.goto 379,40.04,71.97,0
.goto 379,40.73,72.39,0
.goto 379,40.41,73.12,0
.goto 379,39.51,76.93,0
.goto 379,38.42,78.15,0
+1
step
#completewith Kafa'goot "Deposit" Marked
>>Kill |cRXP_ENEMY_Kafa-Crazed Mountain Goats|r
.complete 30742,1 
.mob kafa-crazed mountain goat
step
#completewith Kafa'goot "Deposit" Marked
>>Kill |cRXP_ENEMY_Kafa-Crazed Yeti|r
.complete 30745,1 
.mob kafa-crazed yeti
step
#label Kafa'goot "Deposit" Marked
>>Click on |cRXP_PICK_Kafa'goot "Deposit"|r
.complete 30743,1 
step
#completewith next
>>Kill |cRXP_ENEMY_Kafa-Crazed Mountain Goats|r
.complete 30742,1 
.mob kafa-crazed mountain goat
step
>>Kill |cRXP_ENEMY_Kafa-Crazed Yeti|r
.complete 30745,1 
.mob kafa-crazed yeti
step
#label Kafa-Crazed Mountain Goat
>>Kill |cRXP_ENEMY_Kafa-Crazed Mountain Goats|r
.complete 30742,1 
.mob kafa-crazed mountain goat
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Keenbean|r, |cRXP_FRIENDLY_Cousin Gootfur|r and |cRXP_FRIENDLY_Nephew Burrberry|r
.turnin 30742 >>Turn in Shut it Down
.turnin 30743 >>Turn in Gourmet Kafa
.goto 379,42.52,69.35
.turnin 30745 >>Turn in Trouble Brewing
.goto 379,42.53,69.44
.goto 379,42.52,69.35
.target Nephew Burrberry
.target Uncle Keenbean
.target Cousin Gootfur
step
.goto 379,34.96,59.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Silentstrike|r
.turnin 30699 >>Turn in To Winter's Blossom
.target Lin Silentstrike
.accept 30723 >>Accept Honor, Even in Death
step
.goto 379,35.12,59.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.accept 30715 >>Accept A Line Unbroken
.target Ban Bearheart
step
#completewith Shiya Boldblade
>>Kill |cRXP_ENEMY_Kun-Lai Corpsepicker|r
.complete 30723,1 
.mob kun-lai corpsepicker
step
.goto 379,29.98,64.39
>>Interact with |cRXP_FRIENDLY_Shiya Boldblade.|r
.complete 30715,3 
.target Shiya Boldblade
step
.goto 379,30.16,62.49
>>Interact with |cRXP_FRIENDLY_Liu of the Thousand.|r
.complete 30715,2 
.target Liu of the Thousand
step
#label Shiya Boldblade
.goto 379,30.33,60.02
>>Interact with |cRXP_FRIENDLY_Shado-Master Zhiyao.|r
.complete 30715,1 
.target Shado-Master Zhiyao
step
#loop
.goto 379,32.00,62.40,20,0
.goto 379,29.73,63.74,20,0
.goto 379,30.30,60.30,20,0
.goto 379,32.00,62.40,0
.goto 379,29.73,63.74,0
.goto 379,30.30,60.30,0
>>Kill |cRXP_ENEMY_Kun-Lai Corpsepicker|r
.complete 30723,1 
.mob kun-lai corpsepicker
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Silentstrike|r and |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30715 >>Turn in A Line Unbroken
.goto 379,35.11,59.64
.turnin 30723 >>Turn in Honor, Even in Death
.accept 30724 >>Accept To the Wall!
.goto 379,34.95,59.30
.target Lin Silentstrike
.target Ban Bearheart
step
#completewith next
.goto 379,34.53,59.12
.logout >> |cRXP_WARN_Position yourself on the waypoint location.|r
*>>|cRXP_WARN_Press Escape and select Logout|r |cFFFF0000This is to skip RP.|r
step
.goto 379,34.53,59.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite-Master Len |r
.complete 30724,1 
.skipgossip 61512,2
.target Kite-Master Len
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r and |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.turnin 30724 >>Turn in To the Wall!
.accept 30750 >>Accept Off the Wall!
.goto 379,29.31,62.29
.accept 30751 >>Accept A Terrible Sacrifice
.goto 379,29.25,62.3
.target Lao-Chin the Iron Belly
.target Suna Silentstrike
step
#completewith Osul Veteran Archers
#hidewindow
#loop
.goto 379,27.92,60.90,25,0
.goto 379,26.84,60.04,25,0
.goto 379,26.05,59.10,25,0
.goto 379,27.92,60.90,0
.goto 379,26.84,60.04,0
.goto 379,26.05,59.10,0
+1
step
#completewith next
>>Kill |cRXP_ENEMY_Veteran Archer|r |cRXP_ENEMY_Fire-Warrior|r
.complete 30750,1 
.mob Osul Veteran Archer
.mob Osul Fire-Warrior
step
>>Click on |cRXP_PICK_Yaungol Oil Barrel|r
.complete 30751,1 
step
#label Osul Veteran Archers
>>Kill |cRXP_ENEMY_Veteran Archer|r |cRXP_ENEMY_Fire-Warrior|r
.complete 30750,1 
.mob Osul Veteran Archer
.mob Osul Fire-Warrior
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r and |cRXP_FRIENDLY_Suna Silentstrike|r
.turnin 30751 >>Turn in A Terrible Sacrifice
.goto 379,29.25,62.30
.turnin 30750 >>Turn in Off the Wall!
.accept 30994 >>Accept Lao-Chin's Gambit
.goto 379,29.3,62.29
.target Suna Silentstrike
.target Lao-Chin the Iron Belly
step
#completewith next
.goto 379,29.31,62.29
.logout >> |cRXP_WARN_Position yourself on the waypoint location.|r
*>>|cRXP_WARN_Press Escape and select Logout|r |cFFFF0000This is to skip RP.|r
step
.goto 379,29.31,62.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike |r
.complete 30994,1 
.skipgossip
.target Suna Silentstrike
step
.goto 379,31.81,60.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.turnin 30994 >>Turn in Lao-Chin's Gambit
.target Lao-Chin the Iron Belly
.accept 30991 >>Accept Do a Barrel Roll!
step
.isOnQuest 30991
.goto 379,32.08,60.52
.vehicle >>Click on |cRXP_PICK_Keg Bomb|r
.target Keg Bomb
step
#loop
.goto 379,30.90,62.46,20,0
.goto 379,30.90,63.36,20,0
.goto 379,30.09,63.92,20,0
.goto 379,29.94,62.80,20,0
.goto 379,30.90,62.46,0
.goto 379,30.90,63.36,0
.goto 379,30.09,63.92,0
.goto 379,29.94,62.80,0
>>Use |T135265:0|t[Ignite Keg](1) near to destroy |cRXP_ENEMY_Invaders|r and |cRXP_ENEMY_Osul Treelauncher|r |cRXP_WARN_do it multiple times.|r
.complete 30991,1 
.complete 30991,2 
.mob osul invader
.mob osul treelauncher
step
.goto 379,31.82,60.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.turnin 30991 >>Turn in Do a Barrel Roll!
.target Lao-Chin the Iron Belly
.accept 30992 >>Accept Finish This!
step
.goto 379,31.36,61.48
>>Kill |cRXP_ENEMY_Gong Da|r
.complete 30992,1 
.mob Gong Da
step
.goto 379,31.28,61.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30992 >>Turn in Finish This!
.accept 30993 >>Accept Where are My Reinforcements?
.target Ban Bearheart
step
.goto 379,31.3,61.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.complete 30993,1 
.skipgossip 61819,1
.target Ban Bearheart
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r
.target Suna Silentstrike
step
#completewith next
.logout 15 >> Press Escape and Select Logout infront of |cRXP_FRIENDLY_Ban Bearheart|r
step
.goto 379,33.97,58.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r |cRXP_WARN_only when 5seconds are left on the login timer.|r
.complete 30993,2 
.skipgossip 61819,1
.target Ban Bearheart
step
.goto 379,35.32,49.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30993 >>Turn in Where are My Reinforcements?
.target Ban Bearheart
.accept 30752 >>Accept Unbelievable!
step
.isOnQuest 30752
.goto 379,36.7,47.72
.gossipoption 41432 >>Talk to |cRXP_FRIENDLY_Shado-Pan Sentinel|r
.timer 10,RP
.target Shado-Pan Sentinel
step
.goto 379,36.7,47.72
>>Kill |cRXP_ENEMY_Shado-Pan Sentinel|r
.complete 30752,1 
.skipgossip
.target Shado-Pan Sentinel
step
.goto 379,36.70,47.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r |cRXP_WARN_next to you.|r
.turnin 30752 >>Turn in Unbelievable!
.target Ban Bearheart
]]);
