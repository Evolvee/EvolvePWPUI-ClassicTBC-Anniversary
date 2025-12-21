local _, fctf = ...
local L = fctf.L

L.fctNowEnabled = {
    enUS = "|cFFFFFF00Floating Combat Text|r was |cFFF00000Disabled|r but is now |c000FFF00Enabled|r!",
    esMX = "El |cFFFFFF00Texto Flotante de Combate|r estaba |cFFF00000Deshabilitado|r pero ahora está ¡|c000FFF00Habilitado|r!",
    esES = "El |cFFFFFF00Texto Flotante de Combate|r estaba |cFFF00000Desactivado|r pero ahora está ¡|c000FFF00Activado|r!",
    ptBR = "O |cFFFFFF00Texto de Combate Flutuante|r estava |cFFF00000Desativado|r mas agora está |c000FFF00Ativo|r!",
    deDE = "|cFFFFFF00Schwebenden Kampflogtext|r war |cFFF00000Deaktiviert|r ist aber jetzt |c000FFF00Aktiviert|r!",
    frFR = "Le |cFFFFFF00Texte de Combat Flottant|r était |cFFF00000Désactivé|r mais est maintenant |c000FFF00Activé|r!",
    itIT = "Il |cFFFFFF00Testo di Combattimento Fluttuante|r era |cFFF00000Disabilitato|r ma ora è |c000FFF00Abilitato|r!",
    ruRU = "|cFFFFFF00Плавающий Боевой Текст|r был |cFFF00000Отключен|r, но теперь |c000FFF00Включен|r!",
    koKR = "|cFFFFFF00부유하는 전투 텍스트|r가|cFFF00000비활성화되었으나|r이제|c000FFF00활성화됐습니다|r!",
    zhTW = "|cFFFFFF00浮動戰鬥文|r本已|cFFF00000禁用|r，但現在已|c000FFF00啟用|r！",
    zhCN = "|cFFFFFF00浮动战斗文|r本已|cFFF00000禁用|r，但现在已|c000FFF00启用|r！"
}
L.fctEnabled = {
    enUS = "|cFFFFFF00Floating Combat Text|r is |c000FFF00Enabled|r.",
    esMX = "El |cFFFFFF00Texto Flotante de Combate|r está |c000FFF00Habilitado|r.",
    esES = "El |cFFFFFF00Texto Flotante de Combate|r está |c000FFF00Activado|r.",
    ptBR = "O |cFFFFFF00Texto de Combate Flutuante|r está |c000FFF00Ativado|r.",
    deDE = "|cFFFFFF00Schwebenden Kampflogtext|r ist |c000FFF00Aktiviert|r.",
    frFR = "Le |cFFFFFF00Texte de Combat Flottant|r est |c000FFF00Activé|r.",
    itIT = "Il |cFFFFFF00Testo di Combattimento Fluttuante|r è |c000FFF00Abilitato|r.",
    ruRU = "|cFFFFFF00Плавающий Боевой Текст|r сейчас |c000FFF00Включен|r.",
    koKR = "|cFFFFFF00부유하는 전투 텍스트|r가|c000FFF00활성화되었습니다|r.",
    zhTW = "|cFFFFFF00浮動戰鬥文|r本被|c000FFF00啟用|r.",
    zhCN = "|cFFFFFF00浮动战斗文|r本被|c000FFF00启用|r."
}
L.fctDisabled = {
    enUS = "|cFFFFFF00Floating Combat Text|r is |cFFF00000Disabled|r.",
    esMX = "El |cFFFFFF00Texto Flotante de Combate|r está |cFFF00000Deshabilitado|r.",
    esES = "El |cFFFFFF00Texto Flotante de Combate|r está |cFFF00000Desactivado|r.",
    ptBR = "O |cFFFFFF00Texto de Combate Flutuante|r está |cFFF00000Desativado|r.",
    deDE = "|cFFFFFF00Schwebenden Kampflogtext|r ist |cFFF00000Deaktiviert|r.",
    frFR = "Le |cFFFFFF00Texte de Combat Flottant|r est |cFFF00000Désactivé|r.",
    itIT = "Il |cFFFFFF00Testo di Combattimento Fluttuante|r è |cFFF00000Disabilitato|r.",
    ruRU = "|cFFFFFF00Плавающий Боевой Текст|r сейчас |cFFF00000Отключен|r.",
    koKR = "|cFFFFFF00부유하는 전투 텍스트|r가|cFFF00000비활성화되었으나|r.",
    zhTW = "|cFFFFFF00浮動戰鬥文|r本被|cFFF00000禁用|r.",
    zhCN = "|cFFFFFF00浮动战斗文|r本被|cFFF00000禁用|r."
}
L.optionsEnabled = {
    enUS = "All options for |cFFFFFF00Floating Combat Text|r are |c000FFF00Enabled|r.",
    esMX = "Todas las opciones de |cFFFFFF00Texto Flotante de Combate|r están |c000FFF00Habilitadas|r.",
    esES = "Todas las opciones de |cFFFFFF00Texto Flotante de Combate|r están |c000FFF00Activadas|r.",
    ptBR = "Todas as opções do |cFFFFFF00Texto de Combate Flutuante|r estão |c000FFF00Ativadas|r.",
    deDE = "Alle Optionen für |cFFFFFF00Schwebenden Kampflogtext|r sind |c000FFF00Aktiviert|r.",
    frFR = "Toutes les options du |cFFFFFF00Texte de Combat Flottant|r sont |c000FFF00Activées|r.",
    itIT = "Tutte le opzioni per il |cFFFFFF00Testo di Combattimento Fluttuante|r sono |c000FFF00Abilitate|r.",
    ruRU = "Все параметры для |cFFFFFF00Плавающего Боевого Текста|r |c000FFF00Включены|r.",
    koKR = "모든 |cFFFFFF00부유하는 전투 텍스트|r옵션이|c000FFF00활성화되었습니다|r.",
    zhTW = "|cFFFFFF00浮動戰鬥文|r本的所有選項都已|c000FFF00啟用|r.",
    zhCN = "|cFFFFFF00浮动战斗文|r本的所有选项都已|c000FFF00启用|r."
}
L.optionsDisabled = {
    enUS = "All options for |cFFFFFF00Floating Combat Text|r are |cFFF00000Disabled|r.",
    esMX = "Todas las opciones de |cFFFFFF00Texto Flotante de Combate|r están |cFFF00000Deshabilitadas|r.",
    esES = "Todas las opciones de |cFFFFFF00Texto Flotante de Combate|r están |cFFF00000Desactivadas|r.",
    ptBR = "Todas as opções do |cFFFFFF00Texto de Combate Flutuante|r estão |c000FFF00Desativadas|r.",
    deDE = "Alle Optionen für |cFFFFFF00Schwebenden Kampflogtext|r sind |cFFF00000Deaktiviert|r.",
    frFR = "Toutes les options du |cFFFFFF00Texte de Combat Flottant|r sont |cFFF00000Désactivées|r.",
    itIT = "Tutte le opzioni per il |cFFFFFF00Testo di Combattimento Fluttuante|r sono |cFFF00000Disattivate|r.",
    ruRU = "Все параметры для |cFFFFFF00Плавающего Боевого Текста|r |c000FFF00Отключены|r.",
    koKR = "|cFFFFFF00부유하는 전투 텍스트|r에대한모든옵션이|c000FFF00비활성화됩니다|r.",
    zhTW = "|cFFFFFF00浮動戰鬥文|r本的所有選項都已|cFFF00000禁用|r.",
    zhCN = "|cFFFFFF00浮动战斗文|r本的所有选项都已|cFFF00000禁用|r."
}
