local addonName, addon = ...
local locaDebuffs = addon.CreateDebuffs()

local container
local isLocked = true

local LOC_TYPE_MAP = {
  ROOT = 1,
  SCHOOL_INTERRUPT = 2,
  DISARM = 2,
  PACIFYSILENCE = 2,
  SILENCE = 2,
  STUN_MECHANIC = 3,
  PACIFY = 3,
  STUN = 4,
  FEAR = 4,
  FEAR_MECHANIC = 4,
  CHARM = 4,
  CONFUSE = 4,
  POSSESS = 4,
}

locaDebuffs.options = {
  type = "group",
  name = "Debuffs",
  args = {
    lock = {
      order = 1,
      name = function() if isLocked then return "Unlock" else return "Lock" end end,
      type = "execute",
      desc = "Unlock/Lock the alerts for movement",
      func = function()
        if isLocked then
          locaDebuffs:Unlock()
        else
          locaDebuffs:Lock()
        end
      end,
      width = 0.5
    },
    test = {
      order = 2,
      name = "Test",
      type = "execute",
      desc = "Shows a fake alert for testing the look",
      func = function()
        locaDebuffs:RunTest()
      end,
      width = 0.5
    },
    break1 = {
      order = 3,
      type = "header",
      name = "Visuals"
    },
    scale = {
      order = 4,
      name = "Scale",
      type = "range",
      min = 0.1,
      max = 3,
      step = 0.1,
      bigStep = 0.1,
      get = function(info) return locaDebuffs:GetScale(info) end,
      set = function(info, val) locaDebuffs:SetScale(info, val) end
    },
    alpha = {
      order = 5,
      name = "Alpha",
      type = "range",
      min = 0.1,
      max = 1,
      step = 0.1,
      bigStep = 0.1,
      get = function(info) return locaDebuffs:GetAlpha(info) end,
      set = function(info, val) locaDebuffs:SetAlpha(info, val) end
    },
    break2 = {
      order = 6,
      type = "header",
      name = ""
    },
    showRedLines = {
      order = 7,
      type = "toggle",
      name = "Show Red Lines",
      width = "full",
      get = function(info) return locaDebuffs.db.showRedLines end,
      set = function(info, val) locaDebuffs:SetShowRedLines(val) end,
    },
    showBackground = {
      order = 8,
      type = "toggle",
      name = "Show Background",
      width = "full",
      get = function(info) return locaDebuffs.db.showBackground end,
      set = function(info, val) locaDebuffs:SetShowBackground(val) end,
    },
    -- The stray "}," was here. It is now removed to keep these in the "args" table.
    debuffCategories = {
      order = 10,
      type = "group",
      name = "Tracked Categories",
      childGroups = "select",
      args = {
        header = {
          order = 1,
          type = "header",
          name = "Tracked Categories"
        },
        description = {
          order = 2,
          type = "description",
          name = "Enable/disable whole categories from being showed"
        },
        break1 = {
          order = 3,
          type = "header",
          name = ""
        },
        root = {
          order = 4,
          type = "toggle",
          name = "Movement/Root",
          get = function(info) return locaDebuffs.db.types[1].active end,
          set = function(info, val) locaDebuffs.db.types[1].active = val end
        },
        silence = {
          order = 5,
          type = "toggle",
          name = "Silence/Disarm",
          get = function(info) return locaDebuffs.db.types[2].active end,
          set = function(info, val) locaDebuffs.db.types[2].active = val end
        },
        stun = {
          order = 6,
          type = "toggle",
          name = "Stun",
          get = function(info) return locaDebuffs.db.types[3].active end,
          set = function(info, val) locaDebuffs.db.types[3].active = val end
        },
        full = {
          order = 7,
          type = "toggle",
          name = "Full",
          get = function(info) return locaDebuffs.db.types[4].active end,
          set = function(info, val) locaDebuffs.db.types[4].active = val end
        }
      }
    },
    debuffList = {
      order = 11,
      type = "group",
      name = "Tracked Debuffs",
      childGroups = "select",
      hidden = function() return locaDebuffs.db.mode ~= "custom" end,
      disabled = function() return locaDebuffs.db.mode ~= "custom" end,
      args = {},
    }
  }
}

local initializedDebuffs = {}
local iconFrame

local TIME_COMPARISON_THRESHOLD = 0.1

function locaDebuffs:OnDebuffsChanged()
  local candidatesForActivation = {}
  local candidateDurations = {}
  
  for i = 1, 20 do
    local name, _, icon, debuffType, duration, expirationTime, _, _, _, spellId = UnitDebuff("player", i)
    if not name then break end

    local durationLeft = expirationTime - GetTime()

    local debuffIcon = initializedDebuffs[name]

    -- check if the debuff is being monitored for alerts
    if debuffIcon and debuffIcon.active then
      table.insert(candidatesForActivation, debuffIcon)
      table.insert(candidateDurations, durationLeft)
    end
  end

  local maxDuration = -1
  local targetIndex = 0
  local maxWeight = 1

  for idx, candidateDuration in ipairs(candidateDurations) do
    local candidateWeight = candidatesForActivation[idx].weight

    if candidateWeight > maxWeight then
      maxDuration = candidateDuration
      targetIndex = idx
      maxWeight = candidateWeight
    elseif candidateWeight == maxWeight then
      if candidateDuration > maxDuration then
        maxDuration = candidateDuration
        targetIndex = idx
        maxWeight = candidateWeight
      end
    end
  end

  locaDebuffs:ActivateNewDebuff(candidatesForActivation[targetIndex], candidateDurations[targetIndex])

end

function locaDebuffs:OnLossOfControlEvent(locData, eventIndex)
  local locType = locData.locType;
  local spellID = locData.spellID;
  local text = locData.displayText;
  local iconTexture = locData.iconTexture;
  local startTime = locData.startTime;
  local timeRemaining = locData.timeRemaining;
  local duration = locData.duration;
  local lockoutSchool = locData.lockoutSchool;
  local priority = locData.priority;
  local displayType = locData.displayType;

  if text then
    if locType == "SCHOOL_INTERRUPT" then
      if lockoutSchool and lockoutSchool ~= 0 then
        text = string.format("%s Locked", GetSchoolString(lockoutSchool));
      end
    end
    
    -- make a fake debuff configuration object
    local debuffConfiguration = {
      spellId = spellID,
      name = text,
      icon = iconTexture,
      weight = priority,
      category = text,
      type = LOC_TYPE_MAP[locType]
    }

    -- in case that there's a missed loctype just use the highest one
    if not debuffConfiguration.type then
      debuffConfiguration.type = 4
    end

    if not iconFrame.active or debuffConfiguration.weight > iconFrame.weight then
      locaDebuffs:ActivateNewDebuff(debuffConfiguration, timeRemaining)
    elseif iconFrame.active and debuffConfiguration.weight == iconFrame.weight and (timeRemaining == nil or timeRemaining > iconFrame.timeLeft) then
      locaDebuffs:ActivateNewDebuff(debuffConfiguration, timeRemaining)
    end
  end
end

function locaDebuffs:OnLossOfControlUpdate(locData)
  if locData then
    if iconFrame.active and locData.spellID ~= iconFrame.spellId then
      locaDebuffs:DeactivateDebuff()
    end
    locaDebuffs:OnLossOfControlEvent(locData)
  else
    locaDebuffs:DeactivateDebuff()
  end
end

function locaDebuffs:LoadPosition()
  if locaDebuffs.db.position then
    container:SetPoint(locaDebuffs.db.position.point, UIParent, locaDebuffs.db.position.relativePoint, locaDebuffs.db.position.xOfs, locaDebuffs.db.position.yOfs)
  else
    container:SetPoint("CENTER", UIParent, "CENTER")
  end
end

function locaDebuffs:SavePosition()
  local point, _, relativePoint, xOfs, yOfs = container:GetPoint()

  if not locaDebuffs.db.position then 
    locaDebuffs.db.position = {}
  end

  locaDebuffs.db.position.point = point
  locaDebuffs.db.position.relativePoint = relativePoint
  locaDebuffs.db.position.xOfs = xOfs
  locaDebuffs.db.position.yOfs = yOfs
end

function locaDebuffs:CreateContainerFrame()
  container = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")
  container:SetMovable(false)
  container:SetWidth(160)
  container:SetBackdrop({
    edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
    edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 },
  })
  container:SetBackdropBorderColor(0.4, 1, 0.4, 0)
  container:SetHeight(50)
  container:SetClampedToScreen(true) 
  container:SetScript("OnMouseDown", function(self, button) if button == "LeftButton" then self:StartMoving() end end)
  container:SetScript("OnMouseUp", function(self, button) if button == "LeftButton" then self:StopMovingOrSizing() locaDebuffs:SavePosition() end end)
  container:EnableMouse(false)
  container:Show()
  container:SetPoint("CENTER", UIParent, "CENTER")
end

function locaDebuffs:UpdateContainer()
  container:SetScale(locaDebuffs.db.scale)
  container:SetAlpha(locaDebuffs.db.alpha)

  --if locaDebuffs.db.showSecondsLabel then
    --iconFrame.secondsText:Show()
  --else
    --iconFrame.secondsText:Hide()
 -- end
  
  if locaDebuffs.db.showRedLines then
    iconFrame.redLineTop:Show()
    iconFrame.redLineBottom:Show()
  else
    iconFrame.redLineTop:Hide()
    iconFrame.redLineBottom:Hide()
  end

  if locaDebuffs.db.showBackground then
    iconFrame.backgroundTexture:Show()
  else
    iconFrame.backgroundTexture:Hide()
  end
end

function locaDebuffs:OnInitialize(db)

  locaDebuffs.db = db

  locaDebuffs:CreateContainerFrame()

  local staleDebuffs = {}

  for index, debuff in ipairs(locaDebuffs.db.debuffsTable) do
    local name, _, spellicon = GetSpellInfo(debuff.spellId)
    debuff.name = name
    debuff.icon = spellicon

    if name then
      initializedDebuffs[name] = debuff
    else
      table.insert(staleDebuffs, index)
    end
  end

  -- remove any old debuff configuration, that is unusable
  for _, indexToRemove in ipairs(staleDebuffs) do
    locaDebuffs.db.debuffsTable[indexToRemove] = nil
  end

  iconFrame = locaDebuffs:CreateIcon()

  locaDebuffs.options.args.debuffList.args = locaDebuffs:CreateDebuffUIList()

  locaDebuffs:OnUpdateSettings()
end

function locaDebuffs:CreateIcon(debuff)
  local btn = CreateFrame("Frame", nil, container)
  btn:SetWidth(40)
  btn:SetHeight(40)
  btn:SetFrameStrata("LOW")
  btn:SetPoint("LEFT", container, "LEFT", 8, 0)

  local cd = CreateFrame("Cooldown", nil, btn, "CooldownFrameTemplate")
  cd.noomnicc = false
  cd.noCooldownCount = false
  cd:SetAllPoints(true)
  cd:SetFrameStrata("LOW")
  cd:SetHideCountdownNumbers(false)
  cd:SetSwipeTexture("Interface\\AddOns\\TextureScript\\Swipe")

  local texture = btn:CreateTexture(nil, "ARTWORK")
  texture:SetAllPoints(true)

  local backgroundTexture = btn:CreateTexture(nil, "BACKGROUND")
  backgroundTexture:SetTexture("Interface\\Cooldown\\LoC-ShadowBG")
  backgroundTexture:SetPoint("BOTTOM", container, "BOTTOM", 0, 0)
  backgroundTexture:SetWidth(160)
  backgroundTexture:SetHeight(50)
  backgroundTexture:SetVertexColor(1, 1, 1, 0.6)

  local redLineTop = btn:CreateTexture(nil, "BACKGROUND")
  redLineTop:SetTexture("Interface\\Cooldown\\Loc-RedLine")
  redLineTop:SetWidth(160)
  redLineTop:SetHeight(27)
  redLineTop:SetPoint("BOTTOM", container, "TOP", 0, 0)

  local redLineBottom = btn:CreateTexture(nil, "BACKGROUND")
  redLineBottom:SetTexture("Interface\\Cooldown\\Loc-RedLine")
  redLineBottom:SetWidth(160)
  redLineBottom:SetHeight(27)
  redLineBottom:SetTexCoord(0, 1, 1, 0)
  redLineBottom:SetPoint("TOP", container, "BOTTOM", 0, 0)

  local debuffTitle = btn:CreateFontString(nil, "ARTWORK")
  debuffTitle:SetFont(STANDARD_TEXT_FONT, 18, "OUTLINE")
  debuffTitle:SetTextColor(1, 1, 0, 1)
  debuffTitle:SetPoint("LEFT", btn, "RIGHT", 6, 8)

  local text = btn:CreateFontString(nil, "ARTWORK")
  text:SetFont(STANDARD_TEXT_FONT, 16, "OUTLINE")
  text:SetTextColor(1, 1, 1, 1)
  text:SetPoint("LEFT", btn, "RIGHT", 6, -10)

  btn.text = text
  btn.textureIcon = texture
  btn.cd = cd
  btn.redLineBottom = redLineBottom
  btn.redLineTop = redLineTop
  btn.debuffTitle = debuffTitle
  btn.backgroundTexture = backgroundTexture

  btn.spellId = 0
  btn.name = ""
  btn.weight = 0
  btn.duration = 0

  btn.activate = function(debuff, timeLeft)
    if btn.active then return end
    
    btn.spellId = debuff.spellId
    btn.name = debuff.name
    btn.weight = debuff.weight
    btn.active = true

    btn.textureIcon:SetTexture(debuff.icon)
    -- COMMENTED OUT: Hide the Spell Name text
    -- btn.debuffTitle:SetText(debuff.category) 
    
    container:SetBackdropColor(0, 0, 0, 0.4)
    btn:Show()
    if timeLeft then
      btn.cd:Show()
      btn.cd:SetCooldown(GetTime(), timeLeft)
      -- COMMENTED OUT: Hide the timer numbers
      -- btn.text:Show() 
      btn.start = GetTime()
      btn.duration = timeLeft
      btn.settimeleft(timeLeft)
      btn:SetScript("OnUpdate", function(self) locaDebuffs:OnUpdateTimer(self) end)
    else
      btn.cd:Hide()
      btn.text:Hide()
    end
  end

  btn.deactivate = function()
    if not btn.active then return end
    container:SetBackdropColor(0, 0, 0, 0)
    btn:Hide()
    btn.text:SetText("")
    btn.cd:Hide()
    btn:SetScript("OnUpdate", nil)
    btn.active = false
  end

  btn.settimeleft = function(timeleft)
    btn.timeLeft = timeleft
    -- COMMENTED OUT: Stop showing/updating the number strings
    -- btn.text:Show()
    -- btn.text:SetFormattedText("%.1f", timeleft)

    if timeleft > 60 then
      btn.text:SetFont(STANDARD_TEXT_FONT, 14, "OUTLINE")
    else
      btn.text:SetFont(STANDARD_TEXT_FONT, 16, "OUTLINE")
    end
  end

  btn:Hide()
  btn:SetPoint("CENTER", container, "CENTER", 0, 0)

  return btn
end

function locaDebuffs:ActivateNewDebuff(newDebuff, durationLeft)
  if not newDebuff then
    locaDebuffs:DeactivateDebuff()
    return
  end

  if not locaDebuffs.db.types[newDebuff.type].active then return end

  if iconFrame.active then
    -- if the spell has the same time remaining or no duration, there's no need to update it
    if iconFrame.spellId == newDebuff.spellId and (not iconFrame.timeLeft or not durationLeft or math.abs(iconFrame.timeLeft - durationLeft) < TIME_COMPARISON_THRESHOLD) then
      return
    end
    locaDebuffs:DeactivateDebuff()
  end

  iconFrame.activate(newDebuff, durationLeft)
end

function locaDebuffs:DeactivateDebuff()
  if iconFrame.active then
    iconFrame.deactivate()
  end
end

function locaDebuffs:OnUpdateTimer(self)
  local cooldown = self.start + self.duration - GetTime()
  if cooldown <= 0 then
    locaDebuffs:DeactivateDebuff()
  else
    self.settimeleft(cooldown)
  end
end

function locaDebuffs:RunTest()
  local name, _, spellicon = GetSpellInfo(8643)

  local testDebuff = {
    spellId = 8643,
    name = name,
    icon = spellicon,
    weight = 3,
    category = "Stunned",
    type = 3
  }

  locaDebuffs:ActivateNewDebuff(testDebuff, 5.9)
end

function locaDebuffs:Unlock()
  isLocked = false
  container:SetBackdropBorderColor(0.4, 1, 0.4, 0.7)
  container:SetMovable(true)
  container:EnableMouse(true)
end

function locaDebuffs:Lock()
  isLocked = true
  container:SetBackdropBorderColor(0.4, 1, 0.4, 0)
  container:EnableMouse(false)
  container:SetMovable(false)
end

function locaDebuffs:GetScale(info)
  return locaDebuffs.db.scale
end

function locaDebuffs:SetScale(info, val)
  locaDebuffs.db.scale = val
  locaDebuffs:UpdateContainer()
end

function locaDebuffs:GetAlpha(info)
  return locaDebuffs.db.alpha
end

function locaDebuffs:SetAlpha(info, val)
  locaDebuffs.db.alpha = val
  locaDebuffs:UpdateContainer()
end

function locaDebuffs:OnUpdateSettings()
  locaDebuffs:LoadPosition()

  locaDebuffs:UpdateContainer()
end

function locaDebuffs:SetShowRedLines(val)
  locaDebuffs.db.showRedLines = val

  locaDebuffs:UpdateContainer()
end

--function locaDebuffs:SetShowSecondsLabel(val)
  --locaDebuffs.db.showSecondsLabel = val
  
  --locaDebuffs:UpdateContainer()
--end

function locaDebuffs:SetShowBackground(val)
  locaDebuffs.db.showBackground = val
  
  locaDebuffs:UpdateContainer()
end

function locaDebuffs:CreateDebuffUIList()
  local debuffListArgs = { }
  local orderNumber = 1

  for _, debuff in ipairs(locaDebuffs.db.debuffsTable) do
    debuffUI = {
      order = orderNumber,
      type = "group",
      name = debuff.name,
      icon = debuff.icon,
      childGroups = "select",
      inline = true,
      args = {
        icon = {
          order = 1,
          type = "description",
          name = debuff.category,
          image = debuff.icon,
        },
        enable = {
          order = 2,
          type = "toggle",
          name = "Enabled",
          get = function(info) return debuff.active end,
          set = function(info, val) debuff.active = val locaDebuffs:NotifyUpdate() end,
        },
        weight = {
          order = 3,
          type = "select",
          name = "Weight",
          desc = "Higher weighted alerts overwrite lower ones",
          values = {
            [1] = "1 - Movement/Root",
            [2] = "2 - Disarm/Silence",
            [3] = "3 - Stun",
            [4] = "4 - Full",
          },
          get = function(info) return debuff.weight end,
          set = function(info, val) debuff.weight = val; locaDebuffs:NotifyUpdate() end
        }
      }
    }

    orderNumber = orderNumber + 1

    debuffListArgs[debuff.name] = debuffUI
  end

  return debuffListArgs
end
