if RXPGuides == nil then
	return
end

RXPGuides.RegisterGuide([[
#tbc
#version 3
#group Consita TBC Toolkit
#subgroup 2 - Keys
#name Nightbane

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
		+Congratulations, you have now unlocked the |cRXP_LOOT_Blackened Urn|r!

]])