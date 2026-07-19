
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["editor_font_size"] = 12,
["features"] = {
},
["login_squelch_time"] = 10,
["displays"] = {
["Circle Class Frame [WARRIOR]"] = {
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Warrior\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warrior",
["uid"] = "G(TBcTmVwJO",
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
["config"] = {
},
["frameStrata"] = 4,
["width"] = 104,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
},
["BigDebuffs Auras Nameplate Silences"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["xOffset"] = 67,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
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
["type"] = "aura2",
["names"] = {
},
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["hostility"] = "hostile",
["auraspellids"] = {
"43523",
},
["fetchRaidMark"] = false,
["unit"] = "nameplate",
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
["debuffType"] = "HELPFUL",
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["unit"] = "player",
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
["text_text_format_p_format"] = "timed",
["text_text_format_p_time_dynamic_threshold"] = 60,
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
["text_anchorYOffset"] = 0,
["text_shadowYOffset"] = 0,
["anchorYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["text_fontType"] = "OUTLINE",
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["anchorXOffset"] = 0,
["text_text_format_p_time_precision"] = 1,
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
["pvp"] = true,
["none"] = true,
},
},
},
["useCooldownModRate"] = true,
["useAdjustededMax"] = false,
["icon"] = true,
["source"] = "import",
["parent"] = "Big Auras - Nameplates",
["cooldown"] = true,
["conditions"] = {
},
["cooldownEdge"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["uid"] = "B6mzuIMg)Ne",
["desc"] = "",
["anchorFrameType"] = "SCREEN",
["anchorFrameParent"] = false,
["frameStrata"] = 1,
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate Silences",
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
["width"] = 33,
["adjustedMax"] = "",
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = 136164,
["information"] = {
["forceEvents"] = false,
["ignoreOptionsEventErrors"] = false,
},
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["width"] = 1,
["name"] = "Avoid Totems",
["useDesc"] = true,
["key"] = "avoidTotem",
["desc"] = "If toggled, the WA will avoid placing icons on totem nameplates.",
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["default"] = "Totem",
["name"] = "Totem Name (Translated)",
["multiline"] = false,
["key"] = "totem",
["length"] = 10,
["desc"] = "Insert the translated name for the creature type \"Totem\" suitable for your game client (e.g. EN/DE). First letter must be capitalized.",
["useLength"] = false,
},
},
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
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["useName"] = true,
["useStacks"] = false,
["useExactSpellId"] = false,
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["unitExists"] = false,
["auranames"] = {
"Ice Block",
},
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["type"] = "aura2",
["unit"] = "target",
["names"] = {
},
["useRem"] = false,
},
["untrigger"] = {
},
},
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["useName"] = true,
["useStacks"] = false,
["subeventSuffix"] = "_CAST_START",
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["unit"] = "target",
["unitExists"] = false,
["auranames"] = {
"Divine Shield",
},
["spellIds"] = {
},
["useExactSpellId"] = false,
["type"] = "aura2",
["names"] = {
},
["subeventPrefix"] = "SPELL",
["useRem"] = false,
},
["untrigger"] = {
},
},
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["useName"] = true,
["useStacks"] = false,
["subeventSuffix"] = "_CAST_START",
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["unitExists"] = false,
["auranames"] = {
"Cloak of Shadows",
},
["spellIds"] = {
},
["useExactSpellId"] = false,
["type"] = "aura2",
["unit"] = "target",
["names"] = {
},
["useRem"] = false,
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
["PRIEST"] = true,
["PALADIN"] = true,
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
["authorOptions"] = {
},
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
["discrete_rotation"] = 0,
["selfPoint"] = "CENTER",
["xOffset"] = 6.4,
["tocversion"] = 30300,
["id"] = "IMMUNE target visual",
["frameStrata"] = 2,
["alpha"] = 1,
["width"] = 255,
["uid"] = "25IZogHGlrc",
["config"] = {
},
["inverse"] = false,
["anchorFrameType"] = "SELECTFRAME",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["desc"] = "IMMUNE target highlight texture... (Bubble, Block, Cloak)",
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
["init"] = {
},
["finish"] = {
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
["selfPoint"] = "CENTER",
["frameStrata"] = 1,
["preferToUpdate"] = false,
["rotation"] = 0,
["font"] = "Friz Quadrata TT",
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
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["crop_x"] = 0.41,
["crop_y"] = 0.41,
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
["fontSize"] = 12,
["source"] = "import",
["startAngle"] = 0,
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["desaturateForeground"] = false,
["smoothProgress"] = false,
["useAdjustededMin"] = false,
["regionType"] = "progresstexture",
["uid"] = "Cgq2n87sjDi",
["blendMode"] = "BLEND",
["foregroundColor"] = {
0.06666666666666667,
1,
0,
1,
},
["anchorFrameType"] = "SCREEN",
["slantMode"] = "INSIDE",
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
["compress"] = false,
["mirror"] = false,
["tocversion"] = 30300,
["id"] = "Renew Indicator (P2)",
["backgroundColor"] = {
0,
0,
0,
1,
},
["alpha"] = 1,
["width"] = 30,
["config"] = {
},
["auraRotation"] = 0,
["inverse"] = false,
["xOffset"] = -670.577845228872,
["orientation"] = "ANTICLOCKWISE",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["backgroundOffset"] = 2,
},
["Polymorph"] = {
["iconSource"] = 0,
["color"] = {
1,
1,
1,
1,
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 200,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = true,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["dynamicDuration"] = true,
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["customDuration"] = "function()\n    \n    if aura_env.state then\n        return aura_env.state.duration,\n        aura_env.state.expirationTime\n    end\n    \nend",
["spellIds"] = {
},
["custom"] = "function(event, unit, spellName, icon, startMS, endMS, notInterruptible)\n    \n    if not startMS or not endMS then\n        return false\n    end\n    \n    if event == \"EVOLVE_ALERT_HIDE_POLYMORPH\" then\n        aura_env.state = nil\n        return false\n    end\n    \n    aura_env.state = {\n        show = true,\n        changed = true,\n        \n        progressType = \"timed\",\n        \n        duration = (endMS - startMS)/1000,\n        \n        expirationTime = GetTime() + (endMS - GetTime()*1000)/1000,\n        \n        icon = icon,\n        \n        name = spellName,\n        \n        autoHide = true,\n        \n        unit = unit,\n        \n        interruptible = not notInterruptible,\n    }\n    \n    return true\n    \nend",
["events"] = "EVOLVE_ALERT_POLYMORPH,EVOLVE_ALERT_HIDE_POLYMORPH",
["custom_type"] = "event",
["names"] = {
},
["unit"] = "player",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
["custom"] = "function()\n    \n    return true\n    \nend",
},
},
["disjunctive"] = "any",
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
["customFrames"] = 0,
["stopmotionBlendMode"] = "BLEND",
["stopmotionTexture"] = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\IconOverlays\\Heat",
["self_point"] = "CENTER",
["scale"] = 3,
["endPercent"] = 1,
["anchor_area"] = "ALL",
["anchor_mode"] = "area",
["startPercent"] = 0,
["animationType"] = "loop",
["stopmotionVisible"] = true,
["frameRate"] = 30,
["type"] = "substopmotion",
["progressSource"] = {
-2,
"",
},
["height"] = 32,
["barModelClip"] = true,
["stopmotionDesaturate"] = true,
["customFrameHeight"] = 0,
["width"] = 32,
["customFrameWidth"] = 0,
["customFileHeight"] = 0,
["inverse"] = false,
["customRows"] = 16,
["anchor_point"] = "CENTER",
["stopmotionColor"] = {
1,
0.9019608497619629,
0.9058824181556702,
1,
},
["customColumns"] = 16,
["customFileWidth"] = 0,
},
{
["customFrames"] = 0,
["stopmotionBlendMode"] = "BLEND",
["stopmotionTexture"] = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\IconOverlays\\SimpleOrange",
["self_point"] = "CENTER",
["scale"] = 3,
["endPercent"] = 0,
["customColumns"] = 16,
["anchor_mode"] = "area",
["anchor_area"] = "ALL",
["stopmotionColor"] = {
1,
0,
0.06666667014360428,
1,
},
["stopmotionVisible"] = true,
["frameRate"] = 60,
["type"] = "substopmotion",
["progressSource"] = {
-2,
"",
},
["anchor_point"] = "CENTER",
["customRows"] = 16,
["stopmotionDesaturate"] = false,
["inverse"] = false,
["width"] = 32,
["customFileHeight"] = 0,
["customFrameWidth"] = 0,
["customFrameHeight"] = 0,
["barModelClip"] = true,
["height"] = 32,
["animationType"] = "loop",
["startPercent"] = 1,
["customFileWidth"] = 0,
},
{
["type"] = "subbackground",
},
},
["height"] = 70,
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
["xOffset"] = 0,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["displayIcon"] = 136071,
["parent"] = "EvolveAlert",
["animation"] = {
["start"] = {
["type"] = "none",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "grow",
["easeStrength"] = 3,
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
},
["cooldown"] = true,
["authorOptions"] = {
},
["config"] = {
},
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["width"] = 70,
["id"] = "Polymorph",
["useCooldownModRate"] = true,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["uid"] = "kNZWvjz)(Z)",
["inverse"] = false,
["keepAspectRatio"] = false,
["conditions"] = {
},
["information"] = {
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
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
["itemName"] = 32964,
["type"] = "item",
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
["type"] = "item",
["itemName"] = 29274,
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
["itemName"] = 25295,
["type"] = "item",
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
["type"] = "subborder",
["border_size"] = 13,
["border_color"] = {
0,
1,
0.06666666666666667,
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
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\Spell_Holy_GreaterHeal",
["preferToUpdate"] = false,
["xOffset"] = -559.2889633596783,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "HEAL",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["width"] = 38,
["frameStrata"] = 1,
["uid"] = "3sMuxA7zFAr",
["inverse"] = false,
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
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["progressSource"] = {
-1,
"",
},
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
["itemName"] = 32963,
["type"] = "item",
["use_genericShowOn"] = true,
["subeventSuffix"] = "_CAST_START",
["subeventPrefix"] = "SPELL",
["use_inverse"] = false,
["event"] = "Item Equipped",
["unit"] = "player",
["use_itemSlot"] = false,
["use_itemSetName"] = false,
["spellIds"] = {
},
["genericShowOn"] = "showOnCooldown",
["names"] = {
},
["use_itemName"] = true,
["itemSetName"] = "",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
{
["trigger"] = {
["itemName"] = 31978,
["type"] = "item",
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
{
["trigger"] = {
["type"] = "item",
["itemName"] = 32962,
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
["type"] = "subborder",
["border_color"] = {
1,
0,
0.1098039215686275,
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
["uid"] = "SgRlvCFFHuQ",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = -559.2889633596783,
["information"] = {
["forceEvents"] = true,
},
["conditions"] = {
},
["preferToUpdate"] = false,
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["width"] = 38,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "DMG",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["config"] = {
},
["inverse"] = false,
["authorOptions"] = {
},
["displayIcon"] = "Interface\\Icons\\Spell_Shadow_Shadowform",
["cooldown"] = false,
["progressSource"] = {
-1,
"",
},
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
["finish"] = {
},
["init"] = {
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
["names"] = {
},
["spellIds"] = {
},
["auranames"] = {
"1787",
"58984",
"305628",
"115191",
},
["auraspellids"] = {
"66",
},
["subeventSuffix"] = "_CAST_START",
["type"] = "aura2",
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
["zoneIds"] = "",
["race"] = {
["single"] = "NightElf",
},
["use_race"] = true,
["use_spellknown"] = false,
["class"] = {
["single"] = "ROGUE",
["multi"] = {
["ROGUE"] = true,
["DRUID"] = true,
},
},
["use_zone"] = false,
["spellknown"] = 5215,
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMP",
["source"] = "import",
["mirror"] = false,
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameType"] = "SCREEN",
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\6TJ_Polluted_mist_Stormy",
["discrete_rotation"] = 0,
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
["duration_type"] = "seconds",
["translateType"] = "straightTranslate",
["rotate"] = 0,
["easeStrength"] = 3,
["preset"] = "grow",
["colorB"] = 1,
},
["main"] = {
["type"] = "preset",
["easeType"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["preset"] = "pulse",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["preset"] = "grow",
},
},
["frameStrata"] = 2,
["width"] = 1960,
["xOffset"] = 0,
["config"] = {
},
["alpha"] = 1,
["uid"] = "kBbzhHWQpyL",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["authorOptions"] = {
},
},
["Circle Class Frame [PRIEST]"] = {
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Priest\" then\n        return true\n    else\n        return false\n    end\nend",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Priest",
["authorOptions"] = {
},
["color"] = {
1,
0.9568627450980391,
0.9607843137254902,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PRIEST]",
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
["frameStrata"] = 4,
["uid"] = "QqN00qtyjy)",
["width"] = 104,
["config"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
},
["Circle Class Frame [WARLOCK]"] = {
["xOffset"] = 58.9998779296875,
["preferToUpdate"] = false,
["yOffset"] = 2.433349609375,
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Warlock\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
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
["authorOptions"] = {
},
["parent"] = "Circle Class Frames (TARGET)",
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARLOCK]",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["width"] = 104,
["frameStrata"] = 4,
["uid"] = "B95Gb9Dolel",
["config"] = {
},
["anchorFrameType"] = "SELECTFRAME",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["color"] = {
0.9882352941176471,
1,
0.9803921568627451,
1,
},
},
["Circle Class Frame [DRUID] 2"] = {
["parent"] = "Circle Class Frames (FOCUS)",
["preferToUpdate"] = false,
["yOffset"] = 1.896666603088379,
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Druid\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Druid",
["uid"] = "qMfPEvSCtq7",
["selfPoint"] = "CENTER",
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
["config"] = {
},
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
},
["STONEFORM target visual"] = {
["xOffset"] = 6.4,
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
"20594",
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
["color"] = {
1,
0.9686275124549866,
0,
1,
},
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
["selfPoint"] = "CENTER",
["authorOptions"] = {
},
["discrete_rotation"] = 0,
["tocversion"] = 30300,
["id"] = "STONEFORM target visual",
["anchorFrameType"] = "SELECTFRAME",
["alpha"] = 1,
["width"] = 255,
["config"] = {
},
["uid"] = "2lFFmf6xxUF",
["inverse"] = false,
["frameStrata"] = 2,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["desc"] = "IMMUNE target highlight texture... (Bubble, Block, Cloak)",
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
["BigDebuffs Auras Nameplate Defensives"] = false,
["BigDebuffs Auras Nameplate Silences"] = false,
["BigDebuffs Auras Nameplate Others"] = false,
["BigDebuffs Spell Lockout Nameplate - Custom"] = false,
["BigDebuffs Auras Nameplate Full Immunities"] = false,
["BigDebuffs Auras Nameplate CC"] = false,
["BigDebuffs Auras Nameplate Anti-CC"] = false,
},
["anchorPerUnit"] = "NAMEPLATE",
["space"] = 2,
["fullCircle"] = true,
["rowSpace"] = 1,
["url"] = "",
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
["subeventPrefix"] = "SPELL",
["names"] = {
},
["event"] = "Health",
["unit"] = "player",
},
["untrigger"] = {
},
},
},
["columnSpace"] = 1,
["radius"] = 200,
["anchorPoint"] = "CENTER",
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
["align"] = "CENTER",
["useLimit"] = false,
["gridType"] = "RD",
["useAnchorPerUnit"] = true,
["stagger"] = 0,
["authorOptions"] = {
},
["version"] = 10,
["subRegions"] = {
},
["rotation"] = 0,
["config"] = {
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
["borderInset"] = 1,
["backdropColor"] = {
1,
1,
1,
0.5,
},
["selfPoint"] = "LEFT",
["source"] = "import",
["gridWidth"] = 5,
["scale"] = 1,
["centerType"] = "LR",
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "dynamicgroup",
["borderSize"] = 2,
["sort"] = "none",
["animate"] = false,
["stepAngle"] = 15,
["constantFactor"] = "RADIUS",
["limit"] = 4,
["borderOffset"] = 4,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "Big Auras - Nameplates",
["frameStrata"] = 2,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["groupIcon"] = 136221,
["uid"] = "0TEhRYjgHh8",
["borderColor"] = {
0,
0,
0,
1,
},
["arcLength"] = 360,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["internalVersion"] = 88,
},
["Circle Class Frame [MAGE]"] = {
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
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Mage\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_TARGET_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["xOffset"] = 59,
["color"] = {
1,
0.9568627450980391,
0.9607843137254902,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [MAGE]",
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
["frameStrata"] = 4,
["config"] = {
},
["width"] = 104,
["uid"] = "OTPG(0)Aye7",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["authorOptions"] = {
},
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
["names"] = {
},
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["debuffType"] = "HELPFUL",
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
["scale"] = 1,
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "group",
["borderSize"] = 2,
["borderOffset"] = 4,
["tocversion"] = 30300,
["id"] = "Weapon Switches",
["uid"] = "K5NYFGjIbiX",
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["borderInset"] = 1,
["config"] = {
},
["xOffset"] = 0,
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
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["frameStrata"] = 1,
},
["STONEFORM focus visual"] = {
["color"] = {
1,
0.874509871006012,
0,
1,
},
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
"20594",
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
["xOffset"] = 6.399999952316285,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
["desc"] = "IMMUNE focus highlight texture... (Cloak, Bubble, Block)",
["authorOptions"] = {
},
["selfPoint"] = "CENTER",
["tocversion"] = 30300,
["id"] = "STONEFORM focus visual",
["width"] = 255,
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["uid"] = "xwdIHCPBh2a",
["inverse"] = false,
["frameStrata"] = 2,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["discrete_rotation"] = 0,
},
["IMMUNE focus visual"] = {
["xOffset"] = 6.399999952316285,
["preferToUpdate"] = false,
["yOffset"] = -16.06666679382324,
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
["debuffType"] = "HELPFUL",
["useName"] = true,
["useStacks"] = false,
["useExactSpellId"] = false,
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["unit"] = "focus",
["unitExists"] = false,
["auranames"] = {
"Ice Block",
},
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["type"] = "aura2",
["names"] = {
},
["subeventPrefix"] = "SPELL",
["useRem"] = false,
},
["untrigger"] = {
},
},
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["useName"] = true,
["useStacks"] = false,
["useExactSpellId"] = false,
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["unitExists"] = false,
["auranames"] = {
"Divine Shield",
},
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["type"] = "aura2",
["unit"] = "focus",
["names"] = {
},
["useRem"] = false,
},
["untrigger"] = {
},
},
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["useName"] = true,
["useStacks"] = false,
["useExactSpellId"] = false,
["useTotal"] = false,
["matchesShowOn"] = "showOnActive",
["event"] = "Health",
["names"] = {
},
["unitExists"] = false,
["auranames"] = {
"Cloak of Shadows",
},
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["type"] = "aura2",
["subeventPrefix"] = "SPELL",
["unit"] = "focus",
["useRem"] = false,
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
["PRIEST"] = true,
["PALADIN"] = true,
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
["authorOptions"] = {
},
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
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
["desc"] = "IMMUNE focus highlight texture... (Cloak, Bubble, Block)",
["color"] = {
1,
0.00784313725490196,
0,
1,
},
["tocversion"] = 30300,
["id"] = "IMMUNE focus visual",
["frameStrata"] = 2,
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["uid"] = "9BBiT8OblIu",
["config"] = {
},
["inverse"] = false,
["width"] = 255,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["discrete_rotation"] = 0,
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
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
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
["backgroundOffset"] = 2,
["authorOptions"] = {
},
["conditions"] = {
},
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
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["crop_y"] = 0.41,
["selfPoint"] = "CENTER",
["useAdjustededMax"] = false,
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["startAngle"] = 0,
["config"] = {
},
["fontSize"] = 12,
["mirror"] = false,
["anchorFrameFrame"] = "PartyFrame.MemberFrame2",
["regionType"] = "progresstexture",
["width"] = 43,
["blendMode"] = "BLEND",
["frameStrata"] = 9,
["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
["slantMode"] = "INSIDE",
["compress"] = false,
["load"] = {
["talent"] = {
["multi"] = {
[103] = true,
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
["size"] = {
["multi"] = {
},
},
},
["anchorPoint"] = "CENTER",
["useAdjustededMin"] = false,
["tocversion"] = 30300,
["id"] = "PW: Shield (P2)",
["smoothProgress"] = false,
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["auraRotation"] = 0,
["uid"] = "zDMEhE)lXyO",
["inverse"] = false,
["desaturateForeground"] = false,
["orientation"] = "ANTICLOCKWISE",
["crop_x"] = 0.41,
["information"] = {
["forceEvents"] = true,
},
["slanted"] = false,
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
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["subeventPrefix"] = "SPELL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["names"] = {
},
["event"] = "Health",
["debuffType"] = "HELPFUL",
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
["config"] = {
},
["tocversion"] = 30300,
["id"] = "Circle Class Frames (FOCUS)",
["xOffset"] = 0,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["yOffset"] = 0,
["borderInset"] = 1,
["uid"] = "9Lcfb1CqjxZ",
["alpha"] = 1,
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Paladin\" then\n        return true\n    else\n        return false\n    end\nend",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Paladin",
["width"] = 104,
["parent"] = "Circle Class Frames (FOCUS)",
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PALADIN] 2",
["authorOptions"] = {
},
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["alpha"] = 1,
["config"] = {
},
["uid"] = "hZI1fzlp1If",
["xOffset"] = 59,
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
["Circle Class Frame [PRIEST] 2"] = {
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Priest\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Priest",
["parent"] = "Circle Class Frames (FOCUS)",
["selfPoint"] = "CENTER",
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
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["alpha"] = 1,
["uid"] = "xIPPOvJrN1V",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
},
["Circle Class Frame [SHAMAN]"] = {
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Shaman\" then\n        return true\n    else\n        return false\n    end\nend",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Shaman",
["authorOptions"] = {
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [SHAMAN]",
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
["width"] = 104,
["frameStrata"] = 4,
["uid"] = "h)25fvrrLar",
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["color"] = {
1,
0.9882352941176471,
0.9568627450980391,
1,
},
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
["finish"] = {
},
["init"] = {
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
["names"] = {
},
["spellIds"] = {
},
["auranames"] = {
"1787",
"58984",
"305628",
"115191",
},
["auraspellids"] = {
"66",
},
["subeventSuffix"] = "_CAST_START",
["type"] = "aura2",
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
["zoneIds"] = "",
["race"] = {
["single"] = "NightElf",
},
["use_never"] = true,
["talent"] = {
["multi"] = {
},
},
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
["use_race"] = true,
["size"] = {
["multi"] = {
},
},
},
["textureWrapMode"] = "CLAMP",
["source"] = "import",
["mirror"] = false,
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameType"] = "SCREEN",
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\6TJ_Polluted_mist_Stormy",
["discrete_rotation"] = 0,
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
["duration_type"] = "seconds",
["preset"] = "grow",
},
["main"] = {
["type"] = "preset",
["easeType"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["preset"] = "pulse",
},
["finish"] = {
["type"] = "preset",
["easeType"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["preset"] = "grow",
},
},
["frameStrata"] = 2,
["width"] = 1960,
["xOffset"] = 0,
["config"] = {
},
["alpha"] = 1,
["uid"] = "f8VXnRZI0Jd",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["authorOptions"] = {
},
},
["Circle Class Frame [DRUID]"] = {
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Druid\" then\n        return true\n    else\n        return false\n    end\nend",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Druid",
["authorOptions"] = {
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [DRUID]",
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
["width"] = 104,
["frameStrata"] = 4,
["uid"] = "XZST3pUQSTa",
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["color"] = {
0.984313725490196,
0.9725490196078431,
1,
1,
},
},
["Cyclone"] = {
["iconSource"] = 0,
["parent"] = "EvolveAlert",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 200,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = true,
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
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "custom",
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["unit"] = "player",
["customDuration"] = "function()\n\n    if aura_env.state then\n        return aura_env.state.duration,\n               aura_env.state.expirationTime\n    end\n\nend",
["custom"] = "function(event, unit, spellName, icon, startMS, endMS, notInterruptible)\n    \n    if not startMS or not endMS then\n        return false\n    end\n    \n    if event == \"EVOLVE_ALERT_HIDE_CYCLONE\" then\n        aura_env.state = nil\n        return false\n    end\n    \n    aura_env.state = {\n        show = true,\n        changed = true,\n        \n        progressType = \"timed\",\n        \n        duration = (endMS - startMS)/1000,\n        \n        expirationTime = GetTime() + (endMS - GetTime()*1000)/1000,\n        \n        icon = icon,\n        \n        name = spellName,\n        \n        autoHide = true,\n        \n        unit = unit,\n        \n        interruptible = not notInterruptible,\n    }\n    \n    return true\n    \nend",
["spellIds"] = {
},
["events"] = "EVOLVE_ALERT_CYCLONE,EVOLVE_ALERT_HIDE_CYCLONE",
["custom_type"] = "event",
["names"] = {
},
["dynamicDuration"] = true,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
["custom"] = "function()\n\n    return true\n\nend",
},
},
["disjunctive"] = "any",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["animation"] = {
["start"] = {
["type"] = "none",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "grow",
["easeStrength"] = 3,
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
},
},
["desaturate"] = false,
["subRegions"] = {
{
["customFrames"] = 0,
["scale"] = 3,
["stopmotionTexture"] = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\IconOverlays\\Heat",
["self_point"] = "CENTER",
["stopmotionBlendMode"] = "BLEND",
["endPercent"] = 1,
["startPercent"] = 0,
["anchor_mode"] = "area",
["anchor_area"] = "ALL",
["animationType"] = "loop",
["stopmotionVisible"] = true,
["frameRate"] = 30,
["type"] = "substopmotion",
["progressSource"] = {
-2,
"",
},
["height"] = 32,
["barModelClip"] = true,
["stopmotionDesaturate"] = true,
["customFrameHeight"] = 0,
["stopmotionColor"] = {
1,
0.9098039865493774,
0.9647059440612793,
1,
},
["customFrameWidth"] = 0,
["customFileHeight"] = 0,
["inverse"] = false,
["customRows"] = 16,
["anchor_point"] = "CENTER",
["width"] = 32,
["customColumns"] = 16,
["customFileWidth"] = 0,
},
{
["customFrames"] = 0,
["stopmotionBlendMode"] = "BLEND",
["stopmotionTexture"] = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\IconOverlays\\SimpleOrange",
["self_point"] = "CENTER",
["scale"] = 3,
["endPercent"] = 0,
["customColumns"] = 16,
["anchor_mode"] = "area",
["anchor_area"] = "ALL",
["width"] = 32,
["stopmotionVisible"] = true,
["frameRate"] = 60,
["type"] = "substopmotion",
["progressSource"] = {
-2,
"",
},
["anchor_point"] = "CENTER",
["customRows"] = 16,
["stopmotionDesaturate"] = true,
["inverse"] = false,
["stopmotionColor"] = {
1,
0.8549020290374756,
0,
1,
},
["customFileHeight"] = 0,
["customFrameWidth"] = 0,
["customFrameHeight"] = 0,
["barModelClip"] = true,
["height"] = 32,
["animationType"] = "loop",
["startPercent"] = 1,
["customFileWidth"] = 0,
},
{
["type"] = "subbackground",
},
},
["height"] = 70,
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
["color"] = {
1,
1,
1,
1,
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["displayIcon"] = "136022",
["selfPoint"] = "CENTER",
["authorOptions"] = {
},
["cooldown"] = true,
["cooldownTextDisabled"] = false,
["config"] = {
},
["zoom"] = 0,
["alpha"] = 1,
["width"] = 70,
["id"] = "Cyclone",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["progressSource"] = {
-1,
"",
},
["uid"] = "dW4CIooAN0g",
["inverse"] = false,
["icon"] = true,
["conditions"] = {
},
["information"] = {
},
["xOffset"] = 0,
},
["BigDebuffs Auras Nameplate CC"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["xOffset"] = 67,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
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
["subeventPrefix"] = "SPELL",
["subeventSuffix"] = "_CAST_START",
["spellIds"] = {
},
["hostility"] = "hostile",
["type"] = "aura2",
["auraspellids"] = {
},
["fetchRaidMark"] = false,
["names"] = {
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
["debuffType"] = "HELPFUL",
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["unit"] = "player",
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
["text_text_format_p_format"] = "timed",
["text_text_format_p_time_dynamic_threshold"] = 60,
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
["text_anchorYOffset"] = 0,
["text_shadowYOffset"] = 0,
["anchorYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["text_fontType"] = "OUTLINE",
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["anchorXOffset"] = 0,
["text_text_format_p_time_precision"] = 1,
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
["pvp"] = true,
["none"] = true,
},
},
},
["useCooldownModRate"] = true,
["useAdjustededMax"] = false,
["icon"] = true,
["source"] = "import",
["parent"] = "Big Auras - Nameplates",
["cooldown"] = true,
["conditions"] = {
},
["cooldownEdge"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["uid"] = "gs57UcGFuRU",
["desc"] = "",
["anchorFrameType"] = "SCREEN",
["anchorFrameParent"] = false,
["frameStrata"] = 1,
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate CC",
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
["width"] = 33,
["adjustedMax"] = "",
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = 136022,
["information"] = {
["forceEvents"] = false,
["ignoreOptionsEventErrors"] = false,
},
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["width"] = 1,
["name"] = "Avoid Totems",
["useDesc"] = true,
["key"] = "avoidTotem",
["desc"] = "If toggled, the WA will avoid placing icons on totem nameplates.",
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["default"] = "Totem",
["name"] = "Totem Name (Translated)",
["multiline"] = false,
["key"] = "totem",
["length"] = 10,
["desc"] = "Insert the translated name for the creature type \"Totem\" suitable for your game client (e.g. EN/DE). First letter must be capitalized.",
["useLength"] = false,
},
},
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
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["border_size"] = 13,
["border_offset"] = 0,
["border_color"] = {
0.996078431372549,
0,
1,
1,
},
["border_visible"] = true,
["border_edge"] = "Gladdy Tooltip round",
["type"] = "subborder",
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
["glowDuration"] = 1,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
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
["uid"] = "uFZOZ)OYPOV",
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["selfPoint"] = "CENTER",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["conditions"] = {
},
["preferToUpdate"] = false,
["xOffset"] = -631.355630058134,
["width"] = 39.5,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "DOUBLE PENE",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["config"] = {
},
["inverse"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["displayIcon"] = "Interface\\Icons\\Ability_Rogue_Ambush",
["cooldown"] = false,
["progressSource"] = {
-1,
"",
},
},
["BigDebuffs Auras Nameplate Others"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["xOffset"] = 67,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
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
["auranames"] = {
"Fear Ward",
},
["names"] = {
},
["spellIds"] = {
},
["hostility"] = "hostile",
["type"] = "aura2",
["subeventPrefix"] = "SPELL",
["fetchRaidMark"] = false,
["group_countOperator"] = ">",
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
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["events"] = "TRIGGER:1",
["use_raidMarkIndex"] = false,
["check"] = "event",
["use_nameplateType"] = false,
["use_unit"] = true,
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
["text_text_format_p_format"] = "timed",
["text_text_format_p_time_dynamic_threshold"] = 60,
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
["text_anchorYOffset"] = 0,
["text_shadowYOffset"] = 0,
["anchorYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["text_fontType"] = "OUTLINE",
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["anchorXOffset"] = 0,
["text_text_format_p_time_precision"] = 1,
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
["pvp"] = true,
["none"] = true,
},
},
},
["useCooldownModRate"] = true,
["useAdjustededMax"] = false,
["icon"] = true,
["source"] = "import",
["parent"] = "Big Auras - Nameplates",
["cooldown"] = true,
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["op"] = "==",
["value"] = "Nature's Grasp",
["variable"] = "name",
},
["changes"] = {
{
["value"] = true,
["property"] = "sub.2.text_visible",
},
},
},
},
["cooldownEdge"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["uid"] = "u3pIBYMkxSl",
["desc"] = "",
["anchorFrameType"] = "SCREEN",
["anchorFrameParent"] = false,
["frameStrata"] = 1,
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate Others",
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
["width"] = 33,
["adjustedMax"] = "",
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = 132794,
["information"] = {
["forceEvents"] = true,
["debugLog"] = false,
},
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["width"] = 1,
["name"] = "Avoid Totems",
["useDesc"] = true,
["key"] = "avoidTotem",
["desc"] = "If toggled, auras will not show up on totem nameplates",
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["default"] = "Totem",
["name"] = "Totem Name",
["multiline"] = false,
["key"] = "totem",
["length"] = 10,
["desc"] = "Insert the regional translated name for the Creature Type \"Totem\". First letter must be capitalized.",
["useLength"] = false,
},
},
},
["Mana Burn"] = {
["iconSource"] = 0,
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 200,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = true,
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
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["dynamicDuration"] = true,
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["customDuration"] = "function()\n\n    if aura_env.state then\n        return aura_env.state.duration,\n               aura_env.state.expirationTime\n    end\n\nend",
["names"] = {
},
["custom"] = "function(event, unit, spellName, icon, startMS, endMS, notInterruptible)\n    \n    if not startMS or not endMS then\n        return false\n    end\n    \n    if event == \"EVOLVE_ALERT_HIDE_MANA_BURN\" then\n        aura_env.state = nil\n        return false\n    end\n    \n    aura_env.state = {\n        show = true,\n        changed = true,\n        \n        progressType = \"timed\",\n        \n        duration = (endMS - startMS)/1000,\n        \n        expirationTime = GetTime() + (endMS - GetTime()*1000)/1000,\n        \n        icon = icon,\n        \n        name = spellName,\n        \n        autoHide = true,\n        \n        unit = unit,\n        \n        interruptible = not notInterruptible,\n    }\n    \n    return true\n    \nend",
["custom_type"] = "event",
["events"] = "EVOLVE_ALERT_MANA_BURN,EVOLVE_ALERT_HIDE_MANA_BURN",
["spellIds"] = {
},
["unit"] = "player",
["custom_hide"] = "custom",
},
["untrigger"] = {
["custom"] = "function()\n\n    return true\n\nend",
},
},
["disjunctive"] = "any",
["activeTriggerMode"] = -10,
},
["internalVersion"] = 88,
["keepAspectRatio"] = false,
["animation"] = {
["start"] = {
["type"] = "none",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "grow",
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
["subRegions"] = {
{
["customFrames"] = 0,
["scale"] = 3,
["stopmotionTexture"] = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\IconOverlays\\Heat",
["self_point"] = "CENTER",
["stopmotionBlendMode"] = "BLEND",
["endPercent"] = 1,
["frameRate"] = 30,
["anchor_mode"] = "area",
["startPercent"] = 0,
["width"] = 32,
["stopmotionVisible"] = true,
["customColumns"] = 16,
["type"] = "substopmotion",
["progressSource"] = {
-2,
"",
},
["anchor_point"] = "CENTER",
["customRows"] = 16,
["stopmotionDesaturate"] = true,
["inverse"] = false,
["stopmotionColor"] = {
0,
0,
0,
1,
},
["customFileHeight"] = 0,
["customFrameWidth"] = 0,
["customFrameHeight"] = 0,
["barModelClip"] = true,
["height"] = 32,
["animationType"] = "loop",
["anchor_area"] = "ALL",
["customFileWidth"] = 0,
},
{
["customFrames"] = 0,
["scale"] = 3,
["stopmotionTexture"] = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\IconOverlays\\SimpleOrange",
["self_point"] = "CENTER",
["stopmotionBlendMode"] = "BLEND",
["endPercent"] = 0,
["startPercent"] = 1,
["anchor_mode"] = "area",
["anchor_area"] = "ALL",
["animationType"] = "loop",
["stopmotionVisible"] = true,
["customColumns"] = 16,
["type"] = "substopmotion",
["progressSource"] = {
-2,
"",
},
["height"] = 32,
["barModelClip"] = true,
["stopmotionDesaturate"] = true,
["customFrameHeight"] = 0,
["width"] = 32,
["customFrameWidth"] = 0,
["customFileHeight"] = 0,
["inverse"] = false,
["customRows"] = 16,
["anchor_point"] = "CENTER",
["stopmotionColor"] = {
1,
0.9764706492424011,
0.9529412388801575,
1,
},
["frameRate"] = 60,
["customFileWidth"] = 0,
},
{
["type"] = "subbackground",
},
},
["height"] = 70,
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
["parent"] = "EvolveAlert",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["conditions"] = {
},
["icon"] = true,
["progressSource"] = {
-1,
"",
},
["information"] = {
},
["zoom"] = 0,
["uid"] = "j79p9UZW10v",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["id"] = "Mana Burn",
["useCooldownModRate"] = true,
["alpha"] = 1,
["width"] = 70,
["xOffset"] = 0,
["config"] = {
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = "136170",
["cooldown"] = true,
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
["unit"] = "player",
["subeventPrefix"] = "SPELL",
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
["config"] = {
},
["tocversion"] = 30300,
["id"] = "Circle Class Frames (TARGET)",
["selfPoint"] = "CENTER",
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["groupIcon"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["uid"] = "qZaXlWpR3as",
["borderInset"] = 1,
["alpha"] = 1,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 0,
},
["PW: Shield (Self indicator)"] = {
["xOffset"] = -23.88891101596016,
["preferToUpdate"] = false,
["yOffset"] = -404.9558712188952,
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
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["unit"] = "player",
["useName"] = true,
["names"] = {
},
["auranames"] = {
"Weakened Soul",
},
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
["type"] = "none",
["easeType"] = "none",
["duration_type"] = "seconds",
["preset"] = "fade",
["easeStrength"] = 3,
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
["mirror"] = false,
["regionType"] = "texture",
["blendMode"] = "BLEND",
["texture"] = "Interface\\Addons\\TextureScript\\Swipe",
["uid"] = "(gJ6REEYYRb",
["discrete_rotation"] = 0,
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
["config"] = {
},
["frameStrata"] = 6,
["width"] = 36,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["authorOptions"] = {
},
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
["selfPoint"] = "CENTER",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["smoothProgress"] = false,
["useAdjustededMin"] = false,
["regionType"] = "progresstexture",
["auraRotation"] = 0,
["blendMode"] = "BLEND",
["fontSize"] = 12,
["anchorFrameType"] = "SCREEN",
["slantMode"] = "INSIDE",
["foregroundColor"] = {
0.06666666666666667,
1,
0,
1,
},
["mirror"] = false,
["compress"] = false,
["uid"] = "j1rhGb4pkGy",
["tocversion"] = 30300,
["id"] = "Renew Indicator (P1)",
["startAngle"] = 0,
["frameStrata"] = 1,
["width"] = 30,
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
["config"] = {
},
["inverse"] = false,
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["orientation"] = "ANTICLOCKWISE",
["crop_x"] = 0.41,
["information"] = {
["forceEvents"] = true,
},
["backgroundOffset"] = 2,
},
["EvolveAlert"] = {
["backdropColor"] = {
1,
1,
1,
0.5,
},
["controlledChildren"] = {
"Polymorph",
"Fear",
"Cyclone",
"Mana Burn",
},
["borderBackdrop"] = "Blizzard Tooltip",
["xOffset"] = 0,
["yOffset"] = 0,
["border"] = false,
["borderEdge"] = "Square Full White",
["anchorPoint"] = "CENTER",
["borderSize"] = 2,
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
["borderColor"] = {
0,
0,
0,
1,
},
["scale"] = 1,
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
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
},
["regionType"] = "group",
["borderOffset"] = 4,
["authorOptions"] = {
},
["selfPoint"] = "CENTER",
["id"] = "EvolveAlert",
["internalVersion"] = 88,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["borderInset"] = 1,
["uid"] = "zoxLXghGxSy",
["information"] = {
},
["subRegions"] = {
},
["alpha"] = 1,
["conditions"] = {
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
["config"] = {
},
},
["Circle Class Frame [ROGUE]"] = {
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Rogue\" then\n        return true\n    else\n        return false\n    end\nend",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Rogue",
["authorOptions"] = {
},
["color"] = {
1,
0.8823529411764706,
0,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [ROGUE]",
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
["frameStrata"] = 4,
["uid"] = "0CRscaaoT(h",
["width"] = 104,
["config"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
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
["init"] = {
},
["finish"] = {
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
["selfPoint"] = "CENTER",
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
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["useAdjustededMax"] = false,
["fontSize"] = 12,
["source"] = "import",
["startAngle"] = 0,
["backgroundColor"] = {
0,
0,
0,
1,
},
["uid"] = "(RQhG3)KGjS",
["mirror"] = false,
["useAdjustededMin"] = false,
["regionType"] = "progresstexture",
["auraRotation"] = 0,
["blendMode"] = "BLEND",
["anchorPoint"] = "CENTER",
["width"] = 30,
["slantMode"] = "INSIDE",
["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
["smoothProgress"] = false,
["compress"] = false,
["desaturateForeground"] = false,
["tocversion"] = 30300,
["id"] = "Mending Indicator (P1)",
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["crop_y"] = 0.41,
["config"] = {
},
["inverse"] = false,
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
["orientation"] = "ANTICLOCKWISE",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["backgroundOffset"] = 2,
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
["subeventPrefix"] = "SPELL",
["unit"] = "player",
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
["desc"] = "",
["version"] = 2,
["subRegions"] = {
},
["load"] = {
["talent"] = {
["multi"] = {
},
},
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
["zoneIds"] = "",
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
["borderInset"] = 1,
["borderOffset"] = 4,
["semver"] = "1.0.1",
["tocversion"] = 30300,
["id"] = "Invis additional visual",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["groupIcon"] = "Interface\\Icons\\Ability_Mage_Invisibility",
["config"] = {
},
["frameStrata"] = 2,
["uid"] = "vQTq0ZuVxji",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["authorOptions"] = {
},
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Warrior\" then\n        return true\n    else\n        return false\n    end\nend",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warrior",
["width"] = 104,
["parent"] = "Circle Class Frames (FOCUS)",
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARRIOR] 2",
["color"] = {
1,
0.9686274509803922,
0.9725490196078431,
1,
},
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["alpha"] = 1,
["config"] = {
},
["uid"] = "qQyU9Qhpyxa",
["xOffset"] = 59,
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
["Circle Class Frame [WARLOCK] 2"] = {
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Warlock\" then\n        return true\n    else\n        return false\n    end\nend",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["events"] = "PLAYER_FOCUS_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warlock",
["color"] = {
0.9882352941176471,
1,
0.9803921568627451,
1,
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARLOCK] 2",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["width"] = 104,
["frameStrata"] = 4,
["config"] = {
},
["anchorFrameType"] = "SELECTFRAME",
["uid"] = "g(5LpFJW(uF",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["authorOptions"] = {
},
},
["BigDebuffs Auras Nameplate Full Immunities"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["xOffset"] = 67,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
},
["triggers"] = {
{
["trigger"] = {
["showClones"] = true,
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["useName"] = true,
["names"] = {
},
["useHostility"] = true,
["hostility"] = "hostile",
["unit"] = "nameplate",
["ignoreSelf"] = false,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["auranames"] = {
"Cyclone",
"Divine Shield",
"Ice Block",
"The Beast Within",
"Nether Protection",
},
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
["debuffType"] = "HELPFUL",
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["unit"] = "player",
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
["text_text_format_p_format"] = "timed",
["text_text_format_p_time_dynamic_threshold"] = 60,
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
["text_anchorYOffset"] = 0,
["text_shadowYOffset"] = 0,
["anchorYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["text_fontType"] = "OUTLINE",
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["anchorXOffset"] = 0,
["text_text_format_p_time_precision"] = 1,
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
["pvp"] = true,
["none"] = true,
},
},
},
["useCooldownModRate"] = true,
["useAdjustededMax"] = false,
["icon"] = true,
["source"] = "import",
["parent"] = "Big Auras - Nameplates",
["cooldown"] = true,
["conditions"] = {
},
["cooldownEdge"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["uid"] = "QACLZBUfIBz",
["desc"] = "",
["anchorFrameType"] = "SCREEN",
["anchorFrameParent"] = false,
["frameStrata"] = 1,
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate Full Immunities",
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
["width"] = 33,
["adjustedMax"] = "",
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = 135896,
["information"] = {
["forceEvents"] = false,
["ignoreOptionsEventErrors"] = false,
},
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["width"] = 1,
["name"] = "Avoid Totems",
["useDesc"] = true,
["key"] = "avoidTotem",
["desc"] = "If toggled, the WA will avoid placing icons on totem nameplates.",
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["default"] = "Totem",
["name"] = "Totem Name (Translated)",
["multiline"] = false,
["key"] = "totem",
["length"] = 10,
["desc"] = "Insert the translated name for the creature type \"Totem\" suitable for your game client (e.g. EN/DE). First letter must be capitalized.",
["useLength"] = false,
},
},
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
["type"] = "subborder",
["border_size"] = 13,
["border_color"] = {
1,
0,
0.9333333969116211,
1,
},
["border_visible"] = true,
["border_edge"] = "Gladdy Tooltip round",
["border_offset"] = 0,
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
["parent"] = "Weapon Switches",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\Spell_Holy_SearingLight",
["preferToUpdate"] = false,
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["width"] = 39.5,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "SINGLE PENE",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["uid"] = "7b7ooklbiLs",
["inverse"] = false,
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
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["progressSource"] = {
-1,
"",
},
},
["Fear"] = {
["iconSource"] = 0,
["xOffset"] = 0,
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 200,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = true,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
["unit"] = "player",
["event"] = "Health",
["dynamicDuration"] = true,
["customDuration"] = "function()\n\n    if aura_env.state then\n        return aura_env.state.duration,\n               aura_env.state.expirationTime\n    end\n\nend",
["names"] = {
},
["spellIds"] = {
},
["custom_type"] = "event",
["events"] = "EVOLVE_ALERT_FEAR,EVOLVE_ALERT_HIDE_FEAR",
["custom"] = "function(event, unit, spellName, icon, startMS, endMS, notInterruptible)\n    \n    if not startMS or not endMS then\n        return false\n    end\n    \n    if event == \"EVOLVE_ALERT_HIDE_FEAR\" then\n        aura_env.state = nil\n        return false\n    end\n    \n    aura_env.state = {\n        show = true,\n        changed = true,\n        \n        progressType = \"timed\",\n        \n        duration = (endMS - startMS)/1000,\n        \n        expirationTime = GetTime() + (endMS - GetTime()*1000)/1000,\n        \n        icon = icon,\n        \n        name = spellName,\n        \n        autoHide = true,\n        \n        unit = unit,\n        \n        interruptible = not notInterruptible,\n    }\n    \n    return true\n    \nend",
["subeventPrefix"] = "SPELL",
["custom_hide"] = "custom",
},
["untrigger"] = {
["custom"] = "function()\n\n    return true\n\nend",
},
},
["disjunctive"] = "any",
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
["customFrames"] = 0,
["scale"] = 3,
["stopmotionTexture"] = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\IconOverlays\\Heat",
["self_point"] = "CENTER",
["stopmotionBlendMode"] = "BLEND",
["endPercent"] = 1,
["frameRate"] = 30,
["anchor_mode"] = "area",
["anchor_area"] = "ALL",
["stopmotionColor"] = {
0,
0,
0,
1,
},
["stopmotionVisible"] = true,
["customColumns"] = 16,
["type"] = "substopmotion",
["progressSource"] = {
-2,
"",
},
["anchor_point"] = "CENTER",
["customRows"] = 16,
["stopmotionDesaturate"] = true,
["inverse"] = false,
["width"] = 32,
["customFileHeight"] = 0,
["customFrameWidth"] = 0,
["customFrameHeight"] = 0,
["barModelClip"] = true,
["height"] = 32,
["animationType"] = "loop",
["startPercent"] = 0,
["customFileWidth"] = 0,
},
{
["customFrames"] = 0,
["stopmotionBlendMode"] = "BLEND",
["stopmotionTexture"] = "Interface\\AddOns\\WeakAurasStopMotion\\Textures\\IconOverlays\\SimpleOrange",
["self_point"] = "CENTER",
["scale"] = 3,
["endPercent"] = 0,
["startPercent"] = 1,
["anchor_mode"] = "area",
["anchor_area"] = "ALL",
["animationType"] = "loop",
["stopmotionVisible"] = true,
["customColumns"] = 16,
["type"] = "substopmotion",
["progressSource"] = {
-2,
"",
},
["height"] = 32,
["barModelClip"] = true,
["stopmotionDesaturate"] = false,
["customFrameHeight"] = 0,
["stopmotionColor"] = {
1,
0.9490196704864502,
0.9803922176361084,
1,
},
["customFrameWidth"] = 0,
["customFileHeight"] = 0,
["inverse"] = false,
["customRows"] = 16,
["anchor_point"] = "CENTER",
["width"] = 32,
["frameRate"] = 60,
["customFileWidth"] = 0,
},
{
["type"] = "subbackground",
},
},
["height"] = 70,
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
["parent"] = "EvolveAlert",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["conditions"] = {
},
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["animation"] = {
["start"] = {
["type"] = "none",
["easeType"] = "none",
["duration_type"] = "seconds",
["easeStrength"] = 3,
["preset"] = "grow",
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
["information"] = {
},
["authorOptions"] = {
},
["uid"] = "5hIOfXHgmLR",
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["id"] = "Fear",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["width"] = 70,
["alpha"] = 1,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = "136183",
["cooldown"] = true,
["color"] = {
1,
1,
1,
1,
},
},
["BigDebuffs Auras Nameplate Defensives"] = {
["iconSource"] = -1,
["wagoID"] = "6s7KYePbG",
["xOffset"] = 67,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -30,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["url"] = "",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
},
["triggers"] = {
{
["trigger"] = {
["showClones"] = true,
["type"] = "aura2",
["subeventSuffix"] = "_CAST_START",
["useName"] = true,
["names"] = {
},
["useHostility"] = true,
["hostility"] = "hostile",
["unit"] = "nameplate",
["ignoreSelf"] = false,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["auranames"] = {
"Nature's Swiftness",
"Divine Protection",
"Blessing of Protection",
"Fel Domination",
"Spell Reflection",
},
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
["debuffType"] = "HELPFUL",
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["unit"] = "player",
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
["text_text_format_p_format"] = "timed",
["text_text_format_p_time_dynamic_threshold"] = 60,
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
["text_anchorYOffset"] = 0,
["text_shadowYOffset"] = 0,
["anchorYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["text_fontType"] = "OUTLINE",
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["anchorXOffset"] = 0,
["text_text_format_p_time_precision"] = 1,
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
["glowScale"] = 1.55,
["glow"] = false,
["glowLength"] = 10,
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
["pvp"] = true,
["none"] = true,
},
},
},
["useCooldownModRate"] = true,
["useAdjustededMax"] = false,
["icon"] = true,
["source"] = "import",
["parent"] = "Big Auras - Nameplates",
["cooldown"] = true,
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
["value"] = "Retaliation",
["variable"] = "name",
},
{
["trigger"] = 1,
["op"] = "==",
["value"] = "Thorns",
["variable"] = "name",
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
["cooldownEdge"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["uid"] = "dxtWOmUuakE",
["desc"] = "",
["anchorFrameType"] = "SCREEN",
["anchorFrameParent"] = false,
["frameStrata"] = 1,
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate Defensives",
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
["width"] = 33,
["adjustedMax"] = "",
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = 132362,
["information"] = {
["forceEvents"] = false,
["ignoreOptionsEventErrors"] = false,
},
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["width"] = 1,
["name"] = "Avoid Totems",
["useDesc"] = true,
["key"] = "avoidTotem",
["desc"] = "If toggled, the WA will avoid placing icons on totem nameplates.",
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["default"] = "Totem",
["name"] = "Totem Name (Translated)",
["multiline"] = false,
["key"] = "totem",
["length"] = 10,
["desc"] = "Insert the translated name for the creature type \"Totem\" suitable for your game client (e.g. EN/DE). First letter must be capitalized.",
["useLength"] = false,
},
},
},
["Circle Class Frame [HUNTER] 2"] = {
["xOffset"] = 59,
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Hunter\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_FOCUS_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Hunter",
["width"] = 104,
["parent"] = "Circle Class Frames (FOCUS)",
["tocversion"] = 30300,
["id"] = "Circle Class Frame [HUNTER] 2",
["authorOptions"] = {
},
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["alpha"] = 1,
["config"] = {
},
["uid"] = "TI5L9PmeJeh",
["color"] = {
0.5882352941176471,
1,
0.6352941176470588,
1,
},
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
["Circle Class Frame [HUNTER]"] = {
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
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Hunter\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_TARGET_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Hunter",
["uid"] = "79KS2lhfE1D",
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
["config"] = {
},
["frameStrata"] = 4,
["width"] = 104,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
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
["crop_y"] = 0.41,
["fontSize"] = 12,
["useAdjustededMax"] = false,
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
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
["smoothProgress"] = false,
["useAdjustededMin"] = false,
["regionType"] = "progresstexture",
["uid"] = "sDcS8mazBDz",
["blendMode"] = "BLEND",
["anchorPoint"] = "CENTER",
["width"] = 30,
["slantMode"] = "INSIDE",
["startAngle"] = 0,
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["compress"] = false,
["mirror"] = false,
["tocversion"] = 30300,
["id"] = "Mending Indicator (P2)",
["backgroundColor"] = {
0,
0,
0,
1,
},
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["auraRotation"] = 0,
["config"] = {
},
["inverse"] = false,
["selfPoint"] = "CENTER",
["orientation"] = "ANTICLOCKWISE",
["crop_x"] = 0.41,
["information"] = {
["forceEvents"] = true,
},
["backgroundOffset"] = 2,
},
["Circle Class Frame [MAGE] 2"] = {
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Mage\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_FOCUS_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["config"] = {
},
["selfPoint"] = "CENTER",
["tocversion"] = 30300,
["id"] = "Circle Class Frame [MAGE] 2",
["xOffset"] = 59,
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["authorOptions"] = {
},
["uid"] = "r71p543s)oE",
["frameStrata"] = 4,
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
["Circle Class Frame [SHAMAN] 2"] = {
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Shaman\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_FOCUS_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Shaman",
["uid"] = "C3fWdU(hE3k",
["selfPoint"] = "CENTER",
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
["config"] = {
},
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
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
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["itemName"] = 28782,
["type"] = "item",
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
["type"] = "item",
["itemName"] = 30080,
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
["border_offset"] = 0,
["type"] = "subborder",
["border_color"] = {
1,
0.984313725490196,
0,
1,
},
["border_visible"] = true,
["border_edge"] = "Gladdy Tooltip round",
["border_size"] = 13,
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
["color"] = {
0.01176470588235294,
1,
0,
0,
},
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = -632.4222967565897,
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\Spell_Nature_ManaRegenTotem",
["preferToUpdate"] = false,
["authorOptions"] = {
},
["width"] = 38,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "MP5",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["uid"] = "7pW6VNO1BKk",
["inverse"] = false,
["icon"] = true,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["progressSource"] = {
-1,
"",
},
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
["type"] = "aura2",
["names"] = {
},
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["hostility"] = "hostile",
["auraspellids"] = {
},
["fetchRaidMark"] = false,
["unit"] = "nameplate",
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
["debuffType"] = "HELPFUL",
["custom"] = "function(allstates, event, triggerNum, triggerStates)\n    \n    if not triggerStates then return end\n    \n    for key, state in pairs(triggerStates) do\n        allstates[key] = state\n        \n        local shouldShow = UnitCreatureType(state.unit) ~= (aura_env.config.avoidTotem and aura_env.config.totem and aura_env.config.totem or \"Totem\") and true or false\n        \n        state.show = (not aura_env.config.avoidTotem or shouldShow) and state.show or false\n        state.changed = true    \n    end\n    \n    return true\nend\n\n",
["unit"] = "player",
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
["text_text_format_p_format"] = "timed",
["text_text_format_p_time_dynamic_threshold"] = 60,
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
["text_anchorYOffset"] = 0,
["text_shadowYOffset"] = 0,
["anchorYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_time_format"] = 0,
["text_fontType"] = "OUTLINE",
["anchor_point"] = "CENTER",
["text_fontSize"] = 13,
["anchorXOffset"] = 0,
["text_text_format_p_time_precision"] = 1,
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
0.04313725605607033,
1,
},
["glowStartAnim"] = false,
["glowXOffset"] = 0,
["glowDuration"] = 1,
["glowScale"] = 1,
["glowThickness"] = 1,
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
["pvp"] = true,
["none"] = true,
},
},
},
["useCooldownModRate"] = true,
["useAdjustededMax"] = false,
["keepAspectRatio"] = false,
["source"] = "import",
["url"] = "",
["cooldown"] = true,
["conditions"] = {
},
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["do_custom"] = false,
["custom"] = "",
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["uid"] = "4FnrjM5ApOi",
["desaturate"] = false,
["anchorFrameType"] = "SCREEN",
["anchorFrameParent"] = false,
["frameStrata"] = 1,
["zoom"] = 0,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.9",
["tocversion"] = 50500,
["id"] = "BigDebuffs Auras Nameplate Anti-CC",
["parent"] = "Big Auras - Nameplates",
["alpha"] = 1,
["width"] = 33,
["xOffset"] = 67,
["config"] = {
["avoidTotem"] = false,
["totem"] = "Totem",
},
["inverse"] = false,
["selfPoint"] = "CENTER",
["displayIcon"] = 136177,
["information"] = {
["forceEvents"] = false,
["ignoreOptionsEventErrors"] = false,
},
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["width"] = 1,
["name"] = "Avoid Totems",
["useDesc"] = true,
["key"] = "avoidTotem",
["desc"] = "If toggled, the WA will avoid placing icons on totem nameplates.",
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 1,
["default"] = "Totem",
["name"] = "Totem Name (Translated)",
["multiline"] = false,
["key"] = "totem",
["length"] = 10,
["desc"] = "Insert the translated name for the creature type \"Totem\" suitable for your game client (e.g. EN/DE). First letter must be capitalized.",
["useLength"] = false,
},
},
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
{
["trigger"] = {
["type"] = "item",
["itemName"] = 25295,
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
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["border_size"] = 13,
["border_offset"] = 0,
["border_color"] = {
0,
0.9490196078431372,
1,
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
["uid"] = "YPflZrAo6s0",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["parent"] = "Weapon Switches",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["conditions"] = {
},
["preferToUpdate"] = false,
["xOffset"] = -595.8222967089062,
["width"] = 38,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "SPIRIT",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["config"] = {
},
["inverse"] = false,
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
["displayIcon"] = "Interface\\Icons\\INV_Enchant_ShardBrilliantSmall",
["cooldown"] = false,
["progressSource"] = {
-1,
"",
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
["custom_hide"] = "timed",
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["unit"] = "player",
["spellIds"] = {
},
["custom"] = "function(_, event)\n    if event == \"LFG_READY_CHECK_SHOW\" then\n        for unit in WA_IterateGroupMembers() do\n            if aura_env.isAllowed(GetUnitName(unit)) then\n                LFGReadyCheckPopup.YesButton:Click()\n            end\n        end\n    end\nend",
["events"] = "LFG_READY_CHECK_SHOW",
["custom_type"] = "stateupdate",
["check"] = "event",
["names"] = {
},
["debuffType"] = "HELPFUL",
["customVariables"] = "\n\n",
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
["desc"] = "",
["config"] = {
["customlist"] = "Teddys, Ðaylie, Psherottv, Hylissang, Badmfka, Alecbaldwins",
},
["actions"] = {
["start"] = {
},
["init"] = {
["do_custom"] = true,
["custom"] = "local customlist = {}\n\nfor list in aura_env.config.customlist:gsub(\"%s+\", \"\"):gmatch('([^,]+)') do\n    customlist[list] = true\nend\n\nfunction aura_env.isAllowed(name)\n    if not name then \n        return false \n    end\n    \n    if customlist[name] then \n        return true \n    end\n    \n    return false\nend\n\n\n\n\n",
},
["finish"] = {
},
},
["url"] = "",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["cooldown"] = false,
["displayIcon"] = 135724,
["authorOptions"] = {
{
["text"] = "Add the player name you want to whitelist below. Make sure to seperate each name.\n\nE.g.:\n\nNeilyo, Vilden, Marm\n",
["type"] = "description",
["fontSize"] = "medium",
["width"] = 2,
},
{
["type"] = "input",
["useDesc"] = true,
["width"] = 2,
["multiline"] = true,
["default"] = "",
["key"] = "customlist",
["name"] = "Custom Whitelist",
["length"] = 10,
["desc"] = "Insert Name, Name",
["useLength"] = false,
},
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
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 30400,
["id"] = "Arena - AutoQueue Whitelist",
["zoom"] = 0,
["alpha"] = 1,
["width"] = 64,
["preferToUpdate"] = false,
["uid"] = "J8MGEI7i5Hg",
["inverse"] = false,
["keepAspectRatio"] = false,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["xOffset"] = 0,
},
["Rogue Nameplate GCD - CLOAK CHECK"] = {
["iconSource"] = -1,
["wagoID"] = "Xb146knOg",
["xOffset"] = -130.5,
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "RIGHT",
["cooldownSwipe"] = true,
["url"] = "",
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
["type"] = "custom",
["custom_type"] = "stateupdate",
["debuffType"] = "HELPFUL",
["event"] = "Health",
["unit"] = "player",
["custom"] = "function(states, event, unitId, _, spellId)\n    -- 1. Basic Validation\n    if not unitId or not spellId then return end\n    \n    -- 2. Cleanup for removed nameplates\n    if event == \"NAME_PLATE_UNIT_REMOVED\" then\n        if states[unitId] then\n            states[unitId].show = false\n            states[unitId].changed = true\n            return true\n        end\n        return\n    end\n    \n    -- 3. Filter: Only Players and only Enemies\n    if not UnitIsPlayer(unitId) or not UnitIsEnemy(\"player\", unitId) then return end\n    \n    -- 4. Filter: Only Rogues (ClassID 4)\n    local _, _, classId = UnitClass(unitId)\n    if classId ~= 4 then return end\n    \n    -- 5. Filter: Only if YOUR Psychic Scream is ready\n    -- 8122 is the Spell ID for Psychic Scream\n    local start, duration = GetSpellCooldown(8122)\n    -- If duration is > 1.5, it's on a real cooldown (not just the GCD)\n    local isReady = (start == 0 or duration <= 1.5) \n    \n    if not isReady then \n        if states[unitId] then\n            states[unitId].show = false\n            states[unitId].changed = true\n            return true\n        end\n        return \n    end\n    \n    -- 6. GCD Logic\n    local _, gcdMS = GetSpellBaseCooldown(spellId)\n    if gcdMS == 0 then return end\n    \n    -- GetSpellInfo varies by WoW version; using indexed returns for compatibility\n    local spellInfo = {GetSpellInfo(spellId)}\n    local icon = spellInfo[3]\n    local castTime = spellInfo[4]\n    \n    -- Ignore spells with actual cast times (we only want instant GCD triggers)\n    if castTime and castTime > 0 then return end\n    \n    -- Since we filtered for Rogues above, we know the GCD is 1 second\n    local durationVal = 1.0\n    local expiration = GetTime() + durationVal\n    \n    states[unitId] = {\n        show = true,\n        changed = true,\n        progressType = \"timed\",\n        duration = durationVal,\n        expirationTime = expiration,\n        autoHide = true,\n        icon = icon,\n        unit = unitId\n    }\n    \n    return true\nend",
["spellIds"] = {
},
["events"] = "UNIT_SPELLCAST_SUCCEEDED:nameplate,NAME_PLATE_UNIT_REMOVED, NAME_PLATE_UNIT_ADDED",
["names"] = {
},
["check"] = "event",
["subeventPrefix"] = "SPELL",
["subeventSuffix"] = "_CAST_START",
["customVariables"] = "",
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
["type"] = "subborder",
["border_color"] = {
0,
0,
0,
1,
},
["border_visible"] = false,
["border_edge"] = "Square Full White",
["border_offset"] = 0,
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
["anchorYOffset"] = 0,
["type"] = "subtext",
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_text_format_p_time_format"] = 0,
["text_shadowYOffset"] = 0,
["text_fontType"] = "OUTLINE",
["text_wordWrap"] = "WordWrap",
["text_visible"] = false,
["text_text_format_p_format"] = "timed",
["text_shadowXOffset"] = 0,
["anchor_point"] = "CENTER",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_text_format_p_time_mod_rate"] = true,
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
["zoom"] = 0,
["authorOptions"] = {
},
["icon"] = true,
["cooldown"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["conditions"] = {
},
["adjustedMax"] = "",
["color"] = {
1,
1,
1,
1,
},
["config"] = {
},
["anchorFrameParent"] = true,
["anchorFrameType"] = "NAMEPLATE",
["frameStrata"] = 1,
["cooldownTextDisabled"] = true,
["semver"] = "1.0.11",
["tocversion"] = 20502,
["id"] = "Rogue Nameplate GCD - CLOAK CHECK",
["useCooldownModRate"] = true,
["alpha"] = 1,
["width"] = 33,
["progressSource"] = {
-1,
"",
},
["uid"] = "Ejn4DxWB7y6",
["inverse"] = false,
["cooldownEdge"] = false,
["displayIcon"] = 136177,
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
["BigDebuffs Spell Lockout Nameplate - Custom"] = {
["iconSource"] = -1,
["xOffset"] = 67,
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
["pvp"] = true,
["none"] = true,
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
["debuffType"] = "HELPFUL",
["event"] = "Health",
["unit"] = "player",
["spellIds"] = {
},
["events"] = "CLEU:SPELL_INTERRUPT:SPELL_CAST_SUCCESS, NAME_PLATE_UNIT_ADDED, NAME_PLATE_UNIT_REMOVED, PLAYER_ENTERING_WORLD",
["custom"] = "function(allstates, event, ...)\n    \n    if event == \"OPTIONS\" then return true end\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        -- Unpack CLEU arguments properly\n        local timestamp, subEvent, _, _, _, _, _, destGUID, _, _, _, spellID = ...\n        \n        -- this is needed to track some (bugged?) channels like Penance (exceptions)\n        if subEvent == \"SPELL_CAST_SUCCESS\" and aura_env.interruptData[spellID] then\n            \n            local unit = aura_env:UnitTokenFromGUID(destGUID, true)\n            \n            if unit then\n                local _, _, _, _, _, _, immune, cSpellID = UnitChannelInfo(unit)\n                \n                if cSpellID and not aura_env.exceptions[cSpellID] then\n                    return -- not matching an exception spellID \n                end\n                \n                if immune ~= false then -- true (immune to interrupts) or nil (not casting)\n                    return\n                end\n            else\n                return -- didn't find a matching unit for the GUID so can't check if the interrupt was successful\n            end\n        end\n        \n        if destGUID then\n            local duration = aura_env.interruptData[spellID]\n            \n            if duration then\n                aura_env:AddInterrupt(allstates, destGUID, spellID, duration)\n                return true\n            end\n        end\n        \n        if subEvent == \"SPELL_INTERRUPT\" and aura_env.interruptData[spellID] then\n            if destGUID then\n                local duration = aura_env.interruptData[spellID]\n                \n                if duration then\n                    aura_env:AddInterrupt(allstates, destGUID, spellID, duration)\n                    return true\n                end\n            end\n        end\n        \n    elseif event == \"NAME_PLATE_UNIT_REMOVED\" then \n        local unit = ... -- The unit token is the first payload argument for nameplate events\n        \n        if unit and type(unit) == \"string\" then\n            local unitGUID = UnitGUID(unit)\n            if unitGUID then\n                aura_env:SetUnitShowInterrupts(allstates, unit, unitGUID, false)\n            end\n        end\n        \n    elseif event == \"NAME_PLATE_UNIT_ADDED\" then        \n        local unit = ... -- The unit token is the first payload argument for nameplate events\n        \n        if unit and type(unit) == \"string\" then\n            local unitGUID = UnitGUID(unit)\n            if unitGUID then\n                aura_env:SetUnitShowInterrupts(allstates, unit, unitGUID, true)\n            end\n        end\n        \n    elseif event == \"PLAYER_ENTERING_WORLD\" then\n        aura_env:ClearAllInterrupts(allstates)\n    end\n    \n    return true\nend",
["names"] = {
},
["check"] = "event",
["subeventPrefix"] = "SPELL",
["subeventSuffix"] = "_CAST_START",
["custom_hide"] = "timed",
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
["text_text_format_p_time_precision"] = 1,
["type"] = "subtext",
["text_text_format_p_time_dynamic_threshold"] = 60,
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
["text_visible"] = false,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "OUTLINE",
["anchorYOffset"] = 0,
["text_text_format_p_time_format"] = 0,
["anchor_point"] = "CENTER",
["text_fontSize"] = 30,
["anchorXOffset"] = 0,
["text_text_format_p_format"] = "timed",
},
},
["height"] = 33,
["useAdjustededMax"] = false,
["fontSize"] = 28,
["source"] = "import",
["adjustedMax"] = "",
["cooldown"] = true,
["zoom"] = 0,
["authorOptions"] = {
{
["type"] = "toggle",
["default"] = false,
["width"] = 1,
["name"] = "Hide Friendly",
["useDesc"] = true,
["key"] = "hideFriendly",
["desc"] = "Hides interrupts on friendly / non-attackable unit nameplates",
},
},
["displayIcon"] = 132219,
["customText"] = "function()\n    return aura_env.school..\"\\124r Locked\"\nend",
["uid"] = "qcSSDvgcP14",
["displayText_format_p_time_precision"] = 1,
["anchorFrameType"] = "NAMEPLATE",
["anchorFrameParent"] = false,
["frameStrata"] = 1,
["desc"] = "",
["justify"] = "LEFT",
["semver"] = "1.0.9",
["parent"] = "Big Auras - Nameplates",
["id"] = "BigDebuffs Spell Lockout Nameplate - Custom",
["automaticWidth"] = "Auto",
["useCooldownModRate"] = true,
["width"] = 33,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["custom"] = "aura_env.interruptData = {\n    [1766] = 5,      -- Kick R1 (Rogue)\n    [1767] = 5,    -- Kick R2 (Rogue)\n    [1768] = 5,    -- Kick R3 (Rogue)\n    [1769] = 5,    -- Kick R4 (Rogue)\n    [38768] = 5,   -- Kick R5 (Rogue)\n    [26679] = 3,  -- Deadly Throw (Rogue)\n    [2139] = 8,      -- Counterspell (Mage)\n    [6552] = 4,      -- Pummel R1 (Warrior)\n    [6554] = 4,    -- Pummel Rank 2 (Warrior)\n    [72] = 6,      -- Shield Bash R1  (Warrior)\n    [1671] = 6,    -- Shield Bash R2 (Warrior)\n    [1672] = 6,    -- Shield Bash R3 (Warrior)\n    [29704] = 6,   -- Shield Bash R4 (Warrior)\n    [19244] = 5,   -- Spell Lock Rank 1 (Warlock)\n    [19647] = 6,     -- Spell Lock Rank 2 (Warlock)\n    [8042] = 2,     -- Earth Shock (Shaman) r1\n    [8044] = 2,     -- Earth Shock (Shaman) r2\n    [8045] = 2,     -- Earth Shock (Shaman) r3\n    [8046] = 2,     -- Earth Shock (Shaman) r4\n    [10412] = 2,     -- Earth Shock (Shaman) r5\n    [10413] = 2,     -- Earth Shock (Shaman) r6\n    [10414] = 2,     -- Earth Shock (Shaman) r7\n    [25454] = 2,     -- Earth Shock (Shaman) r8\n    [16979] = 4,     -- Feral Charge\n}\n\n\naura_env.exceptions = {\n    [47757] = true, -- Penance\n}\n\naura_env.currentInterrupts = {}\n\naura_env.AddInterrupt = function(self, allstates, unitGUID, spellid, duration)\n    \n    if not allstates or not unitGUID or not spellid or not duration then return end\n    \n    if unitGUID and spellid and duration then\n        \n        local unit = self:UnitTokenFromGUID(unitGUID)\n        \n        self.currentInterrupts[unitGUID] = self.currentInterrupts[unitGUID] and self.currentInterrupts[unitGUID] or {}\n        \n        local t = GetTime()\n        \n        table.insert(self.currentInterrupts[unitGUID], { spellid = spellid, time = t, duration = duration})\n        \n        if unit then\n            self:SetActiveIcon(allstates, unit, unitGUID, spellid, duration, t)   \n        end\n    end \nend\n\naura_env.ClearAllInterrupts = function(self, allstates)\n    \n    if not allstates or not self.currentInterrupts then return end\n    \n    for key,state in pairs(allstates) do\n        state.show = false\n        state.changed = true\n    end\n    \n    self.currentInterrupts = {}\nend\n\naura_env.SetUnitShowInterrupts = function(self, allstates, unit, unitGUID, shown)\n    \n    if not unitGUID or shown == nil then return end\n    \n    if not self.currentInterrupts[unitGUID] then return end\n    \n    for _, table in pairs(self.currentInterrupts[unitGUID]) do\n        if shown then\n            self:SetActiveIcon(allstates, unit, unitGUID, table.spellid, table.duration, table.time)\n        else\n            self:SetInactiveIcon(allstates, unitGUID, table.spellid, table.time)\n        end\n    end\nend\n\naura_env.SetActiveIcon = function(self, allstates, unit, unitGUID, spellid, duration, time)\n    \n    if not allstates or not unit or not unitGUID or not spellid or not duration or not time then return end\n    \n    local name, _, icon = GetSpellInfo(spellid)\n    \n    if unit and aura_env.config[\"hideFriendly\"] and (UnitIsFriend(\"player\", unit) or not UnitCanAttack(\"player\", unit)) then return end\n    \n    local key = unitGUID..\" \"..spellid..\" \"..time\n    \n    local expirationTime = time + duration\n    \n    allstates[key] = {\n        show = true,\n        changed = true,\n        progressType = \"timed\",\n        duration = duration,\n        expirationTime = expirationTime,\n        autoHide = true,\n        name = name,\n        icon = icon,\n        unit = unit,\n    }\nend\n\naura_env.SetInactiveIcon = function(self, allstates, unitGUID, spellid, time)\n    if not allstates or not unitGUID or not spellid or not time then return end\n    \n    local key = unitGUID..\" \"..spellid..\" \"..time\n    \n    if not allstates[key] then return end\n    \n    allstates[key].changed = allstates[key].show ~= false\n    allstates[key].show = false\n    allstates[key].unit = nil -- we do this so the clone cannot possibly get re-attached to a new unitGUID with the same nameplate unitID\nend\n\nlocal nonNameplateUnits = { \"target\", \"focus\", \"arena1\", \"arena2\", \"arena3\", \"arena4\", \"arena5\", \"party1\", \"party2\", \"party3\", \"party4\"}\n\naura_env.UnitTokenFromGUID = function(self, unitGUID, includeNonNameplate)\n    if not unitGUID then return nil end\n    \n    -- In modern WoW, nameplates use specific unit IDs: nameplate1, nameplate2, etc.\n    for i = 1, 40 do\n        local unit = \"nameplate\"..i\n        if UnitExists(unit) then\n            if UnitGUID(unit) == unitGUID then\n                return unit\n            end\n        else\n            break -- If nameplateX doesn't exist, no higher ones will either\n        end\n    end\n    \n    if includeNonNameplate then\n        for _, unitID in pairs(nonNameplateUnits) do\n            if UnitExists(unitID) and UnitGUID(unitID) == unitGUID then\n                return unitID \n            end \n        end\n    end\n    \n    return nil\nend",
["do_custom"] = true,
},
},
["wordWrap"] = "WordWrap",
["inverse"] = false,
["displayText"] = "%c",
["shadowColor"] = {
0,
0,
0,
1,
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["debugLog"] = false,
},
["preferToUpdate"] = false,
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Rogue\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_FOCUS_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Rogue",
["parent"] = "Circle Class Frames (FOCUS)",
["selfPoint"] = "CENTER",
["tocversion"] = 30300,
["id"] = "Circle Class Frame [ROGUE] 2",
["authorOptions"] = {
},
["frameStrata"] = 4,
["width"] = 104,
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["alpha"] = 1,
["uid"] = "u(LrEvkDJ3l",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
},
["Circle Class Frame [PALADIN]"] = {
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Paladin\" then\n        return true\n    else\n        return false\n    end\nend",
["spellIds"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Paladin",
["uid"] = "rIoSAeOj6u0",
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
["config"] = {
},
["frameStrata"] = 4,
["width"] = 104,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
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
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["sameTexture"] = true,
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
["selfPoint"] = "CENTER",
["slanted"] = false,
["preferToUpdate"] = false,
["crop_x"] = 0.41,
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
["backgroundColor"] = {
0.5019607843137255,
0.5019607843137255,
0.5019607843137255,
0.5,
},
["crop_y"] = 0.41,
["load"] = {
["talent"] = {
["multi"] = {
[103] = true,
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
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["source"] = "import",
["startAngle"] = 0,
["uid"] = "nD2epxy)96V",
["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
["smoothProgress"] = false,
["anchorFrameFrame"] = "PartyFrame.MemberFrame1",
["regionType"] = "progresstexture",
["anchorFrameType"] = "SELECTFRAME",
["blendMode"] = "BLEND",
["alpha"] = 1,
["auraRotation"] = 0,
["slantMode"] = "INSIDE",
["compress"] = false,
["useAdjustededMin"] = false,
["anchorPoint"] = "CENTER",
["xOffset"] = -39.5333333492279,
["tocversion"] = 30300,
["id"] = "PW: Shield (P1)",
["mirror"] = false,
["frameStrata"] = 9,
["width"] = 43,
["fontSize"] = 12,
["config"] = {
},
["inverse"] = false,
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
["orientation"] = "ANTICLOCKWISE",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["backgroundOffset"] = 2,
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
["finish"] = {
},
["init"] = {
["do_custom"] = false,
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
["anchorXOffset"] = 0,
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
["text_visible"] = true,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "OUTLINE",
["text_shadowXOffset"] = 0,
["text_text_format_p_pad_max"] = 8,
["anchor_point"] = "INNER_BOTTOMRIGHT",
["text_fontSize"] = 20,
["text_text_format_p_time_dynamic_threshold"] = 12,
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
["glowScale"] = 1,
["glowXOffset"] = 0,
["glow"] = false,
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
["color"] = {
1,
1,
1,
0,
},
["config"] = {
},
["authorOptions"] = {
},
["selfPoint"] = "CENTER",
["anchorFrameFrame"] = "PetFrame",
["regionType"] = "icon",
["information"] = {
["forceEvents"] = true,
},
["conditions"] = {
},
["internalVersion"] = 88,
["icon"] = true,
["width"] = 30,
["alpha"] = 1,
["zoom"] = 0.2099999934434891,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "Shadowfiend Duration",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["useAdjustededMin"] = false,
["uid"] = "lkGdLzT6(7M",
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\Spell_Shadow_Shadowfiend",
["cooldown"] = false,
["preferToUpdate"] = false,
},
},
["lastArchiveClear"] = 1783678642,
["minimap"] = {
["minimapPos"] = 227.4941477608886,
["hide"] = true,
},
["lastUpgrade"] = 1768544476,
["personalRessourceDisplayFrame"] = {
["xOffset"] = -1014.877228671812,
["yOffset"] = -469.8203430304768,
},
["migrationCutoff"] = 730,
["registered"] = {
},
["historyCutoff"] = 730,
["dbVersion"] = 88,
["editor_theme"] = "Monokai",
}
