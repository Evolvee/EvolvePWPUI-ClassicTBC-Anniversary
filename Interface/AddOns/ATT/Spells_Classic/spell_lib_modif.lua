local addon, ATTdbs = ...

ATTdbs.cooldownResetters = {
    [GetSpellInfo(12472)] = {
        [11958] = 1,
        [28609] = 1,
        [10230] = 1,
        [10161] = 1,
        [13033] = 1
    },
    [GetSpellInfo(14185)] = {
        ["ALL"] = 1
    },
    [GetSpellInfo(23989)] = {
        [19263] = 1,
        [5384] = 1,
        [14311] = 1,
        [13809] = 1,
        [14317] = 1,
        [14305] = 1
    }
}

ATTdbs.ShareCD = {
    [GetSpellInfo(14311)] = { [13809] = 1, [14305] = 1, [14317] = 1 },
    [GetSpellInfo(13809)] = { [14311] = 1, [14305] = 1, [14317] = 1 },
    [GetSpellInfo(14305)] = { [14311] = 1, [13809] = 1, [14317] = 1 },
    [GetSpellInfo(14317)] = { [14311] = 1, [13809] = 1, [14305] = 1 },
    [GetSpellInfo(10414)] = { [29228] = 1, [10473] = 1 },
    [GetSpellInfo(29228)] = { [10414] = 1, [10473] = 1 },
    [GetSpellInfo(10473)] = { [10414] = 1, [29228] = 1 }
}

ATTdbs.dbModif = {
    [14287] = { ["mod"] = GetSpellInfo(19454), ["rank"] = { 0.2, 0.4, 0.6, 0.8, 1 } },
    [10230] = { ["mod"] = GetSpellInfo(12475), ["rank"] = { 2, 4 } },
    [10199] = { ["mod"] = GetSpellInfo(11078), ["rank"] = { 0.5, 1, 1.5 } },
    [10308] = { ["mod"] = GetSpellInfo(20489), ["rank"] = { 5, 10, 15 } },
    [10278] = { ["mod"] = GetSpellInfo(20175), ["rank"] = { 60, 120 } },
    [10310] = { ["mod"] = GetSpellInfo(20235), ["rank"] = { 600, 1200 } },
    [20271] = { ["mod"] = GetSpellInfo(25957), ["rank"] = { 1, 2 } },
    [10890] = { ["mod"] = GetSpellInfo(15448), ["rank"] = { 2, 4 } },
    [10942] = { ["mod"] = GetSpellInfo(15311), ["rank"] = { 3, 6 } },
    [10947] = { ["mod"] = GetSpellInfo(15316), ["rank"] = { 0.5, 1, 1.5, 2, 2.5 } }, --
    [2094] = { ["mod"] = GetSpellInfo(14066), ["rank"] = { 45, 90 } },
    [5277] = { ["mod"] = GetSpellInfo(13872), ["rank"] = { 45, 90 } },
    [11305] = { ["mod"] = GetSpellInfo(13872), ["rank"] = { 45, 90 } },
    [1787] = { ["mod"] = GetSpellInfo(14065), ["rank"] = { 1, 2, 3, 4, 5 } }, --
    [1857] = { ["mod"] = GetSpellInfo(14066), ["rank"] = { 45, 90 } },
    [8177] = { ["mod"] = GetSpellInfo(16293), ["rank"] = { 1, 2 } },
    [10414] = { ["mod"] = GetSpellInfo(16116), ["rank"] = { 0.2, 0.4, 0.6, 0.8, 1 } },
    [29228] = { ["mod"] = GetSpellInfo(16116), ["rank"] = { 0.2, 0.4, 0.6, 0.8, 1 } },
    [10473] = { ["mod"] = GetSpellInfo(16116), ["rank"] = { 0.2, 0.4, 0.6, 0.8, 1 } },
    [20617] = { ["mod"] = GetSpellInfo(20505), ["rank"] = { 5, 10 } }, --
    [355] = { ["mod"] = GetSpellInfo(12765), ["rank"] = { 1, 2 } } --
}

ATTdbs.dbAuraRemoved = {
    [GetSpellInfo(14177)] = true,
    [GetSpellInfo(17116)] = true,
    [GetSpellInfo(20580)] = true,
    [GetSpellInfo(16166)] = true,
    [GetSpellInfo(18288)] = true,
    [GetSpellInfo(14751)] = true,
    [GetSpellInfo(20216)] = true,
    [GetSpellInfo(12043)] = true,
    [GetSpellInfo(11129)] = true,
    [GetSpellInfo(1787)]  = true,
    [GetSpellInfo(9913)]  = true,
    --[GetSpellInfo(16188)]   = true,
}
ATTdbs.dbAuraApplied = {
    [GetSpellInfo(11129)] = true
}
