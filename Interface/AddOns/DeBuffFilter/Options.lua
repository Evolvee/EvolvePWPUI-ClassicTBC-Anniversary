local AddonName = "DeBuffFilter"
local DeBuffFilter = LibStub:NewLibrary(AddonName, 8)
if not DeBuffFilter then return end

local tinsert, tsort, tostring, wipe, remove = table.insert, table.sort, tostring, table.wipe, table.remove
local strlower, tonumber = string.lower, tonumber
local GetAddOnMetadata = C_AddOns and C_AddOns.GetAddOnMetadata or GetAddOnMetadata
local GetSpellTexture = C_Spell and C_Spell.GetSpellTexture or GetSpellTexture
local spellTextureCache = {}
local lastTime = 0

local function updateCastbarPosition(bar, val, xPos)
    if not bar:IsShown() then bar:Show() end
    local a, b, c, d, e = bar:GetPoint()
    bar:ClearAllPoints()
    if xPos then bar:SetPoint(a, b, c, val, e) else bar:SetPoint(a, b, c, d, val) end
    lastTime = GetTime()
    C_Timer.After(3, function() if (GetTime() - lastTime) > 2 then bar:Hide() end end)
end

local defaults = {
    profile = {
        smartFilters = {},
        selfSize = 21, otherSize = 20, auraWidth = 122, verticalSpace = 1, horizontalSpace = 3,
        countSize = 14, sortBySize = false, sortbyDispellable = false, highlightAll = false,
        enableRetailGlow = false, focusBarPosX = 0, focusBarPosY = 0, targetBarPosX = 0, targetBarPosY = 0,
        targetCastBarSize = 1, focusCastBarSize = 1, buffFrameBuffsPerRow = 10, disableFade = false,
        enableFancyCount = false, countColor = { 1, 1, 1 }
    }
}

StaticPopupDialogs["DBF_RELOADUI"] = {
    text = "You must reload the UI for this change to take effect.",
    button1 = "Reload UI", button2 = "Cancel", OnAccept = function() ReloadUI() end,
    timeout = 0, whileDead = 1, hideOnEscape = 1,
}

local function detectName(tbl, name)
    if not name or not tbl then return nil end
    local lname = name:lower()
    for k in pairs(tbl) do
        if type(k) == "string" and k:lower() == lname then return k end
    end
    return nil
end

local function getFiltersForFrame(smartFilters, auraName, spellId, frame)
    local results = {}
    local matchName = detectName(smartFilters, auraName)

    if smartFilters[spellId] and smartFilters[spellId][frame] then
        for _, filter in ipairs(smartFilters[spellId][frame]) do tinsert(results, filter) end
    end

    if matchName and smartFilters[matchName][frame] then
        for _, filter in ipairs(smartFilters[matchName][frame]) do tinsert(results, filter) end
    end
    return results
end

function DeBuffFilter:GetSmartFilterSettings(auraName, spellId, frame)
    local allFramesFilters = getFiltersForFrame(self.db.profile.smartFilters, auraName, spellId, "")
    if frame ~= "" then
        local specificFrameFilters = getFiltersForFrame(self.db.profile.smartFilters, auraName, spellId, frame)
        for _, filter in ipairs(specificFrameFilters) do
            tinsert(allFramesFilters, filter)
        end
    end
    return allFramesFilters
end

function DeBuffFilter:CheckSmarterAuraFilters(spellId, auraName, expirationTime, stacks, frameName)
    local filters = self:GetSmartFilterSettings(auraName, spellId, frameName)
    if not filters or #filters == 0 then return nil, nil end

    local actions = {}
    local derivedSettings = {}
    local hasShow = false

    for _, filterRule in ipairs(filters) do
        local passDuration = not filterRule.enableDurationFilter
        if filterRule.enableDurationFilter then
            local currentDuration = expirationTime and (expirationTime - GetTime()) or 0
            passDuration = (filterRule.minDuration <= 0 or currentDuration >= filterRule.minDuration) and
                    (filterRule.maxDuration <= 0 or currentDuration <= filterRule.maxDuration)
        end

        local passStacks = not filterRule.enableStacksFilter
        if filterRule.enableStacksFilter then
            stacks = stacks or 0
            passStacks = (filterRule.minStacks <= 0 or stacks >= filterRule.minStacks) and
                    (filterRule.maxStacks <= 0 or stacks <= filterRule.maxStacks)
        end

        if passDuration and passStacks then
            tinsert(actions, filterRule.action)
            if not filterRule.action.hide then hasShow = true end

            if filterRule.settings then
                for k, v in pairs(filterRule.settings) do
                    if type(v) == "boolean" then
                        derivedSettings[k] = derivedSettings[k] or v
                    else
                        derivedSettings[k] = v
                    end
                end
            end
        end
    end

    if hasShow then
        local anyShown = {}
        for _, action in ipairs(actions) do if not action.hide then tinsert(anyShown, action) end end
        return anyShown, derivedSettings
    elseif #actions > 0 then
        return actions, derivedSettings
    else
        return nil, nil
    end
end

function DeBuffFilter:BuildSpellNameCache()
    wipe(spellTextureCache)
    for spellID = 1, 126000 do
        local name, _, texture = GetSpellInfo(spellID)
        if name and texture then spellTextureCache[strlower(name)] = texture end
    end
end

function DeBuffFilter:BuildSmarterAuraOptions()
    local options = {
        AllFrames = { type = "group", name = "All Frames", order = 1, args = {} },
        TargetFrame = { type = "group", name = "Target Frame", order = 2, args = {} },
        FocusFrame = { type = "group", name = "Focus Frame", order = 3, args = {} },
        BuffFrame = { type = "group", name = "Buff Frame", order = 4, args = {} },
        DebuffFrame = { type = "group", name = "Debuff Frame", order = 5, args = {} },
    }
    for aura, frames in pairs(self.db.profile.smartFilters or {}) do
        for frame, filters in pairs(frames or {}) do
            if type(filters) == "table" then
                for index, settings in ipairs(filters) do
                    local key = tostring(aura) .. "_" .. tostring(frame) .. "_" .. index
                    local filterDef = {
                        type = "group",
                        name = function()
                            local icon
                            if aura and aura ~= "" then
                                icon = GetSpellTexture(aura)
                                if not icon and type(aura) == "string" then icon = spellTextureCache[strlower(aura)] end
                            end
                            local displayName = icon and "|T" .. tostring(icon) .. ":18:18:0:0|t " or ""
                            return displayName .. (settings.customName and settings.customName ~= "" and settings.customName or "Rename Filter")
                        end,
                        args = self:AddFilterOptions(aura, frame, settings, index)
                    }
                    local frameKey = (frame == "" or frame == "None") and "AllFrames" or frame
                    if options[frameKey] then options[frameKey].args[key] = filterDef end
                end
            end
        end
    end
    return options
end

function DeBuffFilter:AddFilterOptions(aura, frame, settings, index)
    settings.settings = settings.settings or { alwaysEnableGlow = false, ownOnly = false, removeDuplicates = false, priorityEnabled = false, priority = 0, color = { r = 1, g = 1, b = 0.85, a = 1 } }

    local function updateFrames()
        if frame == "TargetFrame" or frame == "FocusFrame" then
            if _G[frame] and _G[frame].UpdateAuras then _G[frame]:UpdateAuras() end
        elseif frame == "BuffFrame" then
            if BuffFrame and BuffFrame.UpdateAuraButtons then BuffFrame:UpdateAuraButtons() end
        elseif frame == "DebuffFrame" then
            if DebuffFrame and DebuffFrame.UpdateAuraButtons then DebuffFrame:UpdateAuraButtons() end
        end
    end

    return {
        customNameInput = { order = 0, type = "input", name = "Filter Name", set = function(_, val) settings.customName = val end, get = function() return settings.customName or "" end },
        spellInput = {
            order = 1, type = "input", name = "Spell ID or Name",
            set = function(_, val)
                if val ~= "" then
                    local newKey = tonumber(val) or val
                    if newKey ~= aura then
                        local movingSettings = settings
                        remove(self.db.profile.smartFilters[aura][frame], index)
                        if #self.db.profile.smartFilters[aura][frame] == 0 then self.db.profile.smartFilters[aura][frame] = nil end
                        if self.db.profile.smartFilters[aura] and next(self.db.profile.smartFilters[aura]) == nil then self.db.profile.smartFilters[aura] = nil end

                        self.db.profile.smartFilters[newKey] = self.db.profile.smartFilters[newKey] or {}
                        self.db.profile.smartFilters[newKey][frame] = self.db.profile.smartFilters[newKey][frame] or {}
                        tinsert(self.db.profile.smartFilters[newKey][frame], movingSettings)
                        self:RefreshSmarterAuraOptions()
                    end
                end
            end,
            get = function() return tostring(aura or ""):gsub("new_filter_%d+", "") end,
        },
        frame = {
            order = 2, type = "select", name = "Apply To Frame",
            values = { [""] = "All Frames", TargetFrame = "Target Frame", FocusFrame = "Focus Frame", BuffFrame = "Buff Frame", DebuffFrame = "Debuff Frame" },
            set = function(_, val)
                if val ~= frame then
                    self.db.profile.smartFilters[aura][val] = self.db.profile.smartFilters[aura][val] or {}
                    tinsert(self.db.profile.smartFilters[aura][val], settings)
                    remove(self.db.profile.smartFilters[aura][frame], index)
                    if #self.db.profile.smartFilters[aura][frame] == 0 then self.db.profile.smartFilters[aura][frame] = nil end
                    self:RefreshSmarterAuraOptions()
                end
            end,
            get = function() return frame end,
        },
        action = {
            order = 3, type = "select", name = "Action", values = { show = "Show Aura", hide = "Hide Aura", glow = "Glow Frame", size = "Set Custom Size" },
            set = function(_, val)
                settings.action.hide, settings.action.glow, settings.action.size.enabled = false, false, false
                if val == "hide" then settings.action.hide = true elseif val == "glow" then settings.action.glow = true elseif val == "size" then settings.action.size.enabled = true end
                updateFrames()
            end,
            get = function()
                if settings.action.hide then return "hide" end
                if settings.action.glow then return "glow" end
                if settings.action.size and settings.action.size.enabled then return "size" end
                return "show"
            end,
        },
        customSelfSize = { order = 4, type = "range", name = "Aura size applied by me", min = 17, max = 34, step = 1, set = function(_, val) settings.action.selfSize = val; updateFrames() end, get = function() return settings.action.selfSize or 21 end, hidden = function() return not settings.action.size.enabled end, },
        customOtherSize = { order = 5, type = "range", name = "Aura size applied by others", min = 17, max = 34, step = 1, set = function(_, val) settings.action.otherSize = val; updateFrames() end, get = function() return settings.action.otherSize or 19 end, hidden = function() return not settings.action.size.enabled end, },
        enableDurationFilter = { order = 6, type = "toggle", name = "Enable Duration Filter", set = function(_, val) settings.enableDurationFilter = val end, get = function() return settings.enableDurationFilter end, },
        minDuration = { order = 7, type = "range", name = "Min Duration", min = 0, max = 120, step = 1, set = function(_, val) settings.minDuration = val end, get = function() return settings.minDuration or 0 end, hidden = function() return not settings.enableDurationFilter end, },
        maxDuration = { order = 8, type = "range", name = "Max Duration", min = 0, max = 120, step = 1, set = function(_, val) settings.maxDuration = val end, get = function() return settings.maxDuration or 0 end, hidden = function() return not settings.enableDurationFilter end, },
        enableStacksFilter = { order = 9, type = "toggle", name = "Enable Stacks Filter", set = function(_, val) settings.enableStacksFilter = val end, get = function() return settings.enableStacksFilter end, },
        minStacks = { order = 10, type = "range", name = "Min Stacks", min = 0, max = 100, step = 1, set = function(_, val) settings.minStacks = val end, get = function() return settings.minStacks or 0 end, hidden = function() return not settings.enableStacksFilter end, },
        maxStacks = { order = 11, type = "range", name = "Max Stacks", min = 0, max = 100, step = 1, set = function(_, val) settings.maxStacks = val end, get = function() return settings.maxStacks or 0 end, hidden = function() return not settings.enableStacksFilter end, },

        alwaysEnableGlow = { order = 12, type = "toggle", name = "Always Glow", set = function(_, val) settings.settings.alwaysEnableGlow = val; updateFrames() end, get = function() return settings.settings.alwaysEnableGlow or false end, },
        ownOnly = { order = 13, type = "toggle", name = "Show Own Aura Only", set = function(_, val) settings.settings.ownOnly = val; updateFrames() end, get = function() return settings.settings.ownOnly or false end, },
        removeDuplicates = { order = 14, type = "toggle", name = "Hide Duplicates", set = function(_, val) settings.settings.removeDuplicates = val; updateFrames() end, get = function() return settings.settings.removeDuplicates or false end, },
        color = { order = 15, type = "color", name = "Highlight Color", hasAlpha = true, set = function(_, r, g, b, a) settings.settings.color = { r = r, g = g, b = b, a = a }; updateFrames() end, get = function() local c = settings.settings.color or { r = 1, g = 1, b = 0.85, a = 1 }; return c.r, c.g, c.b, c.a end },
        priorityBox = { order = 16, type = "toggle", name = "Enable Priority", set = function(_, val) settings.settings.priorityEnabled = val; updateFrames() end, get = function() return settings.settings.priorityEnabled or false end, hidden = function() return frame == "BuffFrame" end },
        priority = { order = 17, type = "range", name = "Priority Level", min = 0, max = 100, step = 1, set = function(_, val) settings.settings.priority = val; updateFrames() end, get = function() return settings.settings.priority or 0 end, hidden = function() return frame == "BuffFrame" or not settings.settings.priorityEnabled end },
        deleteFilter = {
            order = 99, type = "execute", name = "Delete Filter",
            func = function()
                remove(self.db.profile.smartFilters[aura][frame], index)
                if #self.db.profile.smartFilters[aura][frame] == 0 then self.db.profile.smartFilters[aura][frame] = nil end
                if self.db.profile.smartFilters[aura] and next(self.db.profile.smartFilters[aura]) == nil then self.db.profile.smartFilters[aura] = nil end
                self:RefreshSmarterAuraOptions()
            end,
        },
    }
end

function DeBuffFilter:RefreshSmarterAuraOptions()
    local smarterAuraArgs = self.options.args.smarterAuraFilters.args
    local newOptions = self:BuildSmarterAuraOptions()
    smarterAuraArgs.TargetFrame, smarterAuraArgs.FocusFrame, smarterAuraArgs.BuffFrame, smarterAuraArgs.DebuffFrame = nil, nil, nil, nil
    wipe(smarterAuraArgs.AllFrames.args)
    for k, v in pairs(newOptions.AllFrames.args) do smarterAuraArgs.AllFrames.args[k] = v end
    for _, frameName in ipairs({ "TargetFrame", "FocusFrame", "BuffFrame", "DebuffFrame" }) do
        local frameGroup = newOptions[frameName]
        if frameGroup and next(frameGroup.args) then smarterAuraArgs[frameName] = frameGroup end
    end
end

function DeBuffFilter:SetupOptions()
    self.db = LibStub("AceDB-3.0"):New("DeBuffFilterDB", defaults, true)
    self.options = {
        type = "group", name = "DeBuffFilter", childGroups = "tab", plugins = {},
        args = {
            author = {
                name = "|cff4693E6Author:|r Xyz",
                type = "description"
            },
            version = {
                name = "|cff4693E6Version:|r " .. GetAddOnMetadata("DeBuffFilter", "Version") .. "\n",
                type = "description"
            },
            general = {
                name = "General Settings", type = "group", order = 1,
                args = {
                    fancySliders = {
                        order = 1, type = "group", inline = false, name = "UnitFrame settings",
                        args = {
                            selfSize = { order = 1, width = 2, name = "My Debuffs/Buffs size", type = "range", min = 17, max = 34, step = 1, get = function() return self.db.profile.selfSize end, set = function(info, val) self.db.profile.selfSize = val; TargetFrame:UpdateAuras(); if FocusFrame then FocusFrame:UpdateAuras() end end, },
                            otherSize = { order = 2, width = 2, name = "Others Debuffs/Buffs size", type = "range", min = 17, max = 34, step = 1, get = function() return self.db.profile.otherSize end, set = function(info, val) self.db.profile.otherSize = val; TargetFrame:UpdateAuras(); if FocusFrame then FocusFrame:UpdateAuras() end end, },
                            auraWidth = { order = 3, width = 2, name = "Aura row width", type = "range", min = 108, max = 178, step = 14, get = function() return self.db.profile.auraWidth end, set = function(info, val) self.db.profile.auraWidth = val; TargetFrame:UpdateAuras(); if FocusFrame then FocusFrame:UpdateAuras() end end, },
                            verticalSpacing = { order = 4, width = 2, name = "Vertical spacing", type = "range", min = 1, max = 50, step = 1, get = function() return self.db.profile.verticalSpace end, set = function(info, val) self.db.profile.verticalSpace = val; TargetFrame:UpdateAuras(); if FocusFrame then FocusFrame:UpdateAuras() end end, },
                            horizontalSpacing = { order = 5, width = 2, name = "Horizontal spacing", type = "range", min = 3, max = 35, step = 1, get = function() return self.db.profile.horizontalSpace end, set = function(info, val) self.db.profile.horizontalSpace = val; TargetFrame:UpdateAuras(); if FocusFrame then FocusFrame:UpdateAuras() end end, },
                        },
                    },
                    fancyCheckboxes = {
                        order = 2, type = "group", inline = false, name = "Misc options",
                        args = {
                            sortBySize = { order = 1, type = "toggle", name = "Sort auras by size", get = function() return self.db.profile.sortBySize end, set = function(_, value) self.db.profile.sortBySize = value end, },
                            sortbyDispellable = { order = 2, type = "toggle", name = "Sort by dispellable", get = function() return self.db.profile.sortbyDispellable end, set = function(_, value) self.db.profile.sortbyDispellable = value end, },
                            highlightAll = { order = 3, type = "toggle", name = "Highlight magic buffs", get = function() return self.db.profile.highlightAll end, set = function(_, value) self.db.profile.highlightAll = value; TargetFrame:UpdateAuras(); if FocusFrame then FocusFrame:UpdateAuras() end end, },
                            enableRetailGlow = { order = 4, type = "toggle", name = "Retail glow border", get = function() return self.db.profile.enableRetailGlow end, set = function(_, value) self.db.profile.enableRetailGlow = value; StaticPopup_Show("DBF_RELOADUI") end, },
                            disableFade = { order = 5, type = "toggle", name = "Disable fading animation", get = function() return self.db.profile.disableFade end, set = function(_, value) self.db.profile.disableFade = value; StaticPopup_Show("DBF_RELOADUI") end, },
                        },
                    },
                    fancyCastBar = {
                        order = 3, type = "group", inline = false, name = "Castbar settings",
                        args = {
                            targetSpellbarPosX = { order = 1, width = 1.5, name = "Target spellbar horizontal", type = "range", min = -300, max = 300, step = 1, get = function() return self.db.profile.targetBarPosX end, set = function(info, val) self.db.profile.targetBarPosX = val; updateCastbarPosition(TargetFrameSpellBar, val, true) end, },
                            targetSpellbarPosY = { order = 2, width = 1.5, name = "Target spellbar vertical", type = "range", min = -300, max = 300, step = 1, get = function() return self.db.profile.targetBarPosY end, set = function(info, val) self.db.profile.targetBarPosY = val; updateCastbarPosition(TargetFrameSpellBar, val, false) end, },
                            focusSpellbarPosX = { order = 3, width = 1.5, name = "Focus spellbar horizontal", type = "range", min = -300, max = 300, step = 1, get = function() return self.db.profile.focusBarPosX end, set = function(info, val) self.db.profile.focusBarPosX = val; if FocusFrameSpellBar then updateCastbarPosition(FocusFrameSpellBar, val, true) end end, },
                            focusSpellbarPosY = { order = 4, width = 1.5, name = "Focus spellbar vertical", type = "range", min = -300, max = 300, step = 1, get = function() return self.db.profile.focusBarPosY end, set = function(info, val) self.db.profile.focusBarPosY = val; if FocusFrameSpellBar then updateCastbarPosition(FocusFrameSpellBar, val, false) end end, },
                            targetSpellbarScale = { order = 5, width = 1.5, name = "Target spellbar size", type = "range", min = 0.7, max = 3, step = 0.05, get = function() return self.db.profile.targetCastBarSize end, set = function(info, val) self.db.profile.targetCastBarSize = val; TargetFrameSpellBar:SetScale(val) end, },
                            focusSpellbarScale = { order = 6, width = 1.5, name = "Focus spellbar size", type = "range", min = 0.7, max = 3, step = 0.05, get = function() return self.db.profile.focusCastBarSize end, set = function(info, val) self.db.profile.focusCastBarSize = val; if FocusFrameSpellBar then FocusFrameSpellBar:SetScale(val) end end, },
                        },
                    },
                    fancyCount = {
                        order = 4, type = "group", inline = false, name = "Stack count settings",
                        args = {
                            countColor = { order = 0, type = "color", hasAlpha = false, name = "Stack text color", get = function() local c = self.db.profile.countColor or { 1, 1, 1 }; return c[1], c[2], c[3] end, set = function(_, r, g, b) self.db.profile.countColor = { r, g, b }; TargetFrame:UpdateAuras(); if FocusFrame then FocusFrame:UpdateAuras() end end, },
                            separator = { order = 1, type = "description", name = "\n", width = "full" },
                            enableFancyCount = { order = 2, type = "toggle", width = "full", name = "Enable stack count size slider", get = function() return self.db.profile.enableFancyCount end, set = function(_, val) self.db.profile.enableFancyCount = val; TargetFrame:UpdateAuras(); if FocusFrame then FocusFrame:UpdateAuras() end end, },
                            countSize = { order = 3, width = 1.5, name = "Stack text size", type = "range", min = 5, max = 35, step = 1, get = function() return self.db.profile.countSize end, set = function(_, val) self.db.profile.countSize = val; TargetFrame:UpdateAuras(); if FocusFrame then FocusFrame:UpdateAuras() end end, disabled = function() return not self.db.profile.enableFancyCount end, },
                        },
                    },
                },
            },
            smarterAuraFilters = {
                type = "group", name = "Aura Filtering", order = 2, childGroups = "tab",
                args = {
                    addFilterButton = {
                        order = 0, type = "execute", name = "Add New Filter",
                        func = function()
                            local newFilterKey = "new_filter_" .. time()
                            self.db.profile.smartFilters[newFilterKey] = {}
                            self.db.profile.smartFilters[newFilterKey][""] = {}
                            local settings = {
                                customName = "New Filter",
                                action = { hide = false, glow = false, size = { enabled = false, selfSize = 21, otherSize = 19 } },
                                minDuration = 0, maxDuration = 0, enableDurationFilter = false,
                                minStacks = 0, maxStacks = 0, enableStacksFilter = false,
                                settings = {
                                    alwaysEnableGlow = false, ownOnly = false, removeDuplicates = false, priorityEnabled = false, priority = 0, color = { r = 1, g = 1, b = 0.85, a = 1 }
                                }
                            }
                            tinsert(self.db.profile.smartFilters[newFilterKey][""], settings)
                            self:RefreshSmarterAuraOptions()
                        end,
                    },
                    AllFrames = { type = "group", name = "All Frames", order = 1, args = {} },
                },
            },
        },
    }

    self:BuildSpellNameCache()
    self:RefreshSmarterAuraOptions()

    local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
    self.options.plugins.profiles = { profiles = profiles }
    LibStub("AceConfig-3.0"):RegisterOptionsTable(AddonName .. "_blizz", self.options)
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(AddonName .. "_blizz", "|cff4693E6DeBuffFilter|r")
    LibStub("AceConfig-3.0"):RegisterOptionsTable(AddonName, self.options)
    LibStub("AceConsole-3.0"):RegisterChatCommand("dbf", function()
        if not InCombatLockdown() then
            HideUIPanel(SettingsPanel)
        end
        LibStub("AceConfigDialog-3.0"):Open("DeBuffFilter")
    end)
end