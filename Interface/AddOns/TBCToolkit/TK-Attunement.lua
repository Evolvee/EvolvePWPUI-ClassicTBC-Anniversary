if RXPGuides == nil then
	return
end

RXPGuides.RegisterGuide([[
#tbc
#version 3
#group Consita TBC Toolkit
#subgroup 3 - Attunements
#name T5 - Tempest Keep

    step
        #completewith next
        .zone Shadowmoon Valley >> Travel to |cFFfa9602SShadowmoon Valley|r

    step << Alliance
        .goto Shadowmoon Valley,36.368,56.953
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Sophurus|r
        .accept 10680
        .target Earthmender Sophurus

    step << Horde
        .goto Shadowmoon Valley,28.489,26.573
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Splinthoof|r
        .accept 10681
        .target Earthmender Splinthoof
        
    step
        .goto Shadowmoon Valley,42.190,45.060
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
        .turnin 10680 << Alliance
        .turnin 10681 << Horde
        .accept 10458
        .target Earthmender Torlok

    step
        .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[Totem of Spirits] |cRXP_WARN_and kill|r |cRXP_ENEMY_Enraged Fire Spirits|r and |cRXP_ENEMY_Enraged Earth Spirits|r
        >>|cRXP_WARN_Ensure you kill them while they are beside the|r |T135462:0|t[Totem of Spirits]
        .complete 10458,1
        .goto Shadowmoon Valley,45.8,47.6,70,0
        .goto Shadowmoon Valley,51.6,53.8,70,0
        .goto Shadowmoon Valley,47.0,41.6,70,0
        .goto Shadowmoon Valley,45.8,47.6,70,0
        .goto Shadowmoon Valley,51.6,53.8,70,0
        .goto Shadowmoon Valley,47.0,41.6
        .mob +Enraged Earth Spirit
        .complete 10458,2
        .goto Shadowmoon Valley,45.8,47.6,70,0
        .goto Shadowmoon Valley,51.6,53.8,70,0
        .goto Shadowmoon Valley,47.0,41.6,70,0
        .goto Shadowmoon Valley,49.2,36.6
        .goto Shadowmoon Valley,45.8,47.6,70,0
        .goto Shadowmoon Valley,51.6,53.8,70,0
        .goto Shadowmoon Valley,47.0,41.6
        .goto Shadowmoon Valley,49.2,36.6
        .mob +Enraged Fire Spirit

    step
        .goto Shadowmoon Valley,42.190,45.060
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
        .turnin 10458
        .accept 10480
        .target Earthmender Torlok

    step
        #loop
        .goto Shadowmoon Valley,47.6,29.8,0
        .goto Shadowmoon Valley,50.2,23.8,0
        .goto Shadowmoon Valley,44.7,34.1,70,0
        .goto Shadowmoon Valley,44.6,28.6,70,0
        .goto Shadowmoon Valley,47.6,29.8,70,0
        .goto Shadowmoon Valley,46.8,23.6,70,0
        .goto Shadowmoon Valley,50.2,23.8,70,0
        .goto Shadowmoon Valley,52.4,27.4,70,0
        .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[Totem of Spirits] |cRXP_WARN_and kill|r |cRXP_ENEMY_Enraged Water Spirits|r
        >>|cRXP_WARN_Ensure you kill them while they are beside the|r |T135462:0|t[Totem of Spirits]
        .complete 10480,1
        .mob Enraged Water Spirit

    step
        .goto Shadowmoon Valley,42.190,45.060
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
        .turnin 10480
        .accept 10481
        .target Earthmender Torlok

    step
        #loop
        .line Shadowmoon Valley,59.6,70.2,62.4,63.6,65.0,61.8,64.6,53.6,58.8,54.8,62.4,62.8
        .goto Shadowmoon Valley,58.8,54.8,70,0
        .goto Shadowmoon Valley,62.4,62.8,70,0
        .goto Shadowmoon Valley,65.0,61.8,70,0
        .goto Shadowmoon Valley,64.6,53.6,70,0
        .goto Shadowmoon Valley,62.4,63.6,70,0
        .goto Shadowmoon Valley,59.6,70.2,70,0
        .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[Totem of Spirits] |cRXP_WARN_and kill|r |cRXP_ENEMY_Enraged Air Spirits|r
        >>|cRXP_WARN_Ensure you kill them while they are beside the|r |T135462:0|t[Totem of Spirits]
        .complete 10481,1
        .mob Enraged Air Spirit

    step
        .goto Shadowmoon Valley,42.190,45.060
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
        .turnin 10481
        .accept 10513
        .target Earthmender Torlok

    step
        .goto Shadowmoon Valley,53.918,23.529
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
        .turnin 10513
        .accept 10514
        .target Oronok Torn-heart

    step
        #loop
        .goto Shadowmoon Valley,51.8,18.4,0
        .goto Shadowmoon Valley,51.1,15.4,0
        .goto Shadowmoon Valley,55.0,14.2,0
        .goto Shadowmoon Valley,53.8,17.7,0
        .goto Shadowmoon Valley,51.8,18.4,60,0
        .goto Shadowmoon Valley,51.1,15.4,60,0
        .goto Shadowmoon Valley,55.0,14.2,60,0
        .goto Shadowmoon Valley,53.8,17.7,60,0
        .use 30462 >>|cRXP_WARN_Stand on top of the small plants on the ground and use|r |T132161:0|t[Oronok's Boar Whistle] |cRXP_WARN_to have a nearby Domesticated Felboars dig out|r |cRXP_LOOT_Shadowmoon Tubers|r
        >>|cRXP_WARN_It is very important you do NOT kill any Domesticated Felboars|r
        >>Loot the |cRXP_LOOT_Shadowmoon Tubers|r that appear on the ground after
        .complete 10514,1

    step
        .goto Shadowmoon Valley,53.918,23.529
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
        .turnin 10514
        .accept 10515
        .target Oronok Torn-heart

    step
        #loop
        .goto Shadowmoon Valley,56.5,14.6,0
        .goto Shadowmoon Valley,57.6,18.6,0
        .goto Shadowmoon Valley,57.2,21.3,0
        .goto Shadowmoon Valley,56.5,14.6,70,0
        .goto Shadowmoon Valley,57.6,18.6,70,0
        .goto Shadowmoon Valley,57.2,21.3,70,0
        .goto Shadowmoon Valley,58.5,14.8,70,0
        >>Click |cRXP_ENEMY_Ravenous Flayer Eggs|r on the ground to destroy them
        >>|cRXP_WARN_Be aware of the elite|r |cRXP_ENEMY_Ravenous Flayer Matriarch|r |cRXP_WARN_that patrols the area|r
        .complete 10515,1

    step
        .goto Shadowmoon Valley,53.918,23.529
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
        .turnin 10515
        .accept 10519
        .complete 10519,1
        .skipgossip
        .target Oronok Torn-heart

    step
        .goto Shadowmoon Valley,53.918,23.529
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
        .turnin 10519
        .accept 10521
        .accept 10527
        .accept 10546
        .target Oronok Torn-heart

    step
        .goto Shadowmoon Valley,44.576,23.614
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
        .turnin 10521
        .accept 10522
        .target Grom'tor, Son of Oronok

    step
        #loop
        .goto Shadowmoon Valley,45.98,28.74,0
        .goto Shadowmoon Valley,46.1,31.6,70,0
        .goto Shadowmoon Valley,47.6,31.9,70,0
        .goto Shadowmoon Valley,46.8,26.0,70,0
        .goto Shadowmoon Valley,45.5,26.6,70,0
        >>Kill |cRXP_ENEMY_Coilskar Nagas|r. Loot them for their |cRXP_LOOT_Coilskar Chest Keys|r
        >>Open the |cRXP_PICK_Coilskar Chests|r until you loot the |cRXP_LOOT_First Fragment of the Cipher of Damnation|r
        .complete 10522,1
        .mob Coilskar Defender
        .mob Coilskar Muckwatcher
        .mob Coilskar Myrmidon
        .mob Coilskar Siren
        .mob Coilskar Sorceress
        .mob Coilskar Waterkeeper

    step
        .goto Shadowmoon Valley,44.576,23.614
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
        .turnin 10522
        .accept 10523
        .target Grom'tor, Son of Oronok

    step
        .goto Shadowmoon Valley,29.617,50.397
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
        .turnin 10527
        .accept 10528
        .target Ar'tor, Son of Oronok

    step
        .goto Shadowmoon Valley,28.005,47.568
        >>Kill |cRXP_ENEMY_Painmistress Gabrissa|r. Loot her for the |cRXP_LOOT_Crystalline Key|r
        .complete 10528,1
        .mob Painmistress Gabrissa

    step
        .goto Shadowmoon Valley,29.617,50.397
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
        .turnin 10528
        .target Ar'tor, Son of Oronok

    step
        .isQuestTurnedIn 10528
        .goto Shadowmoon Valley,29.539,50.560
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of Ar'tor|r
        .accept 10537
        .target Spirit of Ar'tor

    step
        #loop
        .goto Shadowmoon Valley,30.2,56.8,0
        .goto Shadowmoon Valley,32.0,50.4,0
        .goto Shadowmoon Valley,27.2,52.6,0  
        .goto Shadowmoon Valley,30.2,56.8,70,0
        .goto Shadowmoon Valley,32.0,50.4,70,0
        .goto Shadowmoon Valley,27.2,52.6,70,0
        >>Kill the |cRXP_ENEMY_Illidari|r. Loot them for |cRXP_LOOT_Lohn'goron, Bow of the Torn-heart|r
        .complete 10537,1
        .mob Illidari Dreadbringer
        .mob Illidari Painlasher
        .mob Illidari Shadowstalker
        .mob Illidari Shocktrooper

    step
        .goto Shadowmoon Valley,29.539,50.560
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of Ar'tor|r
        .turnin 10537
        .accept 10540
        .target Spirit of Ar'tor

    step
        .goto Shadowmoon Valley,29.5,57.5
        >>|cRXP_WARN_Head southeast while the |cRXP_FRIENDLY_Spirit of Ar'tor|r follows you, walk around this area until he summons|r |cRXP_ENEMY_Veneratus the Many|r
        >>Kill |cRXP_ENEMY_Veneratus the Many|r. Loot him for the |cRXP_LOOT_Second Fragment of the Cipher of Damnation|r
        .complete 10540,1
        .mob Veneratus the Many
        .target Spirit of Ar'tor

    step
        .goto Shadowmoon Valley,29.539,50.560
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of Ar'tor|r
        .turnin 10540
        .accept 10541
        .target Spirit of Ar'tor

    step
        .goto Shadowmoon Valley,47.557,57.178
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
        .turnin 10546
        .accept 10547
        .target Borak, Son of Oronok

    step
        #loop
        .goto Shadowmoon Valley,43.7,53.3,55,0
        .goto Shadowmoon Valley,42.4,58.3,55,0
        .goto Shadowmoon Valley,43.7,60.7,55,0
        .goto Shadowmoon Valley,46.1,59.2,55,0
        >>Loot the |cRXP_PICK_Rotten Arakkoa Eggs|r on the ground
        >>|cRXP_WARN_Be careful because they can damage you upon looting|r
        .complete 10547,1

    step
        #completewith next
        .zone Shattrath City >> Travel to Shattrath

    step
        .goto Shattrath City,63.944,70.028
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias the Filth Gorger|r
        .turnin 10547
        .accept 10550
        .target Tobias the Filth Gorger

    step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Shadowmoon Valley >>Fly to |cFFfa9602Shadowmoon Valley|r
        .target Nutral
        .zoneskip Shadowmoon Valley

    step
        .goto Shadowmoon Valley,47.557,57.178
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
        .turnin 10550
        .accept 10570
        .target Borak, Son of Oronok

    step
        #completewith next
        .goto Shadowmoon Valley,48.959,57.495
        .cast 37062 >>|cRXP_WARN_Use the|r |T133651:0|t[Bundle of Bloodthistle] |cRXP_WARN_at the end of the bridge|r
        .timer 78,To Catch A Thistlehead RP
        .use 30616

    step
        .goto Shadowmoon Valley,48.959,57.495
        .use 30616 >>Kill |cRXP_ENEMY_Envoy Icarius|r when he becomes attackable. Loot him for the |cRXP_LOOT_Stormrage Missive|r
        .complete 10570,1
        .mob Envoy Icarius

    step
        .goto Shadowmoon Valley,47.557,57.178
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
        .turnin 10570
        .accept 10576
        .target Borak, Son of Oronok

    step
        #loop
        .goto Shadowmoon Valley,49.6,60.6,0
        .goto Shadowmoon Valley,47.6,66.4,0
        .goto Shadowmoon Valley,44.4,67.4,0
        .goto Shadowmoon Valley,47.6,70.6,0
        .goto Shadowmoon Valley,49.6,60.6,70,0
        .goto Shadowmoon Valley,47.6,66.4,70,0
        .goto Shadowmoon Valley,44.4,67.4,70,0
        .goto Shadowmoon Valley,47.6,70.6,70,0
        >>Kill |cRXP_ENEMY_Eclipsions|r. Loot them for their |cRXP_LOOT_Armor|r
        .complete 10576,1
        .mob Eclipsion Archmage
        .mob Eclipsion Blood Knight
        .mob Eclipsion Bloodwarder
        .mob Eclipsion Centurion

    step
        .goto Shadowmoon Valley,47.557,57.178
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
        .turnin 10576
        .accept 10577
        .target Borak, Son of Oronok

    step
        #completewith next
        .cast 37096 >>|cRXP_WARN_Use the|r |T133564:0|t[Blood Elf Disguise]
        .use 30639

    step
        .goto Shadowmoon Valley,46.458,71.944
        .use 30639 >>Talk to |cRXP_FRIENDLY_Grand Commander Ruusk|r
        >>|cRXP_WARN_Ensure you have the|r |T133564:0|t[Blood Elf Disguise] |cRXP_WARN_on|r
        .complete 10577,1
        .skipgossip
        .target Grand Commander Ruusk

    step
        .goto Shadowmoon Valley,47.557,57.178
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
        .turnin 10577
        .accept 10578
        .target Borak, Son of Oronok

    step
        #loop
        .goto Shadowmoon Valley,59.2,55.8,60,0
        .goto Shadowmoon Valley,65.8,59.8,60,0
        >>Kill |cRXP_ENEMY_Ruul the Darkener|r. Loot him for the |cRXP_LOOT_Third Fragment of the Cipher of Damnation|r
        >>|cRXP_ENEMY_Ruul the Darkener|r |cRXP_WARN_hits very hard. It is recommended you complete this with a full group including a tank and healer|r
        .complete 10578,1
        .mob Ruul the Darkener

    step
        .goto Shadowmoon Valley,47.557,57.178
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
        .turnin 10578
        .accept 10579
        .target Borak, Son of Oronok

    step
        .goto Shadowmoon Valley,53.918,23.529
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
        .turnin 10523
        .turnin 10541
        .turnin 10579
        .accept 10588
        .target Oronok Torn-heart

    step
        #completewith next
        .cast 37236 >>|cRXP_WARN_Channel the|r |T134423:0|t[The Cipher of Damnation] |cRXP_WARN_for 20 seconds to summon|r |cRXP_ENEMY_Cyrukh the Firelord|r
        .use 30657

    step
        .goto Shadowmoon Valley,43.249,44.834
        .use 30657 >>Kill |cRXP_ENEMY_Cyrukh the Firelord|r
        >>|cRXP_ENEMY_Cyrukh the Firelord|r |cRXP_WARN_has 369k HP. It is recommended you complete this with a full group including a tank and healer. The NPCs will also assist you|r
        .complete 10588,1
        .mob Cyrukh the Firelord

    step
        .goto Shadowmoon Valley,42.190,45.060
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
        .turnin 10588
        .target Earthmender Torlok

	step
		#scryer
		.goto Shadowmoon Valley,30.3,29.2
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drek'Gol|r
		.fly Shattrath City >>Fly to |cFFfa9602Shattrath City|r
		.target Drek'Gol

	step
		#aldor
		.goto Shadowmoon Valley,63.2,30.4
		>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maddix|r
		.fly Shattrath City >>Fly to |cFFfa9602Shattrath City|r
		.target Maddix

    step
        .goto Shattrath City,54.751,44.322
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r 
        .accept 10883
        .target Khadgar

    step
        .goto Shattrath City,53.991,44.743
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
        .turnin 10883
        .accept 10884
        .accept 10885
        .accept 10886
        .target A'dal

    step
        >>|cRXP_WARN_You now have the 3 Trial quests. These quests all require to be completed while running the dungeons on HEROIC difficulty|r
        >>|cRXP_WARN_The dungeons you must complete are: Shattered Halls, Steamvaults, Arcatraz and the Shadow Labyrinth|r
        >>Complete Shattered Halls within 55 minutes after killing |cRXP_ENEMY_Grand Warlock Nethekurse|r. You must kill the |cRXP_ENEMY_Shattered Hand Executioner|r at the end of the dungeon within the time limit. Loot him for the |cRXP_LOOT_Unused Axe of the Executioner|r
        >>Kill |cRXP_ENEMY_Warlord Kalithresh|r in the Steamvaults. Loot him for |cRXP_LOOT_Kalithresh's Trident|r
        >>Kill |cRXP_ENEMY_Murmur|r in the Shadow Labyrinth. Loot him for |cRXP_LOOT_Murmur's Essence|r
        >>Complete the Arcatraz. Ensure |cRXP_FRIENDLY_Millhouse Manastorm|r stays alive after defeating the final boss, |cRXP_ENEMY_Harbinger Skyriss|r
        .complete 10884,1
        .complete 10885,1
        .complete 10885,2
        .complete 10886,1

    step
        .goto Shattrath City,53.991,44.743
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
        .turnin 10884
        .turnin 10885
        .turnin 10886
        .accept 10888
        .target A'dal

    step
        >>Kill |cRXP_ENEMY_Magtheridon|r
        .complete 10888,1

    step
        .goto Shattrath City,53.991,44.743
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
        .turnin 10888
        .target A'dal

    step
        +|cRXP_WARN_You have now completed the attunement for|r |cRXP_FRIENDLY_Tempest Keep|r

]])