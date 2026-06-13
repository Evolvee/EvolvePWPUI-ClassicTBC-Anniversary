
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["displays"] = {
["Circle Class Frame [WARRIOR]"] = {
["parent"] = "Circle Class Frames (TARGET)",
["preferToUpdate"] = false,
["yOffset"] = 2.43,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["names"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Warrior\" then\n        return true\n    else\n        return false\n    end\nend",
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warrior",
["config"] = {
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARRIOR]",
["authorOptions"] = {
},
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["color"] = {
1,
0.9686274509803922,
0.9725490196078431,
1,
},
["uid"] = "G(TBcTmVwJO",
["width"] = 104,
["frameStrata"] = 4,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
},
["BigDebuffs Auras Nameplate Silences"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["xOffset"] = 65,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["auranames"] = {
"Arcane Torrent",
"Spell Lock",
"Garrote - Silence",
"Silencing Shot",
"Silence",
"Counterspell - Silenced",
"Kick - Silenced",
"Shield Bash - Silenced",
},
["useHostility"] = true,
["subeventPrefix"] = "SPELL",
["ignoreSelf"] = false,
["debuffType"] = "BOTH",
["showClones"] = true,
["useName"] = true,
["useExactSpellId"] = true,
["event"] = "Health",
["unit"] = "nameplate",
["names"] = {
},
["spellIds"] = {
},
["auraspellids"] = {
"43523",
},
["hostility"] = "hostile",
["subeventSuffix"] = "_CAST_START",
["fetchRaidMark"] = false,
["type"] = "aura2",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["type"] = "custom",
["events"] = "TRIGGER:1",
["custom_type"] = "stateupdate",
["check"] = "event",
["unit"] = "player",
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["customTriggerLogic"] = "function(triggers)\nreturn triggers[1] and not triggers[2]\nend",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["version"] = 10,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_text_format_p_time_mod_rate"] = true,
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["text_text_format_p_time_legacy_floor"] = true,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_time_precision"] = 1,
["anchorXOffset"] = 0,
["type"] = "subtext",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_anchorYOffset"] = 0,
["text_fontType"] = "OUTLINE",
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["anchorYOffset"] = 0,
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_text_format_p_format"] = "timed",
},
},
["height"] = 33,
["load"] = {
["use_size"] = false,
["use_never"] = false,
["instance_type"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
["ratedpvp"] = true,
["party"] = true,
["ratedarena"] = true,
["arena"] = true,
["none"] = true,
["pvp"] = true,
},
},
},
["alpha"] = 1,
["useAdjustededMax"] = false,
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["desc"] = "If toggled, the WA will avoid placing icons on totem nameplates.",
["key"] = "avoidTotem",
["useDesc"] = true,
["name"] = "Avoid Totems",
["width"] = 1,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["name"] = "Totem Name (Translated)",
["default"] = "Totem",
["desc"] = "Insert the translated name for the creature type \"Totem\" suitable for your game client (e.g. EN/DE). First letter must be capitalized.",
["key"] = "totem",
["length"] = 10,
["multiline"] = false,
["useLength"] = false,
},
},
["source"] = "import",
["icon"] = true,
["information"] = {
["forceEvents"] = false,
["ignoreOptionsEventErrors"] = false,
},
["displayIcon"] = 136164,
["color"] = {
1,
1,
1,
1,
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["adjustedMax"] = "",
["width"] = 33,
["anchorFrameParent"] = false,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate Silences",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["desc"] = "",
["uid"] = "B6mzuIMg)Ne",
["inverse"] = false,
["cooldownEdge"] = true,
["conditions"] = {
},
["cooldown"] = true,
["parent"] = "Big Auras - Nameplates",
},
["IMMUNE target visual"] = {
["color"] = {
1,
0,
0.07058823529411765,
1,
},
["preferToUpdate"] = false,
["yOffset"] = -16.07,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["useRem"] = false,
["useName"] = true,
["useStacks"] = false,
["useExactSpellId"] = false,
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["unitExists"] = false,
["names"] = {
},
["spellIds"] = {
},
["unit"] = "target",
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["auranames"] = {
"Ice Block",
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["useRem"] = false,
["useName"] = true,
["useStacks"] = false,
["subeventSuffix"] = "_CAST_START",
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["unit"] = "target",
["unitExists"] = false,
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["names"] = {
},
["type"] = "aura2",
["useExactSpellId"] = false,
["auranames"] = {
"Divine Shield",
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["useRem"] = false,
["useName"] = true,
["useStacks"] = false,
["subeventSuffix"] = "_CAST_START",
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["unitExists"] = false,
["names"] = {
},
["spellIds"] = {
},
["unit"] = "target",
["type"] = "aura2",
["useExactSpellId"] = false,
["auranames"] = {
"Cloak of Shadows",
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "any",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 123,
["rotate"] = false,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
[103] = true,
},
},
["use_ignoreNameRealm"] = false,
["class"] = {
["single"] = "PRIEST",
["multi"] = {
["PALADIN"] = true,
["PRIEST"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "BLEND",
["selfPoint"] = "CENTER",
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
["authorOptions"] = {
},
["desc"] = "IMMUNE target highlight texture... (Bubble, Block, Cloak)",
["discrete_rotation"] = 0,
["tocversion"] = 30300,
["id"] = "IMMUNE target visual",
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 2,
["width"] = 255,
["config"] = {
},
["uid"] = "25IZogHGlrc",
["inverse"] = false,
["alpha"] = 1,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 6.4,
},
["Renew Indicator (P2)"] = {
["user_y"] = 0,
["user_x"] = 0,
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 163.0666677474974,
["anchorPoint"] = "CENTER",
["desaturateBackground"] = false,
["sameTexture"] = true,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "aura2",
["auranames"] = {
"Renew",
},
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["subeventSuffix"] = "_CAST_START",
["spellIds"] = {
},
["specificUnit"] = "party2",
["unit"] = "member",
["names"] = {
},
["useName"] = true,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["endAngle"] = 360,
["internalVersion"] = 88,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["alpha"] = 1,
["preferToUpdate"] = false,
["rotation"] = 0,
["font"] = "Friz Quadrata TT",
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
},
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["conditions"] = {
},
["crop_y"] = 0.41,
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["fontSize"] = 12,
["source"] = "import",
["startAngle"] = 0,
["xOffset"] = -670.577845228872,
["desaturateForeground"] = false,
["smoothProgress"] = false,
["useAdjustededMin"] = false,
["regionType"] = "progresstexture",
["auraRotation"] = 0,
["blendMode"] = "BLEND",
["config"] = {
},
["width"] = 30,
["slantMode"] = "INSIDE",
["backgroundColor"] = {
0,
0,
0,
1,
},
["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
["tocversion"] = 30300,
["mirror"] = false,
["compress"] = false,
["id"] = "Renew Indicator (P2)",
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["foregroundColor"] = {
0.06666666666666667,
1,
0,
1,
},
["uid"] = "Cgq2n87sjDi",
["inverse"] = false,
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["orientation"] = "ANTICLOCKWISE",
["crop_x"] = 0.41,
["information"] = {
["forceEvents"] = true,
},
["backgroundOffset"] = 2,
},
["Rogue Nameplate GCD - CLOAK CHECK"] = {
["iconSource"] = -1,
["wagoID"] = "Xb146knOg",
["xOffset"] = -122.5,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "RIGHT",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["custom_type"] = "stateupdate",
["customVariables"] = "",
["event"] = "Health",
["unit"] = "player",
["subeventSuffix"] = "_CAST_START",
["subeventPrefix"] = "SPELL",
["events"] = "UNIT_SPELLCAST_SUCCEEDED:nameplate,NAME_PLATE_UNIT_REMOVED, NAME_PLATE_UNIT_ADDED",
["names"] = {
},
["check"] = "event",
["spellIds"] = {
},
["custom"] = "function(states, event, unitId, _, spellId)\n    -- 1. Basic Validation\n    if not unitId or not spellId then return end\n    \n    -- 2. Cleanup for removed nameplates\n    if event == \"NAME_PLATE_UNIT_REMOVED\" then\n        if states[unitId] then\n            states[unitId].show = false\n            states[unitId].changed = true\n            return true\n        end\n        return\n    end\n    \n    -- 3. Filter: Only Players and only Enemies\n    if not UnitIsPlayer(unitId) or not UnitIsEnemy(\"player\", unitId) then return end\n    \n    -- 4. Filter: Only Rogues (ClassID 4)\n    local _, _, classId = UnitClass(unitId)\n    if classId ~= 4 then return end\n    \n    -- 5. Filter: Only if YOUR Psychic Scream is ready\n    -- 8122 is the Spell ID for Psychic Scream\n    local start, duration = GetSpellCooldown(8122)\n    -- If duration is > 1.5, it's on a real cooldown (not just the GCD)\n    local isReady = (start == 0 or duration <= 1.5) \n    \n    if not isReady then \n        if states[unitId] then\n            states[unitId].show = false\n            states[unitId].changed = true\n            return true\n        end\n        return \n    end\n    \n    -- 6. GCD Logic\n    local _, gcdMS = GetSpellBaseCooldown(spellId)\n    if gcdMS == 0 then return end\n    \n    -- GetSpellInfo varies by WoW version; using indexed returns for compatibility\n    local spellInfo = {GetSpellInfo(spellId)}\n    local icon = spellInfo[3]\n    local castTime = spellInfo[4]\n    \n    -- Ignore spells with actual cast times (we only want instant GCD triggers)\n    if castTime and castTime > 0 then return end\n    \n    -- Since we filtered for Rogues above, we know the GCD is 1 second\n    local durationVal = 1.0\n    local expiration = GetTime() + durationVal\n    \n    states[unitId] = {\n        show = true,\n        changed = true,\n        progressType = \"timed\",\n        duration = durationVal,\n        expirationTime = expiration,\n        autoHide = true,\n        icon = icon,\n        unit = unitId\n    }\n    \n    return true\nend",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "RIGHT",
["desaturate"] = false,
["version"] = 12,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["border_size"] = 2,
["border_offset"] = 0,
["border_color"] = {
0,
0,
0,
1,
},
["border_visible"] = false,
["border_edge"] = "Square Full White",
["type"] = "subborder",
},
{
["text_text_format_p_time_precision"] = 1,
["text_text"] = "%p",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["text_text_format_p_time_legacy_floor"] = true,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_time_mod_rate"] = true,
["type"] = "subtext",
["anchorXOffset"] = 0,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_text_format_p_time_format"] = 0,
["text_shadowYOffset"] = 0,
["text_visible"] = false,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "OUTLINE",
["text_shadowXOffset"] = 0,
["text_text_format_p_format"] = "timed",
["anchor_point"] = "CENTER",
["text_fontSize"] = 12,
["text_text_format_p_time_dynamic_threshold"] = 60,
["anchorYOffset"] = 0,
},
},
["height"] = 33,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["single"] = "arena",
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["cooldownEdge"] = false,
["icon"] = true,
["color"] = {
1,
1,
1,
1,
},
["information"] = {
["forceEvents"] = true,
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["displayIcon"] = 136177,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["uid"] = "Ejn4DxWB7y6",
["anchorFrameParent"] = true,
["width"] = 33,
["alpha"] = 1,
["zoom"] = 0,
["semver"] = "1.0.11",
["tocversion"] = 20502,
["id"] = "Rogue Nameplate GCD - CLOAK CHECK",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "NAMEPLATE",
["cooldownTextDisabled"] = true,
["config"] = {
},
["inverse"] = false,
["adjustedMax"] = "",
["conditions"] = {
},
["cooldown"] = true,
["authorOptions"] = {
},
},
["HEAL"] = {
["iconSource"] = 0,
["parent"] = "Weapon Switches",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -404.4672510670424,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["itemName"] = 32451,
["type"] = "item",
["subeventSuffix"] = "_CAST_START",
["use_itemName"] = true,
["use_genericShowOn"] = true,
["event"] = "Item Equipped",
["names"] = {
},
["unit"] = "player",
["use_itemSetName"] = false,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["use_inverse"] = false,
["genericShowOn"] = "showOnCooldown",
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["type"] = "item",
["itemName"] = 29274,
["subeventSuffix"] = "_CAST_START",
["event"] = "Item Equipped",
["use_genericShowOn"] = true,
["use_itemName"] = true,
["names"] = {
},
["genericShowOn"] = "showOnCooldown",
["use_itemSetName"] = false,
["spellIds"] = {
},
["use_inverse"] = false,
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["itemName"] = 25295,
["type"] = "item",
["subeventSuffix"] = "_CAST_START",
["use_itemName"] = true,
["use_genericShowOn"] = true,
["event"] = "Item Equipped",
["names"] = {
},
["unit"] = "player",
["use_itemSetName"] = false,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["use_inverse"] = false,
["genericShowOn"] = "showOnCooldown",
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["type"] = "subborder",
["border_offset"] = 0,
["border_color"] = {
0,
1,
0.06666666666666667,
1,
},
["border_visible"] = true,
["border_edge"] = "Gladdy Tooltip round",
["border_size"] = 13,
},
},
["height"] = 38,
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["uid"] = "3sMuxA7zFAr",
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
},
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["information"] = {
["forceEvents"] = true,
},
["conditions"] = {
},
["authorOptions"] = {
},
["frameStrata"] = 1,
["width"] = 38,
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 30300,
["id"] = "HEAL",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["xOffset"] = -559.2889633596783,
["config"] = {
},
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\Spell_Holy_GreaterHeal",
["cooldown"] = false,
["preferToUpdate"] = false,
},
["DMG"] = {
["iconSource"] = 0,
["parent"] = "Weapon Switches",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -368.4672510670424,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "item",
["itemName"] = 32963,
["use_inverse"] = false,
["subeventSuffix"] = "_CAST_START",
["use_itemName"] = true,
["use_genericShowOn"] = true,
["event"] = "Item Equipped",
["subeventPrefix"] = "SPELL",
["use_itemSlot"] = false,
["use_itemSetName"] = false,
["spellIds"] = {
},
["names"] = {
},
["genericShowOn"] = "showOnCooldown",
["unit"] = "player",
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["itemName"] = 28781,
["type"] = "item",
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["use_inverse"] = false,
["use_itemName"] = true,
["subeventPrefix"] = "SPELL",
["use_genericShowOn"] = true,
["use_itemSetName"] = false,
["spellIds"] = {
},
["genericShowOn"] = "showOnCooldown",
["names"] = {
},
["event"] = "Item Equipped",
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["type"] = "item",
["itemName"] = 28320,
["subeventSuffix"] = "_CAST_START",
["subeventPrefix"] = "SPELL",
["use_inverse"] = false,
["use_itemName"] = true,
["unit"] = "player",
["event"] = "Item Equipped",
["use_itemSetName"] = false,
["spellIds"] = {
},
["names"] = {
},
["genericShowOn"] = "showOnCooldown",
["use_genericShowOn"] = true,
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["border_offset"] = 0,
["border_size"] = 13,
["border_color"] = {
1,
0,
0.1098039215686275,
1,
},
["border_visible"] = true,
["border_edge"] = "Gladdy Tooltip round",
["type"] = "subborder",
},
},
["height"] = 38,
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["config"] = {
},
["authorOptions"] = {
},
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\Spell_Shadow_Shadowform",
["xOffset"] = -559.2889633596783,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 30300,
["id"] = "DMG",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["width"] = 38,
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["uid"] = "SgRlvCFFHuQ",
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["preferToUpdate"] = false,
},
["Stealth Effect BOTTOM"] = {
["wagoID"] = "wdib4Sz3Z",
["parent"] = "Invis additional visual",
["preferToUpdate"] = false,
["yOffset"] = -50,
["anchorPoint"] = "CENTER",
["url"] = "",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["useName"] = false,
["useExactSpellId"] = true,
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["auraspellids"] = {
"66",
},
["auranames"] = {
"1787",
"58984",
"305628",
"115191",
},
["names"] = {
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["version"] = 2,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 1100,
["rotate"] = true,
["load"] = {
["use_petbattle"] = false,
["use_never"] = true,
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
["race"] = {
["single"] = "NightElf",
},
["use_race"] = true,
["use_zone"] = false,
["class"] = {
["single"] = "ROGUE",
["multi"] = {
["DRUID"] = true,
["ROGUE"] = true,
},
},
["use_spellknown"] = false,
["spellknown"] = 5215,
["zoneIds"] = "",
},
["textureWrapMode"] = "CLAMP",
["source"] = "import",
["mirror"] = false,
["regionType"] = "texture",
["blendMode"] = "ADD",
["width"] = 1960,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\6TJ_Polluted_mist_Stormy",
["authorOptions"] = {
},
["color"] = {
1,
0,
0.05490196078431373,
1,
},
["semver"] = "1.0.1",
["tocversion"] = 30300,
["id"] = "Stealth Effect BOTTOM",
["animation"] = {
["start"] = {
["colorR"] = 1,
["scalex"] = 1,
["alphaType"] = "custom",
["colorA"] = 1,
["colorG"] = 1,
["alphaFunc"] = "function(progress, start, delta)\n    return start + (progress * delta)\nend\n",
["use_translate"] = false,
["use_alpha"] = false,
["type"] = "preset",
["easeType"] = "none",
["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    return startX + (progress * deltaX), startY + (progress * deltaY)\nend\n",
["scaley"] = 1,
["alpha"] = 0,
["y"] = -200,
["x"] = 0,
["colorB"] = 1,
["preset"] = "grow",
["easeStrength"] = 3,
["rotate"] = 0,
["translateType"] = "straightTranslate",
["duration_type"] = "seconds",
},
["main"] = {
["type"] = "preset",
["easeType"] = "none",
["easeStrength"] = 3,
["preset"] = "pulse",
["duration_type"] = "seconds",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["easeStrength"] = 3,
["preset"] = "grow",
["duration_type"] = "seconds",
},
},
["frameStrata"] = 2,
["anchorFrameType"] = "SCREEN",
["uid"] = "kBbzhHWQpyL",
["config"] = {
},
["alpha"] = 1,
["xOffset"] = 0,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["discrete_rotation"] = 0,
},
["Circle Class Frame [PRIEST]"] = {
["parent"] = "Circle Class Frames (TARGET)",
["preferToUpdate"] = false,
["yOffset"] = 2.43,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["events"] = "PLAYER_TARGET_CHANGED",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Priest\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Priest",
["frameStrata"] = 4,
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PRIEST]",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["authorOptions"] = {
},
["uid"] = "QqN00qtyjy)",
["config"] = {
},
["width"] = 104,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["color"] = {
1,
0.9568627450980391,
0.9607843137254902,
1,
},
},
["Circle Class Frame [WARLOCK]"] = {
["xOffset"] = 58.9998779296875,
["preferToUpdate"] = false,
["yOffset"] = 2.433349609375,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["names"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Warlock\" then\n        return true\n    else\n        return false\n    end\nend",
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warlock",
["frameStrata"] = 4,
["color"] = {
0.9882352941176471,
1,
0.9803921568627451,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARLOCK]",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["width"] = 104,
["authorOptions"] = {
},
["uid"] = "B95Gb9Dolel",
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["parent"] = "Circle Class Frames (TARGET)",
},
["Circle Class Frame [DRUID] 2"] = {
["parent"] = "Circle Class Frames (FOCUS)",
["preferToUpdate"] = false,
["yOffset"] = 1.896666603088379,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["names"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Druid\" then\n        return true\n    else\n        return false\n    end\nend",
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "FocusFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Druid",
["config"] = {
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [DRUID] 2",
["authorOptions"] = {
},
["alpha"] = 1,
["width"] = 104,
["color"] = {
0.984313725490196,
0.9725490196078431,
1,
1,
},
["uid"] = "qMfPEvSCtq7",
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 4,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["selfPoint"] = "CENTER",
},
["Circle Class Frame [DRUID]"] = {
["parent"] = "Circle Class Frames (TARGET)",
["preferToUpdate"] = false,
["yOffset"] = 2.43,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["events"] = "PLAYER_TARGET_CHANGED",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Druid\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Druid",
["frameStrata"] = 4,
["color"] = {
0.984313725490196,
0.9725490196078431,
1,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [DRUID]",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["alpha"] = 1,
["width"] = 104,
["authorOptions"] = {
},
["uid"] = "XZST3pUQSTa",
["config"] = {
},
["anchorFrameType"] = "SELECTFRAME",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
},
["DOUBLE PENE"] = {
["iconSource"] = 0,
["parent"] = "Weapon Switches",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -368.4005842732191,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["itemName"] = 34066,
["type"] = "item",
["subeventSuffix"] = "_CAST_START",
["use_itemName"] = true,
["use_inverse"] = false,
["genericShowOn"] = "showOnCooldown",
["unit"] = "player",
["names"] = {
},
["use_itemSetName"] = false,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["use_genericShowOn"] = true,
["event"] = "Item Equipped",
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
},
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["border_size"] = 13,
["type"] = "subborder",
["border_color"] = {
0.996078431372549,
0,
1,
1,
},
["border_visible"] = true,
["border_edge"] = "Gladdy Tooltip round",
["border_offset"] = 0,
},
{
["glowFrequency"] = 0.25,
["glow"] = true,
["useGlowColor"] = false,
["glowType"] = "Proc",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["type"] = "subglow",
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glowDuration"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 39.5,
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["config"] = {
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["selfPoint"] = "CENTER",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\Ability_Rogue_Ambush",
["authorOptions"] = {
},
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 30300,
["id"] = "DOUBLE PENE",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["width"] = 39.5,
["xOffset"] = -631.355630058134,
["uid"] = "uFZOZ)OYPOV",
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["preferToUpdate"] = false,
},
["IMMUNE focus visual"] = {
["xOffset"] = 6.399999952316285,
["preferToUpdate"] = false,
["yOffset"] = -16.06666679382324,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["useRem"] = false,
["useName"] = true,
["useStacks"] = false,
["useExactSpellId"] = false,
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["unit"] = "focus",
["unitExists"] = false,
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["names"] = {
},
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["auranames"] = {
"Ice Block",
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["useRem"] = false,
["useName"] = true,
["useStacks"] = false,
["useExactSpellId"] = false,
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["unitExists"] = false,
["names"] = {
},
["spellIds"] = {
},
["unit"] = "focus",
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["auranames"] = {
"Divine Shield",
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["useRem"] = false,
["useName"] = true,
["useStacks"] = false,
["useExactSpellId"] = false,
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["names"] = {
},
["unitExists"] = false,
["unit"] = "focus",
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["auranames"] = {
"Cloak of Shadows",
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "any",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 123,
["rotate"] = false,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
[103] = true,
},
},
["use_ignoreNameRealm"] = false,
["class"] = {
["single"] = "PRIEST",
["multi"] = {
["PALADIN"] = true,
["PRIEST"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "FocusFrame",
["regionType"] = "texture",
["blendMode"] = "BLEND",
["desc"] = "IMMUNE focus highlight texture... (Cloak, Bubble, Block)",
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
["authorOptions"] = {
},
["discrete_rotation"] = 0,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["tocversion"] = 30300,
["id"] = "IMMUNE focus visual",
["width"] = 255,
["frameStrata"] = 2,
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["uid"] = "9BBiT8OblIu",
["inverse"] = false,
["alpha"] = 1,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["color"] = {
1,
0.00784313725490196,
0,
1,
},
},
["Circle Class Frames (FOCUS)"] = {
["controlledChildren"] = {
"Circle Class Frame [WARLOCK] 2",
"Circle Class Frame [MAGE] 2",
"Circle Class Frame [DRUID] 2",
"Circle Class Frame [WARRIOR] 2",
"Circle Class Frame [ROGUE] 2",
"Circle Class Frame [HUNTER] 2",
"Circle Class Frame [PRIEST] 2",
"Circle Class Frame [PALADIN] 2",
"Circle Class Frame [SHAMAN] 2",
},
["borderBackdrop"] = "Blizzard Tooltip",
["authorOptions"] = {
},
["preferToUpdate"] = false,
["groupIcon"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["anchorPoint"] = "CENTER",
["borderColor"] = {
0,
0,
0,
1,
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["names"] = {
},
["event"] = "Health",
["subeventPrefix"] = "SPELL",
},
["untrigger"] = {
},
},
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["subRegions"] = {
},
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["backdropColor"] = {
1,
1,
1,
0.5,
},
["source"] = "import",
["scale"] = 1,
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "group",
["borderSize"] = 2,
["borderOffset"] = 4,
["borderInset"] = 1,
["tocversion"] = 30300,
["id"] = "Circle Class Frames (FOCUS)",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["yOffset"] = 0,
["uid"] = "9Lcfb1CqjxZ",
["config"] = {
},
["alpha"] = 1,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 0,
},
["Circle Class Frame [PALADIN] 2"] = {
["color"] = {
1,
0.9254901960784314,
0.9607843137254902,
1,
},
["preferToUpdate"] = false,
["yOffset"] = 1.9,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Paladin\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_FOCUS_CHANGED",
["spellIds"] = {
},
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "FocusFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Paladin",
["alpha"] = 1,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PALADIN] 2",
["authorOptions"] = {
},
["frameStrata"] = 4,
["width"] = 104,
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["xOffset"] = 59,
["uid"] = "hZI1fzlp1If",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["parent"] = "Circle Class Frames (FOCUS)",
},
["Stealth Effect TOP"] = {
["wagoID"] = "wdib4Sz3Z",
["parent"] = "Invis additional visual",
["preferToUpdate"] = false,
["yOffset"] = 260,
["anchorPoint"] = "CENTER",
["url"] = "",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["useName"] = false,
["useExactSpellId"] = true,
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["auraspellids"] = {
"66",
},
["auranames"] = {
"1787",
"58984",
"305628",
"115191",
},
["names"] = {
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 180,
["version"] = 2,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 1100,
["rotate"] = true,
["load"] = {
["size"] = {
["multi"] = {
},
},
["race"] = {
["single"] = "NightElf",
},
["use_never"] = true,
["talent"] = {
["multi"] = {
},
},
["use_race"] = true,
["spec"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "ROGUE",
["multi"] = {
["ROGUE"] = true,
},
},
["zoneIds"] = "",
},
["textureWrapMode"] = "CLAMP",
["source"] = "import",
["mirror"] = false,
["regionType"] = "texture",
["blendMode"] = "ADD",
["width"] = 1960,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\6TJ_Polluted_mist_Stormy",
["authorOptions"] = {
},
["color"] = {
0,
0.8196078431372549,
1,
1,
},
["semver"] = "1.0.1",
["tocversion"] = 30300,
["id"] = "Stealth Effect TOP",
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["easeStrength"] = 3,
["preset"] = "grow",
["duration_type"] = "seconds",
},
["main"] = {
["type"] = "preset",
["easeType"] = "none",
["easeStrength"] = 3,
["preset"] = "pulse",
["duration_type"] = "seconds",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["easeStrength"] = 3,
["preset"] = "grow",
["duration_type"] = "seconds",
},
},
["frameStrata"] = 2,
["anchorFrameType"] = "SCREEN",
["uid"] = "f8VXnRZI0Jd",
["config"] = {
},
["alpha"] = 1,
["xOffset"] = 0,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["discrete_rotation"] = 0,
},
["BigDebuffs Auras Nameplate Defensives"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["xOffset"] = 65,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["showClones"] = true,
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["useName"] = true,
["hostility"] = "hostile",
["useHostility"] = true,
["names"] = {
},
["auranames"] = {
"Nature's Swiftness",
"Divine Protection",
"Blessing of Protection",
"Fel Domination",
"Spell Reflection",
},
["event"] = "Health",
["ignoreSelf"] = false,
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["unit"] = "nameplate",
["fetchRaidMark"] = false,
["debuffType"] = "BOTH",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["type"] = "custom",
["events"] = "TRIGGER:1",
["custom_type"] = "stateupdate",
["check"] = "event",
["unit"] = "player",
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["customTriggerLogic"] = "function(triggers)\nreturn triggers[1] and not triggers[2]\nend",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["version"] = 10,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_text_format_p_time_mod_rate"] = true,
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["text_text_format_p_time_legacy_floor"] = true,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_time_precision"] = 1,
["anchorXOffset"] = 0,
["type"] = "subtext",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_anchorYOffset"] = 0,
["text_fontType"] = "OUTLINE",
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["anchorYOffset"] = 0,
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_text_format_p_format"] = "timed",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "ACShine",
["glowThickness"] = 1,
["glowYOffset"] = 0,
["glowColor"] = {
1,
0.039215687662363,
0,
1,
},
["useGlowColor"] = true,
["glowXOffset"] = 0,
["glowLength"] = 10,
["glow"] = false,
["glowScale"] = 1.55,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 33,
["load"] = {
["use_size"] = false,
["use_never"] = false,
["instance_type"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
["ratedpvp"] = true,
["party"] = true,
["ratedarena"] = true,
["arena"] = true,
["none"] = true,
["pvp"] = true,
},
},
},
["alpha"] = 1,
["useAdjustededMax"] = false,
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["desc"] = "If toggled, the WA will avoid placing icons on totem nameplates.",
["key"] = "avoidTotem",
["useDesc"] = true,
["name"] = "Avoid Totems",
["width"] = 1,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["name"] = "Totem Name (Translated)",
["default"] = "Totem",
["desc"] = "Insert the translated name for the creature type \"Totem\" suitable for your game client (e.g. EN/DE). First letter must be capitalized.",
["key"] = "totem",
["length"] = 10,
["multiline"] = false,
["useLength"] = false,
},
},
["source"] = "import",
["icon"] = true,
["information"] = {
["forceEvents"] = false,
["ignoreOptionsEventErrors"] = false,
},
["displayIcon"] = 132362,
["color"] = {
1,
1,
1,
1,
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["adjustedMax"] = "",
["width"] = 33,
["anchorFrameParent"] = false,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate Defensives",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["desc"] = "",
["uid"] = "dxtWOmUuakE",
["inverse"] = false,
["cooldownEdge"] = true,
["conditions"] = {
{
["check"] = {
["trigger"] = -2,
["op"] = "==",
["variable"] = "OR",
["checks"] = {
{
["trigger"] = 1,
["op"] = "==",
["variable"] = "name",
["value"] = "Retaliation",
},
{
["trigger"] = 1,
["op"] = "==",
["variable"] = "name",
["value"] = "Thorns",
},
},
},
["changes"] = {
{
["value"] = true,
["property"] = "sub.3.glow",
},
},
},
},
["cooldown"] = true,
["parent"] = "Big Auras - Nameplates",
},
["Shadowfiend Duration"] = {
["iconSource"] = 1,
["xOffset"] = 66.9333333015442,
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0.06666679382324214,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "combatlog",
["spellId"] = {
"34433",
},
["subeventSuffix"] = "_CAST_SUCCESS",
["duration"] = "15.5",
["event"] = "Combat Log",
["names"] = {
},
["use_spellId"] = true,
["spellIds"] = {
},
["use_sourceUnit"] = true,
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["sourceUnit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["useTooltip"] = false,
["keepAspectRatio"] = false,
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
},
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_text_format_p_time_format"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%p",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["text_text_format_p_format"] = "Number",
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_time_dynamic_threshold"] = 12,
["text_text_format_p_pad"] = false,
["text_text_format_p_decimal_precision"] = 0,
["type"] = "subtext",
["text_text_format_p_time_precision"] = 1,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_text_format_p_pad_mode"] = "left",
["text_shadowYOffset"] = 0,
["text_shadowXOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["text_fontType"] = "OUTLINE",
["text_text_format_p_pad_max"] = 8,
["anchor_point"] = "INNER_BOTTOMRIGHT",
["text_fontSize"] = 20,
["anchorXOffset"] = 0,
["text_text_format_p_round_type"] = "floor",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowThickness"] = 1,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowLength"] = 10,
["useGlowColor"] = false,
["glow"] = false,
["glowXOffset"] = 0,
["glowScale"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["icon"] = true,
["uid"] = "lkGdLzT6(7M",
["preferToUpdate"] = false,
["color"] = {
1,
1,
1,
0,
},
["anchorFrameFrame"] = "PetFrame",
["regionType"] = "icon",
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\Spell_Shadow_Shadowfiend",
["selfPoint"] = "CENTER",
["progressSource"] = {
-1,
"",
},
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 1,
["zoom"] = 0.2099999934434891,
["cooldownTextDisabled"] = false,
["tocversion"] = 30300,
["id"] = "Shadowfiend Duration",
["useCooldownModRate"] = true,
["alpha"] = 1,
["width"] = 30,
["internalVersion"] = 88,
["config"] = {
},
["inverse"] = false,
["useAdjustededMin"] = false,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["authorOptions"] = {
},
},
["Big Auras - Nameplates"] = {
["grow"] = "RIGHT",
["controlledChildren"] = {
"BigDebuffs Auras Nameplate Others",
"BigDebuffs Auras Nameplate CC",
"BigDebuffs Auras Nameplate Full Immunities",
"BigDebuffs Auras Nameplate Anti-CC",
"BigDebuffs Auras Nameplate Silences",
"BigDebuffs Spell Lockout Nameplate - Custom",
"BigDebuffs Auras Nameplate Defensives",
},
["borderBackdrop"] = "Blizzard Tooltip",
["wagoID"] = "6s7KYePbG",
["xOffset"] = 0,
["preferToUpdate"] = false,
["yOffset"] = 30,
["sortHybridTable"] = {
["BigDebuffs Auras Nameplate Anti-CC"] = false,
["BigDebuffs Auras Nameplate Others"] = false,
["BigDebuffs Auras Nameplate CC"] = false,
["BigDebuffs Spell Lockout Nameplate - Custom"] = false,
["BigDebuffs Auras Nameplate Full Immunities"] = false,
["BigDebuffs Auras Nameplate Silences"] = false,
["BigDebuffs Auras Nameplate Defensives"] = false,
},
["stepAngle"] = 15,
["alpha"] = 1,
["fullCircle"] = true,
["useAnchorPerUnit"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["unit"] = "player",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["subeventPrefix"] = "SPELL",
["names"] = {
},
["event"] = "Health",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
},
["columnSpace"] = 1,
["radius"] = 200,
["space"] = 2,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["align"] = "CENTER",
["anchorPoint"] = "CENTER",
["rowSpace"] = 1,
["useLimit"] = false,
["stagger"] = 0,
["selfPoint"] = "LEFT",
["version"] = 10,
["subRegions"] = {
},
["gridType"] = "RD",
["uid"] = "0TEhRYjgHh8",
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["authorOptions"] = {
},
["backdropColor"] = {
1,
1,
1,
0.5,
},
["arcLength"] = 360,
["source"] = "import",
["frameStrata"] = 2,
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "dynamicgroup",
["borderSize"] = 2,
["anchorPerUnit"] = "NAMEPLATE",
["borderInset"] = 1,
["sort"] = "none",
["constantFactor"] = "RADIUS",
["limit"] = 4,
["borderOffset"] = 4,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "Big Auras - Nameplates",
["animate"] = false,
["gridWidth"] = 5,
["anchorFrameType"] = "SCREEN",
["groupIcon"] = 136221,
["config"] = {
},
["borderColor"] = {
0,
0,
0,
1,
},
["rotation"] = 0,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["internalVersion"] = 88,
},
["Circle Class Frame [PALADIN]"] = {
["parent"] = "Circle Class Frames (TARGET)",
["preferToUpdate"] = false,
["yOffset"] = 2.43,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["names"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Paladin\" then\n        return true\n    else\n        return false\n    end\nend",
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Paladin",
["config"] = {
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PALADIN]",
["authorOptions"] = {
},
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["color"] = {
1,
0.9254901960784314,
0.9607843137254902,
1,
},
["uid"] = "rIoSAeOj6u0",
["width"] = 104,
["frameStrata"] = 4,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
},
["Circle Class Frame [ROGUE] 2"] = {
["color"] = {
1,
0.8823529411764706,
0,
1,
},
["preferToUpdate"] = false,
["yOffset"] = 1.9,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["names"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Rogue\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "FocusFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Rogue",
["anchorFrameType"] = "SELECTFRAME",
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [ROGUE] 2",
["authorOptions"] = {
},
["frameStrata"] = 4,
["width"] = 104,
["parent"] = "Circle Class Frames (FOCUS)",
["config"] = {
},
["uid"] = "u(LrEvkDJ3l",
["alpha"] = 1,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["selfPoint"] = "CENTER",
},
["BigDebuffs Auras Nameplate Anti-CC"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["color"] = {
1,
1,
1,
1,
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = true,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["auranames"] = {
"Cloak of Shadows",
},
["useHostility"] = true,
["subeventPrefix"] = "SPELL",
["ignoreSelf"] = false,
["debuffType"] = "BOTH",
["showClones"] = true,
["useName"] = true,
["useExactSpellId"] = false,
["event"] = "Health",
["unit"] = "nameplate",
["names"] = {
},
["spellIds"] = {
},
["auraspellids"] = {
},
["hostility"] = "hostile",
["subeventSuffix"] = "_CAST_START",
["fetchRaidMark"] = false,
["type"] = "aura2",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["type"] = "custom",
["events"] = "TRIGGER:1",
["custom_type"] = "stateupdate",
["check"] = "event",
["unit"] = "player",
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["customTriggerLogic"] = "function(triggers)\nreturn triggers[1] and not triggers[2]\nend",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desc"] = "",
["version"] = 10,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_text_format_p_time_mod_rate"] = true,
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["text_text_format_p_time_legacy_floor"] = true,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_time_precision"] = 1,
["anchorXOffset"] = 0,
["type"] = "subtext",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_anchorYOffset"] = 0,
["text_fontType"] = "OUTLINE",
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["anchorYOffset"] = 0,
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_text_format_p_format"] = "timed",
},
{
["glowFrequency"] = 0.25,
["glow"] = true,
["useGlowColor"] = true,
["glowType"] = "Proc",
["glowLength"] = 10,
["type"] = "subglow",
["glowYOffset"] = 0,
["glowColor"] = {
1,
0,
0.007843137718737125,
1,
},
["glowStartAnim"] = false,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glowDuration"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 33,
["load"] = {
["use_size"] = false,
["use_never"] = false,
["instance_type"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
["ratedpvp"] = true,
["party"] = true,
["ratedarena"] = true,
["arena"] = true,
["none"] = true,
["pvp"] = true,
},
},
},
["alpha"] = 1,
["useAdjustededMax"] = false,
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["desc"] = "If toggled, the WA will avoid placing icons on totem nameplates.",
["key"] = "avoidTotem",
["useDesc"] = true,
["name"] = "Avoid Totems",
["width"] = 1,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["name"] = "Totem Name (Translated)",
["default"] = "Totem",
["desc"] = "Insert the translated name for the creature type \"Totem\" suitable for your game client (e.g. EN/DE). First letter must be capitalized.",
["key"] = "totem",
["length"] = 10,
["multiline"] = false,
["useLength"] = false,
},
},
["source"] = "import",
["keepAspectRatio"] = false,
["information"] = {
["forceEvents"] = false,
["ignoreOptionsEventErrors"] = false,
},
["displayIcon"] = 136177,
["selfPoint"] = "CENTER",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["xOffset"] = 65,
["width"] = 33,
["anchorFrameParent"] = false,
["parent"] = "Big Auras - Nameplates",
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate Anti-CC",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["desaturate"] = false,
["uid"] = "4FnrjM5ApOi",
["inverse"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
["finish"] = {
},
},
["conditions"] = {
},
["cooldown"] = true,
["url"] = "",
},
["PW: Shield (Self indicator)"] = {
["xOffset"] = -23.88891101596016,
["preferToUpdate"] = false,
["yOffset"] = -404.9558712188952,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["unit"] = "player",
["auranames"] = {
"Weakened Soul",
},
["names"] = {
},
["useName"] = true,
["debuffType"] = "HARMFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
},
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 36,
["rotate"] = false,
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["mirror"] = false,
["regionType"] = "texture",
["blendMode"] = "BLEND",
["texture"] = "Interface\\Addons\\TextureScript\\Swipe",
["config"] = {
},
["authorOptions"] = {
},
["tocversion"] = 30300,
["id"] = "PW: Shield (Self indicator)",
["color"] = {
1,
0,
0.09803921568627451,
0.5200000107288361,
},
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["selfPoint"] = "CENTER",
["uid"] = "(gJ6REEYYRb",
["width"] = 36,
["frameStrata"] = 6,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["discrete_rotation"] = 0,
},
["Renew Indicator (P1)"] = {
["user_y"] = 0,
["user_x"] = 0,
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 274.7221802933405,
["anchorPoint"] = "CENTER",
["desaturateBackground"] = false,
["sameTexture"] = true,
["desaturateForeground"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["auranames"] = {
"Renew",
},
["spellIds"] = {
},
["specificUnit"] = "party1",
["useName"] = true,
["names"] = {
},
["unit"] = "member",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["endAngle"] = 360,
["internalVersion"] = 88,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
},
["frameStrata"] = 1,
["xOffset"] = -670.577845228872,
["rotation"] = 0,
["font"] = "Friz Quadrata TT",
["preferToUpdate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["crop_x"] = 0.41,
["crop_y"] = 0.41,
["backgroundColor"] = {
0,
0,
0,
1,
},
["useAdjustededMax"] = false,
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["source"] = "import",
["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["smoothProgress"] = false,
["useAdjustededMin"] = false,
["regionType"] = "progresstexture",
["config"] = {
},
["blendMode"] = "BLEND",
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["width"] = 30,
["slantMode"] = "INSIDE",
["startAngle"] = 0,
["mirror"] = false,
["tocversion"] = 30300,
["uid"] = "j1rhGb4pkGy",
["compress"] = false,
["id"] = "Renew Indicator (P1)",
["foregroundColor"] = {
0.06666666666666667,
1,
0,
1,
},
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["fontSize"] = 12,
["auraRotation"] = 0,
["inverse"] = false,
["selfPoint"] = "CENTER",
["orientation"] = "ANTICLOCKWISE",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["backgroundOffset"] = 2,
},
["BigDebuffs Auras Nameplate CC"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["xOffset"] = 65,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["useGroup_count"] = false,
["combinePerUnit"] = false,
["useHostility"] = true,
["unit"] = "nameplate",
["ignoreSelf"] = false,
["debuffType"] = "BOTH",
["showClones"] = true,
["useName"] = true,
["useExactSpellId"] = false,
["event"] = "Health",
["names"] = {
},
["subeventPrefix"] = "SPELL",
["auraspellids"] = {
},
["spellIds"] = {
},
["type"] = "aura2",
["hostility"] = "hostile",
["subeventSuffix"] = "_CAST_START",
["fetchRaidMark"] = false,
["auranames"] = {
"War Stomp",
"Stun",
"Polymorph",
"Intimidating Shout",
"Intercept Stun",
"Concussion Blow",
"Charge",
"Charge Stun",
"Shadowfury",
"Seduction",
"Howl of Terror",
"Fear",
"Banish",
"Hex",
"Sap",
"Kidney Shot",
"Gouge",
"Cheap Shot",
"Blind",
"Shackle Undead",
"Psychic Scream",
"Mind Control",
"Turn Evil",
"Repentance",
"Holy Wrath",
"Hammer of Justice",
"Impact",
"Dragon's Breath",
"Scatter Shot",
"Scare Beast",
"Intimidation",
"Freezing Trap Effect",
"Freezing Trap",
"Pounce",
"Maim",
"Hibernate",
"Wyvern Sting",
"Intimidating Roar",
"Bash",
"Blackout",
"Death Coil",
"Improved Concussive Shot",
"Mace Stun Effect",
"Pyroclasm",
"Revenge Stun",
"Sleep",
"Starfire Stun",
"Summoning Disorientation",
},
},
["untrigger"] = {
},
},
{
["trigger"] = {
["type"] = "custom",
["events"] = "TRIGGER:1",
["custom_type"] = "stateupdate",
["check"] = "event",
["unit"] = "player",
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["customTriggerLogic"] = "function(triggers)\nreturn triggers[1] and not triggers[2]\nend",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["version"] = 10,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_text_format_p_time_mod_rate"] = true,
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["text_text_format_p_time_legacy_floor"] = true,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_time_precision"] = 1,
["anchorXOffset"] = 0,
["type"] = "subtext",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_anchorYOffset"] = 0,
["text_fontType"] = "OUTLINE",
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["anchorYOffset"] = 0,
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_text_format_p_format"] = "timed",
},
},
["height"] = 33,
["load"] = {
["use_size"] = false,
["use_never"] = false,
["instance_type"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
["ratedpvp"] = true,
["party"] = true,
["ratedarena"] = true,
["arena"] = true,
["none"] = true,
["pvp"] = true,
},
},
},
["alpha"] = 1,
["useAdjustededMax"] = false,
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["desc"] = "If toggled, the WA will avoid placing icons on totem nameplates.",
["key"] = "avoidTotem",
["useDesc"] = true,
["name"] = "Avoid Totems",
["width"] = 1,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["name"] = "Totem Name (Translated)",
["default"] = "Totem",
["desc"] = "Insert the translated name for the creature type \"Totem\" suitable for your game client (e.g. EN/DE). First letter must be capitalized.",
["key"] = "totem",
["length"] = 10,
["multiline"] = false,
["useLength"] = false,
},
},
["source"] = "import",
["icon"] = true,
["information"] = {
["forceEvents"] = false,
["ignoreOptionsEventErrors"] = false,
},
["displayIcon"] = 136022,
["color"] = {
1,
1,
1,
1,
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["adjustedMax"] = "",
["width"] = 33,
["anchorFrameParent"] = false,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate CC",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["desc"] = "",
["uid"] = "gs57UcGFuRU",
["inverse"] = false,
["cooldownEdge"] = true,
["conditions"] = {
},
["cooldown"] = true,
["parent"] = "Big Auras - Nameplates",
},
["Circle Class Frame [ROGUE]"] = {
["parent"] = "Circle Class Frames (TARGET)",
["preferToUpdate"] = false,
["yOffset"] = 2.43,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["events"] = "PLAYER_TARGET_CHANGED",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Rogue\" then\n        return true\n    else\n        return false\n    end\nend",
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Rogue",
["frameStrata"] = 4,
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [ROGUE]",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["authorOptions"] = {
},
["uid"] = "0CRscaaoT(h",
["config"] = {
},
["width"] = 104,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["color"] = {
1,
0.8823529411764706,
0,
1,
},
},
["Mending Indicator (P1)"] = {
["user_y"] = 0,
["user_x"] = 0,
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 209.6555058701224,
["foregroundColor"] = {
1,
0.9137255549430847,
0,
1,
},
["desaturateBackground"] = false,
["sameTexture"] = true,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "aura2",
["auranames"] = {
"Prayer of Mending",
},
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["subeventSuffix"] = "_CAST_START",
["spellIds"] = {
},
["specificUnit"] = "party1",
["unit"] = "member",
["names"] = {
},
["useName"] = true,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["endAngle"] = 360,
["internalVersion"] = 88,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["alpha"] = 1,
["xOffset"] = -670.577845228872,
["rotation"] = 0,
["font"] = "Friz Quadrata TT",
["preferToUpdate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["conditions"] = {
},
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["fontSize"] = 12,
["useAdjustededMax"] = false,
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["source"] = "import",
["startAngle"] = 0,
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
},
["config"] = {
},
["mirror"] = false,
["useAdjustededMin"] = false,
["regionType"] = "progresstexture",
["uid"] = "(RQhG3)KGjS",
["blendMode"] = "BLEND",
["crop_y"] = 0.41,
["anchorFrameType"] = "SCREEN",
["slantMode"] = "INSIDE",
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["smoothProgress"] = false,
["tocversion"] = 30300,
["desaturateForeground"] = false,
["compress"] = false,
["id"] = "Mending Indicator (P1)",
["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
["frameStrata"] = 1,
["width"] = 30,
["anchorPoint"] = "CENTER",
["auraRotation"] = 0,
["inverse"] = false,
["backgroundColor"] = {
0,
0,
0,
1,
},
["orientation"] = "ANTICLOCKWISE",
["crop_x"] = 0.41,
["information"] = {
["forceEvents"] = true,
},
["backgroundOffset"] = 2,
},
["BigDebuffs Spell Lockout Nameplate - Custom"] = {
["iconSource"] = -1,
["xOffset"] = 65,
["displayText_format_p_time_dynamic_threshold"] = 60,
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["displayText_format_p_time_format"] = 0,
["url"] = "",
["icon"] = true,
["useTooltip"] = false,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["font"] = "Friz Quadrata TT",
["load"] = {
["use_never"] = false,
["instance_type"] = {
},
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
["ratedpvp"] = true,
["party"] = true,
["ratedarena"] = true,
["arena"] = true,
["none"] = true,
["pvp"] = true,
},
},
},
["shadowXOffset"] = 1,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["cooldownTextDisabled"] = false,
["tocversion"] = 50500,
["alpha"] = 1,
["config"] = {
["hideFriendly"] = false,
},
["fixedWidth"] = 200,
["outline"] = "OUTLINE",
["wagoID"] = "6s7KYePbG",
["color"] = {
1,
1,
1,
1,
},
["adjustedMin"] = "",
["shadowYOffset"] = -1,
["cooldownSwipe"] = true,
["customTextUpdate"] = "event",
["cooldownEdge"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["custom_type"] = "stateupdate",
["custom_hide"] = "timed",
["event"] = "Health",
["unit"] = "player",
["subeventSuffix"] = "_CAST_START",
["subeventPrefix"] = "SPELL",
["custom"] = "function(allstates, event, timestamp, subEvent, _, _, _, _, _, destGUID, _, _, _, spellID)\n    \n    if event == \"OPTIONS\" then return true end\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        \n        -- this is needed to track some (bugged?) channels like Penance (exceptions)\n        if subEvent == \"SPELL_CAST_SUCCESS\" and aura_env.interruptData[spellID] then\n            \n            local unit = aura_env:GetUnitByGUID(destGUID, true)\n            \n            if unit then\n                \n                local _, _, _, _, _, _, immune, cSpellID = UnitChannelInfo(unit)\n                \n                if cSpellId and not aura_env.exceptions[cSpellID] then\n                    return -- not matching an exception spellID \n                end\n                \n                if immune ~= false then -- true (immune to interrupts) or nil (not casting)\n                    return\n                end\n            else\n                return -- didn't find a matching unit for the GUID so can't check if the interrupt was successful\n            end\n        end\n        \n        if destGUID then\n            local duration = aura_env.interruptData[spellID]\n            \n            if duration then\n                aura_env:AddInterrupt(allstates, destGUID, spellID, duration)\n                return true\n            end\n        end\n    elseif subEvent == \"SPELL_INTERRUPT\" and aura_env.interruptData[spellID] then\n        \n        if destGUID then\n            local duration = aura_env.interruptData[spellID]\n            \n            if duration then\n                aura_env:AddInterrupt(allstates, destGUID, spellID, duration)\n                return true\n            end\n        end\n        \n    elseif event == \"NAME_PLATE_UNIT_REMOVED\" then \n        \n        local unit = timestamp\n        \n        if unit then\n            \n            local unitGUID = UnitGUID(unit)\n            \n            aura_env:SetUnitShowInterrupts(allstates, unit, unitGUID, false)\n        end\n        \n    elseif event == \"NAME_PLATE_UNIT_ADDED\" then        \n        \n        local unit = timestamp\n        \n        if unit then\n            \n            local unitGUID = UnitGUID(unit)\n            \n            aura_env:SetUnitShowInterrupts(allstates, unit, unitGUID, true)\n        end\n        \n    elseif event == \"PLAYER_ENTERING_WORLD\" then\n        \n        aura_env:ClearAllInterrupts(allstates)\n        \n    end\n    \n    return true\nend",
["names"] = {
},
["check"] = "event",
["events"] = "CLEU:SPELL_INTERRUPT:SPELL_CAST_SUCCESS, NAME_PLATE_UNIT_ADDED, NAME_PLATE_UNIT_REMOVED, PLAYER_ENTERING_WORLD",
["spellIds"] = {
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "any",
["customTriggerLogic"] = "function(triggers)\n    return true\nend",
["activeTriggerMode"] = -10,
},
["displayText_format_p_format"] = "timed",
["internalVersion"] = 88,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["version"] = 10,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_text_format_p_time_mod_rate"] = true,
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["text_text_format_p_time_legacy_floor"] = false,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_format"] = "timed",
["type"] = "subtext",
["anchorXOffset"] = 0,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_shadowYOffset"] = 0,
["text_fontType"] = "OUTLINE",
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["anchorYOffset"] = 0,
["anchor_point"] = "CENTER",
["text_fontSize"] = 30,
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_text_format_p_time_precision"] = 1,
},
},
["height"] = 33,
["useAdjustededMax"] = false,
["fontSize"] = 28,
["source"] = "import",
["preferToUpdate"] = false,
["information"] = {
["forceEvents"] = true,
["debugLog"] = false,
},
["zoom"] = 0,
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["desc"] = "Hides interrupts on friendly / non-attackable unit nameplates",
["key"] = "hideFriendly",
["useDesc"] = true,
["name"] = "Hide Friendly",
["width"] = 1,
},
},
["displayText"] = "%c",
["customText"] = "function()\n    return aura_env.school..\"\\124r Locked\"\nend",
["wordWrap"] = "WordWrap",
["actions"] = {
["start"] = {
},
["init"] = {
["custom"] = "aura_env.interruptData = {\n    [1766] = 5,      -- Kick R1 (Rogue)\n    [1767] = 5,    -- Kick R2 (Rogue)\n    [1768] = 5,    -- Kick R3 (Rogue)\n    [1769] = 5,    -- Kick R4 (Rogue)\n    [38768] = 5,   -- Kick R5 (Rogue)\n    [26679] = 3,  -- Deadly Throw (Rogue)\n    [2139] = 8,      -- Counterspell (Mage)\n    [6552] = 4,      -- Pummel R1 (Warrior)\n    [6554] = 4,    -- Pummel Rank 2 (Warrior)\n    [72] = 6,      -- Shield Bash R1  (Warrior)\n    [1671] = 6,    -- Shield Bash R2 (Warrior)\n    [1672] = 6,    -- Shield Bash R3 (Warrior)\n    [29704] = 6,   -- Shield Bash R4 (Warrior)\n    [19244] = 5,   -- Spell Lock Rank 1 (Warlock)\n    [19647] = 6,     -- Spell Lock Rank 2 (Warlock)\n    [8042] = 2,     -- Earth Shock (Shaman) r1\n    [8044] = 2,     -- Earth Shock (Shaman) r2\n    [8045] = 2,     -- Earth Shock (Shaman) r3\n    [8046] = 2,     -- Earth Shock (Shaman) r4\n    [10412] = 2,     -- Earth Shock (Shaman) r5\n    [10413] = 2,     -- Earth Shock (Shaman) r6\n    [10414] = 2,     -- Earth Shock (Shaman) r7\n    [25454] = 2,     -- Earth Shock (Shaman) r8\n    [16979] = 4,     -- Feral Charge\n}\n\n\naura_env.exceptions = {\n    [47757] = true, -- Penance\n}\n\naura_env.currentInterrupts = {}\n\naura_env.AddInterrupt = function(self, allstates, unitGUID, spellid, duration)\n    \n    if not allstates or not unitGUID or not spellid or not duration then return end\n    \n    if unitGUID and spellid and duration then\n        \n        local unit = self:GetUnitByGUID(unitGUID)\n        \n        self.currentInterrupts[unitGUID] = self.currentInterrupts[unitGUID] and self.currentInterrupts[unitGUID] or {}\n        \n        local t = GetTime()\n        \n        table.insert(self.currentInterrupts[unitGUID], { spellid = spellid, time = t, duration = duration})\n        \n        if unit then\n            self:SetActiveIcon(allstates, unit, unitGUID, spellid, duration, t)   \n        end\n    end \nend\n\naura_env.ClearAllInterrupts = function(self, allstates)\n    \n    if not allstates or not self.currentInterrupts then return end\n    \n    for key,state in pairs(allstates) do\n        state.show = false\n        state.changed = true\n    end\n    \n    self.currentInterrupts = {}\nend\n\naura_env.SetUnitShowInterrupts = function(self, allstates, unit, unitGUID, shown)\n    \n    if not unitGUID or shown == nil then return end\n    \n    if not self.currentInterrupts[unitGUID] then return end\n    \n    for _, table in pairs(self.currentInterrupts[unitGUID]) do\n        if shown then\n            self:SetActiveIcon(allstates, unit, unitGUID, table.spellid, table.duration, table.time)\n        else\n            self:SetInactiveIcon(allstates, unitGUID, table.spellid, table.time)\n        end\n    end\nend\n\naura_env.SetActiveIcon = function(self, allstates, unit, unitGUID, spellid, duration, time)\n    \n    if not allstates or not unit or not unitGUID or not spellid or not duration or not time then return end\n    \n    local name, _, icon = GetSpellInfo(spellid)\n    \n    if unit and aura_env.config[\"hideFriendly\"] and (UnitIsFriend(\"player\", unit) or not UnitCanAttack(\"player\", unit)) then return end\n    \n    local key = unitGUID..\" \"..spellid..\" \"..time\n    \n    local expirationTime = time + duration\n    \n    allstates[key] = {\n        show = true,\n        changed = true,\n        progressType = \"timed\",\n        duration = duration,\n        expirationTime = expirationTime,\n        autoHide = true,\n        name = name,\n        icon = icon,\n        unit = unit,\n    }\nend\n\naura_env.SetInactiveIcon = function(self, allstates, unitGUID, spellid, time)\n    if not allstates or not unitGUID or not spellid or not time then return end\n    \n    local key = unitGUID..\" \"..spellid..\" \"..time\n    \n    if not allstates[key] then return end\n    \n    allstates[key].changed = allstates[key].show ~= false\n    allstates[key].show = false\n    allstates[key].unit = nil -- we do this so the clone cannot possibly get re-attached to a new unitGUID with the same nameplate unitID\nend\n\nlocal nonNameplateUnits = { \"target\", \"focus\", \"arena1\", \"arena2\", \"arena3\", \"arena4\", \"arena5\", \"party1\", \"party2\", \"party3\", \"party4\"}\n\naura_env.GetUnitByGUID = function(self, unitGUID, includeNonNameplate)\n    if not unitGUID then return end\n    local plates = C_NamePlate.GetNamePlates(true)\n    for _, plate in ipairs(plates) do\n        local unit = plate.namePlateUnitToken\n        if UnitGUID(unit) == unitGUID then \n            return unit\n        end   \n    end\n    \n    if includeNonNameplate then\n        for _, unitID in pairs(nonNameplateUnits) do\n            if UnitExists(unitID) and UnitGUID(unitID) == unitGUID then\n                return unitID \n            end \n        end\n        \n    end\n    \n    return nil\nend",
["do_custom"] = true,
},
["finish"] = {
},
},
["width"] = 33,
["displayText_format_p_time_precision"] = 1,
["useCooldownModRate"] = true,
["automaticWidth"] = "Auto",
["semver"] = "1.0.9",
["justify"] = "LEFT",
["parent"] = "Big Auras - Nameplates",
["id"] = "BigDebuffs Spell Lockout Nameplate - Custom",
["desc"] = "",
["frameStrata"] = 1,
["anchorFrameType"] = "NAMEPLATE",
["anchorFrameParent"] = false,
["uid"] = "qcSSDvgcP14",
["inverse"] = false,
["displayIcon"] = 132219,
["shadowColor"] = {
0,
0,
0,
1,
},
["conditions"] = {
},
["cooldown"] = true,
["adjustedMax"] = "",
},
["Mending Indicator (P2)"] = {
["user_y"] = 0,
["user_x"] = 0,
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 97.59999732971215,
["foregroundColor"] = {
1,
0.9137255549430847,
0,
1,
},
["desaturateBackground"] = false,
["sameTexture"] = true,
["desaturateForeground"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["auranames"] = {
"Prayer of Mending",
},
["spellIds"] = {
},
["specificUnit"] = "party2",
["useName"] = true,
["names"] = {
},
["unit"] = "member",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["endAngle"] = 360,
["internalVersion"] = 88,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
},
["frameStrata"] = 1,
["xOffset"] = -670.577845228872,
["rotation"] = 0,
["font"] = "Friz Quadrata TT",
["preferToUpdate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["crop_x"] = 0.41,
["crop_y"] = 0.41,
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["useAdjustededMax"] = false,
["fontSize"] = 12,
["source"] = "import",
["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
["selfPoint"] = "CENTER",
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["smoothProgress"] = false,
["useAdjustededMin"] = false,
["regionType"] = "progresstexture",
["config"] = {
},
["blendMode"] = "BLEND",
["auraRotation"] = 0,
["anchorFrameType"] = "SCREEN",
["slantMode"] = "INSIDE",
["backgroundColor"] = {
0,
0,
0,
1,
},
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["tocversion"] = 30300,
["mirror"] = false,
["compress"] = false,
["id"] = "Mending Indicator (P2)",
["startAngle"] = 0,
["alpha"] = 1,
["width"] = 30,
["anchorPoint"] = "CENTER",
["uid"] = "sDcS8mazBDz",
["inverse"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["orientation"] = "ANTICLOCKWISE",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["backgroundOffset"] = 2,
},
["Circle Class Frame [WARRIOR] 2"] = {
["authorOptions"] = {
},
["preferToUpdate"] = false,
["yOffset"] = 1.9,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Warrior\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_FOCUS_CHANGED",
["spellIds"] = {
},
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "FocusFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warrior",
["alpha"] = 1,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARRIOR] 2",
["color"] = {
1,
0.9686274509803922,
0.9725490196078431,
1,
},
["frameStrata"] = 4,
["width"] = 104,
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["xOffset"] = 59,
["uid"] = "qQyU9Qhpyxa",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["parent"] = "Circle Class Frames (FOCUS)",
},
["BigDebuffs Auras Nameplate Full Immunities"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["xOffset"] = 65,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["showClones"] = true,
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["useName"] = true,
["hostility"] = "hostile",
["useHostility"] = true,
["names"] = {
},
["auranames"] = {
"Cyclone",
"Divine Shield",
"Ice Block",
"The Beast Within",
"Nether Protection",
},
["event"] = "Health",
["ignoreSelf"] = false,
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["unit"] = "nameplate",
["fetchRaidMark"] = false,
["debuffType"] = "BOTH",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["type"] = "custom",
["events"] = "TRIGGER:1",
["custom_type"] = "stateupdate",
["check"] = "event",
["unit"] = "player",
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["customTriggerLogic"] = "function(triggers)\nreturn triggers[1] and not triggers[2]\nend",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["version"] = 10,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_text_format_p_time_mod_rate"] = true,
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["text_text_format_p_time_legacy_floor"] = true,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_time_precision"] = 1,
["anchorXOffset"] = 0,
["type"] = "subtext",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_anchorYOffset"] = 0,
["text_fontType"] = "OUTLINE",
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["anchorYOffset"] = 0,
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_text_format_p_format"] = "timed",
},
},
["height"] = 33,
["load"] = {
["use_size"] = false,
["use_never"] = false,
["instance_type"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
["ratedpvp"] = true,
["party"] = true,
["ratedarena"] = true,
["arena"] = true,
["none"] = true,
["pvp"] = true,
},
},
},
["alpha"] = 1,
["useAdjustededMax"] = false,
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["desc"] = "If toggled, the WA will avoid placing icons on totem nameplates.",
["key"] = "avoidTotem",
["useDesc"] = true,
["name"] = "Avoid Totems",
["width"] = 1,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["name"] = "Totem Name (Translated)",
["default"] = "Totem",
["desc"] = "Insert the translated name for the creature type \"Totem\" suitable for your game client (e.g. EN/DE). First letter must be capitalized.",
["key"] = "totem",
["length"] = 10,
["multiline"] = false,
["useLength"] = false,
},
},
["source"] = "import",
["icon"] = true,
["information"] = {
["forceEvents"] = false,
["ignoreOptionsEventErrors"] = false,
},
["displayIcon"] = 135896,
["color"] = {
1,
1,
1,
1,
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["adjustedMax"] = "",
["width"] = 33,
["anchorFrameParent"] = false,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate Full Immunities",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["desc"] = "",
["uid"] = "QACLZBUfIBz",
["inverse"] = false,
["cooldownEdge"] = true,
["conditions"] = {
},
["cooldown"] = true,
["parent"] = "Big Auras - Nameplates",
},
["SINGLE PENE"] = {
["iconSource"] = 0,
["xOffset"] = -596.355630058134,
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -368.4005842732191,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["itemName"] = 34033,
["type"] = "item",
["subeventSuffix"] = "_CAST_START",
["use_itemName"] = true,
["use_genericShowOn"] = true,
["event"] = "Item Equipped",
["names"] = {
},
["unit"] = "player",
["use_itemSetName"] = false,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["use_inverse"] = false,
["genericShowOn"] = "showOnCooldown",
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["type"] = "subborder",
["border_offset"] = 0,
["border_color"] = {
1,
0,
0.9333333969116211,
1,
},
["border_visible"] = true,
["border_edge"] = "Gladdy Tooltip round",
["border_size"] = 13,
},
},
["height"] = 39.5,
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["uid"] = "7b7ooklbiLs",
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
},
["parent"] = "Weapon Switches",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["information"] = {
["forceEvents"] = true,
},
["conditions"] = {
},
["authorOptions"] = {
},
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 30300,
["id"] = "SINGLE PENE",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["width"] = 39.5,
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["config"] = {
},
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\Spell_Holy_SearingLight",
["cooldown"] = false,
["preferToUpdate"] = false,
},
["Circle Class Frame [WARLOCK] 2"] = {
["parent"] = "Circle Class Frames (FOCUS)",
["preferToUpdate"] = false,
["yOffset"] = 1.9,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Warlock\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_FOCUS_CHANGED",
["spellIds"] = {
},
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "FocusFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warlock",
["frameStrata"] = 4,
["authorOptions"] = {
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARLOCK] 2",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["width"] = 104,
["color"] = {
0.9882352941176471,
1,
0.9803921568627451,
1,
},
["config"] = {
},
["uid"] = "g(5LpFJW(uF",
["anchorFrameType"] = "SELECTFRAME",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
},
["Invis additional visual"] = {
["controlledChildren"] = {
"Stealth Effect TOP",
"Stealth Effect BOTTOM",
},
["borderBackdrop"] = "Blizzard Tooltip",
["wagoID"] = "wdib4Sz3Z",
["xOffset"] = -95.3323974609375,
["preferToUpdate"] = false,
["yOffset"] = -94.66683959960938,
["anchorPoint"] = "CENTER",
["borderColor"] = {
0,
0,
0,
1,
},
["url"] = "",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["names"] = {
},
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["event"] = "Health",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desc"] = "",
["version"] = 2,
["subRegions"] = {
},
["load"] = {
["talent"] = {
["multi"] = {
},
},
["zoneIds"] = "",
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["backdropColor"] = {
1,
1,
1,
0.5,
},
["source"] = "import",
["scale"] = 1,
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "group",
["borderSize"] = 2,
["alpha"] = 1,
["borderOffset"] = 4,
["semver"] = "1.0.1",
["tocversion"] = 30300,
["id"] = "Invis additional visual",
["groupIcon"] = "Interface\\Icons\\Ability_Mage_Invisibility",
["frameStrata"] = 2,
["anchorFrameType"] = "SCREEN",
["authorOptions"] = {
},
["borderInset"] = 1,
["config"] = {
},
["uid"] = "vQTq0ZuVxji",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["selfPoint"] = "CENTER",
},
["Circle Class Frames (TARGET)"] = {
["controlledChildren"] = {
"Circle Class Frame [WARLOCK]",
"Circle Class Frame [MAGE]",
"Circle Class Frame [DRUID]",
"Circle Class Frame [WARRIOR]",
"Circle Class Frame [ROGUE]",
"Circle Class Frame [HUNTER]",
"Circle Class Frame [PRIEST]",
"Circle Class Frame [PALADIN]",
"Circle Class Frame [SHAMAN]",
},
["borderBackdrop"] = "Blizzard Tooltip",
["authorOptions"] = {
},
["preferToUpdate"] = false,
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["borderColor"] = {
0,
0,
0,
1,
},
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["names"] = {
},
},
["untrigger"] = {
},
},
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["subRegions"] = {
},
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["backdropColor"] = {
1,
1,
1,
0.5,
},
["source"] = "import",
["scale"] = 1,
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "group",
["borderSize"] = 2,
["borderOffset"] = 4,
["uid"] = "qZaXlWpR3as",
["tocversion"] = 30300,
["id"] = "Circle Class Frames (TARGET)",
["xOffset"] = 0,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["groupIcon"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["borderInset"] = 1,
["config"] = {
},
["alpha"] = 1,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["selfPoint"] = "CENTER",
},
["Circle Class Frame [HUNTER]"] = {
["parent"] = "Circle Class Frames (TARGET)",
["preferToUpdate"] = false,
["yOffset"] = 2.43,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["names"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Hunter\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Hunter",
["config"] = {
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [HUNTER]",
["color"] = {
0.5882352941176471,
1,
0.6352941176470588,
1,
},
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["authorOptions"] = {
},
["uid"] = "79KS2lhfE1D",
["width"] = 104,
["frameStrata"] = 4,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
},
["Circle Class Frame [MAGE] 2"] = {
["parent"] = "Circle Class Frames (FOCUS)",
["preferToUpdate"] = false,
["yOffset"] = 1.9,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Mage\" then\n        return true\n    else\n        return false\n    end\nend",
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "FocusFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["uid"] = "r71p543s)oE",
["color"] = {
1,
0.9568627450980391,
0.9607843137254902,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [MAGE] 2",
["xOffset"] = 59,
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["authorOptions"] = {
},
["config"] = {
},
["width"] = 104,
["frameStrata"] = 4,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["selfPoint"] = "CENTER",
},
["Circle Class Frame [HUNTER] 2"] = {
["xOffset"] = 59,
["preferToUpdate"] = false,
["yOffset"] = 1.9,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Hunter\" then\n        return true\n    else\n        return false\n    end\nend",
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "FocusFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Hunter",
["alpha"] = 1,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [HUNTER] 2",
["authorOptions"] = {
},
["frameStrata"] = 4,
["width"] = 104,
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["color"] = {
0.5882352941176471,
1,
0.6352941176470588,
1,
},
["uid"] = "TI5L9PmeJeh",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["parent"] = "Circle Class Frames (FOCUS)",
},
["Circle Class Frame [SHAMAN] 2"] = {
["parent"] = "Circle Class Frames (FOCUS)",
["preferToUpdate"] = false,
["yOffset"] = 1.9,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["names"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Shaman\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "FocusFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Shaman",
["config"] = {
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [SHAMAN] 2",
["authorOptions"] = {
},
["alpha"] = 1,
["width"] = 104,
["color"] = {
1,
0.9882352941176471,
0.9568627450980391,
1,
},
["uid"] = "C3fWdU(hE3k",
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 4,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["selfPoint"] = "CENTER",
},
["MP5"] = {
["iconSource"] = 0,
["parent"] = "Weapon Switches",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -405.0005844639541,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["itemName"] = 28782,
["type"] = "item",
["subeventSuffix"] = "_CAST_START",
["use_itemName"] = true,
["use_genericShowOn"] = true,
["event"] = "Item Equipped",
["names"] = {
},
["unit"] = "player",
["use_itemSetName"] = false,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["use_inverse"] = false,
["genericShowOn"] = "showOnCooldown",
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["type"] = "item",
["itemName"] = 30080,
["subeventSuffix"] = "_CAST_START",
["event"] = "Item Equipped",
["use_genericShowOn"] = true,
["use_itemName"] = true,
["names"] = {
},
["genericShowOn"] = "showOnCooldown",
["use_itemSetName"] = false,
["spellIds"] = {
},
["use_inverse"] = false,
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["border_offset"] = 0,
["border_size"] = 13,
["border_color"] = {
1,
0.984313725490196,
0,
1,
},
["border_visible"] = true,
["border_edge"] = "Gladdy Tooltip round",
["type"] = "subborder",
},
},
["height"] = 38,
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["uid"] = "7pW6VNO1BKk",
["icon"] = true,
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["information"] = {
["forceEvents"] = true,
},
["conditions"] = {
},
["xOffset"] = -632.4222967565897,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 30300,
["id"] = "MP5",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["width"] = 38,
["authorOptions"] = {
},
["config"] = {
},
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\Spell_Nature_ManaRegenTotem",
["cooldown"] = false,
["preferToUpdate"] = false,
},
["Circle Class Frame [SHAMAN]"] = {
["parent"] = "Circle Class Frames (TARGET)",
["preferToUpdate"] = false,
["yOffset"] = 2.43,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["events"] = "PLAYER_TARGET_CHANGED",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Shaman\" then\n        return true\n    else\n        return false\n    end\nend",
["custom_type"] = "event",
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Shaman",
["frameStrata"] = 4,
["color"] = {
1,
0.9882352941176471,
0.9568627450980391,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [SHAMAN]",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["alpha"] = 1,
["width"] = 104,
["authorOptions"] = {
},
["uid"] = "h)25fvrrLar",
["config"] = {
},
["anchorFrameType"] = "SELECTFRAME",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
},
["SPIRIT"] = {
["iconSource"] = 0,
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -405.0672512577773,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["itemName"] = 29981,
["type"] = "item",
["subeventSuffix"] = "_CAST_START",
["use_itemName"] = true,
["use_inverse"] = false,
["genericShowOn"] = "showOnCooldown",
["unit"] = "player",
["names"] = {
},
["use_itemSetName"] = false,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["use_genericShowOn"] = true,
["event"] = "Item Equipped",
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["type"] = "item",
["itemName"] = 25295,
["subeventSuffix"] = "_CAST_START",
["genericShowOn"] = "showOnCooldown",
["use_inverse"] = false,
["use_itemName"] = true,
["unit"] = "player",
["event"] = "Item Equipped",
["use_itemSetName"] = false,
["spellIds"] = {
},
["use_genericShowOn"] = true,
["subeventPrefix"] = "SPELL",
["names"] = {
},
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["border_size"] = 13,
["type"] = "subborder",
["border_color"] = {
0,
0.9490196078431372,
1,
1,
},
["border_visible"] = true,
["border_edge"] = "Gladdy Tooltip round",
["border_offset"] = 0,
},
},
["height"] = 38,
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["config"] = {
},
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
},
["parent"] = "Weapon Switches",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\INV_Enchant_ShardBrilliantSmall",
["authorOptions"] = {
},
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 30300,
["id"] = "SPIRIT",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["width"] = 38,
["xOffset"] = -595.8222967089062,
["uid"] = "YPflZrAo6s0",
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["preferToUpdate"] = false,
},
["BigDebuffs Auras Nameplate Others"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["xOffset"] = 65,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["useGroup_count"] = false,
["combinePerUnit"] = false,
["useHostility"] = true,
["unit"] = "nameplate",
["ignoreSelf"] = false,
["group_count"] = "0",
["debuffType"] = "BOTH",
["showClones"] = true,
["useName"] = true,
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["group_countOperator"] = ">",
["names"] = {
},
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["type"] = "aura2",
["hostility"] = "hostile",
["fetchRaidMark"] = false,
["auranames"] = {
"Fear Ward",
},
},
["untrigger"] = {
},
},
{
["trigger"] = {
["use_ignoreSelf"] = false,
["use_hostility"] = false,
["use_character"] = false,
["unit"] = "nameplate",
["use_class"] = false,
["debuffType"] = "HELPFUL",
["use_namerealm"] = true,
["classification"] = {
},
["namerealm"] = "Nature Resistance Totem, Sentry Totem, Wrath of Air Totem, Cleansing Totem, Fire Resistance Totem, Mana Spring Totem, Mana Tide Totem, Fire Nova Totem, Flametongue Totem, Frost Resistance Totem, Magma Totem, Searing Totem, Totem of Wrath, Earthbind Totem, Earth Elemental Totem, Fire Elemental Totem, Stoneclaw Totem, Strength of Earth Totem, Tremor Totem, Grounding Totem, Healing Stream Totem, Windfury Totem",
["custom_type"] = "stateupdate",
["event"] = "Unit Characteristics",
["type"] = "custom",
["use_unit"] = true,
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["use_nameplateType"] = false,
["check"] = "event",
["use_raidMarkIndex"] = false,
["events"] = "TRIGGER:1",
["customVariables"] = "",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["customTriggerLogic"] = "function(triggers)\nreturn triggers[1]\nend",
["activeTriggerMode"] = 2,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["version"] = 10,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_text_format_p_time_mod_rate"] = true,
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["text_text_format_p_time_legacy_floor"] = true,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["text_text_format_p_time_precision"] = 1,
["anchorXOffset"] = 0,
["type"] = "subtext",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_anchorYOffset"] = 0,
["text_fontType"] = "OUTLINE",
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["anchorYOffset"] = 0,
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_text_format_p_format"] = "timed",
},
},
["height"] = 33,
["load"] = {
["use_size"] = false,
["use_never"] = false,
["instance_type"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
["ratedpvp"] = true,
["party"] = true,
["ratedarena"] = true,
["arena"] = true,
["none"] = true,
["pvp"] = true,
},
},
},
["alpha"] = 1,
["useAdjustededMax"] = false,
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["desc"] = "If toggled, auras will not show up on totem nameplates",
["key"] = "avoidTotem",
["useDesc"] = true,
["name"] = "Avoid Totems",
["width"] = 1,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["name"] = "Totem Name",
["default"] = "Totem",
["desc"] = "Insert the regional translated name for the Creature Type \"Totem\". First letter must be capitalized.",
["key"] = "totem",
["length"] = 10,
["multiline"] = false,
["useLength"] = false,
},
},
["source"] = "import",
["icon"] = true,
["information"] = {
["forceEvents"] = true,
["debugLog"] = false,
},
["displayIcon"] = 132794,
["color"] = {
1,
1,
1,
1,
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["adjustedMax"] = "",
["width"] = 33,
["anchorFrameParent"] = false,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate Others",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["desc"] = "",
["uid"] = "u3pIBYMkxSl",
["inverse"] = false,
["cooldownEdge"] = true,
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["op"] = "==",
["variable"] = "name",
["value"] = "Nature's Grasp",
},
["changes"] = {
{
["value"] = true,
["property"] = "sub.2.text_visible",
},
},
},
},
["cooldown"] = true,
["parent"] = "Big Auras - Nameplates",
},
["Circle Class Frame [MAGE]"] = {
["parent"] = "Circle Class Frames (TARGET)",
["preferToUpdate"] = false,
["yOffset"] = 2.43,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["names"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Mage\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["frameStrata"] = 4,
["authorOptions"] = {
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [MAGE]",
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["xOffset"] = 59,
["config"] = {
},
["uid"] = "OTPG(0)Aye7",
["width"] = 104,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["color"] = {
1,
0.9568627450980391,
0.9607843137254902,
1,
},
},
["Arena - AutoQueue Whitelist"] = {
["iconSource"] = -1,
["color"] = {
1,
1,
1,
1,
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["customVariables"] = "\n\n",
["debuffType"] = "HELPFUL",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["names"] = {
},
["events"] = "LFG_READY_CHECK_SHOW",
["spellIds"] = {
},
["custom_type"] = "stateupdate",
["check"] = "event",
["custom"] = "function(_, event)\n    if event == \"LFG_READY_CHECK_SHOW\" then\n        for unit in WA_IterateGroupMembers() do\n            if aura_env.isAllowed(GetUnitName(unit)) then\n                LFGReadyCheckPopup.YesButton:Click()\n            end\n        end\n    end\nend",
["unit"] = "player",
["custom_hide"] = "timed",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 64,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["uid"] = "J8MGEI7i5Hg",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = true,
["custom"] = "local customlist = {}\n\nfor list in aura_env.config.customlist:gsub(\"%s+\", \"\"):gmatch('([^,]+)') do\n    customlist[list] = true\nend\n\nfunction aura_env.isAllowed(name)\n    if not name then \n        return false \n    end\n    \n    if customlist[name] then \n        return true \n    end\n    \n    return false\nend\n\n\n\n\n",
},
},
["desc"] = "",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["conditions"] = {
},
["url"] = "",
["keepAspectRatio"] = false,
["width"] = 64,
["alpha"] = 1,
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["tocversion"] = 30400,
["id"] = "Arena - AutoQueue Whitelist",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["authorOptions"] = {
{
["type"] = "description",
["text"] = "Add the player name you want to whitelist below. Make sure to seperate each name.\n\nE.g.:\n\nNeilyo, Vilden, Marm\n",
["fontSize"] = "medium",
["width"] = 2,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 2,
["multiline"] = true,
["default"] = "",
["desc"] = "Insert Name, Name",
["name"] = "Custom Whitelist",
["length"] = 10,
["key"] = "customlist",
["useLength"] = false,
},
},
["config"] = {
["customlist"] = "Teddys, Ðaylie, Psherottv, Hylissang, Badmfka",
},
["inverse"] = false,
["xOffset"] = 0,
["displayIcon"] = 135724,
["cooldown"] = false,
["preferToUpdate"] = false,
},
["Circle Class Frame [PRIEST] 2"] = {
["authorOptions"] = {
},
["preferToUpdate"] = false,
["yOffset"] = 1.9,
["anchorPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["event"] = "Chat Message",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["names"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Priest\" then\n        return true\n    else\n        return false\n    end\nend",
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["rotation"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 104,
["rotate"] = true,
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["mirror"] = false,
["anchorFrameFrame"] = "FocusFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Priest",
["anchorFrameType"] = "SELECTFRAME",
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PRIEST] 2",
["color"] = {
1,
0.9568627450980391,
0.9607843137254902,
1,
},
["frameStrata"] = 4,
["width"] = 104,
["parent"] = "Circle Class Frames (FOCUS)",
["config"] = {
},
["uid"] = "xIPPOvJrN1V",
["alpha"] = 1,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["selfPoint"] = "CENTER",
},
["PW: Shield (P2)"] = {
["user_y"] = 0,
["user_x"] = 0,
["xOffset"] = -39.5333333492279,
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0.57,
["foregroundColor"] = {
1,
1,
1,
1,
},
["desaturateBackground"] = false,
["mirror"] = false,
["sameTexture"] = true,
["backgroundColor"] = {
0.5019607843137255,
0.5019607843137255,
0.5019607843137255,
0.5,
},
["triggers"] = {
{
["trigger"] = {
["type"] = "aura2",
["auranames"] = {
"6788",
},
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["subeventSuffix"] = "_CAST_START",
["spellIds"] = {
},
["specificUnit"] = "party2",
["useName"] = true,
["names"] = {
},
["unit"] = "member",
["debuffType"] = "HARMFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["endAngle"] = 360,
["internalVersion"] = 88,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
},
["slanted"] = false,
["authorOptions"] = {
},
["crop_x"] = 0.41,
["desc"] = "Shield CD on Party2 indicator...",
["rotation"] = 0,
["font"] = "Friz Quadrata TT",
["preferToUpdate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 43,
["desaturateForeground"] = false,
["crop_y"] = 0.41,
["selfPoint"] = "CENTER",
["useAdjustededMax"] = false,
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
["config"] = {
},
["fontSize"] = 12,
["smoothProgress"] = false,
["anchorFrameFrame"] = "PartyFrame.MemberFrame2",
["regionType"] = "progresstexture",
["anchorFrameType"] = "SELECTFRAME",
["blendMode"] = "BLEND",
["alpha"] = 1,
["startAngle"] = 0,
["slantMode"] = "INSIDE",
["tocversion"] = 30300,
["useAdjustededMin"] = false,
["anchorPoint"] = "CENTER",
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "PRIEST",
["multi"] = {
["PRIEST"] = true,
},
},
["talent"] = {
["multi"] = {
[103] = true,
},
},
},
["compress"] = false,
["id"] = "PW: Shield (P2)",
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["frameStrata"] = 9,
["width"] = 43,
["auraRotation"] = 0,
["uid"] = "zDMEhE)lXyO",
["inverse"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["orientation"] = "ANTICLOCKWISE",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["backgroundOffset"] = 2,
},
["PW: Shield (P1)"] = {
["user_y"] = 0,
["user_x"] = 0,
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0.57,
["foregroundColor"] = {
1,
1,
1,
1,
},
["desaturateBackground"] = false,
["smoothProgress"] = false,
["sameTexture"] = true,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["auranames"] = {
"6788",
},
["spellIds"] = {
},
["specificUnit"] = "party1",
["unit"] = "member",
["names"] = {
},
["useName"] = true,
["debuffType"] = "HARMFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["endAngle"] = 360,
["internalVersion"] = 88,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["backgroundOffset"] = 2,
["preferToUpdate"] = false,
["conditions"] = {
},
["desc"] = "Shield CD on Party1 indicator...",
["rotation"] = 0,
["font"] = "Friz Quadrata TT",
["desaturateForeground"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 43,
["animation"] = {
["start"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "fade",
},
},
["crop_y"] = 0.41,
["load"] = {
["size"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "PRIEST",
["multi"] = {
["PRIEST"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
[103] = true,
},
},
},
["useAdjustededMax"] = false,
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["source"] = "import",
["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
["uid"] = "nD2epxy)96V",
["startAngle"] = 0,
["mirror"] = false,
["anchorFrameFrame"] = "PartyFrame.MemberFrame1",
["regionType"] = "progresstexture",
["width"] = 43,
["blendMode"] = "BLEND",
["frameStrata"] = 9,
["auraRotation"] = 0,
["slantMode"] = "INSIDE",
["tocversion"] = 30300,
["xOffset"] = -39.5333333492279,
["anchorPoint"] = "CENTER",
["useAdjustededMin"] = false,
["compress"] = false,
["id"] = "PW: Shield (P1)",
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["fontSize"] = 12,
["config"] = {
},
["inverse"] = false,
["backgroundColor"] = {
0.5019607843137255,
0.5019607843137255,
0.5019607843137255,
0.5,
},
["orientation"] = "ANTICLOCKWISE",
["crop_x"] = 0.41,
["information"] = {
["forceEvents"] = true,
},
["slanted"] = false,
},
["Weapon Switches"] = {
["controlledChildren"] = {
"DMG",
"HEAL",
"SPIRIT",
"MP5",
"SINGLE PENE",
"DOUBLE PENE",
},
["borderBackdrop"] = "Blizzard Tooltip",
["xOffset"] = 0,
["preferToUpdate"] = false,
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["borderColor"] = {
0,
0,
0,
1,
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["names"] = {
},
},
["untrigger"] = {
},
},
},
["internalVersion"] = 88,
["selfPoint"] = "CENTER",
["subRegions"] = {
},
["load"] = {
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["talent"] = {
["multi"] = {
},
},
},
["backdropColor"] = {
1,
1,
1,
0.5,
},
["scale"] = 1,
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "group",
["borderSize"] = 2,
["borderOffset"] = 4,
["tocversion"] = 30300,
["id"] = "Weapon Switches",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["uid"] = "K5NYFGjIbiX",
["authorOptions"] = {
},
["config"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["borderInset"] = 1,
},
},
["features"] = {
},
["editor_font_size"] = 12,
["login_squelch_time"] = 10,
["lastArchiveClear"] = 1780939100,
["minimap"] = {
["minimapPos"] = 227.4941477608886,
["hide"] = true,
},
["historyCutoff"] = 730,
["dbVersion"] = 88,
["migrationCutoff"] = 730,
["registered"] = {
},
["lastUpgrade"] = 1768544476,
["personalRessourceDisplayFrame"] = {
["xOffset"] = -1014.877228671812,
["yOffset"] = -469.8203430304768,
},
["editor_theme"] = "Monokai",
}
