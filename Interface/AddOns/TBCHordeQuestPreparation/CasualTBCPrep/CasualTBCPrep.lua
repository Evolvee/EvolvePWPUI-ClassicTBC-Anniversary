CasualTBCPrep = CasualTBCPrep or {}

CasualTBCPrep.BlockSlashCommandsUntillReloaded = false
CasualTBCPrep.AddonLogoTexture = "255348"
CasualTBCPrep.MaxLevel = 70

--[Slash Commands]
SLASH_CASUAL_TBC_PREP1 = "/tbc"
SLASH_CASUAL_TBC_PREP2 = "/tbcprep"
SlashCmdList["CASUAL_TBC_PREP"] = function(msg)
	if CasualTBCPrep.BlockSlashCommandsUntillReloaded == true then
		CasualTBCPrep.NotifyUserError("Please do a /reload to open tbcprep")
		return
	end

	local args = {}
    for word in string.gmatch(msg, "%S+") do
        table.insert(args, string.lower(word))
    end

	local notifyText = nil

	if #args == 0 then
		CasualTBCPrep.W_Main.Show();
	elseif args[1] == "ghetto" then
		CasualTBCPrep.GhettoHearth()
	elseif args[1] == "debug" then
		if args[2] == "warn1" then
			CasualTBCPrep.W_WarningNotice.Show("A Collection of Heads", nil, "qlog")
		elseif args[2] == "warn2" then
			CasualTBCPrep.W_WarningNotice.Show("Lords of the Council", nil, "turnin")
		elseif args[2] == "warn3" then
			CasualTBCPrep.W_WarningNotice.Show("Ramstein", nil, "completing")
		elseif args[2] == "witem" then
			CasualTBCPrep.W_ItemManagement.Show(20644)
		elseif args[2] == "err" or args[3] == "error" then
			CasualTBCPrep.NotifyUserError("This is an example ERROR message... Oh no!")
		elseif args[2] == "not" or args[3] == "notify" then
			CasualTBCPrep.NotifyUser("This is an example message from " .. CasualTBCPrep.AddonName .. "... Hello!")
		elseif args[2] == "on" then
			CasualTBCPrep.Settings.SetGlobalSetting(CasualTBCPrep.Settings.DebugDetails, 1)
			notifyText = "Debugging Details is now ON"
		elseif args[2] == "off" then
			CasualTBCPrep.Settings.SetGlobalSetting(CasualTBCPrep.Settings.DebugDetails, -1)
			notifyText = "Debugging Details is now OFF"
		elseif args[2] == "wiperoute" then
			CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.SelectedRoute, nil)
			notifyText = "Removed your selected route, please do a /reload"
			CasualTBCPrep.W_Main.Hide()
			CasualTBCPrep.BlockSlashCommandsUntillReloaded = true
		else
			notifyText = "Invalid syntax, use: /tbcprep debug <warn1/warn2/warn3/witem/err/not/on/off/wiperoute>"
		end
	elseif args[1] == "flights" then
		for _, routeCode in ipairs({ CasualTBCPrep.Routing.RouteCodeStrat,CasualTBCPrep.Routing.RouteCodeMain,CasualTBCPrep.Routing.RouteCodeSolo}) do
			CasualTBCPrep.NotifyUser("Checking flightpaths for the "..routeCode.. " route")
			local unlockedAllFPs, fpList, undiscoveredCount = CasualTBCPrep.Flights.GetPlayerFlightPathState(routeCode)
			if unlockedAllFPs == true then
				CasualTBCPrep.NotifyUser("You have all the flightpaths needed for the '"..routeCode.."' route.")
			else
				for _, fpData in ipairs(fpList) do
					if fpData.discovered ~= true then
						CasualTBCPrep.NotifyUserError("Missing "..fpData.name)
					end
				end
			end
		end
	elseif args[1] == "mail" or args[1] == "companion" then
		CasualTBCPrep.W_Companion.Toggle()
	else
		CasualTBCPrep.W_Main.Show();
	end

	if notifyText then
		CasualTBCPrep.NotifyUser(notifyText)
	end
end

--[Event Wrappers]
local function OnQuestAcceptedEvent(self, event, questLogIndex)
	if event == "QUEST_ACCEPTED" then
		local questName, _, _, _, _, _, _, questID = GetQuestLogTitle(questLogIndex)

		if questID ~= nil and questID > 0 then
			if CasualTBCPrep.Routing.IsQuestInCurrentRoute(questID) then
				if CasualTBCPrep.QuestData.ShouldBeInQuestLog(questID) then
					if CasualTBCPrep.Settings.GetIsFeatureDisabledGlobalOrChar(CasualTBCPrep.Settings.Warning_QLOG) == false then
						CasualTBCPrep.W_WarningNotice.Show(questName, questLogIndex, "qlog", questID)
					end
				elseif not CasualTBCPrep.QuestData.IsTurnInQuest(questID) then
					if CasualTBCPrep.Settings.GetIsFeatureDisabledGlobalOrChar(CasualTBCPrep.Settings.Warning_OPTIONAL) == false then
						CasualTBCPrep.W_WarningNotice.Show(questName, questLogIndex, "optional", questID)
					end
				elseif CasualTBCPrep.QuestData.IsTurnInQuest(questID) then
					if CasualTBCPrep.Settings.GetIsFeatureDisabledGlobalOrChar(CasualTBCPrep.Settings.Warning_TURNIN) == false then
						CasualTBCPrep.W_WarningNotice.Show(questName, questLogIndex, "turnin", questID)
					end
				end
			end
		end
	

		CasualTBCPrep.W_Main.ReloadActiveTab()
	elseif event == "QUEST_COMPLETE" then
		if CasualTBCPrep.Settings.GetIsFeatureDisabledGlobalOrChar(CasualTBCPrep.Settings.Warning_COMPLETING) == true then
			return
		end

		local questID = GetQuestID()
		local questName = GetTitleText()

		if CasualTBCPrep.QuestData.ShouldQuestShowCompletionWarning(questID) then
			CasualTBCPrep.W_WarningNotice.Show(questName, nil, "completing", questID);
			CloseQuest()
		end

		-- if not CasualTBCPrep.Routing.IsQuestInCurrentRoute(questID) then
		-- 	return
		-- end

		-- if CasualTBCPrep.QuestData.ShouldBeInQuestLog(questID) or CasualTBCPrep.QuestData.IsTurnInQuest(questID) then
		-- 	CasualTBCPrep.W_WarningNotice.Show(questName, nil, "completing");
		-- 	CloseQuest()
		-- end

		CasualTBCPrep.W_Main.ReloadActiveTab()
	elseif event == "QUEST_LOG_UPDATE" then -- Will this spam updates? This happens a lot... But if you have the window open, is it fine?
		CasualTBCPrep.W_Main.ReloadActiveTab()
	end
end

local function OnInventoryChangedEvent(self, event)
	if event == "BAG_UPDATE" or event == "UNIT_INVENTORY_CHANGED" then
		CasualTBCPrep.W_Main.ReloadActiveTab()
	end
end
local function OnAddonLoadedEvent(self, event, addonName)
	if event == "ADDON_LOADED" and addonName == CasualTBCPrep.AddonNameInternal then
		--CasualTBCPrep.Settings.SetCharSetting(CasualTBCPrep.Settings.SelectedRoute, nil)
		CasualTBCPrep.Settings.LoadDefaults()

		CasualTBCPrep.QuestData.UpdateRoutesFromQuestData(nil)
		local selRouteCode = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.SelectedRoute)
		if selRouteCode == nil or selRouteCode == "" then
			return
		end
		CasualTBCPrep.Routing.ChangeCurrentRoute(selRouteCode)
		CasualTBCPrep.Extras_ExtraPrep.ApplyAllStoredExtras(false)

		local companionSettings = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.CompanionSettings)
		if companionSettings ~= nil and companionSettings.open == true then
			C_Timer.After(2, function()
				CasualTBCPrep.W_Companion:Show()
			end)
		end

		local playerLevel = UnitLevel("player") or 1
		if playerLevel < CasualTBCPrep.MaxLevel then -- If player isn't 70 yet, show Companion button on Mail & Bank
			local tooltipHeader = "Toggle TBCPrep Companion"
			local ttCompanion = { "Opens or closes the Mail Companion", " ", "Can also be toggled with /tbcprep companion" }
			local funcCallHoverEnter = function(btn) if not btn or not btn.textureObj then return end btn.textureObj:SetAlpha(0.5) end
			local funcCallHoverLeave = function(btn) if not btn or not btn.textureObj then return end btn.textureObj:SetAlpha(1) end
			local funcToggleCompanion = function() CasualTBCPrep.W_Companion.Toggle() end
			-- Button Mail
			local btnMail = CreateFrame("Button", nil, MailFrame)
			btnMail:SetPoint("BOTTOMLEFT", MailFrame, "BOTTOMRIGHT", 0,0)
			btnMail:SetSize(42, 42)
			local btnMailTexture = btnMail:CreateTexture(nil, "BORDER")
			btnMailTexture:SetAllPoints(btnMail)
			btnMailTexture:SetTexture(CasualTBCPrep.AddonLogoTexture)
			btnMail.textureObj = btnMailTexture
			CasualTBCPrep.UI.HookTooltip(btnMail, tooltipHeader, ttCompanion, nil, funcCallHoverEnter, funcCallHoverLeave)
			btnMail:SetScript("OnClick", funcToggleCompanion)
			-- Button Bank
			local btnBank = CreateFrame("Button", nil, BankFrameMoneyFrame)
			btnBank:SetPoint("BOTTOMRIGHT", BankFrameMoneyFrame, "TOPRIGHT", -7,6)
			btnBank:SetSize(32, 32)
			local btnBankTexture = btnBank:CreateTexture(nil, "BORDER")
			btnBankTexture:SetAllPoints(btnBank)
			btnBankTexture:SetTexture(CasualTBCPrep.AddonLogoTexture)
			btnBank.textureObj = btnBankTexture
			CasualTBCPrep.UI.HookTooltip(btnBank, tooltipHeader, ttCompanion, nil, funcCallHoverEnter, funcCallHoverLeave)
			btnBank:SetScript("OnClick", funcToggleCompanion)
		end
	end
end

local function OnTalkToFlightMaster(self, event)
	CasualTBCPrep.Flights.OnTaxiMapOpened()
end
local function OnZoneChangedEvent(self, event)
	local mapID, zoneName, subZoneName = CasualTBCPrep.GetMapAndZoneInfo()

	local debugger = CasualTBCPrep.Settings.GetGlobalSetting(CasualTBCPrep.Settings.DebugDetails) or -1
	if debugger == 1 then
		CasualTBCPrep.NotifyUser("DebugNavigation : mapID="..tostring(mapID)..", zone="..tostring(zoneName)..", subZone="..tostring(subZoneName))
	end

	CasualTBCPrep.MessageBroker.Send(CasualTBCPrep.MessageBroker.TYPE.ZONE_CHANGED, { mapID=mapID, zoneName=zoneName, subzoneName=subZoneName })
end
local function OnMailboxAndBankEvent(self, event,...)
	if event == "MAIL_SHOW" then
		CasualTBCPrep.MessageBroker.Send(CasualTBCPrep.MessageBroker.TYPE.MAILBOX_INTERACT, { open=true })
	elseif event == "BANKFRAME_OPENED" then
		CasualTBCPrep.MessageBroker.Send(CasualTBCPrep.MessageBroker.TYPE.BANK_INTERACT, { open=true })
	elseif event == "BANKFRAME_CLOSED" then
		CasualTBCPrep.MessageBroker.Send(CasualTBCPrep.MessageBroker.TYPE.BANK_INTERACT, { open=false })
	elseif event == "PLAYER_INTERACTION_MANAGER_FRAME_HIDE" then
        local interactionType = ...
        if interactionType == Enum.PlayerInteractionType.MailInfo then
			CasualTBCPrep.MessageBroker.Send(CasualTBCPrep.MessageBroker.TYPE.MAILBOX_INTERACT, { open=false })
        end
	end
end

--[Hook Wrappers]
local function OnItemTooltip(itemLink, tooltipObject)
	-- Early exits, don't wanna do work in hooks if we can avoid it, can't easily runtime unhook afaik
	if CasualTBCPrep.Settings.GetIsFeatureDisabledGlobalOrChar(CasualTBCPrep.Settings.EnabledItemTooltips) == true then return end

    local itemID = itemLink and tonumber(itemLink:match("item:(%d+)"))
	if CasualTBCPrep.Items.IsItemRelevant(itemID) == false then return end

	local item = CasualTBCPrep.Items.GetItemDetails(itemID)
	if item == nil then return end
	if item.quests == nil or item.quests == "" then return end

	local isInCurrentRoute = false
	for questIDStr in string.gmatch(item.quests, "[^,]+") do
		local questID = tonumber(questIDStr)

		if questID > 0 then
			local loopIsInCurrentRoute = CasualTBCPrep.Routing.IsQuestInCurrentRoute(questID) or false
			--CasualTBCPrep.NotifyUser("["..tostring(itemID).."]: "..tostring(questID).."="..tostring(loopIsInCurrentRoute))
			if loopIsInCurrentRoute == true then
				isInCurrentRoute = true
				break
			end
		end
	end

	local msg = ""
	if isInCurrentRoute == true then
		msg = "Used in "..CasualTBCPrep.Themes.SelectedTheme.colors.good.hex.."CURRENT|r route ("..CasualTBCPrep.Routing.CurrentRouteCode..")"
	else
		msg = "Used in "..CasualTBCPrep.Themes.SelectedTheme.colors.warn.hex.."OTHER|r routes"
	end
	tooltipObject:AddLine(CasualTBCPrep.CreateZoneText("TBCPrep: ", msg))
end

--[API Function Overrides]
local _attemptedDeleted = { }
local _originalFuncDeleteCursorItem = DeleteCursorItem
DeleteCursorItem = function()
    local itemType, itemID, itemLink = GetCursorInfo()

	if itemID ~= nil and CasualTBCPrep.Items.IsItemRelevant(itemID) then
		local item = CasualTBCPrep.Items.GetItemDetails(itemID)
		if item ~= nil and item.quests ~= nil and item.quests ~= "" then
			local attemptDeleteCount = _attemptedDeleted[itemID] or 0

			if attemptDeleteCount <= 0 then
				local qCount = select(2, item.quests:gsub(",", "")) + 1
				local warningText = "Item Delete Blocked: You just tried to delete an item needed for "..tostring(qCount).." TBC Prep Quest"
				if qCount ~= 1 then
					warningText = warningText.."s" 
				end
				warningText = warningText..". This item won't be blocked again for this session. If you really want to delete it, do it again."

				CasualTBCPrep.W_WarningNotice.Show(item.name, nil, "itemdelete")
				CasualTBCPrep.NotifyUserError(warningText)
				ClearCursor()
				_attemptedDeleted[itemID] = 1
				return
			end
		end
	end

    _originalFuncDeleteCursorItem()
end

--[Hooks]
for _,tt in ipairs({GameTooltip,ItemRefTooltip,ShoppingTooltip1,ShoppingTooltip2}) do
    tt:HookScript("OnTooltipSetItem", function() OnItemTooltip(select(2,tt:GetItem()),tt) end)
end

--[Event Listeners]
local questEventFrame = CreateFrame("Frame")
questEventFrame:RegisterEvent("QUEST_ACCEPTED")
questEventFrame:RegisterEvent("QUEST_COMPLETE")
questEventFrame:RegisterEvent("QUEST_LOG_UPDATE")
questEventFrame:SetScript("OnEvent", OnQuestAcceptedEvent)

local inventoryEventFrame = CreateFrame("Frame")
inventoryEventFrame:RegisterEvent("BAG_UPDATE")
inventoryEventFrame:RegisterEvent("UNIT_INVENTORY_CHANGED")
inventoryEventFrame:SetScript("OnEvent", OnInventoryChangedEvent)

local basicEventFrame = CreateFrame("Frame")
basicEventFrame:RegisterEvent("ADDON_LOADED")
basicEventFrame:SetScript("OnEvent", OnAddonLoadedEvent)

local taxiFrame = CreateFrame("Frame")
taxiFrame:RegisterEvent("TAXIMAP_OPENED")
taxiFrame:SetScript("OnEvent", OnTalkToFlightMaster)

local zoneEventFrame = CreateFrame("Frame")
zoneEventFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
zoneEventFrame:RegisterEvent("ZONE_CHANGED")
zoneEventFrame:RegisterEvent("ZONE_CHANGED_INDOORS")
zoneEventFrame:RegisterEvent("PLAYER_ENTERING_WORLD") --Login,Reload,Teleport,Portal,Instance, more?
zoneEventFrame:SetScript("OnEvent", OnZoneChangedEvent)

local mailAndBankEventFrame = CreateFrame("Frame")
mailAndBankEventFrame:RegisterEvent("MAIL_SHOW")
mailAndBankEventFrame:RegisterEvent("BANKFRAME_OPENED")
mailAndBankEventFrame:RegisterEvent("BANKFRAME_CLOSED")
mailAndBankEventFrame:RegisterEvent("PLAYER_INTERACTION_MANAGER_FRAME_HIDE")
mailAndBankEventFrame:SetScript("OnEvent", OnMailboxAndBankEvent)