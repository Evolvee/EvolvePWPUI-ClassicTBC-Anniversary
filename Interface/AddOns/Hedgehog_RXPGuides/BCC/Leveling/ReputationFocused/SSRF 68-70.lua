RXPGuides.RegisterGuide([[
#classic
#tbc
#group Hedgehogs Burning Crusade Classic Series
#subgroup 3 - Reputation Focused Leveling
#name 4 - Levels 68-70

step
  .goto Terokkar Forest,49.2,43.5
  >>Goto Stonebreaker Hold
  .fly The Dark Portal >>Fly to The Dark Portal

step
  .goto Blasted Lands,52.2,9.0,10
  .goto Swamp of Sorrows,4.0,60.5,10
  .goto Deadwind Pass,47.0,75.6,10
  >>Talk to |cRXP_FRIENDLY_Archmage Alturus|r
  .accept 9824 >>Accept Arcane Disturbances
  .accept 9825 >>Accept Restless Activity
  .target Archmage Alturus

step
  >>Complete the Deadwind Pass Arcane Disturbance and Restless Activity Quests.
  .goto Deadwind Pass,48.6,78.8,10 >>Entrance to the Underground Well Reading
  .goto Deadwind Pass,53.2,90.1,10 >>Underground Well
  .use 24474 >>Take Underground Well Reading
  .goto Deadwind Pass,47.7,78.3,10 >>Entrance to the Underground Pond Reading
  .goto Deadwind Pass,42.8,78.5,10 >>Underground Pond
  .use 24475 >>Take Underground Pond Reading
  .collect 24480,10

step
  .goto Deadwind Pass,47.0,75.6
  >>Talk to |cRXP_FRIENDLY_Archmage Alturus|r
  .turnin 9824 >>Turn in Arcane Disturbances
  .turnin 9825 >>Turn in Restless Activity
  .accept 9826 >>Accept Contact from Dalaran
  .target Archmage Alturus

step
  .goto Swamp of Sorrows,45.0,54.6
  .fly Tarren Mill >>Fly to Tarren Mill

step
  .goto Alterac Mountains,15.6,54.6
  >>Talk to |cRXP_FRIENDLY_Archmage Cedric|r
  .turnin 9826 >>Turn in Contact from Dalaran
  .accept 9829 >>Accept Khadgar
  .target Archmage Cedric

step
  .hs >> Hearth to Shattrath City

step
  .goto Shattrath City,54.6,44.2
  >>Talk to |cRXP_FRIENDLY_Khadgar|r
  .turnin 9829 >>Turn in Khadgar
  .accept 9831 >>Accept Entry Into Karazhan
  .target Khadgar

step
  .goto Shattrath City,52.8,52.7
  >>Take the Tunderbluff Portal from Shattrath City

step
  .goto Thunderbluff,46.7,50.0
  .fly Gadgetzan >> Get the Gadgetzan flight path
  .target Tal

step
  .goto Tanaris,66.0,49.6
  >>Talk to |cRXP_FRIENDLY_Steward of Time|r
  .accept 10279 >>Accept To The Master's Lair
  .target Steward of Time


step
  .goto Tanaris,58.4,54.2
  >>Talk to |cRXP_FRIENDLY_Andormu|r
  .turnin 10279 >>Turn in To The Master's Lair
  .accept 10277 >>Accept The Caverns of Time
  .target Andormu

step
  .goto Tanaris,58.4,54.2
  >>Talk to |cRXP_FRIENDLY_Andormu|r
  .turnin 10277 >>Turn in The Caverns of Time
  .accept 10282 >>Accept Old Hillsbrad
  .target Andormu

step
  .zone Old Hillsbrad Foothills >>Enter Old Hillsbrad Foothills Dungeon

step
  .goto Tanaris,58.4,54.2
  >>Talk to |cRXP_FRIENDLY_Andormu|r
  .turnin 10285 >>Turn in Return to Andormu
  .accept 10296 >>Accept The Black Morass
  .target Andormu

step
    >>|cf00ff00fLevels 68-70 Complete|r
    +You should now be Level 70 and Honored with ???.
    +On to the next guide: |cRXP_PICK_4 - Levels 68-70|r
]])
