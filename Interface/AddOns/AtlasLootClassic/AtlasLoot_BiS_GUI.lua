local _G = getfenv(0)

local function SyncStyle(footer, parent)
    if not footer or not parent then return end
    
    -- Copy Backdrop
    if parent.GetBackdrop then
        footer:SetBackdrop(parent:GetBackdrop())
    end
    
    -- Copy Color
    if parent.GetBackdropColor then
        local r, g, b, a = parent:GetBackdropColor()
        footer:SetBackdropColor(r, g, b, a)
    end
    
    -- Copy Border
    if parent.GetBackdropBorderColor then
        local r, g, b, a = parent:GetBackdropBorderColor()
        footer:SetBackdropBorderColor(r, g, b, a)
    end
end

-- checkbox frame
local function CreateBiSToggleFrame()
    local parentFrame = _G["AtlasLoot_GUI-Frame"]
    if not parentFrame then return end
    
    -- Prevent duplicate
    if _G["AtlasLoot_BiS_Footer"] then return end

    -- Create Footer
    local footer = CreateFrame("Frame", "AtlasLoot_BiS_Footer", parentFrame, _G.BackdropTemplateMixin and "BackdropTemplate" or nil)
    footer:SetPoint("TOPLEFT", parentFrame, "BOTTOMLEFT", 0, 0)
    footer:SetPoint("TOPRIGHT", parentFrame, "BOTTOMRIGHT", 0, 0)
    footer:SetHeight(24)
    
    -- Apply Style
    SyncStyle(footer, parentFrame)

    -- Create a container
    local centerGroup = CreateFrame("Frame", nil, footer)
    centerGroup:SetHeight(44)
    centerGroup:SetPoint("CENTER", 0, 5)

    -- Checkbox Show BiS
    local check = CreateFrame("CheckButton", nil, centerGroup, "UICheckButtonTemplate")
    check:SetSize(20, 20)
    check:SetScale(1.5)
    check:SetPoint("BOTTOMLEFT", centerGroup, "BOTTOMLEFT", 0, 0)
    if _G.ExoLinkDB then
        check:SetChecked(_G.ExoLinkDB.showBiS == 1)
    end
    check:SetScript("OnClick", function(self)
        _G.ExoLinkDB.showBiS = self:GetChecked() and 1 or 0
    end)

    -- Text
    local text = centerGroup:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    text:SetPoint("LEFT", check, "RIGHT", 2, 1)
    text:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE") 
    text:SetText("Show TBC Phase 1 BiS in Tooltips")
    text:SetTextColor(1, 0.82, 0) 

    -- Checkbox Show only my Class
    local classCheck = CreateFrame("CheckButton", nil, centerGroup, "UICheckButtonTemplate")
    classCheck:SetSize(20, 20)
    classCheck:SetScale(1.5)
    classCheck:SetPoint("LEFT", text, "RIGHT", 15, -1) -- 15px gap after first text
    if _G.ExoLinkDB then
        classCheck:SetChecked(_G.ExoLinkDB.showOnlyMyClass == 1)
    end
    classCheck:SetScript("OnClick", function(self)
        _G.ExoLinkDB.showOnlyMyClass = self:GetChecked() and 1 or 0
    end)

    -- Text
    local classText = centerGroup:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    classText:SetPoint("LEFT", classCheck, "RIGHT", 2, 1)
    classText:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
    classText:SetText("My Class only")
    classText:SetTextColor(1, 0.82, 0)

    -- currency summary
    do
        local currencyFrame = CreateFrame("Frame", nil, centerGroup)
        currencyFrame:SetPoint("BOTTOM", centerGroup, "TOP", 10, -15) -- anchor
        currencyFrame:SetHeight(20)

        -- icon + text sizes
        local iconSize = 18
        local gap = 8

        -- Honor
        local honorIcon = currencyFrame:CreateTexture(nil, "ARTWORK")
        honorIcon:SetSize(iconSize, iconSize)
        honorIcon:SetPoint("LEFT", currencyFrame, "LEFT", 0, 0)
        -- custom for now, fuck it
        honorIcon:SetTexture("Interface\\AddOns\\AtlasLootClassic\\honoricon.tga")

        local honorText = currencyFrame:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
        honorText:SetPoint("LEFT", honorIcon, "RIGHT", 4, 0)
        honorText:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
        honorText:SetTextColor(1, 0.82, 0)

        -- Arena Points
        local arenaIcon = currencyFrame:CreateTexture(nil, "ARTWORK")
        arenaIcon:SetSize(iconSize, iconSize)
        arenaIcon:SetPoint("LEFT", honorText, "RIGHT", gap, 0)
        -- fileID
        arenaIcon:SetTexture(4006481)

        local arenaText = currencyFrame:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
        arenaText:SetPoint("LEFT", arenaIcon, "RIGHT", 4, 0)
        arenaText:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
        arenaText:SetTextColor(1, 0.82, 0)

        -- Badge of Justice
        local badgeIcon = currencyFrame:CreateTexture(nil, "ARTWORK")
        badgeIcon:SetSize(iconSize, iconSize)
        badgeIcon:SetPoint("LEFT", arenaText, "RIGHT", gap, 0)

        local badgeText = currencyFrame:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
        badgeText:SetPoint("LEFT", badgeIcon, "RIGHT", 4, 0)
        badgeText:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
        badgeText:SetTextColor(1, 0.82, 0)

        -- Update function
        local function UpdateCurrencyDisplay()
            -- Honor
            local honorAmount = 0
            if C_CurrencyInfo and C_CurrencyInfo.GetCurrencyInfo then
                local info = C_CurrencyInfo.GetCurrencyInfo(1901)
                if info and info.quantity then
                    honorAmount = info.quantity
                elseif info and info.quantity == nil and info.quantity ~= false and info.totalEarned then
                    honorAmount = info.totalEarned or 0
                end
            end
            honorText:SetText("Honor: " .. honorAmount)

            -- Arena
            local arenaAmount = 0
            if C_CurrencyInfo and C_CurrencyInfo.GetCurrencyInfo then
                local info = C_CurrencyInfo.GetCurrencyInfo(1900)
                if info and info.quantity then
                    arenaAmount = info.quantity
                elseif info and info.totalEarned then
                    arenaAmount = info.totalEarned or 0
                end
            end
            arenaText:SetText("Arena: " .. arenaAmount)

            -- Badge of Justice
            local badgeCount = 0
            if GetItemCount then
                -- pass false
                badgeCount = GetItemCount(29434, false) or 0
            end
            badgeText:SetText("Badges: " .. badgeCount)

            -- Badge icon
            if GetItemIcon then
                local itemIconPath = GetItemIcon(29434)
                if itemIconPath then
                    badgeIcon:SetTexture(itemIconPath)
                end
            end

            -- Adjust width
            local totalWidth = 0
            totalWidth = totalWidth + iconSize + 4 + honorText:GetStringWidth() -- honor
            totalWidth = totalWidth + gap + iconSize + 4 + arenaText:GetStringWidth() -- arena
            totalWidth = totalWidth + gap + iconSize + 4 + badgeText:GetStringWidth() -- badge
            currencyFrame:SetWidth(totalWidth)
        end

        -- small updater frame
        local updater = CreateFrame("Frame", nil, currencyFrame)
        updater:RegisterEvent("CURRENCY_DISPLAY_UPDATE")
        updater:RegisterEvent("BAG_UPDATE")
        updater:SetScript("OnEvent", UpdateCurrencyDisplay)

        -- initial populate
        UpdateCurrencyDisplay()
        -- =====================================================================
    end

    -- Recalculate Total Width
    local width1 = (20 * 1.5) + 2 + text:GetStringWidth()
    local width2 = 15 + (20 * 1.5) + 2 + classText:GetStringWidth()
    centerGroup:SetWidth(width1 + width2)
end

-- Hook into AtlasLoot loading
local loader = CreateFrame("Frame")
loader:RegisterEvent("PLAYER_LOGIN")
loader:SetScript("OnEvent", function()
    if _G.AtlasLoot and _G.AtlasLoot.GUI then
        hooksecurefunc(_G.AtlasLoot.GUI, "Create", CreateBiSToggleFrame)
        hooksecurefunc(_G.AtlasLoot.GUI, "RefreshMainFrame", function()
            local footer = _G["AtlasLoot_BiS_Footer"]
            local parent = _G["AtlasLoot_GUI-Frame"]
            if footer and parent then
                SyncStyle(footer, parent)
            end
        end)
        if _G["AtlasLoot_GUI-Frame"] then
            CreateBiSToggleFrame()
        end
    end
end)