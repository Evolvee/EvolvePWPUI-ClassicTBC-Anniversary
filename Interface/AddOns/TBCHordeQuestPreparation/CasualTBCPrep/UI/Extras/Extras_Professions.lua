CasualTBCPrep = CasualTBCPrep or {}
CasualTBCPrep.Extras_Professions = CasualTBCPrep.Extras_Professions or {}

local commentEngi = { "Engineering Goggles", " ", "Battle Chicken & Flame Turret", "Grenades & Sapper Charges", " ", "Speedrunning", "- Engi boots for speed", "- Dummies for big trash pulls", "- Gnomish Cloaking Device", " ", "Note that Battle Chicken was banned by warcraftlogs last TBC" }
local commentEngiHeal = { "Healing Goggles", " ", "Speedrunning", "- Engi boots for speed", "- Dummies for big pulls", "- Gnomish Cloaking Device", "- Grenades & Sapper Charges for big trash pulls" }
local commentEngiTank = { "Engineering Goggles", " ", "2x +45 Stamina trinkets", "Battle Chicken & Flame Turret", "Grenades & Sapper Charges for AOE threat", " ", "Speedrunning", "- Engi boots for speed", "- Dummies for big trash pulls", "- Gnomish Cloaking Device", " ", "Note that Battle Chicken was banned by warcraftlogs last TBC" }
local commentEngiFeral  = { "Engineering Goggles", " ", "Battle Chicken", " ", "Speedrunning", "  Engi boots for speed", "  Dummies for big pulls", "- Gnomish Cloaking Device", " ", "Cat", "  Sapper Charges for AOE", "  Gnomish Flame Turret", " ", "Bear", "  +45 Stamina Trinket", "  Sapper Charges for AOE when offtanking", " ", "Note that Battle Chicken was banned by warcraftlogs last TBC" }
local commentEnchCaster = { "+12 Spell Damage on rings" }
local commentEnchMelee = { "+2 Weapon Damage on rings", " ", "REMINDER", "+4 Stats on rings is not in Phase 1" }
local commentEnchHeal = { "+20 Healing on rings" }
local commentLwDruidFeral = { "Has some decent crafted items.", " ", "Drums", "Drums are meh and have a casttime until Phase4", "In P4 they can also be used in forms."}
local commentLwHeal = { "Drums for your group", " ", "Windhawk Bracers", "Windhawk Belt", "Windhawk Hauberk", }
local commentTailHeal = { "Primal Mooncloth Robe", "Primal Mooncloth Shoulders", "Primal Mooncloth Belts", " ", "Whitemend Hood (BoE)", "Whitemend Pants (BoE)" }
local commentTailSpellfire = { "Spellfire Robe", "Spellfire Gloves", "Spellfire Belt", " ", "Spellstrike Hood (BoE)", "Spellstrike Pants (Boe)"  }
local commentTailShadoweave = { "Frozen Shadoweave Shoulders", "Frozen Shadoweave Robe", "Frozen Shadoweave Boots", " ", "Spellstrike Hood (BoE)", "Spellstrike Pants (Boe)"  }

local commentBsHunt = { "Mooncleaver (Master Axesmith) is BiS for melee weaving." }
local commentLwHunt = { "Drums for your group", " ", "You NEED the dungeon 4 set bonus, but the Primalstrike items fit in perfectly to allow both pre-raid.", "Primalstrike is not bis and will be replaced" }

local commentClassSharedSpeedrun = "Engineering is (probably) mandatory for serious speedrunning"

local prof = CasualTBCPrep.Professions.PROF
local professionData = {
	[CasualTBCPrep.Classes.MageID] = { comments={ commentClassSharedSpeedrun }, specs={
        { name="Arcane", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.ENCHANTING, comments=commentEnchCaster },
            { id=prof.TAILORING, comments=commentTailSpellfire }
        }},
        { name="Fire", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.ENCHANTING, comments=commentEnchCaster },
            { id=prof.TAILORING, comments=commentTailSpellfire }
        }},
        { name="Frost", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.ENCHANTING, comments=commentEnchCaster },
            { id=prof.TAILORING, comments=commentTailShadoweave }
        }}
	}},
	[CasualTBCPrep.Classes.PriestID] = { comments={ commentClassSharedSpeedrun }, specs={
        { name="Discipline", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngiHeal },
            { id=prof.ENCHANTING, comments=commentEnchHeal },
            { id=prof.TAILORING, comments=commentTailHeal }
        }},
        { name="Holy", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngiHeal },
            { id=prof.ENCHANTING, comments=commentEnchHeal },
            { id=prof.TAILORING, comments=commentTailHeal }
        }},
        { name="Shadow", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.ENCHANTING, comments=commentEnchCaster },
            { id=prof.TAILORING, comments=commentTailShadoweave }
        }}
	}},
	[CasualTBCPrep.Classes.WarlockID] = { comments={ commentClassSharedSpeedrun }, specs={
        { name="Affliction", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.ENCHANTING, comments=commentEnchCaster },
            { id=prof.TAILORING, comments=commentTailShadoweave }
        }},
        { name="Demonology", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.ENCHANTING, comments=commentEnchCaster },
            { id=prof.TAILORING, comments=commentTailShadoweave }
        }},
        { name="Destruction", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.ENCHANTING, comments=commentEnchCaster },
            { id=prof.TAILORING, comments={ "Both 'Shadow' and 'Fire' destruction is viable in Phase1", "Tailoring has a special set for both", "- Spellfire (Fire)", "- Frozen Shadoweave (Shadow)", " ", "Can also craft Spellstrike BoE items" } }
        }}
	}},
	[CasualTBCPrep.Classes.DruidID] = { comments={ commentClassSharedSpeedrun }, specs={
        { name="Restoration", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngiHeal },
            { id=prof.ENCHANTING, comments=commentEnchHeal },
            { id=prof.LEATHERWORKING, comments=commentLwHeal },
            { id=prof.TAILORING, comments=commentTailHeal }
        }},
        { name="Feral", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngiFeral },
            { id=prof.ENCHANTING, comments=commentEnchMelee },
            { id=prof.LEATHERWORKING, comments=commentLwDruidFeral }
        }},
        { name="Balance", comments = {  }, profs={
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.ENCHANTING, comments=commentEnchCaster },
            { id=prof.TAILORING, comments=commentTailSpellfire }
        }}
	}},
	[CasualTBCPrep.Classes.RogueID] = { comments={ commentClassSharedSpeedrun }, specs={
        { name="Combat", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.LEATHERWORKING, comments={ "Drums for your group", " ", "Primalstrike is equal to heroic drops and isn't used in P1 BiS, so it's not worth the price", " ", "Bringing drums is the only thing a rogue brings to a raid, so it's highly recommended to go LW" } },
            { id=prof.BLACKSMITHING, comments={ "In Phase1, Dragonmaw is slightly better than the aldor sword and similar to blinkstrike & PvP weapon.", " ", "In future phases it's also not BiS, but it's good until you get your BiS" } },
        }}
	}},
	[CasualTBCPrep.Classes.HunterID] = { comments={ commentClassSharedSpeedrun, " ", "You may want Enchanting for Phase3, and Jewelcrafting for Phase4" }, specs={
        { name="Beast Mastery", comments = {  }, profs={
            { id=prof.BLACKSMITHING, comments=commentBsHunt },
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.LEATHERWORKING, comments=commentLwHunt }
        }},
        { name="Marksmanship", comments = { }, profs={
            { id=prof.BLACKSMITHING, comments=commentBsHunt },
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.LEATHERWORKING, comments=commentLwHunt }
        }},
        { name="Survival", comments = { }, profs={
            { id=prof.BLACKSMITHING, comments=commentBsHunt },
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.LEATHERWORKING, comments=commentLwHunt }
        }}
	}},
	[CasualTBCPrep.Classes.ShamanID] = { comments={ commentClassSharedSpeedrun }, specs={
		{ name="Elemental", comments = {  }, profs={
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.ENCHANTING, comments=commentEnchCaster },
            { id=prof.LEATHERWORKING, comments={ "Drums for your group", " ", "Netherstrike Breastplate", "Netherstrike Bracers", "Netherstrike Belt" } }
        }},
        { name="Enhancement", comments = { }, profs={
            { id=prof.BLACKSMITHING, comments={ "PvP weapon is great (2.6 speed), but Dragonmaw (2.7) is also good.", " ", "You want your MH and OH to have the same speed, so if you go Dragonmaw, you'll want a 2.7 OH" } },
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.LEATHERWORKING, comments={ "Drums for your group", " ", "Ebon Netherscale Breastplate", "Ebon Netherscale Bracers", "Ebon Netherscale Belt" } }
        }},
        { name="Restoration", comments = { }, profs={
            { id=prof.ENGINEERING, comments=commentEngiHeal },
            { id=prof.ENCHANTING, comments=commentEnchHeal },
            { id=prof.LEATHERWORKING, comments=commentLwHeal },
            { id=prof.TAILORING, comments=commentTailHeal }
        }}
	}},
	[CasualTBCPrep.Classes.WarriorID] = { comments={ commentClassSharedSpeedrun }, specs={
        { name="Arms", comments = { }, profs={
            { id=prof.BLACKSMITHING, comments={ "Lionheart Champion (Master Swordsmith) is BiS in Phase1 for PvE", " ", "Many warriors will go for the mace for PvP, which is still very good in PvE" } },
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.LEATHERWORKING, comments={ "Drums for your group" } }
        }},
        { name="Fury", comments = {  }, profs={
            { id=prof.BLACKSMITHING, comments={ "Dragonmaw is BiS MainHand for Phase1 & 2" } },
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.LEATHERWORKING, comments={ "Drums for your group" } }
        }},
        { name="Protection", comments = { "When the +4 Stats enchant comes out, Enchanting becomes viable " }, profs={
            { id=prof.BLACKSMITHING, comments={ } }, -- Is set in the getter
            { id=prof.ENGINEERING, comments=commentEngiTank },
            { id=prof.LEATHERWORKING, comments={ "Drums for your group" } }
        }}
	}},
	[CasualTBCPrep.Classes.PaladinID] = { comments={ commentClassSharedSpeedrun }, specs={
		{ name="Holy", comments = { "Alchemy trinket is very good in the the last Phase", " ", "Leatherworking & Tailoring items are decent in Phase1, but quickly fall off in value" }, profs={
            { id=prof.ENGINEERING, comments=commentEngiHeal },
            { id=prof.ENCHANTING, comments=commentEnchHeal },
            { id=prof.LEATHERWORKING, comments=commentLwHeal },
            { id=prof.TAILORING, comments=commentTailHeal }
        }},
        { name="Protection", comments = { }, profs={
            { id=prof.ENCHANTING, comments={ "+12 Spell Damage on rings is BIG for threat" } },
            { id=prof.ENGINEERING, comments=commentEngiTank }
        }},
        { name="Retribution", comments = { }, profs={
            { id=prof.BLACKSMITHING, comments={ "Lionheart Champion (Master Swordsmith) is BiS In Phase1 & 2" } },
            { id=prof.ENGINEERING, comments=commentEngi },
            { id=prof.LEATHERWORKING, comments={ "Drums for your group", " ", "You can also make use of some BoP items through the tiers, but none are BiS" } },
        }}
	}},
}
local secondaryProfessions = { prof.COOKING, prof.FIRSTAID, prof.FISHING }
local classProfessions = {
    [CasualTBCPrep.Classes.RogueID] = { prof.LOCKPICKING, prof.POISONS }
}

local commentCook = { "TBC adds daily cooking quests, which will grant various fish/meat for cooking your raid foods cheaper.", "You may also get BoP recipes you can make some money with" }
local commentCookPet = {"TBC adds daily cooking quests, which will grant various fish/meat for cooking your raid foods cheaper.", "You may also get BoP recipes you can make some money with", " ", "One of the recipes is +20 Strength to pets, which you will need!", "It'll be much cheaper to craft yourself early on" }
local commentAid = { "First Aid is always good to have, but TBC has no poison cleansers" }
local commentAidHeals = { "First Aid is always good to have, but TBC has no poison cleansers", " ", "Your class may have self-heals, but bandages costs no mana!" }

local commentFish = { "Required for spawning a boss in the SSC raid in Phase2!", "- 305 minimum, 400+ to avoid missing", " ", "TBC also adds daily fishing quests, which is quick money.", "There's also a chance of getting rare pets, a +15 stamina gem and 'The 2 Ring', a VERY good ring for feral druids", " ", "It doesn't take much effort, and you might hit the jackpot!"}

local secondaryTertiaryClassProfessionComments = {
    [CasualTBCPrep.Classes.MageID] = {
        [prof.COOKING] = commentCook,
        [prof.FIRSTAID] = commentAid,
        [prof.FISHING] = commentFish
    },
    [CasualTBCPrep.Classes.PriestID] = {
        [prof.COOKING] = commentCook,
        [prof.FIRSTAID] = commentAidHeals,
        [prof.FISHING] = commentFish
    },
    [CasualTBCPrep.Classes.WarlockID] = {
        [prof.COOKING] = commentCookPet,
        [prof.FIRSTAID] = commentAid,
        [prof.FISHING] = commentFish
    },
    [CasualTBCPrep.Classes.DruidID] = {
        [prof.COOKING] = commentCook,
        [prof.FIRSTAID] = commentAidHeals,
        [prof.FISHING] = commentFish
    },
    [CasualTBCPrep.Classes.RogueID] = {
        [prof.COOKING] = commentCook,
        [prof.FIRSTAID] = commentAid,
        [prof.FISHING] = commentFish,
        [prof.LOCKPICKING] = { "Your main utility is being able to open lockboxes and locked chests!" },
        [prof.POISONS] = { "You'll use poisons on your off-hand on bosses not immune to nature damage" }
    },
    [CasualTBCPrep.Classes.HunterID] = {
        [prof.COOKING] = commentCookPet,
        [prof.FIRSTAID] = commentAid,
        [prof.FISHING] = commentFish
    },
    [CasualTBCPrep.Classes.ShamanID] = {
        [prof.COOKING] = commentCook,
        [prof.FIRSTAID] = commentAidHeals,
        [prof.FISHING] = commentFish
    },
    [CasualTBCPrep.Classes.WarriorID] = {
        [prof.COOKING] = commentCook,
        [prof.FIRSTAID] = commentAid,
        [prof.FISHING] = commentFish
    },
    [CasualTBCPrep.Classes.PaladinID] = {
        [prof.COOKING] = commentCook,
        [prof.FIRSTAID] = commentAidHeals,
        [prof.FISHING] = commentFish
    },
}

local content, texts = {},{}

---@param parent Frame
---@param width number
---@param alignFrame FontString
---@param yDiff number
---@param professionID number
---@param textColor string
---@param tooltipLines table|nil
---@param currentLevel number
---@return FontString
local function CreateProfessionString(parent, width, alignFrame, yDiff, professionID, textColor, tooltipLines, currentLevel)
    local profName = CasualTBCPrep.Locale.Professions.GetProfessionName(professionID)
    if profName == nil then profName = "Unknown Profession" end
    local profNameColored = textColor..profName.."|r"

    local tooltipHeader = profNameColored
    if currentLevel and currentLevel >= 0 then
        tooltipHeader = textColor..profName.." "..tostring(currentLevel).."/"..tostring(CasualTBCPrep.Professions.MAX_PROF_LEVEL).."|r"
    end

    local txtProf = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    txtProf:SetPoint("CENTER", alignFrame, "CENTER", 0, yDiff)
    txtProf:SetWidth(width)
    txtProf:SetJustifyH("CENTER")
    txtProf:SetText(profNameColored)
    table.insert(texts, txtProf)

    if tooltipLines ~= nil and #tooltipLines > 0 then
        if not(#tooltipLines == 1 and tooltipLines[0] == "") then
            local actualTooltipLines = {}
            for _,tt in ipairs(tooltipLines) do
                table.insert(actualTooltipLines, CasualTBCPrep.CreateZoneText(tt, ""))
            end
            CasualTBCPrep.UI.HookTooltip(txtProf,  tooltipHeader, actualTooltipLines, nil, nil, nil)
        end
    end

    return txtProf
end

---@param frame Frame
function CasualTBCPrep.Extras_Professions.Clean(frame)
	if not frame then return end

	if #texts > 0 then
		for _, fontString in ipairs(texts) do
			fontString:Hide()
			fontString:SetText("")
			fontString:SetSize(0, 0)
			fontString:SetParent(nil)
		end
	end

	if #content > 0 then
		for _, c in ipairs(content) do
			c:Hide()
			c:SetSize(0, 0)
			c:SetParent(nil)
		end
	end

	content = {}
	texts = {}
end

---@param frame Frame
function CasualTBCPrep.Extras_Professions.Load(frame)
	if not frame then return end

	CasualTBCPrep.Extras_Professions.Clean(frame)
	local parent = frame.scrollChild

	local playerClassID = CasualTBCPrep.Classes.GetPlayerClassID()
	local primaryProfs, secondaryProfs, tertiaryProfs = CasualTBCPrep.Professions.GetPlayerProfessions(true, true)

	local profData = professionData[playerClassID]
	if profData == nil then return end

	local className,classColorHex = CasualTBCPrep.Classes.GetClassNameFromID(playerClassID)

	local parentWidth= parent:GetWidth()
    local specCount = #profData.specs
	local columnWidth = parentWidth / specCount
	local specXs = {} -- Needs to work for classes with 1/2 specs shown, so we need to calculate it
    for i=1, #profData.specs do
        specXs[i] = (columnWidth * (i - 1)) - 1
    end

    local classTextColored = "|c"..classColorHex..className.." Professions|r"

	local yPos = -2
	local txtHeaderMain = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
	txtHeaderMain:SetPoint("TOP", parent, "TOP", 0, yPos)
	txtHeaderMain:SetText(classTextColored)
	table.insert(texts, txtHeaderMain)

	yPos = yPos - 30
	local specIndex = 1
	for _, spec in ipairs(profData.specs) do
        local specTextColored = "|c"..classColorHex..spec.name.."|r"
		local txtHeaderSpec = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		txtHeaderSpec:SetPoint("TOPLEFT", parent, "TOPLEFT", specXs[specIndex], yPos)
		txtHeaderSpec:SetWidth(columnWidth)
		txtHeaderSpec:SetJustifyH("CENTER")
		txtHeaderSpec:SetText(specTextColored)
        table.insert(texts, txtHeaderSpec)

        local wrongProfTooltip = { "Not recommended for "..spec.name.." "..className.."s" }
        local usedProfessions = {}
        local specParent = txtHeaderSpec
        local yDiffProf = -18
		for _,prof in ipairs(spec.profs) do
            local currentLevel = -1
            local profTextColor = "";

            for _,playerProf in ipairs(primaryProfs) do
                if prof.id == playerProf.id then
                    currentLevel = playerProf.level
                    if playerProf.level >= CasualTBCPrep.Professions.MAX_PROF_LEVEL then
                        profTextColor = CasualTBCPrep.Themes.SelectedTheme.colors.questReady.hex
                    else
                        profTextColor = CasualTBCPrep.Themes.SelectedTheme.colors.questReadyBanked.hex
                    end
                    break
                end
            end
            if profTextColor == nil or profTextColor == "" then
                profTextColor = CasualTBCPrep.Themes.SelectedTheme.colors.questAvailable.hex
            end

            local tooltipLines = prof.comments
            if #tooltipLines == 0 and playerClassID == CasualTBCPrep.Classes.WarriorID and spec.name == "Protection" and prof.id == CasualTBCPrep.Professions.PROF.BLACKSMITHING then
                local playerRace = UnitRace("player")

                if "orc" == playerRace:lower() then
                    tooltipLines = { "For Orcs, the Thrallmar Exalted axe is Phase1 BiS threat", " ", "As you are an Orc, you won't need blacksmithing for Phase 1" }
                else
                    tooltipLines = { "As a non-orc, the Blacksmithing 1H sword is equal to King's Defender for threat" }
                end

                table.insert(tooltipLines, " ")
                table.insert(tooltipLines, "For mitigation, you also won't need Blacksmithing")
            end
            usedProfessions[prof.id] = true
            specParent = CreateProfessionString(parent, columnWidth, specParent, yDiffProf, prof.id, profTextColor, tooltipLines, currentLevel)
            yDiffProf = -16
		end
        for _,playerProf in ipairs(primaryProfs) do
            if not usedProfessions[playerProf.id] then
                specParent = CreateProfessionString(parent, columnWidth, specParent, yDiffProf, playerProf.id, CasualTBCPrep.Themes.SelectedTheme.colors.questCompleted.hex, wrongProfTooltip, -1)
            end
        end

        if spec.comments ~= nil and #spec.comments > 0 then
            CasualTBCPrep.UI.HookTooltip(txtHeaderSpec, specTextColored, spec.comments, nil,nil,nil)
        end
        specIndex = specIndex+1
	end


    local txtHeaderSecondary = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    txtHeaderSecondary:SetPoint("TOP", txtHeaderMain, "TOP", 0, -140)
    txtHeaderSecondary:SetJustifyH("CENTER")
    txtHeaderSecondary:SetText("|c"..classColorHex.."Secondary Professions|r")
    table.insert(texts, txtHeaderSecondary)

    local finalProfs = {}
    for _,profID in ipairs(secondaryProfessions) do table.insert(finalProfs, profID) end
    local myClassProfs = classProfessions[playerClassID]
    if myClassProfs ~= nil and #myClassProfs > 0 then
        for _,profID in ipairs(myClassProfs) do
            table.insert(finalProfs, profID)
        end
    end

    local playerFinalProfs = {}
    for _,playerProfData in ipairs(secondaryProfs) do table.insert(playerFinalProfs, playerProfData) end
    for _,playerProfData in ipairs(tertiaryProfs) do table.insert(playerFinalProfs, playerProfData) end

    local parentObj = txtHeaderSecondary
    local yDiffProf = -22
	for _,profID in ipairs(finalProfs) do
        local profTextColor = ""
        local currentLevel = -1
        local found = false
        for _,playerProf in ipairs(playerFinalProfs) do
            if profID == playerProf.id then
                found = true
                currentLevel = playerProf.level
                if playerProf.level >= CasualTBCPrep.Professions.MAX_PROF_LEVEL then
                    profTextColor = CasualTBCPrep.Themes.SelectedTheme.colors.questReady.hex
                else
                    profTextColor = CasualTBCPrep.Themes.SelectedTheme.colors.questReadyBanked.hex
                end
                break
            end
            if profTextColor == nil or profTextColor == "" then
                profTextColor = CasualTBCPrep.Themes.SelectedTheme.colors.questAvailable.hex
            end
        end

        local tooltipLines = secondaryTertiaryClassProfessionComments[playerClassID][profID]
        parentObj = CreateProfessionString(parent, columnWidth, parentObj or txtHeaderMain, yDiffProf, profID, profTextColor, tooltipLines, currentLevel)
        yDiffProf = -16
    end

    if profData.comments ~= nil and #profData.comments > 0 then
        CasualTBCPrep.UI.HookTooltip(txtHeaderMain, classTextColored, profData.comments, nil,nil,nil)
    end

    local txtNotice = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    txtNotice:SetPoint("BOTTOM", frame, "BOTTOM", 0, 10)
    txtNotice:SetJustifyH("CENTER")
    txtNotice:SetTextColor(0.7,0.7,0.7,0.8)
    txtNotice:SetText("Info is based on wowhead guides from last TBC and may be wrong!\rIf you think something is wrong or missing, please let us know.")
    table.insert(texts, txtNotice)
end