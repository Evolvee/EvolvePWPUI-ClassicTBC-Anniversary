local LibExtraTip = LibStub("LibExtraTip-1")
ExoLink.BIS = {}
ExoLink.Items = {}

-- Initialize SavedVariables
_G.ExoLinkDB = _G.ExoLinkDB or { showBiS = 1, showOnlyMyClass = 0 }

local addonName, addonTable = ...
local iconpath = "Interface\\GLUES\\CHARACTERCREATE\\UI-CharacterCreate-Classes"
local iconCutoff = 6

local function iconOffset(col, row)
	local offsetString = (col * 64 + iconCutoff) .. ":" .. ((col + 1) * 64 - iconCutoff)
	return offsetString .. ":" .. (row * 64 + iconCutoff) .. ":" .. ((row + 1) * 64 - iconCutoff)
end

local function buildExtraTip(tooltip, entry)
    local r,g,b = .9,.8,.5
    local _, playerClass = UnitClass("player") -- returns "ROGUE" etc
    
    -- Track
    local headerAdded = false

	for k, v in pairs(entry) do
		local entryData = ExoLink.BIS[k]
		local classUpper = entryData.class:upper()
		
        -- Filter logic My Class
        local shouldShow = true
        if ExoLinkDB.showOnlyMyClass == 1 and classUpper ~= playerClass then
            shouldShow = false
        end

        if shouldShow then
            if not headerAdded then
                LibExtraTip:AddLine(tooltip," ",r,g,b,true)
                LibExtraTip:AddLine(tooltip,"# AtlasLootTBC Phase 1 BiS for:",r,g,b,true)
                headerAdded = true
            end

            local color = RAID_CLASS_COLORS[classUpper]
            local coords = CLASS_ICON_TCOORDS[classUpper]
            local classfontstring = "|T" .. iconpath .. ":14:14:::256:256:" .. iconOffset(coords[1] * 4, coords[3] * 4) .. "|t"
            
            LibExtraTip:AddDoubleLine(tooltip, classfontstring .. " " .. entryData.class .. " " .. entryData.spec .. " " .. entryData.comment, v, color.r, color.g, color.b, color.r, color.g, color.b, true)
        end
	end
	
    if headerAdded then
	    LibExtraTip:AddLine(tooltip," ",r,g,b,false)
    end
end

local function onTooltipSetItem(tooltip, itemLink, quantity)
    -- Check if enabled
    if ExoLinkDB.showBiS == 0 then return end

	local itemString = string.match(itemLink, "item[%-?%d:]+")
	local itemId = ({ string.split(":", itemString) })[2]

	if ExoLink.Items[itemId] then
		buildExtraTip(tooltip, ExoLink.Items[itemId])
	end
end

local eventframe = CreateFrame("FRAME",addonName.."Events")

local function onEvent(self,event,arg)
    if event == "PLAYER_ENTERING_WORLD" then
        eventframe:UnregisterEvent("PLAYER_ENTERING_WORLD")
        
        -- Default
        if ExoLinkDB.showBiS == nil then ExoLinkDB.showBiS = 1 end
        if ExoLinkDB.showOnlyMyClass == nil then ExoLinkDB.showOnlyMyClass = 0 end

        LibExtraTip:AddCallback({type = "item", callback = onTooltipSetItem, allevents = true})

        LibExtraTip:RegisterTooltip(ItemRefTooltip)
        LibExtraTip:RegisterTooltip(ShoppingTooltip)
        LibExtraTip:RegisterTooltip(GameTooltip)
    end
end

eventframe:RegisterEvent("PLAYER_ENTERING_WORLD")
eventframe:SetScript("OnEvent", onEvent)

function ExoLink:RegisterBIS(class, spec, comment)
	if not spec then spec = "" end
	if not comment then comment = "" end
	
    local bis = {
		class = class,
		spec = spec,
		comment = comment
	}
	
	bis.ID = class..spec..comment

    ExoLink.BIS[bis.ID] = bis
    return bis
end

function ExoLink:BISitem(bisEntry, id, slot, description, phase)
	if not ExoLink.Items[id] then
		ExoLink.Items[id] = {}
	end

	ExoLink.Items[id][bisEntry.ID] = phase
end