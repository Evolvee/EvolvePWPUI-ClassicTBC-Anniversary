if RXPGuides == nil then
	return
end

RXPGuides.RegisterGuide([[
#tbc
#version 3
#group Consita TBC Toolkit
#subgroup 3 - Attunements
#name T5 - Serpentshrine Cavern

    step
        #completewith next
        .goto Zangarmarsh,50.37,40.90,20,0
        .goto Zangarmarsh,49.018,35.631
        .subzone 3717 >> |cRXP_WARN_Find a group for|r |cFFfa9602SHEROIC: Slave Pens in Zangarmarsh|r|cRXP_WARN_. Once you have found a group, zone into the Slave Pens|r

    step
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skar'this the Heretic|r 
        .accept 10901
        .target Skar'this the Heretic

    step
        >>|cRXP_WARN_Find raids for both Gruul the Dragonslayer and Karazhan|r
        >>Kill |cRXP_ENEMY_Gruul|r. Loot him for the |cRXP_LOOT_Earthen Signet|r
        >>Kill |cRXP_ENEMY_Nightbane|r. Loot him for the |cRXP_LOOT_Blazing Signet|r
        .complete 10901,1
        .complete 10901,2

    step
        .goto Zangarmarsh,50.37,40.90,20,0
        .goto Zangarmarsh,49.018,35.631
        >>|cRXP_WARN_Return to |cRXP_FRIENDLY_Skar'this the Heretic|r inside HEROIC: Slave Pens|r
        .turnin 10901 >> Turn in The Cudgel of Kar'desh
        .target Skar'this the Heretic

    step
        +|cRXP_WARN_You have now completed the attunement for|r |cRXP_FRIENDLY_Serpentshrine Cavern|r

]])