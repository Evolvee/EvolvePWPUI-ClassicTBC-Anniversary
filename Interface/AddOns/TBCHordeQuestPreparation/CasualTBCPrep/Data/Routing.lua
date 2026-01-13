CasualTBCPrep.Routing = CasualTBCPrep.Routing or {}

local cachedRouteQuestDic = {}

CasualTBCPrep.Routing.RouteCodeMain = "Main"
CasualTBCPrep.Routing.RouteCodeStrat = "Strat"
CasualTBCPrep.Routing.RouteCodeSolo = "Solo"
CasualTBCPrep.Routing.DefaultRouteCode = CasualTBCPrep.Routing.RouteCodeMain
CasualTBCPrep.Routing.CurrentRouteCode = CasualTBCPrep.Routing.RouteCodeMain

CasualTBCPrep.Routing.TravelTypes = {
    [0] = { text="Start", internal=true, },

    [1] = { text="Walk", internal=true, icon="Walk", iconW=19, iconH=32, color="FFE5C462" },
    [2] = { text="Run", internal=true, icon="Run", iconW=19, iconH=32, color="FFE5C462" },
    [11] = { text="Follow", internal=true, icon="Run", iconW=19, iconH=32, color="FFE5C462" },

    [3] = { text="Fly", icon="Fly", iconW=24, iconH=24, color="FF858483" },
    [4] = { text="Summon", icon="Summon", iconW=24, iconH=24, color="FF8E4EA1" },
    [5] = { text="Hearthstone", icon="Hearthstone", iconW=24, iconH=24, color="FFFFFFFF" },

    [6] = { text="Portal", icon="portal_og", iconW=24, iconH=24, color="FFEA4D0F" },
    [7] = { text="Portal", icon="portal_tb", iconW=24, iconH=24, color="FF6BC9F4" },
    [8] = { text="Portal", icon="portal_uc", iconW=24, iconH=24, color="FF63D72C" },
    [9] = { text="Portal", icon="portal_sc", iconW=24, iconH=24, color="FFB82D22" },
    [10] = { text="Portal", icon="portal_stonard", iconW=24, iconH=24, color="FFB2E223" },

    [12] = { text="Proceed", icon="felarma", iconW=24, iconH=24, color="FFE5C462" },
    [13] = { text="Enter", internal=true, icon="Run", iconW=24, iconH=24, color="FFE5C462" },
    [14] = { text="Leave Group", icon="Hearthstone", iconW=24, iconH=24, color="FFFFFFFF" },
    [15] = { text="Take the Zeppelin", icon="zepp", iconW=24, iconH=24, color="FFFFFFFF" },
    [16] = { text="Teleport", icon="orbtranslocate", iconW=24, iconH=24, color="FFFFFFFF" },
}

local targetTexts = {
    ["BurningSteppes"] = { text="Flame Crest, Burning Steppes", travel="to Flame Crest, Burning Steppes" },
    ["BurningSteppes2"] = { text="Slither Rock, Burning Steppes", travel="east to Slither Rock" },
    ["Badlands"] = { text="Kargath", travel="to Kargath, Badlands" },
    ["TarrenMill"] = { text="Tarren Mill", travel="to Tarren Mill, Hillsbrad Foothills" },
    ["wsEverlook"] = { text="Everlook", travel="to Everlook, Winterspring" },
    ["wsDonowa"] = { text="Donowa Snowden", travel="west to Donowa Snowden, south of the Timbermaw Cave" },
    ["Timbermaw"] = { text="Timbermaw Hold", travel="north to the Timbermaw Hold" },
    ["Moonglade"] = { text="Moonglade", travel="through the cave, and out north" },
    ["felwoodTown"] = { text="Bloodvenom Falls", travel="to Bloodvenom Falls, Felwood" },
    ["felwoodEmerald"] = { text="Emerald Sanctuary", travel="south (or summon) to the Emerald Sanctuary" },
    ["AzsharaFP"] = { text="Valormok", travel="to Valormok, Azshara" },
    ["SilithusNE"] = { text="Valor's Rest", travel="to Valor's Rest, Silithus" },
    ["SilithusCave"] = { text="Hermit Cave", travel="southeast to the hermit cave & do the Tower quest on the way" },
    ["SilithusSouth"] = { text="Bronzebeard Encampment", travel="southwest to the dwarf camp" },
    ["SilithusHold"] = { text="Cenarion Hold", travel="west to Cenarion Hold" },
    ["SilithusHold2"] = { text="Cenarion Hold", travel="or deathskip to Cenarion Hold" },
    ["Ungoro"] = { text="Marshal's Refuge, Un'Goro Crater", travel="east to Marshal's Refuge in Un'Goro" },
    ["UngoroPylonN"] = { text="The Northern Pylon", travel="east to the Northern Pylon" },
    ["UngoroKrakle"] = { text="Hot Springs", travel="southwest to Krakle at the Hot Springs" },
    ["UngoroPylonW"] = { text="The Western Pylon", travel="southwest to the Western Pylon" },
    ["UngoroFirePlumeRidge"] = { text="Fire Plume Ridge", travel="east to Fire Plume Ridge" },
    ["UngoroKrakle2"] = { text="Hot Springs", travel="back to Krakle at the Hot Springs" },
    ["UngoroRefuge"] = { text="Marshal's Refuge", travel="northeast to Marshal's Refuge" },
    ["TanarisTown"] = { text="Gadgetzan", travel="to Gadgetzan, Tanaris" },
    ["TanarisPort"] = { text="Steamwheedle Port", travel="east to Steamwheedle Port" },
    ["CavernsOfTime"] = { text="Caverns of Time", travel="south to the Caverns of Time" },
    ["Feralas"] = { text="Feralas", travel="to Camp Mojache, Feralas" },
    ["ThunderBluff"] = { text="Thunder Bluff", travel="to Thunder Bluff, Mulgore" },
    ["Orgrimmar"] = { text="Orgrimmar", travel="to Orgrimmar, Durotar" },
    ["OrgrimmarDrag"] = { text="The Drag, Orgrimmar", travel="to The Drag, Orgrimmar" },
    ["OrgrimmarBank"] = { text="Orgrimmar Bank", travel="to the Orgrimmar bank" },
    ["Undercity"] = { text="The Undercity", travel="to The Undercity, Tirisfal Glades" },
    ["SilvermoonCity"] = { text="Silvermoon City", travel="to Silvermoon City, Eversong Woods" },
    ["BayOfStorms"] = { text="Bay of Storms", travel="to Bay of Storms, Azshara" },
    ["EPLTownMain"] = { text="The Plaguelands", travel="to Light's Hope Chapel, EPL" },
    ["EPLTown"] = { text="Light's Hope Chapel, EPL", travel="" },
    ["EPLDarrowshire"] = { text="Darrowshire", travel="southwest to Darrowshire" },
    ["EPLNathanos"] = { text="Nathanos Blightcaller", travel="northwest to Nathanos" },
    ["EPLTirion"] = { text="Tirion Fordring", travel="the river north to Tirion" },
    ["WPLCauldron"] = { text="Gahrron's Withering, WPL", travel="west across the river then south" },
    ["WPLWrithingHaunt"] = { text="The Writhing Haunt", travel="southwest to" },
    ["WPLCaerDarrow"] = { text="Caer Darrow", travel="and swim south to Caer Darrow" },
    ["Terrordale"] = { text="Terrordale", travel="" },
    ["Scholomance"] = { text="Scholomance - Viewing Room", travel="Scholomance" },
    ["StratholmeGates"] = { text="Stratholme Main Entrance", travel="to the Stratholme Main Entrance & speak to Anthion" },
    ["StratholmeLiving"] = { text="Stratholme Living", travel="Stratholme" },
    ["StratholmeBackdoor"] = { text="Stratholme back entrance", travel="to the Stratholme back entrance" },
    ["StratholmeDead"] = { text="Stratholme Undead", travel="Stratholme" },
    ["WPLSorrowAndorhal"] = { text="Sorrow Hill", travel="southwest to Sorrow Hill" },
    ["WPLDalsonsTears"] = { text="Dalson's Tears", travel="north to Dalson's Tears" },
    ["WPLFelstoneField"] = { text="Felstone Field", travel="west to Felstone Field" },
    ["WPLBulwark"] = { text="The Bulwark, Tirisfal Glades", travel="west to Tirisfal Glades" },
    ["zgSTV"] = { text="Stranglethorn Vale", travel="to Yojamba Isle, the ZG isle in STV" },
    ["Stonard"] = { text="Stonard", travel="to Stonard, Swamp of Sorrows" },
    ["oldhero"] = { text="The Fallen Hero", travel="southwest towards The Blasted Lands" },
    ["BlastedLands"] = { text="Blasted Lands", travel="" },
    ["TheDarkPortal"] = { text="The Dark Portal", travel="towards The Dark Portal" },
    ["ExtraFeature"] = { text="Extra features", travel="to the extra featrures" },
}

CasualTBCPrep.Routing.Routes = {
    [CasualTBCPrep.Routing.RouteCodeMain] =
    {
        key=CasualTBCPrep.Routing.RouteCodeMain,
        name="Main",
        extraExperience=0,
        selectionData = {
            header="Main Route",
            warning="Expects 5 summons and access to mage portals in 2 zones & all cities",
            info1="This route was made for a 5man group that wants a headstart before entering TBC",
            info2="3 Summons can be skipped for less or slower exp",
            info3="",
            possibleLevelText="Possible Level: 62 + 80%",
            estimatedTimeText="Estimated Time:   73 minutes"
        },
        preparation=
        {
            "Set Hearthstone to Light's Hope Chapel, EPL"
        },
        sectionOrder = {
            "Badlands","BurningSteppes","BurningSteppes2","SilithusNE","SilithusHold","SilithusCave","SilithusSouth","SilithusHold2","SilithusNE2","Ungoro","UngoroPylonN","UngoroKrakle",
            "UngoroPylonW","UngoroFirePlumeRidge","UngoroKrakle2","UngoroRefuge","TanarisTown","TanarisPort","CavernsOfTime","wsEverlook","wsDonowa","Timbermaw",
            "Moonglade","felwoodTown","felwoodEmerald","Orgrimmar","OrgrimmarDrag","OrgrimmarBank","SilvermoonCity","BayOfStorms","EPLTown","EPLDarrowshire","EPLNathanos",
            "EPLTirion","EPLEgan","WPLCauldron","WPLWrithingHaunt","WPLSorrowAndorhal","WPLDalsonsTears","WPLFelstoneField","WPLBulwark","zgSTV","AV","Undercity","ThunderBluff","Stonard",
            "oldhero","BlastedLands","TheDarkPortal"
        },
        sections=
        {
            ["Badlands"] = { key="Badlands", estTime=30, travelType=0, quests={ }, pickups={} },
            ["BurningSteppes"] = { key="BurningSteppes", estTime=70, travelType=3, quests={ }, pickups={} },
            ["BurningSteppes2"] = { key="BurningSteppes2", estTime=75, travelType=2, quests={ }, pickups={} },

            ["SilithusNE"] = { key="SilithusNE", estTime=60, travelType=4, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["SilithusHold"] = { key="SilithusHold", estTime=110, travelType=2, quests={ }, pickups={} },
            ["SilithusCave"] = { key="SilithusCave", estTime=76, travelType=2, quests={ }, pickups={} },
            ["SilithusSouth"] = { key="SilithusSouth", estTime=75, travelType=2, quests={ }, pickups={} },
            ["SilithusHold2"] = { key="SilithusHold2", estTime=215, travelType=2, quests={ }, pickups={} },
            ["SilithusNE2"] = { key="SilithusNE2", estTime=85, travelType=2, travelText="northeast towards Un'Goro", textKey="SilithusNE", quests={ }, pickups={} },
            ["Ungoro"] = { key="Ungoro", estTime=177, travelType=2, quests={ }, pickups={} },
            ["UngoroPylonN"] = { key="UngoroPylonN", estTime=45, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["UngoroKrakle"] = { key="UngoroKrakle", estTime=94, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["UngoroPylonW"] = { key="UngoroPylonW", estTime=26, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["UngoroFirePlumeRidge"] = { key="UngoroFirePlumeRidge", estTime=115, travelType=2, quests={ }, pickups={} },
            ["UngoroKrakle2"] = { key="UngoroKrakle2", estTime=59, travelType=2, quests={ }, pickups={} },
            ["UngoroRefuge"] = { key="UngoroRefuge", estTime=119, travelType=2, quests={ }, pickups={} },
            ["TanarisTown"] = { key="TanarisTown", estTime=120, travelType=3, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["TanarisPort"] = { key="TanarisPort", estTime=75, travelType=2, quests={ }, pickups={} },
            ["CavernsOfTime"] = { key="CavernsOfTime", estTime=111, travelType=2, quests={ }, pickups={} },

            ["wsEverlook"] = { key="wsEverlook", estTime=75, travelType=4, quests={  } },
            ["wsDonowa"] = { key="wsDonowa", estTime=151, travelType=2, quests={  } },

            ["Timbermaw"] = { key="Timbermaw", estTime=112, travelType=2, quests={ }, pickups={} },

            ["Moonglade"] = { key="Moonglade", estTime=205, travelType=1, quests={ }, pickups={} },
            ["felwoodTown"] = { key="felwoodTown", estTime=165, travelType=3, quests={ }, pickups={} },
            ["felwoodEmerald"] = { key="felwoodEmerald", estTime=135, travelType=2, quests={ }, pickups={} },

            ["Orgrimmar"] = { key="Orgrimmar", estTime=167, travelType=6, quests={ }, pickups={} },
            ["OrgrimmarDrag"] = { key="OrgrimmarDrag", estTime=0, travelType=2, quests={ }, pickups={} },
            ["OrgrimmarBank"] = { key="OrgrimmarBank", estTime=0, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["SilvermoonCity"] = { key="SilvermoonCity", estTime=115, travelType=9, quests={ }, pickups={} },
            ["BayOfStorms"] = { key="BayOfStorms", estTime=60, travelType=4, quests={ }, pickups={} },

            ["EPLTown"] = { key="EPLTown", estTime=191, travelType=5, textKey="EPLTownMain", quests={ }, pickups={} },
            ["EPLDarrowshire"] = { key="EPLDarrowshire", estTime=67, travelType=2, quests={ }, pickups={} },
            ["EPLNathanos"] = { key="EPLNathanos", estTime=43, travelType=2, quests={ }, pickups={} },
            ["EPLTirion"] = { key="EPLTirion", estTime=83, travelType=11, quests={ }, pickups={}, canHaveZeroQuests=true  },
            ["EPLEgan"] = { key="EPLEgan", estTime=155, travelType=2, travelText="through the cave to Egan", textKey="Terrordale", quests={ }, pickups={} },
            ["WPLCauldron"] = { key="WPLCauldron", estTime=173, travelType=2, travelText="back through the cave, then west to WPL", quests={ }, pickups={}, canHaveZeroQuests=true },
            ["WPLWrithingHaunt"] = { key="WPLWrithingHaunt", estTime=37, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["WPLSorrowAndorhal"] = { key="WPLSorrowAndorhal", estTime=40, travelType=2, travelText="west to Sorrow Hill", quests={ }, pickups={} },
            ["WPLDalsonsTears"] = { key="WPLDalsonsTears", estTime=59, travelType=2, quests={ }, pickups={} },
            ["WPLFelstoneField"] = { key="WPLFelstoneField", estTime=37, travelType=2, quests={ }, pickups={} },
            ["WPLBulwark"] = { key="WPLBulwark", estTime=39, travelType=2, quests={ }, pickups={} },

            ["zgSTV"] = { key="zgSTV", estTime=60, travelType=4, quests={ }, pickups={} },
            ["AV"] = { key="AV", estTime=125, travelType=4, textKey="TarrenMill", quests={ }, pickups={} },
            ["Undercity"] = { key="Undercity", estTime=70, travelType=8, quests={ }, pickups={} },

            ["ThunderBluff"] = { key="ThunderBluff", estTime=130, travelType=7, quests={ }, pickups={} },
            ["Stonard"] = { key="Stonard", estTime=20, travelType=10, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["oldhero"] = { key="oldhero", estTime=25, travelType=2, quests={ }, pickups={} },
            ["BlastedLands"] = { key="BlastedLands", estTime=52, travelType=2, quests={ }, pickups={} },
            ["TheDarkPortal"] = { key="TheDarkPortal", estTime=45, travelType=12, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["ExtraFeature"] = { key="ExtraFeature", estTime=0, travelType=4, quests={}, pickups={}, canHaveZeroQuests=true }
        },
        mailboxCount = 7,
        mailboxData = {
            [1] = { -- Bags
                from = "Badlands",
                to = "SilithusNE"
            },
            [2] = {
                from = "SilithusHold",
                to = "UngoroRefuge"
            },
            [3] = {
                from = "TanarisTown",
                to = "Orgrimmar"
            },
            [4] = {
                from = "OrgrimmarDrag",
                to = "BayOfStorms"
            },
            [5] = {
                from = "EPLTown",
                to = "zgSTV"
            },
            [6] = {
                from = "AV",
                to = "ThunderBluff"
            },
            [7] = {
                from = "Stonard",
                to = "TheDarkPortal"
            },
        },
        bankSections = { "TanarisTown", "OrgrimmarBank" }
    },
    [CasualTBCPrep.Routing.RouteCodeStrat] =
    {
        key=CasualTBCPrep.Routing.RouteCodeStrat,
        name="Strat",
        extraExperience=70500, -- 63000strat + 7500 scholo
        selectionData = {
            header="Stratholme Route",
            warning="Expects 5 summons and access to mage portals in 2 zones & all cities",
            info1="The Main route, but with 1 Living & 1 Undead Stratholme run",
            info2="This opens up more quests, turnins, mob exp and continues the 0.5 questline",
            info3="Each Strat run is assumed to take 20min, but you can definitely go faster",
            possibleLevelText="Possible Level: 63 + 25%",
            estimatedTimeText="Estimated Time:  133 minutes"
        },
        preparation=
        {
            "Set Hearthstone to Light's Hope Chapel, EPL",
            "5 Summons for full route",
            "A way to open strat backdoor (Key, Rogue, BS, Engi, character already inside)",
            "A way to open scholo door (Rogue, BS, Engi, character already inside)",
        },
        sectionOrder = {
            "Badlands","BurningSteppes","BurningSteppes2","SilithusNE","SilithusHold","SilithusCave","SilithusSouth","SilithusHold2","SilithusNE2","Ungoro","UngoroPylonN","UngoroKrakle",
            "UngoroPylonW","UngoroFirePlumeRidge","UngoroKrakle2","UngoroRefuge","TanarisTown","TanarisPort","CavernsOfTime","wsEverlook","wsDonowa","Timbermaw",
            "Moonglade","felwoodTown","felwoodEmerald","Orgrimmar","OrgrimmarDrag","OrgrimmarBank","SilvermoonCity","BayOfStorms","EPLTown","EPLDarrowshire","EPLNathanos",
            "EPLTirion","WPLCauldron", "WPLCaerDarrow","Scholomance","EPLTown2","EPLEgan","StratholmeGates1","Stratholme1","EPLTown3",
            "StratholmeBackdoor","Stratholme2","EPLTown4","StratholmeGates2","EPLEgan2", "EPLTirion2", "EPLNathanos2","WPLWrithingHaunt","WPLSorrowAndorhal",
            "WPLDalsonsTears","WPLFelstoneField","WPLBulwark","zgSTV","AV","Undercity","ThunderBluff","Stonard","oldhero","BlastedLands","TheDarkPortal"
        },
        sections=
        {
            ["Badlands"] = { key="Badlands", estTime=30, travelType=0, quests={ }, pickups={} },
            ["BurningSteppes"] = { key="BurningSteppes", estTime=70, travelType=3, quests={ }, pickups={} },
            ["BurningSteppes2"] = { key="BurningSteppes2", estTime=75, travelType=2, quests={ }, pickups={} },

            ["SilithusNE"] = { key="SilithusNE", estTime=60, travelType=4, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["SilithusHold"] = { key="SilithusHold", estTime=110, travelType=2, quests={ }, pickups={} },
            ["SilithusCave"] = { key="SilithusCave", estTime=76, travelType=2, quests={ }, pickups={} },
            ["SilithusSouth"] = { key="SilithusSouth", estTime=75, travelType=2, quests={ }, pickups={} },
            ["SilithusHold2"] = { key="SilithusHold2", estTime=215, travelType=2, quests={ }, pickups={} },
            ["SilithusNE2"] = { key="SilithusNE2", estTime=85, travelType=2, travelText="northeast towards Un'Goro", textKey="SilithusNE", quests={ }, pickups={} },
            ["Ungoro"] = { key="Ungoro", estTime=177, travelType=2, quests={ }, pickups={} },
            ["UngoroPylonN"] = { key="UngoroPylonN", estTime=45, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["UngoroKrakle"] = { key="UngoroKrakle", estTime=94, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["UngoroPylonW"] = { key="UngoroPylonW", estTime=26, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["UngoroFirePlumeRidge"] = { key="UngoroFirePlumeRidge", estTime=115, travelType=2, quests={ }, pickups={} },
            ["UngoroKrakle2"] = { key="UngoroKrakle2", estTime=59, travelType=2, quests={ }, pickups={} },
            ["UngoroRefuge"] = { key="UngoroRefuge", estTime=119, travelType=2, quests={ }, pickups={} },
            ["TanarisTown"] = { key="TanarisTown", estTime=120, travelType=3, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["TanarisPort"] = { key="TanarisPort", estTime=75, travelType=2, quests={ }, pickups={} },
            ["CavernsOfTime"] = { key="CavernsOfTime", estTime=111, travelType=2, quests={ }, pickups={} },
            ["wsEverlook"] = { key="wsEverlook", estTime=75, travelType=4, quests={  } },
            ["wsDonowa"] = { key="wsDonowa", estTime=151, travelType=2, quests={  } },
            ["Timbermaw"] = { key="Timbermaw", estTime=112, travelType=2, quests={ }, pickups={} },
            ["Moonglade"] = { key="Moonglade", estTime=205, travelType=1, quests={ }, pickups={} },
            ["felwoodTown"] = { key="felwoodTown", estTime=165, travelType=3, quests={ }, pickups={} },
            ["felwoodEmerald"] = { key="felwoodEmerald", estTime=135, travelType=2, quests={ }, pickups={} },
            ["Orgrimmar"] = { key="Orgrimmar", estTime=167, travelType=6, quests={ }, pickups={} },
            ["OrgrimmarDrag"] = { key="OrgrimmarDrag", estTime=0, travelType=2, quests={ }, pickups={} },
            ["OrgrimmarBank"] = { key="OrgrimmarBank", estTime=0, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },

            ["SilvermoonCity"] = { key="SilvermoonCity", estTime=115, travelType=9, quests={ }, pickups={} },
            ["BayOfStorms"] = { key="BayOfStorms", estTime=60, travelType=4, quests={ }, pickups={} },
            ["EPLTown"] = { key="EPLTown", estTime=85, travelType=5, textKey="EPLTownMain", quests={ }, pickups={} },
            ["EPLDarrowshire"] = { key="EPLDarrowshire", estTime=135, travelType=2, quests={ }, pickups={} },
            ["EPLNathanos"] = { key="EPLNathanos", estTime=43, travelType=2, quests={ }, pickups={} },
            ["EPLTirion"] = { key="EPLTirion", estTime=83, travelType=11, quests={ }, pickups={}, canHaveZeroQuests=true },

            ["WPLCauldron"] = { key="WPLCauldron", estTime=73, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["WPLCaerDarrow"] = { key="WPLCaerDarrow", estTime=74, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["Scholomance"] = { key="Scholomance", estTime=200, travelType=13, isDungeon=true, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["EPLTown2"] = { key="EPLTown2", estTime=90, travelType=14, travelText="to hearthstone back to EPL", textKey="EPLTown", quests={ }, pickups={}, canHaveZeroQuests=true },
            ["EPLEgan"] = { key="EPLEgan", estTime=191, travelType=2, travelText="northwest to Egan in Terrordale", textKey="Terrordale", quests={ }, pickups={} },
            ["StratholmeGates1"] = { key="StratholmeGates1", estTime=67, travelType=2, textKey="StratholmeGates", quests={ }, pickups={} },
            ["Stratholme1"] = { key="Stratholme1", estTime=1200, travelType=13, textKey="StratholmeLiving", isDungeon=true, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["EPLTown3"] = { key="EPLTown3", estTime=90, travelType=14, travelText="to hearthstone to town", textKey="EPLTown", quests={ }, pickups={} },
            ["StratholmeBackdoor"] = { key="StratholmeBackdoor", estTime=125, travelType=2, quests={ }, pickups={} },
            ["Stratholme2"] = { key="Stratholme2", estTime=1200, travelType=13, textKey="StratholmeDead", isDungeon=true, quests={ }, pickups={} },
            ["EPLTown4"] = { key="EPLTown4", estTime=90, travelType=14, travelText="to hearthstone to town", textKey="EPLTown", quests={ }, pickups={} },
            ["StratholmeGates2"] = { key="StratholmeGates2", estTime=167, travelType=2, textKey="StratholmeGates", quests={ }, pickups={} },
            ["EPLEgan2"] = { key="EPLEgan2", estTime=73, travelType=2, travelText="to Egan in Terrordale", textKey="Terrordale", quests={ }, pickups={} },
            ["EPLTirion2"] = { key="EPLTirion2", estTime=150, travelType=1, travelText="through the cave to Tirion", textKey="EPLTirion", quests={ }, pickups={} },
            ["EPLNathanos2"] = { key="EPLNathanos2", estTime=83, travelType=2, travelText="southeast to Nathanos", textKey="EPLNathanos", quests={ }, pickups={} },
            ["WPLWrithingHaunt"] = { key="WPLWrithingHaunt", estTime=104, travelType=2, travelText="west to The Writhing Haunt in WPL", quests={ }, pickups={}, canHaveZeroQuests=true },
            ["WPLSorrowAndorhal"] = { key="WPLSorrowAndorhal", estTime=37, travelType=2, travelText="west to Sorrow Hill in WPL", quests={ }, pickups={} },

            ["WPLDalsonsTears"] = { key="WPLDalsonsTears", estTime=60, travelType=2, quests={ }, pickups={} },
            ["WPLFelstoneField"] = { key="WPLFelstoneField", estTime=37, travelType=2, quests={ }, pickups={} },
            ["WPLBulwark"] = { key="WPLBulwark", estTime=39, travelType=2, quests={ }, pickups={} },

            ["zgSTV"] = { key="zgSTV", estTime=60, travelType=4, quests={ }, pickups={} },
            ["AV"] = { key="AV", estTime=125, travelType=4, textKey="TarrenMill", quests={ }, pickups={} },
            ["Undercity"] = { key="Undercity", estTime=70, travelType=8, quests={ }, pickups={} },
            ["ThunderBluff"] = { key="ThunderBluff", estTime=130, travelType=7, quests={ }, pickups={} },
            ["Stonard"] = { key="Stonard", estTime=20, travelType=10, quests={ }, pickups={}, canHaveZeroQuests=true },

            ["oldhero"] = { key="oldhero", estTime=25, travelType=2, quests={ }, pickups={} },
            ["BlastedLands"] = { key="BlastedLands", estTime=52, travelType=2, quests={ }, pickups={} },
            ["TheDarkPortal"] = { key="TheDarkPortal", estTime=45, travelType=12, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["ExtraFeature"] = { key="ExtraFeature", estTime=0, travelType=4, quests={}, pickups={}, canHaveZeroQuests=true }
        },
        mailboxCount = 7,
        mailboxData = {
            [1] = { -- Bags
                from = "Badlands",
                to = "SilithusNE"
            },
            [2] = {
                from = "SilithusHold",
                to = "UngoroRefuge"
            },
            [3] = {
                from = "TanarisTown",
                to = "Orgrimmar"
            },
            [4] = {
                from = "OrgrimmarDrag",
                to = "BayOfStorms"
            },
            [5] = {
                from = "EPLTown",
                to = "zgSTV"
            },
            [6] = {
                from = "AV",
                to = "ThunderBluff"
            },
            [7] = {
                from = "Stonard",
                to = "TheDarkPortal"
            },
        },
        bankSections = { "TanarisTown", "OrgrimmarBank" }
    },
    [CasualTBCPrep.Routing.RouteCodeSolo] =
    {
        key=CasualTBCPrep.Routing.RouteCodeSolo,
        name="Solo",
        extraExperience=0,
        selectionData = {
            header="Solo Route",
            warning="",
            info1="This route requires no outside help on TBC Release",
            info2="It takes longer as it has more flying and relies on public transportation :)",
            info3="Waiting for zeppelins is not included in the estimated time",
            possibleLevelText="Possible Level: 62 + 71%",
            estimatedTimeText="Estimated Time:   98 minutes"
        },
        preparation=
        {
            "Set Hearthstone to Cenarion Hold, Silithus",
            " ",
            "[Work In Progress] This route is currently being finalized, and will be ready in a later update"
        },
        sectionOrder = {
            "Badlands","BurningSteppes","BurningSteppes2","SilithusHold","SilithusCave","SilithusSouth","SilithusHold2","Ungoro","UngoroPylonN","UngoroKrakle","UngoroPylonW",
            "UngoroFirePlumeRidge","UngoroKrakle2","UngoroRefuge","TanarisTown","TanarisPort","CavernsOfTime","TanarisTown2","Feralas","ThunderBluff","wsEverlook",
            "wsDonowa","Timbermaw","Moonglade", "felwoodTown", "felwoodEmerald","Ashenvale","AzsharaFP","Orgrimmar","OrgrimmarDrag","OrgrimmarBank","Undercity","AV","Undercity2","SilvermoonCity","EPLTown","EPLDarrowshire",
            "EPLNathanos","EPLTirion", "WPLCauldron", "WPLWrithingHaunt","WPLSorrowAndorhal","WPLDalsonsTears","WPLFelstoneField","WPLBulwark","zgSTV","gromgolSTV",
            "Stonard","oldhero","BlastedLands","TheDarkPortal"
        },
        sections=
        {
            ["Badlands"] = { key="Badlands", estTime=30, travelType=0, quests={ }, pickups={} },
            ["BurningSteppes"] = { key="BurningSteppes", estTime=70, travelType=3, quests={ }, pickups={} },
            ["BurningSteppes2"] = { key="BurningSteppes2", estTime=75, travelType=2, quests={ }, pickups={} },

            ["SilithusHold"] = { key="SilithusHold", estTime=25, travelType=5, travelText="to Cenarion Hold, Silithus", target="Cenarion Hold", quests={ }, pickups={} },
            ["SilithusCave"] = { key="SilithusCave", estTime=71, travelType=2, quests={ }, pickups={} },
            ["SilithusSouth"] = { key="SilithusSouth", estTime=75, travelType=2, quests={ }, pickups={} },
            ["SilithusHold2"] = { key="SilithusHold2", estTime=95, travelType=2, quests={ }, pickups={} },

            ["Ungoro"] = { key="Ungoro", estTime=177, travelType=3, travelText="to Marshal's Refuge, Un'Goro Crater", target="Marshal's Refuge", quests={ }, pickups={} },
            ["UngoroPylonN"] = { key="UngoroPylonN", estTime=45, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["UngoroKrakle"] = { key="UngoroKrakle", estTime=94, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["UngoroPylonW"] = { key="UngoroPylonW", estTime=26, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["UngoroFirePlumeRidge"] = { key="UngoroFirePlumeRidge", estTime=115, travelType=2, quests={ }, pickups={} },
            ["UngoroKrakle2"] = { key="UngoroKrakle2", estTime=59, travelType=2, quests={ }, pickups={} },
            ["UngoroRefuge"] = { key="UngoroRefuge", estTime=119, travelType=2, quests={ }, pickups={} },

            ["TanarisTown"] = { key="TanarisTown", estTime=120, travelType=3, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["TanarisPort"] = { key="TanarisPort", estTime=75, travelType=2, quests={ }, pickups={} },
            ["CavernsOfTime"] = { key="CavernsOfTime", estTime=111, travelType=2, quests={ }, pickups={} },
            ["TanarisTown2"] = { key="TanarisTown2", estTime=112, travelType=2, travelText="back to the FlightPath in Gadgetzan", target="Gadgetzan", quests={ }, pickups={}, canHaveZeroQuests=true },

            ["Feralas"] = { key="Feralas", estTime=210, travelType=3, quests={ }, pickups={} },
            ["ThunderBluff"] = { key="ThunderBluff", estTime=375, travelType=3, quests={ }, pickups={} },
            ["wsEverlook"] = { key="wsEverlook", estTime=425, travelType=3, quests={  } },
            ["wsDonowa"] = { key="wsDonowa", estTime=151, travelType=2, quests={  } },
            ["Timbermaw"] = { key="Timbermaw", estTime=112, travelType=2, quests={ }, pickups={} },
            ["Moonglade"] = { key="Moonglade", estTime=205, travelType=1, quests={ }, pickups={} },
            ["felwoodTown"] = { key="felwoodTown", estTime=165, travelType=3, quests={ }, pickups={} },
            ["felwoodEmerald"] = { key="felwoodEmerald", estTime=135, travelType=2, quests={ }, pickups={} },
            ["Ashenvale"] = { key="Ashenvale", estTime=184, travelType=2, travelText="south. Hug the mountains east, jump down after the satyr camp", target="Splintertree Post, Ashenvale", quests={ }, pickups={}, canHaveZeroQuests=true },
            ["AzsharaFP"] = { key="AzsharaFP", estTime=110, travelType=3, quests={ }, pickups={} },
            ["Orgrimmar"] = { key="Orgrimmar", estTime=244, travelType=3, quests={ }, pickups={} },
            ["OrgrimmarDrag"] = { key="OrgrimmarDrag", estTime=0, travelType=2, quests={ }, pickups={} },
            ["OrgrimmarBank"] = { key="OrgrimmarBank", estTime=0, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["Undercity"] = { key="Undercity", estTime=145, travelType=15, travelText="to Tirisfal Glades, then run to The Undercity", quests={ }, pickups={} },
            ["AV"] = { key="AV", estTime=206, travelType=3, textKey="TarrenMill", quests={ }, pickups={} },
            ["Undercity2"] = { key="Undercity2", estTime=140, travelType=3, travelText="back to The Undercity", target="The Undercity", quests={ }, pickups={} },
            ["SilvermoonCity"] = { key="SilvermoonCity", estTime=170, travelType=16, travelText="using the Orb of Translocation in the Undercity courtyard", target="Silvermoon City", quests={ }, pickups={} },

            ["EPLTown"] = { key="EPLTown", estTime=168, travelType=3, textKey="EPLTownMain", quests={ }, pickups={} },
            ["EPLDarrowshire"] = { key="EPLDarrowshire", estTime=67, travelType=2, quests={ }, pickups={} },
            ["EPLNathanos"] = { key="EPLNathanos", estTime=43, travelType=2, quests={ }, pickups={} },
            ["EPLTirion"] = { key="EPLTirion", estTime=83, travelType=11, quests={ }, pickups={}, canHaveZeroQuests=true  },
            ["WPLCauldron"] = { key="WPLCauldron", estTime=73, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["WPLWrithingHaunt"] = { key="WPLWrithingHaunt", estTime=37, travelType=2, quests={ }, pickups={}, canHaveZeroQuests=true },

            ["WPLSorrowAndorhal"] = { key="WPLSorrowAndorhal", estTime=40, travelType=2, quests={ }, pickups={} },
            ["WPLDalsonsTears"] = { key="WPLDalsonsTears", estTime=59, travelType=2, quests={ }, pickups={} },
            ["WPLFelstoneField"] = { key="WPLFelstoneField", estTime=37, travelType=2, quests={ }, pickups={} },
            ["WPLBulwark"] = { key="WPLBulwark", estTime=39, travelType=2, quests={ }, pickups={} },

            ["zgSTV"] = { key="zgSTV", estTime=252, travelType=15, travelText="to STV. Jump off and swim to the isle", quests={ }, pickups={} },
            ["gromgolSTV"] = { key="gromgolSTV", estTime=126, travelType=2, travelText="back to the FlightPath in Grom'gol", target="Grom'gol Base Camp", quests={ }, pickups={}, canHaveZeroQuests=true },
            ["Stonard"] = { key="Stonard", estTime=207, travelType=3, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["oldhero"] = { key="oldhero", estTime=25, travelType=2, quests={ }, pickups={} },
            ["BlastedLands"] = { key="BlastedLands", estTime=52, travelType=2, quests={ }, pickups={} },
            ["TheDarkPortal"] = { key="TheDarkPortal", estTime=45, travelType=12, quests={ }, pickups={}, canHaveZeroQuests=true },
            ["ExtraFeature"] = { key="ExtraFeature", estTime=0, travelType=4, quests={}, pickups={}, canHaveZeroQuests=true }
        },
        mailboxCount = 8,
        mailboxData = {
            [1] = { -- Bags
                from = "Badlands",
                to = "BurningSteppes2"
            },
            [2] = {
                from = "SilithusHold",
                to = "UngoroRefuge"
            },
            [3] = {
                from = "TanarisTown",
                to = "ThunderBluff"
            },
            [4] = {
                from = "wsEverlook",
                to = "Ashenvale"
            },
            [5] = {
                from = "Ashenvale",
                to = "Orgrimmar"
            },
            [6] = {
                from = "OrgrimmarDrag",
                to = "AV"
            },
            [7] = {
                from = "Undercity2",
                to = "SilvermoonCity"
            },
            [8] = {
                from = "EPLTown",
                to = "TheDarkPortal"
            }
        },
        bankSections = { "TanarisTown", "OrgrimmarBank" , "Undercity2" }
    },
}

-- Fill routes with texts from 'targetTexts' to not repeat the same texts again and again and again
for routeKey, route in pairs(CasualTBCPrep.Routing.Routes) do
    for sectionKey, section in pairs(route.sections) do
        local ttObj = targetTexts[sectionKey]

        if ttObj == nil and section.textKey ~= nil and section.textKey ~= "" then
            ttObj = targetTexts[section.textKey]
        end

        if ttObj ~= nil then
            if section.target == nil or section.target == "" then
                if ttObj.text ~= nil and ttObj.text ~= "" then
                    section.target = ttObj.text
                end
            end

            if section.travelText == nil or section.travelText == "" then
                if ttObj.travel ~= nil and ttObj.travel ~= "" then
                section.travelText = ttObj.travel
                end
            end
        end
    end
end

local function GetTurninItemsForCurrentRoute_AddOrCombineItem(itemList, itemID, count)
    for _, existingItem in ipairs(itemList) do
        if existingItem.itemID == itemID then
            existingItem.count = existingItem.count + count
            return
        end
    end
    table.insert(itemList, {itemID = itemID, count = count})
end

---@return table,table, table
function CasualTBCPrep.Routing.GetTurninItemsForCurrentRoute()
    local resultMail, resultBank, resultOrder = {}, {}, {}
    local routeCode = CasualTBCPrep.Routing.CurrentRouteCode
    local route = CasualTBCPrep.Routing.Routes[routeCode]

    if route.mailboxCount == nil then
        CasualTBCPrep.NotifyUserError("Route "..routeCode.." has no mailboxCount set.")
        return {},{},{}
    end
    if route.mailboxData == nil then
        CasualTBCPrep.NotifyUserError("Route "..routeCode.." has no mailboxData set.")
        return {},{},{}
    end

    local allItemsNeeded, itemsNeededAnyItems = CasualTBCPrep.QuestData.GetAllRequiredItemsForAvailableQuests(true)


    local questItemLookup = {}
    for _, itemData in ipairs(allItemsNeeded) do
        for _, quest in ipairs(itemData.quests) do
            questItemLookup[quest.id] = {}
        end
    end
    for _, itemData in ipairs(itemsNeededAnyItems) do
        questItemLookup[itemData.questID] = {}
    end

    local sectionsUsed, expectedSectionsUsed = 0, #route.sectionOrder
    local currentBankGroup, currentMailGroup = 1, 1
    local currentMailboxData = route.mailboxData[1]
    local nextBankSection = route.bankSections[1]
    local lastBankSection = "BAGS"

    local tempBankData, tempMailData = {}, {}
    local mbStarted, mbExit = false, false

    local processedSections = {}
    for _, sectionName in ipairs(route.sectionOrder) do
        if mbStarted == false then
            if sectionName == currentMailboxData.from then
                mbStarted = true
                if #resultOrder == 0 then
                    table.insert(resultOrder, { type="MAIL", section="BAGS", targetID=currentMailGroup})
                else
                    table.insert(resultOrder, { type="MAIL", section=sectionName, targetID=currentMailGroup})
                end
            end
        elseif sectionName == currentMailboxData.to then
            mbExit = true
        end

        if sectionName == nextBankSection then
            table.insert(resultBank, { id=currentBankGroup, section=sectionName, items=tempBankData})
            if #resultBank == 1 then
                table.insert(resultOrder, 1, { type="BANK", section=lastBankSection, targetID=currentBankGroup})
            else
                table.insert(resultOrder, { type="BANK", section=lastBankSection, targetID=currentBankGroup})
            end
            tempBankData = {}
            currentBankGroup = currentBankGroup + 1
            lastBankSection = nextBankSection
            nextBankSection = route.bankSections[currentBankGroup]
        end

        if mbStarted == true then
            sectionsUsed = sectionsUsed + 1
            processedSections[sectionName] = true
            for _, questID in ipairs(route.sections[sectionName].quests) do
                if questItemLookup[questID] ~= nil then
                    local hasFullyPreparedQuest = CasualTBCPrep.QuestData.GetQuestProgressionDetailsFromID(questID)
                    if hasFullyPreparedQuest == true then
                        local questObj = CasualTBCPrep.QuestData.GetQuest(questID)
                        local questItemString = questObj.reqItems
                        if questObj.reqAnyItem then
                            local hadAny = false
                            local tempItemReqAnyDataMail,tempItemReqAnyDataBank = {},{}
                            for itemPair in string.gmatch(questItemString, "([^,]+)") do
                                if hadAny == false then
                                    local itemIDStr, countStr = string.match(itemPair, "(%d+)-(%d+)")

                                    if itemIDStr and countStr then
                                        local itemID, neededItemCount = tonumber(itemIDStr), tonumber(countStr)
                                        local itemObj = CasualTBCPrep.Items.GetItemDetails(itemID)
                                        if itemObj then
                                            local playerInvCount = CasualTBCPrep.Items.GetPlayerItemCount(itemID, false)
                                            if playerInvCount > 0 then
                                                hadAny = true
                                            end
                                            if itemObj.auctionHouse == true then
                                                table.insert(tempItemReqAnyDataMail, { itemID=itemID, count=neededItemCount })
                                            else
                                                table.insert(tempItemReqAnyDataBank, { itemID=itemID, count=neededItemCount })
                                            end
                                        end
                                    end
                                end
                            end

                            if hadAny == false then
                                for _, itemData in ipairs(tempItemReqAnyDataMail) do
                                    GetTurninItemsForCurrentRoute_AddOrCombineItem(tempMailData, itemData.itemID, itemData.count)
                                end
                                for _, itemData in ipairs(tempItemReqAnyDataBank) do
                                    GetTurninItemsForCurrentRoute_AddOrCombineItem(tempBankData, itemData.itemID, itemData.count)
                                end
                            end
                        else
                            for itemPair in string.gmatch(questItemString, "([^,]+)") do
                                local itemIDStr, countStr = string.match(itemPair, "(%d+)-(%d+)")

                                if itemIDStr and countStr then
                                    local itemID,neededItemCount = tonumber(itemIDStr), tonumber(countStr)
                                    local itemObj = CasualTBCPrep.Items.GetItemDetails(itemID)
                                    if itemObj then
                                        if itemObj.auctionHouse == true then
                                            GetTurninItemsForCurrentRoute_AddOrCombineItem(tempMailData, itemID, neededItemCount)
                                        else
                                            GetTurninItemsForCurrentRoute_AddOrCombineItem(tempBankData, itemID, neededItemCount)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        if mbExit == true then
            table.insert(resultMail, { id=currentMailGroup, section=sectionName, items=tempMailData })
            tempMailData = {}
            mbStarted = false
            mbExit = false
            currentMailGroup = currentMailGroup + 1
            currentMailboxData = route.mailboxData[currentMailGroup]
        end
    end

    if #tempBankData > 0 then
        table.insert(resultBank, { id=currentBankGroup, items=tempBankData})
        table.insert(resultOrder, { type="BANK", section=lastBankSection, targetID=currentBankGroup})
        tempBankData = {}
    end

    if sectionsUsed ~= expectedSectionsUsed then
        CasualTBCPrep.NotifyUserError("(Routing.GetMailboxItemsForCurrentRoute_"..routeCode.."): Expected to see "..tostring(expectedSectionsUsed).." but only checked "..tostring(sectionsUsed))
        CasualTBCPrep.NotifyUserError("Missing Sections:")
        for _, sectionName in ipairs(route.sectionOrder) do
            if not processedSections[sectionName] then
                CasualTBCPrep.NotifyUserError("- "..sectionName)
            end
        end
    end

    return resultMail, resultBank, resultOrder
end

function CasualTBCPrep.Routing.GetCurrentRoute()
    return CasualTBCPrep.Routing.Routes[CasualTBCPrep.Routing.CurrentRouteCode]
end
function CasualTBCPrep.Routing.GetQuestsInCurrentRoute()
    local route = CasualTBCPrep.Routing.Routes[CasualTBCPrep.Routing.CurrentRouteCode]
	local ignoredRouteSections = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.IgnoredRouteSections) or { }

    local quests = { }
    for sectKey, section in pairs(route.sections) do
        local ignoredSectionKey = route.key .. "_" .. sectKey
        local isIgnored = ignoredRouteSections[ignoredSectionKey] or false

        if isIgnored == false and section.quests ~= nil then
            for _, questID in ipairs(section.quests) do
                quests[questID] = true
            end
        end
    end

    return quests
end

function CasualTBCPrep.Routing.GetActiveSectionsInCurrentRoute()
    local results = {}
    local route = CasualTBCPrep.Routing.Routes[CasualTBCPrep.Routing.CurrentRouteCode]
	local ignoredRouteSections = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.IgnoredRouteSections) or { }

    for _, sectKey in ipairs(route.sectionOrder) do
        local section = route.sections[sectKey]

        if section == nil then
            CasualTBCPrep.NotifyUserError("CasualTBCPrep.Routing.GetActiveSectionsInCurrentRoute > " .. sectKey .. " found in .sectionOrder, but not in .sections for route " .. route.name)
        else
            local ignoredSectionKey = route.key .. "_" .. sectKey
            local isIgnored = ignoredRouteSections[ignoredSectionKey] or false

            if isIgnored == false and section.visible ~= false then
                table.insert(results, section)
            end
        end
    end

    return results
end

function CasualTBCPrep.Routing.OnSectionIgnoreToggled()
    cachedRouteQuestDic = CasualTBCPrep.Routing.GetQuestsInCurrentRoute()
end

function CasualTBCPrep.Routing.ChangeCurrentRoute(routeCode)
    local oldRouteCode = CasualTBCPrep.Routing.CurrentRouteCode
    CasualTBCPrep.Routing.CurrentRouteCode = routeCode
	CasualTBCPrep.QuestData.LoadRoute(routeCode)
    cachedRouteQuestDic = CasualTBCPrep.Routing.GetQuestsInCurrentRoute()
	CasualTBCPrep.WM_Route.RefreshRoute()
    C_Timer.After(0.2, function() CasualTBCPrep.QuestData.LoadRoute(routeCode) end)

    CasualTBCPrep.MessageBroker.Send(CasualTBCPrep.MessageBroker.TYPE.ROUTE_CHANGED, { from=oldRouteCode, to=routeCode })
end

---@return boolean
function CasualTBCPrep.Routing.IsQuestInCurrentRoute(questID)
    if cachedRouteQuestDic == nil then
        return false
    end
    return cachedRouteQuestDic[questID] == true
end
