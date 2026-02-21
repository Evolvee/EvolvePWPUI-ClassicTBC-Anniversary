
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Warrior\" then\n        return true\n    else\n        return false\n    end\nend",
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
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warrior",
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
["authorOptions"] = {
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARRIOR]",
["color"] = {
1,
0.9686274509803922,
0.9725490196078431,
1,
},
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 4,
["config"] = {
},
["width"] = 104,
["uid"] = "G(TBcTmVwJO",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
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
["discrete_rotation"] = 0,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
["xOffset"] = 6.4,
["authorOptions"] = {
},
["desc"] = "IMMUNE target highlight texture... (Bubble, Block, Cloak)",
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
["selfPoint"] = "CENTER",
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
["itemName"] = 28771,
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
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["xOffset"] = -559.2889633596783,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\Spell_Holy_GreaterHeal",
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "HEAL",
["frameStrata"] = 1,
["alpha"] = 1,
["width"] = 38,
["authorOptions"] = {
},
["uid"] = "3sMuxA7zFAr",
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
["itemName"] = 32450,
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
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["information"] = {
["forceEvents"] = true,
},
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
["cooldownTextDisabled"] = false,
["width"] = 38,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "DMG",
["alpha"] = 1,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["xOffset"] = -559.2889633596783,
["config"] = {
},
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\Spell_Shadow_Shadowform",
["cooldown"] = false,
["authorOptions"] = {
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
["discrete_rotation"] = 0,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\6TJ_Polluted_mist_Stormy",
["color"] = {
1,
0,
0.05490196078431373,
1,
},
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
["semver"] = "1.0.1",
["tocversion"] = 30300,
["id"] = "Stealth Effect BOTTOM",
["xOffset"] = 0,
["frameStrata"] = 2,
["width"] = 1960,
["alpha"] = 1,
["config"] = {
},
["uid"] = "kBbzhHWQpyL",
["anchorFrameType"] = "SCREEN",
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Priest\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_TARGET_CHANGED",
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
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Priest",
["alpha"] = 1,
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
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["width"] = 104,
["uid"] = "QqN00qtyjy)",
["config"] = {
},
["authorOptions"] = {
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
["events"] = "PLAYER_TARGET_CHANGED",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Warlock\" then\n        return true\n    else\n        return false\n    end\nend",
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
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warlock",
["uid"] = "B95Gb9Dolel",
["parent"] = "Circle Class Frames (TARGET)",
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARLOCK]",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["width"] = 104,
["frameStrata"] = 4,
["config"] = {
},
["anchorFrameType"] = "SELECTFRAME",
["authorOptions"] = {
},
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
["events"] = "PLAYER_FOCUS_CHANGED",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Druid\" then\n        return true\n    else\n        return false\n    end\nend",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Druid",
["selfPoint"] = "CENTER",
["authorOptions"] = {
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [DRUID] 2",
["color"] = {
0.984313725490196,
0.9725490196078431,
1,
1,
},
["alpha"] = 1,
["width"] = 104,
["frameStrata"] = 4,
["config"] = {
},
["anchorFrameType"] = "SELECTFRAME",
["uid"] = "qMfPEvSCtq7",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Druid\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_TARGET_CHANGED",
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
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Druid",
["alpha"] = 1,
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
["frameStrata"] = 4,
["width"] = 104,
["anchorFrameType"] = "SELECTFRAME",
["uid"] = "XZST3pUQSTa",
["config"] = {
},
["authorOptions"] = {
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
["selfPoint"] = "CENTER",
["xOffset"] = -631.355630058134,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["information"] = {
["forceEvents"] = true,
},
["conditions"] = {
},
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["cooldownTextDisabled"] = false,
["width"] = 39.5,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "DOUBLE PENE",
["frameStrata"] = 1,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["authorOptions"] = {
},
["config"] = {
},
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\Ability_Rogue_Ambush",
["cooldown"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
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
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
["color"] = {
1,
0.00784313725490196,
0,
1,
},
["authorOptions"] = {
},
["discrete_rotation"] = 0,
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
["desc"] = "IMMUNE focus highlight texture... (Cloak, Bubble, Block)",
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
["borderInset"] = 1,
["tocversion"] = 30300,
["id"] = "Circle Class Frames (FOCUS)",
["xOffset"] = 0,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["yOffset"] = 0,
["uid"] = "9Lcfb1CqjxZ",
["alpha"] = 1,
["config"] = {
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["events"] = "PLAYER_FOCUS_CHANGED",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Paladin\" then\n        return true\n    else\n        return false\n    end\nend",
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
["config"] = {
},
["parent"] = "Circle Class Frames (FOCUS)",
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PALADIN] 2",
["authorOptions"] = {
},
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["alpha"] = 1,
["uid"] = "hZI1fzlp1If",
["xOffset"] = 59,
["width"] = 104,
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
["class"] = {
["single"] = "ROGUE",
["multi"] = {
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
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
["discrete_rotation"] = 0,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\6TJ_Polluted_mist_Stormy",
["color"] = {
0,
0.8196078431372549,
1,
1,
},
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
["semver"] = "1.0.1",
["tocversion"] = 30300,
["id"] = "Stealth Effect TOP",
["xOffset"] = 0,
["frameStrata"] = 2,
["width"] = 1960,
["alpha"] = 1,
["config"] = {
},
["uid"] = "f8VXnRZI0Jd",
["anchorFrameType"] = "SCREEN",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["authorOptions"] = {
},
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
["discrete_rotation"] = 0,
["color"] = {
1,
0,
0.09803921568627451,
0.5200000107288361,
},
["tocversion"] = 30300,
["id"] = "PW: Shield (Self indicator)",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 6,
["config"] = {
},
["width"] = 36,
["uid"] = "(gJ6REEYYRb",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["authorOptions"] = {
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Rogue\" then\n        return true\n    else\n        return false\n    end\nend",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
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
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Rogue",
["alpha"] = 1,
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
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["width"] = 104,
["uid"] = "0CRscaaoT(h",
["config"] = {
},
["authorOptions"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
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
["scale"] = 1,
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "group",
["borderSize"] = 2,
["borderOffset"] = 4,
["tocversion"] = 30300,
["id"] = "Weapon Switches",
["selfPoint"] = "CENTER",
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
["unit"] = "player",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["custom"] = "function(_, event)\n    if event == \"LFG_READY_CHECK_SHOW\" then\n        for unit in WA_IterateGroupMembers() do\n            if aura_env.isAllowed(GetUnitName(unit)) then\n                LFGReadyCheckPopup.YesButton:Click()\n            end\n        end\n    end\nend",
["spellIds"] = {
},
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
["config"] = {
["customlist"] = "Teddys",
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["cooldown"] = false,
["displayIcon"] = "",
["preferToUpdate"] = false,
["xOffset"] = 0,
["anchorFrameType"] = "SCREEN",
["useCooldownModRate"] = true,
["cooldownTextDisabled"] = false,
["zoom"] = 0,
["tocversion"] = 30400,
["id"] = "Arena - AutoQueue Whitelist",
["url"] = "",
["frameStrata"] = 1,
["width"] = 64,
["alpha"] = 1,
["uid"] = "J8MGEI7i5Hg",
["inverse"] = false,
["keepAspectRatio"] = false,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["events"] = "PLAYER_FOCUS_CHANGED",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Warrior\" then\n        return true\n    else\n        return false\n    end\nend",
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
["config"] = {
},
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
["uid"] = "qQyU9Qhpyxa",
["xOffset"] = 59,
["width"] = 104,
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
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
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
["fontSize"] = 12,
["source"] = "import",
["startAngle"] = 0,
["auraRotation"] = 0,
["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
["mirror"] = false,
["anchorFrameFrame"] = "PartyFrame.MemberFrame2",
["regionType"] = "progresstexture",
["width"] = 43,
["blendMode"] = "BLEND",
["frameStrata"] = 9,
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
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
["uid"] = "zDMEhE)lXyO",
["config"] = {
},
["inverse"] = false,
["desaturateForeground"] = false,
["orientation"] = "ANTICLOCKWISE",
["crop_x"] = 0.41,
["information"] = {
["forceEvents"] = true,
},
["slanted"] = false,
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
["events"] = "PLAYER_FOCUS_CHANGED",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Priest\" then\n        return true\n    else\n        return false\n    end\nend",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Priest",
["width"] = 104,
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
["anchorFrameType"] = "SELECTFRAME",
["alpha"] = 1,
["config"] = {
},
["uid"] = "xIPPOvJrN1V",
["parent"] = "Circle Class Frames (FOCUS)",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Hunter\" then\n        return true\n    else\n        return false\n    end\nend",
["use_unit"] = true,
["custom_type"] = "event",
["events"] = "PLAYER_FOCUS_CHANGED",
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
["config"] = {
},
["parent"] = "Circle Class Frames (FOCUS)",
["tocversion"] = 30300,
["id"] = "Circle Class Frame [HUNTER] 2",
["authorOptions"] = {
},
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["alpha"] = 1,
["uid"] = "TI5L9PmeJeh",
["color"] = {
0.5882352941176471,
1,
0.6352941176470588,
1,
},
["width"] = 104,
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["events"] = "PLAYER_FOCUS_CHANGED",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Warlock\" then\n        return true\n    else\n        return false\n    end\nend",
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
["alpha"] = 1,
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARLOCK] 2",
["selfPoint"] = "CENTER",
["frameStrata"] = 4,
["width"] = 104,
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["uid"] = "g(5LpFJW(uF",
["color"] = {
0.9882352941176471,
1,
0.9803921568627451,
1,
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["authorOptions"] = {
},
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
["events"] = "PLAYER_TARGET_CHANGED",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Mage\" then\n        return true\n    else\n        return false\n    end\nend",
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
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["alpha"] = 1,
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
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["width"] = 104,
["config"] = {
},
["uid"] = "OTPG(0)Aye7",
["xOffset"] = 59,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["authorOptions"] = {
},
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
["selfPoint"] = "CENTER",
["borderOffset"] = 4,
["semver"] = "1.0.1",
["tocversion"] = 30300,
["id"] = "Invis additional visual",
["authorOptions"] = {
},
["frameStrata"] = 2,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["config"] = {
},
["uid"] = "vQTq0ZuVxji",
["borderInset"] = 1,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["groupIcon"] = "Interface\\Icons\\Ability_Mage_Invisibility",
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
["events"] = "PLAYER_TARGET_CHANGED",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Hunter\" then\n        return true\n    else\n        return false\n    end\nend",
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
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Hunter",
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
["color"] = {
0.5882352941176471,
1,
0.6352941176470588,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [HUNTER]",
["authorOptions"] = {
},
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 4,
["config"] = {
},
["width"] = 104,
["uid"] = "79KS2lhfE1D",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 59,
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
0.9411764705882353,
0,
1,
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
["parent"] = "Weapon Switches",
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\Spell_Holy_SearingLight",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["cooldownTextDisabled"] = false,
["width"] = 39.5,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "SINGLE PENE",
["frameStrata"] = 1,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["authorOptions"] = {
},
["uid"] = "7b7ooklbiLs",
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Shaman\" then\n        return true\n    else\n        return false\n    end\nend",
["use_unit"] = true,
["custom_type"] = "event",
["spellIds"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
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
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Shaman",
["alpha"] = 1,
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
["frameStrata"] = 4,
["width"] = 104,
["anchorFrameType"] = "SELECTFRAME",
["uid"] = "h)25fvrrLar",
["config"] = {
},
["authorOptions"] = {
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
["events"] = "PLAYER_FOCUS_CHANGED",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Shaman\" then\n        return true\n    else\n        return false\n    end\nend",
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
["selfPoint"] = "CENTER",
["authorOptions"] = {
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [SHAMAN] 2",
["color"] = {
1,
0.9882352941176471,
0.9568627450980391,
1,
},
["alpha"] = 1,
["width"] = 104,
["frameStrata"] = 4,
["config"] = {
},
["anchorFrameType"] = "SELECTFRAME",
["uid"] = "C3fWdU(hE3k",
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
["itemName"] = 30732,
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
["authorOptions"] = {
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\Spell_Nature_ManaRegenTotem",
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["cooldownTextDisabled"] = false,
["width"] = 38,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "MP5",
["alpha"] = 1,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["xOffset"] = -632.4222967565897,
["uid"] = "7pW6VNO1BKk",
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
["icon"] = true,
},
["Renew Indicator (P1) 2"] = {
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
["id"] = "Renew Indicator (P1) 2",
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
["itemName"] = 28604,
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
["parent"] = "Weapon Switches",
["xOffset"] = -595.8222967089062,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["information"] = {
["forceEvents"] = true,
},
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
["cooldownTextDisabled"] = false,
["width"] = 38,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 30300,
["id"] = "SPIRIT",
["alpha"] = 1,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["authorOptions"] = {
},
["config"] = {
},
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\INV_Enchant_ShardBrilliantSmall",
["cooldown"] = false,
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
},
["Renew Indicator (P2) 2"] = {
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
["id"] = "Renew Indicator (P2) 2",
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Mage\" then\n        return true\n    else\n        return false\n    end\nend",
["use_unit"] = true,
["custom_type"] = "event",
["events"] = "PLAYER_FOCUS_CHANGED",
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["selfPoint"] = "CENTER",
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [MAGE] 2",
["authorOptions"] = {
},
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 4,
["uid"] = "r71p543s)oE",
["width"] = 104,
["config"] = {
},
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
["uid"] = "qZaXlWpR3as",
["tocversion"] = 30300,
["id"] = "Circle Class Frames (TARGET)",
["selfPoint"] = "CENTER",
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["groupIcon"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["borderInset"] = 1,
["alpha"] = 1,
["config"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["xOffset"] = 0,
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
["events"] = "PLAYER_FOCUS_CHANGED",
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Rogue\" then\n        return true\n    else\n        return false\n    end\nend",
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
["width"] = 104,
["selfPoint"] = "CENTER",
["tocversion"] = 30300,
["id"] = "Circle Class Frame [ROGUE] 2",
["authorOptions"] = {
},
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["alpha"] = 1,
["config"] = {
},
["uid"] = "u(LrEvkDJ3l",
["parent"] = "Circle Class Frames (FOCUS)",
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
["events"] = "PLAYER_TARGET_CHANGED",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Paladin\" then\n        return true\n    else\n        return false\n    end\nend",
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
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Paladin",
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
["authorOptions"] = {
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PALADIN]",
["color"] = {
1,
0.9254901960784314,
0.9607843137254902,
1,
},
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 4,
["config"] = {
},
["width"] = 104,
["uid"] = "rIoSAeOj6u0",
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
["startAngle"] = 0,
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
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
["config"] = {
},
["uid"] = "nD2epxy)96V",
["smoothProgress"] = false,
["anchorFrameFrame"] = "PartyFrame.MemberFrame1",
["regionType"] = "progresstexture",
["anchorFrameType"] = "SELECTFRAME",
["blendMode"] = "BLEND",
["alpha"] = 1,
["fontSize"] = 12,
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
["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
["auraRotation"] = 0,
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
["text_fontType"] = "OUTLINE",
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
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
["anchorFrameFrame"] = "PetFrame",
["config"] = {
},
["color"] = {
1,
1,
1,
0,
},
["icon"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["information"] = {
["forceEvents"] = true,
},
["conditions"] = {
},
["authorOptions"] = {
},
["preferToUpdate"] = false,
["width"] = 30,
["useCooldownModRate"] = true,
["zoom"] = 0.2099999934434891,
["cooldownTextDisabled"] = false,
["tocversion"] = 30300,
["id"] = "Shadowfiend Duration",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 1,
["uid"] = "lkGdLzT6(7M",
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\Spell_Shadow_Shadowfiend",
["cooldown"] = false,
["internalVersion"] = 88,
},
},
["registered"] = {
},
["editor_font_size"] = 12,
["lastArchiveClear"] = 1770758466,
["minimap"] = {
["minimapPos"] = 227.4941477608886,
["hide"] = true,
},
["lastUpgrade"] = 1768544476,
["dbVersion"] = 88,
["migrationCutoff"] = 730,
["features"] = {
},
["login_squelch_time"] = 10,
["historyCutoff"] = 730,
["editor_theme"] = "Monokai",
}
