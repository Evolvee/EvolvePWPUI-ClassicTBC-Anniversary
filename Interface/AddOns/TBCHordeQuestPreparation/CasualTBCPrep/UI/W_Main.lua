CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.W_Main = CasualTBCPrep.W_Main or {}
CasualTBCPrep.W_Main.TabID = CasualTBCPrep.W_Main.TabID or {}

--[Variables]
local w_main_name = "CasualTBCPrep_W_Main"
---@class Frame|nil
local wMain = nil
local lastTabID = 0

--[Global Variables]
CasualTBCPrep.W_Main.TabID.QuestLog = 1
CasualTBCPrep.W_Main.TabID.Quests = 2
CasualTBCPrep.W_Main.TabID.Items = 3
CasualTBCPrep.W_Main.TabID.Route = 4
CasualTBCPrep.W_Main.TabID.Extras = 5
CasualTBCPrep.W_Main.TabID.Settings = 6
CasualTBCPrep.W_Main.TabID.About = 7

local tabDetails = {
	{ id=CasualTBCPrep.W_Main.TabID.QuestLog, 	header="Questlog" },
	{ id=CasualTBCPrep.W_Main.TabID.Quests, 	header="Quests" },
	{ id=CasualTBCPrep.W_Main.TabID.Items, 		header="Items" },
	{ id=CasualTBCPrep.W_Main.TabID.Route, 		header="Route" },
	{ id=CasualTBCPrep.W_Main.TabID.Extras, 	header="Extras" },
	{ id=CasualTBCPrep.W_Main.TabID.Settings, 	header="Settings" },
	{ id=CasualTBCPrep.W_Main.TabID.About, 		header="About" },
}
table.sort(tabDetails, function(a, b)
	return a.id < b.id
end)

local function TabHelper_Hide(tabID)
    if tabID == CasualTBCPrep.W_Main.TabID.QuestLog then
        CasualTBCPrep.WM_QuestLogPrep.Hide()
	elseif tabID == CasualTBCPrep.W_Main.TabID.Quests then
        CasualTBCPrep.WM_QuestPrep.Hide()
	elseif tabID == 3 then
        CasualTBCPrep.WM_ItemPrep.Hide()
	elseif tabID == 4 then
        CasualTBCPrep.WM_Route.Hide()
	elseif tabID == 5 then
        CasualTBCPrep.WM_Extras.Hide()
	elseif tabID == 6 then
        CasualTBCPrep.WM_Settings.Hide()
	elseif tabID == 7 then
        CasualTBCPrep.WM_About.Hide()
    end
end

local function TabHelper_Select(tabID)
	if tabID == CasualTBCPrep.W_Main.TabID.QuestLog then
        CasualTBCPrep.WM_QuestLogPrep.Selected(wMain)
	elseif tabID == CasualTBCPrep.W_Main.TabID.Quests then
        CasualTBCPrep.WM_QuestPrep.Selected(wMain)
	elseif tabID == 3 then
        CasualTBCPrep.WM_ItemPrep.Selected(wMain)
	elseif tabID == 4 then
        CasualTBCPrep.WM_Route.Selected(wMain)
	elseif tabID == 5 then
        CasualTBCPrep.WM_Extras.Selected(wMain)
	elseif tabID == 6 then
        CasualTBCPrep.WM_Settings.Selected(wMain)
	elseif tabID == 7 then
        CasualTBCPrep.WM_About.Selected(wMain)
	end

    lastTabID = tabID
end

local function TabHelper_Load(tabID)
	if tabID == CasualTBCPrep.W_Main.TabID.QuestLog then
        CasualTBCPrep.WM_QuestLogPrep.Load(wMain)
	elseif tabID == CasualTBCPrep.W_Main.TabID.Quests then
        CasualTBCPrep.WM_QuestPrep.Load(wMain)
	elseif tabID == 3 then
        CasualTBCPrep.WM_ItemPrep.Load(wMain)
	elseif tabID == 4 then
        CasualTBCPrep.WM_Route.Load(wMain)
	elseif tabID == 5 then
        CasualTBCPrep.WM_Extras.Load(wMain)
	elseif tabID == 6 then
        CasualTBCPrep.WM_Settings.Load(wMain)
	elseif tabID == 7 then
        CasualTBCPrep.WM_About.Load(wMain)
	end
end

function CasualTBCPrep.W_Main.ShowTab(tabID)
	if wMain == nil then
		return
	end

	if lastTabID == tabID then
		TabHelper_Load(tabID)
		return
	end

	TabHelper_Hide(lastTabID)
	TabHelper_Select(tabID)

	CasualTBCPrep.Sounds:PlaySound_Click()
end

local function CreateTab(id, header, parentTab)
	local tabFrame = CreateFrame("Button", "$parentTab" .. id, wMain, "CharacterFrameTabButtonTemplate")
	tabFrame:SetID(id)
	tabFrame:SetText(header)

	if id == 1 then
		tabFrame:SetPoint("TOPLEFT", wMain, "BOTTOMLEFT", 12, 2)
	else
		tabFrame:SetPoint("LEFT", parentTab, "RIGHT", -15, 0)
	end

	return tabFrame
end

local function CreateTabs()
	if wMain == nil then
		return
	end

	local tabs = {}
	local tabParent = wMain

	for index, tab in ipairs(tabDetails) do
		tabParent = CreateTab(tab.id, tab.header, tabParent)
		tabParent:SetScript("OnClick", function(self)
			PanelTemplates_SetTab(wMain, self:GetID())
			CasualTBCPrep.W_Main.ShowTab(self:GetID())
		end)
		table.insert(tabs, tabParent)
	end

	wMain.tabs = tabs
	PanelTemplates_SetNumTabs(wMain, #tabs)
	PanelTemplates_SetTab(wMain, 1)

	return tabs
end

local function Create()
	local w = 500
	local h = 505

	wMain = CreateFrame("Frame", w_main_name, UIParent, "PortraitFrameTemplate")
	wMain:SetSize(w, h);
	wMain:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	wMain:EnableMouse(true)
	wMain:SetMovable(true)
	wMain:RegisterForDrag("LeftButton")
	wMain:SetScript("OnDragStart", function(self) self:StartMoving() end)
	wMain:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

	wMain:SetFrameStrata("FULLSCREEN_DIALOG")
	wMain:SetFrameLevel(500)

	wMain.GetSizeWidth = function()
		return w
	end
	wMain.GetSizeHeight = function()
		return h
	end

	table.insert(UISpecialFrames, w_main_name)

	--Inset
	wMain.Inset = CreateFrame("Frame", nil, wMain, "InsetFrameTemplate")
	wMain.Inset:SetPoint("TOPLEFT", wMain, "TOPLEFT", 4, -55)
	wMain.Inset:SetPoint("BOTTOMRIGHT", wMain, "BOTTOMRIGHT", -4, 4)

	--Title
	wMain.title = wMain:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	wMain.title:SetPoint("TOP", wMain, "TOP", 0, -1)
	wMain.title:SetText("TBC Preparation")
	wMain.title:SetHeight(22)
	wMain.title:SetJustifyH("CENTER")
	wMain.title:SetJustifyV("MIDDLE")

	--Portrait
	SetPortraitToTexture(wMain.portrait, CasualTBCPrep.AddonLogoTexture) -- The Dark Portal

	--Tabs
	CreateTabs()
	CasualTBCPrep.W_Main.ShowTab(1);

	--QoL
	wMain:SetScript("OnShow", function() CasualTBCPrep.Sounds:PlaySound_Click() end)
	wMain:SetScript("OnHide", function() CasualTBCPrep.Sounds:PlaySound_Click() end)


	-- callback for skin addons
	if _G.CasualTBCPrep_SkinCallback then
		pcall(_G.CasualTBCPrep_SkinCallback, wMain)
	end

	wMain:Hide();
	wMain:Show();
end

function CasualTBCPrep.W_Main.Show()
	if wMain == nil then
		Create()
	elseif not wMain:IsShown() then
		CasualTBCPrep.W_Main.ShowTab(lastTabID)
		wMain:Show()
	end
end

function CasualTBCPrep.W_Main.Hide()
	if wMain ~= nil and wMain:IsShown() then
		wMain:Hide()
	end
end

function CasualTBCPrep.W_Main.Toggle()
	if wMain == nil then
        CasualTBCPrep.W_Companion.Show()
        return
    end

    if wMain:IsShown() then
        CasualTBCPrep.W_Main.Hide()
    else
        CasualTBCPrep.W_Main.Show()
    end
end

function CasualTBCPrep.W_Main.ReloadActiveTab()
	if wMain == nil or not wMain:IsShown() then
		return
	end

	if lastTabID > 0 then
		CasualTBCPrep.W_Main.ShowTab(lastTabID)
	end
end