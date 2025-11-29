--[[
Name: Ability Team Tracker
Author: Izy
Contact: mediaizy@gmail.com
Support @ curseforge.com/wow/addons/att
Description: Track the cooldowns of your party members
--]]

local _G = _G
local addon, ATTdbs = ...
local pairs = pairs
local UnitClass = UnitClass
local UnitGUID = UnitGUID
local IsInInstance = IsInInstance
local IsInGroup = IsInGroup
local IsInRaid = IsInRaid
local UnitRace = UnitRace
local CooldownFrame_Set = CooldownFrame_Set
local GetPvpTalentInfoByID = GetPvpTalentInfoByID
local GetSpecialization = GetSpecialization
local GetSpecializationInfo = GetSpecializationInfo
local GetInspectSpecialization = GetInspectSpecialization
local ClearInspectPlayer = ClearInspectPlayer
local GetInventoryItemLink = GetInventoryItemLink
local GetItemInfoInstant = C_Item.GetItemInfoInstant
local UnitIsDead = UnitIsDead
local UnitIsTrivial = UnitIsTrivial
local CanInspect = CanInspect
local UnitIsConnected = UnitIsConnected
local CheckInteractDistance = CheckInteractDistance
local InspectFrame = _G.InspectFrame
local GetNumGroupMembers = GetNumGroupMembers
local UnitTokenFromGUID = UnitTokenFromGUID
local GetInspectSelectedPvpTalent = C_SpecializationInfo.GetInspectSelectedPvpTalent
local LGlows = ATTdbs.LibATTButtonGlow
local GameTooltip = GameTooltip
local SO = ATTdbs.LibSimpleOptions
local ChatPrefix = "ATT-Check"
local IsAddOnLoaded = IsAddOnLoaded and IsAddOnLoaded or C_AddOns.IsAddOnLoaded
local ATTversion = GetAddOnMetadata and GetAddOnMetadata("ATT", "Version") or C_AddOns.GetAddOnMetadata("ATT", "Version") 
local db
local selectedDB
local dbModif = ATTdbs.dbModif
local dbModif2 = ATTdbs.dbModif2
local dbModif3 = ATTdbs.dbModif3
local dbReducePowerSpell = ATTdbs.dbReducePowerSpell
local dbRacials = ATTdbs.dbRacials
local dbImport = ATTdbs.dbImport
local dbReplace = ATTdbs.dbReplace
local isStun = ATTdbs.isStun
local dbAuraRemoved = ATTdbs.dbAuraRemoved
local dbAuraApplied = ATTdbs.dbAuraApplied
local dbModifCharge = ATTdbs.dbModifCharge
local dbTrinkets = ATTdbs.dbTrinkets
local dbTrinketsMerge = ATTdbs.dbTrinketsMerge
local dbisPVPspell = ATTdbs.isPVPspell
local itemBonus = ATTdbs.dbItemBonus
local setBonus = ATTdbs.dbSetBonus
local dispelSpells = ATTdbs.dispelSpells
local cooldownResetters = ATTdbs.cooldownResetters
local validPartyUnits = ATTdbs.validPartyUnits
local validRaidUnits = ATTdbs.validRaidUnits
local customframes = ATTdbs.customframes
local INVSLOTS = ATTdbs.INVSLOTS
local L = ATTdbs.enUS

local ATT = CreateFrame("Frame", "ATT", UIParent)
local ATTIcons = CreateFrame("Frame", nil, UIParent)
local ATTAnchor = CreateFrame("Frame", nil, UIParent)
ATTAnchor:SetFrameLevel(ATTAnchor:GetFrameLevel() + 5)
ATTIcons:SetFrameLevel(ATTIcons:GetFrameLevel() + 5)

local ATTOnUpdateFrame = CreateFrame("Frame")
local NotifyInspect = NotifyInspect

local GetSpellInfo = GetSpellInfo or function(spellID)
	local spellInfo = C_Spell.GetSpellInfo(spellID)
	if spellInfo then
		return spellInfo.name, spellInfo.rank, spellInfo.iconID,  spellInfo.castTime, spellInfo.minRange, spellInfo.maxRange, spellInfo.spellID, spellInfo.originalIconID
	end
end

local UnitDebuff = UnitDebuff or function(unit, i)
    local aura = C_UnitAuras.GetDebuffDataByIndex(unit, i)
	if aura then
		return aura.name, aura.icon, aura.count, aura.dispelType,  aura.duration, aura.expirationTime, aura.source, aura.isStealable, aura.nameplateShowPersonal, aura.spellId, aura.canApplyAura, aura.isBossDebuff, aura.castByPlayer, aura.nameplateShowAll, aura.timeMod
	end
end


local anchors = {}
local activeGUIDS = {}
local activeBUFFS = {}
local activeAURAS = {}
local syncChache = {}

-- Player Inspect
local inspect_queue = {}
local dbInspect = {}
local dbInspectGear = {}
local hookedFrames = {}
ATTdbs.UnitIDCache = {}

-- Info spells
local PlayerGUID = UnitGUID("player")

local function print(...)
    for i = 1, select('#', ...) do
        ChatFrame1:AddMessage("|cff33ff99ATT|r: " .. select(i, ...))
    end
end

local function localeFunc()
    local getLocale = GetLocale()
    if ATTDB.useEnglish then
        L = ATTdbs.enUS
    elseif ATTdbs[getLocale] then
        L = ATTdbs[getLocale]
    else
        L = ATTdbs.enUS
    end

    local function defaultFuncLoc(L, key)
        return key;
       end
    setmetatable(L, {__index=defaultFuncLoc});
end

function ATT:UpdateUnitIDCache()
    ATTdbs.UnitIDCache = {}
    local validUnits = ATT.inRaid and validRaidUnits or validPartyUnits
    for k, v in pairs(validUnits) do
        local guid = UnitGUID(k)
        if guid then 
            ATTdbs.UnitIDCache[guid] = {k,v}
            local unitName = GetUnitName(k, true)
            ATTdbs.UnitIDCache[unitName] = k
         end
    end

    --clean old inspects
    for guid, info in pairs(dbInspect) do
       local unitInGroup = ATTdbs.UnitIDCache[guid]
       if not unitInGroup and dbInspect[guid] then
        dbInspect[guid] = nil
        dbInspectGear[guid] = nil
        syncChache[guid] = nil
       end
    end
end

local function getIconCharges(icon)
    local charges = icon.chargesText:GetText() and icon.chargesText:GetText():match("^[0-9]+$")
    if charges then
        return tonumber(charges)
    end
end

function ATT:ShowGlow(icon, duration)
    if not icon then return end
    icon.glowDuration = duration

    icon.cd:SetDrawSwipe(false)
    icon.cd:SetHideCountdownNumbers(true);
    if ATTDB.oldGlow then 
        LGlows.ShowOverlayGlow2(icon)
    else
        icon.SpellActivationAlert:Show()
        icon.SpellActivationAlert.ProcStartAnim:Play()
    end
end

function ATT:HideGlow(icon)
    if not icon then return end

    if ATTDB.oldGlow then 
        LGlows.HideOverlayGlow2(icon)
    else
        if icon.SpellActivationAlert.ProcStartAnim:IsPlaying() then
            icon.SpellActivationAlert.ProcStartAnim:Stop()
        end
    
        if icon.SpellActivationAlert.ProcLoop:IsPlaying() then
            icon.SpellActivationAlert.ProcLoop:Stop()
        end 
        icon.SpellActivationAlert:Hide()
    end

    local charges = icon.maxcharges and getIconCharges(icon)

        if not charges or (charges and charges == 0) then
            icon.cd:SetDrawSwipe(true)
            icon.cd:SetHideCountdownNumbers(false)
        else
            icon.cd:SetHideCountdownNumbers(true)
            icon.cd:SetDrawSwipe(false)
        end

    icon.glowDuration = nil
end

function ATT:GetUnitByGUID(guid)
    if not guid then return end
    local unit = ATTdbs.UnitIDCache[guid] and ATTdbs.UnitIDCache[guid][1]
    return unit
end

function ATT:GetAnchorByUnit(unit)
    if not unit or not (validRaidUnits[unit] or validPartyUnits[unit]) then 
        return 
    end
    
    local guid = UnitGUID(unit)
    local anchor = guid and ATTdbs.UnitIDCache[guid] and ATTdbs.UnitIDCache[guid][2]

    return anchors[anchor]
end


function ATT:QueueInspect(guid)
    if guid then
        for i = 1, #inspect_queue do
            if inspect_queue[i] == guid then
                return
            end
        end
        self.insStart = self.insStart or {}
        self.insStart[guid] = GetTime()
        inspect_queue[#inspect_queue + 1] = guid
    end
end

function ATT:DequeueInspectByGUID(guid)
    for i = 1, #inspect_queue do
        if inspect_queue[i] == guid then
            table.remove(inspect_queue, i)
        end
    end
end

function ATT:RequeueInspectByGUID(guid)
    for i = 1, #inspect_queue do
        if inspect_queue[i] == guid then
            table.remove(inspect_queue, i)
            inspect_queue[#inspect_queue + 1] = guid
        end
    end
end

function ATT:ProcessInspect(unit, guid, specInspect, gearInspect)
    -- Talent Check / Inspect
    if unit and specInspect and specInspect ~= "0" and specInspect ~= "nil" then
        local isInspect = (guid ~= PlayerGUID) and unit

        local ConfigID = isInspect and Constants.TraitConsts.INSPECT_TRAIT_CONFIG_ID or C_ClassTalents.GetActiveConfigID()
        local configInfo = tonumber(ConfigID) and C_Traits.GetConfigInfo(ConfigID)
       
        if not ConfigID or not configInfo then return end

        dbInspect[guid] = {}
        dbInspect[guid]["not"] = {}
        dbInspect[guid]["extraCharge"] = {}
       -- dbInspect[guid]["legeinfo"] = {}
        dbInspect[guid]["spec"] = tonumber(specInspect)
        activeBUFFS[guid] = activeBUFFS[guid] or {}


        for k = 1, 3 do
            local _, _, _, _, _, spellID = GetPvpTalentInfoByID((isInspect and GetInspectSelectedPvpTalent(unit, k) or C_SpecializationInfo.GetAllSelectedPvpTalentIDs()[k]) or 0)
            if ATT.isPVP and spellID then
                dbInspect[guid][spellID] = 1
            end
        end

        local allTalents = {}
       -- if specInspect == 261 then dbInspect[guid][185313] = 1 end --fix sdance sub

        for _, treeID in ipairs(configInfo.treeIDs) do -- in the context of talent trees, there is only 1 treeID
            local nodes = C_Traits.GetTreeNodes(treeID)
            for i, nodeID in ipairs(nodes) do
                local nodeInfo = C_Traits.GetNodeInfo(ConfigID, nodeID)
                for _, entryID in ipairs(nodeInfo.entryIDs) do -- each node can have multiple entries
                    local entryInfo = C_Traits.GetEntryInfo(ConfigID, entryID)

                    if entryInfo and entryInfo.definitionID then
                        local spellID = ATTdbs.dbTalentSpellFix[entryID] or C_Traits.GetDefinitionInfo(entryInfo.definitionID).spellID
                        local activeRank = nodeInfo.activeRank;
                        local activeEntry = nodeInfo.activeEntry and nodeInfo.activeEntry.entryID == entryID and true
                        if activeEntry and (nodeInfo.subTreeID and not nodeInfo.subTreeActive) then activeEntry = false end --FIX HERO

                        if spellID then
                            allTalents[entryInfo.definitionID] = {spellID, activeRank, activeEntry}
                        end
                    end
                end
            end
        end

        for definitionID, spellInfo in pairs(allTalents) do
             local spellID = spellInfo[1]
             local activeRank = spellInfo[2]
             local activeEntry = spellInfo[3]
             
             if activeEntry and activeRank > 0 then
                if ATTdbs.dbChargeSpellFix[spellID] and dbInspect[guid][spellID] then
                    dbInspect[guid]["extraCharge"][spellID] = true
                end
                dbInspect[guid][spellID] = activeRank
            end

            if (not activeEntry or activeRank == 0) and not dbInspect[guid][spellID] then
                --dbInspect[guid][spellInfo[1]] = 0
                dbInspect[guid]["not"][spellID] = true
           end
        end

       wipe(allTalents)
    end
    --	tooltipData = C_TooltipInfo.GetInventoryItem(unit, slotID)
    --local tooltipData = C_TooltipInfo.GetUnit("player")
    -- Lege / trinket check
    if gearInspect then
        dbInspectGear[guid] = {}
        for k = 13, 14 do
            local itemLink = GetInventoryItemLink(unit, INVSLOTS[k])
            local itemID = itemLink and GetItemInfoInstant(itemLink)

            if itemID then
                if dbTrinketsMerge[itemID] then itemID = dbTrinketsMerge[itemID] end
                dbInspect[guid][itemID] = 1
                dbInspectGear[guid][itemID] = 1
            end
        end

        for k = 1, 12 do
            local itemLink = GetInventoryItemLink(unit, INVSLOTS[k])
            local itemID = itemLink and GetItemInfoInstant(itemLink)

            if itemID then
                local hasItemBonus = itemBonus[itemID]
                if hasItemBonus then
                    dbInspect[guid][hasItemBonus] = 1
                    dbInspectGear[guid][hasItemBonus] = 1
                end
                local hasSetBonus = setBonus[itemID]
                if hasSetBonus then
                    dbInspect[guid][hasSetBonus] = dbInspect[guid][hasSetBonus] and (dbInspect[guid][hasSetBonus] + 1) or 1
                    dbInspectGear[guid][hasSetBonus] = dbInspect[guid][hasSetBonus] and (dbInspect[guid][hasSetBonus] + 1) or 1
                end
            end
        end
    else
        if dbInspectGear[guid] then
            for itemID, value in pairs (dbInspectGear[guid]) do
                dbInspect[guid][itemID] = value
            end
        end
    end
    self:UpdateIcons()
     
    if syncChache[guid] then
        local anchor = self:GetAnchorByUnit(unit)
        local syncSpells = syncChache[guid]
        if next(syncSpells) and anchor then
            for k, icon in pairs(anchor.icons) do
                if syncSpells[icon.abilityID] then
                    self:ProcessSync(anchor, icon.abilityID, syncSpells[icon.abilityID], unit)
                end
            end
        end
        syncChache[guid] = nil
    end
end


function ATT:InspectPlayer()
    self:UpdateUnitIDCache()
    self:ApplyAnchorSettings()

    local _, type = IsInInstance()
    ATT.inRaid =  (IsInRaid() and type ~= "arena") or C_PvP.IsInBrawl()
    ATT.isPVP = (C_PvP.IsWarModeDesired() and type == "none") or (type == "arena") or (type == "pvp")
    local currentSpec = GetSpecialization()
    local specInspect = currentSpec and GetSpecializationInfo(currentSpec)
    local unit = self:GetUnitByGUID(PlayerGUID)
    if unit then self:ProcessInspect(unit, PlayerGUID, specInspect, true) end
end
 
local function itemsReadyCheck(unit)
    if not unit then return end
    for k = 13, 14 do
        local itemLink = GetInventoryItemLink(unit, INVSLOTS[k])
        if not itemLink then return end
    end
    return true
 end

function ATT:InspectIsReady(guid, unit)
    local itemsReady = itemsReadyCheck(unit)
    local specInspect = unit and GetInspectSpecialization(unit)

    if guid and unit and guid ~= PlayerGUID and specInspect then
        if itemsReady then self:DequeueInspectByGUID(guid) else self:RequeueInspectByGUID(guid)  end
        self:ProcessInspect(unit, guid, specInspect, itemsReady)
    end
    
    ClearInspectPlayer()
end

function ATT:EnqueueInspect(isUpdate)
    if not self.insEnabled then self:RegisterEvent("INSPECT_READY") self.insEnabled = true end

    local groupSize = GetNumGroupMembers() < self.groupSize and GetNumGroupMembers() or self.groupSize

    for i = 1, groupSize do --inRaidGr
        local unit = (ATT.inRaid and "raid" .. i) or ("party" .. i)
        local guid = UnitGUID(unit)
        if guid and guid ~= PlayerGUID then
            if isUpdate then
                if not dbInspect[guid] or (dbInspect[guid] and not dbInspect[guid]["spec"]) then
                    self:QueueInspect(guid)
                end -- here
            else
                self:QueueInspect(guid)
            end
        end
    end
    self.elapsedTime = -0.6
end

function ATT:ProcessInspectQueue()
    if UnitIsDead("player") or (InspectFrame and InspectFrame:IsShown()) then return end

    local cTime = GetTime()
    self.insTime = self.insTime or {}
    self.insStart = self.insStart or {}
    for i, guid in pairs(inspect_queue) do
        local unit = self:GetUnitByGUID(guid)
        if not unit or (unit and (not UnitIsConnected(unit) or (self.insStart[guid]and self.insStart[guid] + 120 < cTime))) then --here
            self:DequeueInspectByGUID(guid)
            break
        end   

        if unit and not (InspectFrame and InspectFrame:IsShown()) and UnitIsConnected(unit) and CanInspect(unit) and (not self.insTime[guid] or self.insTime[guid] + 2 < cTime) then
            self.lastIns = guid
            self.insTime[guid] = cTime
            NotifyInspect(unit)
            break
        end
    end
end

function ATT:INSPECT_READY(guid)
    if (InspectFrame and InspectFrame:IsShown()) then
        return
    end

    local unit = self:GetUnitByGUID(guid)
    
    if unit and self.lastIns == guid then 
         self.lastIns = nil
         self:InspectIsReady(guid, unit)
    end

    if #inspect_queue == 0 and self.insEnabled then 
        self:UnregisterEvent("INSPECT_READY") 
        self.insEnabled = false 
        self.insTime = {} 
        self.insStart = {}
        --print("ENDED")
    end
end

function ATT:SavePositions()
    for k, anchor in ipairs(anchors) do
        local scale = anchor:GetEffectiveScale()
        local worldscale = UIParent:GetEffectiveScale()
        local x = anchor:GetLeft() * scale
        local y = (anchor:GetTop() * scale) - (UIParent:GetTop() * worldscale)
        if not db.positions[k] then
            db.positions[k] = {}
        end
        db.positions[k].x = x
        db.positions[k].y = y
    end
end

function ATT:CheckBlizzFrames()
    local compact = EditModeManagerFrame:UseRaidStylePartyFrames()
    local UseCombinedGroups = CompactRaidFrameContainer:UseCombinedGroups()

    local frametype = nil

    if ATT.inRaid then
        if compact and _G["CompactPartyFrameMember1"] and _G["CompactPartyFrameMember1"]:IsVisible() then
            frametype = "CompactPartyFrameMember%d"
        else
            if UseCombinedGroups then
                frametype = "CompactRaidFrame%d"
            else
                frametype = "CompactRaidGroup1RGMember%d"
            end
        end
    else
        if compact and _G["CompactPartyFrameMember1"] and _G["CompactPartyFrameMember1"]:IsVisible() then
            frametype = "CompactPartyFrameMember%d"
        else
            frametype = "PartyMemberFrame%d"
        end
    end

    return frametype
end

function ATT:FindFrames()
    hookedFrames = {}
    local frametype = nil
    local cunit = nil

    if db.attach == 1 and ATT_DropDown1 and ATT_DropDown1.values[7] then
        frametype = customframes[ATT_DropDown1.values[7]].cframe
        cunit = customframes[ATT_DropDown1.values[7]].cunitid
    else
        if db.attach == 1 or db.attach == 2 then
            frametype = self:CheckBlizzFrames()
        elseif db.attach and db.attach > 2 and customframes[db.attach] then
            frametype = customframes[db.attach].cframe
            cunit = customframes[db.attach].cunitid
        end
    end

    if not frametype then
        return
    end

    local isGrouped = string.find(frametype, "1RG")
    if isGrouped then
        for k = 1, 8 do
            local framename = string.gsub(frametype, "1RG", k)
            for i = 1, 5 do
                local name = format(framename, i)
                local frame = _G[name]
                local unit = frame and (cunit and frame[cunit] or frame['unit'])
                local guid = unit and UnitGUID(unit)
                if guid and not frame:IsForbidden() and frame:IsShown() then
                    hookedFrames[guid] = frame
                end
            end
        end
    else
        if frametype == "CompactPartyFrameMember%d" then
            for i = 1, 5 do
                local name = "CompactPartyFrameMember" .. i
                local frame = _G[name]
                local unit = frame and (cunit and frame[cunit] or frame['unit'])
                local guid = unit and UnitGUID(unit)
                if guid and not frame:IsForbidden() and frame:IsShown() then
                    hookedFrames[guid] = frame
                end
            end
        elseif frametype == "PartyMemberFrame%d" then
            if PlayerGUID and _G["PlayerFrame"] and _G["PlayerFrame"]:IsShown() then hookedFrames[PlayerGUID] = _G["PlayerFrame"] end
            for frame in PartyFrame.PartyMemberFramePool:EnumerateActive() do
                local unit = frame:GetUnit()
                local guid = unit and UnitGUID(unit)
                if guid and not frame:IsForbidden() and frame:IsShown() then
                    hookedFrames[guid] = frame
                end
            end
        else
            for i = 1, 40 do
                local name = format(frametype, i)
                local frame = _G[name]
                local unit = frame and (cunit and frame[cunit] or frame['unit'])
                local guid = unit and UnitGUID(unit)
                if guid and not frame:IsForbidden() and frame:IsShown() then
                    hookedFrames[guid] = frame
                end
            end
        end
    end
    if PlayerGUID and _G["PlayerFrame"] and (not hookedFrames[PlayerGUID] or (hookedFrames[PlayerGUID] and not hookedFrames[PlayerGUID]:IsVisible() and GetNumGroupMembers() == 0)) then
        hookedFrames[PlayerGUID] = _G["PlayerFrame"]
    end

    --print(frametype)
end

function ATT:UpdatePositions()
    db.positions = db.positions or {}
    self:FindFrames()

    for k, anchor in ipairs(anchors) do
        anchors[k]:ClearAllPoints()
        anchors[k]:SetScale(db.anchorScale or 1)
        local scale = anchors[k]:GetEffectiveScale()
        local offsetX = db.offsetX / scale
        local offsetY = db.offsetY / scale

        local unit = (ATT.inRaid and "raid" .. k) or ((k == 5 and "player") or (k ~= 5 and "party" .. k))
        local anchorGuid = unit and UnitGUID(unit)
        local raidFrame =  hookedFrames[anchorGuid]

        if anchor.GUID == PlayerGUID and db.selfAttach then raidFrame = nil end

        if raidFrame and db.attach and db.attach ~= 0 then
            if not db.attachPos or db.attachPos == 0  then
                  anchors[k]:SetPoint("BOTTOMLEFT", raidFrame, "TOPLEFT", offsetX, offsetY) --anchorTOPLEFT
            elseif db.attachPos == 1 then
                  anchors[k]:SetPoint("BOTTOMRIGHT", raidFrame, "TOPRIGHT",  offsetX, offsetY) --anchorTOPRIGHT
            elseif db.attachPos == 2 then
                  anchors[k]:SetPoint("TOPLEFT", raidFrame, "BOTTOMLEFT", offsetX, offsetY) --anchorBOTTOMLEFT
            elseif db.attachPos == 3 then
                    anchors[k]:SetPoint("TOPRIGHT", raidFrame, "BOTTOMRIGHT", offsetX, offsetY) --anchorBOTTOMRIGHT
            elseif db.attachPos == 4 then
               anchors[k]:SetPoint("CENTER", raidFrame, "LEFT", offsetX, offsetY) --anchorCENTERLEFT
            elseif db.attachPos == 5 then
               anchors[k]:SetPoint("CENTER", raidFrame, "RIGHT", offsetX, offsetY) --anchorCENTERRIGHT
            else
                anchors[k]:SetPoint("BOTTOMLEFT", raidFrame, "TOPLEFT", offsetX, offsetY) --anchorTOPLEFT
        end

        else
            if db.positions[k] then
                local x = db.positions[k].x / scale
                local y = db.positions[k].y / scale 
                anchors[k]:SetPoint("TOPLEFT", UIParent, "TOPLEFT", x  , y )
            else
                anchors[k]:SetPoint("CENTER", UIParent, "CENTER")
            end
        end
    end
end

function ATT:CreateAnchors()
    for i = 1, 40 do
        local anchor = CreateFrame("Frame", "ATTAnchor" .. i, ATTAnchor, BackdropTemplateMixin and "BackdropTemplate, TooltipBackdropTemplate") --GlowBoxTemplate
        anchor:SetSize(24, 22)
        anchor:EnableMouse(true)
        anchor:SetMovable(true)
        anchor.text = anchor:CreateFontString("text", "ARTWORK", "GameFontNormalSmall")
        anchor.text:SetSize(18, 18)
        anchor.text:SetPoint("CENTER")
        anchor.text:SetText(i)
        --anchor:Show()
        anchor.icons = {}
        anchor.StopAllIcons = function(flag)
            if anchor.GUID then activeBUFFS[anchor.GUID] = {} ; activeAURAS[anchor.GUID] = {}; activeGUIDS[anchor.GUID] = {} end
            for k, icon in ipairs(anchor.icons) do
                if flag ~= "raidstop" or (flag == "raidstop" and icon.cooldown and icon.cooldown >= 120) then
                    icon.Stop();
                    icon.seen = nil
                end
            end
        end
        anchor.StopAllGlow = function(flag)
            for k, icon in ipairs(anchor.icons) do
               -- LGlows.HideOverlayGlow2(icon)
               ATT:HideGlow(icon)
            end
        end
        anchor:SetScript("OnMouseDown",
            function(self, button)
                if button == "LeftButton" and db.attach == 0 or
                    (anchor.GUID == PlayerGUID and db.selfAttach) then
                    self:StartMoving();
                end
            end)
        anchor:SetScript("OnMouseUp",
            function(self, button)
                if button == "LeftButton" and db.attach == 0 or
                    (anchor.GUID == PlayerGUID and db.selfAttach) then
                    self:StopMovingOrSizing();
                    ATT:SavePositions()
                end
            end)
        
        anchors[i] = anchor
        anchors[i]:Hide()
    end
end

local function CreateIcon(anchor)
    local icon = CreateFrame("Frame", anchor:GetName() .. "Icon" .. (#anchor.icons + 1), ATTIcons, "ATTButtonTemplate")
    icon:SetSize(40, 40)
    icon:SetAlpha(db.iconAlpha or 1)
    
    local cd = CreateFrame("Cooldown", icon:GetName() .. "Cooldown", icon, "CooldownFrameTemplate")
    cd:SetHideCountdownNumbers(false)
    icon.cd = cd
--
    local SpellActivationAlert = CreateFrame("Frame", icon:GetName() .. "ATTAlert", cd, "ATTActivationAlert");
    icon.SpellActivationAlert = SpellActivationAlert

	--Make the height/width available before the next frame:
	local frameWidth, frameHeight = icon:GetSize();
	icon.SpellActivationAlert:SetSize(frameWidth * 1.5, frameHeight * 1.5);
	icon.SpellActivationAlert:SetPoint("CENTER", icon, "CENTER", 0, 0);
	icon.SpellActivationAlert:Hide();
--
    icon.Start = function(sentCD, nextcharge, rate)
       -- if activeBUFFS[guid] and activeBUFFS[guid][icon.abilityID] then return end
       if activeBUFFS[icon.GUID] and activeBUFFS[icon.GUID][icon.abilityID] then return end --freeprocs
       local cTime = GetTime()

        if icon.raterecovery then --and not icon.excluded
            rate = icon.raterecovery
            cTime = cTime * (1 - rate) + cTime * rate
            sentCD = sentCD * rate
            icon.cdrecovery = sentCD
        end
        icon.texture:SetVertexColor(1, 1, 1)

       -- local chargesText = icon.chargesText:GetText() and icon.chargesText:GetText():match("^[0-9]+$")
       -- local charges = chargesText and tonumber(chargesText)
        local charges = icon.maxcharges and getIconCharges(icon)
        if icon.maxcharges and charges then
            if charges == icon.maxcharges or nextcharge == icon.maxcharges then
                CooldownFrame_Set(cd, cTime, sentCD, true, true, rate)
                cd:SetHideCountdownNumbers(true)
                cd:SetDrawSwipe(false)
                icon.starttime = cTime
                charges = charges - 1
                icon.chargesText:SetText(charges)
            elseif charges < icon.maxcharges and nextcharge == 5 then
                CooldownFrame_Set(cd, cTime, sentCD, true, true, rate)
                cd:SetHideCountdownNumbers(true)
                cd:SetDrawSwipe(false)
                icon.starttime = cTime
                icon.chargesText:SetText(charges)
            elseif charges > 1 and nextcharge == 1 and icon.starttime < cTime and charges < icon.maxcharges then
                charges = charges - 1
                icon.chargesText:SetText(charges)
            elseif charges == 1 and nextcharge == 1 and icon.starttime < cTime then
                if not icon.glowDuration then cd:SetHideCountdownNumbers(false) end
                cd:SetDrawEdge(true)
                cd:SetDrawSwipe(true)
                charges = charges - 1
                icon.chargesText:SetText(charges)
            end
        else
            CooldownFrame_Set(cd, cTime, sentCD, true, false, rate)
            icon.starttime = cTime
        end

        icon:Show()
        icon.active = true;
        icon.FlashAnim:Play()


        activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
        activeGUIDS[icon.GUID][icon.abilityID] = activeGUIDS[icon.GUID][icon.abilityID] or {}
        activeGUIDS[icon.GUID][icon.abilityID].chargeleft = charges
        activeGUIDS[icon.GUID][icon.abilityID].starttime = icon.starttime
        activeGUIDS[icon.GUID][icon.abilityID].cooldown = sentCD
        if db.hidden then ATT:ToggleDisplay(anchor, icon.GUID) end
        if icon.ability and icon.abilityID and anchor.spec and nextcharge ~= 5 then
            if db.alertCD[anchor.spec][icon.abilityID] then PlaySound(8959, "Master"); end
            if db.alertCDtext[anchor.spec][icon.abilityID] then
                local playername = select(6, GetPlayerInfoByGUID(icon.GUID))
                if playername then
                    UIErrorsFrame:AddMessage("|T" .. icon.texture:GetTexture() ..":18|t |cffFF4500" .. icon.ability .. "|r  - used by ->>  |cffFF4500" .. playername .. "|r");
                end
            end
        end
    end

    icon.Stop = function()
        if icon.glowDuration then
           -- LGlows.HideOverlayGlow2(icon)
           ATT:HideGlow(icon)
        end
        CooldownFrame_Set(cd, 0, 0, 0);
        icon.starttime = 0

        if icon.inUse then
            activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
            activeGUIDS[icon.GUID][icon.abilityID] = activeGUIDS[icon.GUID][icon.abilityID] or {}
            activeGUIDS[icon.GUID][icon.abilityID].starttime = icon.starttime
            activeGUIDS[icon.GUID][icon.abilityID].cooldown = icon.cooldown
        end

        if icon.inUse and db.hidden then ATT:ToggleDisplay(anchor, icon.GUID) end

        if icon.inUse and icon.maxcharges then 
            icon.chargesText:SetText(icon.maxcharges) 
            if activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] then
                activeGUIDS[icon.GUID][icon.abilityID].chargeleft = icon.maxcharges
            end
        end
    end

    icon.SetTimer = function(starttime, cooldown, rate, isRate, charges, isSync)
       if activeBUFFS[icon.GUID] and activeBUFFS[icon.GUID][icon.abilityID] then return end --freeprocs
        
       local charges = icon.maxcharges and (charges or getIconCharges(icon))

        if icon.raterecovery and icon.inUse and not isRate then
             rate = icon.raterecovery
          if isSync then 
            starttime = GetTime() * (1 - rate) + icon.starttime * rate
          else 
             starttime = icon.starttime - ((icon.starttime - starttime) * rate)
          end
             cooldown = icon.cooldown * rate
        end

        if icon.inUse then
            icon.texture:SetVertexColor(1, 1, 1)
            CooldownFrame_Set(cd, starttime, cooldown, true, false, rate)
            icon.active = true
            icon.starttime = starttime
 
            activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
            activeGUIDS[icon.GUID][icon.abilityID] = activeGUIDS[icon.GUID][icon.abilityID] or {}
            activeGUIDS[icon.GUID][icon.abilityID].starttime = icon.starttime
            activeGUIDS[icon.GUID][icon.abilityID].cooldown = cooldown

            if charges then
            icon.chargesText:SetText(charges)
            cd:SetDrawEdge(true)
            
            if charges and charges == 0 then
                cd:SetDrawSwipe(true)
                if not icon.glowDuration then cd:SetHideCountdownNumbers(false) end
            else
                if not icon.glowDuration then cd:SetHideCountdownNumbers(true) end
                cd:SetDrawSwipe(false)
            end
            activeGUIDS[icon.GUID][icon.abilityID].chargeleft = charges
        end

            if icon.inUse and db.hidden then ATT:ToggleDisplay(anchor, icon.GUID) end
        end
    end

    icon.SetOldTimer = function(starttime, cooldown, rate, isRate, charges)
        if icon.raterecovery or not icon.inUse then
            return
        end
        local charges = icon.maxcharges and (charges or getIconCharges(icon))

        icon.texture:SetVertexColor(1, 1, 1)
        CooldownFrame_Set(cd, starttime, cooldown, true, false, rate)

        if charges then
            icon.chargesText:SetText(charges)
            cd:SetDrawEdge(true)
            if charges and charges == 0 then
                cd:SetDrawSwipe(true)
                cd:SetHideCountdownNumbers(false)
            else
                cd:SetHideCountdownNumbers(true)
                cd:SetDrawSwipe(false)
            end
            activeGUIDS[icon.GUID][icon.abilityID].chargeleft = charges
        end
        icon.active = true
        icon.starttime = starttime
    end

    local texture = icon:CreateTexture(nil, "ARTWORK")
    texture:SetAllPoints(true)
    icon.texture = texture

    ATT:ApplyIconTextureBorder(icon)

    icon.chargesText = icon:CreateFontString(nil, "OVERLAY", "DialogButtonHighlightText")
    icon.chargesText:SetTextColor(1, 1, 1)
    icon.chargesText:SetText("")
    icon.chargesText:SetFont(GameFontNormal:GetFont(), 12, "OUTLINE")
    icon.chargesText:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", -2, 3)

    -- tooltip:
    if not db.showTooltip then
        icon:EnableMouse(false)
    end

    icon:SetScript('OnEnter', function()
        if db.showTooltip and icon.abilityID then
            local tooltip = Spell:CreateFromSpellID(icon.abilityID)
            tooltip:ContinueOnSpellLoad(function()
                GameTooltip:ClearLines();
                GameTooltip:SetOwner(WorldFrame, "ANCHOR_CURSOR")
                GameTooltip:SetSpellByID(icon.abilityID)
                GameTooltip:AddLine("Spell ID: " .. icon.abilityID .. " - iCD: " .. icon.cooldown .. " sec", 1, 1, 1)
                GameTooltip:SetPadding(16, 0)
                -- GameTooltip:SetAlpha(db.iconAlpha or 1)
                GameTooltip:Show()
            end)
            icon:EnableMouse(true)
        end
    end)

    icon:SetScript('OnLeave', function()
        if db.showTooltip and icon.abilityID then
            GameTooltip:ClearLines()
            GameTooltip:Hide()
            icon:EnableMouse(true)
        end
    end)

    icon.cd:SetScript("OnCooldownDone", function()
        local charges = icon.maxcharges and getIconCharges(icon)
        if icon.active and icon.cooldown then
            if activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] then
                activeGUIDS[icon.GUID][icon.abilityID] = nil
            end
            icon.active = nil
        end

        if icon.maxcharges and charges and icon.inUse then
            local newCharges = math.min(icon.maxcharges, charges + 1) --update
            icon.chargesText:SetText(newCharges or icon.maxcharges)
            if newCharges and (newCharges < icon.maxcharges) then
                  icon.Start(icon.cooldown, 5, icon.raterecovery)
            end
        end

        if icon.inUse and db.hidden then
            ATT:ToggleDisplay(anchor, icon.GUID)
        end
        if icon.glowDuration then
            --LGlows.HideOverlayGlow2(icon)
            ATT:HideGlow(icon)
        end
        if icon.inUse then icon.endtime = GetTime() end
    end)

    local Masque, MSQ_Version = LibStub("Masque", true)
    if Masque and MSQ_Version then
        icon.MasqueGroup = Masque:Group("Ability Team Tracker")
        icon.MasqueGroup:AddButton(icon, {
            FloatingBG = false,
            Icon = icon.texture,
            Cooldown = icon.cd,
        })
    end

    return icon
end

-- adds a new icon
function ATT:AddIcon(icons, anchor)
    local newicon = CreateIcon(anchor)
    icons[#icons + 1] = newicon
    return newicon
end

function ATT:ApplyIconTextureBorder(icon)
    icon:SetAlpha(db.iconAlpha or 1)
    icon.texture:SetVertexColor(1, 1, 1)

    if db.showIconBorders then
        icon.texture:SetTexCoord(0, 1, 0, 1)
    else
        icon.texture:SetTexCoord(0.07, 0.9, 0.07, 0.90)
    end
end

function ATT:UpdateAnchorGUID(anchor, unit, guid)
    local dbInspected = dbInspect[guid]
    local spec = dbInspected and tostring(dbInspect[guid]["spec"])
    local _, class = UnitClass(unit)
    local icons = anchor.icons
    local numIcons = 1
    local _, _, raceID = UnitRace(unit)
    anchor.GUID = guid
    anchor.class = class
    anchor.spec = spec
    
    if guid and anchor and dbInspected and class and spec and spec ~= "0" and spec ~= "nil" and dbImport[class][spec] and type(db.isEnabledSpell[spec] == "table") then
        anchor.isHealer = ATTdbs.dbHealerSpec[tonumber(spec)] and true or false

        -- Trinkets
        for abilityIndex, abilityTable in pairs(self:MergeTable(class, spec, "trinkets")) do
            local name, id, trinketId, cooldown, texture, spellTName = abilityTable.name, abilityTable.ability, abilityTable.trinketId, abilityTable.cooldown, abilityTable.texture , abilityTable.spellTName

            if trinketId == 181333 and anchor.isHealer then cooldown = cooldown - 30 end

            if name and id and trinketId and db.isEnabledSpell[spec][id] and (dbInspected[trinketId] or (trinketId == 5512 or trinketId == 211880)) then
                local icon = icons[numIcons] or self:AddIcon(icons, anchor)
                icon.texture:SetTexture(texture or self:FindAbilityIcon(name, id))
                icon.GUID = anchor.GUID
                icon.ability = name --spellTName and spellTName or name
                icon.abilityID = id
                icon.cooldown = cooldown
                icon.maxcharges = nil
                icon.chargesText:SetText()
                icon.inUse = true
                icon.excluded = true
                icon.race = nil
                icon.isTrinket = true

                ATT:ApplyIconTextureBorder(icon)
                activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
                if activeGUIDS[icon.GUID][id] then
                    icon.SetOldTimer(activeGUIDS[icon.GUID][id].starttime, activeGUIDS[icon.GUID][id].cooldown, nil , nil, activeGUIDS[icon.GUID][id].chargeleft )
                else
                    icon.Stop()
                end
                numIcons = numIcons + 1
            end
        end

        -- Racials
        for abilityIndex, abilityTable in pairs(self:MergeTable(class, spec, "racials")) do
            local name, id, cooldown, maxcharges, race, cdshare, texture = abilityTable.name, abilityTable.ability, abilityTable.cooldown, abilityTable.maxcharges, abilityTable.race, abilityTable.cdshare,abilityTable.texture


           if id == 368970 and raceID == race and dbInspected[375443] then cooldown = cooldown - 120 end 
           if id == 357214 and raceID == race and dbInspected[368838] then cooldown = cooldown - 120 end 

            if name and id and db.isEnabledSpell[spec][id] and raceID == race then
                local icon = icons[numIcons] or self:AddIcon(icons, anchor)
                icon.texture:SetTexture(texture or self:FindAbilityIcon(name, id))
                icon.GUID = anchor.GUID
                icon.ability = name
                icon.abilityID = id
                icon.cooldown = cooldown
                icon.maxcharges = nil
                icon.chargesText:SetText()
                icon.inUse = true
                icon.race = raceID
                icon.excluded = true
                icon.racecdshare = cdshare

                ATT:ApplyIconTextureBorder(icon)
                activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
                if activeGUIDS[icon.GUID][id] then
                    icon.SetOldTimer(activeGUIDS[icon.GUID][id].starttime, activeGUIDS[icon.GUID][id].cooldown, nil , nil, activeGUIDS[icon.GUID][id].chargeleft )
                else
                    icon.Stop()
                end
                numIcons = numIcons + 1
            end
        end

        -- Abilities
        if not db.bgMode then
            for abilityIndex, abilityTable in pairs(self:MergeTable(class, spec, "abilities", true)) do
                local name, id, cooldown, charges, custom, texture = abilityTable.name, abilityTable.ability, abilityTable.cooldown, abilityTable.charges, abilityTable.custom, abilityTable.texture
                local modif = dbModif[id]
                local modif2 = dbModif2[id]
                local modif3 = dbModif3[id]
                local replace = dbReplace[id]
                local bonusModif = ATTdbs.dbModifBonus[id]
                
                if replace then
                    for _, replaceid in pairs(replace) do
                        if dbInspected[replaceid] then name = nil end
                    end
                end

                if name and (custom and not db.isEnabledSpell[spec][id .. "custom"]) or
                    (not custom and not db.isEnabledSpell[spec][id]) or dbInspected["not"][id] or
                    (dbisPVPspell[id] and not dbInspected[id]) then
                    name = nil
                end

                if name and modif and dbInspected[modif.mod] then
                    local newcd = dbInspected[modif.mod]
                    cooldown = (modif.x and cooldown * (modif.cooldown[newcd] or modif.cooldown[1])) or (cooldown - (modif.cooldown[newcd] or modif.cooldown[1]));
                end

                if name and modif2 and dbInspected[modif2.mod] == 1 then
                    cooldown = (modif2.x and cooldown * modif2.cooldown) or (cooldown - modif2.cooldown);
                end

                if name and modif3 and dbInspected[modif3.mod] == 1 then
                    cooldown = (modif3.x and cooldown * modif3.cooldown) or (cooldown - modif3.cooldown);
                end
                -- lock pet

                if name and bonusModif then
                    for index, bonusmod in pairs(bonusModif.mod) do
                        if dbInspected[bonusmod] and bonusModif.rank[index] and (dbInspected[bonusmod] >= bonusModif.rank[index]) then
                            cooldown = cooldown - bonusModif.cd[index]
                        end
                    end
                end

                if spec == "1473" and dbInspected[412713] and cooldown then cooldown = cooldown - (cooldown * 0.10) end --[Interwoven Threads]
              
                if (id == 194223 or id == 102560) and dbInspected[468743] and dbInspected[429420] then cooldown = cooldown - 10 end 

                if name and id then
                    local icon = icons[numIcons] or self:AddIcon(icons, anchor)
                    icon.texture:SetTexture(texture or self:FindAbilityIcon(name, id))
                    icon.GUID = anchor.GUID
                    icon.ability = name
                    icon.abilityID = id
                    icon.cooldown = cooldown
                    icon.excluded = nil
                    icon.race = nil
                    icon.maxcharges = charges
                    if dbInspected[dbModifCharge[id]] or dbInspected["extraCharge"][id] then
                        if charges then
                            icon.maxcharges = charges + 1
                        else
                            icon.maxcharges = 2
                        end
                        if id == 36554 and spec == "260" then icon.maxcharges = nil end --outlaw step
                        if id == 212283 and dbInspected[469642] then icon.maxcharges = dbInspected[469642] + 1 end
                    end

                    icon.chargesText:SetText(icon.maxcharges or "")
                    icon.inUse = true
                    
                    if class == "WARLOCK" and id == 119898 then
                        local ucf = UnitCreatureFamily(gsub(unit, "(%a+)", "%1pet"))
                        if ucf then
                        local lpet = SUMMON .. " " .. tostring(ucf)
                        --local petid = select(6, strsplit('-', UnitGUID(gsub(unit, "(%a+)", "%1pet"))))
                        for petId, petTable in pairs(ATTdbs.lockPets) do
                            if GetSpellInfo(petId) == lpet then
                                icon.texture:SetTexture(petTable.tex)
                                icon.cooldown = petTable.cd
                                break
                            end
                        end
                       end 
                    end

                    ATT:ApplyIconTextureBorder(icon)
                    activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
                    if activeGUIDS[icon.GUID][id] then
                        icon.SetOldTimer(activeGUIDS[icon.GUID][id].starttime, activeGUIDS[icon.GUID][id].cooldown, nil , nil, activeGUIDS[icon.GUID][id].chargeleft )
                    else
                        icon.Stop()
                    end
                    numIcons = numIcons + 1
                end
            end
        end
    end

    -- clean leftover icons
    for j = numIcons, #icons do
        icons[j].ability = nil
        icons[j].abilityID = nil
        icons[j].spec = nil
        icons[j].seen = nil
        icons[j].active = nil
        icons[j].inUse = nil
        icons[j].showing = nil
    end

    self:ToggleDisplay(anchor, guid)
end

function ATT:ToggleDisplay(anchor, unitGuid)
    local icons = anchor.icons
    local lastActiveIndex = 0
    local oldActiveIndex = 0
    local count = 0
    
    for k, icon in pairs(icons) do
        -- if isUpdate and icon.inUse and icon.abilityID then table.insert(anchor.SyncCDs, icon.abilityID) end
        if icon.active and icon.cooldown then
            icon.timeleft = icon.starttime + icon.cooldown - GetTime()
            if icon.timeleft <= 0 or not icon.timeleft then
                if activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] then
                    activeGUIDS[icon.GUID][icon.abilityID] = nil
                end
                icon.active = nil
            end
        end
        ATT:ApplyIconTextureBorder(icon)
        if db.showTooltip then
            icon:EnableMouse(true)
        else
            icon:EnableMouse(false)
        end -- click-through
        if icon and icon.abilityID and icon.inUse and unitGuid and unitGuid == anchor.GUID and icon.GUID == unitGuid then
            icon.showing = (activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] and icon.active) or
                (not db.hidden)
        end
        icon:ClearAllPoints()
        icon:Hide()
    end

    local attachPos = (db.attachPos or 0) % 2 == 0
    for k, icon in pairs(icons) do
        if icon and icon.abilityID and icon.showing and icon.inUse and unitGuid and unitGuid == anchor.GUID and
            icon.GUID == unitGuid then
            if db.reverseIcons then
                if db.IconRows > 1 then
                    if lastActiveIndex == 0 then
                         icon:SetPoint(attachPos and "TOPLEFT" or "TOPRIGHT", anchor, attachPos and "BOTTOMRIGHT" or "BOTTOMLEFT")
                    elseif (count >= db.IconRows and count % db.IconRows == 0) then
                        icon:SetPoint(attachPos and "LEFT" or "RIGHT", icons[oldActiveIndex],attachPos and "RIGHT" or "LEFT", attachPos and 1 * db.iconOffsetY or -1 * db.iconOffsetY, 0)
                    else
                        if db.growUP then
                            icon:SetPoint(attachPos and "BOTTOM" or "BOTTOM", icons[lastActiveIndex],attachPos and "TOP" or "TOP", 0, 1 * db.iconOffsetX)
                        else
                            icon:SetPoint(attachPos and "TOP" or "TOP", icons[lastActiveIndex], attachPos and "BOTTOM" or "BOTTOM", 0, -1 * db.iconOffsetX)

                        end
                    end
                else
                    if lastActiveIndex == 0 then
                        icon:SetPoint(attachPos and "TOPLEFT" or "TOPRIGHT", anchor, attachPos and "BOTTOMRIGHT" or "BOTTOMLEFT", attachPos and 1 * db.iconOffsetY or -1 * db.iconOffsetY, 0)
                    else
                        icon:SetPoint(attachPos and "LEFT" or "RIGHT", icons[lastActiveIndex],attachPos and "RIGHT" or "LEFT", attachPos and 1 * db.iconOffsetY or -1 * db.iconOffsetY, 0)
                    end
                end
            else
                if db.IconRows > 1 then
                    if lastActiveIndex == 0 then
                       icon:SetPoint(attachPos and "TOPRIGHT" or "TOPLEFT", anchor,attachPos and "BOTTOMLEFT" or "BOTTOMRIGHT")
                    elseif (count >= db.IconRows and count % db.IconRows == 0) then
                        icon:SetPoint(attachPos and "RIGHT" or "LEFT", icons[oldActiveIndex],attachPos and "LEFT" or "RIGHT", attachPos and -1 * db.iconOffsetY or db.iconOffsetY, 0)
                    else
                        if db.growUP then
                            icon:SetPoint(attachPos and "BOTTOM" or "BOTTOM", icons[lastActiveIndex],attachPos and "TOP" or "TOP", 0, 1 * db.iconOffsetX)
                        else
                             icon:SetPoint(attachPos and "TOP" or "TOP", icons[lastActiveIndex],attachPos and "BOTTOM" or "BOTTOM", 0, -1 * db.iconOffsetX)
                        end
                    end
                else
                    if lastActiveIndex == 0 then
                        icon:SetPoint(attachPos and "TOPRIGHT" or "TOPLEFT", anchor,attachPos and "BOTTOMLEFT" or "BOTTOMRIGHT", attachPos and -1 * db.iconOffsetY or db.iconOffsetY, 0)
                    else
                        icon:SetPoint(attachPos and "RIGHT" or "LEFT", icons[lastActiveIndex],attachPos and "LEFT" or "RIGHT", attachPos and -1 * db.iconOffsetY or db.iconOffsetY, 0)
                    end
                end
            end

            lastActiveIndex = k
            if (count == 0 or (count >= db.IconRows and count % db.IconRows == 0)) then
                oldActiveIndex = count == 0 and k or lastActiveIndex
            end
            count = count + 1
            icon:Show()
        end
    end
end

function ATT:UpdateIcons()
    for k, anchor in ipairs(anchors) do
        local unit = (ATT.inRaid and "raid" .. k) or ((k == 5 and "player") or (k ~= 5 and "party" .. k))
        local guid = unit and UnitGUID(unit)

        if db.lock or not guid then anchor:Hide() else anchor:Show() end

        if guid and guid == PlayerGUID and (self.hideSelf) then
            anchor:Hide()
            anchor.GUID = nil
            anchor.spec = nil
            guid = nil
        end

        if guid and guid ~= PlayerGUID and (self.groupSize < k or self.groupSize == 0) then
            anchor:Hide()
            anchor.GUID = nil
            anchor.spec = nil
            guid = nil
        end

        if not guid then
            anchor:Hide()
            if anchor.GUID then activeBUFFS[anchor.GUID] = {} ; activeAURAS[anchor.GUID] = {} end
            anchor.GUID = nil
            anchor.spec = nil
            guid = nil
        end

        self:UpdateAnchorGUID(anchor, unit, guid)
    end
end


function ATT:ApplyAnchorSettings()
    local _, type = IsInInstance()
    ATT.inRaid =  (IsInRaid() and type ~= "arena") or C_PvP.IsInBrawl()
    ATT.isPVP = (C_PvP.IsWarModeDesired() and type == "none") or (type == "arena") or (type == "pvp")
    ATTIcons:SetScale(db.scale or 1)
    self.groupSize = self.groupSize or 5

    if (type == "arena") then
        self.groupSize = db.visArena or 5
        self.hideSelf = db.visArenaSelf
        ATTIcons:Show();
        self:Show();
    elseif (type == "party") then
        self.groupSize = db.visDungeon or 5
        self.hideSelf = db.visDungeonSelf
        ATTIcons:Show();
        self:Show();
    elseif (type == "scenario") then
        self.groupSize = db.visScenario or 5
        self.hideSelf = db.visScenarioSelf
        ATTIcons:Show();
        self:Show();
    elseif (type == "raid") then
        self.groupSize = db.visInraid or 5
        self.hideSelf = db.visInraidSelf
        ATTIcons:Show();
        self:Show();
    elseif (type == "pvp") then
        self.groupSize = db.visInbg or 5
        self.hideSelf = db.visInbgSelf

        ATTIcons:Show();
        self:Show();
    elseif (type == "none") then
        self.groupSize = db.visOutside or 5
        self.hideSelf = db.visOutsideSelf
        if IsInRaid() and self.groupSize < 5 then
            self.groupSize = 0
            self.hideSelf = true
            ATTIcons:Hide();
            self:Hide();
        else
            ATTIcons:Show();
            self:Show();
        end
    else
        self.groupSize = 0
        self.hideSelf = true
        ATTIcons:Hide();
        self:Hide();
    end

   if self.groupSize == 0 and self.hideSelf then
      ATTIcons:Hide();
      self:Hide();
   end

    if not db.lock and ATTIcons:IsShown() then
        ATTAnchor:Show()
    else
        ATTAnchor:Hide()
    end

    self:UpdatePositions();
    self:UpdateIcons();
end


function ATT:UNIT_AURA(unit, unitAuraUpdateInfo)
    if not ATTIcons:IsShown() then return end
    local anchor = self:GetAnchorByUnit(unit)

    if (not anchor and unit ~= "player") or not unitAuraUpdateInfo then
        return
    end

    local guid = UnitGUID(unit)
    if not guid then return end
    activeAURAS[guid] = activeAURAS[guid] or {}
    ---feign
    if unitAuraUpdateInfo then
        if unitAuraUpdateInfo.addedAuras ~= nil then
            for _, aura in ipairs(unitAuraUpdateInfo.addedAuras) do
                local auraInfo = C_UnitAuras.GetAuraDataByAuraInstanceID(unit, aura.auraInstanceID)
                if auraInfo and auraInfo.spellId then
                    activeAURAS[guid][aura.auraInstanceID] = auraInfo
                    if auraInfo.spellId == 5384 or auraInfo.spellId == 6544 then
                        self:StartCooldown(unit, auraInfo.spellId, dbAuraRemoved[auraInfo.spellId] and "AuraOn")
                    end
                end
            end
        end
--[[
        if unitAuraUpdateInfo.updatedAuraInstanceIDs ~= nil then
            for _, auraInstanceID in ipairs(unitAuraUpdateInfo.updatedAuraInstanceIDs) do
                local auraInfo = C_UnitAuras.GetAuraDataByAuraInstanceID(unit, auraInstanceID)
                if auraInfo and auraInfo.spellId then
                end
            end
        end
--]]
        if unitAuraUpdateInfo.removedAuraInstanceIDs ~= nil then
            for _, auraInstanceID in ipairs(unitAuraUpdateInfo.removedAuraInstanceIDs) do
                local auraInfo = activeAURAS[guid][auraInstanceID]
                if auraInfo and (auraInfo.spellId == 5384 or auraInfo.spellId == 6544) then
                    self:StartCooldown(unit, auraInfo.spellId)
                end
                activeAURAS[guid][auraInstanceID] = nil
            end
        end
    end
end


function ATT:PLAYER_ENTERING_WORLD(isLogin, isReload)
    self:UpdateUnitIDCache()
    self:CheckProfile()

    C_Timer.After(1, function()
        local _, instanceType = IsInInstance()
        self:InspectPlayer()
        self:StopAllGlow()
        self:UpdateGroup()
        if instanceType == "arena" and not isLogin and not isReload then
           self:StopAllIcons();
        end
        self:SendUpdate()
    end)
end

function ATT:GROUP_ROSTER_UPDATE()
    if (not ATTIcons:IsShown()) then
        return
    end

    self:UpdateUnitIDCache()
    self:ApplyAnchorSettings()
    --self:EnqueueInspect(true)

    C_Timer.After(0.05, function()
        self:UpdateUnitIDCache()
        self:ApplyAnchorSettings()
        self:EnqueueInspect(true)
    end)
end

function ATT:UpdateGroup()
    self:ApplyAnchorSettings()
    self:EnqueueInspect()
end

function ATT:GROUP_JOINED()
    --self:InspectCovenant()
    self:UpdateUnitIDCache()
    self:ApplyAnchorSettings()
    self:EnqueueInspect()
    local _, instanceType = IsInInstance()
    if instanceType == "arena" then
        self:StopAllIcons();
    end
end

function ATT:UNIT_SPELLCAST_SUCCEEDED(unit, _, spellID)
    local anchor = self:GetAnchorByUnit(unit)

    if ATTdbs.dbRacialFix[spellID] and anchor then
        self:StartCooldown(unit, spellID)
    end

    if spellID == 384255 and anchor and unit ~= "player" then
        local guid = UnitGUID(unit)
        self:QueueInspect(guid)
       -- if not ATTInspectFrame:IsShown() then ATTInspectFrame:Show() end
    end

   -- if anchor and spellID == 5384 then self:StartCooldown(unit, spellID, true)  print("tet")end --fd hunt
    if anchor and spellID == 189110 then self:StartCooldown(unit, spellID) end --dh Infernal Strike
end


function ATT:FindAbilityByName(abilities, name)
    if abilities then
        for i, v in pairs(abilities) do
            if v and v.ability and v.ability == name then
                return v, i
            end
        end
    end
end

function ATT:StartCooldown(unit, SentID, flag)
    local anchor = self:GetAnchorByUnit(unit)

    if not unit or not anchor then
        return
    end
    local guid = anchor.GUID

    if not anchor or not guid or not dbInspect[guid] then
        return
    end
    self:TrackCooldown(anchor, SentID, unit, guid, flag)
    local rate = nil

    if SentID == 336126 or SentID == 336139 then
        local _, _, race = UnitRace(unit)
        local cooldown
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.ability and icon.race == race and icon.excluded then
                if (icon.abilityID == 59752) then
                    cooldown = anchor.isHealer and 60 or 90
                else --if (not anchor.isHealer) then
                    local duration = icon.starttime + icon.cooldown - GetTime()
                    if duration and duration < 30 then
                        cooldown = 30
                    end
                end
                if cooldown and icon.inUse and icon.race == race and icon.racecdshare then
                    local starttime = GetTime() - icon.cooldown + cooldown
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end

    if ATTdbs.dbRacialShare[SentID] then
        local cooldown
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.abilityID == 336126 then
                if (SentID == 59752) then
                    cooldown = anchor.isHealer and 60 or 90
                else -- if (not anchor.isHealer) then
                    local duration = icon.starttime + icon.cooldown - GetTime()
                    if duration and duration < 30 then
                        cooldown = 30
                    end
                end
                if cooldown and icon.inUse then
                    local starttime = GetTime() - icon.cooldown + cooldown
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end
end

function ATT:TrackCooldown(anchor, SentID, unit, guid, flag)
    local rate = nil
    local spec = dbInspect[guid]["spec"]

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.cooldown then
            -- Direct cooldown
            if icon.ability and icon.abilityID == SentID and icon.inUse then
                if flag then
                    icon.cd:Clear()
                    icon.texture:SetVertexColor(0.4, 0.4, 0.4)
                    --break
                else
                    icon.seen = true
                    icon.Start(icon.cooldown, 1, rate)
                end
            end
        end

        -- Cooldown reset
        if SentID == 122 and icon.inUse and dbInspect[guid][206431] and icon.abilityID == 120 then
            icon.Stop()
        end -- cone of cold
        if spec == 104 and (SentID == 22842 or SentID == 50334) and icon.inUse and activeBUFFS[guid].isRegen and icon.abilityID == 22842 and dbInspect[guid][377779] then
            icon.Stop()
        end -- guardian drood regen
        --[[
        if SentID == 392060 and icon.inUse and dbInspect[guid][389865] and icon.abilityID == 257044 then
            icon.Stop()
        end -- rapid fire / readiness
        --]]
        if (SentID == 191427 or SentID == 187827) and icon.inUse and dbInspect[guid][452409] and (icon.abilityID == 204596 or icon.abilityID == 258920 or icon.abilityID == 212084) then
            icon.Stop()
        end -- Violent Transformation DH hero

        if (SentID == 357210 or SentID == 433874) and icon.inUse and dbInspect[guid][441257] and (icon.abilityID == 358267) then
            icon.Stop()
        end --Slipstream

        local frostSpells = {[120] = true , [122] = true, [113724] = true, [157997] = true}
        if (SentID == 87024) and icon.inUse and dbInspect[guid][431112] and frostSpells[icon.abilityID] then
            icon.Stop()
        end --Flame and Frost

        local fireSpells = {[319836] = true , [31661] = true, [157981] = true, [353082] = true}
        if (SentID == 235219) and icon.inUse and dbInspect[guid][431112] and fireSpells[icon.abilityID] then
            icon.Stop()
        end --Flame and Frost

        if cooldownResetters[SentID] then
            if icon.inUse and type(cooldownResetters[SentID]) == "table" and cooldownResetters[SentID][icon.abilityID] then
                if dbInspect[guid][417493] and icon.abilityID == 120 then return end
                local iconCharges = icon.maxcharges and getIconCharges(icon)
                if iconCharges and iconCharges +1 < icon.maxcharges then
                   icon.chargesText:SetText(iconCharges + 1)
                else
                    icon.Stop()
                end
            end
        end
    end
end

function ATT:RegisterBuffs(unit, event, dest, SentID)
    local anchor = self:GetAnchorByUnit(unit)
    local guid = anchor and anchor.GUID

    if not anchor or not guid or not dbInspect[guid] then
        return
    end

    local unitSpec = tonumber(dbInspect[guid]["spec"])


    if unitSpec and unitSpec == 257 then --and unitSpec == 257
        if SentID == 372760 then
            if (event == "SPELL_AURA_REMOVED") then
                C_Timer.After(0.1, function() activeBUFFS[guid].DivineWord = nil end)
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].DivineWord = true
            end
        end
    end


    --TODO per anchor guid
    if unitSpec and SentID == 375234 then -- freeprocs
        if (event == "SPELL_AURA_REMOVED") then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.cooldown and ATTdbs.dbTimeSpiral[icon.abilityID] then
                    activeBUFFS[guid][icon.abilityID] = nil
                end
            end
        end
        if (event == "SPELL_AURA_APPLIED") then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.cooldown and ATTdbs.dbTimeSpiral[icon.abilityID] then
                    activeBUFFS[guid][icon.abilityID] = true
                end
            end
        end
    end


    if unitSpec and ATTdbs.freeProcs[SentID]  then -- freeprocs2
        if (event == "SPELL_AURA_REMOVED") then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.cooldown and icon.abilityID == ATTdbs.freeProcs[SentID] then
                    activeBUFFS[guid][icon.abilityID] = nil
                end
            end
        end
        if (event == "SPELL_AURA_APPLIED") then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.cooldown and  icon.abilityID == ATTdbs.freeProcs[SentID]  then
                    activeBUFFS[guid][icon.abilityID] = true
                end
            end
        end
    end
    
--[[
    if unitSpec then --and unitSpec == 268
        if SentID == 386276 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].Bonedust = nil
                anchor.Bonedusthits = 0
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].Bonedust = true
            end
        end
    end
--]]
    if unitSpec and unitSpec == 64 then
        if SentID == 44544 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].FingerOfF = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].FingerOfF = true
            end
        end
    end

    if unitSpec and unitSpec == 62 then
        if SentID == 263725 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].Clearcasting = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].Clearcasting = true
            end
        end
    end
    if unitSpec and unitSpec == 63 then
        if SentID == 383637 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].Combustion = nil
                anchor.flameStrike = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].Combustion = true
            end
        end
    end

    if unitSpec and unitSpec == 251 then
        if SentID == 59052 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].RimeE = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].RimeE = true
            end
        end
    end

    if unitSpec and unitSpec == 73 then
        if SentID == 12975 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].LastStand = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].LastStand = true
            end
        end
    end

    if unitSpec and unitSpec == 266 then
        if SentID == 264173 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].DemonicC = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].DemonicC = true
            end
        end
    end

    if unitSpec and SentID == 381748 then -- Blessing of the Bronze 362877 381748
        if (event == "SPELL_AURA_REMOVED") and activeBUFFS[guid].hasBotB then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.cooldown and ATTdbs.dbTimeSpiral[icon.abilityID] then
                    icon.cooldown = math.floor((icon.cooldown * 1.15) + 0.5)
                    activeBUFFS[guid].hasBotB = nil
                end
            end
        end
        if ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REFRESH")) and not activeBUFFS[guid].hasBotB then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.cooldown and ATTdbs.dbTimeSpiral[icon.abilityID] then
                    icon.cooldown = math.floor((icon.cooldown / 1.15) + 0.5)
                    activeBUFFS[guid].hasBotB = true
                end
            end
        end
    end

    if unitSpec and unitSpec == 257 then
        if SentID == 200183 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].isApotheosis = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].isApotheosis = true
            end
        end
    end

    if unitSpec and unitSpec == 254 then
        if SentID == 288613 then -- + time remaning
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].isTrueshot = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].isTrueshot = true
            end
        end
    end

    if unitSpec and unitSpec == 254 then
        if SentID == 260242 then 
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].PreciseShots = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].PreciseShots = true
            end
        end
    end


    if unitSpec and (unitSpec == 254) then
        if SentID == 194594 then -- + time remaning
            if (event == "SPELL_AURA_REMOVED") then
                C_Timer.After(0.1, function() activeBUFFS[guid].isLockandLoad = nil end)
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].isLockandLoad = true
            end
        end
    end

    if unitSpec and unitSpec == 104 then
        if SentID == 50334 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].isRegen = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].isRegen = true
            end
        end
    end

    if unitSpec and unitSpec == 262 then --Surge of Power
        if SentID == 285514 then
            if (event == "SPELL_AURA_REMOVED") then
                C_Timer.After(0.1, function() activeBUFFS[guid].SurgeofPower = nil end)
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].SurgeofPower = true
            end
        end
    end

    if unitSpec then --Surge of Power
        if SentID == 434473 then
            if (event == "SPELL_AURA_REMOVED") then
                C_Timer.After(0.1, function() activeBUFFS[guid].Bombardments = nil end)
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].Bombardments = true
            end
        end
    end

end

function ATT:ReduceCD(unit, SentID, event, timer, hit, crit, unitDest, destGUID, school)
    if not unit then
        return
    end
    local anchor = self:GetAnchorByUnit(unit)
    local guid = anchor and anchor.GUID
    if not anchor or not guid or not dbInspect[guid] then
        return
    end
    local _, class = UnitClass(unit)
    local spec = dbInspect[guid]["spec"]
    local rate = nil

    if (class == "MAGE") and (SentID == 342246 or SentID == 382445) then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and SentID == 342246 and (icon.abilityID == 1953 or icon.abilityID == 212653) and dbInspect[guid][342249] and (event == "SPELL_AURA_REMOVED") then
                local charges = icon.maxcharges and getIconCharges(icon)
                if icon.maxcharges and charges  then
                local chargesUpdate = math.min(icon.maxcharges, charges + 1) --update
                  icon.SetTimer(icon.starttime, icon.cooldown, rate, nil, chargesUpdate)
                else
                    icon.Stop()
                end
            end

            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and SentID == 382445 and (event == "SPELL_CAST_SUCCESS") and icon.abilityID ~= 382440 then --382440 382445
                local reducecd = 3
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
            
            if icon.inUse and icon.cooldown > 0 and SentID == 342246 and (event == "SPELL_AURA_APPLIED") and icon.abilityID == 342245 then --alter fix
                local starttime = GetTime()
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PRIEST") and spec == 258 and (event == "voidform") and dbInspect[guid][199259] and timer then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 228260 then
                if select(1, AuraUtil.FindAuraByName(GetSpellInfo(194249), unit)) or (icon.voidtimer and icon.voidtimer > timer) then
                    break
                end
                icon.voidtimer = timer + 1
                local starttime = icon.starttime - 3
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PRIEST") and SentID == 47788 and event == "SPELL_AURA_REMOVED" and dbInspect[guid][200209] then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 47788 then
                if SentID == 47788 then
                    icon.guardiantime = icon.starttime;
                    icon.SetTimer(GetTime() - 120, icon.cooldown, rate)
                end
            end
        end
    end

    if (class == "PRIEST") and SentID == 48153 and event == "SPELL_HEAL" and dbInspect[guid][200209] then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 47788 then
                if SentID == 48153 then
                    C_Timer.After(0.2, function()
                        icon.SetTimer((icon.guardiantime and icon.guardiantime) or icon.starttime, icon.cooldown, rate)
                        icon.guardiantime = nil
                    end)
                end
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and spec == 66 and SentID == 85673 and dbInspect[guid][468454] then --Bear the Burden
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 1044 then
                local starttime = icon.starttime - 2
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MONK") and SentID == 119996 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][353584] then
        local unitIsStun = false
        for i = 1, 40 do
            local hasStun = select(10, UnitDebuff(unit, i));
            if isStun[hasStun] then
                unitIsStun = true
            end
        end
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.abilityID == 119996 and not unitIsStun then
                local starttime = GetTime() - 15
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if class and SentID == 64901 and event == "SPELL_AURA_APPLIED" then --Symbol of Hope
        local cdList = {
            [184364] = true,
            [118038] = true,
            [871] = true,
         --   [184662] = true,
            [498] = true,
            [31850] = true,
            [109304] = true,
            [185311] = true,
            [19236] = true,
            [48792] = true,
            [108271] = true,
            [55342] = true,
            [104773] = true,
            [115203] = true,
            [22812] = true,
            [204021] = true,
            [198589] = true,
            [403876] = true,
            [243435] = true, --?
            [363916] = true,
        }
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdList[icon.abilityID] then
                local starttime = icon.starttime - 30
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    local MonkDmgSpells = {
        [107428] = true,
        [113656] = true,
        [152175] = true,
        [392983] = true,
        [100780] = true,
        [100784] = true,
        [322109] = true,
        [117952] = true,
        [101546] = true,
        [388193] = true,
    }
    if (class == "MONK") and (event == "SPELL_CAST_SUCCESS") and spec == 269 and dbInspect[guid][391330] and MonkDmgSpells[SentID] then -- monk Meridian Strikes 
        local reducecd =  (anchor.MeridianStrikes and anchor.MeridianStrikes ~= SentID) and 0.6

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 322109 and reducecd then
                local starttime = icon.starttime - 0.6
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
         anchor.MeridianStrikes = SentID
    end

--[[
    if (class == "MONK") and (event == "SPELL_CAST_SUCCESS") and spec == 269 and dbInspect[guid][392986] and MonkDmgSpells[SentID] then -- monk Xuen’s Bond 
        local _, _, _, _, duration, exptime = AuraUtil.FindAuraByName(GetSpellInfo(137639), unit)

        local reducecd = duration and 0.75 or 0.25

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 123904  then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]

    if (class == "MONK") and (event == "SPELL_CAST_SUCCESS") and SentID == 100784 then -- monk risesun -- move aurautil to buff
        local _, _, _, _, duration, exptime = AuraUtil.FindAuraByName(GetSpellInfo(137639), unit)
        local reducedcd = duration and 2 or 1

        for k, icon in ipairs(anchor.icons) do
            if  icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 113656  then
                local starttime = icon.starttime - reducedcd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MONK") and spec == 268 and (event == "SPELL_CAST_SUCCESS") and (SentID == 100780 or SentID == 121253)  then -- monk bonedust --bugged? 1s 3s
        local cdBList = { [115203] = true,[322507] = true,[119582] = true,[115399] = true, } --[386276] = true,

        local reducecd = (SentID == 100780) and 0.5 or 3
        if activeBUFFS[guid].Bonedust then reducecd = reducecd + 1 end

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdBList[icon.abilityID] then
                if icon.abilityID == 115203 and (SentID == 121253) then reducecd = reducecd + (activeBUFFS[guid].Bonedust and 2 or 1.5) end
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MONK") and spec == 268 and (event == "PtA") and dbInspect[guid][418359] and timer then -- monk Press the Advantage
        local cdBList = { [115203] = true,[322507] = true,[119582] = true,[115399] = true, } --[386276] = true,
        local reducecd = 0.5
        if activeBUFFS[guid].Bonedust then reducecd = reducecd + 2 end --??? sync
        if anchor.autoattack and anchor.autoattack > GetTime() - 5 then return end
        anchor.autoattack = timer

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdBList[icon.abilityID] then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--[[
    if (class == "MONK") and event == "attenuation" and dbInspect[guid][386941] and (SentID == 325217 or SentID == 325218) then -- monk [Attenuation]
        local reducecd = 0.5
        anchor.Bonedusthits = (anchor.Bonedusthits or 0) + 1

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 386276 and anchor.Bonedusthits < 11 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end


    if (class == "MONK") and (event == "SPELL_AURA_REMOVED") and dbInspect[guid][393098] and SentID == 393099 then --monk [Forbidden Technique]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 322109 then
                icon.SetTimer(GetTime(), icon.cooldown, rate)
            end
        end
    end
--]]

    if (class == "DEMONHUNTER") and SentID == 212800 and (event == "SPELL_AURA_APPLIED") then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and not icon.active and icon.abilityID == 198589 then
                local starttime = GetTime() - 30
                C_Timer.After(0.1, function()
                    if not icon.active then
                        icon.SetTimer(starttime, icon.cooldown, rate)
                    end
                end)
            end
        end
    end

    if (class == "DEMONHUNTER") and (event == "SPELL_CAST_SUCCESS") and (SentID == 204596) and dbInspect[guid][389718] then --(event == "ReduceSigilsDH") and timer
        local sigils = { [204596] = true,[207684] = true,[202137] = true,[202138] = true, [390163] = true,}
       -- if timer > (anchor.ReduceSigilsDH or 0) then
           for k, icon in ipairs(anchor.icons) do
               if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and sigils[icon.abilityID] then
                   --anchor.ReduceSigilsDH = GetTime() + 0.1
                   local charges = icon.maxcharges and getIconCharges(icon)

                   local starttime = icon.starttime - 5
                   icon.SetTimer(starttime, icon.cooldown, rate, false , charges)
               end
           end
       -- end
    end

    if (class == "DEMONHUNTER") and (event == "SPELL_CAST_SUCCESS") and (SentID == 198013) and dbInspect[guid][258887] then
       -- local cdr = dbInspect[guid][258887] * 2.5
          local name, icon, count = AuraUtil.FindAuraByName(GetSpellInfo(258887), unit)
          local cdr = count and (5 * count) or 5

           for k, icon in ipairs(anchor.icons) do
               if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 198013 then
                   local starttime = icon.starttime - cdr
                   icon.SetTimer(starttime, icon.cooldown, rate)
               end
           end
    end

 
    if (class == "DEMONHUNTER") and (event == "SPELL_ENERGIZE") and  dbInspect[guid][389708] and SentID == 391345 and timer then --- a lil bugged
        local cdr = 40 * timer / 100

        for k, icon in ipairs(anchor.icons) do
               if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 212084  then
                   local starttime = icon.starttime - cdr
                   icon.SetTimer(starttime, icon.cooldown, rate)
               end
           end
    end


    if (class == "DRUID") and SentID == 33891 and (event == "SPELL_CAST_SUCCESS") then --TREE OF LIFE
        local _, _, _, _, duration, exptime = AuraUtil.FindAuraByName(GetSpellInfo(117679), unit)
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.abilityID == 33891 and duration and exptime then
                local starttime = exptime - duration
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--[
    if (class == "DRUID") and (event == "SPELL_SUMMON") and dbInspect[guid][393371] and (SentID == 102693) then --  drood new
        local cdr = 5
        C_Timer.After(15.1, function()
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.abilityID == 33891 and cdr then
                local starttime = icon.starttime - cdr
                 icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
      end)
    end

--]]

    if (class == "DRUID") and (event == "SPELL_HEAL") and dbInspect[guid][392162] and SentID == 157982 and unit == unitDest then   --dreamstate SPELL_HEAL
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.abilityID ~= 740 and not icon.excluded then --excluded
                local starttime = icon.starttime - 4
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end


    local rageDrood = {
     [6807] = 40,
     [22842] = 10,
     [20484] = 30,
     [192081] = 40,
     [400254] = 40,
    }

    if (class == "DRUID") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][393414] and rageDrood[SentID] then --Ursoc's Guidance 11.0.2
        local reducecd = rageDrood[SentID] and rageDrood[SentID] / 25

        for k, icon in ipairs(anchor.icons) do
               if icon.inUse and icon.active and icon.abilityID == 102558 and reducecd  then 
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MAGE") and SentID == 190357 and event == "blizzard" and dbInspect[guid][84714] then --frozen orb
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 84714 then
                local starttime = icon.starttime - 0.50
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    local barierSpells = { [235313] = true,[11426] = true, [235450] = true, }

    if (class == "MAGE")  and (event == "SPELL_AURA_REMOVED") and dbInspect[guid][455428] and barierSpells[SentID] then --barriers 11.0

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == SentID then
                local starttime = icon.starttime - 4
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "SHAMAN") and SentID == 188389 and event == "flameshock" and dbInspect[guid][378310] then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 198067 or icon.abilityID == 192249) then
                local starttime = icon.starttime - 1
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
    

    if (class == "SHAMAN")  and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][262303] and SentID == 51505 then --11.0.2 Surge of Power
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 198067 or icon.abilityID == 192249) and activeBUFFS[guid].SurgeofPower then
                local starttime = icon.starttime - 4
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end


    if (class == "HUNTER") and (event == "SPELL_AURA_REMOVED") and dbInspect[guid][260404] and SentID == 466872 then --marks  reduce Trueshot --revisit refresh
        local reducecd = dbInspect[guid][474738] and 3 or 2

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 288613 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_AURA_REMOVED") and dbInspect[guid][473522] and SentID == 260242 then --Magnetic Gunpowder Precise Shots
        local reducecd = 2

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 212431 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_AURA_REMOVED") and dbInspect[guid][473522] and SentID == 194594 then --Magnetic Gunpowder Lock and Load reduces
        local reducecd = 8

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 212431 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end


    if (class == "HUNTER") and (event == "SPELL_DAMAGE") and dbInspect[guid][473378] and (SentID == 257620 or SentID == 260247) then --Bullet Hell Multi-Shot /Rapid Fire
        local reducecd = 0.3

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 257044 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_DAMAGE") and dbInspect[guid][473378] and SentID == 19434 then --Bullet Hell Aimed Shot / Volley
        local reducecd = 0.25

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 260243 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end


if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][270581] and dbReducePowerSpell[SentID] then -- mending
        --local etfSpells = { [185358] = true,[342049] = true,[19434] = true,[2643] = true, }

        local powerCost = dbReducePowerSpell[SentID]

       if (SentID == 185358 or SentID == 2643) and activeBUFFS[guid].PreciseShots then powerCost = powerCost * 0.4 end


        --if spec == 254 and SentID == 120360 then powerCost = powerCost / 2 end -- barrage removed
        --if dbInspect[guid][321293] and (SentID == 185358 or SentID == 342049) then powerCost = powerCost - 20 end
        --[[
        if activeBUFFS[guid].isTrueshot and dbInspect[guid][389449] and etfSpells[SentID] then
            powerCost = dbInspect[guid][389449] == 1 and (powerCost * 0.88) or (powerCost * 0.75)
        end
        
        if activeBUFFS[guid].isTrueshot and SentID == 19434 then
            powerCost = powerCost / 2
        end
        --]]
        
        local reducecd = powerCost / 10
        
        if dbInspect[guid][343242] then reducecd = reducecd * 1.5 end --Wilderness Medicine

        if SentID == 19434 and activeBUFFS[guid].isLockandLoad then reducecd = nil end
 

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 109304 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and dbInspect[guid][378905] and (event == "SPELL_CAST_SUCCESS") and SentID == 19434 then -- fix crd?? removed?
       local reducecd = 2
       for k, icon in ipairs(anchor.icons) do
           if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 257044 then
               local starttime = icon.starttime - reducecd
               icon.SetTimer(starttime, icon.cooldown, rate)
           end
       end
    end


    if (class == "HUNTER") and dbInspect[guid][378771] and (event == "SPELL_AURA_APPLIED") and SentID == 385646 then -- Quick Load
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 186387 or icon.abilityID == 213691) then
                icon.Stop()
            end
        end
     end

--[[
    if (class == "HUNTER") and (event == "SPELL_SUMMON") and dbInspect[guid][389654] and spec == 253 then --hunter bm master handle
        local reducecd = (SentID == 122804 or SentID == 361582) and 4
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 193530 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]

--[[
    if (class == "HUNTER") and (event == "SPELL_AURA_APPLIED") and dbInspect[guid][203415] and spec == 255 and SentID == 259285 then --hunter bm  fury of the
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 203415 then
                local starttime = icon.starttime - 3
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][231548] and spec == 253 and SentID == 217200 then --hunter bm  barbed bestial
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 19574 then
                local starttime = icon.starttime - 12
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and SentID == 193455 and spec == 253 then --hunter BM  Barbed Scales
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 217200 then
                local starttime = icon.starttime - 2
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--[[
    if ((class == "HUNTER")) and (event == "SPELL_DAMAGE") and crit and dbInspect[guid][385718] and SentID == 203413 then --(Flanking) hunter TODO
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 269751 then
                local starttime = icon.starttime - 1
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
     end
--]]


     if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][459843] and SentID == 212431 then --hunter grenade jug
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 259495 then
                local starttime = icon.starttime - 2
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][459533] and SentID == 19434 then --hunter scrappy
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 19577 or icon.abilityID == 109248)then
                local starttime = icon.starttime - 0.5
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
    
	
    local KindlingSpells = {[108853] = true,[11366] = true,[133] = true,[2948] = true,[257542] = true, [2120] = true }
    
     if ((class == "MAGE")) and (event == "SPELL_DAMAGE") and crit and dbInspect[guid][155148] and KindlingSpells[SentID] then --Kindling --Fire Mage --
                local reducecd = SentID == 2120 and 0.2 or 1
                if SentID == 257542 then 
                   local now = GetTime()
                   if anchor.phTime and anchor.phTime == now then reducecd = nil  else anchor.phTime = now end
                  -- anchor.phTime = anchor.phTime and (anchor.phTime + 1) or 1
                  --if anchor.phTime > 5 then reducecd = 0 end
                end
                
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 190319 and reducecd then
                
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate) 
            end
        end
     end

     if ((class == "MAGE")) and (event == "SPELL_DAMAGE") and activeBUFFS[guid].Combustion and dbInspect[guid][416506] and KindlingSpells[SentID] and crit then -- Unleashed Inferno --Fire Mage 
        local reducecd = SentID == 2120 and 0.25 or 1.25
        
                if SentID == 257542 then 
                   local now = GetTime()
                   if anchor.phTime2 and anchor.phTime2 == now then reducecd = nil  else anchor.phTime2 = now end
                end
                
               if SentID == 2120 then
                  anchor.flameStrike = anchor.flameStrike and (anchor.flameStrike + 1) or 1
                  if anchor.flameStrike > 5 then reducecd = nil end
               end 

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 190319 and reducecd then
                local starttime = icon.starttime - reducecd

                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
     end


     if ((class == "MAGE")) and (event == "SPELL_CAST_SUCCESS")  and dbInspect[guid][342344] and KindlingSpells[SentID] then --From the Ashes --Fire Mage --
        local reducecd = 1

        if SentID == 257542 then reducecd = nil end

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 257541 and reducecd then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)

            end
        end
     end
     
     if ((class == "MAGE")) and (event == "SPELL_DAMAGE") and dbInspect[guid][417493] and SentID == 120 and timer then -- coldest-snap -- fire mage -- frozen orb 84721  
      anchor.CoChits = anchor.CoChits or {}
      anchor.CoChits[timer] = anchor.CoChits[timer] and anchor.CoChits[timer] + 1 or 1
      if anchor.CoChits[timer] and anchor.CoChits[timer] == 3 then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 84714 or icon.abilityID == 153595) then
                 icon.Stop()
            end
          end
        end
     end

    if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][234299] and dbReducePowerSpell[SentID] then --hoj --blizz bugged
        local isFree = AuraUtil.FindAuraByName(GetSpellInfo(223817), unit)
        local isfreebug = (AuraUtil.FindAuraByName(GetSpellInfo(326732), unit) and SentID == 53385)
        -- local foj = AuraUtil.FindAuraByName(GetSpellInfo(203316), unit)
        local reducePoints = dbInspect[guid][406545] and dbReducePowerSpell[SentID] + 1 or dbReducePowerSpell[SentID]
        local hasReduce = dbInspect[guid][234299] * reducePoints

        if isfreebug then hasReduce = 1 end --bug
        --[[
        local haveAura = activeAURAS[guid]
        if haveAura then
           for _, v in pairs(haveAura) do
                 --print(v.spellId)
           end
        end
--]]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 853 and
                not isFree then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][414720] and dbReducePowerSpell[SentID] then --lay on hands --tirion 392928
        local hasReduce = dbReducePowerSpell[SentID] * 1.5
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 633 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and spec == 66 and dbInspect[guid][204074] and dbReducePowerSpell[SentID] then --[Righteous Protector] 11.0.2
        local hasReduce = 1.5 --check later
        if anchor.Righteous and anchor.Righteous > GetTime() - 1 then hasReduce = nil end 
        anchor.Righteous = GetTime()

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 31884 or icon.abilityID == 86659  or icon.abilityID == 389539) and hasReduce then --or icon.abilityID == 389539
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_DAMAGE") and spec == 66 and dbInspect[guid][378279] and SentID == 31935 then --[Gift of the Golden Val'kyr]
        local isFree = AuraUtil.FindAuraByName(GetSpellInfo(223817), unit)
        local hasReduce = dbInspect[guid][378279] / 2

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 86659) and not isFree then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and spec == 66 and dbInspect[guid][385422] and dbReducePowerSpell[SentID] then --Resolute Defender
        local isFree = AuraUtil.FindAuraByName(GetSpellInfo(223817), unit)
        local hasReduce = (dbReducePowerSpell[SentID] / 3) * dbInspect[guid][385422]

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and
                (icon.abilityID == 31850 or icon.abilityID == 642) and not isFree then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "ROGUE") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][280719] and dbReducePowerSpell[SentID] and SentID ~= 280719 then 
        local hasReduce = dbReducePowerSpell[SentID]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 280719 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "ROGUE") and spec == 260 and (event == "SPELL_CAST_SUCCESS") and dbReducePowerSpell[SentID] then -- outlaw
        local spellList = {
            [315341] = true,
            [13750] = true,
            [195457] = true,
            [51690] = true,
            [2983] = true,
            [1856] = true,
          --  [137619] = true,
            [5277] = true,
            [1966] = true,
            [13877] = true,
            [315508] = true,
            [271877] = true,
        }
        local hasReduce = dbReducePowerSpell[SentID]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and spellList[icon.abilityID] then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    --[[
    if (class == "ROGUE") and spec == 261 and (event == "SPELL_CAST_SUCCESS") and SentID == 1856 and dbInspect[guid][382523] then -- Invigorating Shadowdust sub 50% in pvp --TODO
        local _, instanceType = IsInInstance()
        local isInPvP = instanceType == "arena" or instanceType == "pvp"
        local hasReduce = dbInspect[guid][382523] * 15
        if isInPvP then hasReduce = hasReduce / 2 end

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and not icon.excluded and --??
                icon.abilityID ~= 1856 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]

    if (class == "ROGUE") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][185314] and dbReducePowerSpell[SentID] then --shadow dance --check cpoints
        local hasReduce = 0.5 * dbReducePowerSpell[SentID]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 185313 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--[[
    if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and SentID == 6552 then --WARR -- kick fix
        local hasReduce = dbInspect[guid][383115]  or dbInspect[guid][391271] or dbInspect[guid][382461]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 6552 and
                hasReduce then
                local starttime = icon.starttime - 1
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]
    if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][384072] and SentID == 23922 then ---WARR -- shiled slam Impenetrable Wall
        local hasReduce = 6 --11.0.2
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 871 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "WARRIOR") and spec == 73 and dbInspect[guid][385840] and (SentID == 6343) then ---WARR -- Thunderlord
        local reducecd = 1.5

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 1160 then
               if (event == "SPELL_CAST_SUCCESS") and SentID == 6343 then anchor.Thunderlord = 0 end

               if (event == "SPELL_DAMAGE") and SentID == 6343 and anchor.Thunderlord and anchor.Thunderlord <= 4.5 then
                    anchor.Thunderlord = anchor.Thunderlord + 1.5
                    local starttime = icon.starttime - reducecd
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end

    if (class == "WARRIOR") and dbInspect[guid][275339] and (SentID == 46968) then ---WARR -- shockwave PROT and arms 11.0
        local reducecd = 15

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and
                icon.abilityID == 46968 then
                if (event == "SPELL_CAST_SUCCESS") then
                    anchor.ShockwaveProt = 0
                    C_Timer.After(2, function() anchor.ShockwaveProt = nil end)
                end
                if (event == "SPELL_DAMAGE") and anchor.ShockwaveProt then
                    anchor.ShockwaveProt = anchor.ShockwaveProt + 1
                end

                if (event == "SPELL_DAMAGE") and anchor.ShockwaveProt and anchor.ShockwaveProt >= 3 then --and anchor.ShockwaveProt >= 3
                    anchor.ShockwaveProt = nil
                    local starttime = icon.starttime - reducecd
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end

    if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][152278] and dbReducePowerSpell[SentID] then --WARR  Anger Management --
        local hasReduce = (spec == 73) and dbReducePowerSpell[SentID] / 10 or dbReducePowerSpell[SentID] / 15
        local cdList = {
            [262161] = 71,
            [167105] = 71,
            [227847] = 71,
            [1719] = 72,
            [107574] = 73,
            [871] = 73,
            [228920] = 72,
        }

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdList[icon.abilityID] == spec and hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MONK") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][280197] and dbReducePowerSpell[SentID] then --serenity chi 
       -- local hasReduce = dbInspect[guid][137639] and (dbReducePowerSpell[SentID] / 2) or (dbReducePowerSpell[SentID] * 0.15)
       local hasReduce = dbReducePowerSpell[SentID] / 4

--[[
        if (SentID == 100784 and AuraUtil.FindAuraByName(GetSpellInfo(100784), unit)) or AuraUtil.FindAuraByName(GetSpellInfo(152173), unit) then
            hasReduce = nil
        end
--]]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and  icon.abilityID == 137639 and hasReduce then --
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--[[
    if (class == "MONK") and spec == 270 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][337209] and
        SentID == 191837 then --Font of Life TODO
        local hasReduce = 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 116680 and
                hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MONK") and spec == 270 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][337209] and SentID == 191837 then --Font of Life TODO
        local hasReduce = 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 116680 and
                hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]

if (class == "MONK") and (event == "reducebrew") and dbInspect[guid][386937] and timer then --monk -- not tested
    local cdList = {
        [386276] = true,
        [115203] = true,
        [322507] = true,
        [119582] = true,
        [115399] = true,
    }
   local reducecd = dbInspect[guid][386937] * 0.5
    
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdList[icon.abilityID] then
          --  if anchor.BrewCD and icon.BrewCD > GetTime() - 3 then  break end
          --  anchor.BrewCD = timer
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

--[[
    if (class == "MONK") and (event == "SPELL_HEAL") and dbInspect[guid][388031] and SentID == 191894 then --Jade Bond 11.0.2
        local hasReduce = 0.5
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 322118 or icon.abilityID == 325197)  then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]

    if (class == "MONK") and (event == "SPELL_INTERRUPT") and dbInspect[guid][450631] and SentID == 116705 then --Energy Transfer
        local hasReduce = 5

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 115078 or icon.abilityID == 109132) and hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

if (class == "DEATHKNIGHT") and spec == 250 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][205723] and dbReducePowerSpell[SentID] then --DK Red Thirst --TO DO 2 sec
        local reduceDS = (SentID == 49998 and dbInspect[guid][219786] and AuraUtil.FindAuraByName(GetSpellInfo(219786), unit))
        local reduceDSI = (SentID == 49998 and dbInspect[guid][374277])
        
        local hasReduce = 2 * (dbReducePowerSpell[SentID] - (reduceDS and 5 or 0) ) / 10

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 55233 and hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "DRUID") and (event == "SPELL_INTERRUPT") and dbInspect[guid][205673] and SentID == 93985 then --Feral kick crd
        local cdList = { [61336] = true,[5217] = true,[252216] = true }
        local hasReduce = 10

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdList[icon.abilityID] and
                hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MAGE") and SentID == 235219 and (event == "SPELL_CAST_SUCCESS") then --Hypothermia cold snap
        C_Timer.After(0.2, function()
            local hasHypo = select(6, AuraUtil.FindAuraByName(GetSpellInfo(41425), unit, "HARMFUL"))
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.abilityID == 45438 and hasHypo then
                    local durationleft = hasHypo - GetTime()
                    local timeleft = icon.starttime + icon.cooldown - GetTime()

                    if timeleft > 30 and icon.starttime > 0 then
                        return
                    end
                    local starttime = GetTime() - icon.cooldown + durationleft
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end)
    end


    if (class == "PRIEST") and spec == 257 and (event == "SPELL_CAST_SUCCESS") then -- hpriest words
        local cdList = { [585] = 88625,[139] = 34861,[596] = 34861,[2060] = 2050,[2061] = 2050, [132157] = 88625, }
        local cdListCD = { [585] = 4,[139] = 2,[596] = 6,[2060] = 6,[2061] = 6, [132157] = 4, }

        local hasReduce = cdListCD[SentID]

        if activeBUFFS[guid].isApotheosis and hasReduce then hasReduce = hasReduce * 3 end

        if dbInspect[guid][391339] and hasReduce and SentID == 139 then
            hasReduce = hasReduce + 6
        end

        if dbInspect[guid][196985] and hasReduce then
            hasReduce = hasReduce + (hasReduce * dbInspect[guid][196985] * 0.1)
        end

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and cdList[SentID] == icon.abilityID then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    
    --Voice of Harmony now causes Holy Nova to reduce the cooldown of Chastise in addition to Holy Fire.

    if (class == "PRIEST") and spec == 257 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][390994] then -- hpriest words [Voice of Harmony]
        local cdList = {[33076] = 2050 , [373481] = 2050 ,[14914] = 88625, [120517] = 34861, [110744] = 34861, } --  [204883] = 34861

       -- local hasReduce = ATT.isPVP and dbInspect[guid][390994] or (dbInspect[guid][390994] * 2)     -- bug? +3
       local hasReduce = 4

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and cdList[SentID] == icon.abilityID then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end


  ---  Casting Holy Word: Chastise with Divine Word active now refunds 15 seconds from the cooldown of Holy Word: Chastise.
    if (class == "PRIEST") and spec == 257 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][372760] and SentID == 88625 then -- Divine Word
        local hasReduce = 15

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and activeBUFFS[guid].DivineWord and icon.abilityID == 88625 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end


    if (class == "PRIEST") and spec == 257 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][372835] and (SentID == 2050 or SentID == 34861) then -- hpriest Lightwell
        local hasReduce = 3

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and icon.abilityID == 372835 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PRIEST") and spec == 256 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][373035] and (SentID == 17) then -- pain sup --Protector of the Frail
        local hasReduce = 3

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and icon.abilityID == 33206 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MAGE") and (event == "SPELL_AURA_APPLIED") and dbInspect[guid][410939] and SentID == 31589 then -- blink cd reduction
        local hasReduce = 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and (icon.abilityID == 212653 or icon.abilityID == 1953) then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MAGE") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][387807] and (SentID == 108853 or SentID == 30455 or SentID == 5143) then -- Time manipulation
        local ccSpells = {[122] = true,  [113724] = true, [31661] = true, [383121] = true, [157997] = true,} --[120] = true shor cd , cone of cold
        
        local hasReduce = 2
        if SentID == 5143 and not activeBUFFS[guid].Clearcasting and spec == 62 then hasReduce = nil end
        if SentID == 30455 and spec == 64 then
            local frozenSpells = {[122] = true,  [157997] = true, [82691] = true, [228358] = true, [228600] = true, [33395] = true, [386770] = true,}
            local enemyUnit = destGUID and UnitTokenFromGUID(destGUID)
            local isFrozen = nil
            if enemyUnit then AuraUtil.ForEachAura(enemyUnit, "HARMFUL", nil, function(_, _, _, _, _, _, _, _, _, spellId, ...) if frozenSpells[spellId] then isFrozen = true end end) end
            if not isFrozen and not activeBUFFS[guid].FingerOfF then hasReduce = nil end
        end
       -- SPELL_AURA_BROKEN_SPELL
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and ccSpells[icon.abilityID] then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and spec == 254 and dbInspect[guid][248443] and (SentID == 186387 or SentID == 260243) then --hunter mm Ranger's Finesse -- remake 10.0.1  to test
        local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(248443), unit))
        local reducecd = (hasStacks and hasStacks == 3) and 20

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 186265 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--[[
    if (class == "DEATHKNIGHT") and (event == "SPELL_CAST_SUCCESS") and spec == 252 and dbInspect[guid][276837] and (SentID == 47541 or SentID == 207317) then --DK Army of the Damned
        local reducecd = 5
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and
                icon.abilityID == 42650 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]

if (class == "SHAMAN") and (event == "reduceMaelstrom") and dbInspect[guid][384447] and SentID == 344179 then --reduce Mael - Witch Doctor's Ancestry- Feral Spirits
    local hasReduce = 1 --update
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 51533)  then
            local starttime = icon.starttime - hasReduce
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

if (class == "SHAMAN") and ( SentID == 192058 or SentID == 51485 or SentID == 383013) and ( event == "SPELL_SUMMON") and destGUID then --Shaman cap
    if  SentID == 192058 then
        anchor.shamanCapGUID = destGUID
        anchor.shamanCap = 1
        --C_Timer.After(2.1, function() anchor.shamanCap = nil; anchor.shamanCapGUID = nil end)
    end

    if  SentID == 51485 then
        anchor.shamEgrabGUID = destGUID
    end

    if  SentID == 383013 then
        anchor.shamPosionGUID = destGUID
    end
end

    if (class == "SHAMAN") and (SentID == 118905) and (event == "capExploded") and destGUID then --Shaman cap
        local reducecd = 5

        if anchor.shamanCapTimer and anchor.shamanCapTimer + 20 > GetTime() then reducecd = nil end
        anchor.shamanCapTimer = GetTime()

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 192058 then
                if dbInspect[guid][265046] and anchor.shamanCap and anchor.shamanCap <= 4  then
                    anchor.shamanCap = anchor.shamanCap + 1
                    local starttime = icon.starttime - 5
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end

                if dbInspect[guid][445027] and reducecd then --Swift Recall
                    local starttime = icon.starttime - reducecd
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end

    if (class == "SHAMAN") and (SentID == 64695) and (event == "shamEgrab") and dbInspect[guid][445027] and destGUID then --Shaman cap
        local reducecd = 5
        
        if anchor.shamEgrabTimer and anchor.shamEgrabTimer + 20 > GetTime() then reducecd = nil end
        anchor.shamEgrabTimer = GetTime()

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 51485 and reducecd then
                    local starttime = icon.starttime - reducecd
                    icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "SHAMAN") and (SentID == 383015) and (event == "shamPosion") and dbInspect[guid][445027] and destGUID then --Shaman cap
        local reducecd = 5

        if anchor.shamPosionTimer and anchor.shamPosionTimer + 20 > GetTime() then reducecd = nil end
        anchor.shamPosionTimer = GetTime()

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 383013 and reducecd then
                    local starttime = icon.starttime - reducecd
                    icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and spec == 254 and dbInspect[guid][257044] and (SentID == 288613 or SentID == 257044) then --hunt MM rapidfire
        local reducecd = (SentID == 257044 and activeBUFFS[guid].isTrueshot) and 12 or (SentID == 288613) and 10

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 257044 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    --[[
    if (class == "PRIEST") and spec == 257 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][265202] and (SentID == 2050 or SentID == 34861) then -- Holy Word: Salvation
        local reducecd = 15
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 265202 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
   
    if (class == "PRIEST") and (event == "SPELL_HEAL" or event == "SPELL_DAMAGE") and  spec == 256 and dbInspect[guid][421558] and (SentID == 47750 or SentID == 47666) then -- Heaven's Wrath
       -- local reducecd = 1 * dbInspect[guid][421558] --11.0.2
        local reducecd = 2 --11.0.2

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 421453 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end


    if (class == "PRIEST") and (event == "SPELL_CAST_SUCCESS") and  spec == 256 and dbInspect[guid][390770] and (SentID == 8092 or SentID == 47540 ) then -- Void Summoner
        local reducecd = 8
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 34433 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
                print("TESTTT")
            end
        end
    end

    if (class == "PRIEST") and (event == "SPELL_CAST_SUCCESS") and spec == 256 and dbInspect[guid][390770] and (SentID == 8092 or SentID == 47540) then -- Void Summoner
        local reducecd = 4
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 123040 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]

--[[
    if (class == "PRIEST") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][390996] and (SentID == 585 or SentID == 8092 or SentID == 47540 or SentID == 400169) then -- Manipulation
        local reducecd = 0.5
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 375901 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]

    if (class == "WARLOCK") and (event == "SPELL_CAST_SUCCESS") and ATTdbs.lockPets[SentID] then -- Lock PETS --
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.abilityID == 119898 then
                icon.Stop();
                icon.texture:SetTexture(ATTdbs.lockPets[SentID].tex)
                icon.cooldown = ATTdbs.lockPets[SentID].cd
            end
        end
    end

    if (class == "WARLOCK") and (event == "lockcircle") and dbInspect[guid][409835] and timer then --lockcircle more testing
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 48020 then
                if icon.lockcircle and icon.lockcircle > GetTime() - 5 then  break end

                icon.lockcircle = timer
                local starttime = icon.starttime - 2
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][407876] and SentID == 395160 then -- upheaveal new
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 396286 then
                local reducecd = 1
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)  
            end
        end
    end

--[[
    if (class == "EVOKER") and (event == "SPELL_DAMAGE") and dbInspect[guid][410787] and SentID == 362969 then -- Geomancy new
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 358385 then
                local reducecd = 1
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)  
            end
        end
    end
--]]

    if (class == "EVOKER") and (event == "SPELL_DISPEL") and SentID == 372048 then -- Oppressing Roar
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == SentID then
                local reducecd = 20
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_SUMMON") and SentID == 368415 then -- time in need
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.cooldown > 0 and icon.abilityID == 368412 then
                self:StartCooldown(unit, 368412)
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_CAST_SUCCESS") and SentID == 373861 and dbInspect[guid][376237] then -- Temporal Anomaly Nozdormu's Teachings
        local empSpells = { [357208] = true,[359073] = true,[355936] = true, }
        local reducecd = 5

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and empSpells[icon.abilityID] then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_PERIODIC_DAMAGE") and SentID == 356995 and dbInspect[guid][375777] then -- Causality desintegrate
        local empSpells = { [357208] = true,[359073] = true,[355936] = true, }
        local reducecd = 0.5

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and empSpells[icon.abilityID] then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_DAMAGE") and dbInspect[guid][375777] and SentID == 357212 and timer then --pyre Causality TODO simpli
        local empSpells = { [357208] = true,[359073] = true,[355936] = true, }
        anchor.pyrehits = anchor.pyrehits or {}
        anchor.pyrehits[timer] = anchor.pyrehits[timer] and anchor.pyrehits[timer] + 1 or 1

        if anchor.pyrehits[timer] and anchor.pyrehits[timer] < 6 then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and empSpells[icon.abilityID] then
                    local reducecd = 0.4
                    local starttime = icon.starttime - reducecd
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end
    
--[[
    if (class == "WARLOCK") and (event == "SPELL_CAST_SUCCESS") and SentID == 399685 then -- soul-swap bug
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.cooldown > 0 and not icon.active and icon.abilityID == 386951 then
                self:StartCooldown(unit, 386951)
            end
        end
    end

    if (class == "SHAMAN") and (SentID == 188196 or SentID == 188443) and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][381936] then
        local natureSpells = {
            [2484] = true,
            [2825] = true,
            [5394] = true,
            [8143] = true,
            [51490] = true,
            [51514] = true,
            [57994] = true,
            [79206] = true,
            [108271] = true,
            [108281] = true,
            [108285] = true,
            [108287] = true,
            [191634] = true,
            [192058] = true,
            [192063] = true,
            [192077] = true,
            [198103] = true,
            [204331] = true,
            [204336] = true,
            [305483] = true,
            [355580] = true,
            [356736] = true,
            [378773] = true,
            [383013] = true,
            [383017] = true,
            [108270] = true,
            [375982] = true,
            [444995] = true,                    -- 11.0
           -- [383019] = true
        }
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and natureSpells[icon.abilityID] then
                local starttime = icon.starttime - 1
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
--]]
    local totemsS = {
        [2484] = true,
        [5394] = true,
        [8143] = true,
        [51485] = true,
        [157153] = true,
        [192058] = true,
        [192077] = true,
        [192222] = true,
        [198838] = true,
        [204330] = true,
        [204331] = true,
        [204336] = true,
        [355580] = true,
        [383013] = true,
        [383017] = true,
        [444995] = true,
        [381930] = true,  -- Poison Cleansing Totem (1-minute cooldown)
      --  [383019] = true
    }

    if (class == "SHAMAN") and dbInspect[guid][108285] and (totemsS[SentID] or SentID == 108285) and (event == "SPELL_CAST_SUCCESS") then --Shaman Totemic Recall
        anchor.shamanLastTotem = anchor.shamanLastTotem or {}

        if totemsS[SentID] then
            if anchor.shamanLastTotem[3] and anchor.shamanLastTotem[3] == 1 and dbInspect[guid][383012] then
                anchor.shamanLastTotem[3] = 2
            else
                anchor.shamanLastTotem[3] = 1
            end
            anchor.shamanLastTotem[anchor.shamanLastTotem[3]] = SentID
            return
        end
        if not dbInspect[guid][383012] then anchor.shamanLastTotem[2] = nil end

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and
                (icon.abilityID == anchor.shamanLastTotem[1] or icon.abilityID == anchor.shamanLastTotem[2]) then
                icon.Stop();
            end
        end
    end
 -- new set bonus 10.2.6-7
 if (class == "DEMONHUNTER") and spec == 577 and (event == "SPELL_CAST_SUCCESS") and SentID == 185123 and dbInspect[guid][1604] and dbInspect[guid][1604] >= 4 then --DH set bonus
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 370965 then
            local starttime = icon.starttime - 2
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

if (class == "DEMONHUNTER") and spec == 581 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][1604] and dbInspect[guid][1604] >= 4 and dbReducePowerSpell[SentID] then --DH set bonus Tank
 local cdr = dbReducePowerSpell[SentID] / 40

 for k, icon in ipairs(anchor.icons) do
     if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 204596 then
         local starttime = icon.starttime - cdr
         icon.SetTimer(starttime, icon.cooldown, rate)
     end
 end
end

if (class == "PALADIN") and (event == "SPELL_HEAL") and spec == 65 and crit and dbInspect[guid][1598] and dbInspect[guid][1598] >= 2 and (SentID == 25914) then ---hpala set?
    local reducecd = (SentID == 114158) and 2 or 1

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 114158 or icon.abilityID == 114165) then
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

if (class == "SHAMAN") and (event == "SPELL_SUMMON") and spec == 263 and dbInspect[guid][1606] and dbInspect[guid][1606] >= 4 and (SentID == 262627) then ---shaman enh --to test
    local reducecd = ATT.isPVP and 3.5 or 7
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 375982 then
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end



if (class == "WARRIOR") and (event == "SPELL_DAMAGE") and spec == 73 and dbInspect[guid][1602] and dbInspect[guid][1602] >= 4 and (SentID == 425534)  then ---warr prot 
    local reducecd =  ATT.isPVP and 1.5 or 3
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 384318 then
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

---set bonus 10.2.5
    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and spec == 253 and dbInspect[guid][1544] and dbInspect[guid][1544] >= 4 and (SentID == 193455 or SentID == 34026 or SentID == 2643) then ---bm set bonus
        local reducecd = 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 19574 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and spec == 254 and dbInspect[guid][1544] and dbInspect[guid][1544] >= 4 and (SentID == 53351) then ---mm set bonus
        local reducecd = 1.5
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 257044 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_HEAL") and spec == 65 and crit and dbInspect[guid][1547] and dbInspect[guid][1547] >= 2  and (SentID == 25914) then ---hpala
        local reducecd = dbInspect[guid][114158] and 2 or 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and (icon.abilityID == 114158 or icon.abilityID == 114165) then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "DEATHKNIGHT") and (event == "SPELL_CAST_SUCCESS") and spec == 251 and dbInspect[guid][1540] and dbInspect[guid][1540] >= 2 and (SentID == 49184) and activeBUFFS[guid].RimeE then ---dk
        local reducecd = 2
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 279302 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and spec == 73 and dbInspect[guid][1552] and dbInspect[guid][1552] >= 2 and (SentID == 23922)  then ---dk
        local reducecd = activeBUFFS[guid].LastStand and 4 or 2
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 12975 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "WARLOCK") and (event == "SPELL_CAST_SUCCESS") and spec == 266 and dbInspect[guid][1551] and dbInspect[guid][1551] >= 2 and (SentID == 264178) and activeBUFFS[guid].DemonicC then ---
        local reducecd = 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 111898 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
    --[Coordinated Kill] -- kill shot, Bombardier, War Orders (kill command), Witch Doctor's Ancestry

    ---11.0

    --HERO
    if (class == "DEATHKNIGHT") and (event == "SPELL_AURA_REMOVED") and dbInspect[guid][440476] and (SentID == 434765) then ---Pact of the Deathbringer ??
        local reducecd = 5
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 48743 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end 

    if (class == "DRUID") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][434249] and (SentID == 33891 or SentID == 391528 or SentID == 205636 or SentID == 194223 ) then ---Control of the Dream
        local reducecd = 15
        local time = GetTime()

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == SentID then 
               if icon.endtime and icon.endtime + 15 > time then reducecd = time - icon.endtime end
            
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end 

    if (class == "DRUID") and (event == "SPELL_AURA_REMOVED") and dbInspect[guid][434249] and (SentID == 132158) then ---Control of the Dream
        local reducecd = 15
        local time = GetTime()

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == SentID then

               if icon.endtime and icon.endtime + 15 > time then reducecd = time - icon.endtime end
            
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end 

    if (class == "DRUID") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][429539] and school == 64 then ---Lunation
        local reducecd = 2
    --and SentID ~= 204066 Lunar Beam no longer causes Lunation to reduce the cooldown of Lunar Beam.

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 202770 or icon.abilityID == 202771 or icon.abilityID == 274281) and SentID ~= 204066 then
                if icon.abilityID == SentID then return end
                if icon.abilityID == 274281 then reducecd = 1 end
                if icon.abilityID == 202771 then reducecd = 3 end

                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end 

   if (class == "EVOKER") and (event == "SPELL_EMPOWER_INTERRUPT") and (SentID == 355936 or SentID == 357208 or SentID == 367226 or SentID == 359073 or SentID == 396286) then --evo
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == SentID then
            icon.Stop()
        end
    end
   end

   if (class == "EVOKER") and (event == "SPELL_EMPOWER_END") and dbInspect[guid][431484] and (SentID == 355936 or SentID == 357208 or SentID == 367226 or SentID == 359073 or SentID == 396286)  then --evo
    local reducecd = 3 --rel up to 6

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == SentID then
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
   end


   if (class == "EVOKER") and (event == "SPELL_DAMAGE") and dbInspect[guid][441206] and (SentID == 434481) and timer then --evo Wingleader
    local reducecd = 1 

    anchor.bombhits = anchor.bombhits or {}
    anchor.bombhits[timer] = anchor.bombhits[timer] and anchor.bombhits[timer] + 1 or 1
    if anchor.bombhits and anchor.bombhits[timer] and anchor.bombhits[timer] > 3 then return end

    for k, icon in ipairs(anchor.icons) do
        if  icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 403631 or icon.abilityID == 357210 or icon.abilityID == 433874) then
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
   end


   if (class == "HUNTER") and (event == "SPELL_DAMAGE") and dbInspect[guid][451546] and (SentID == 450412) and timer then ---Sentinel Watch 2??
    local reducecd = 2

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 360952 or icon.abilityID == 288613) and (not icon.Sentinel or icon.Sentinel < 15) then 
            icon.Sentinel = icon.Sentinel and icon.Sentinel + 1 or 1 

            if icon.Sentinel == 15 then
                local timeleft = icon.starttime + icon.cooldown - GetTime()
                C_Timer.After(timeleft, function() icon.Sentinel = nil  end)
            end   
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end 

if (class == "MAGE") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][438600] and (SentID == 257541) then --- Excess Frost
    local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(438611), unit))
    local reducecd = 5

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasStacks and (icon.abilityID == 153561)  then 

            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end 

if (class == "MAGE") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][438600] and (SentID == 44614) then --- Excess Frost
    local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(438611), unit))
    local reducecd = 5

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasStacks and (icon.abilityID == 153595)  then 

            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end 

if (class == "MAGE") and (event == "SPELL_DAMAGE") and dbInspect[guid][438595] and (SentID == 438674) then --- Excess Fire
    local reducecd = 5
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0  and (icon.abilityID == 257541)  then 
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end 

if (class == "MONK") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][451041] and (SentID == 116841) then --- 
    local reducecd = 5
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0  and (icon.abilityID == 109132)  then 
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end 
   
local monkWWEspells = {
   [100780] = 60,
   [116095] = 15,
   [115078] = 20,
   [116670] = 30,
   [115175] = 15,
   [218164] = 10,
   [117952] = 20,
}

if (class == "MONK") and spec == 269 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][450989] and monkWWEspells[SentID] then --- ok
    local energySpent = monkWWEspells[SentID]		
    local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(392883), unit))

    if SentID == 100780 and dbInspect[guid][397768] then
        energySpent = energySpent - 5
    end

    if SentID == 116670 and hasStacks then
        energySpent = energySpent/4
    end

    local reducecd =  energySpent / 50 
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and (icon.abilityID == 137639)  then 
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end 

local monkBWEspells = {
    [100780] = 60,
    [116095] = 15,
    [115078] = 20,
    [116670] = 30,
    [115175] = 15,
    [218164] = 10,
    [117952] = 20,
    [121253] = 40,
	[322729] = 25,
	[322101] = 15,
 }
 
 if (class == "MONK") and spec == 268 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][450989] and monkBWEspells[SentID] then --- to fix
     local energySpent = monkBWEspells[SentID]		
     local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(392883), unit))
         
     if SentID == 116670 and hasStacks then
         energySpent = energySpent/4
     end
     
     local reducecd =  energySpent / 50 
     for k, icon in ipairs(anchor.icons) do
         if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and (icon.abilityID == 137639)  then 
             local starttime = icon.starttime - reducecd
             icon.SetTimer(starttime, icon.cooldown, rate)
         end
     end
 end 

if (class == "PALADIN") and (event == "SPELL_AURA_REMOVED") and dbInspect[guid][432866] and (SentID == 432502 or SentID == 432496) then --- 
    local reducecd = 15

    anchor.LDAfix = anchor.LDAfix or {}
     if anchor.LDAfix[SentID] then anchor.LDAfix[SentID] = false reducecd = nil else anchor.LDAfix[SentID] = true end --double procs ??

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and (icon.abilityID == 633)  then 
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][432919] and (SentID == 19750 or SentID == 82326 or SentID == 275773) then --- 
    local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(54149), unit))
    local reducecd = hasStacks and 3 or nil
  
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and (icon.abilityID == 432459)  then 
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][432919] and (SentID == 85673) then --- 
    local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(321136), unit))
    local reducecd = hasStacks and 3 or nil
  
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and (icon.abilityID == 432459)  then 
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end


if (class == "PRIEST") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][453828] and (SentID == 2061) then --- 
    local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(114255), unit))
    local reducecd = hasStacks and 4 or nil
  
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and (icon.abilityID == 34861)  then 
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

if (class == "PRIEST") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][428924] then --- ??
    local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(428933), unit))
    local reducecd = hasStacks and 7 or nil
    if reducecd and dbInspect[guid][440743] then reducecd = 10 end

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and not icon.excluded and reducecd and (icon.abilityID == SentID)  then 
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

if (class == "ROGUE") and (event == "SPELL_DAMAGE") and dbInspect[guid][457057] and (SentID == 457157) then --- 
    local reducecd = 3
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and (icon.abilityID == 36554)  then 
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end


if (class == "SHAMAN") and (event == "SPELL_SUMMON") and dbInspect[guid][443451] and SentID == 445624 then
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 198067 or icon.abilityID == 192249) then
            local starttime = icon.starttime - 5
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end


if (class == "SHAMAN") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][445024] and (SentID == 117014 or SentID == 197214)  then
    local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(453406), unit))
    local reducecd = hasStacks and 12 or nil

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == SentID then
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end


if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][444777] and (SentID == 100)  then -- bugged first charge?
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0  and (icon.abilityID == 6544 or icon.abilityID == 52174) then 
            local starttime = icon.starttime - 2
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][444777] and (SentID == 6544 or SentID == 52174 )  then --dup same spell
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0  and icon.abilityID == 100 then
            local starttime = icon.starttime - 5
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end


if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][444780] and (SentID == 280735)  then --
    local enemyUnit = destGUID and UnitTokenFromGUID(destGUID)
    local hasStacks = enemyUnit and select(3, AuraUtil.FindAuraByName(GetSpellInfo(445584), enemyUnit, "HARMFUL"))
    local reducecd = hasStacks and 5 or nil
    
    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 227847 then
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end


if (class == "DEATHKNIGHT") and (event == "PARTY_KILL") and dbInspect[guid][434136] then --
    local enemyUnit = destGUID and UnitTokenFromGUID(destGUID)
    local isTrivial = enemyUnit and UnitIsTrivial(enemyUnit)

    local reducecd = not isTrivial and 3 or nil

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 48792 then
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end

if (class == "DRUID") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][443046] and (SentID == 16979) then ---Elune's Grace
    local reducecd = 3

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 102401 then         
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end 

if (class == "WARRIOR") and (event == "SPELL_AURA_REFRESH") and dbInspect[guid][429636] and (SentID == 440989) then --
    local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(440989), unit))
    anchor.Colossus = (anchor.Colossus and anchor.Colossus >= 10 and hasStacks == 10) and 11 or hasStacks

    local reducecd =  (anchor.Colossus == 11) and 2 or nil

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 436358 then         
            local starttime = icon.starttime - reducecd
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end 


-------------- 11.1

if (class == "SHAMAN") and (SentID == 188196 or SentID == 188443) and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][1217092] then
    anchor.SCTimer = anchor.SCTimer or 0  
    if GetTime() - anchor.SCTimer < 0.5 then return end  
    anchor.SCTimer = GetTime()  
        

    local natureSpells = {

        [108271] = true,  -- Astral Shift
        [192063] = true,  -- Gust of Wind
        [57994] = true,   -- Wind Shear

        [2484] = true,    -- Earthbind Totem
        [5394] = true,    -- Healing Stream Totem
        [8143] = true,    -- Tremor Totem
        [8177] = true,    -- Grounding Totem
        [8190] = true,    -- Magma Totem
        [8512] = true,    -- Windfury Totem
        [1535] = true,    -- Fire Nova Totem
        [3599] = true,    -- Searing Totem
        [5730] = true,    -- Stoneclaw Totem
        [8170] = true,    -- Cleansing Totem
        [2062] = true,    -- Earth Elemental Totem
        [2894] = true,    -- Fire Elemental Totem
        [51485] = true,   -- Earthgrab Totem
        [108280] = true,  -- Healing Tide Totem
        [108281] = true,  -- Ancestral Guidance
        [157153] = true,  -- Cloudburst Totem
        [192058] = true,  -- Lightning Surge Totem
        [192077] = true,  -- Wind Rush Totem
        [192222] = true,  -- Liquid Magma Totem
        [198838] = true,  -- Earthen Wall Totem
        [204330] = true,  -- Skyfury Totem
        [204331] = true,  -- Counterstrike Totem
        [204336] = true,  -- Grounding Totem
        [207399] = true,  -- Ancestral Protection Totem
        [355580] = true,  -- Static Field Totem
        [381930] = true,  -- Poison Cleansing Totem
        [383013] = true,  -- Spiritwalker's Aegis
        [383017] = true,  -- Spiritwalker's Tidal Totem
        [444995] = true,  -- Surging Totem
    }

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and natureSpells[icon.abilityID] then
            local starttime = icon.starttime - (spec == 264 and 4 or 1)
            icon.SetTimer(starttime, icon.cooldown, rate)
        end
    end
end





end




function ATT:RecoveryCD(unit, SentID, event, unitDest)
    if not unit then return end
    local anchor = self:GetAnchorByUnit(unit)
    local guid = anchor and anchor.GUID
    if not anchor or not guid or not dbInspect[guid] then
        return
    end

        if (event == "SPELL_AURA_APPLIED") and SentID == 443421 and dbInspect[guid][443294] then -- monk Heart of the Jade Serpent
            local rate = 100 / 175
            local monkHspells = {[116849]= true, [116680]= true, [392983]= true, [152175]= true, [113656]= true, [101545] = true, }

            for k, icon in ipairs(anchor.icons) do     
                if icon.active and icon.inUse and icon.cooldown > 0 and icon.starttime > 0 and monkHspells[icon.abilityID] and not icon.raterecovery then 
                    local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                    local cooldown = icon.cooldown * rate
                    icon.SetTimer(starttime, cooldown, rate, true)
                    icon.cdrecovery = cooldown
                    icon.raterecovery = rate
                end
            end

            C_Timer.After(7.5, function() 
                for k, icon in ipairs(anchor.icons) do
                    if icon.active and icon.inUse  and icon.cooldown > 0 and icon.starttime > 0 and icon.cdrecovery and monkHspells[icon.abilityID] and icon.raterecovery then
                        local rate = 1 / icon.raterecovery
                        local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                        local cooldown = icon.cdrecovery * rate
                        icon.SetTimer(starttime, cooldown, 1, true)
                    end
                    icon.cdrecovery = nil;
                    icon.raterecovery = nil
              end
             end)
         end


    if  SentID == 431698 and dbInspect[guid][431695] then -- Temporal Burst
        if (event == "SPELL_AURA_APPLIED") then
            local function callback(self)
                local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(431698), unit))
                if not hasStacks then self:Cancel()  return end
                local rate = 100 / (101 + hasStacks)

                for k, icon in ipairs(anchor.icons) do
                    if icon.active and icon.inUse and not icon.isTrinket and icon.cooldown > 0 and icon.starttime > 0 and not anchor.timeskip then
                        if icon.raterecovery then
                            local rate = 1 / icon.raterecovery
                            local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                            local cooldown = icon.cdrecovery * rate
                            icon.SetTimer(starttime, cooldown, 1, true)
                            icon.cdrecovery = nil;
                            icon.raterecovery = nil
                        end
                    local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                    local cooldown = icon.cooldown * rate
                    icon.SetTimer(starttime, cooldown, rate, true)
                    icon.cdrecovery = cooldown
                    icon.raterecovery = rate
                    end
                end
            end
    
            local tempBurstTimer = C_Timer.NewTicker(1, callback, 30)
        end
    
      if  (event == "SPELL_AURA_REMOVED") then
        for k, icon in ipairs(anchor.icons) do
            if icon.active and icon.inUse and not icon.isTrinket and icon.cooldown > 0 and icon.starttime > 0 and not anchor.timeskip and icon.raterecovery then
                local rate = 1 / icon.raterecovery
                local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                local cooldown = icon.cdrecovery * rate
                icon.SetTimer(starttime, cooldown, 1, true)
            end
            icon.cdrecovery = nil;
            icon.raterecovery = nil
        end
      end

    end

    if (event == "SPELL_CAST_SUCCESS") and SentID == 404977 and dbInspect[guid][404977] then -- time skip --TODO OK
        local rate = 1/11
 
        local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(431698), unit))
        local rate = hasStacks and (rate * (100 / (101 + hasStacks ))) or (rate)
 
        for k, icon in ipairs(anchor.icons) do 
            if (icon.active and icon.inUse and not icon.isTrinket and icon.cooldown > 0 and icon.starttime > 0) and (icon.abilityID == 404977) then --and not icon.raterecovery
                local starttime = GetTime() * (1 - rate) + (icon.starttime) * rate
                local cooldown = icon.cooldown * rate
                icon.SetTimer(starttime, cooldown, rate, true)
                icon.cdrecovery = cooldown
                icon.raterecovery = rate
            end
        end
     end

    if (event == "SPELL_AURA_APPLIED") and SentID == 404977 and dbInspect[guid][404977] then -- time skip --TODO OK
       anchor.timeskip = true
       local rate = 1/11

       local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(431698), unit))
       local rate = hasStacks and (rate * (100 / (101 + hasStacks ))) or (rate)

       for k, icon in ipairs(anchor.icons) do
           if (icon.active and icon.inUse and not icon.isTrinket and icon.cooldown > 0 and icon.starttime > 0) and (icon.abilityID ~= 404977) then --and not icon.raterecovery
               local starttime = GetTime() * (1 - rate) + icon.starttime * rate
               local cooldown = icon.cooldown * rate
               icon.SetTimer(starttime, cooldown, rate, true)
               icon.cdrecovery = cooldown
               icon.raterecovery = rate
           end
       end
    end

    if  (event == "SPELL_AURA_REMOVED") and SentID == 404977 and dbInspect[guid][404977]  then -- time skip and anchor.TimeSkip
        anchor.timeskip = false
        for k, icon in ipairs(anchor.icons) do
            if icon.active and icon.inUse and not icon.isTrinket and icon.cooldown > 0 and icon.starttime > 0 and icon.cdrecovery then
                local rate = 1 / icon.raterecovery
                local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                local cooldown = icon.cdrecovery * rate
                icon.SetTimer((icon.abilityID == 404977) and (starttime - 2.8) or starttime , cooldown, 1, true)
            end

            icon.cdrecovery = nil;
            icon.raterecovery = nil
      end
    end
    
    if SentID == 368239 and (event == "SPELL_AURA_APPLIED") then -- Decrypted Urh Cypher
        local rate = 100 / 300
        for k, icon in ipairs(anchor.icons) do
            if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and not icon.raterecovery then
                local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                local cooldown = icon.cooldown * rate
                icon.SetTimer(starttime, cooldown, rate, true)
                icon.cdrecovery = cooldown
                icon.raterecovery = rate
            end
        end
    end

    if SentID == 329042 and (event == "SPELL_CAST_SUCCESS") then --Emerald Slumber
        local rate = 100 / 500
        for k, icon in ipairs(anchor.icons) do
            if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID ~= 329042 and not icon.raterecovery then
                local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                local cooldown = icon.cooldown * rate
                icon.SetTimer(starttime, cooldown, rate, true)
                icon.cdrecovery = cooldown
                icon.raterecovery = rate
            end
        end
    end

    if (SentID == 329042 or SentID == 368239) and (event == "SPELL_AURA_REMOVED") then --Emerald Slumber , Decrypted Urh Cypher
        for k, icon in ipairs(anchor.icons) do
            if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and icon.cdrecovery then
                local rate = 1 / icon.raterecovery
                local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                local cooldown = icon.cdrecovery * rate
                icon.SetTimer(starttime, cooldown, 1, true)
            end
            icon.cdrecovery = nil;
            icon.raterecovery = nil
        end
    end

    if (SentID == 235450 or SentID == 235313 or SentID == 11426) and dbInspect[guid][382800]  then -- [Accumulative Shielding]
        if (event == "SPELL_CAST_SUCCESS") then
            local rate = ATT.isPVP and (100 / 120) or (100 / 130)
            for k, icon in ipairs(anchor.icons) do
                if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and
                    not icon.raterecovery and icon.abilityID == SentID then
                    local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                    local cooldown = icon.cooldown * rate
                    icon.SetTimer(starttime, cooldown, rate, true)
                    icon.cdrecovery = cooldown
                    icon.raterecovery = rate
                end
            end
        end
        if (event == "SPELL_AURA_REMOVED") then
            for k, icon in ipairs(anchor.icons) do
                if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and
                    icon.cdrecovery and icon.abilityID == SentID then
                    local rate = 1 / icon.raterecovery
                    local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                    local cooldown = icon.cdrecovery * rate
                    icon.SetTimer(starttime, cooldown, 1, true)
                end
                icon.cdrecovery = nil;
                icon.raterecovery = nil
            end
        end
    end
--[[
    if SentID == 152173 then --Serentity
        if (event == "SPELL_AURA_APPLIED") then
            local rate = 100 / 200
            for k, icon in ipairs(anchor.icons) do
                if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and dbReducePowerSpell[icon.abilityID] and not icon.raterecovery then
                    local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                    local cooldown = icon.cooldown * rate
                    icon.SetTimer(starttime, cooldown, rate, true)
                    icon.cdrecovery = cooldown
                    icon.raterecovery = rate
                end
            end
        end
        if (event == "SPELL_AURA_REMOVED") then
            for k, icon in ipairs(anchor.icons) do
                if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and icon.cdrecovery and dbReducePowerSpell[icon.abilityID] then
                    local rate = 1 / icon.raterecovery
                    local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                    local cooldown = icon.cdrecovery * rate
                    icon.SetTimer(starttime, cooldown, 1, true)
                end
                icon.cdrecovery = nil;
                icon.raterecovery = nil
            end
        end
    end
    --]]
end

function ATT:HasForbearance(unit, event, dest, SentID)
    if not unit then return end
    local anchor = self:GetAnchorByUnit(unit)
    local guid = anchor and anchor.GUID
    if not anchor or not guid or not dbInspect[guid] then
        return
    end
    local _, class = UnitClass(unit)
    local spec = dbInspect[guid]["spec"]

    if (class == "PALADIN") and spec and SentID == 25771 then --pala forb -- auraType == "DEBUFF"
        local forbSpells = { [1022] = true,[204018] = true,[633] = true,[642] = true }
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and forbSpells[icon.abilityID] then --and hasForb
                local timeleft = icon.starttime + icon.cooldown - GetTime()
                if (timeleft < 30) and (event == "SPELL_AURA_APPLIED") then
                    icon.hasForb = true
                    icon.texture:SetVertexColor(0.4, 0.4, 0.4)
                end
                if (event == "SPELL_AURA_REMOVED") and icon.hasForb then
                    icon.hasForb = nil
                    icon.texture:SetVertexColor(1, 1, 1)
                end
            end
        end
    end
end


function ATT:COMBAT_LOG_EVENT_UNFILTERED()
    if not ATTIcons:IsShown() then return end
    local _, event, _, sourceGUID, _, _, _, destGUID, _, _, _, SentID, spellName, school, auraType, overheal, powerType, healCrit, currentPower, _, crit =
        CombatLogGetCurrentEventInfo()
    local unit = self:GetUnitByGUID(sourceGUID)
    local unitDest = self:GetUnitByGUID(destGUID)

  -- if (unit) then print(SentID .." - "..spellName .." - "..event) end --456368

   if unit and (event == "SPELL_CAST_SUCCESS") then
    --print(spellName .. " - "..SentID .. " - "..school)
        if not dispelSpells[SentID] then self:StartCooldown(unit, SentID, dbAuraRemoved[SentID] and "AuraOn") end
        if ATTdbs.ShareCD[SentID] then
            self:StartCooldown(unit, ATTdbs.ShareCD[SentID], dbAuraRemoved[SentID] and "AuraOn")
        end
        self:ReduceCD(unit, SentID, event, _, _, _, unitDest, destGUID, school)

        if (SentID == 329042 or SentID == 235450 or SentID == 235313 or SentID == 11426 or SentID == 404977) then
            self:RecoveryCD(unit, SentID, event, unitDest)
        end
    end

    if unit and (event == "SPELL_DISPEL") and dispelSpells[SentID] then
        self:StartCooldown(unit, SentID, dbAuraRemoved[SentID] and "AuraOn") 
    end
    

    if unit and (event == "SPELL_AURA_REMOVED") and (auraType == "BUFF") then
        if dbAuraRemoved[SentID] then
            self:StartCooldown(unit, SentID)
        end

        if SentID == 342246 or SentID == 47788 or SentID == 393099  or SentID == 235313 or SentID == 11426 or SentID == 235450  or SentID == 456368 or SentID == 443506 then
            self:ReduceCD(unit, SentID, event)
        end

        if SentID == 432502 or SentID == 432496 or SentID == 260242 or SentID == 194594 then 
            self:ReduceCD(unit, SentID, event)
        end

        if SentID == 327710 or SentID == 328622 or SentID == 152173 or SentID == 235450 or SentID == 235313 or SentID == 11426 or SentID == 404977 or SentID == 329042 or SentID == 431698 or SentID == 443421 then
            self:RecoveryCD(unitDest, SentID, event, unit)
        end

    end

    if unit and ((event == "SPELL_AURA_APPLIED") and (auraType == "BUFF")) then

        if (SentID == 327710 or SentID == 328622 or SentID == 404977 or SentID == 431698 or SentID == 443421)  then --or SentID == 152173
            self:RecoveryCD(unitDest, SentID, event)
        end


        if (SentID == 427912 ) then --dh charges
            self:StartCooldown(unit, 258920)
        end

        if (SentID == 64901 or SentID == 212800 or SentID == 326860 or SentID == 259285 or SentID == 342246  ) then
            self:ReduceCD(unit, SentID, event)
        end
    end

    if unit and unitDest and SentID == 633 and (event == "SPELL_HEAL") and auraType then
        local cdreduce = math.min((auraType - overheal) / UnitHealthMax(unitDest), 0.6)
        self:ReduceCD(unit, SentID, event, cdreduce)
    end

    if unit and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REFRESH") or (event == "SPELL_HEAL")) and dbAuraApplied[SentID] then
        self:StartCooldown(unit, SentID)
    end

    if (event == "SPELL_DAMAGE") and (SentID == 434481) then --Bombardments
        for k, anchor in ipairs(anchors) do
            if  activeBUFFS[anchor.GUID] and activeBUFFS[anchor.GUID].Bombardments then
                local unit = self:GetUnitByGUID(anchor.GUID)
                self:ReduceCD(unit, SentID, event,GetTime())
            end
        end      
    end

    if unit and (event == "SPELL_DAMAGE") then

     --if (SentID == 2120) and crit then self:ReduceCD(unit, SentID, event)  end
       if (SentID == 328928 or SentID == 6343 or SentID == 46968 or SentID == 31935 or SentID == 357212 or SentID == 120 or SentID == 362969 or SentID == 47666 or SentID == 425534 or SentID == 450412 or SentID == 438674) then
        self:ReduceCD(unit, SentID, event, GetTime()) 
        end

       if (SentID == 108853 or SentID == 11366 or SentID == 133 or SentID == 2948 or SentID == 257542 or SentID == 2120) and crit then self:ReduceCD(unit, SentID, event, _, _, crit, unitDest) end
       if SentID == 190357 then self:ReduceCD(unit, SentID, "blizzard") end
     --  if (SentID == 325217 ) then self:ReduceCD(unit, SentID, "attenuation") end --monk
        if (SentID == 457157 ) then self:ReduceCD(unit, SentID, event)  end 

        if (SentID == 257620 or SentID == 260247 or SentID == 19434 ) then self:ReduceCD(unit, SentID, event)  end 

       if (SentID == 389860 or SentID == 204598 ) then  self:ReduceCD(unit, SentID, "ReduceSigilsDH", GetTime()) end 
    end


    if unit and (event == "SPELL_DISPEL") and (SentID == 314793 or SentID == 372048) then
        self:ReduceCD(unit, SentID, event)
    end

    if unit and (event == "SPELL_PERIODIC_DAMAGE") then
        if SentID == 356995 then self:ReduceCD(unit, SentID, event) end
        if SentID == 117952 then self:ReduceCD(unit, SentID, "SPELL_CAST_SUCCESS") end --monk energy
    end

    if unit and (event == "SPELL_INTERRUPT") then
        self:ReduceCD(unit, SentID, event)
    end

    if unit and (event == "SPELL_EMPOWER_INTERRUPT" or event == "SPELL_EMPOWER_END" ) then
        if SentID == 1217413 then self:StartCooldown(unit, SentID, dbAuraRemoved[SentID] and "AuraOn") end

        if SentID == 355936 or SentID == 357208 or SentID == 367226 or SentID == 359073 or SentID == 396286 then self:ReduceCD(unit, SentID, event) end --endcast rel cd haste
    end

    if unit and (event == "SPELL_HEAL") and SentID ~= 633 then
        self:ReduceCD(unit, SentID, event, _, _, healCrit, unitDest)
        if (SentID == 325218 ) then self:ReduceCD(unit, SentID, "attenuation") end --monk
    end

    if unit and (event == "SPELL_PERIODIC_HEAL") then
        if SentID == 115175 then self:ReduceCD(unit, SentID, "SPELL_CAST_SUCCESS") end --monk energy
    end


    if unit and (event == "SPELL_SUMMON") then
        self:ReduceCD(unit, SentID, event, _, _, healCrit, unitDest, destGUID)
        if SentID == 52150 then self:StartCooldown(unit, 46584) end --dk raise unholy
    end

    if unit and (event == "SPELL_PERIODIC_DAMAGE") and SentID == 188389 and crit then
        self:ReduceCD(unit, SentID, "flameshock")
    end

    if unit and destGUID and (event == "SWING_DAMAGE")  then -- monk Press the Advantage
      self:ReduceCD(unit, SentID, "PtA", GetTime()) 
    end

    if not unit and unitDest and ((event == "SWING_DAMAGE") or (event == "SPELL_DAMAGE") or (event == "RANGE_DAMAGE") or (event == "SPELL_ABSORBED")) then --lock ciricle /spriest
        if school == 1 and not (event == "SPELL_ABSORBED") then 
           self:ReduceCD(unitDest, SentID, "lockcircle", GetTime())
        end
           self:ReduceCD(unitDest, SentID, "voidform", GetTime())
    end

    if unit and unitDest and ((event == "SWING_MISSED") or (event == "RANGE_MISSED") or (event == "SPELL_MISSED")) then --reduce brew Anvil & Stave
           if auraType == "DODGE" or auraType == "MISS"  then self:ReduceCD(unitDest, SentID, "reducebrew", GetTime()) end
    end


    if unit and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_APPLIED_DOSE") ) and SentID == 344179  then --reduce Maelstrom
        self:ReduceCD(unit, SentID, "reduceMaelstrom")
     end

     if unit and ((event == "SPELL_AURA_REFRESH") ) and SentID == 344179  then --reduce Maelstrom TO DO at max stacks

    end

     if unit and (event == "SPELL_AURA_REFRESH") and SentID == 440989  then --Dominance of the Colossus
        self:ReduceCD(unit, SentID, event)
     end
     
     if unit and (event == "SPELL_AURA_REMOVED") and (auraType == "DEBUFF") and (SentID == 434765 or SentID == 466872) then --reduce DK Pact of / trueshot hunt
         self:ReduceCD(unit, SentID, event) 
      end

      if unit and (event == "SPELL_AURA_REMOVED") and SentID == 132158 and (auraType == "BUFF") then --drood cd reduce
        self:ReduceCD(unit, SentID, event) 
      end


      if unit and (event == "SPELL_ENERGIZE") and SentID == 391345 then --DH Fel deva
        self:ReduceCD(unit, SentID, event, auraType) 
     end
    --[[
    --  if unit and (event == "SPELL_ENERGIZE") and powerType == 4 then  --rogue combos -- auraType
--]]
    if unit and (event == "PARTY_KILL") then  self:ReduceCD(unit, SentID, event, _, _, _, unitDest, destGUID, school) end --DK Bloody Fortitude


    if ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REMOVED")) and auraType == "DEBUFF" then

        if SentID == 434473 then self:RegisterBuffs(unit, event, dest, SentID) end --register bombhits
        if unitDest then self:HasForbearance(unitDest, event, unitDest, SentID) end
  
        if SentID == 368239 then self:RecoveryCD(unitDest, SentID, event) end -- Decrypted Urh Cypher

        if SentID == 118905 and (event == "SPELL_AURA_APPLIED") and not unit and not unitDest then
            for k, anchor in ipairs(anchors) do
                if anchor.shamanCap and anchor.shamanCapGUID == sourceGUID then
                    local shamUnit = self:GetUnitByGUID(anchor.GUID)
                    self:ReduceCD(shamUnit, SentID, "capExploded", _, _, healCrit, unitDest, destGUID)
                end
            end
        end
        if SentID == 64695 and (event == "SPELL_AURA_APPLIED") and not unit and not unitDest then
            for k, anchor in ipairs(anchors) do
                if anchor.shamEgrabGUID == sourceGUID then
                    local shamUnit = self:GetUnitByGUID(anchor.GUID)
                    self:ReduceCD(shamUnit, SentID, "shamEgrab", _, _, healCrit, unitDest, destGUID)
                end
            end
        end
    end
    
    if SentID == 383015 and (event == "SPELL_DISPEL") and not unit and not unitDest then
        for k, anchor in ipairs(anchors) do
            if anchor.shamPosionGUID == sourceGUID then
                local shamUnit = self:GetUnitByGUID(anchor.GUID)
                self:ReduceCD(shamUnit, SentID, "shamPosion", _, _, healCrit, unitDest, destGUID)
            end
        end
    end

    if unit and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REFRESH")) and (auraType == "DEBUFF") then 
        self:ReduceCD(unit, SentID, event) --mage blink talented ????

        if ((SentID == 204598) or (SentID == 207685) or (SentID == 204490) or (SentID == 204843)) then
            self:ReduceCD(unit, SentID, "ReduceSigilsDH", GetTime()) 
        end
    end

    if unit and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REFRESH") or (event == "SPELL_AURA_REMOVED")) and (auraType == "BUFF") then
        local dest = (unitDest and unitDest) or unit --no use
        self:RegisterBuffs(unit, event, dest, SentID)
    end


    if unit and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REMOVED")) and (auraType == "BUFF") then
        if db.glow then
            local destToken = destGUID and UnitTokenFromGUID(destGUID)
            local destUnit = unitDest and unitDest or destToken
            local dest = destUnit and destUnit or unit

            local tokenGUID
            if not unitDest and destToken then tokenGUID = destGUID end

            C_Timer.After(0.02, function() self:IconGlow(unit, spellName, event, dest, SentID, tokenGUID) end)
            if ATTdbs.ShareCD[SentID] then C_Timer.After(0.02, function() self:IconGlow(unit, spellName, event, dest, ATTdbs.ShareCD[SentID], tokenGUID) end) end -- TO TEST
        end
    end
end

function ATT:IconGlow(unit, spellName, event, unitDest, SentID, tokenGUID)
    if not unit or not unitDest then
        return
    end
    local anchor = self:GetAnchorByUnit(unit)
    if not anchor then
        return
    end

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and event == "SPELL_AURA_APPLIED" and (SentID == icon.abilityID) and not icon.race then --spellName == icon.ability
            local duration = select(5, AuraUtil.FindAuraByName(spellName, unitDest))
            if icon.showing and icon.cooldown and duration and duration > 1 and icon.cooldown > duration then -- here (icon.active or dbAuraRemoved[SentID])
                self:ShowGlow(icon, duration)
                --LGlows.ShowOverlayGlow2(icon)
                C_Timer.After(duration + 0.5, function()
                    local hasUnitToken = tokenGUID and UnitTokenFromGUID(tokenGUID)
                    local unitDest = hasUnitToken and hasUnitToken or unitDest
                    local isActive = select(5, AuraUtil.FindAuraByName(spellName, unitDest));
                    if not isActive then
                       -- LGlows.HideOverlayGlow2(icon)
                       self:HideGlow(icon)
                    end
                end)
            end
        end
        if event == "SPELL_AURA_REMOVED" and SentID == icon.abilityID and icon.glowDuration then
            --LGlows.HideOverlayGlow2(icon)           
            self:HideGlow(icon)
        end
    end
end

-- resets all icons
function ATT:StopAllIcons(flag)
    for k, anchor in ipairs(anchors) do
        anchor:StopAllIcons(flag)
    end
    wipe(activeGUIDS)
end

function ATT:StopAllGlow()
    for k, anchor in ipairs(anchors) do
        anchor:StopAllGlow()
    end
end

function ATT:SendUpdate()
    if self.useCrossAddonCommunication and IsInGroup() then
        local joinedString = strjoin(",", "Version", PlayerGUID, ATTversion)
        C_ChatInfo.SendAddonMessage(ChatPrefix, joinedString, (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT") or (IsInRaid(LE_PARTY_CATEGORY_HOME) and "RAID") or "PARTY")
    end
end

function ATT:ProcessSync(anchor, spellId, cooldownInfo)
    if not anchor or not spellId or not cooldownInfo then return end
    local isReady, normalizedPercent, timeLeft, charges, minValue, maxValue, currentValue = ATTdbs:GetCooldownInfo(cooldownInfo)

    for k, icon in ipairs(anchor.icons) do
            if (not isReady) and timeLeft and timeLeft > 0 and icon.inUse and (icon.abilityID == spellId) then --or ATTdbs.dbReplace[icon.abilityID] == spellId
                local start = currentValue - icon.cooldown + timeLeft --processing time
                local iconCharges = icon.maxcharges and getIconCharges(icon)
                 --  print(spellId.. " - " .. ceil(icon.starttime) .. " -" .. ceil(start) .. " ---- ".. charges .. " - " )

                   if not icon.starttime or ((ceil(icon.starttime) ~= ceil(start))) or (iconCharges and (iconCharges ~= charges)) then
                     icon.SetTimer(start, icon.cooldown, nil, nil, icon.maxcharges and charges, true)

                   -- print("UPDATE -openraid " ..spellId)
                  end
            elseif isReady and icon.inUse and icon.starttime and icon.active and icon.abilityID == spellId then
                 --and not ATTdbs.dbReplace[icon.abilityID]
                  icon.Stop()
            end
        end
end

function ATTdbs:OnReceiveCooldownUpdate(unitId, spellId, cooldownInfo)
    local anchor = ATT:GetAnchorByUnit(unitId)
    if not anchor or not spellId or not cooldownInfo then return end
    local guid = UnitGUID(unitId)

    if not dbInspect[guid] and syncChache[guid] then 
        syncChache[guid][spellId] = cooldownInfo
    end

     ATT:ProcessSync(anchor, spellId, cooldownInfo)
end

function ATTdbs:OnReceiveCooldownListUpdate(unitId, unitCooldows)
    local anchor = ATT:GetAnchorByUnit(unitId)
    if not anchor or not unitCooldows then return end
    local guid = UnitGUID(unitId)
    
    if not dbInspect[guid]  then 
        syncChache[guid] = unitCooldows
    end

    for spellId, cooldownInfo in pairs(unitCooldows) do
        ATT:ProcessSync(anchor, spellId, cooldownInfo)
    end
end


function ATT:CHAT_MSG_ADDON(prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID)

    if prefix == ChatPrefix and text then
        local msgtype, guid, infos = strmatch(text, "(.-),(.-),(.+)")

        if not msgtype or not guid or not infos then return end

        if msgtype == "Version" then
            if infos and tonumber(infos) and tonumber(infos) > tonumber(ATTversion) and not self.VersionChecked then
                self.VersionChecked = tonumber(infos)
                print(L["NEWVERSION"].." [|cffFF4500v" .. infos .. "|r]")
            end
        end
    end
end

function ATT:PLAYER_EQUIPMENT_CHANGED(item)
    if not item then
        return
    end
    self:InspectPlayer()
    self:ApplyAnchorSettings()
end

function ATT:PLAYER_SPECIALIZATION_CHANGED(unit)
    if not unit then return end

    local guid = UnitGUID(unit)
    if selectedDB.autoselectprofile and guid and guid == PlayerGUID then
        ATT:CheckProfile();
        ATT:UpdateScrollBar();
    end
    self:InspectPlayer()
    self:ApplyAnchorSettings()
end

function ATT:CHAT_MSG_BG_SYSTEM_NEUTRAL(text)
    if not ATTIcons:IsShown() or not text then
        return
    end
    local _, instanceType = IsInInstance()
    if (instanceType == "arena" or (instanceType == "pvp" and C_PvP.GetActiveMatchDuration() < 5)) and (string.find(text, "!$")) then
        self:InspectPlayer()
        --self:SendCovenant(PlayerGUID);
        self:UpdateGroup()
    end
end

function ATT:CHALLENGE_MODE_START()
    self:InspectPlayer()
    --self:SendCovenant(PlayerGUID)
    self:UpdateGroup()
    self:StopAllIcons("raidstop")
end

function ATT:ENCOUNTER_END(_, _, _, raidsize)
    if raidsize > 5 then
        self:StopAllIcons("raidstop")
    end
end

function ATT:SCENARIO_POI_UPDATE()
    local scenarioInfo = C_ScenarioInfo.GetScenarioInfo()
    if scenarioInfo and scenarioInfo["uiTextureKit"] and scenarioInfo["uiTextureKit"] == "jailerstower-scenario" and
        scenarioInfo["currentStage"] ~= 1 then
        self:StopAllIcons()
    end
end

function ATT:CHAT_MSG_SYSTEM(text)
    if not ATTIcons:IsShown() or not text then
        return
    end
    if (string.find(text, PVP_WARMODE_TOGGLE_OFF)) or (string.find(text, PVP_WARMODE_TOGGLE_ON)) then
        self:InspectPlayer()
        self:UpdateGroup()
    end
end

function ATT:CheckProfile()
    local _, instanceType = IsInInstance()
    selectedDB.ProfileSelected = selectedDB.ProfileSelected or "DEFAULT"

    if selectedDB.autoselectprofile then
        local _, _, classid = UnitClass("player")
        local specNum = GetSpecialization()
        local role = select(5, GetSpecializationInfoForClassID(classid, specNum))
        if role then
            selectedDB.ProfileSelected = role
        end
    end

    if selectedDB.autoselectBG then
        local _, instanceType = IsInInstance()
        if instanceType == "pvp" and selectedDB.ProfileSelected ~= "BG"  then
            ATTDB.lastProfile = selectedDB.ProfileSelected
            selectedDB.ProfileSelected = "BG"
        elseif not selectedDB.autoselectprofile and selectedDB.ProfileSelected == "BG" and ATTDB.lastProfile and instanceType ~= "pvp" then
            selectedDB.ProfileSelected = ATTDB.lastProfile
            ATTDB.lastProfile = nil
        end
    end

    db = selectedDB[selectedDB.ProfileSelected]
    db.classSelected = "WARRIOR";
    db.specSelected = "71";
    db.category = "abilities";

    ATT.inRaid =  (IsInRaid() and type ~= "arena") or C_PvP.IsInBrawl()
    ATT.isPVP = (C_PvP.IsWarModeDesired() and instanceType == "none") or (instanceType == "arena") or (instanceType == "pvp")
end

function ATT:LoadProfiles()
    local profiles = { "DEFAULT", "TANK", "HEALER", "DAMAGER", "BG", "Extra1", "Extra2" }
    local oldDB = ATTDB  -- getting old main profiles
    oldDB.Profiles = nil -- remove old profiles

    if ATTDB["isEnabledSpell"] then
        ATTDB = {}
    end -- cleaning DB
    if ATTCharDB["isEnabledSpell"] then
        ATTCharDB = {}
    end -- cleaning Char DB

    if ATTDB.profilebychar then
        selectedDB = ATTCharDB
    else
        selectedDB = ATTDB
    end
    local dbProfiles = {}

    for i = 1, #profiles do
        if not selectedDB[profiles[i]] then
            dbProfiles[profiles[i]] = {}
            for a, b in pairs(profiles[i] == "DEFAULT" and oldDB["isEnabledSpell"] and oldDB or ATTdbs.Defaults) do
                if type(b) ~= "table" then
                    dbProfiles[profiles[i]][a] = b
                else
                    dbProfiles[profiles[i]][a] = {}
                    for c, d in pairs(b) do
                        if type(d) ~= "table" then
                            dbProfiles[profiles[i]][a][c] = d
                        else
                            dbProfiles[profiles[i]][a][c] = {}
                            for e, f in pairs(d) do
                                dbProfiles[profiles[i]][a][c][e] = f
                            end
                        end
                    end
                end
            end
            selectedDB[profiles[i]] = dbProfiles[profiles[i]]
        end
    end
end

function ATT:TRAIT_CONFIG_UPDATED()
    --self:InspectCovenant()
    self:InspectPlayer()
    self:ApplyAnchorSettings()
end

function ATT:COMPACT_UNIT_FRAME_PROFILES_LOADED()
    self:FindFrameType()
    --self:InspectCovenant()
   -- self:InspectPlayer()
    self:UpdateUnitIDCache()
    self:ApplyAnchorSettings()
end

function ATT:PLAYER_LEAVING_WORLD()
   -- ATTInspectFrame:Hide()
end

local function On_Update(self, elapsed)
    if #inspect_queue == 0 then return end

    if (#inspect_queue > 0) then
        ATT.elapsedTime = (ATT.elapsedTime or 0) + elapsed
        if ATT.elapsedTime > 0.6 then
            ATT.elapsedTime = 0
            ATT:ProcessInspectQueue()
        end
    end
end


function ATT:PositionUpdateHook()
    if not self.updatePosTimer then
       self.updatePosTimer = C_Timer.NewTimer(0.5, function() ATT:UpdateUnitIDCache() ATT:ApplyAnchorSettings() ATT.updatePosTimer = nil end )
    end
 end

local function ATT_OnLoad(self)
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED", "player")
    self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
    self:RegisterEvent("GROUP_ROSTER_UPDATE")
    self:RegisterEvent("GROUP_JOINED")
    self:RegisterEvent("UNIT_AURA")
    self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    self:RegisterEvent("CHALLENGE_MODE_START")
    self:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL")
    self:RegisterEvent("CHAT_MSG_SYSTEM")
    self:RegisterEvent("ENCOUNTER_END")
    self:RegisterEvent("SCENARIO_POI_UPDATE")
    self:RegisterEvent("TRAIT_CONFIG_UPDATED")
    self:RegisterEvent("COMPACT_UNIT_FRAME_PROFILES_LOADED")
    self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")    

    if C_ChatInfo.RegisterAddonMessagePrefix(ChatPrefix) then
        self.useCrossAddonCommunication = true
    end

    if self.useCrossAddonCommunication then
        self:RegisterEvent("CHAT_MSG_ADDON")
    end

    self:SetScript("OnEvent", function(self, event, ...)
        if self[event] then
            self[event](self, ...)
        end
    end);

    ATTDB = ATTDB or {}
    ATTCharDB = ATTCharDB or {}
    localeFunc()

    for _, v in pairs(dbTrinkets) do
        local isTrinket = GetItemInfoInstant(v.trinketId)
        local item = isTrinket and Item:CreateFromItemID(v.trinketId)
        if item then
            item:ContinueOnItemLoad(function()
                if v.isPvPtrinket then
                    v.name = GetSpellInfo(v.ability)
                else
                    v.name = item:GetItemName()
                    v.spellTName = GetSpellInfo(v.ability)
                end
                v.texture = item:GetItemIcon()
            end)
        end
    end

    self:UpdateUnitIDCache()
    self:LoadProfiles()
    self:CheckProfile()
    self:CreateAnchors()
    self:CreateOptions()
    self:FindFrameType()
    self:ApplyAnchorSettings();

    ATTOnUpdateFrame:SetScript("OnUpdate", On_Update)

    if IsAddOnLoaded("Blizzard_CompactRaidFrames") and IsAddOnLoaded("Blizzard_CUFProfiles") then
        hooksecurefunc("UpdateRaidAndPartyFrames", function() ATT:PositionUpdateHook(); end) --self:PositionUpdate();
        hooksecurefunc(EditModeManagerFrame, "UpdateRaidContainerFlow", function() ATT:PositionUpdateHook(); end)
        hooksecurefunc("CompactRaidFrameManager_SetSetting", function(arg) ATT:PositionUpdateHook(); end)
        if CompactPartyFrame_RefreshMembers then 
            hooksecurefunc("CompactPartyFrame_RefreshMembers", function() ATT:PositionUpdateHook(); end)
        else
            hooksecurefunc(CompactPartyFrame, "RefreshMembers", function() ATT:PositionUpdateHook(); end)
        end
    end

    C_Timer.After(3, function() self:UpdateUnitIDCache() self:CheckProfile() self:FindFrameType(); self:ApplyAnchorSettings(); end)

    local panelOpenCmd = ATTDB.useAtrack and L["attopen2"] or L["attopen"]
    print("|cff33ff99A|rbility |cff33ff99T|ream |cff33ff99T|rracker |cffFF4500[v" ..ATTversion .. "]|r loaded. "..panelOpenCmd)
end

function ATT:MergeTable(class, specID, category, isAnchor)
    local newdbSpells = {}

    if type(db.isEnabledSpell[specID]) ~= "table" then
        db.isEnabledSpell[specID] = {}
    end
    if type(db.customSpells[specID]) ~= "table" then
        db.customSpells[specID] = {}
    end
    if type(db.iconOrder[specID]) ~= "table" then
        db.iconOrder[specID] = {}
    end
    if type(db.alertCD[specID]) ~= "table" then
        db.alertCD[specID] = {}
    end
    if type(db.alertCDtext[specID]) ~= "table" then
        db.alertCDtext[specID] = {}
    end

    local dbSpells = dbImport[class][specID]
    local dbiconOrder = db.iconOrder[specID]
    local dbcustomSpells = db.customSpells[specID]

    if category == "abilities" then
        if dbSpells then
            for _, v in pairs(dbSpells) do
                if not v.name then v.name = GetSpellInfo(v.ability) end --if not v.name
                if v.name then table.insert(newdbSpells, v) end
            end
        end

        if dbcustomSpells then
            for _, v in pairs(dbcustomSpells) do
                if not v.name then v.name = GetSpellInfo(v.ability) end
                if v.name then table.insert(newdbSpells, v) end
            end
        end

        for _, v in pairs(newdbSpells) do
            if dbiconOrder[v.ability] then
                v.order = dbiconOrder[v.ability]
            else
                v.order = 20
            end
        end

        table.sort(newdbSpells, function(a, b)
            if isAnchor then
                if (a.order) == (b.order) then
                    return (a.name) < (b.name)
                else
                    return (a.order) < (b.order)
                end
            else
                return (a.name) < (b.name)
            end
        end)
    elseif category == "trinkets" then
        if dbTrinkets then
            for _, v in pairs(dbTrinkets) do
                if v.name then table.insert(newdbSpells, v) end
            end
            table.sort(newdbSpells, function(a, b)
                if (a.isPvPtrinket and b.isPvPtrinket) then
                    return a.ability < b.ability
                elseif (a.isPvPtrinket and not b.isPvPtrinket) then
                    return (1) < (2)
                elseif (not a.isPvPtrinket and b.isPvPtrinket) then
                    return (1) > (2)
                else
                    return (a.name) < (b.name)
                end
            end)
        end
    elseif category == "racials" then
        if dbRacials then
            for _, v in pairs(dbRacials) do
                if not v.name then v.name = GetSpellInfo(v.ability) end
                if v.name then table.insert(newdbSpells, v) end
            end
            table.sort(newdbSpells, function(a, b) return (a.name) < (b.name) end)
        end
    end

    return newdbSpells
end

function ATT:FindAbilityIcon(ability, id)
    if not id then
        return ""
    end
    local icon;
    if id then
    --  icon = GetSpellTexture(id)
        icon  = select(8,GetSpellInfo(id))
    else
        _, _, icon = GetSpellInfo(ability)
    end
    return icon or ""
end

-- Panel
-------------------------------------------------------------
local function CreatePopUpFrame(panel, name)
    local popUpFrame = CreateFrame("Frame", name, panel, BackdropTemplateMixin and "BackdropTemplate,UIPanelDialogTemplate"); --InsetFrameTemplate2
    popUpFrame:SetFrameLevel(popUpFrame:GetFrameLevel() + 3)
    popUpFrame:SetSize(320, 290);
    popUpFrame:SetPoint('LEFT', 150, -110);
   -- popUpFrame:SetFrameStrata("WORLD")
    popUpFrame.Title:SetText(name)
    popUpFrame:EnableMouse(true)
    popUpFrame:SetToplevel(true)
    popUpFrame.Close = _G[name.."Close"]
    popUpFrame.Close:SetScript("OnClick", function(self)  panel.popUP = false self:GetParent():Hide() end)
    popUpFrame:Hide()

    return popUpFrame
end


local function CreateListButton(parent, index, panel)
    local button = CreateFrame("CheckButton", parent:GetName() .. index, parent, "InterfaceOptionsCheckButtonTemplate")
    button.orderbtn = CreateFrame("button", parent:GetName() .. index .. "orderbtn", button, "UIPanelScrollUpButtonTemplate")
    button.orderbtn:SetNormalTexture("Interface\\MainMenuBar\\UI-MainMenu-ScrollUpButton-Up")
    button.orderbtn:SetPushedTexture("Interface\\MainMenuBar\\UI-MainMenu-ScrollUpButton-Disabled")

    return button
end

local function CreateEditBox(name, parent, width, height)
    local editbox = CreateFrame("EditBox", parent:GetName() .. name, parent, "InputBoxTemplate")
    editbox:SetHeight(height)
    editbox:SetWidth(width)
    editbox:SetAutoFocus(false)
    editbox:SetNumeric(true)
    editbox:SetMaxLetters(8)
    local label = editbox:CreateFontString(nil, "BACKGROUND", "GameFontNormal")
    label:SetText(name)
    label:SetPoint("BOTTOMLEFT", editbox, "TOPLEFT", -3, 0)
    return editbox
end

local function EnableGlobalSpell(id, isenabled, alertcd, alertcdtext)
    for i = 1, GetNumClasses() do
        local className, classTag, classID = GetClassInfo(i)
        for j = 1, GetNumSpecializationsForClassID(classID) do
            local specID, specName = GetSpecializationInfoForClassID(classID, j)
            if specID then
                if not db.isEnabledSpell[tostring(specID)] then db.isEnabledSpell[tostring(specID)] = {} end
                if not db.alertCD[tostring(specID)] then db.alertCD[tostring(specID)] = {} end
                if not db.alertCDtext[tostring(specID)] then db.alertCDtext[tostring(specID)] = {} end

                db.isEnabledSpell[tostring(specID)][id] = isenabled
                db.alertCD[tostring(specID)][id] = alertcd
                db.alertCDtext[tostring(specID)][id] = alertcdtext
            end
        end
    end
end

function ATT:FindFrameType()
    local hookFrames = { 0, L["DoNotAttach"], 1, L["AutoattachUI"], 2, L["Blizzard UI"] }
    for x, v in pairs(customframes) do
        local checkframe = format(string.gsub(v.cframe, "1RG", 1), 1)
        if (_G[checkframe] or IsAddOnLoaded(v.cname)) then
            tinsert(hookFrames, x);
            tinsert(hookFrames, v.ctype);
        end
    end
    if ATT_DropDown1 then
       ATT_DropDown1.update = true
       ATT_DropDown1.values = hookFrames
       ATT_DropDown1.doRefresh()
    end
end


function ATT:CreateOptions()
    local panelOpenCmd = ATTDB.useAtrack and L["attopen2"] or L["attopen"]
    local panel = SO.AddOptionsPanel("Ability Team Tracker", function() end, panelOpenCmd, ATTversion)
    self.panel = panel
    SO.AddSlashCommand("Ability Team Tracker", ATTDB.useAtrack and "/atrack" or "/att")

    local attach = panel:MakeDropDown('name', L["attach"], 'description', L["attachToolTip"],
        'values', { 0, L["DoNotAttach"], 1, L["AutoattachUI"], 2, L["Blizzard UI"] }, 'default', 0, 'getFunc', function()
            return db.attach or 0
        end, 'getCurrent', function()
            return db.attach or 0
        end, 'setFunc', function(value)
            db.attach = tonumber(value);
            self:ApplyAnchorSettings();            
        end)
    attach:SetPoint("TOPLEFT", panel, "TOPLEFT", 40, -80)
    

    local attachPos = panel:MakeDropDown('name', L["attachPos"], 'description', L["attachPosToolTip"],
    'values', { 0, L["TOPLEFT"], 1, L["TOPRIGHT"], 2, L["BOTTOMLEFT"], 3, L["BOTTOMRIGHT"], 4, L["CENTERLEFT"], 5, L["CENTERRIGHT"] }, 'default', 0, 'getFunc', function()
        return  db.attachPos or 0
    end, 'getCurrent', function()
        return  db.attachPos or 0
    end, 'setFunc', function(value)
        db.attachPos = tonumber(value);
        self:ApplyAnchorSettings();
    end)
    attachPos:SetPoint("TOPLEFT", attach, "TOPLEFT", 0, -50)

    local growUP = panel:MakeToggle('name', L["growUP"], 'description', L["growUPToolTip"], 'default'
   , false, 'getFunc', function()
       return db.growUP
   end, 'getCurrent', function()
       return db.growUP
   end, 'setFunc', function(value)
       db.growUP = value;
       self:ApplyAnchorSettings();
   end)
   growUP:SetPoint("TOP", panel, "TOP", -120, -70)

   local reverseIcons = panel:MakeToggle('name', L["reverseIcons"], 'description', L["reverseIconsToolTip"],
   'default', false, 'getFunc', function()
       return db.reverseIcons
   end, 'getCurrent', function()
       return db.reverseIcons
   end, 'setFunc', function(value)
       db.reverseIcons = value;
       self:ApplyAnchorSettings()
   end)
reverseIcons:SetPoint("TOP", growUP, "BOTTOM", 0, -5)

   local selfAttach = panel:MakeToggle(
    'name', L["selfAttach"],
    'description', L["selfAttachToolTip"],
    'default', false,
    'getFunc', function() return db.selfAttach end,
    'getCurrent', function() return db.selfAttach end,
    'setFunc', function(value)
        db.selfAttach = value;
        self:ApplyAnchorSettings()
    end)
selfAttach:SetPoint("TOP", reverseIcons, "BOTTOM", 0, -5)

    local scale = panel:MakeSlider('name', L["scale"], 'description', L["scaleToolTip"], 'minText', 'Min',
        'maxText', 'Max', 'minValue', 1, 'maxValue', 200, 'step', 1, 'default', 100, 'current',
        db.scale and tonumber(db.scale * 100) or 1, 'getCurrent',
        function()
            return db.scale and tonumber(db.scale * 100) or 100
        end, 'setFunc', function(value)
            if (tonumber(value) / 100) ~= db.scale then
                db.scale = tonumber(string.format("%.2f", value)) / 100;
                ATTIcons:SetScale(db.scale or 1)
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.2f", value))
        end)
    scale:SetPoint("TOPLEFT", attach, "TOPLEFT", 0, -110)

    local anchorScale = panel:MakeSlider('name', L["anchorScale"], 'description', L["anchorScaleToolTip"], 'minText', 'Min',
        'maxText', 'Max', 'minValue', 1, 'maxValue', 200, 'step', 1, 'default', 100, 'current',
        db.anchorScale and tonumber(db.anchorScale * 100) or 1, 'getCurrent',
        function()
            return db.anchorScale and tonumber(db.anchorScale * 100) or 100
        end, 'setFunc', function(value)
            if (tonumber(value) / 100) ~= db.anchorScale then
                db.anchorScale = tonumber(string.format("%.2f", value)) / 100;
                self:UpdatePositions()
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.2f", value))
        end)
    anchorScale:SetPoint("LEFT", scale, "RIGHT", 15, 0) 

    local iconRows = panel:MakeSlider('name', L["iconRows"], 'description', L["iconRowsToolTip"], 'minText',
        '1', 'maxText', '5', 'minValue', 1, 'maxValue', 5, 'step', 1, 'default', 2, 'current',
        tonumber(db.IconRows) or 1
        , 'getCurrent',
        function()
            return tonumber(db.IconRows) or 1
        end, 'setFunc', function(value)
            if value ~= db.IconRows then
                db.IconRows = tonumber(string.format("%.1d", value));
                self:UpdateIcons();
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value));
        end)
    iconRows:SetPoint("LEFT", anchorScale, "RIGHT", 15, 0)

    local iconAlpha = panel:MakeSlider('name', L["iconAlpha"], 'description',  L["iconAlphaToolTip"], 'minText',
        'Hide', 'maxText', 'Max', 'minValue', 0, 'maxValue', 10, 'step', 1, 'default', 0, 'current',
        db.iconAlpha and tonumber(db.iconAlpha * 10) or 10,
        'getCurrent', function()
            return db.iconAlpha and tonumber(db.iconAlpha * 10) or 10
        end, 'setFunc', function(value)
            if value ~= db.iconAlpha then
                db.iconAlpha = value / 10;
                self:UpdateIcons();
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value));
        end)
    iconAlpha:SetPoint("LEFT", iconRows, "RIGHT", 15, 0)

    local offsetX = panel:MakeSlider('name', L["offsetX"], 'description', L["offsetXTooltip"], 'minText',
        'Left', 'maxText', 'Right', 'minValue', -200, 'maxValue', 200, 'step', 1, 'default', 0, 'current',
        tonumber(db.offsetX) or 0,
        'getCurrent', function()
            return tonumber(db.offsetX) or 0
        end, 'setFunc', function(value)
            if value ~= db.offsetX then
                db.offsetX = tonumber(value);
                self:UpdatePositions()
            end
        end, 'currentTextFunc', function(value)
            return tonumber(value);
        end)
    offsetX:SetPoint("TOPLEFT", attach, "TOPLEFT", 0, -175)

    local offsetY = panel:MakeSlider('name', L["offsetY"], 'description',  L["offsetYTooltip"], 'minText',
        'Down', 'maxText', 'Up', 'minValue', -200, 'maxValue', 200, 'step', 1, 'default', 0, 'current',
        tonumber(db.offsetY) or 0,
        'getCurrent', function()
            return tonumber(db.offsetY) or 0
        end, 'setFunc', function(value)
            if value ~= db.offsetY then
                db.offsetY = tonumber(value);
                self:UpdatePositions()
            end
        end, 'currentTextFunc', function(value)
            return tonumber(value);
        end)
    offsetY:SetPoint("LEFT", offsetX, "RIGHT", 15, 0)

    local iconOffsetX = panel:MakeSlider('name', L["iconOffsetX"], 'description', L["iconOffsetXToolTip"], 'minText',
        '0', 'maxText', '100', 'minValue', 0, 'maxValue', 100, 'step', 1, 'default', 5, 'current',
        tonumber(db.iconOffsetX) or 5,
        'getCurrent', function()
            return tonumber(db.iconOffsetX) or 5
        end, 'setFunc', function(value)
            if value ~= db.iconOffsetX then
                db.iconOffsetX = tonumber(string.format("%.1d", value));
                self:UpdateIcons();
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value));
        end)
    iconOffsetX:SetPoint("LEFT", offsetY, "RIGHT", 15, 0)

    local iconOffsetY = panel:MakeSlider('name', L["iconOffsetY"], 'description', L["iconOffsetYToolTip"], 'minText',
        '0', 'maxText', '100', 'minValue', 0, 'maxValue', 100, 'step', 1, 'default', 2, 'current',
        tonumber(db.iconOffsetY) or 2,
        'getCurrent', function()
            return tonumber(db.iconOffsetY) or 2
        end, 'setFunc', function(value)
            if value ~= db.iconOffsetY then
                db.iconOffsetY = tonumber(string.format("%.1d", value));
                self:UpdateIcons();
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value));
        end)
    iconOffsetY:SetPoint("LEFT", iconOffsetX, "RIGHT", 15, 0)

    local lock = panel:MakeToggle('name', L["lock"], 'description', L["lockToolTip"], 'default', false, 'getFunc'
    , function()
        return db.lock
    end, 'getCurrent', function()
        return db.lock
    end, 'setFunc', function(value)
        db.lock = value;
        self:ApplyAnchorSettings()
    end)
    lock:SetPoint("TOP", panel, "TOP", 40, -70)

    local glow = panel:MakeToggle('name', L["glow"], 'description',
    L["glowToolTip"], 'default', true, 'getFunc', function()
            return db.glow
        end, 'getCurrent', function()
            return db.glow
        end, 'setFunc', function(value)
            db.glow = value;
            self:UpdateIcons();
        end)
    glow:SetPoint("TOP", lock, "BOTTOM", 0, -5)

    local showIconBorders = panel:MakeToggle('name', L["showIconBorders"], 'description', L["showIconBordersToolTip"],
        'default', true, 'getFunc', function()
            return db.showIconBorders
        end, 'getCurrent', function()
            return db.showIconBorders
        end, 'setFunc', function(value)
            db.showIconBorders = value;
            self:UpdateIcons();
        end)
    showIconBorders:SetPoint("TOP", glow, "BOTTOM", 0, -5)

    local showTooltip = panel:MakeToggle('name', L["showTooltip"], 'description', L["showTooltipToolTip"], 'default',
        false, 'getFunc', function()
            return db.showTooltip
        end, 'getCurrent', function()
            return db.showTooltip
        end, 'setFunc', function(value)
            db.showTooltip = value;
            self:UpdateIcons();
        end)
    showTooltip:SetPoint("LEFT", lock, "RIGHT", 120, 0)

    local simpleMode = panel:MakeToggle('name', L["simpleMode"], 'description',
    L["simpleModeTooltip"],  'default', false, 'getFunc',
    function()
        return db.bgMode
    end, 'getCurrent', function()
        return db.bgMode
    end, 'setFunc', function(value)
        db.bgMode = value;
        ATT:ApplyAnchorSettings();
    end)
    simpleMode:SetPoint("TOP", showTooltip, "BOTTOM", 0, -5)

    local hidden = panel:MakeToggle('name', L["hidden"], 'description', L["hiddenTooltip"],
        'default', false, 'getFunc', function()
            return db.hidden
        end, 'getCurrent', function()
            return db.hidden
        end, 'setFunc', function(value)
            db.hidden = value;
            self:UpdateIcons();
        end)
    hidden:SetPoint("TOP", simpleMode, "BOTTOM", 0, -5)

    local info = CreateFrame("Frame", "ATTFrame", panel, BackdropTemplateMixin and "BackdropTemplate")
    info:SetPoint("TOPRIGHT", panel, "TOPRIGHT", -240, -625)
    info:SetSize(50, 50)

    local version = info:CreateFontString(nil, "ARTWORK", "GameFontDisable")
    version:SetText("|cffffff00ATT|r |cff33ff99v" .. ATTversion .. "|r by |cffffff00izy|r")
    version:SetPoint("TOPLEFT", info, "TOPLEFT", 165, 0)

    self:CreateTabs()
    self:UpdateScrollBar()
    self:CreateAbilityOptionsFrame()
end


function ATT:CreateVisibilityFrame(visibility)
    local panel = self.panel

    local arenaGroupSize = panel:MakeSlider('name',  L["arenaGroupSize"], 'description',
    L["arenaGroupSizeToolTip"], 'minText', 'Hide', 'maxText', '40', 'minValue', 0,
    'maxValue', 40, 'step', 1, 'default', 0, 'extra', visibility, 'current', tonumber(db.visArena) or 5,
    'getCurrent', function()
        return tonumber(db.visArena) or 5
    end, 'setFunc', function(value)
        if value ~= db.visArena then
            db.visArena = tonumber(string.format("%.1d", value));
            ATT:EnqueueInspect(true)
            ATT:ApplyAnchorSettings();
        end
    end, 'currentTextFunc', function(value)
        return tonumber(string.format("%.1d", value));
    end)
   -- arenaGroupSize:SetPoint("TOP", visibility, "TOP", -60, -30)
    arenaGroupSize:SetPoint("TOPLEFT", visibility, "TOPLEFT", 40 , -100)

    local arenaSelf = panel:MakeToggle('name', L["arenaSelf"], 'description', L["arenaSelfToolTip"], 'extra', visibility, 'default', false,
    'getFunc', function()
        return db.visArenaSelf
    end, 'getCurrent', function()
        return db.visArenaSelf
    end, 'setFunc', function(value)
        db.visArenaSelf = value;
        ATT:ApplyAnchorSettings();
    end)
    arenaSelf:SetPoint("LEFT", arenaGroupSize, "RIGHT", 45, 0)

    local dungeonGroupSize = panel:MakeSlider('name', L["dungeonGroupSize"], 'description',
    L["dungeonGroupSizeToolTip"], 'minText', 'Hide', 'maxText', '40', 'minValue', 0,
    'maxValue', 40, 'step', 1, 'default', 0, 'extra', visibility, 'current', tonumber(db.visDungeon) or 5,
    'getCurrent', function()
        return tonumber(db.visDungeon) or 5
    end, 'setFunc', function(value)
        if value ~= db.visDungeon then
            db.visDungeon = tonumber(string.format("%.1d", value));
            ATT:EnqueueInspect(true)
            ATT:ApplyAnchorSettings();
        end
    end, 'currentTextFunc', function(value)
        return tonumber(string.format("%.1d", value));
    end)
   -- dungeonGroupSize:SetPoint("TOP", arenaGroupSize, "TOP", 0, -40)
   dungeonGroupSize:SetPoint("LEFT", arenaGroupSize, "RIGHT", 160, 0)


    local dungeonSelf = panel:MakeToggle('name', L["dungeonSelf"], 'description', L["dungeonSelfToolTip"], 'extra', visibility, 'default', false,
    'getFunc', function()
        return db.visDungeonSelf
    end, 'getCurrent', function()
        return db.visDungeonSelf
    end, 'setFunc', function(value)
        db.visDungeonSelf = value;
        ATT:ApplyAnchorSettings();
    end)
    dungeonSelf:SetPoint("LEFT", dungeonGroupSize, "RIGHT", 45, 0) 

    local scenarioGroupSize = panel:MakeSlider('name', L["scenarioGroupSize"], 'description',
    L["scenarioGroupSizeToolTip"], 'minText', 'Hide', 'maxText', '40', 'minValue', 0,
    'maxValue', 40, 'step', 1, 'default', 0, 'extra', visibility, 'current', tonumber(db.visScenario) or 5,
    'getCurrent', function()
        return tonumber(db.visScenario) or 5
    end, 'setFunc', function(value)
        if value ~= db.visScenario then
            db.visScenario = tonumber(string.format("%.1d", value));
            ATT:EnqueueInspect(true)
            ATT:ApplyAnchorSettings();
        end
    end, 'currentTextFunc', function(value)
        return tonumber(string.format("%.1d", value));
    end)
    scenarioGroupSize:SetPoint("TOP", arenaGroupSize, "TOP", 0, -60)

    local scenarioSelf = panel:MakeToggle('name', L["scenarioSelf"], 'description', L["scenarioSelfToolTip"], 'extra', visibility, 'default', false,
    'getFunc', function()
        return db.visScenarioSelf
    end, 'getCurrent', function()
        return db.visScenarioSelf
    end, 'setFunc', function(value)
        db.visScenarioSelf = value;
        ATT:ApplyAnchorSettings();
    end)
    scenarioSelf:SetPoint("LEFT", scenarioGroupSize, "RIGHT", 45, 0) 

    local inbgGroupSize = panel:MakeSlider('name', L["inbgGroupSize"], 'description',
    L["inbgGroupSizeToolTip"], 'minText', 'Hide', 'maxText', '40', 'minValue', 0,
    'maxValue', 40, 'step', 1, 'default', 0, 'extra', visibility, 'current', tonumber(db.visInbg) or 5,
    'getCurrent', function()
        return tonumber(db.visInbg) or 5
    end, 'setFunc', function(value)
        if value ~= db.visInbg then
            db.visInbg = tonumber(string.format("%.1d", value));
            ATT:EnqueueInspect(true)
            ATT:ApplyAnchorSettings();
        end
    end, 'currentTextFunc', function(value)
        return tonumber(string.format("%.1d", value));
    end)
    inbgGroupSize:SetPoint("TOP", dungeonGroupSize, "TOP", 0, -60)

    local inbgSelf = panel:MakeToggle('name', L["inbgSelf"], 'description', L["inbgSelfToolTip"], 'extra', visibility, 'default', false,
    'getFunc', function()
        return db.visInbgSelf
    end, 'getCurrent', function()
        return db.visInbgSelf
    end, 'setFunc', function(value)
        db.visInbgSelf = value;
        ATT:ApplyAnchorSettings();
    end)
    inbgSelf:SetPoint("LEFT", inbgGroupSize, "RIGHT", 45, 0) 

    local inraidGroupSize = panel:MakeSlider('name', L["inraidGroupSize"], 'description',
    L["inraidGroupSizeToolTip"], 'minText', 'Hide', 'maxText', '40', 'minValue', 0,
    'maxValue', 40, 'step', 1, 'default', 0, 'extra', visibility, 'current', tonumber(db.visInraid) or 5,
    'getCurrent', function()
        return tonumber(db.visInraid) or 5
    end, 'setFunc', function(value)
        if value ~= db.visInraid then
            db.visInraid = tonumber(string.format("%.1d", value));
            ATT:EnqueueInspect(true)
            ATT:ApplyAnchorSettings();
        end
    end, 'currentTextFunc', function(value)
        return tonumber(string.format("%.1d", value));
    end)
    inraidGroupSize:SetPoint("TOP", scenarioGroupSize, "TOP", 0, -60)

    local inraidSelf = panel:MakeToggle('name', L["inraidSelf"], 'description', L["inraidSelfToolTip"], 'extra', visibility, 'default', false,
    'getFunc', function()
        return db.visInraidSelf
    end, 'getCurrent', function()
        return db.visInraidSelf
    end, 'setFunc', function(value)
        db.visInraidSelf = value;
        ATT:ApplyAnchorSettings();
    end)
    inraidSelf:SetPoint("LEFT", inraidGroupSize, "RIGHT", 45, 0) 

    local outsideGroupSize = panel:MakeSlider('name', L["outsideGroupSize"], 'description',
    L["outsideGroupSizeToolTip"], 'minText', 'Hide', 'maxText', '40', 'minValue', 0,
    'maxValue', 40, 'step', 1, 'default', 0, 'extra', visibility, 'current', tonumber(db.visOutside) or 5,
    'getCurrent', function()
        return tonumber(db.visOutside) or 5
    end, 'setFunc', function(value)
        if value ~= db.visOutside then
            db.visOutside = tonumber(string.format("%.1d", value));
            ATT:EnqueueInspect(true)
            ATT:ApplyAnchorSettings();
        end
    end, 'currentTextFunc', function(value)
        return tonumber(string.format("%.1d", value));
    end)
    outsideGroupSize:SetPoint("TOP", inbgGroupSize, "TOP", 0, -60)

    local outsideSelf = panel:MakeToggle('name', L["outsideSelf"], 'description', L["outsideSelfToolTip"], 'extra', visibility, 'default', false,
    'getFunc', function()
        return db.visOutsideSelf
    end, 'getCurrent', function()
        return db.visOutsideSelf
    end, 'setFunc', function(value)
        db.visOutsideSelf = value;
        ATT:ApplyAnchorSettings();
    end)
    outsideSelf:SetPoint("LEFT", outsideGroupSize, "RIGHT", 45, 0) 

end

function ATT:CreateProfilesFrame(profiles)
    local panel = self.panel

    local selectProfile = panel:MakeDropDown('name', L["selectProfile"], 'description', L["selectProfileToolTip"], 'extra',
        profiles, 'values',
        { "DEFAULT", L["Main"], "TANK", L["Tank"], "HEALER", L["Healer"], "DAMAGER", L["DPS"], "BG", L["BattleGround"], "Extra1",
        L["ExtraProfie1"], "Extra2", L["ExtraProfie2"] }, 'default', "DEFAULT", 'getFunc', function()
            return selectedDB.ProfileSelected
        end, 'getCurrent', function()
            return selectedDB.ProfileSelected
        end, 'setFunc', function(value)
            local _, instanceType = IsInInstance()
            if selectedDB.autoselectprofile then
                print(L["selectProfileASenabled"])
                panel:UpdateSettings()
                return --TODO
            elseif (selectedDB.autoselectBG and instanceType == "pvp") then
                print(L["selectProfileBGenabled"])
                panel:UpdateSettings()
                return
            end
            selectedDB.ProfileSelected = value;
            self:CheckProfile();
            self:UpdateScrollBar();
            self:ApplyAnchorSettings();
            panel:UpdateSettings()
        end) -- here
   --selectProfile:SetPoint("TOPLEFT", profiles, "TOPLEFT", 120 , -80)
   selectProfile:SetPoint("TOP", profiles, "TOP", -30, -80)

    local copyProfile = panel:MakeButton('name', L["copyProfile"], 'description',
    L["copyProfileToolTip"], 'extra', profiles, 'newsize', 2, 'func',
        function()
            if selectedDB.ProfileSelected ~= "DEFAULT" then
                StaticPopup_Show("ATT_COPYPROFILES")
            else
                print(L["copyProfileMain"])
            end
        end)
    copyProfile:SetPoint("LEFT", selectProfile, "RIGHT", 15, 0)

    StaticPopupDialogs["ATT_COPYPROFILES"] = {
        text = L["copyProfilePopUp"],
        button1 = L["Yes"],
        button2 = L["No"],
        OnAccept = function()
            if selectedDB.ProfileSelected ~= "DEFAULT" then
                selectedDB[selectedDB.ProfileSelected] = selectedDB["DEFAULT"]
                self:CheckProfile();
                self:UpdateScrollBar();
                self:ApplyAnchorSettings();
                panel:UpdateSettings()
                print(L["copyProfileUpdated"])
            end
        end,
        exclusive = true,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }

    local autoselectprofile = panel:MakeToggle('name', L["autoselectprofile"], 'description',
    L["autoselectprofileToolTip"], 'extra', profiles, 'default', false, 'getFunc',
        function()
            return selectedDB.autoselectprofile
        end, 'setFunc', function(value)
            selectedDB.autoselectprofile = value;
            ATT:CheckProfile();
            ATT:UpdateScrollBar();
            ATT:ApplyAnchorSettings();
            panel:UpdateSettings()
        end) -- here
    autoselectprofile:SetPoint("TOP", selectProfile, "TOP", -60, -40)
   --autoselectprofile:SetPoint("LEFT", selectProfile, "RIGHT", 45, 0)

    local autoselectBG = panel:MakeToggle('name', L["autoselectBG"], 'description',
    L["autoselectBGToolTip"], 'extra', profiles, 'default', false, 'getFunc',
        function()
            return selectedDB.autoselectBG
        end, 'setFunc', function(value)
            selectedDB.autoselectBG = value;
            ATT:CheckProfile();
            ATT:UpdateScrollBar();
            ATT:ApplyAnchorSettings();
            panel:UpdateSettings()
        end)
    autoselectBG:SetPoint("TOP", autoselectprofile, "TOP", 0, -30)

    local profilebychar = panel:MakeToggle('name', L["profilebychar"], 'description',
    L["profilebycharToolTip"], 'extra', profiles, 'default', false,
        'getFunc', function()
            return ATTDB.profilebychar
        end, 'setFunc', function(value)
            StaticPopup_Show("ATT_CHARDB")
        end)
    profilebychar:SetPoint("TOP", autoselectBG, "TOP", 0, -30)

    StaticPopupDialogs["ATT_CHARDB"] = {
        text = L["profilebycharPopUp"],
        button1 = L["Yes"],
        button2 = L["No"],
        OnAccept = function()
            --ATTCharDB = {}; ---HERE TODO TESTING
            ATTDB.profilebychar = (not ATTDB.profilebychar);
            ATT:CheckProfile();
            ATT:UpdateScrollBar();
            ATT:ApplyAnchorSettings();
            panel:UpdateSettings()
            ReloadUI();
        end,
        OnCancel = function()
            profilebychar:SetChecked(not not ATTDB.profilebychar)
        end,
        OnHide = function()
            profilebychar:SetChecked(not not ATTDB.profilebychar)
        end,
        exclusive = true,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }

    local reset = panel:MakeButton('name', L["reset"], 'description', L["resetToolTip"], 'extra',
    profiles, 'newsize', false, 'func', function()
        StaticPopup_Show("ATT_RESET")
    end)
    reset:SetPoint("TOP", profiles, "TOP", 0, -240)

StaticPopupDialogs["ATT_RESET"] = {
    text = L["resetPopUp"],
    button1 = L["Yes"],
    button2 = L["No"],
    OnAccept = function()
        ATTDB = {};
        ATTCharDB = {};
        ReloadUI();
    end,
    exclusive = true,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,
}

    profiles:SetScript("OnHide",
        function(self)
            StaticPopup_Hide("ATT_RESET")
            StaticPopup_Hide("ATT_COPYPROFILES")
            StaticPopup_Hide("ATT_CHARDB")
        end)
end

function ATT:CreateOptionsFrame(options)
    local panel = self.panel

    local useAtrack = panel:MakeToggle('name', L["useAtrack"], 'description',
    L["useAtrackToolTip"], 'extra', options, 'default', false, 'getFunc',
        function()
            return ATTDB.useAtrack
        end, 'setFunc', function(value)
            StaticPopup_Show("ATT_useAtrack")
        end)
    useAtrack:SetPoint("TOPLEFT", options, "TOPLEFT", 40 , -80)

    StaticPopupDialogs["ATT_useAtrack"] = {
        text = L["useAtrackPopUp"],
        button1 = L["Yes"],
        button2 = L["No"],
        OnAccept = function()
            ATTDB.useAtrack = (not ATTDB.useAtrack);
            useAtrack:SetChecked(not not ATTDB.useAtrack)
            ReloadUI();
        end,
        OnCancel = function()
            useAtrack:SetChecked(not not ATTDB.useAtrack)
        end,
        OnHide = function()
            useAtrack:SetChecked(not not ATTDB.useAtrack)
        end,
        exclusive = true,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }

    local oldGlow = panel:MakeToggle('name', L["oldGlow"], 'description',
    L["oldGlowToolTip"], 'extra', options, 'default', false, 'getFunc',
        function()
            return ATTDB.oldGlow
        end, 'setFunc', function(value)
            ATTDB.oldGlow = value;
        end)
    oldGlow:SetPoint("TOP", useAtrack, "TOP", 0, -35)

    local disableSync = panel:MakeToggle('name', L["disableSync"], 'description',L["disableSyncToolTip"], 'extra', options, 'default', false, 'newsize', false,
    'getFunc', function()
        return ATTDB.disableSync
    end, 'setFunc', function(value)
        StaticPopup_Show("ATT_disableSync")
    end)
    disableSync:SetPoint("TOP", oldGlow, "TOP", 0, -35) 

StaticPopupDialogs["ATT_disableSync"] = {
    text = L["disableSyncPopUp"],
    button1 = L["Yes"],
    button2 = L["No"],
    OnAccept = function()
        ATTDB.disableSync = (not ATTDB.disableSync);
        disableSync:SetChecked(not not ATTDB.disableSync)
    end,
    OnCancel = function()
        disableSync:SetChecked(not not ATTDB.disableSync)
    end,
    OnHide = function()
        disableSync:SetChecked(not not ATTDB.disableSync)
    end,
    exclusive = true,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,
}

local useEnglishLang = panel:MakeToggle('name', L["useEnglishLang"], 'description',
L["useEnglishLangToolTip"], 'extra', options, 'default', false,
    'getFunc', function()
        return ATTDB.useEnglish
    end, 'setFunc', function(value)
        StaticPopup_Show("ATT_USEENGLISH")
    end)
useEnglishLang:SetPoint("TOP", disableSync, "TOP", 0, -35)
useEnglishLang:SetScript("OnShow", function(self) if GetLocale() == "enUS" then useEnglishLang:Hide() else useEnglishLang:Show() end end)

StaticPopupDialogs["ATT_USEENGLISH"] = {
    text = L["useEnglishLangPopUp"],
    button1 = L["Yes"],
    button2 = L["No"],
    OnAccept = function()
        ATTDB.useEnglish = (not ATTDB.useEnglish);
        ReloadUI();
    end,
    OnCancel = function()
        useEnglishLang:SetChecked(not not ATTDB.useEnglish)
    end,
    OnHide = function()
        useEnglishLang:SetChecked(not not ATTDB.useEnglish)
    end,
    exclusive = true,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,
}

local legendFrame = CreateFrame("Frame", nil, options, "TooltipBackdropTemplate")
legendFrame:SetSize(220, 150)
legendFrame:SetPoint("TOPLEFT", 400, -70)

local abilityTexture = "Interface\\GossipFrame\\DailyActiveQuestIcon"  -- NPE Exclamation Point texture

local legend = legendFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
legend:SetText("|T" .. abilityTexture .. ":16|t " .. L["Legend"])
legend:SetPoint("TOP", legendFrame, "TOP", 0, -10)

local redSpell = legendFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
redSpell:SetText(L["redSpell"])
redSpell:SetPoint("TOPLEFT", legendFrame, "TOPLEFT", 10, -40)

local customSpell = legendFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
customSpell:SetText(L["customSpell"])
customSpell:SetPoint("TOPLEFT", legendFrame, "TOPLEFT", 10, -65)

local greenSpell = legendFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
greenSpell:SetText(L["greenSpell"])
greenSpell:SetPoint("TOPLEFT", legendFrame, "TOPLEFT", 10, -90)

local arrowIcon = legendFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
arrowIcon:SetText("|TInterface\\MainMenuBar\\UI-MainMenu-ScrollUpButton-Up:32|t- "..L["arrowIcon"])
arrowIcon:SetPoint("TOPLEFT", legendFrame, "TOPLEFT", 5, -110)


local contact = options:CreateFontString(nil, "ARTWORK", "GameFontDisable")
contact:SetText("[ Support: curseforge.com/wow/addons/att ]")
contact:SetPoint("BOTTOMRIGHT", options, "BOTTOMRIGHT", -10, 15)


options:SetScript("OnHide",
        function(self)
            StaticPopup_Hide("ATT_useAtrack")
            StaticPopup_Hide("ATT_disableSync")
            StaticPopup_Hide("ATT_USEENGLISH")
        end)
end

function ATT:CreateAbilityOptionsFrame()
    local panel = self.panel
    local popUpFrame = CreatePopUpFrame(panel, L["AbilityOptions"])
    self.OrderPopUpFrame = popUpFrame
    popUpFrame.id = nil
    popUpFrame:SetSize(250, 180);
    --popUpFrame:SetPoint('LEFT', 210, -65);
    popUpFrame.Close:SetScript("OnClick", function(self)  panel.popUP = false self:GetParent():Hide() ATT:UpdateIcons() end)

    local order = panel:MakeSlider('name', L["order"], 'extra', popUpFrame, 'description', L["orderToolTip"]
        , 'minText', '1', 'maxText', '20', 'minValue', 1, 'maxValue', 20, 'step', 1, 'default', 1, 'current',
        tonumber(db.iconOrder[db.specSelected][popUpFrame.id]) or 20, 'setFunc', function(value)
            if value ~= db.iconOrder[db.specSelected][popUpFrame.id] then
                db.iconOrder[db.specSelected][popUpFrame.id] = tonumber(string.format("%.1d", value))
                ATT:UpdateIcons()
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value))
        end)
    order:SetPoint("TOP", popUpFrame, "TOP", -20, -60)

    local notorder = popUpFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    notorder:SetText(L["notoder"])
    notorder:SetPoint("TOP", popUpFrame, "TOP", 0, -60)

    local alertCD = panel:MakeToggle('name', L["alertCD"], 'extra', popUpFrame, 'description',
    L["alertCDTooTtip"], 'default', false, 'getFunc', function()
            return db.alertCD[db.specSelected][popUpFrame.id]
        end,
        'setFunc', function(value)
                db.alertCD[db.specSelected][popUpFrame.id] = value;
        end)
    alertCD:SetPoint("TOP", order, "BOTTOM", -70, -25)

    local alertCDtext = panel:MakeToggle('name', L["alertCDtext"], 'extra', popUpFrame, 'description',
    L["alertCDtextToolTip"], 'default', false, 'getFunc', function()
            return db.alertCDtext[db.specSelected][popUpFrame.id]
        end, 'setFunc', function(value)
                db.alertCDtext[db.specSelected][popUpFrame.id] = value;
        end)
    alertCDtext:SetPoint("LEFT", alertCD, "RIGHT", 100, 0)

    local removebutton = panel:MakeButton('name', L["removebutton"], 'newsize', 3, 'description', L["removebuttonToolTip"], 'extra', popUpFrame, 'func',
    function()
        local id = popUpFrame.id
        local spec = db.specSelected
        local ability = GetSpellInfo(id) or id

        local _ability, _index = ATT:FindAbilityByName(db.customSpells[spec], tonumber(id))
        if _ability and _index then
            table.remove(db.customSpells[spec], _index)
            panel.popUP = false 
            popUpFrame:Hide()
            ATT:UpdateScrollBar();
            ATT:UpdateIcons()
            print(L["removebuttonRemoved"]..": |cffFF4500" .. ability .. "|r ID: |cffFF4500" .. id .. "|r")
        else
            print(L["removebuttonInvalid"])
        end
    end)
    removebutton:SetPoint("TOP", order, "CENTER", 20, -65)

    popUpFrame:SetScript("OnShow", function(self)
        alertCD:SetChecked(not not db.alertCD[db.specSelected][popUpFrame.id])
        alertCDtext:SetChecked(not not db.alertCDtext[db.specSelected][popUpFrame.id])
        if ATT:FindAbilityByName(db.customSpells[db.specSelected], tonumber(popUpFrame.id)) then
            removebutton:Show()
           else
            removebutton:Hide()
        end

        if (db.category == "abilities") then
            order:SetValue(tonumber(db.iconOrder[db.specSelected][popUpFrame.id]) or 20)
            order.currentText:SetText(tonumber(db.iconOrder[db.specSelected][popUpFrame.id]) or 20)
            order:Show();
            notorder:Hide();
        else
            order:Hide();
            notorder:Show();
        end
    end)
end



function ATT:UpdateScrollBar()
    local panel, scrollframe, btns = self.panel, self.scrollframe, self.btns
    local OrderPopUpFrame = self.OrderPopUpFrame
    local line = 1

    for abilityIndex, abilityTable in pairs(self:MergeTable(db.classSelected, db.specSelected, db.category)) do
        local name, id, cooldown, maxcharges, custom, trinketId, isPvPtrinket = abilityTable.name, abilityTable.ability,
            abilityTable.cooldown, abilityTable.maxcharges, abilityTable.custom, abilityTable.trinketId,
            abilityTable.isPvPtrinket
        local button = btns[line]
        local abilitytexture = abilityTable.texture or self:FindAbilityIcon(name, id)

        if line == 1 then
            button:SetPoint("TOPLEFT", scrollframe, "TOPLEFT", 2, 0)
        end

        if custom then
            button.Text:SetText(" |T" .. abilitytexture .. ":20|t |cff808080" .. name .. "|r")
            button:SetChecked(db.isEnabledSpell[db.specSelected][id .. "custom"])
            button:SetScript("OnClick", function(self)
                db.isEnabledSpell[db.specSelected][id .. "custom"] = (button:GetChecked() == true and true) or false;
                ATT:UpdateIcons();
            end)
        else
            if dbisPVPspell[id] or isPvPtrinket then
                button.Text:SetText(" |T" .. abilitytexture .. ":20|t |cffFF4500" .. name .. "|r")
            else
                button.Text:SetText(" |T" .. abilitytexture .. ":20|t " .. name)
            end
            button:SetChecked(db.isEnabledSpell[db.specSelected][id])
            button:SetScript("OnClick", function(self)
                    db.isEnabledSpell[db.specSelected][id] = (button:GetChecked() == true and button:GetChecked()) or false;
                ATT:UpdateIcons();
            end)
        end
        button.Text:SetSize(165, 22)
        button.Text:SetJustifyH("LEFT")
        button.Text:SetFont(GameFontNormal:GetFont(), 13)
        button:SetHitRectInsets(0, -165, 0, 0)

        button:SetScript('OnEnter', function()
            if trinketId then
                local tooltip = Item:CreateFromItemID(trinketId)
                tooltip:ContinueOnItemLoad(function()
                    GameTooltip:ClearLines();
                    GameTooltip:SetOwner(button.Text, "ANCHOR_TOP")
                    if isPvPtrinket then
                        GameTooltip:SetSpellByID(id)
                        GameTooltip:AddLine("|cffFF4500PvP|r - Spell ID:".. id, 1, 1, 1)
                    else
                        GameTooltip:SetItemByID(trinketId)
                        GameTooltip:AddLine("Spell ID: " .. id, 1, 1, 1)
                    end
                    GameTooltip:SetPadding(16, 0)
                    GameTooltip:Show()
                end)
            else
                local tooltip = Spell:CreateFromSpellID(id)
                tooltip:ContinueOnSpellLoad(function()
                    GameTooltip:ClearLines();
                    GameTooltip:SetOwner(button.Text, "ANCHOR_TOP")
                    GameTooltip:SetSpellByID(id)
                    if custom then
                        GameTooltip:AddLine("|cff808080[CUSTOM]|r Spell ID: " .. id .. " - CD: " .. cooldown, 1, 1, 1)
                    else
                        if dbisPVPspell[id] then
                            GameTooltip:AddLine("|cffFF4500[PvP]|r Spell ID: " .. id, 1, 1, 1)
                        else
                            GameTooltip:AddLine("Spell ID: " .. id, 1, 1, 1)
                        end
                    end
                    GameTooltip:SetPadding(16, 0)
                    GameTooltip:Show()
                end)
            end
        end)

        button:SetScript('OnLeave', function()
            GameTooltip:ClearLines()
            GameTooltip:Hide()
        end)

        local orderbtn = button.orderbtn
        orderbtn:SetPoint("LEFT", button, "RIGHT", 165, 0)
        orderbtn:SetText(L["orderbtn"])
        orderbtn:SetScript("OnClick", function(self)
            --OrderPopUpFrame.title:SetText(("|T" .. abilitytexture .. ":20|t " .. name:sub(1, 30)))
            OrderPopUpFrame.Title:SetText(("|T" .. abilitytexture .. ":15|t " .. name:sub(1, 30)))
            OrderPopUpFrame.id = id
            if panel.popUP then
                panel.popUP:Hide()
                panel.popUP = false
            else
                OrderPopUpFrame:Show()
                panel.popUP = OrderPopUpFrame
            end
        end)

        button:Show()
        line = line + 1
    end

    for i = line, 50 do
        btns[i]:Hide();
    end
end

function ATT:CreateAbilityEditor(frame)
    local panel = self.panel
    panel:Hide()
    local btns = {}
    self.btns = btns

    local scrollframe = CreateFrame("ScrollFrame", "ATTScrollFrame", frame, "ScrollFrameTemplate") --MinimalScrollFrameTemplate
    local child = CreateFrame("Frame", "ATTScrollFrameChild", scrollframe)
    child:SetSize(1, 1)
    scrollframe:SetScrollChild(child)
    self.scrollframe = child
    scrollframe:SetSize(440, 268)
    scrollframe:SetPoint("TOPLEFT", frame, "TOPLEFT", 10 , -12)


    for i = 1, 50 do
        local button = CreateListButton(child, tostring(i), frame)
        if (i % 2 == 0) then
            button:SetPoint("LEFT", btns[#btns], "RIGHT", 195, 0)
        else
            button:SetPoint("TOPLEFT",btns[#btns - 1], "BOTTOMLEFT", 0, -1)
        end
        btns[#btns + 1] = button
    end

    scrollframe:SetScript("OnShow",
        function(self)
            ATT:FindFrameType();
            if panel.popUP then
                panel.popUP:Hide()
                panel.popUP = false
            end
            child.dropdownClass.initialize()
            child.dropdownClass.SetValue(db.classSelected or "WARRIOR")
            
            panel:UpdateSettings()
        end)

        local function classColor(class, color) 
            local colorClass = WrapTextInColorCode(class, color)
            return colorClass or class
        end
        
        local dropdownClass = panel:MakeDropDown('name', L["dropdownClass"], 'description', L["dropdownClassToolTip"], 'extra', frame, 'values',
        { 
            "WARRIOR", classColor(LOCALIZED_CLASS_NAMES_MALE.WARRIOR, "ffC69B6D"),
            "PALADIN", classColor(LOCALIZED_CLASS_NAMES_MALE.PALADIN, "ffF48CBA"),
            "PRIEST", classColor(LOCALIZED_CLASS_NAMES_MALE.PRIEST, "ffFFFFFF"),
            "SHAMAN", classColor(LOCALIZED_CLASS_NAMES_MALE.SHAMAN, "ff0070DD"),
            "DRUID", classColor(LOCALIZED_CLASS_NAMES_MALE.DRUID, "ffFF7C0A"),
            "ROGUE", classColor(LOCALIZED_CLASS_NAMES_MALE.ROGUE, "ffFFF468"),
            "MAGE", classColor(LOCALIZED_CLASS_NAMES_MALE.MAGE, "ff3FC7EB"),
            "WARLOCK", classColor(LOCALIZED_CLASS_NAMES_MALE.WARLOCK, "ff8788EE"),
            "HUNTER", classColor(LOCALIZED_CLASS_NAMES_MALE.HUNTER, "ffAAD372"),
            "DEATHKNIGHT", classColor(LOCALIZED_CLASS_NAMES_MALE.DEATHKNIGHT, "ffC41E3A"),
            "MONK", classColor(LOCALIZED_CLASS_NAMES_MALE.MONK, "ff00FF98"),
            "DEMONHUNTER", classColor(LOCALIZED_CLASS_NAMES_MALE.DEMONHUNTER, "ffA330C9"),
            "EVOKER", classColor(LOCALIZED_CLASS_NAMES_MALE.EVOKER,"ff33937F"),
        }, 
            'default', 'WARRIOR', 'getFunc', function()
            return db.classSelected or "WARRIOR"
            end, 'getCurrent', function()
                child.dropdownSpec.values = {}
                for i = 1, GetNumClasses() do
                    local className, classTag, classID = GetClassInfo(i)
                    if classTag == db.classSelected then
                        for j = 1, GetNumSpecializationsForClassID(classID) do
                            local specID, specName = GetSpecializationInfoForClassID(classID, j)
                            if j == 1 then
                                db.specSelected = tostring(specID)
                            end
                            child.dropdownSpec.values[#child.dropdownSpec.values + 1] = tostring(specID)
                            child.dropdownSpec.values[#child.dropdownSpec.values + 1] = specName
                        end
                        break
                    end
                end
                return db.classSelected or "WARRIOR"
            end, 'setFunc', function(value)
                db.classSelected = value;
                child.dropdownSpec.values = {}
                for i = 1, GetNumClasses() do
                    local className, classTag, classID = GetClassInfo(i)
                    if classTag == db.classSelected then
                        for j = 1, GetNumSpecializationsForClassID(classID) do
                            local specID, specName = GetSpecializationInfoForClassID(classID, j)
                            if j == 1 then
                                db.specSelected = tostring(specID)
                            end
                            child.dropdownSpec.values[#child.dropdownSpec.values + 1] = tostring(specID)
                            child.dropdownSpec.values[#child.dropdownSpec.values + 1] = specName
                        end
                        break
                    end
                end
                child.dropdownSpec.initialize()
                child.dropdownSpec.SetValue(db.specSelected)
            end, 'iconsFunc', function(value)
                local icon = value and GetClassAtlas(value)
                return icon, true
            end)
    dropdownClass:SetPoint("TOPLEFT", scrollframe, "TOPRIGHT", 35, -15)
    dropdownClass.update = true
    child.dropdownClass = dropdownClass

    local dropdownSpec = panel:MakeDropDown('name', L["dropdownSpec"], 'description', L["dropdownSpecToolTip"], 'extra', frame, 'values',
        { "71", "Arms", "72", "Fury", "73", "Protection" }, 'default', "71", 'current', "71", 'getCurrent',
        function()
            return db.specSelected
        end, 'setFunc', function(value)
            db.specSelected = value;
            db.category = "abilities"
            child.dropdownCateg.initialize()
            child.dropdownCateg.SetValue(db.category)
        end, 'iconsFunc', function(value)
                local icon = value and select(4, GetSpecializationInfoByID(value))
                return icon
        end)
    dropdownSpec:SetPoint("TOPLEFT", dropdownClass, "BOTTOMLEFT", 0, -20)
    child.dropdownSpec = dropdownSpec

    local dropdownCateg = panel:MakeDropDown('name', L["dropdownCateg"], 'description',  L["dropdownCategToolTip"], 'extra', frame, 'values',
    { "abilities", L["Abilities"], "trinkets", L["Trinkets"], "racials", L["Racials"] }, 'default', "abilities", 'current',
    "abilities", 'getCurrent', function()
        return db.category
    end, 'setFunc', function(value)
        if panel.popUP then panel.popUP:Hide()  panel.popUP = false  end
        db.category = value;
        if value == "abilities" then self.globalSelections:Hide() self.editor:Show() else self.editor:Hide() self.globalSelections:Show() end 
        ATT:UpdateScrollBar()
    end)
    dropdownCateg:SetPoint("TOPLEFT", dropdownSpec, "BOTTOMLEFT", 0, -20)
    child.dropdownCateg = dropdownCateg

   local globalSelections = panel:MakeButton('name', L["globalSelections"], 'newsize', 3, 'description', L["globalSelectionsToolTip"], 'extra', frame,'func',
   function()
    local class = dropdownClass.getCurrent()
    local spec = dropdownSpec.getCurrent()
    local categ = dropdownCateg.getCurrent()
    
      if categ ~= "trinkets" and categ ~= "racials" then print("|cffFF4500" ..categ .. "|r - "..L["globalSelectionsInvalid"]) return end
      for abilityIndex, abilityTable in pairs(self:MergeTable(class, spec, categ)) do
        local name, id = abilityTable.name, abilityTable.ability
            local isenabled = db.isEnabledSpell[spec] and db.isEnabledSpell[spec][id]
            local alertcd = db.alertCD[spec] and db.alertCD[spec][id]
            local alertcdtext = db.alertCDtext[spec] and db.alertCDtext[spec][id]
            EnableGlobalSpell(id, isenabled, alertcd, alertcdtext) --global selections
      end
           ATT:UpdateScrollBar();
           ATT:UpdateIcons()
           print("|cffFF4500"..categ.."|r "..L["globalSelectionsDone"])
   end)
   globalSelections:SetPoint("CENTER", dropdownSpec, "TOP", 1, -115)
   self.globalSelections = globalSelections

    local editor = CreateFrame("Frame", "ATTFrame", frame, BackdropTemplateMixin and "BackdropTemplate, InsetFrameTemplate")
    editor:SetSize(150, 110)
    editor:SetPoint("TOPLEFT", dropdownSpec, "BOTTOMLEFT", 0, -60)
    self.editor = editor
    local editorTitle = editor:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    editorTitle:SetPoint("CENTER", editor, "TOP", 0, -13)
    editorTitle:SetText(L["editorTitle"])
    
    local ideditbox = CreateEditBox(L["AbilityID"], editor, 75, 30)
    ideditbox:SetPoint("TOPLEFT", editor, "BOTTOMLEFT", 15, 70)

    local cdeditbox = CreateEditBox(L["AbilityCD"], editor, 35, 30)
    cdeditbox:SetPoint("LEFT", ideditbox, "RIGHT", 15, 0)

    local addbutton = panel:MakeButton('name', L["addbutton"], 'newsize', 3, 'description', L["addbuttonToolTip"], 'extra', editor, 'func',
        function()
            local id = ideditbox:GetText():match("^[0-9]+$")
            local class = dropdownClass.getCurrent()
            local spec = dropdownSpec.getCurrent()
            
            local ability = id and GetSpellInfo(id)
            local cdtext = cdeditbox:GetText():match("^[0-9]+$")

            if ability and cdtext and id and db.customSpells[spec] then
                local abilities = db.customSpells[spec]
                local _ability, _index = ATT:FindAbilityByName(db.customSpells[spec], tonumber(id))
                if _ability and _index then
                    -- editing:
                    abilities[_index] = {
                        ability = tonumber(id),
                        cooldown = tonumber(cdtext),
                        order = _ability.order or 20,
                        custom = true
                    }
                    ideditbox:SetText("");
                    cdeditbox:SetText("");
                    print(L["addbuttonUpdate"]..": |cffFF4500" ..ability .. "|r id: |cffFF4500" .. id .. "|r cd: |cffFF4500" .. cdtext .. "|r")
                else
                    -- adding new:
                    table.insert(abilities,
                        { ability = tonumber(id), cooldown = tonumber(cdtext), order = 20, custom = true })
                    ideditbox:SetText("");
                    cdeditbox:SetText("");
                    print(L["addbuttonAdded"]..": |cffFF4500" ..ability .. "|r id: |cffFF4500" .. id .. "|r cd: |cffFF4500" .. cdtext .. "|r")
                end
                ATT:UpdateScrollBar();
                ATT:UpdateIcons()
            else
                print(L["addbuttonInvalid"])
            end
        end)
    addbutton:SetPoint("TOPLEFT", ideditbox, "BOTTOMLEFT", -10, -5)

end

function ATT:CreateTabs()
    local panel = self.panel
 
     local ATTTabs = CreateFrame("Frame", "ATTTabsFrame", panel, "InsetFrameTemplate")
     ATTTabs:SetSize(650, 290)
     ATTTabs:SetPoint("TOPLEFT", panel, "TOPLEFT", 20 , -310)
     ATTTabs:EnableMouse(true)
 
   
     -- Create tabs
     local tabs = {}
     local tabHeaders = {L["editorTitle"], L["showVisibility"] , L["Profiles"], L["Options"] }
 
     for i = 1, #tabHeaders do
         local tab = CreateFrame("Button", ATTTabs:GetName().."Tab"..i, ATTTabs, "PanelTabButtonTemplate")
         tab:SetID(i)
         tab:SetText(tabHeaders[i])
         tab:SetScript("OnClick", function()
            if panel.popUP then panel.popUP:Hide() panel.popUP = false end
             _G.PanelTemplates_SetTab(ATTTabs, i)
             ATTTabs:ShowTab(i)
         end) 
     
         if i == 1 then
             tab:SetPoint("TOPLEFT", ATTTabs, "BOTTOMLEFT", 5, -1)
         else
             tab:SetPoint("LEFT", tabs[i - 1], "RIGHT", -16, 0)
         end
     
         tabs[i] = tab
     end
 
     _G.PanelTemplates_SetNumTabs(ATTTabs, #tabs)
     _G.PanelTemplates_SetTab(ATTTabs, 1)
     -- Create content frames
     local tabContents = {}
     
     
     local function CreateTabContent(parent, tabName)
         local frame = CreateFrame("Frame", nil, parent)
         frame:SetSize(650, 290)
         frame:SetPoint("TOP", 0, 0)
         frame:Hide()
 
         if tabName == 1 then self:CreateAbilityEditor(frame) end
 
         if tabName == 2 then  
             local headerFrame = CreateFrame("Frame", nil, frame)
             headerFrame:SetSize(250, 54)  -- Smaller width and height
             headerFrame:SetPoint("TOP", 0, 0)

             local headerTexture = headerFrame:CreateTexture(nil, "BACKGROUND")
             headerTexture:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-Skills-BarBorder")

             headerTexture:SetAllPoints(headerFrame)

             -- Create the header text
             local headerText = headerFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
             headerText:SetPoint("CENTER", headerFrame, "CENTER", 0, 0)
             headerText:SetText(L["showVisibility"])

             local font, _, flags = headerText:GetFont()
             headerText:SetFont(font, 14, flags) 

             self:CreateVisibilityFrame(frame) 
         end

         if tabName == 3 then 
            local headerFrame = CreateFrame("Frame", nil, frame)
            headerFrame:SetSize(250, 54)  
            headerFrame:SetPoint("TOP", 0, 0)

            local headerTexture = headerFrame:CreateTexture(nil, "BACKGROUND")
            headerTexture:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-Skills-BarBorder")

            headerTexture:SetAllPoints(headerFrame)

            -- Create the header text
            local headerText = headerFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            headerText:SetPoint("CENTER", headerFrame, "CENTER", 0, 0)
            headerText:SetText(L["Profiles"])
 
            local font, _, flags = headerText:GetFont()
            headerText:SetFont(font, 14, flags) 

             self:CreateProfilesFrame(frame) 
         end

         if tabName == 4 then 
            local headerFrame = CreateFrame("Frame", nil, frame)
            headerFrame:SetSize(250, 54)  
            headerFrame:SetPoint("TOP", 0, 0)

            local headerTexture = headerFrame:CreateTexture(nil, "BACKGROUND")
            headerTexture:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-Skills-BarBorder")

            headerTexture:SetAllPoints(headerFrame)

            -- Create the header text
            local headerText = headerFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            headerText:SetPoint("CENTER", headerFrame, "CENTER", 0, 0)
            headerText:SetText(L["Options"])
 
            local font, _, flags = headerText:GetFont()
            headerText:SetFont(font, 14, flags) 

             self:CreateOptionsFrame(frame) 
         end
 
         return frame
     end
 
       tabContents[1] = CreateTabContent(ATTTabs, 1)
       tabContents[2] = CreateTabContent(ATTTabs, 2) 
       tabContents[3] = CreateTabContent(ATTTabs, 3)  
       tabContents[4] = CreateTabContent(ATTTabs, 4)  

 -- Function to show the correct tab content
 function ATTTabs:ShowTab(tabIndex)
     for i, frame in ipairs(tabContents) do
         if i == tabIndex then
             frame:Show()
         else
             frame:Hide()
         end
     end
 end
     
     ATTTabs:ShowTab(1)
 end

ATT:RegisterEvent("ADDON_LOADED")
ATT:SetScript("OnEvent", ATT_OnLoad)