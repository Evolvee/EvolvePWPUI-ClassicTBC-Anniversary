RXPGuides.RegisterGuide([[
#classic
#tbc
#group Hedgehogs Burning Crusade Classic Series
#subgroup 3 - Reputation Focused Leveling
#name 1 - Through the Dark Portal
#next 2 - Levels 60-62

step
    >>|cf00ff00fReputation Focused Leveling Guide|r
    +Use this Guide to level while reaching the required Reputation Levels for all End Game Content.
    +Complete the Dungeon Preparation Guide before proceeding.

step
  >>Take the Zeppelin to the Grom'gol Base Camp
  .goto Durotar,50.6,12.3,10
  .goto Stranglethorn Vale,31.4,30.4,10

step
  >>Talk to |cRXP_FRIENDLY_Thysta|r
  .goto Stranglethorn Vale,32.6,29.2
  .fly Stonard >>Fly to Stonard
  .target Thysta

step
  >>Run to the Blasted Lands
	.goto Blasted Lands,52.2,9.0,10

step
  .goto Blasted Lands,58.1,56.1
  >>Talk to |cRXP_FRIENDLY_Warlord Dar'toon|r
  .accept 9407 >>Accept Through the Dark Portal
  .target Warlord Dar'toon

step
	.goto Blasted Lands,58.7,59.4,10
  >>Go Through the Dark Portal

step
  .goto Hellfire Peninsula,87.3,49.8
  >>Talk to |cRXP_FRIENDLY_Lieutenant General Orion|r
  .turnin 9407 >>Turn in Through the Dark Portal
  .accept 10120 >>Accept Arrival in Outland
  .target Lieutenant General Orion

step
  .goto Hellfire Peninsula,87.3,48.1
  >>Talk to |cRXP_FRIENDLY_Vlagga Freyfeather|r
  .turnin 10120 >>Turn in Arrival in Outland
  .accept 10289 >>Accept Journey to Thrallmar
  .target Vlagga Freyfeather

step
  .goto Hellfire Peninsula,87.3,48.1
  >>Talk to |cRXP_FRIENDLY_Vlagga Freyfeather|r
  .fly Thrallmar >>Fly to Thrallmar
  .target Vlagga Freyfeather

step
  .goto Hellfire Peninsula,55.9,36.6
  >>Talk to |cRXP_FRIENDLY_General Krakork|r
  .turnin 10289 >>Turn in Journey to Thrallmar
  .accept 10291 >>Accept Report to Nazgrel
  .target General Krakork

step
  .goto Hellfire Peninsula,55.4,37.6
  >>Talk to |cRXP_FRIENDLY_Krugosh|r
  .train 29354 >>Train |T136248:0|t[Master Mining]
  .skill mining,<275,1
  .target Krugosh

step
  .goto Hellfire Peninsula,55,36
  >>Talk to |cRXP_FRIENDLY_Nazgrel|r
  .turnin 10291 >>Turn in Report to Nazgrel
  .accept 10121 >>Accept Eradicate the Burning Legion
  .target Nazgrel

step
  .goto Hellfire Peninsula,56.7,37.5
  >>Talk to |cRXP_FRIENDLY_Floyd Pinkus|r
  .home >> Set your Hearthstone to Thrallmar
  .target Floyd Pinkus

step
  .goto Hellfire Peninsula,56.7,37.3
  >>Talk to |cRXP_FRIENDLY_Baxter|r
  .collect 27736,1 >> |cRXP_BUY_Purchase |r|T133742:0|t[Master Cookbook]
  .skill cooking,<300,1
  .target Baxter

step
  .goto Hellfire Peninsula,56.6,37.2
  >>Talk to |cRXP_FRIENDLY_Dalinna|r
  .train 26790 >>Train |T136249:0|t[Master Tailoring]
  .skill tailoring,<275,1
  .target Dalinna

step
  .goto Hellfire Peninsula,52.2,36.0
  >>Talk to |cRXP_FRIENDLY_Kalaen|r
  .train 28897 >>Train |T134072:0|t[Master Jewelcrafting]
  .skill jewelcrafting,<275,1
  .target Kalaen

step
  .goto Hellfire Peninsula,55.4,37.6
  >>Talk to |cRXP_FRIENDLY_Moorutu|r
  .train 32678 >>Train |T134366:0|t[Master Skinning]
  .skill skinning,<275,1
  .target Moorutu

step
  .goto Hellfire Peninsula,55.4,37.6
  >>Talk to |cRXP_FRIENDLY_Barim Spilthoof|r
  .train 32549 >>Train |T134366:0|t[Master Leatherworking]
  .skill leatherworking,<275,1
  .target Barim Spilthoof

step
  .goto Hellfire Peninsula,55.8,38.6
  >>Talk to |cRXP_FRIENDLY_Zebig|r
  .train 30350 >>Train |T136243:0|t[Master Engineering]
  .skill engineering,<275,1
  .target Zebig

step
  .goto Hellfire Peninsula,55.8,38.6
  >>Talk to |cRXP_FRIENDLY_Rohok|r
  .train 29844 >>Train |T136241:0|t[Master Blacksmithing]
  .skill blacksmithing,<275,1
  .target Rohok

step
  .goto Hellfire Peninsula,52.2,36.4
  >>Talk to |cRXP_FRIENDLY_Apothecary Antonivich|r
  .train 28596 >>Train |T136240:0|t[Master Alchemy]
  .skill alchemy,<275,1
  .target Apothecary Antonivich

step
  .goto Hellfire Peninsula,52.2,36.2
  >>Talk to |cRXP_FRIENDLY_Ruak Stronghorn|r
  .train 28695 >>Train |T136065:0|t[Master Herbalism]
  .skill herbalism,<275,1
  .target Ruak Stronghorn

step
  .goto Hellfire Peninsula,52.2,36.0
  >>Talk to |cRXP_FRIENDLY_Felannia|r
  .train 28029 >>Train |T136244:0|t[Master Enchanting]
  .skill enchanting,<275,1
  .target Felannia

step
    >>|cf00ff00fThrough the Dark Portal Complete|r
    +Preparations for a smooth leveling experience should now be complete.
    +On to the next guide: |cRXP_PICK_2 - Levels 60-62|r
]])
