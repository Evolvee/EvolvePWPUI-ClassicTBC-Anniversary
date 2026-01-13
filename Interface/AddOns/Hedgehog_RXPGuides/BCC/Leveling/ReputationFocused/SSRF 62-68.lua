RXPGuides.RegisterGuide([[
#classic
#tbc
#group Hedgehogs Burning Crusade Classic Series
#subgroup 3 - Reputation Focused Leveling
#name 3 - Levels 62-68
#next 4 - Levels 68-70

step
  .goto Zangarmarsh,50.5,41.1
  >>Continue the Cenarion Expedition Reputation Grind by completing The Underbog Dungeon until at least 63 and Honored.
  .xp 63 >>Reach Level 63
  .reputation 942,honored >>|cRXP_WARN_Reach Honored Reputation with the Cenarion Expedition|r

step
  .hs >> Hearth to Shattrath City

step
  .goto Terokkar Forest,49.2,43.5
  >>Goto Stonebreaker Hold
  .fp Stonebreaker Hold >> Get the Stonebreaker Hold flight path

step
  .goto Terokkar Forest,40.0,60.0
  >>Start the Consortium Reputation Grind by completing Mana-Tombs until at least 66 and Honored.
  .xp 66 >>Reach Level 66
  .reputation 933,honored >>|cRXP_WARN_Reach Honored Reputation with the Consortium|r

step << !Druid
  >>Use this opportunity to train your Class Skills.
  >>You will need to use Ragefire Chasm to Double Hearth back to Shattrath City or find a Mage to Teleport.
  .hs >> Hearth to Shattrath City

step << Druid
  >>Goto Moonglade and train your Class Skills.
  .cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
  .zoneskip Moonglade

step << Druid
  >>Go back to Shattrath City.
  .hs >> Hearth to Shattrath City

step
  .goto Terokkar Forest,33.5,22.9
  .fly Stonebreaker Hold >>Fly to Stonebreaker Hold
  .target Nutral

step
  .goto Terokkar Forest,43.0,66.0
  >>Start the Lower City Reputation Grind by completing Sethekk Halls until at least 68 and Honored.
  .xp 68 >>Reach Level 68
  .reputation 1011,honored >>|cRXP_WARN_Reach Honored Reputation with the Lower City|r

step
    >>|cf00ff00fLevels 62-68 Complete|r
    +You should now be Level 68 and Honored with Cenarion Expedition, Consortium, and Lower City.
    +On to the next guide: |cRXP_PICK_4 - Levels 68-70|r
]])
