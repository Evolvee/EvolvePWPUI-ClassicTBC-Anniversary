CasualTBCPrep.Flights = CasualTBCPrep.Flights or {}

local taxiMetadata = {
    ["Nighthaven, Moonglade"] = { continent=0, isHorde=true, isAlly=true },
    ["Moonglade"] = { continent=0, isHorde=true, isAlly=true },
    ["Everlook, Winterspring"] = { continent=0, isHorde=true, isAlly=true },

    ["Bloodvenom Post, Felwood"] = { continent=0, isHorde=true, isAlly=false },
    ["Valormok, Azshara"] = { continent=0, isHorde=true, isAlly=false },
    ["Orgrimmar, Durotar"] = { continent=0, isHorde=true, isAlly=false },
    ["Splintertree Post, Ashenvale"] = { continent=0, isHorde=true, isAlly=false },
    ["Zoram'gar Outpost, Ashenvale"] = { continent=0, isHorde=true, isAlly=false },
    ["Sun Rock Retreat, Stonetalon Mountains"] = { continent=0, isHorde=true, isAlly=false },
    ["Crossroads, The Barrens"] = { continent=0, isHorde=true, isAlly=false },
    ["Shadowprey Village, Desolace"] = { continent=0, isHorde=true, isAlly=false },
    ["Thunder Bluff, Mulgore"] = { continent=0, isHorde=true, isAlly=false },
    ["Ratchet, The Barrens"] = { continent=0, isHorde=true, isAlly=true },
    ["Camp Taurajo, The Barrens"] = { continent=0, isHorde=true, isAlly=false },
    ["Camp Mojache, Feralas"] = { continent=0, isHorde=true, isAlly=false },
    ["Brackenwall Village, Dustwallow Marsh"] = { continent=0, isHorde=true, isAlly=false },
    ["Freewind Post, Thousand Needles"] = { continent=0, isHorde=true, isAlly=false },
    ["Cenarion Hold, Silithus"] = { continent=0, isHorde=true, isAlly=true },
    ["Marshal's Refuge, Un'Goro Crater"] = { continent=0, isHorde=true, isAlly=true },
    ["Gadgetzan, Tanaris"] = { continent=0, isHorde=true, isAlly=true },
    ["Darnassus, Teldrassil"] = { continent=0, isHorde=false, isAlly=true },
    ["Rut'theran Village, Teldrassil"] = { continent=0, isHorde=false, isAlly=true },
    ["Auberdine, Darkshore"] = { continent=0, isHorde=false, isAlly=true },
    ["Talonbranch Glade, Felwood"] = { continent=0, isHorde=false, isAlly=true },
    ["Stonetalon Peak, Stonetalon Mountains"] = { continent=0, isHorde=false, isAlly=true },
    ["Astranaar, Ashenvale"] = { continent=0, isHorde=false, isAlly=true },
    ["Talrendis Point, Azshara"] = { continent=0, isHorde=false, isAlly=true },
    ["Nijel's Point, Desolace"] = { continent=0, isHorde=false, isAlly=true },
    ["Feathermoon, Feralas"] = { continent=0, isHorde=false, isAlly=true },
    ["Thalanaar, Feralas"] = { continent=0, isHorde=false, isAlly=true },
    ["Theramore, Dustwallow Marsh"] = { continent=0, isHorde=false, isAlly=true },

    ["Kargath, Badlands"] = { continent=1, isHorde=true, isAlly=false },
    ["Tarren Mill, Hillsbrad"] = { continent=1, isHorde=true, isAlly=false },
    ["The Sepulcher, Silverpine Forest"] = { continent=1, isHorde=true, isAlly=false },
    ["Undercity, Tirisfal"] = { continent=1, isHorde=true, isAlly=false },
    ["Hammerfall, Arathi"] = { continent=1, isHorde=true, isAlly=false },
    ["Revantusk Village, The Hinterlands"] = { continent=1, isHorde=true, isAlly=false },
    ["Thorium Point, Searing Gorge"] = { continent=1, isHorde=true, isAlly=true },
    ["Flame Crest, Burning Steppes"] = { continent=1, isHorde=true, isAlly=false },
    ["Stonard, Swamp of Sorrows"] = { continent=1, isHorde=true, isAlly=false },
    ["Grom'gol, Stranglethorn"] = { continent=1, isHorde=true, isAlly=false },
    ["Booty Bay, Stranglethorn"] = { continent=1, isHorde=true, isAlly=true },
    ["Light's Hope Chapel, Eastern Plaguelands"] = { continent=1, isHorde=true, isAlly=true },
    ["Chillwind Camp, Western Plaguelands"] = { continent=1, isHorde=false, isAlly=true },
    ["Aerie Peak, The Hinterlands"] = { continent=1, isHorde=false, isAlly=true },
    ["Southshore, Hillsbrad"] = { continent=1, isHorde=false, isAlly=true },
    ["Refuge Pointe, Arathi"] = { continent=1, isHorde=false, isAlly=true },
    ["Menethil Harbor, Wetlands"] = { continent=1, isHorde=false, isAlly=true },
    ["Ironforge, Dun Morogh"] = { continent=1, isHorde=false, isAlly=true },
    ["Thelsamar, Loch Modan"] = { continent=1, isHorde=false, isAlly=true },
    ["Stormwind, Elwynn"] = { continent=1, isHorde=false, isAlly=true },
    ["Morgan's Vigil, Burning Steppes"] = { continent=1, isHorde=false, isAlly=true },
    ["Lakeshire, Redridge"] = { continent=1, isHorde=false, isAlly=true },
    ["Sentinel Hill, Westfall"] = { continent=1, isHorde=false, isAlly=true },
    ["Darkshire, Duskwood"] = { continent=1, isHorde=false, isAlly=true },
    ["Nethergarde Keep, Blasted Lands"] = { continent=1, isHorde=false, isAlly=true },

    -- TBC Neutral
    ["Emerald Sanctuary, Felwood"] = { continent=0, isHorde=true, isAlly=true },
    ["Mudsprocket, Dustwallow Marsh"] = { continent=0, isHorde=true, isAlly=true },
    ["Zul'Aman, Ghostlands"] = { continent=1, isHorde=true, isAlly=true },
    ["Shattered Sun Staging Area"] = { continent=1, isHorde=true, isAlly=true },

    -- TBC Neutral Outland
    ["Hellfire Peninsula, The Dark Portal"] = { continent=2, isHorde=true, isAlly=false },
    ["The Stair of Destiny, Hellfire Peninsula"] = { continent=2, isHorde=true, isAlly=true },
    ["Evergrove, Blade's Edge Mountains"] = { continent=2, isHorde=true, isAlly=true },
    ["Area 52, Netherstorm"] = { continent=2, isHorde=true, isAlly=true },
    ["The Stormspire, Netherstorm"] = { continent=2, isHorde=true, isAlly=true },
    ["Cosmowrench, Netherstorm"] = { continent=2, isHorde=true, isAlly=true },
    ["Altar of Sha'tar, Shadowmoon Valley"] = { continent=2, isHorde=true, isAlly=true },
    ["Sanctum of the Stars, Shadowmoon Valley"] = { continent=2, isHorde=true, isAlly=true },
    ["Shattrath City, Terokkar Forest"] = { continent=2, isHorde=true, isAlly=true },

    -- TBC Horde
    ["Silvermoon City"] = { continent=1, isHorde=true, isAlly=false },
    ["Tranquillien, Ghostlands"] = { continent=1, isHorde=true, isAlly=false },

    -- TBC Horde Outland
    ["Hellfire Peninsula, The Dark Portal, Horde"] = { continent=2, isHorde=true, isAlly=false },
    ["Thrallmar, Hellfire Peninsula"] = { continent=2, isHorde=true, isAlly=false },
    ["Spinebreaker Ridge, Hellfire Peninsula"] = { continent=2, isHorde=true, isAlly=false },
    ["Falcon Watch, Hellfire Peninsula"] = { continent=2, isHorde=true, isAlly=false },
    ["Swamprat Post, Zangarmarsh"] = { continent=2, isHorde=true, isAlly=false },
    ["Zabra'jin, Zangarmarsh"] = { continent=2, isHorde=true, isAlly=false },
    ["Stonebreaker Hold, Terokkar Forest"] = { continent=2, isHorde=true, isAlly=false },
    ["Garadar, Nagrand"] = { continent=2, isHorde=true, isAlly=false },
    ["Thunderlord Stronghold, Blade's Edge Mountains"] = { continent=2, isHorde=true, isAlly=false },
    ["Mok'Nathal Village, Blade's Edge Mountains"] = { continent=2, isHorde=true, isAlly=false },
    ["Shadowmoon Village, Shadowmoon Valley"] = { continent=2, isHorde=true, isAlly=false },

    -- TBC Ally
    ["Forest Song, Ashenvale"] = { continent=0, isHorde=false, isAlly=true },
    ["Rebel Camp, Stranglethorn Vale"] = { continent=1, isHorde=false, isAlly=true },

    -- TBC Ally Outland
    ["Hellfire Peninsula, The Dark Portal, Alliance"] = { continent=2, isHorde=false, isAlly=true },
    ["Honor Hold, Hellfire Peninsula"] = { continent=2, isHorde=false, isAlly=true },
    ["Temple of Telhamat, Hellfire Peninsula"] = { continent=2, isHorde=false, isAlly=true },
    ["Shatter Point, Hellfire Peninsula"] = { continent=2, isHorde=false, isAlly=true },
    ["Telredor, Zangarmarsh"] = { continent=2, isHorde=false, isAlly=true },
    ["Orebor Harborage, Zangarmarsh"] = { continent=2, isHorde=false, isAlly=true },
    ["Allerian Stronghold, Terokkar Forest"] = { continent=2, isHorde=false, isAlly=true },
    ["Telaar, Nagrand"] = { continent=2, isHorde=false, isAlly=true },
    ["Sylvanaar, Blade's Edge Mountains"] = { continent=2, isHorde=false, isAlly=true },
    ["Toshley's Station, Blade's Edge Mountains"] = { continent=2, isHorde=false, isAlly=true },
    ["Wildhammer Stronghold, Shadowmoon Valley"] = { continent=2, isHorde=false, isAlly=true },
}

local neededTaxiNodes = {
	[CasualTBCPrep.Routing.RouteCodeMain] = {
		[0] = { -- Neutral
			["Marshal's Refuge, Un'Goro Crater"] = { },
            ["Emerald Sanctuary, Felwood"] = { }
		},
		[1] = { -- Horde
			["Kargath, Badlands"] = { },
			["Gadgetzan, Tanaris"] = { },
			["Bloodvenom Post, Felwood"] = { }, 
		},
		[2] = { -- Alliance
			["Gadgetzan, Tanaris"] = { },
		}
	},
	[CasualTBCPrep.Routing.RouteCodeStrat] = {
		[0] = { -- Neutral
			["Marshal's Refuge, Un'Goro Crater"] = { },
            ["Emerald Sanctuary, Felwood"] = { }
		},
		[1] = { -- Horde
			["Kargath, Badlands"] = { },
			["Gadgetzan, Tanaris"] = { },
			["Bloodvenom Post, Felwood"] = { },
		},
		[2] = { -- Alliance
			["Gadgetzan, Tanaris"] = { },
		}
	},
	[CasualTBCPrep.Routing.RouteCodeSolo] = {
		[0] = { -- Neutral
			["Marshal's Refuge, Un'Goro Crater"] = { },
            ["Emerald Sanctuary, Felwood"] = { }
		},
		[1] = { -- Horde
			["Tarren Mill, Hillsbrad"] = { },
			["Kargath, Badlands"] = { },
			["Thunder Bluff, Mulgore"] = { },
			["Orgrimmar, Durotar"] = { },
			["Gadgetzan, Tanaris"] = { },
			["Camp Mojache, Feralas"] = { },
			["Valormok, Azshara"] = { },
			["Bloodvenom Post, Felwood"] = { },
			["Everlook, Winterspring"] = { },
			["Stonard, Swamp of Sorrows"] = { },
			["Light's Hope Chapel, Eastern Plaguelands"] = { },
			["Tranquillien, Ghostlands"] = { },
		},
		[2] = { -- Alliance
			["Gadgetzan, Tanaris"] = { },
			["Everlook, Winterspring"] = { },
			["Light's Hope Chapel, Eastern Plaguelands"] = { },
		}
	},
}

function CasualTBCPrep.Flights.OnTaxiMapOpened()
    local storedTaxiData = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.TaxiState)
    if storedTaxiData ~= nil and storedTaxiData.hasAllConfirmed == true then
        return
    end

    if storedTaxiData.checkedContinents == nil then
        storedTaxiData.checkedContinents = { }
    end
    for i=1,NumTaxiNodes() do
        local taxiName = TaxiNodeName(i)
        local taxiType = TaxiNodeGetType(i)

        local taxiMetadata = taxiMetadata[taxiName]
        if taxiMetadata == nil then
            local debugger = CasualTBCPrep.Settings.GetGlobalSetting(CasualTBCPrep.Settings.DebugDetails) or -1
            if debugger == 1 then
                CasualTBCPrep.NotifyUserError("[DEBUG] Couldn't find metadata for taxi: "..taxiName)
            end
            return
        end
        CasualTBCPrep.TableInsertUnique(storedTaxiData.checkedContinents, taxiMetadata.continent)

        if "CURRENT" == taxiType or "REACHABLE" == taxiType then
            local stored = storedTaxiData[taxiName]
            if stored ~= true then
                storedTaxiData[taxiName] = true
            end
        end
    end

    CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.TaxiState, storedTaxiData)
end

---@param routeCode string
---@return boolean,table,number
function CasualTBCPrep.Flights.GetPlayerFlightPathState(routeCode)
	if not routeCode or routeCode == "" then
		return false,{},0
	end

	local flightDicToCheck = neededTaxiNodes[routeCode]
	if flightDicToCheck == nil then
		return false,{},0
	end
    local storedTaxiData = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.TaxiState)
    if storedTaxiData ~= nil and storedTaxiData.hasAllConfirmed == true then
        return false,{},0
    end

    local hasKalimdor,hasEK,hasOutland,hasNorthrend = false,false,true,true
    if storedTaxiData.checkedContinents then
        for _,continentID in ipairs(storedTaxiData.checkedContinents) do
            if continentID == 0 then hasKalimdor = true end
            if continentID == 1 then hasEK = true end
        end
    end
    local isFirst = true
    local missingStr = ""

    if not hasKalimdor then
        if isFirst == false then missingStr = missingStr..", " end
        missingStr = missingStr.."Kalimdor"
        isFirst = false
    end
    if not hasEK then
        if isFirst == false then missingStr = missingStr..", " end
        missingStr = missingStr.."Eastern Kingdoms"
        isFirst = false
    end
    if not hasOutland then
        if isFirst == false then missingStr = missingStr..", " end
        missingStr = missingStr.."Outland"
        isFirst = false
    end
    if not hasNorthrend then
        if isFirst == false then missingStr = missingStr..", " end
        missingStr = missingStr.."Northrend"
        isFirst = false
    end

    if isFirst == false then -- We are missing atleast one
        CasualTBCPrep.NotifyUserError("Cannot check flightpaths - please interact with a flight master in "..missingStr)
        return false, {},0
    end

	local neutralFactionID = 0
	local playerFactionID = CasualTBCPrep.Faction.GetPlayerFactionID()

	local finalTaxiList = { }
    local toCheck = {}
    for taxi, _ in pairs(neededTaxiNodes[routeCode][neutralFactionID]) do
        table.insert(toCheck, taxi)
    end
    for taxi, _ in pairs(neededTaxiNodes[routeCode][playerFactionID]) do
        table.insert(toCheck, taxi)
    end

    local undiscoveredCount = 0
    local hasUnlockedAll = true
    for _,taxiName in ipairs(toCheck) do
        local taxiData = storedTaxiData[taxiName]
        if taxiData ~= true then
            hasUnlockedAll = false
            CasualTBCPrep.TableInsertUnique(finalTaxiList, { name=taxiName, discovered=false })
            undiscoveredCount = undiscoveredCount + 1
        else
            CasualTBCPrep.TableInsertUnique(finalTaxiList, { name=taxiName, discovered=true })
        end
    end

    table.sort(finalTaxiList, function(a, b)
        return (not a.discovered and b.discovered) or (a.discovered == b.discovered and a.name < b.name)
    end)
    return hasUnlockedAll, finalTaxiList, undiscoveredCount
end