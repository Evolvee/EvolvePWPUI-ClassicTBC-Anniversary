RXPGuides.RegisterGuide([[
#tbc
#version 3
#group Consita TBC Toolkit
#subgroup 2 - Keys
#name Arcatraz Key

	 step
        #completewith next
        .goto Shattrath City,45.12,63.89,5,0
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
        .fly Area 52 >>Fly to |cFFfa9602Area 52|r
        .target Nutral
        .zoneskip Netherstorm

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
		+Congratulations, you have now unlocked the |cRXP_LOOT_Arcatraz Key|r!
		
]])	