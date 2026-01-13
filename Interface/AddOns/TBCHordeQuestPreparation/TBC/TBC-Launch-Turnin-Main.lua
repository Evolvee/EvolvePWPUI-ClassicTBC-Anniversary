if RXPGuides == nil then
	return
end

RXPGuides.RegisterGuide([[
#classic
#tbc
#version 3
#group Consita Classic/TBC Launch Guide
#subgroup 4 - TBC Launch - Turnin
#name 2-Group Route Turnin
#displayname Group Route Turnin
#next 5 - TBC Dungeon Grind

--- Start in Burning Steppes

		step
			#completewith BurningLast
			.zone Burning Steppes >> Travel to |cFFfa9602Burning Steppes|r
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
			.isQuestComplete 4735
			
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
            #label BurningLast
			.goto Burning Steppes,65.9,21.9
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kibler|r
			.turnin -4729	
			.turnin -4862
			.target Kibler

	--- Go to Badlands

		step	
			#completewith next
			.goto Burning Steppes,65.6,24.2
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahgruk|r
			.fly Badlands >> Fly to |cFFfa9602Kargath|r
			.zoneskip Badlands
			.target Vahgruk

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
			.target Warlord Goretooth

		step
			.goto Badlands,5.8,47.6
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galamav the Marksman|r. He is up on the Tower.
			.turnin -4724
			.target Galamav the Marksman

		step
			.goto Badlands,25.8,45.0
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
			.turnin -4063
			.target Lotwil Veriatus

		step
			.goto Badlands,3.31,48.29
			>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thunderheart|r
			>>|cRXP_WARN_He may be patrolling around the mountain at Kargath. Find him or wait for him to return|r
			.turnin -3906 >> Accept Disharmony of Flame
			.target Thunderheart	

]])