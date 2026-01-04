
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["login_squelch_time"] = 10,
["registered"] = {
},
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Warrior\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_TARGET_CHANGED",
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 87,
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warrior",
["anchorFrameType"] = "SELECTFRAME",
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARRIOR]",
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
["config"] = {
},
["authorOptions"] = {
},
["uid"] = "G(TBcTmVwJO",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["color"] = {
1,
0.9686274509803922,
0.9725490196078431,
1,
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
["internalVersion"] = 87,
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
["discrete_rotation"] = 0,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
["xOffset"] = 6.4,
["authorOptions"] = {
},
["desc"] = "IMMUNE target highlight texture... (Bubble, Block, Cloak)",
["tocversion"] = 30300,
["id"] = "IMMUNE target visual",
["width"] = 255,
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["uid"] = "25IZogHGlrc",
["inverse"] = false,
["frameStrata"] = 2,
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
["yOffset"] = -403.4005842732191,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["itemName"] = 33743,
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
["internalVersion"] = 87,
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
["uid"] = "3sMuxA7zFAr",
["xOffset"] = -560.355630058134,
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
["preferToUpdate"] = false,
["zoom"] = 0,
["width"] = 39.5,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 30300,
["id"] = "HEAL",
["authorOptions"] = {
},
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["config"] = {
},
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\Spell_Holy_GreaterHeal",
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
["DMG"] = {
["iconSource"] = 0,
["parent"] = "Weapon Switches",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -367.4005842732191,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["itemName"] = 33763,
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
["activeTriggerMode"] = -10,
},
["internalVersion"] = 87,
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
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["authorOptions"] = {
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
["preferToUpdate"] = false,
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 30300,
["id"] = "DMG",
["xOffset"] = -560.355630058134,
["useCooldownModRate"] = true,
["width"] = 39.5,
["alpha"] = 1,
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
["internalVersion"] = 87,
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
["alpha"] = 1,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\6TJ_Polluted_mist_Stormy",
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
["discrete_rotation"] = 0,
["semver"] = "1.0.1",
["tocversion"] = 30300,
["id"] = "Stealth Effect BOTTOM",
["authorOptions"] = {
},
["frameStrata"] = 2,
["width"] = 1960,
["color"] = {
1,
0,
0.05490196078431373,
1,
},
["uid"] = "kBbzhHWQpyL",
["anchorFrameType"] = "SCREEN",
["config"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["xOffset"] = 0,
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
["spellIds"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Priest\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Priest",
["config"] = {
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PRIEST]",
["alpha"] = 1,
["frameStrata"] = 4,
["width"] = 104,
["anchorFrameType"] = "SELECTFRAME",
["uid"] = "QqN00qtyjy)",
["color"] = {
1,
0.9568627450980391,
0.9607843137254902,
1,
},
["authorOptions"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Warlock\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_TARGET_CHANGED",
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 87,
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
["anchorFrameFrame"] = "TargetFrame",
["regionType"] = "texture",
["blendMode"] = "ADD",
["anchorFrameParent"] = true,
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Warlock",
["width"] = 104,
["color"] = {
0.9882352941176471,
1,
0.9803921568627451,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARLOCK]",
["selfPoint"] = "CENTER",
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["alpha"] = 1,
["config"] = {
},
["uid"] = "B95Gb9Dolel",
["authorOptions"] = {
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Druid\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_FOCUS_CHANGED",
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 87,
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
["width"] = 104,
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [DRUID] 2",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 4,
["config"] = {
},
["authorOptions"] = {
},
["uid"] = "qMfPEvSCtq7",
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
["spellIds"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Druid\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Druid",
["config"] = {
},
["color"] = {
0.984313725490196,
0.9725490196078431,
1,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [DRUID]",
["alpha"] = 1,
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["width"] = 104,
["uid"] = "XZST3pUQSTa",
["xOffset"] = 59,
["authorOptions"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
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
["internalVersion"] = 87,
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
["xOffset"] = -631.355630058134,
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
["color"] = {
0.01176470588235294,
1,
0,
0,
},
["cooldown"] = false,
["displayIcon"] = "Interface\\Icons\\Ability_Rogue_Ambush",
["preferToUpdate"] = false,
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 30300,
["id"] = "DOUBLE PENE",
["authorOptions"] = {
},
["useCooldownModRate"] = true,
["width"] = 39.5,
["frameStrata"] = 1,
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
["selfPoint"] = "CENTER",
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
["internalVersion"] = 87,
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
["anchorFrameType"] = "SELECTFRAME",
["alpha"] = 1,
["width"] = 255,
["config"] = {
},
["uid"] = "9BBiT8OblIu",
["inverse"] = false,
["frameStrata"] = 2,
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
["internalVersion"] = 87,
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
["config"] = {
},
["alpha"] = 1,
["uid"] = "9Lcfb1CqjxZ",
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
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Paladin\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["authorOptions"] = {
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PALADIN] 2",
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
["uid"] = "hZI1fzlp1If",
["config"] = {
},
["width"] = 104,
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
["internalVersion"] = 87,
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
["alpha"] = 1,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\6TJ_Polluted_mist_Stormy",
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
["discrete_rotation"] = 0,
["semver"] = "1.0.1",
["tocversion"] = 30300,
["id"] = "Stealth Effect TOP",
["authorOptions"] = {
},
["frameStrata"] = 2,
["width"] = 1960,
["color"] = {
0,
0.8196078431372549,
1,
1,
},
["uid"] = "f8VXnRZI0Jd",
["anchorFrameType"] = "SCREEN",
["config"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
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
["internalVersion"] = 87,
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
["anchorFrameType"] = "SCREEN",
["authorOptions"] = {
},
["tocversion"] = 30300,
["id"] = "PW: Shield (Self indicator)",
["discrete_rotation"] = 0,
["alpha"] = 1,
["width"] = 36,
["frameStrata"] = 6,
["config"] = {
},
["color"] = {
1,
0,
0.09803921568627451,
0.5200000107288361,
},
["uid"] = "(gJ6REEYYRb",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["selfPoint"] = "CENTER",
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Rogue\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_TARGET_CHANGED",
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
["internalVersion"] = 87,
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Rogue",
["config"] = {
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [ROGUE]",
["alpha"] = 1,
["frameStrata"] = 4,
["width"] = 104,
["anchorFrameType"] = "SELECTFRAME",
["uid"] = "0CRscaaoT(h",
["color"] = {
1,
0.8823529411764706,
0,
1,
},
["authorOptions"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
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
["zoom"] = 0.2099999934434891,
["uid"] = "lkGdLzT6(7M",
["authorOptions"] = {
},
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
["icon"] = true,
["internalVersion"] = 87,
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 1,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 30300,
["id"] = "Shadowfiend Duration",
["selfPoint"] = "CENTER",
["useCooldownModRate"] = true,
["width"] = 30,
["preferToUpdate"] = false,
["config"] = {
},
["inverse"] = false,
["useAdjustededMin"] = false,
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
["internalVersion"] = 87,
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["conditions"] = {
},
["keepAspectRatio"] = false,
["xOffset"] = 0,
["width"] = 64,
["alpha"] = 1,
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 30400,
["id"] = "Arena - AutoQueue Whitelist",
["url"] = "",
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["config"] = {
["customlist"] = "Jaromírjágr",
},
["inverse"] = false,
["preferToUpdate"] = false,
["displayIcon"] = "",
["cooldown"] = false,
["desc"] = "",
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
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Warrior\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["color"] = {
1,
0.9686274509803922,
0.9725490196078431,
1,
},
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARRIOR] 2",
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
["uid"] = "qQyU9Qhpyxa",
["config"] = {
},
["width"] = 104,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["parent"] = "Circle Class Frames (FOCUS)",
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
["spellIds"] = {
},
["use_unit"] = true,
["custom_type"] = "event",
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Paladin\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_TARGET_CHANGED",
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 87,
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Paladin",
["anchorFrameType"] = "SELECTFRAME",
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PALADIN]",
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
["config"] = {
},
["authorOptions"] = {
},
["uid"] = "rIoSAeOj6u0",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["color"] = {
1,
0.9254901960784314,
0.9607843137254902,
1,
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Rogue\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["uid"] = "u(LrEvkDJ3l",
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [ROGUE] 2",
["authorOptions"] = {
},
["alpha"] = 1,
["width"] = 104,
["frameStrata"] = 4,
["config"] = {
},
["anchorFrameType"] = "SELECTFRAME",
["parent"] = "Circle Class Frames (FOCUS)",
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Hunter\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["authorOptions"] = {
},
["color"] = {
0.5882352941176471,
1,
0.6352941176470588,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [HUNTER] 2",
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
["uid"] = "TI5L9PmeJeh",
["config"] = {
},
["width"] = 104,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["parent"] = "Circle Class Frames (FOCUS)",
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
["spellIds"] = {
},
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Warlock\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["uid"] = "g(5LpFJW(uF",
["authorOptions"] = {
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [WARLOCK] 2",
["alpha"] = 1,
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["width"] = 104,
["config"] = {
},
["xOffset"] = 59,
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
["internalVersion"] = 87,
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
["config"] = {
},
["alpha"] = 1,
["borderInset"] = 1,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["selfPoint"] = "CENTER",
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Mage\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["anchorFrameType"] = "SELECTFRAME",
["color"] = {
1,
0.9568627450980391,
0.9607843137254902,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [MAGE] 2",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["width"] = 104,
["frameStrata"] = 4,
["uid"] = "r71p543s)oE",
["xOffset"] = 59,
["config"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["authorOptions"] = {
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Hunter\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Hunter",
["anchorFrameType"] = "SELECTFRAME",
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [HUNTER]",
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
["config"] = {
},
["color"] = {
0.5882352941176471,
1,
0.6352941176470588,
1,
},
["uid"] = "79KS2lhfE1D",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["authorOptions"] = {
},
},
["Renew Indicator (P2) 2"] = {
["user_y"] = 0,
["user_x"] = 0,
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 194.5333381652827,
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
["internalVersion"] = 87,
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
["id"] = "Renew Indicator (P2) 2",
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Shaman\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_TARGET_CHANGED",
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
["internalVersion"] = 87,
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Shaman",
["config"] = {
},
["color"] = {
1,
0.9882352941176471,
0.9568627450980391,
1,
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [SHAMAN]",
["alpha"] = 1,
["frameStrata"] = 4,
["anchorFrameType"] = "SELECTFRAME",
["width"] = 104,
["uid"] = "h)25fvrrLar",
["xOffset"] = 59,
["authorOptions"] = {
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Shaman\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["width"] = 104,
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [SHAMAN] 2",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["anchorFrameType"] = "SELECTFRAME",
["frameStrata"] = 4,
["config"] = {
},
["authorOptions"] = {
},
["uid"] = "C3fWdU(hE3k",
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
["MP5"] = {
["iconSource"] = 0,
["parent"] = "Weapon Switches",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -403.4005842732191,
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
["activeTriggerMode"] = -10,
},
["internalVersion"] = 87,
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
["uid"] = "7pW6VNO1BKk",
["authorOptions"] = {
},
["icon"] = true,
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
["preferToUpdate"] = false,
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 30300,
["id"] = "MP5",
["xOffset"] = -631.355630058134,
["useCooldownModRate"] = true,
["width"] = 39.5,
["alpha"] = 1,
["config"] = {
},
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\Spell_Nature_ManaRegenTotem",
["cooldown"] = false,
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
["internalVersion"] = 87,
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
["id"] = "Renew Indicator (P1) 2",
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
["yOffset"] = -402.4005842732191,
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
["activeTriggerMode"] = -10,
},
["internalVersion"] = 87,
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
["xOffset"] = -596.355630058134,
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
["displayIcon"] = "Interface\\Icons\\INV_Enchant_ShardBrilliantSmall",
["preferToUpdate"] = false,
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 30300,
["id"] = "SPIRIT",
["authorOptions"] = {
},
["useCooldownModRate"] = true,
["width"] = 39.5,
["alpha"] = 1,
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
["parent"] = "Weapon Switches",
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
["internalVersion"] = 87,
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
0.9411764705882353,
0,
1,
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
["preferToUpdate"] = false,
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 30300,
["id"] = "SINGLE PENE",
["authorOptions"] = {
},
["useCooldownModRate"] = true,
["width"] = 39.5,
["frameStrata"] = 1,
["config"] = {
},
["inverse"] = false,
["progressSource"] = {
-1,
"",
},
["displayIcon"] = "Interface\\Icons\\Spell_Holy_SearingLight",
["cooldown"] = false,
["parent"] = "Weapon Switches",
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
["internalVersion"] = 87,
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
["uid"] = "vQTq0ZuVxji",
["borderOffset"] = 4,
["semver"] = "1.0.1",
["tocversion"] = 30300,
["id"] = "Invis additional visual",
["groupIcon"] = "Interface\\Icons\\Ability_Mage_Invisibility",
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["authorOptions"] = {
},
["config"] = {
},
["borderInset"] = 1,
["selfPoint"] = "CENTER",
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["frameStrata"] = 2,
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
["custom"] = "function()\n    if UnitExists(\"target\") and UnitClass(\"target\") == \"Mage\" then\n        return true\n    else\n        return false\n    end\nend",
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
["internalVersion"] = 87,
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
["texture"] = "Interface\\Addons\\TextureScript\\ClassCircleFrame\\Mage",
["uid"] = "OTPG(0)Aye7",
["authorOptions"] = {
},
["tocversion"] = 30300,
["id"] = "Circle Class Frame [MAGE]",
["alpha"] = 1,
["frameStrata"] = 4,
["width"] = 104,
["anchorFrameType"] = "SELECTFRAME",
["config"] = {
},
["color"] = {
1,
0.9568627450980391,
0.9607843137254902,
1,
},
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
["custom"] = "function()\n    if UnitExists(\"focus\") and UnitClass(\"focus\") == \"Priest\" then\n        return true\n    else\n        return false\n    end\nend",
["events"] = "PLAYER_FOCUS_CHANGED",
["custom_hide"] = "custom",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 87,
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
["uid"] = "xIPPOvJrN1V",
["xOffset"] = 59,
["tocversion"] = 30300,
["id"] = "Circle Class Frame [PRIEST] 2",
["color"] = {
1,
0.9568627450980391,
0.9607843137254902,
1,
},
["alpha"] = 1,
["width"] = 104,
["frameStrata"] = 4,
["config"] = {
},
["anchorFrameType"] = "SELECTFRAME",
["parent"] = "Circle Class Frames (FOCUS)",
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
["internalVersion"] = 87,
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
["startAngle"] = 0,
["uid"] = "zDMEhE)lXyO",
["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
["smoothProgress"] = false,
["anchorFrameFrame"] = "PartyFrame.MemberFrame2",
["regionType"] = "progresstexture",
["anchorFrameType"] = "SELECTFRAME",
["blendMode"] = "BLEND",
["alpha"] = 1,
["auraRotation"] = 0,
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
["fontSize"] = 12,
["config"] = {
},
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
["internalVersion"] = 87,
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
["startAngle"] = 0,
["uid"] = "nD2epxy)96V",
["config"] = {
},
["mirror"] = false,
["anchorFrameFrame"] = "PartyFrame.MemberFrame1",
["regionType"] = "progresstexture",
["width"] = 43,
["blendMode"] = "BLEND",
["frameStrata"] = 9,
["fontSize"] = 12,
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
["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
["auraRotation"] = 0,
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
["internalVersion"] = 87,
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
["selfPoint"] = "CENTER",
["config"] = {
},
["authorOptions"] = {
},
["borderInset"] = 1,
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
},
["frameStrata"] = 1,
},
},
["lastArchiveClear"] = 1765742337,
["minimap"] = {
["minimapPos"] = 227.4941477608886,
["hide"] = true,
},
["lastUpgrade"] = 1765742337,
["dbVersion"] = 87,
["migrationCutoff"] = 730,
["features"] = {
},
["editor_font_size"] = 12,
["historyCutoff"] = 730,
["editor_theme"] = "Monokai",
}
