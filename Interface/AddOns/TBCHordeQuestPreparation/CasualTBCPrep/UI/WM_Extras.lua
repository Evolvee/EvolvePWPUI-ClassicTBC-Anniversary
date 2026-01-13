CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.WM_Extras = CasualTBCPrep.WM_Extras or {}

--[Variables]
---@class Frame|nil
local frameExtras = nil;
---@class number
local _selectedTab = nil
local _lastSelectedTabID = nil

---@param wMain Frame|nil
function CasualTBCPrep.WM_Extras.Create(wMain)
	if wMain == nil then
		return
	end

	frameExtras = CreateFrame("Frame", nil, wMain)
	frameExtras:SetAllPoints(wMain)

	frameExtras.scrollFrame, frameExtras.scrollChild = CasualTBCPrep.UI.CreateTBCPrepScrollFrame(frameExtras)

	frameExtras.txtSelection = frameExtras:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	frameExtras.txtSelection:SetPoint("CENTER", frameExtras, "CENTER", 0, 0)
	frameExtras.txtSelection:SetText("Select a category to continue")
	frameExtras.txtSelection:Show()

	frameExtras:Hide()
end

function CasualTBCPrep.WM_Extras.Hide()
	if frameExtras ~= nil then
		frameExtras:Hide()
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_Extras.Show(wMain)
	if frameExtras == nil then
		CasualTBCPrep.WM_Extras.Create(wMain)
	end

	if frameExtras ~= nil then
		frameExtras:Show()
	end
end

local function ReloadCurrentTab()
	local tabDetails = frameExtras.tabTextures[_selectedTab]
	if tabDetails.funcClean then
		tabDetails.funcClean(frameExtras)
	end
	if tabDetails.funcLoad then
		tabDetails.funcLoad(frameExtras)
	end
end

---@param tabID number
local function SelectTab(tabID)
	if _lastSelectedTabID ~= nil and _lastSelectedTabID > 0 then
		local lastTabDetails = frameExtras.tabTextures[_lastSelectedTabID]
		lastTabDetails.texture:SetDesaturated(true)
		lastTabDetails.funcClean(frameExtras)
	end

	local tabDetails = frameExtras.tabTextures[tabID]
	if tabDetails and tabDetails.texture then
		tabDetails.texture:SetDesaturated(false)
	end

	if frameExtras.txtSelection:IsShown() then
		frameExtras.txtSelection:Hide()
	end

	_lastSelectedTabID = tabID

	_selectedTab = tabID
	ReloadCurrentTab()
end

---@param wMain Frame|nil
local function CreateTab(wMain)
	if wMain == nil then return end
	if _lastSelectedTabID ~= nil and _lastSelectedTabID > 0 then return end

	local basePath = "Interface\\AddOns\\" .. CasualTBCPrep.AddonNameInternal .. "\\Resources\\Images\\Extras\\"
	local w = wMain:GetSizeWidth()
	local h = wMain:GetSizeHeight()
	local imgW,imgH = 28,28

	local headerCount = 5
	local header1Offset = (w / (headerCount + 1)) * 1 - (imgW / 2)
	local header2Offset = (w / (headerCount + 1)) * 2 - (imgW / 2)
	local header3Offset = (w / (headerCount + 1)) * 3 - (imgW / 2)
	local header4Offset = (w / (headerCount + 1)) * 4 - (imgW / 2)
	local header5Offset = (w / (headerCount + 1)) * 5 - (imgW / 2)

	local yPosition = -26

	local headerTbcPrep = CreateFrame("Button", nil, frameExtras)
	headerTbcPrep:SetPoint("TOPLEFT", frameExtras, "TOPLEFT", header1Offset, yPosition)
	headerTbcPrep:SetSize(imgW, imgH)
	local headerTbcPrepTexture = headerTbcPrep:CreateTexture(nil, "BORDER")
	headerTbcPrepTexture:SetAllPoints(headerTbcPrep)
	headerTbcPrepTexture:SetTexture(basePath .. "header_prep")

	local headerFlights = CreateFrame("Button", nil, frameExtras)
	headerFlights:SetPoint("TOPLEFT", frameExtras, "TOPLEFT", header2Offset, yPosition)
	headerFlights:SetSize(imgW, imgH)
	local headerFlightsTexture = headerFlights:CreateTexture(nil, "BORDER")
	headerFlightsTexture:SetAllPoints(headerFlights)
	headerFlightsTexture:SetTexture(basePath .. "header_flights")

	local headerItems = CreateFrame("Button", nil, frameExtras)
	headerItems:SetPoint("TOPLEFT", frameExtras, "TOPLEFT", header3Offset, yPosition)
	headerItems:SetSize(imgW, imgH)
	local headerItemsTexture = headerItems:CreateTexture(nil, "BORDER")
	headerItemsTexture:SetAllPoints(headerItems)
	headerItemsTexture:SetTexture(basePath .. "header_items")

	local headerProfs = CreateFrame("Button", nil, frameExtras)
	headerProfs:SetPoint("TOPLEFT", frameExtras, "TOPLEFT", header4Offset, yPosition)
	headerProfs:SetSize(imgW, imgH)
	local headerProfsTexture = headerProfs:CreateTexture(nil, "BORDER")
	headerProfsTexture:SetAllPoints(headerProfs)
	headerProfsTexture:SetTexture(basePath .. "header_prof")

	local headerMails = CreateFrame("Button", nil, frameExtras)
	headerMails:SetPoint("TOPLEFT", frameExtras, "TOPLEFT", header5Offset, yPosition)
	headerMails:SetSize(imgW, imgH)
	local headerMailsTexture = headerMails:CreateTexture(nil, "BORDER")
	headerMailsTexture:SetAllPoints(headerMails)
	headerMailsTexture:SetTexture(basePath .. "header_mailbox")

	frameExtras.tabTextures = {}
	frameExtras.tabTextures[1] = { ttHeader="Extra TBC Prep", ttLines={"Extra things you can prepare for TBC"},
		btn=headerTbcPrep, texture=headerTbcPrepTexture, funcLoad=CasualTBCPrep.Extras_ExtraPrep.Load, funcClean=CasualTBCPrep.Extras_ExtraPrep.Clean }

	frameExtras.tabTextures[2] = { ttHeader="Flight Checks", ttLines={"Check if you have all the flightpaths needed for TBC Prep"},
		btn=headerFlights, texture=headerFlightsTexture, funcLoad=CasualTBCPrep.Extras_Flights.Load, funcClean=CasualTBCPrep.Extras_Flights.Clean }

	frameExtras.tabTextures[3] = { ttHeader="Vanilla Items", ttLines={"A list of special/unique items you can collect before TBC"},
		btn=headerItems, texture=headerItemsTexture, funcLoad=CasualTBCPrep.Extras_Items.Load, funcClean=CasualTBCPrep.Extras_Items.Clean }

	frameExtras.tabTextures[4] = { ttHeader="Professions", ttLines={"Shows the best/common professions for your class"},
		btn=headerProfs, texture=headerProfsTexture, funcLoad=CasualTBCPrep.Extras_Professions.Load, funcClean=CasualTBCPrep.Extras_Professions.Clean }

	frameExtras.tabTextures[5] = { ttHeader="Mailbox", ttLines={"Helps you by managing all the turnin items in your mailbox, and with opening the mails on release."},
		btn=headerMails, texture=headerMailsTexture, funcLoad=CasualTBCPrep.Extras_Mailbox.Load, funcClean=CasualTBCPrep.Extras_Mailbox.Clean }

	for tabID, tabDetails in pairs(frameExtras.tabTextures) do
		local funcOnEnter = function(self) tabDetails.texture:SetVertexColor(0.6, 0.6, 0.6, 1) end
		local funcOnLeave = function(self) tabDetails.texture:SetVertexColor(1,1,1,1) end

		tabDetails.texture:SetDesaturated(true)
		tabDetails.texture:EnableMouse(true)
		tabDetails.texture:SetScript("OnMouseUp", function(self, btn)
			if "LeftButton" == btn then
				SelectTab(tabID)
			elseif "RightButton" == btn then
			end
		end)

		CasualTBCPrep.UI.HookTooltip(tabDetails.texture, tabDetails.ttHeader, tabDetails.ttLines, nil, funcOnEnter, funcOnLeave)
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_Extras.Load(wMain)
	if wMain == nil then
		return
	end

	local selectedRoute = CasualTBCPrep.Settings.GetCharSetting(CasualTBCPrep.Settings.SelectedRoute)
	if selectedRoute == nil or selectedRoute == "" then
		CasualTBCPrep.UI.CreateRouteSelection(wMain, frameExtras)
		return
	end
	CasualTBCPrep.UI.ClearRouteSelectionUI(frameExtras)

	if _lastSelectedTabID ~= nil and _lastSelectedTabID > 0 then
		SelectTab(_lastSelectedTabID)
	else
		CreateTab(wMain)
	end
end

---@param wMain Frame|nil
function CasualTBCPrep.WM_Extras.Selected(wMain)
	if frameExtras == nil then
    	CasualTBCPrep.WM_Extras.Create(wMain)
	end

    CasualTBCPrep.WM_Extras.Load(wMain)
    CasualTBCPrep.WM_Extras.Show(wMain)
end