local COMPAT, addonName, T = select(4, GetBuildInfo()), ...
local MODERN, CI_ERA = COMPAT >= 10e4, COMPAT < 2e4
local AB = T.ActionBook:compatible(2, 35)
local KR = T.ActionBook:compatible("Kindred", 1, 11)
local IM = T.ActionBook:compatible("Imp", 1, 0)
local EV, MC, XU = T.Evie, T.M6Core, T.exUI
local L = setmetatable({}, {__call=function(_,k) return k end})
local M = {}
if not (EV and MC and XU) then return end

do -- EscapeCallback
	local getInfo, setInfo do
		local info = {}
		function getInfo(k)
			return info[k]
		end
		function setInfo(k, v)
			info[k] = v
		end
	end
	local function noop() end
	local function ESC_OnKeyDown(self, key)
		local it = getInfo(self)
		if key and (key == "ESCAPE" or key == it[3]) and GetCurrentKeyBoardFocus() == nil and not it[2](it[1], key) then
			return
		end
		local a, b = it[4], it[5]
		a:SetScript("OnKeyDown", nil)
		b:SetScript("OnKeyDown", noop)
		it[4], it[5] = b, a
	end
	function M:EscapeCallback(parent, key2, callback)
		if callback == nil then
			callback, key2 = key2, nil
		end
		local f0 = CreateFrame("Frame", nil, parent)
		local f1 = CreateFrame("Frame", nil, parent)
		local f2 = CreateFrame("Frame", nil, parent)
		setInfo(f0, {parent, callback, key2, f1, f2})
		f0:SetPropagateKeyboardInput(true)
		f0:SetScript("OnKeyDown", ESC_OnKeyDown)
		f1:SetScript("OnKeyDown", noop)
	end
end
local function EasyMenu_Initialize(_, level, menuList)
	for i=1, #menuList do
		local value = menuList[i]
		if value.text then
			value.index = i
			UIDropDownMenu_AddButton(value, level)
		end
	end
end
local function EasyMenu(menuList, menuFrame, anchor, x, y, displayMode, autoHideDelay)
	if displayMode == "MENU" then
		menuFrame.displayMode = displayMode
	end
	UIDropDownMenu_Initialize(menuFrame, EasyMenu_Initialize, displayMode, nil, menuList)
	ToggleDropDownMenu(1, nil, menuFrame, anchor, x, y, menuList, nil, autoHideDelay)
end
local function HideOwnTooltip(self)
	if GameTooltip:IsOwned(self) then
		GameTooltip:Hide()
	end
end

local MacroTooltip, MacroTooltipLeft = CreateFrame("GameTooltip", "M6MacroTooltip", UIParent) do
	MacroTooltip:SetFrameStrata("TOOLTIP")
	local title = MacroTooltip:CreateFontString(nil, "ARTWORK", "GameFontNormalMed2")
	local title2 = MacroTooltip:CreateFontString(nil, "ARTWORK", "GameFontNormalMed1")
	MacroTooltipLeft = {title}
	title:SetPoint("TOPLEFT", 10, -10)
	title:SetJustifyH("LEFT")
	title2:SetJustifyH("RIGHT")
	title2:SetPoint("TOPRIGHT", -10, -10)
	title2:SetPoint("TOPLEFT", title, "TOPRIGHT", 12, 0)
	title2:SetTextColor(0.80, 0.80, 0.80)
	MacroTooltip:AddFontStrings(title, title2)
	for i=2, 5 do
		MacroTooltipLeft[i] = MacroTooltip:CreateFontString(nil, "ARTWORK", "GameFontHighlightLeft")
		MacroTooltip:AddFontStrings(MacroTooltipLeft[i], MacroTooltip:CreateFontString())
	end
	XU:Create("Backdrop", MacroTooltip, {edgeFile="Interface/Tooltips/UI-Tooltip-Border", bgFile="Interface/DialogFrame/UI-DialogBox-Background-Dark", tile=true, edgeSize=16, tileSize=16, insets={left=4,right=4,bottom=4,top=4}})
	MacroTooltip:SetScript("OnTooltipCleared", function(self)
		self:SetWidth(0)
	end)
end
local function shiftInputFocus(self)
	local focus = self.nextInput
	if IsShiftKeyDown() then
		focus = self.prevInput
	end
	if focus then
		focus:SetFocus()
	end
end

local ed, mainPanel = {}, CreateFrame("Frame", "M6UI", UIParent, "PortraitFrameTemplate") do
	local currentFilter = "all"

	local f = mainPanel do
		f.portrait = f.portrait or f.PortraitContainer.portrait
		f.TitleText = f.TitleText or f.TitleContainer.TitleText
		f:SetWidth(578)
		f:SetFrameStrata("HIGH")
		f:SetToplevel(true)
		f:Hide()
		f.portrait:SetTexture(MODERN and "interface/icons/secrets_of_the_empire_icon" or "interface/icons/inv_misc_gear_01")
		f.Bg:SetTexture("Interface\\garrison\\GarrisonMissionUIInfoBoxBackgroundTile", true, true)
		f.Bg:SetTexture("Interface\\FrameGeneral\\UI-Background-Marble", true, true)
		f.Bg:SetDrawLayer("BACKGROUND", -5)
		f.Bg1 = f:CreateTexture(nil, "BACKGROUND", nil, -4)
		f.Bg1:SetTexture("Interface\\FrameGeneral\\UI-Background-Rock", true, true)
		f.Bg1:SetHorizTile(true)
		f.Bg1:SetPoint("TOPLEFT", 2, -24)
		f.Bg1:SetPoint("TOPRIGHT", -2, -24)
		f.Bg1:SetTexCoord(0,1,0,40/256)
		f.Bg1:SetHeight(38)
		f.BgSep = f:CreateTexture(nil, "BORDER", nil, 4)
		f.BgSep:SetPoint("TOPLEFT", f.Bg1, "BOTTOMLEFT", 0, 1)
		f.BgSep:SetPoint("TOPRIGHT", f.Bg1, "BOTTOMRIGHT", 0, 1)
		f.BgSep:SetHeight(8)
		f.BgSep:SetTexture("Interface\\FrameGeneral\\_UI-Frame", true, false)
		f.BgSep:SetTexCoord(0,1, 28/128, 35/128)
		f.Status = f:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
		f.Status:SetPoint("RIGHT", f, "TOPRIGHT", -16, -42);
		f.TitleText:SetText(addonName)
		f:EnableMouse(true)
		f:SetMovable(true)
		f:SetClampedToScreen(true)
		f:SetClampRectInsets(-10, 0, 12, 0)
		do -- Move Handles
			local function Mover_OnDown(_, button)
				if button == "LeftButton" then
					mainPanel:StartMoving()
				end
			end
			local function Mover_OnUp()
				mainPanel:StopMovingOrSizing()
			end
			local function Mover_OnEnter()
				SetCursor("Interface/CURSOR/UI-Cursor-Move.crosshair")
			end
			local function Mover_OnLeave()
				SetCursor(nil)
			end
			local h = CreateFrame("Frame", nil, mainPanel)
			h:SetAllPoints(MODERN and f.PortraitContainer.portrait or f.portrait)
			h:SetScript("OnMouseDown", Mover_OnDown)
			h:SetScript("OnMouseUp", Mover_OnUp)
			h:SetScript("OnEnter", Mover_OnEnter)
			h:SetScript("OnLeave", Mover_OnLeave)
			h = CreateFrame("Frame", nil, mainPanel)
			h:SetPoint("TOPLEFT", f.TitleText, "TOPLEFT", -4, 6)
			h:SetPoint("BOTTOMRIGHT", f.TitleText, "BOTTOMRIGHT", 32, -6)
			h:SetScript("OnMouseDown", Mover_OnDown)
			h:SetScript("OnMouseUp", Mover_OnUp)
			h:SetScript("OnEnter", Mover_OnEnter)
			h:SetScript("OnLeave", Mover_OnLeave)
		end
		
		local function HasOtherClosableThings()
			if GetUIPanel("left") or GetUIPanel("center") or GetUIPanel("right") or GetUIPanel("doublewide") or GetUIPanel("fullscreen") then
				return true
			end
			for i=1, NUM_CONTAINER_FRAMES do
				if _G["ContainerFrame"..i]:IsShown() then
					return true
				end
			end
			for i=1, #UISpecialFrames do
				local frame = _G[UISpecialFrames[i]]
				if frame and frame.IsForbidden and not frame:IsForbidden() and frame:IsShown() then
					return true
				end
			end
			return false
		end
		M:EscapeCallback(f, function(self, key)
			local closeMe = key == "ESCAPE" and not securecall(HasOtherClosableThings)
			if closeMe and DropDownList1:IsVisible() then
				CloseDropDownMenus(1)
			elseif closeMe then
				self:Hide()
			end
			return not closeMe
		end)
	end
	local contentSlot = CreateFrame("Frame", nil, mainPanel) do
		contentSlot:SetPoint("TOPLEFT", f.BgSep, "BOTTOMLEFT", 0, 4)
		contentSlot:SetPoint("BOTTOMRIGHT", 0, 0)
	end
	local sf, bar, slate = CreateFrame("Frame", nil, contentSlot) do
		sf:SetPoint("TOPLEFT", 0, -1)
		sf:SetPoint("BOTTOMRIGHT", -24, 5)
		local clipRoot = CreateFrame("Frame", nil, sf)
		clipRoot:SetClipsChildren(true)
		clipRoot:SetAllPoints()
		slate = CreateFrame("Frame", nil, clipRoot)
		slate:SetSize(mainPanel:GetWidth()-28, 400)
		bar = XU:Create("ScrollBar", nil, sf) do
			bar:SetPoint("TOPLEFT", sf, "TOPRIGHT", 1, 0)
			bar:SetPoint("BOTTOMLEFT", sf, "BOTTOMRIGHT", 1, 0)
			bar:SetWheelScrollTarget(sf)
			bar:SetScript("OnValueChanged", function(_, v, _isUserInteraction)
				slate:SetPoint("TOPLEFT", 0, v)
			end)
		end
		f.scrollList, sf.bar, sf.slate = sf, bar, slate
		local newMacro = CreateFrame("Button", nil, sf) do
			newMacro:SetNormalTexture("Interface/GuildBankFrame/UI-GuildBankFrame-NewTab")
			newMacro:SetPushedTexture("Interface/GuildBankFrame/UI-GuildBankFrame-NewTab")
			newMacro:GetPushedTexture():SetTexCoord(-0.02, 0.98, -0.02, 0.98)
			newMacro:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
			newMacro:SetSize(24, 24)
			newMacro:SetScript("OnEnter", function(self)
				GameTooltip:SetOwner(self, "ANCHOR_NONE")
				GameTooltip:SetPoint("LEFT", self, "RIGHT", 4, 0)
				GameTooltip:SetText(L"Create a new macro")
			end)
			newMacro:SetScript("OnLeave", HideOwnTooltip)
			newMacro:SetPoint("TOPLEFT", mainPanel, "TOPLEFT", 62, -32)
			newMacro:SetScript("OnClick", function()
				PlaySound(SOUNDKIT.IG_CHARACTER_INFO_OPEN)
				M:OpenEditor(0)
			end)
		end
		local filterButton = CreateFrame("Button", nil, sf, "UIMenuButtonStretchTemplate") do
			filterButton:SetSize(92, 22)
			filterButton:SetText(L"Filter")
			filterButton:SetPoint("TOPRIGHT", mainPanel, "TOPRIGHT", -12, -36)
			local t = filterButton:CreateTexture(nil, "ARTWORK")
			t:SetTexture("Interface/ChatFrame/ChatFrameExpandArrow")
			t:SetSize(10,12)
			t:SetPoint("RIGHT", filterButton.MiddleRight, "RIGHT", -5, 0)
			filterButton.Icon = t
			local drop = CreateFrame("Frame", "M6UIFilterDropDown", filterButton, "UIDropDownMenuTemplate")
			filterButton:SetScript("OnClick", function(self)
				PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
				ToggleDropDownMenu(1, nil, drop, self, 0, 0)
				DropDownList1:ClearAllPoints()
				DropDownList1:SetPoint("TOPRIGHT", self, "BOTTOMRIGHT", 12, 4)
			end)
			function filterButton:HandlesGlobalMouseEvent(btn)
				return btn == "LeftButton"
			end
			local function setFilter(_, fv)
				M:SetFilter(fv, true)
				-- SD's short menu fallback to UIDD doesn't close the top-level menu
				CloseDropDownMenus()
			end
			local filters={"All","all", "Currently active","active", "Key-bound","keybound", "Active macro extensions", "activex", "Macro extension commands","macroex", "Inactive","inactive"}
			local function groupEntryFormat(k, list)
				return list._m[k], list._cv == k
			end
			function drop:initialize(level, nameList)
				if level == 2 then
					XU:Create("ScrollableDropDownList", 2, nameList, groupEntryFormat, setFilter, false)
					return
				end
				local cv = M:GetFilter()
				local info = {func=setFilter}
				for i=1,#filters, 2 do
					local fv = filters[i+1]
					info.text, info.arg1, info.checked = filters[i], fv, cv == fv
					UIDropDownMenu_AddButton(info)
				end
				local a, m = {}, {}
				for gid, name in MC:AllGroups() do
					m[gid], a[#a+1] = name, gid
				end
				if #a > 0 then
					table.sort(a, function(a,b) return strcmputf8i(m[a], m[b]) < 0 end)
					UIDropDownMenu_AddSeparator()
					local primaryLimit = #a > 20 and 16 or #a
					for i=1,primaryLimit do
						local fv = a[i]
						info.text, info.arg1, info.checked = m[fv], fv, fv == cv
						UIDropDownMenu_AddButton(info)
					end
					if primaryLimit < #a then
						info.hasArrow, info.notCheckable, info.padding, info.fontObject = 1, 1, 32, GameFontNormalSmall
						info.text, info.func, info.checked = nil
						info.menuList, info.text = a, L"More groups"
						a._m, a._cv = m, cv
						UIDropDownMenu_AddButton(info)
					end
				end
			end
			local filterResetButton = CreateFrame("Button", nil, filterButton) do
				local b = filterResetButton
				b:SetSize(23,23)
				b:SetPoint("CENTER", filterButton, "TOPRIGHT", -3, 0)
				b:SetNormalAtlas("auctionhouse-ui-filter-redx")
				b:SetHighlightAtlas("auctionhouse-ui-filter-redx")
				b:GetHighlightTexture():SetBlendMode("ADD")
				b:GetHighlightTexture():SetAlpha(0.4)
				b:SetScript("OnClick", function()
					PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
					M:SetFilter("all", true)
					if UIDROPDOWNMENU_OPEN_MENU == drop then
						CloseDropDownMenus()
					end
				end)
			end
			mainPanel.FilterButton, filterButton.Reset = filterButton, filterResetButton
		end
		mainPanel.Instruction = sf:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
		mainPanel.Instruction:SetPoint("BOTTOM", sf, "TOP", 10, 12)
		mainPanel.Instruction:SetText(L"Right click on a macro for options.")
	end
	local editPanel, getEditMacroText, setEditMacroText, clearMacroEditor = CreateFrame("Frame", nil, contentSlot) do
		editPanel:SetPoint("TOPLEFT", sf, "TOPLEFT", 0, 0)
		editPanel:SetPoint("BOTTOMRIGHT", sf, "BOTTOMRIGHT", 20, 0)
		editPanel:Hide()
		local ebox, eboxFirst, eboxLast = {}
		local host, editorHost = AB:CreateEditorHost(editPanel) do
			host:SetPoint("TOPLEFT", 6, -106)
			host:SetPoint("BOTTOMRIGHT", -8, 34)
			local tt = {}
			function getEditMacroText()
				editorHost:GetAction(tt)
				return tt[2]
			end
			function setEditMacroText(text)
				editorHost:SetAction({"imptext", text})
			end
			function clearMacroEditor()
				editorHost:Clear()
			end
			function host:OnTabPressed()
				shiftInputFocus(ebox)
			end
			local function box_SetFocus(self)
				local w = editorHost:GetTabFocusWidget(self == eboxFirst and 1 or self == eboxLast and -1 or 0)
				if w then
					w:SetFocus()
				end
			end
			ebox.SetFocus, ebox.GetText = box_SetFocus, getEditMacroText
			eboxFirst = {SetFocus=ebox.SetFocus}
			eboxLast = {SetFocus=ebox.SetFocus}
			editPanel.box = ebox
		end
		local nbox = XU:Create("LineInput", nil, editPanel) do
			nbox:SetWidth(200)
			nbox:SetPoint("LEFT", editPanel, "TOPLEFT", 130, -12)
			nbox:SetScript("OnTabPressed", shiftInputFocus)
			local lab = nbox:CreateFontString(nil, "ARTWORK", "GameFontNormal")
			lab:SetText(L"Name:")
			lab:SetPoint("LEFT", editPanel, "TOPLEFT", 8, -12)
			editPanel.nameBox = nbox
		end
		local gbox = XU:Create("LineInput", nil, editPanel) do
			gbox:SetWidth(145)
			gbox:SetPoint("LEFT", nbox, "RIGHT", 90, 0)
			gbox:SetScript("OnTabPressed", shiftInputFocus)
			local lab = gbox:CreateFontString(nil, "ARTWORK", "GameFontNormal")
			lab:SetText(L"Group:")
			lab:SetPoint("RIGHT", gbox, "LEFT", -10, 0)
			editPanel.groupNameBox = gbox
		end
		local ico, isd = CreateFrame("Button", nil, editPanel) do
			ico:SetSize(204, 18)
			ico:SetPoint("LEFT", editPanel, "TOPLEFT", 130, -38)
			ico:RegisterForClicks("AnyUp")
			ico:SetNormalFontObject(GameFontHighlightSmall2)
			ico:SetHighlightFontObject(GameFontHighlightSmall2)
			ico:SetText("!")
			local fs = ico:GetFontString()
			fs:ClearAllPoints()
			fs:SetPoint("LEFT", 24, 0)
			ico:SetNormalTexture("Interface\\Icons\\INV_Misc_QuestionMark")
			local nt = ico:GetNormalTexture()
			nt:ClearAllPoints()
			nt:SetSize(18, 18)
			nt:SetPoint("LEFT")
			ico:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
			local ht = ico:GetHighlightTexture()
			ht:SetAllPoints(nt)
			local lab = ico:CreateFontString(nil, "ARTWORK", "GameFontNormal")
			lab:SetText(L"Icon:")
			lab:SetPoint("LEFT", editPanel, "TOPLEFT", 8, -38)
			isd = XU:Create("IconSelector", nil, ico)
			isd:SetGridSize(7, 12)
			isd:SetPoint("TOPLEFT", ico, "BOTTOMLEFT", -30, 4)
			isd:SetHitRectInsets(-100, 0, 0, 0)
			isd:SetScript("OnIconSelect", function(_, asset)
				ico:SetIcon(asset)
			end)
			isd:SetScript("OnEditFocusGained", function(self, editbox)
				local nc = NORMAL_FONT_COLOR
				GameTooltip:SetOwner(editbox, "ANCHOR_NONE")
				if editbox:GetBottom() < 120 then
					GameTooltip:SetPoint("BOTTOMLEFT", editbox, "TOPLEFT", -6, 0)
				else
					GameTooltip:SetPoint("TOPLEFT", editbox, "BOTTOMLEFT", -6, 0)
				end
				GameTooltip:AddLine(L"Override Icon", 1,1,1)
				GameTooltip:AddLine(L"Specify an icon by entering an icon file name, texture path, atlas name, or a known ability name.", nc.r, nc.g, nc.b, 1)
				if self:IsSearchPossible() then
					GameTooltip:AddLine((L"Press %s to search"):format(HIGHLIGHT_FONT_COLOR_CODE .. GetBindingText("ALT-ENTER") .. "|r"), nc.r, nc.g, nc.b, 1)
				else
					local at = HIGHLIGHT_FONT_COLOR_CODE .. "IconFileNames |cff606060<|cff40a0ffhttps://townlong-yak.com/addons/iconfilenames|r>|r|r"
					GameTooltip:AddLine((L"Install and enable %s to search by file name."):format(at), nc.r, nc.g, nc.b, 1)
				end
				GameTooltip:Show()
			end)
			isd:SetScript("OnEditFocusLost", function(_, editbox) HideOwnTooltip(editbox) end)
			ico:SetScript("OnClick", function()
				M[isd:IsShown() and "HideEditorModal" or "ShowEditorModal"](M, isd)
				PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON)
			end)
			isd.SetFocus = isd.FocusManualInput
			function ico:SetIcon(tex, ...)
				self.value = tex
				if select("#", ...) == 1 then
					self.dynamicIcon = ...
				end
				self:SetText(tex and L"Static custom icon" or L"Determined by macro content")
				self:SetNormalTexture(tex or self.dynamicIcon or "Interface\\Icons\\INV_Misc_QuestionMark")
				isd:SetFirstAsset(tex or self.dynamicIcon)
				isd:SetSelectedAsset(tex)
			end
			editPanel.icon = ico
		end
		local bind = CreateFrame("Button", nil, editPanel, "UIPanelButtonTemplate") do
			bind:SetWidth(260)
			bind:SetPoint("LEFT", editPanel, "TOPLEFT", 130-6, -64)
			bind:RegisterForClicks("AnyUp")
			bind:SetFrameLevel(bind:GetFrameLevel()+20)
			local lab = bind:CreateFontString(nil, "ARTWORK", "GameFontNormal")
			lab:SetText(L"Binding:")
			lab:SetPoint("LEFT", editPanel, "TOPLEFT", 8, -64)
			local condHint = CreateFrame("Frame", nil, bind) do
				condHint:SetPoint("LEFT", bind, "RIGHT", 4, 0)
				condHint:SetSize(16,16)
				local t = condHint:CreateTexture()
				t:SetAllPoints()
				t:SetTexture("Interface/FriendsFrame/InformationIcon")
				condHint:SetScript("OnEnter", function(self)
					GameTooltip:SetOwner(self, "ANCHOR_NONE")
					local nc, hc = NORMAL_FONT_COLOR, HIGHLIGHT_FONT_COLOR
					GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
					GameTooltip:SetText(L"Conditional bindings", hc.r, hc.g, hc.b)
					GameTooltip:AddLine(L"You can configure a conditional binding for this macro by holding ALT and left-clicking the binding button.", nc.r, nc.g, nc.b, 1)
					if MODERN then
						GameTooltip:AddLine(" ")
						GameTooltip:AddLine(L"Use a conditional binding when you want the binding to be active only some of the time, e.g. only when a particular action bar is shown.", nc.r, nc.g, nc.b, 1)
						GameTooltip:AddLine("|nFor example:", nc.r, nc.g, nc.b, 1)
						GameTooltip:AddLine("|T0:18:1|t   [bar:1,nobonusbar,novehicleui] 1", 0.2, 0.8, 0.2)
						GameTooltip:AddLine("|T0:18:1|t   [novehicleui] ALT-2", 0.2, 0.8, 0.2)
					else
						GameTooltip:AddLine(L"The binding will update to reflect the value of the specified macro options expression.", nc.r, nc.g, nc.b, 1)
					end
					GameTooltip:Show()
				end)
				condHint:SetScript("OnLeave", HideOwnTooltip)
			end
			local bindopt = XU:Create("DropDown", nil, bind) do
				local bindForAll, bindEdge, bindComp
				bindopt:SetPoint("LEFT", bind, "RIGHT", 14, -2)
				bindopt:SetWidth(180)
				local function updateBindingOptionsText()
					local text = bindForAll and L"Global" or L"Per-Spec"
					if bindEdge == true then text = text .. " |TInterface/Buttons/UI-SortArrow:0:0:0:-1:2:1:0:1:0:1|t" end
					if bindEdge == false then text = text .. " |TInterface/Buttons/UI-SortArrow:0:0:0:1:2:1:0:1:1:0|t" end
					if bindComp then text = text .. " |A:QuestNormal:16:16|a" end
					bindopt:SetText(text)
				end
				function ed:GetBindingOptions()
					return bindForAll, bindEdge, bindComp
				end
				function ed:SetBindingOptions(forAll, edge, comp)
					bindForAll, bindEdge, bindComp = forAll, edge, comp
					updateBindingOptionsText()
				end
				local function setBindOpt(_, a1, a2, checked)
					if a2 == "forall" then
						bindForAll = not checked
					elseif a2 == "edge" then
						bindEdge = a1
					elseif a2 == "pair" then
						bindComp = a1
					end
					updateBindingOptionsText()
				end
				local function commandFormat(k)
					return MC:IsCommandExtActive(k) and k or (k .. " |cffa0a0a0(Inactive)|r"), bindComp == k
				end
				local function setCompPair(_, b)
					bindComp = b
					updateBindingOptionsText()
					CloseDropDownMenus()
				end
				function bindopt:initialize()
					if UIDROPDOWNMENU_MENU_LEVEL == 2 then
						local list, seen, ni = {}, {}, 1
						for _, cmd, _scope, inScope in MC:AllCommands() do
							cmd = "/!" .. cmd
							if not seen[cmd] then
								list[ni], ni = cmd, ni + 1
							end
							seen[cmd] = inScope and 0 or seen[cmd] or 1
						end
						table.sort(list, function(a,b)
							if seen[a] ~= seen[b] then
								return seen[a] == 0
							end
							return a < b
						end)
						if #list > 0 then
							XU:Create("ScrollableDropDownList", 2, list, commandFormat, setCompPair, false)
						else
							local info = {text=L"No ext. commands assigned in M6", disabled=true}
							UIDropDownMenu_AddButton(info, 2)
						end
						return
					end
					local info = {minWidth=self:GetWidth()-40}
					info.func, info.arg2 = setBindOpt, "forall"
					info.text, info.checked, info.isNotRadio = L"Global binding", bindForAll, true
					info.tooltipOnButton, info.tooltipTitle, info.tooltipText = true, L"Global binding", L"When checked, the binding is used for all specializations across all characters." .. "\n\n" .. L"When unchecked, you may configure a binding for your current character's current specialization."
					UIDropDownMenu_AddButton(info)
					UIDropDownMenu_AddSeparator()
					info.isNotRadio, info.tooltipOnButton, info.tooltipTitle, info.tooltipText, info.func, info.checked = nil
					info.text, info.isTitle = L"Run on:", true
					UIDropDownMenu_AddButton(info)
					info.func, info.arg2, info.isTitle, info.disabled = setBindOpt, "edge"
					info.text, info.checked, info.arg1 = L"Binding press", bindEdge == true, true
					UIDropDownMenu_AddButton(info)
					info.text, info.checked, info.arg1 = L"Binding release", bindEdge == false, false
					UIDropDownMenu_AddButton(info)
					local uipref = GetCVarBool("ActionButtonUseKeyDown") and L"Binding press" or L"Binding release"
					info.text, info.checked, info.arg1 = L"UI default" .. " |cffb0b0b0(" .. uipref .. ")|r", bindEdge == nil, nil
					UIDropDownMenu_AddButton(info)
					UIDropDownMenu_AddSeparator()
					info.text, info.isTitle, info.checked = L"Counter-action:", true, nil
					UIDropDownMenu_AddButton(info)
					info.arg2, info.arg1, info.disabled, info.isTitle = 'pair', nil
					info.text, info.checked = L"Do nothing", bindComp == nil
					UIDropDownMenu_AddButton(info)
					if bindComp then
						info.func, info.text, info.checked = nil, commandFormat(bindComp), true
						UIDropDownMenu_AddButton(info)
					end
					info.text, info.hasArrow, info.checked, info.func = L"Run ext. command", true, false, nil
					UIDropDownMenu_AddButton(info)
				end
			end
			
			local alternateFrame = CreateFrame("Frame", nil, bind) do
				XU:Create("Backdrop", alternateFrame, { bgFile="Interface/ChatFrame/ChatFrameBackground", edgeFile="Interface/DialogFrame/UI-DialogBox-Border", tile=true, tileSize=32, edgeSize=32, insets={left=11, right=11, top=12, bottom=10}, bgColor=0xd8000000})
				alternateFrame:SetSize(320, 115)
				alternateFrame:EnableMouse(1)
				alternateFrame:SetScript("OnHide", alternateFrame.Hide)
				local extReminder = CreateFrame("BUTTON", nil, alternateFrame)
				extReminder:SetHeight(16) extReminder:SetPoint("TOPLEFT", 12, -10) extReminder:SetPoint("TOPRIGHT", -12, -10)
				extReminder:SetNormalTexture("Interface/Buttons/UI-OptionsButton")
				extReminder:SetPushedTextOffset(0,0)
				extReminder:SetText(" ") extReminder:SetNormalFontObject(GameFontHighlightSmall) do
					local fs, tex = extReminder:GetFontString(), extReminder:GetNormalTexture()
					fs:ClearAllPoints() tex:ClearAllPoints()
					fs:SetPoint("LEFT", 18, -1) tex:SetSize(14,14) tex:SetPoint("LEFT")
				end
				alternateFrame.caption = extReminder
				extReminder:SetScript("OnEnter", function(self)
					GameTooltip:SetOwner(self, "ANCHOR_NONE")
					GameTooltip:SetPoint("BOTTOM", self, "TOP", 0, 2)
					GameTooltip:AddLine(L"Conditional Bindings", NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
					GameTooltip:AddLine(L"The binding will update to reflect the value of this macro options expression.", HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1)
					GameTooltip:AddLine((L"You may use extended conditionals; see |cff33DDFF%s|r for details."):format("https://townlong-yak.com/addons/m6/conditionals"), HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, 1)
					GameTooltip:AddLine((L"Example: %s."):format(GREEN_FONT_COLOR_CODE .. "[combat] ALT-C; [nomounted] CTRL-F|r"), NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
					GameTooltip:Show()
				end)
				extReminder:SetScript("OnLeave", HideOwnTooltip)
				extReminder:SetScript("OnHide", extReminder:GetScript("OnLeave"))
				local textarea = XU:Create("TextArea", "M6_AlternateBindInput", alternateFrame)
				textarea:SetPoint("TOPLEFT", 12, -28)
				textarea:SetPoint("BOTTOMRIGHT", -10, 10)
				alternateFrame.input = textarea
				textarea:SetMaxBytes(1023)
				textarea:SetScript("OnEscapePressed", function() M:HideEditorModal(alternateFrame) end)
				textarea:SetScript("OnChar", function(self, c)
					if c == "\n" then
						local bind = strtrim((self:GetText():gsub("[\r\n]", "")))
						if bind ~= "" then
							alternateFrame.owner:SetBinding(bind)
						end
						M:HideEditorModal(alternateFrame)
					end
				end)
			end
			
			local function Deactivate(self)
				self:UnlockHighlight()
				self:EnableKeyboard(false)
				self:SetScript("OnHide", nil)
				self:SetScript("OnUpdate", nil)
				self:SetScript("OnKeyDown", nil)
				self:SetScript("OnGamePadButtonDown", nil)
				self:SetScript("OnMouseWheel", nil)
				self.capture = nil
				self:GetHighlightTexture():SetAlpha(0.25)
				if self.oldFocus then
					-- BUG[11.0.0/2408]: calling SetFocus immediately would leak the deactivation-triggering keystroke to the editbox, so delay.
					C_Timer.After(0, function()
						if self.oldFocus and not self.capture then
							self.oldFocus:SetFocus()
							self.oldFocus = nil
						end
					end)
				end
			end
			local function WatchFocus(self)
				if GetCurrentKeyBoardFocus() then
					self.oldFocus = nil
					Deactivate(self)
				end
			end
			local function GetCurrentModifiers()
				return (IsAltKeyDown() and "ALT-" or "") ..  (IsControlKeyDown() and "CTRL-" or "") .. (IsShiftKeyDown() and "SHIFT-" or "") .. (IsMetaKeyDown() and "META-" or "")
			end
			local unbindableKeys = {
				UNKNOWN=1, ESCAPE=1, ALT=1, SHIFT=1, META=1,
				LALT=1, LCTRL=1, LSHIFT=1, LMETA=1,
				RALT=1, RCTRL=1, RSHIFT=1, RMETA=1,
				PADRSTICKUP=1, PADRSTICKDOWN=1, PADRSTICKLEFT=1, PADRSTICKRIGHT=1,
				PADLSTICKUP=1, PADLSTICKDOWN=1, PADLSTICKLEFT=1, PADLSTICKRIGHT=1,
			}
			local function SetBind(self, bind)
				if bind == "ESCAPE" then
					return Deactivate(self)
				elseif unbindableKeys[bind] then
					return
				elseif bind and bind:match("PAD") and (
				         bind == GetCVar("GamePadEmulateAlt") or
				         bind == GetCVar("GamePadEmulateCtrl") or
				         bind == GetCVar("GamePadEmulateShift")
				       ) then
					return
				elseif GetCurrentKeyBoardFocus() then
					self.oldFocus = nil
					return Deactivate(self)
				end
				self:SetBinding(GetCurrentModifiers() .. bind)
			end
			local function SetWheelBind(self, delta)
				SetBind(self, delta > 0 and "MOUSEWHEELUP" or "MOUSEWHEELDOWN")
			end
			local buttonMap = {LeftButton="BUTTON1", RightButton="BUTTON2", MiddleButton="BUTTON3"}
			local function showBindingEditor(self)
				alternateFrame.owner = self
				alternateFrame.caption:SetText(L"Press ENTER to save.")
				alternateFrame.input:SetText(self.value or "")
				alternateFrame:SetParent(self)
				alternateFrame:SetFrameLevel(self:GetFrameLevel()+10)
				alternateFrame:ClearAllPoints()
				alternateFrame:SetPoint("TOP", self, "BOTTOM", 0, 4)
				if alternateFrame:GetLeft() < self:GetParent():GetLeft() then
					alternateFrame:SetPoint("TOPLEFT", self, "BOTTOMLEFT", -8, 4)
				elseif alternateFrame:GetRight() > self:GetParent():GetRight() then
					alternateFrame:SetPoint("TOPRIGHT", self, "BOTTOMRIGHT", 8+22, 4)
				end
				M:ShowEditorModal(alternateFrame)
				alternateFrame.input:SetFocus()
			end
			bind:SetScript("OnClick", function(self, button)
				if button == "LeftButton" then
					if self.capture then
						Deactivate(self)
					elseif IsAltKeyDown() then
						if alternateFrame:IsShown() and alternateFrame.owner == self then
							M:HideEditorModal(alternateFrame)
						else
							showBindingEditor(self)
						end
					else
						self.capture = true
						self:LockHighlight()
						self:GetHighlightTexture():SetAlpha(1)
						self:SetScript("OnHide", Deactivate)
						self:SetScript("OnUpdate", WatchFocus)
						self:SetScript("OnKeyDown", SetBind)
						self:SetScript("OnGamePadButtonDown", SetBind)
						self:SetScript("OnMouseWheel", SetWheelBind)
						M:HideEditorModal(nil)
						local kf = GetCurrentKeyBoardFocus()
						if kf and kf.ClearFocus and kf.SetFocus then
							kf:ClearFocus()
							self.oldFocus = kf
						end
					end
				elseif button == "RightButton" then
					if self.capture then
						self:SetBinding(nil)
					end
				elseif self.capture then
					self:SetBinding(GetCurrentModifiers() .. (buttonMap[button] or button:upper()))
				end
			end)
			function M:ShowConditionalBindingEditor()
				if bind:IsVisible() then
					if bind.capture then
						Deactivate(bind)
					end
					showBindingEditor(bind)
				end
			end
			local specialSymbolMap = {OPEN="[", CLOSE="]", SEMICOLON=";"}
			local function SetBindingText(self, bind, pre, post)
				local pre2, pre3
				if type(bind) == "string" and bind:match("%[.*%]") then
					bind, pre2 = KR:EvaluateCmdOptions(bind), "|cff20ff20[+]|r "
				end
				pre3, bind = (bind or ""):match('^%s*(!*)%s*(%S.*)$')
				bind = bind and KR:UnescapeCmdOptionsValue(bind):gsub("[^%-]+$", specialSymbolMap)
				local bindText = bind and bind ~= "" and GetBindingText(bind)
				if CI_ERA and bindText and bind:match("PAD") then
					for ai in bindText:gmatch("|A:([^:]+)") do
						if not C_Texture.GetAtlasInfo(ai) then -- BUG[1.14.4/2310]
							bindText = bind
							break
						end
					end
				end
				return self:SetText((pre or "") .. (pre2 or "") .. (pre3 or "") .. (bindText or NONE_KEY) .. (post or ""))
			end
			function bind:SetBinding(bind)
				self.value = bind ~= "" and bind or nil
				SetBindingText(self, self.value)
				Deactivate(self)
			end
			bind.Deactivate = Deactivate
			editPanel.bind = bind
		end
		local extCommand = XU:Create("LineInput", nil, editPanel) do
			extCommand:SetWidth(200)
			extCommand:SetPoint("LEFT", editPanel, "TOPLEFT", 130, -90)
			extCommand:SetScript("OnTabPressed", shiftInputFocus)
			extCommand:SetScript("OnEditFocusLost", function(self)
				local t = self:GetText():gsub("%s+", ""):gsub("^/!?", "")
				self:SetText(t ~= "" and "/!" .. t or "")
			end)
			local lab = extCommand:CreateFontString(nil, "ARTWORK", "GameFontNormal")
			lab:SetText(L"Ext. Command:")
			lab:SetPoint("LEFT", editPanel, "TOPLEFT", 8, -90)
			editPanel.extCommandBox = extCommand
			local limit = XU:Create("DropDown", "M6ExtCommandLimit", editPanel)
			limit:SetWidth(170)
			limit:SetPoint("LEFT", extCommand, "RIGHT", 10, -3)
			local limitScopeTokens, usableTokens, limitScopeValue
			local function updateScope(_ddbtn, arg1, _, _checked)
				if arg1 == "NO_OTHERS" then
					for k in pairs(limitScopeTokens) do
						if not usableTokens[k] then
							limitScopeTokens[k] = nil
						end
					end
					if next(limitScopeTokens) == nil then
						limitScopeTokens.ALL = 1
					end
				else
					limitScopeTokens[arg1] = not limitScopeTokens[arg1] or nil
					if limitScopeTokens.ALL and arg1 ~= "ALL" and limitScopeTokens[arg1] then
						UIDropDownMenuButton_OnClick(DropDownList1Button2, "LeftButton")
					end
				end
				local cat
				for k in pairs(limitScopeTokens) do
					cat = (cat and cat .. " " .. k or k)
				end
				limitScopeValue = cat or ""
				limit:sync(extCommand:GetText(), limitScopeValue, MC.IsInScope(cat))
			end
			function limit:initialize()
				local className, classKey = UnitClass("player")
				local facKey, facName = UnitFactionGroup("player")
				local tokens, info = {}, {func=updateScope, isNotRadio=true, keepShownOnClick=true}
				local fullName = MC:GetPlayerScope()
				if limitScopeTokens and limitScopeValue == limit.value then
					tokens = limitScopeTokens
				elseif limit.value then
					tokens = {}
					for tok in limit.value:gmatch("%S+") do
						tokens[tok] = 1
					end
				else
					tokens = {ALL=1}
					tokens.ALL = 1
				end
				UIDropDownMenu_AddButton({text=L"Use extension command on:", isTitle=true})
				local displayName = "|cffc0d0f0" .. fullName .. "|r"
				local displayClass = RAID_CLASS_COLORS[classKey]
				displayClass = displayClass and displayClass:WrapTextInColorCode(className) or className
				limitScopeTokens, limitScopeValue, usableTokens = tokens, limit.value or "ALL", {[fullName]=1, [classKey]=1, ALL=1, [facKey]=1}
				info.text, info.arg1, info.checked = (L"All characters"), "ALL", limit.value == nil or tokens.ALL
				UIDropDownMenu_AddButton(info)
				info.text, info.arg1, info.checked = ("All %s characters"):format(facName), facKey, tokens[facKey]
				UIDropDownMenu_AddButton(info)
				info.text, info.arg1, info.checked = ("All %s characters"):format(displayClass), classKey, tokens[classKey]
				UIDropDownMenu_AddButton(info)
				info.text, info.arg1, info.checked = ("%s, any specialization"):format(displayName), fullName, tokens[fullName]
				UIDropDownMenu_AddButton(info)
				for i=1, MODERN and GetNumSpecializations() or 0 do
					if (i == 1) then
						UIDropDownMenu_AddSeparator()
					end
					local id, name, _, icon = GetSpecializationInfo(i)
					local k = "SPEC" .. id
					local displaySpec = "|T" .. icon .. ":0:0:0:0:64:64:4:60:4:60|t " .. name
					info.text, info.arg1, info.checked, usableTokens[k] = ("Every %s %s"):format(displaySpec, displayClass), k, tokens[k], 1
					UIDropDownMenu_AddButton(info)
				end
				for i=1, MODERN and GetNumSpecializations() or 0 do
					if (i == 1) then
						UIDropDownMenu_AddSeparator()
					end
					local id, name, _, icon = GetSpecializationInfo(i)
					local k = fullName .. ":" .. id
					local displaySpec = "|T" .. icon .. ":0:0:0:0:64:64:4:60:4:60|t " .. name
					info.text, info.arg1, info.checked, usableTokens[k] = ("%s, while %s"):format(displayName, displaySpec), k, tokens[k], 1
					UIDropDownMenu_AddButton(info)
				end
				for k in pairs(tokens) do
					if not usableTokens[k] then
						UIDropDownMenu_AddSeparator()
						info.text, info.arg1, info.notCheckable, info.justifyH, info.keepShownOnClick, info.isNotRadio = L"Clear other applicability conditions", "NO_OTHERS", true, "CENTER", nil
						UIDropDownMenu_AddButton(info)
						break
					end
				end
			end
			function limit:sync(command, scope, isInScope)
				local text = L"Not limited"
				if command and scope ~= nil and not (" " .. scope .. " "):match(" ALL ") then
					text = isInScope and ("|cffc0ffc0" .. L"Limited, Active") or ("|cffffc0c0" .. L"Limited, Inactive")
				end
				self:SetText(text)
				self.value = scope
			end
			editPanel.extCommandLimit = limit
		end
		nbox.nextInput, nbox.prevInput = gbox, eboxLast
		gbox.nextInput, gbox.prevInput = extCommand, nbox
		extCommand.nextInput, extCommand.prevInput = eboxFirst, gbox
		ebox.nextInput, ebox.prevInput = nbox, extCommand
		local save = CreateFrame("Button", nil, editPanel, "UIPanelButtonTemplate")
		save:SetWidth(120)
		save:SetText(L"Save")
		save:SetPoint("BOTTOMRIGHT", -2, 4)
		save:SetScript("OnClick", function() PlaySound(SOUNDKIT.GS_TITLE_OPTION_OK) M:SaveEditor() end)
		local cancel = CreateFrame("Button", nil, editPanel, "UIPanelButtonTemplate")
		cancel:SetWidth(120)
		cancel:SetText(L"Cancel")
		cancel:SetPoint("RIGHT", save, "LEFT", -16, 0)
		cancel:SetScript("OnClick", function()
			PlaySound(SOUNDKIT.GS_TITLE_OPTION_EXIT)
			editPanel:Hide()
			sf:Show()
		end)
		M:EscapeCallback(editPanel, "TAB", function(s, key)
			if key == "ESCAPE" then
				if isd:IsShown() then
					isd:Hide()
				else
					cancel:Click()
				end
			elseif key == "TAB" then
				local focusBox = isd:IsShown() and isd or s.nameBox:GetText() == "" and ebox:GetText() == "" and s.nameBox or ebox
				focusBox:SetFocus()
			end
		end)
	end
	local menu, drop = {
		{text=L"Place on action bars", func=function(_, id) MC:PickupAction(id) M:SyncContent() end, notCheckable=true, tooltipTitle=L"Place on action bars", tooltipOnButton=true},
		{text=L"Deactivate", notCheckable=true, func=function(_, id) MC:DeactivateAction(id) M:SyncContent() end, tooltipTitle=L"Deactivate", tooltipText=L"Deactivate this macro for your current spec.\n\nDeactivated macros cannot be placed on your action bars, but can be key-bound.", tooltipOnButton=true},
		{text="|cffcc2020" .. L"Delete", notCheckable=true, func=function(_, id) MC:DeleteAction(id) M:ReFilter() end},
	}, CreateFrame("Frame", "M6ActionsDropDown", slate, "UIDropDownMenuTemplate")
	
	local buttonTooltipOwner
	local function Button_OnClick(self, button)
		local id = self:GetID()
		if id == 0 or button == "LeftButton" then
			PlaySound(SOUNDKIT.IG_QUEST_LIST_OPEN)
			M:OpenEditor(id)
		elseif UIDROPDOWNMENU_OPEN_MENU == drop and DropDownList1:IsVisible() and menu[1].arg1 == id then
			CloseDropDownMenus()
		elseif button == "RightButton" then
			local isActive = MC:IsActionActivated(id)
			for i=1,#menu do
				menu[i].arg1 = id
			end
			menu[1].tooltipText = isActive and L"Activated for current spec.\n\nSelect this option, or drag the macro icon directly to your action bars."
			                                or L"Deactivated for current spec.\n\nSelect this option, or hold Shift while dragging the macro icon to activate, allowing the macro to be placed on your action bars."
			if COMPAT ~= 40400 then
				local warn = "Due Blizzard's macro system restrictions, M6 macros can only be executed |cffffffffusing bindings configured via M6|r."
				local cur, valid = MC:GetAnyBrokeredBarPref()
				if valid and not cur then
					warn = "Brokered macro execution is disabled (use |cff00a0ff/m6 brokered-bars|r to adjust).\n" .. warn
				elseif valid and cur then
					warn = "Brokered macro execution is enabled for supported bars (use |cff00a0ff/m6 brokered-bars|r to adjust).\nM6 macros can also be executed using |cffffffffbindings configured via M6|r."
				end
				local patch = COMPAT > 11e4 and "11.0" or COMPAT > 4e4 and "4.4.1" or "1.15.4"
				menu[1].tooltipText = menu[1].tooltipText .. "\n\n|TInterface/EncounterJournal/UI-EJ-WarningTextIcon:12:12:0:1|t |cffff6000Patch " .. patch .. "+|r\n" .. warn
			end
			menu[2].disabled = not isActive
			EasyMenu(menu, drop, "cursor", 9000, 9000, "MENU", 4)
			DropDownList1:ClearAllPoints()
			DropDownList1:SetPoint("TOPLEFT", self, "TOPRIGHT", 1, 8)
			MacroTooltip:Hide()
		end
	end
	local function Button_OnDrag(self)
		local id = self:GetID()
		if id > 0 and (IsShiftKeyDown() or MC:IsActionActivated(id)) then
			MC:PickupAction(id)
			M:SyncContent()
		end
	end
	local function Button_OnEnter(self)
		local id = self:GetID()
		local name = id == 0 and "Create new macro" or MC:GetActionName(id)
		local group = id ~= 0 and MC:GetActionGroup(id)
		MacroTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT")
		MacroTooltip:AddDoubleLine(name or "Unnamed macro", group or "", nil, nil, nil, 0.60, 0.60, 0.60)
		if id ~= 0 then
			local ecmd, escope, inScope = MC:GetActionExtCommand(id)
			if ecmd then
				MacroTooltip:AddLine("|cffa0a0a0Command:|r |cffffffff/!" .. ecmd .. "|r" .. (not inScope and " |cffc08080(Limited)|r" or escope and " |cffa0f0a0(Limited)|r" or ""), 1,1,1, 1)
			end
			local binding, _, _, bindKey, owned = MC:GetActionBind(id)
			local conditionalBinding = binding and binding:match("%[.-%]()")
			if conditionalBinding and not bindKey then
				MacroTooltip:AddLine("|cffa0a0a0Unmatched conditional binding.")
			elseif binding and bindKey then
				local suf = not owned and " |cffe00000(binding conflict)" or ""
				suf = binding ~= bindKey and " |cff00e800[+]|r" .. suf or suf
				local cc = owned and "ffffff" or "d8d8d8"
				MacroTooltip:AddLine("|cffa0a0a0Bound to:|r |cff" .. cc .. bindKey .. suf)
			elseif binding and not conditionalBinding then
				local suf = not owned and " |cffe00000(binding conflict)" or ""
				local cc = owned and "ffffff" or "d8d8d8"
				MacroTooltip:AddLine("|cffa0a0a0Bound to:|r |cff" .. cc .. binding .. suf)
			end
			local mt, text = MC:GetAction(id)
			if type(text) ~= "string" then
				text = ""
			elseif mt == "imptext" then
				text = (IsAltKeyDown() and IM.DecodeTokens or IM.FormatTokens)(IM, text)
			end
			local pat = "^(" .. ("[^\n]*\n"):rep(20) .. ").+"
			local mt = (text ~= "" and text:gsub(pat, "%1|cff909090[...]") or ("|cff909090" .. L"Blank"))
			if MacroTooltip:NumLines() > 1 then
				MacroTooltip:AddLine(" ")
			end
			MacroTooltip:AddLine(mt, 1,1,1, true)
			local ll = MacroTooltip:NumLines()
			for i=2, #MacroTooltipLeft do
				MacroTooltipLeft[i]:SetNonSpaceWrap(i == ll)
			end
		end
		buttonTooltipOwner = self
		MacroTooltip:Show()
	end
	local function Button_HandlesGlobalMouseEvent(_self, btn)
		return btn == "RightButton"
	end
	local function Button_OnLeave(self)
		if MacroTooltip:IsOwned(self) then
			MacroTooltip:Hide()
		end
	end
	local function CreateButton(p, w)
		local b = CreateFrame("Button", nil, p)
		b:SetSize(w,w)
		b:SetNormalTexture("Interface/Icons/Temp")
		b:GetNormalTexture():SetAlpha(0)
		b.Icon = b:CreateTexture(nil, "BACKGROUND")
		b.Icon:SetPoint("TOPRIGHT", -2, -2)
		b.Icon:SetPoint("BOTTOMLEFT", 2, 2)
		b:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
		b:SetPushedTexture("Interface/Buttons/UI-Quickslot-Depress")
		b:GetPushedTexture():SetAllPoints(b.Icon)
		b:GetHighlightTexture():SetAllPoints(b.Icon)
		b:SetScript("OnClick", Button_OnClick)
		b:SetScript("OnDragStart", Button_OnDrag)
		b:SetScript("OnEnter", Button_OnEnter)
		b:SetScript("OnLeave", Button_OnLeave)
		b.HandlesGlobalMouseEvent = Button_HandlesGlobalMouseEvent
		b:RegisterForClicks("RightButtonUp", "LeftButtonUp")
		b:RegisterForDrag("LeftButton")
		b.border = b:CreateTexture(nil, "OVERLAY")
		b.border:SetAllPoints()
		return b
	end
	MacroTooltip:SetScript("OnShow", function(self)
		self:RegisterEvent("MODIFIER_STATE_CHANGED")
	end)
	MacroTooltip:SetScript("OnHide", function(self)
		self:UnregisterEvent("MODIFIER_STATE_CHANGED")
	end)
	MacroTooltip:SetScript("OnEvent", function(self, _e, mk)
		if (mk == "LALT" or mk == "RALT" or mk == "ALT") and
		   buttonTooltipOwner and self:GetOwner() == buttonTooltipOwner then
			Button_OnEnter(buttonTooltipOwner)
		end
	end)

	local TOTAL_WIDTH, BUTTON_SIZE = slate:GetWidth()-4, 40
	local BUTTONS_PER_ROW = math.floor(TOTAL_WIDTH/(BUTTON_SIZE+2))
	local BUTTON_SPACER = BUTTON_SIZE + math.floor((TOTAL_WIDTH-BUTTON_SIZE*BUTTONS_PER_ROW)/(BUTTONS_PER_ROW-1))
	local BUTTON_LEFT = 2 + (TOTAL_WIDTH - BUTTON_SPACER*(BUTTONS_PER_ROW-1)-BUTTON_SIZE)/2
	bar:SetValueStep(BUTTON_SPACER)
	bar:SetStepsPerPage(5)
	local GROUP_MIX_FILTERS = {all=1, active=1, keybound=1, inactive=1, activex=1, macroex=1}

	M.keys, M.buttons, M.headers = {}, {}, {}
	function M:Reset(resetFilter, newGroup, preserveScroll, _scrollActionID)
		if resetFilter then
			M:SetFilter("all", false)
		elseif not (GROUP_MIX_FILTERS[currentFilter] or MC:GetGroupID(currentFilter)) then
			M:SetFilter(newGroup and MC:GetGroupID(newGroup) or "all", false)
		end
		if preserveScroll ~= true then
			bar:SetValue(0, true)
		end
		M:RefreshView()
	end
	function M:SetFilter(filterKey, callReset)
		mainPanel.FilterButton.Reset:SetShown(filterKey ~= "all")
		if currentFilter ~= filterKey then
			wipe(M.keys)
			currentFilter = filterKey
			if callReset then
				M:Reset()
			end
		end
	end
	function M:GetFilter()
		return currentFilter
	end
	function M:RefreshView()
		local kt = M.keys or {}
		if not kt[1] then
			local o, g, gi = {}, {}, {}
			local isGroupMixFilter = GROUP_MIX_FILTERS[currentFilter]
			for id, name in MC:AllActions() do
				local f, gn, gid = true, MC:GetActionGroup(id)
				if currentFilter == "all" then
					f = true
				elseif currentFilter == "active" then
					f = MC:IsActionActivated(id)
				elseif currentFilter == "keybound" then
					f = not not MC:GetActionBind(id)
				elseif currentFilter == "inactive" then
					f = not (MC:IsActionActivated(id) or MC:GetActionBind(id))
				elseif currentFilter == "activex" or currentFilter == "macroex" then
					local ec, _, inScope = MC:GetActionExtCommand(id)
					f = ec and (currentFilter == "macroex" or inScope)
				else
					f = gid == currentFilter
				end
				if f then
					kt[#kt+1], o[id], gid = id, name, gid or -1
					local ge = gi[gid] or {name=gn or "", gid=gid, active=false, keybound=false}
					ge.active = ge.active or not not MC:IsActionActivated(id)
					ge.keybound = ge.keybound or not not MC:GetActionBind(id)
					g[id], gi[gid] = ge, ge
				end
			end
			table.sort(kt, function(a, b)
				local ac, bc = g[a], g[b]
				if ac == bc then
				elseif ac.active ~= bc.active then
					return ac.active
				elseif ac.keybound ~= bc.keybound then
					return ac.keybound
				elseif ac.name ~= bc.name then
					return strcmputf8i(ac.name, bc.name) < 0
				end
				ac, bc = o[a], o[b]
				if ac and bc then
					return strcmputf8i(ac, bc) < 0
				elseif ac or bc then
					return not bc
				end
				return a < b
			end)

			local bt, gPrev, gOfs, yOfs = M.buttons, nil, 1, 0
			local ht, nhi = M.headers, 1
			for i=1,#kt do
				local sb, id, ge, hs, gn = bt[i], kt[i]
				ge = g[id]
				if not sb then
					sb = CreateButton(slate, BUTTON_SIZE)
					bt[i] = sb
				end
				if ge ~= gPrev then
					gPrev, gOfs, yOfs, gn = ge, i, i > 1 and (yOfs + math.ceil((i-gOfs)/BUTTONS_PER_ROW) * BUTTON_SPACER) or 0, ge.name
					if isGroupMixFilter and (gn ~= "" or i > 1) then
						hs, yOfs = ht[nhi] or slate:CreateFontString(nil, "OVERLAY", "GameFontHighlightMed2"), yOfs + (i > 1 and 6 or 2)
						hs:SetText(gn == "" and "|cffa0a0a0Ungrouped" or gn)
						hs:SetPoint("TOPLEFT", 4, -yOfs)
						ht[nhi], nhi, yOfs = hs, nhi + 1, yOfs + 18
					end
				end
				sb:SetID(id)
				sb:SetPoint("TOPLEFT", BUTTON_LEFT + (i-gOfs) % BUTTONS_PER_ROW * BUTTON_SPACER, -math.floor((i-gOfs)/BUTTONS_PER_ROW) * BUTTON_SPACER - yOfs)
			end
			local ch = (yOfs + math.ceil((#kt+1-gOfs)/BUTTONS_PER_ROW) * BUTTON_SPACER)
			M.keys, slate.contentHeight = kt, ch
			for i=1, #bt do
				bt[i]:SetShown(i <= #kt)
			end
			for i=1, #ht do
				ht[i]:SetShown(i < nhi)
			end
			local vh = sf:GetHeight()
			bar:SetWindowRange(vh)
			bar:SetMinMaxValues(0, math.max(0, ch - vh))
		end
		M:SyncContent()
	end
	function M:SyncContent()
		local bt = M.buttons
		for i=1, #bt do
			local b = bt[i]
			local id = b:IsShown() and b:GetID()
			if id and (id <= 0 or MC:IsActionValid(id)) then
				local showBorder, ico = false, id <= 0 and "Interface/GuildBankFrame/UI-GuildBankFrame-NewTab" or MC:GetActionIcon(id)
				if not ico then
					local _, _, tex = AB:GetActionDescription(MC:GetAction(id))
					ico = tex or "Interface/Icons/INV_Misc_QuestionMark"
				end
				if MC:IsActionActivated(id) then
					b.border:SetAtlas("loottoast-itemborder-blue")
					showBorder = true
				elseif MC:GetActionBind(id) then
					b.border:SetAtlas("loottoast-itemborder-green")
					showBorder = true
				end
				b.border:SetShown(showBorder)
				if type(ico) == "string" and GetFileIDFromPath(ico) == nil then
					b.Icon:SetAtlas(ico)
				else
					b.Icon:SetTexture(ico)
				end
			end
		end
	end
	function M:ReFilter()
		wipe(M.keys)
		M:Reset(false, nil, true)
	end
	function M:ReturnToList(resetFilter)
		editPanel:Hide()
		wipe(M.keys)
		M:Reset(resetFilter)
		sf:Show()
	end
	local function filterUniversalScope(scope)
		return type(scope) == "string" and not (" " .. scope .. " "):match(" ALL ") and scope or nil
	end
	function M:SaveEditor()
		local id, nbox, gbox, mt = editPanel.id, editPanel.nameBox, editPanel.groupNameBox, getEditMacroText()
		if id > 0 then
			MC:SetAction(id, "imptext", mt)
		else
			id = MC:NewAction("imptext", mt)
			editPanel.id = id
		end
		local group, ecmd, ecmdScope = gbox:GetText(), editPanel.extCommandBox:GetText(), editPanel.extCommandLimit.value
		ecmd = ecmd:gsub("^/!", ""):match("^%S+$")
		ecmdScope = ecmd and filterUniversalScope(ecmdScope) or nil
		local forAll, bindEdge, bindComp = ed:GetBindingOptions()
		MC:SetActionBind(id, editPanel.bind.value, forAll, bindEdge, bindComp)
		MC:SetActionIcon(id, editPanel.icon.value)
		MC:SetActionGroup(id, group)
		MC:SetActionExtCommand(id, ecmd, ecmdScope)
		if MC:SetActionName(id, nbox:GetText()) then
			editPanel:Hide()
			clearMacroEditor()
			wipe(M.keys)
			M:Reset(false, group, true, id)
			sf:Show()
		else
			nbox:SetText(MC:GetActionName(id))
			nbox:SetFocus()
		end
	end
	function M:OpenEditor(id)
		editPanel.id = id
		local text, isBindLocal, ico, bind, name, group, ico2, _, globalBind, ecmd, ecmdScope, ecmdInScope = "", true
		local bindEdge, bindComp
		if id > 0 then
			local t, a = MC:GetAction(id)
			if t == "macrotext" or t == "imptext" then
				text = a
			end
			name, group, ico = MC:GetActionName(id), MC:GetActionGroup(id), MC:GetActionIcon(id)
			ecmd, ecmdScope, ecmdInScope = MC:GetActionExtCommand(id)
			bind, isBindLocal, globalBind, _, _, bindEdge, bindComp = MC:GetActionBind(id)
			_, _, ico2 = AB:GetActionDescription(MC:GetAction(id))
		end
		editPanel.id, editPanel.icon.value = id, ico
		setEditMacroText(text)
		editPanel.nameBox:SetText(name or "")
		editPanel.groupNameBox:SetText(group or "")
		editPanel.extCommandBox:SetText(ecmd and "/!" .. ecmd or "")
		editPanel.extCommandLimit:sync(ecmd, ecmdScope, ecmdInScope)
		editPanel.bind:SetBinding(bind)
		local forAll = globalBind and globalBind == bind or not isBindLocal
		ed:SetBindingOptions(forAll, bindEdge, bindComp)
		editPanel.icon:SetIcon(ico, ico2)
		CloseDropDownMenus()
		sf:Hide()
		editPanel:Show()
		if id == 0 then
			editPanel.nameBox:SetFocus()
		end
	end
	function M:NavigateEditor(id)
		if not editPanel:IsShown() or editPanel.id ~= id then
			M:OpenEditor(id)
		end
	end
	function M:ShowEditorModal(f)
		local of = M.curEditorModal
		f:Show()
		M.curEditorModal = f
		if of and of ~= f then
			of:Hide()
		end
		if editPanel.bind.capture then
			editPanel.bind:Deactivate()
		end
	end
	function M:HideEditorModal(f)
		local of = M.curEditorModal
		if f then
			f:Hide()
			M.curEditorModal = of ~= f and of or nil
		elseif of then
			of:Hide()
			M.curEditorModal = nil
		end
	end
	mainPanel:SetScript("OnShow", function()
		M:ReturnToList(true)
		if not MODERN then
			-- SetMask doesn't work on non-visible textures
			mainPanel.portrait:SetMask("Interface/CHARACTERFRAME/TempPortraitAlphaMask")
		end
	end)
	function EV:M6_ACTIVE_SET_CHANGED()
		M:SyncContent()
	end
	function EV:M6_MACRO_EDITED(id)
		if editPanel.id == id and editPanel:IsShown() then
			local t, a = MC:GetAction(id)
			if t == "macrotext" or t == "imptext" then
				setEditMacroText(a)
			end
		end
	end
end

local function copyProfileData(from, method, cmd, desc, oktext)
	local cn, rm, rn, si = from:match("^%s*([^%-%s]+)(%-?)(.-)%s* (%d)%s*$")
	if not si then
		print(YELLOW_FONT_COLOR_CODE .. (L"Syntax: %s %s %s-%s %s"):format(
			SLASH_M61, cmd,
			HIGHLIGHT_FONT_COLOR_CODE .. L"{character name}" .. "|r",
			HIGHLIGHT_FONT_COLOR_CODE .. L"{realm name}" .. "|r",
			HIGHLIGHT_FONT_COLOR_CODE .. L"{specialization index}" .. "|r"
		))
		print(YELLOW_FONT_COLOR_CODE .. "   " .. desc)
		local s, c, r = GetSpecialization(), UnitName("player"), GetRealmName()
		print(YELLOW_FONT_COLOR_CODE .. "   " .. (L"Example: %s %s %s-%s %d"):format(HIGHLIGHT_FONT_COLOR_CODE .. SLASH_M61, cmd, c, r, s))
		return
	end
	local r, c = MC:HasProfile(cn, rm == "-" and rn or nil, si+0)
	if r then
		if M6[method](M6, c, r, si+0) then
			print(YELLOW_FONT_COLOR_CODE .. (oktext):format(HIGHLIGHT_FONT_COLOR_CODE .. c, r .. "|r", HIGHLIGHT_FONT_COLOR_CODE .. si .. "|r"))
		end
	else
		print(YELLOW_FONT_COLOR_CODE .. (c and L"A realm name must be specified." or L"Character/specialization not found."))
	end
end

hooksecurefunc("SetItemRef", function(link)
	local id = tonumber(type(link) == "string" and link:match("^addon:m6:cbind:(%d+)$"))
	if not id then return end
	if not mainPanel:IsShown() then
		mainPanel:ClearAllPoints()
		mainPanel:SetPoint("CENTER")
		mainPanel:Show()
	end
	M:NavigateEditor(id)
	M:ShowConditionalBindingEditor()
end)

T.AddSlashCommandHandler(function()
	mainPanel:SetShown(not mainPanel:IsShown())
	if mainPanel:IsShown() then
		mainPanel:ClearAllPoints()
		mainPanel:SetPoint("CENTER")
		M:ReturnToList(true)
	end
end, "default")
T.AddSlashCommandHandler(function(_, _, ar)
	copyProfileData(ar, "ReplaceProfileMap", "copy-map", L"Changes M6 macro assignments to those used by the specified character.", L"M6 macro asssignments copied from %s-%s (spec %s).")
end, "copy-map", "cm")
T.AddSlashCommandHandler(function(_, _, ar)
	copyProfileData(ar, "ReplaceProfileBindings", "copy-bindings", L"Changes M6 macro bindings to those used by the specified character.", L"M6 macro bindings copied from %s-%s (spec %s).")
end, "copy-bindings", "cb")

local brokerAlias = {
	native="MXB_Native", blizzard="MXB_Native",
	dominos="MXB_Dominos",
	lab10="MXB_LAB10", bartender="MXB_LAB10", elvui="MXB_LAB10",
}
local brokerList = {
	"MXB_Native", MXB_Native="native",
	"MXB_Dominos", MXB_Dominos="dominos",
	"MXB_LAB10", MXB_LAB10="lab10",
}
T.AddSlashCommandHandler(function(_, _, ar)
	local w1, w2 = ar:match("^%s*(%S+)%s*(%S*)")
	local kind = brokerAlias[w1 and w1:lower()]
	if not kind and (w1 == nil or w1 == "on" or w1 == "off") then
		kind, w1, w2 = brokerAlias.native, nil, w1
	end

	local name, cur, valid = brokerList[kind], MC:GetBrokeredBarPref(kind)
	if valid and w2 == "off" then
		MC:SetBrokeredBarPref(kind, false)
		print('|cffffff00M6 ' .. name .. ' bar brokering disabled' .. (InCombatLockdown() and ' (once you are out of combat).' or '.'))
		if DropDownList1:IsVisible() then
			CloseDropDownMenus(1)
		end
	elseif valid and w2 == "on" then
		MC:SetBrokeredBarPref(kind, true)
		print('|cffffff00M6 ' .. name .. ' bar brokering enabled' .. (InCombatLockdown() and ' (once you are out of combat).' or '.'))
		if DropDownList1:IsVisible() then
			CloseDropDownMenus(1)
		end
	else
		local con, coff = '|cff00e800', '|cffffffff'
		if not (w1 and kind and valid) then
			name = nil
			for i=1, #brokerList do
				local active, avail = MC:GetBrokeredBarPref(brokerList[i])
				if avail then
					local cc = active and con or coff
					name = (name and name .. "|r||" or "|r|cffa0a0a0{") .. cc .. brokerList[brokerList[i]]
				end
			end
			if not name then
				return print('|cffffff00M6 bar brokering unavailable.')
			end
			name, con = name .. "|r}", coff
		end
		if not cur then
			con, coff = coff, con
		end
		print(('|cffffff00/m6 brokered-bars ' .. name .. ' |r|cffa0a0a0{%son|r||%soff|r}|r'):format(con, coff))
	end
end, 'brokered-bars', 'bb')