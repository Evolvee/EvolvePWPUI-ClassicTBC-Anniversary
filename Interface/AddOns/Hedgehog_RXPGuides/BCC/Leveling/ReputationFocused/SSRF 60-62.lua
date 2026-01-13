RXPGuides.RegisterGuide([[
#classic
#tbc
#group Hedgehogs Burning Crusade Classic Series
#subgroup 3 - Reputation Focused Leveling
#name 2 - Levels 60-62
#next 3 - Levels 62-66

step
  >>Complete Hellfire Ramparts Once to unlock The Blood Furnace Followup Quests.
  .goto Hellfire Peninsula,45.7,52.0
  .collect 23891,1
  .accept 9587 >>Accept Dark Tidings

step
  .hs >> Hearth to Thrallmar

step
  .goto Hellfire Peninsula,55.0,35.0
  >>Talk to |cRXP_FRIENDLY_Nazgrel|r
  .turnin 9588 >>Turn in Dark Tidings
  .target Nazgrel

step
  .goto Hellfire Peninsula,54.8,36.0
  >>Talk to |cRXP_FRIENDLY_Caza'rez|r
  .accept 9590 >>Accept The Blood is Life
  .target Caza'rez

step
  >>Start the Thrallmar Reputation Grind by completing The Blood Furnace Dungeon 12 Times.
  .goto Hellfire Peninsula,45.7,52.0
  .reputation 947,honored >>|cRXP_WARN_Reach Honored Reputation with the Thrallmar|r

step
  .goto Hellfire Peninsula,54.8,36.0
  >>Talk to |cRXP_FRIENDLY_Caza'rez|r
  .turnin 9590 >>Turn in The Blood is Life
  .target Caza'rez

step
  .goto Hellfire Peninsula,27.8,60.0
  >>Goto Falcon Watch
  .fp Falcon Watch >> Get the Falcon Watch flight path
  .target Innalia

step
  .goto Hellfire Peninsula,26.2,62.0
  >>Talk to |cRXP_FRIENDLY_Aresella|r
  .collect 22012,1 >> |cRXP_BUY_Purchase |r|T133742:0|t[Master First Aid - Doctor in the House]
  .skill firstaid,<300,1
  .target Aresella

step
  .goto Zangarmarsh,84.7,55.0
  >>Goto Swamprat Post
  .fp Swamprat Post >> Get the Swamprat Post flight path
  .target Gur'zil

step
  .goto Zangarmarsh,78.0,66.0
  >>Talk to |cRXP_FRIENDLY_Juno Dufrain|r
  .collect 27532,1 >> |cRXP_BUY_Purchase |r|T133742:0|t[_Master Fishing - The Art of Angling]
  .skill fishing,<300,1
  .target Juno Dufrain

step
  .goto Terokkar Forest,33.5,22.9
  >>Goto Shattrath City
  .fp Shattrath City >> Get the Shattrath City flight path
  .target Nutral

step
  .goto Terokkar Forest,59.8,41.2
  >>Talk to |cRXP_FRIENDLY_Haggard War Veteran|r
  .accept 10210 >>Accept A'dal
  .target Haggard War Veteran

step
  .goto Shattrath City,54.0,44.6
  >>Talk to |cRXP_FRIENDLY_A'dal|r
  .turnin 10210 >>Turn A'dal
  .target A'dal

step
  .goto Shattrath City,54.0,44.2
  >>Talk to |cRXP_FRIENDLY_Khadgar|r
  .accept 10211 >>Accept City of Light
  .target Khadgar

step
  .goto Shattrath City,50.8,42.6,10
  >>You do not need to follow the escort, just ensure you are near the NPC when the event completes.

step
  .goto Shattrath City,54.0,44.2
  >>Talk to |cRXP_FRIENDLY_Khadgar|r
  .turnin 10211 >>Turn in City of Light
  .target Khadgar

step
  .goto Shattrath City,54.0,44.2
  >>Talk to |cRXP_FRIENDLY_Khadgar|r
  >>Accept either Allegiance to the Aldor or the Scryers based on your preference.
  .target Khadgar

step
  #aldor
  .goto Shattrath City,28.0,49.2
  >>Talk to |cRXP_FRIENDLY_Minalei|r
  .home >> Set your Hearthstone to Shattrath
  .target Minalei

step
  #scryer
  .goto Shattrath City,56.2,81.6
  >>Talk to |cRXP_FRIENDLY_Innkeeper Haelthol|r
  .home >> Set your Hearthstone to Shattrath
  .target Innkeeper Haelthol

step
  .goto Terokkar Forest,33.5,22.9
  .fly Swamprat Post >>Fly to Swamprat Post
  .target Nutral

step
  .goto Zangarmarsh,33.3,51.6
  >>Goto Zabra'Jin
  .fp Zabra'Jin >> Get the Zabra'Jin flight path
  .target Du'ga

step
  .goto Zangarmarsh,50.5,41.1
  >>Start the Cenarion Expedition Reputation Grind by completing The Slave Pens Dungeon until 62.
  .xp 62 >>Reach Level 62

step
    >>|cf00ff00fLevels 60-62 Complete|r
    +You should now be Level 62 and Honored with Thrallmar.
    +On to the next guide: |cRXP_PICK_3 - Levels 62-66|r
]])
