local function log(msg) DEFAULT_CHAT_FRAME:AddMessage(msg) end -- alias for convenience
local ClassPortraits=CreateFrame("Frame", nil, UIParent)

local iconPath="Interface\\Addons\\TextureScript\\ClassIconsUpscaled\\NEW_PORTRAITS.BLP"

-- TARGET
local TargetToTPortrait = TargetFrameToT:CreateTexture(nil, "ARTWORK")
local w, h = TargetFrameToT.portrait:GetSize()
TargetToTPortrait:SetSize(w * 1.133, h * 1.133)   -- 13% bigger
TargetToTPortrait:ClearAllPoints()
TargetToTPortrait:SetPoint("CENTER", TargetFrameToT, "CENTER", -22.5, -0.5)

local lastTargetToTGuid = nil

-- non player TARGET TOT handling
local basePortrait = TargetFrameToT.portrait
local bw, bh = basePortrait:GetSize()
basePortrait:SetSize(bw * 1.13, bh * 1.13)  -- 13% bigger
basePortrait:ClearAllPoints()
basePortrait:SetPoint("CENTER", TargetFrameToT, "CENTER", -22.5, -0.5)

-- FOCUS
local FocusToTPortrait = FocusFrameToT:CreateTexture(nil, "ARTWORK")
local fw, fh = FocusFrameToT.portrait:GetSize()
FocusToTPortrait:SetSize(fw * 1.133, fh * 1.133)  -- 13% bigger
FocusToTPortrait:ClearAllPoints()
FocusToTPortrait:SetPoint("CENTER", FocusFrameToT, "CENTER", -22.5, -0.5)

local lastFocusToTGuid = nil

-- non player FOCUS TOT handling
local baseFocusPortrait = FocusFrameToT.portrait
local bw2, bh2 = baseFocusPortrait:GetSize()
baseFocusPortrait:SetSize(bw2 * 1.13, bh2 * 1.13) -- 13% bigger
baseFocusPortrait:ClearAllPoints()
baseFocusPortrait:SetPoint("CENTER", FocusFrameToT, "CENTER", -22.5, -0.5)

-- PET PORTRAIT FRAME (due to the new slimmer frames, we have to adjust the position of pet texture as well... otherwise theres blank alpha space inbetween the circle and NPC texture)
local petPortrait = PetFrame.portrait
local w, h = petPortrait:GetSize()
petPortrait:SetSize(w * 1.1, h * 1.1)
petPortrait:ClearAllPoints()
petPortrait:SetPoint("CENTER", PetFrame, "CENTER", -39, 0)

-- PARTY FRAME PORTRAITS (TBC Classic 2.5.5 Modern UI)

-- 1. Helper to safely find a portrait texture on any frame
local function GetPortraitFromFrame(frame)
    if not frame then return nil end

    -- Check 1: Does it have a .Portrait key?
    if frame.Portrait then return frame.Portrait end

    -- Check 2: Does it have a global name? (e.g. PartyMemberFrame1Portrait)
    if frame.GetName then
        local name = frame:GetName()
        if name then
            local globalPortrait = _G[name.."Portrait"]
            if globalPortrait then return globalPortrait end
        end
    end

    -- Check 3: Scan regions (Backup for anonymous frames)
    if frame.GetRegions then
        local regions = { frame:GetRegions() }
        for _, region in ipairs(regions) do
            if region and region.GetObjectType and region:GetObjectType() == "Texture" then
                -- Usually the portrait is the first texture, or we can check texture path if needed
                -- For simple unit frames, the first texture is often the portrait or background.
                -- We'll assume if we are calling this on a UnitFrame, the first texture is relevant.
                return region 
            end
        end
    end
    return nil
end

-- 2. Define the logic to force the position
local function EnforcePortraitPosition(portrait, parent)
    if not portrait or not parent then return end
    
    -- Recursion Guard
    if portrait.cpIsMoving then return end
    
    portrait.cpIsMoving = true
    portrait:ClearAllPoints()
    portrait:SetPoint("CENTER", parent, "CENTER", -39.6, 1)
    portrait.cpIsMoving = false
end

-- 3. Initialize a specific party frame
local function InitPartyPortrait(frame)
    if not frame then return end
    
    -- Use our safe helper instead of assuming GetName() exists
    local portrait = GetPortraitFromFrame(frame)
    
    if portrait then
        -- A. Apply Scale (Only once)
        if not portrait.cpScaled then
            local w, h = portrait:GetSize()
            -- Safety check to ensure we aren't scaling a tiny 0x0 texture
            if w and w > 1 then 
                portrait:SetSize(w * 1.05, h * 1.05)
                portrait.cpScaled = true
                
                -- B. Hook SetPoint to prevent resetting
                hooksecurefunc(portrait, "SetPoint", function()
                    EnforcePortraitPosition(portrait, frame)
                end)
            end
        end
        
        -- C. Force position immediately
        EnforcePortraitPosition(portrait, frame)
    end
end

-- 4. Scanner
local function AdjustModernPartyPortraits()
    -- Check child frames (Modern)
    if PartyFrame then
        for i = 1, PartyFrame:GetNumChildren() do
            local child = select(i, PartyFrame:GetChildren())
            -- Only process if it looks like a frame
            if child and child.IsObjectType and child:IsObjectType("Frame") then
                InitPartyPortrait(child)
            end
        end
    end
    
    -- Check globals (Classic)
    for i = 1, 4 do
        local frame = _G["PartyMemberFrame"..i]
        if frame then InitPartyPortrait(frame) end
    end
end

-- 5. Events
local partyLoader = CreateFrame("Frame")
partyLoader:RegisterEvent("PLAYER_LOGIN")
partyLoader:RegisterEvent("GROUP_ROSTER_UPDATE")
partyLoader:RegisterEvent("PLAYER_ENTERING_WORLD")
partyLoader:SetScript("OnEvent", function()
    C_Timer.After(0.1, AdjustModernPartyPortraits)
end)

-- Core Helper for Scaling up portraits on Character/Spellbook/PVP/talents frame etc.
local function ScaleUIPortraitOnly(portrait, scale)
    if not portrait or portrait.cpScaled then return end

    local w, h = portrait:GetSize()
    if not w or w <= 1 then return end

    portrait:SetSize(w * scale, h * scale)
    portrait.cpScaled = true
end



local function UpdatePortrait(texture, unit)
   if not texture or not texture.SetTexture then return end  -- <-- ChatGPT FIX

   local _, class = UnitClass(unit)
   local iconCoords = CLASS_BUTTONS[class]
   if texture and iconCoords then
      texture:SetTexture(iconPath, true)
      texture:SetTexCoord(unpack(iconCoords))
   else
      DEFAULT_CHAT_FRAME:AddMessage(format(
         "ERROR! unit:[%s] class:[%s] texture:[%s]",
         (unit or "nil"), (class or "nil"), (texture and texture:GetName() or "unknown")
      ), 1, 0, 0)
   end
end

local classIcons = {
-- UpperLeftx, UpperLefty, LowerLeftx, LowerLefty, UpperRightx, UpperRighty, LowerRightx, LowerRighty
	["WARRIOR"] = {0, 0, 0, 0.25, 0.25, 0, 0.25, 0.25},
	["ROGUE"] = {0.5, 0, 0.5, 0.25, 0.75, 0, 0.75, 0.25},
	["DRUID"] = {0.75, 0, 0.75, 0.25, 1, 0, 1, 0.25},
	["WARLOCK"] = {0.75, 0.25, 0.75, 0.5, 1, 0.25, 1, 0.5},
	["HUNTER"] = {0, 0.25, 0, 0.5, 0.25, 0.25, 0.25, 0.5},
	["PRIEST"] = {0.5, 0.25, 0.5, 0.5, 0.75, 0.25, 0.75, 0.5},
	["PALADIN"] = {0, 0.5, 0, 0.75, 0.25, 0.5, 0.25, 0.75},
	["SHAMAN"] = {0.25, 0.25, 0.25, 0.5, 0.5, 0.25, 0.5, 0.5},
	["MAGE"] = {0.25, 0, 0.25, 0.25, 0.5, 0, 0.5, 0.25},
	["DEATHKNIGHT"] = {0.25, 0.5, 0.25, 0.75, 0.5, 0.5, 0.5, 0.75}
}

hooksecurefunc("UnitFramePortrait_Update", function(self)
	if self.unit == "player" then
		self.portrait:SetTexture("Interface\\Addons\\ClassPortraits\\MYSKIN")
		return
	elseif self.unit == "pet" then
		return
	end

	if self.portrait then
		if UnitIsPlayer(self.unit) then
			local t = CLASS_ICON_TCOORDS[select(2,UnitClass(self.unit))]
			if t then
				self.portrait:SetTexture(iconPath)
				self.portrait:SetTexCoord(unpack(t))
			end
		else
			self.portrait:SetTexCoord(0,1,0,1)
		end
	end
end)

-- character sheet frame
CharacterFrame:HookScript("OnShow", function()
    UpdatePortrait(CharacterFramePortrait, "player")
    ScaleUIPortraitOnly(CharacterFramePortrait, 1.03)
end)


CharacterFrame:HookScript("OnEvent", function(self, event)
   if event == "UNIT_PORTRAIT_UPDATE" then
      UpdatePortrait(CharacterFramePortrait, "player")
   end
end)

local addonLoadEvent = CreateFrame("frame")
addonLoadEvent:RegisterEvent("ADDON_LOADED")
addonLoadEvent:SetScript("OnEvent", function(self, e, addon)

   -- talent frame
   if addon == "Blizzard_TalentUI" then
    hooksecurefunc(PlayerTalentFrame, "updateFunction", function()
        UpdatePortrait(PlayerTalentFramePortrait, PlayerTalentFrame.unit or "player")
        ScaleUIPortraitOnly(PlayerTalentFramePortrait, 1.02)
    end)
    hooksecurefunc("PlayerTalentFrame_OnEvent", function()
        if event == "UNIT_PORTRAIT_UPDATE" and UnitIsUnit(arg1, "player") then
            UpdatePortrait(PlayerTalentFramePortrait, "player")
            ScaleUIPortraitOnly(PlayerTalentFramePortrait, 1.02)
        end
    end)
    return
end

   -- inspect frame
   if addon == "Blizzard_InspectUI" then
      InspectFrame:HookScript("OnShow", function()
         UpdatePortrait(InspectFramePortrait, InspectFrame.unit)
      end)
      hooksecurefunc("InspectFrame_UnitChanged", function()
         UpdatePortrait(InspectFramePortrait, InspectFrame.unit)
      end)
        hooksecurefunc("InspectFrame_OnEvent", function(event)
         if event == "UNIT_PORTRAIT_UPDATE" and InspectFrame.unit == arg1 then
            UpdatePortrait(InspectFramePortrait, arg1)
         end
      end)
      return
   end
end)

-- ===== New robust portrait finding / hooking code (for Spellbook, Quest Log, Friends, etc.) =====

-- helper: find the first texture-like region for a frame
local function FindPortraitRegion(frame)
    if not frame or not frame.GetRegions then return nil end
    local regions = { frame:GetRegions() }
    for _, region in ipairs(regions) do
        if region and region.GetObjectType and region:GetObjectType() == "Texture" then
            -- accept it if it can be manipulated like a texture
            if region.SetTexture or region.SetTexCoord or region.SetAlpha then
                return region
            end
        end
    end
    return nil
end

-- safer UpdatePortrait for frames that we discover by searching
local function SafeUpdatePortrait(frameOrTexture, unit)
    local texture = frameOrTexture
    if type(frameOrTexture) == "table" and frameOrTexture.GetObjectType and frameOrTexture:GetObjectType() ~= "Texture" then
        -- it's a frame, try to find its portrait region
        texture = _G[frameOrTexture:GetName() .. "Portrait"] or FindPortraitRegion(frameOrTexture)
    elseif type(frameOrTexture) == "string" then
        local f = _G[frameOrTexture]
        if f then
            texture = _G[f:GetName() .. "Portrait"] or FindPortraitRegion(f)
        end
    end

    if not texture or not texture.SetTexture then
        return
    end

    local _, class = UnitClass(unit)
    local iconCoords = CLASS_BUTTONS[class] or CLASS_ICON_TCOORDS[class]
    if iconCoords and #iconCoords >= 4 then
        texture:SetTexture(iconPath, true)
        texture:SetTexCoord(unpack(iconCoords))
    end
end

-- Hook a frame (object or name) so its portrait will be updated when available / shown
local function HookPortraitForFrame(frameOrName)
    local f = frameOrName
    if type(frameOrName) == "string" then
        f = _G[frameOrName]
    end
    if not f then return end

    -- apply immediately if portrait is present
    local portrait = _G[f:GetName() .. "Portrait"] or FindPortraitRegion(f)
    if portrait then
        SafeUpdatePortrait(portrait, "player")
    end

    -- hook OnShow to update when shown (covers lazy-created or recreated regions)
    f:HookScript("OnShow", function(self)
        local p = _G[self:GetName() .. "Portrait"] or FindPortraitRegion(self)
        if p then
            SafeUpdatePortrait(p, "player")
        end
    end)
end

-- Try to hook immediately for frames that may already exist
if SpellBookFrame then HookPortraitForFrame(SpellBookFrame) end
if QuestLogFrame then HookPortraitForFrame(QuestLogFrame) end
if FriendsFrame then HookPortraitForFrame(FriendsFrame) end

-- also wait for addon load events for Blizzard UI pieces that create those frames
local loader = CreateFrame("Frame")
loader:RegisterEvent("ADDON_LOADED")
loader:SetScript("OnEvent", function(self, _, addon)
    if addon == "Blizzard_SpellbookUI" or addon == "Blizzard_SpellBook" or addon == "Blizzard_Spellbook" then
        if SpellBookFrame then HookPortraitForFrame(SpellBookFrame) end
    end
    if addon == "Blizzard_QuestLog" or addon == "Blizzard_QuestFrame" or addon == "Blizzard_QuestUI" then
        if QuestLogFrame then HookPortraitForFrame(QuestLogFrame) end
    end
    if addon == "Blizzard_SocialUI" or addon == "Blizzard_Friends" then
        if FriendsFrame then HookPortraitForFrame(FriendsFrame) end
    end
end)

-- PVP frame hook (Gemini-pilled for 2.5.5)
PVPFrame:HookScript("OnShow", function() C_Timer.After(0.01, function() if PVPFramePortrait then
PVPFramePortrait:SetTexture("Interface\\Addons\\ClassPortraits\\MYSKIN") end end) end)

-- LFD doesnt exist in TBC (left commented)
--LFDParentFrame:HookScript("OnShow", function()
--    LFDParentFramePortraitIcon:SetTexture("Interface\\Addons\\ClassPortraits\\MYSKIN")
--    LFDParentFramePortraitTexture:SetAlpha(0)
--end)
