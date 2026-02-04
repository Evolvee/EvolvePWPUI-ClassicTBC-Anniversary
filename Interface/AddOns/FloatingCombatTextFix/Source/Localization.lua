local addonName, fctf = ...
local addonAuthor = C_AddOns.GetAddOnMetadata(addonName, "Author")
local addonVersion = C_AddOns.GetAddOnMetadata(addonName, "Version")
local L = fctf.L

L.addonTitle = C_AddOns.GetAddOnMetadata(addonName, "Title")
L.preferences = PREFERENCES
L.optionsInterfaceSubtitle = {
    enUS = "Created by "..addonAuthor.."\nVersion "..addonVersion,
    esMX = "Creado por "..addonAuthor.."\nVersión "..addonVersion,
    esES = "Creado por "..addonAuthor.."\nVersión "..addonVersion,
    ptBR = "Criado por "..addonAuthor.."\nVersão "..addonVersion,
    deDE = "Erstellt von "..addonAuthor.."\nVersion "..addonVersion,
    frFR = "Créé par "..addonAuthor.."\nVersion "..addonVersion,
    itIT = "Creato da "..addonAuthor.."\nVersion "..addonVersion,
    ruRU = "Создано "..addonAuthor.."\nВерсия "..addonVersion,
    koKR = addonAuthor.."에 의해 생성됨\n버전 "..addonVersion,
    zhTW = "由"..addonAuthor.."創建\n版本 "..addonVersion,
    zhCN = "由"..addonAuthor.."创建\n版本 "..addonVersion
}
L.rememberFctStateCheckBoxLabel = {
    enUS = "Preserve last Floating Combat Text state",
    esMX = "Conservar el último estado del Texto Flotante de Combate",
    esES = "Conservar el último estado del Texto Flotante de Combate",
    ptBR = "Preservar o último estado do Texto de Combate Flutuante",
    deDE = "Letzten Status des Schwebender Kampflogtext beibehalten",
    frFR = "Conserver le dernier état du Texte de Combat Flottant",
    itIT = "Mantieni l'ultimo stato del Testo di Combattimento Fluttuante",
    ruRU = "Сохранить последнее Плавающий Боевой Текст состояние",
    koKR = "이전 부유하는 전투 텍스트 상태 유지",
    zhTW = "保留最後一個浮動戰鬥文字狀態",
    zhCN = "保留最后悬浮动战斗文本状态"
}
L.rememberFctStateCheckBoxTooltip = {
    enUS = "When this option is enabled, its last known state (enabled or disabled) will persist across sessions\n"..
           "While disabled, the Floating Combat Text will always be restored at the start of a new session",
    esMX = "Cuando esta opción está habilitada, su último estado conocido (habilitado o deshabilitado) se mantendrá entre sesiones\n"..
           "Mientras esté deshabilitado, el Texto Flotante de Combate siempre se restaurará al inicio de una nueva sesión",
    esES = "Cuando esta opción está activada, su último estado conocido (activado o desactivado) se mantendrá entre sesiones\n"..
           "Mientras esté desactivada, el Texto Flotante de Combate siempre se restaurará al inicio de una nueva sesión",
    ptBR = "Quando esta opção estiver ativada, seu último estado conhecido (ativado ou desativado) permanecerá entre as sessões\n"..
           "Enquanto estiver desativada, o Texto de Combate Flutuante será sempre restaurado no início de uma nova sessão",
    deDE = "Wenn diese Option aktiviert ist, bleibt ihr letzter bekannter Status (aktiviert oder deaktiviert) über mehrere Sitzungen hinweg erhalten\n"..
           "Wenn sie deaktiviert ist, wird der Schwebender Kampflogtext zu Beginn einer neuen Sitzung immer wiederhergestellt",
    frFR = "Lorsque cette option est activée, son dernier état connu (activé ou désactivé) sera conservé d'une session à l'autre\n"..
           "Lorsqu'il est désactivé, le Texte de Combat Flottant sera toujours restauré au début d'une nouvelle session",
    itIT = "Quando questa opzione è abilitata, il suo ultimo stato conosciuto (abilitato o disabilitato) persisterà tra una sessione e l'altra\n"..
           "Quando è disabilitato, il Testo di Combattimento Fluttuante verrà sempre ripristinato all'inizio di una nuova sessione",
    ruRU = "Когда эта опция включена, ее последнее известное состояние (включено или отключено) будет сохраняться между сессиями\n"..
           "Когда опция отключена, Плавающий Боевой Текст всегда будет восстанавливаться в начале новой сессии",
    koKR = "이 옵션이 활성화된 경우, 마지막으로 알려진 상태(활성화 또는 비활성화)가 세션 간에 유지됩니다\n"..
           "비활성화 상태에서는 부유하는 전투 텍스트가 새 세션 시작 시 항상 복원됩니다",
    zhTW = "當此選項啟用時，其最後已知狀態（啟用或停用）將跨會話持續保留\n"..
           "停用期間，浮動戰鬥文字將於每次新會話開始時自動恢復顯示",
    zhCN = "启用此选项后，其最后已知状态（启用或禁用）将在不同会话间保持不变\n"..
           "当处于禁用状态时，浮动战斗文本将在每次新会话开始时自动恢复"
}
L.displayFctStateCheckBoxLabel = {
    enUS = "Display the status of the Floating Combat Text as a chat message at the start of a session",
    esMX = "Mostrar el estado del Texto Flotante de Combate en el chat al iniciar una sesión",
    esES = "Mostrar el estado del Texto Flotante de Combate en el chat al iniciar una sesión",
    ptBR = "Exibir o status do Texto de Combate Flutuante no chat no iníciar uma sessão",
    deDE = "Zeige den Status des Schwebender Kampflogtext als Chat-Nachricht zu Beginn einer Sitzung an",
    frFR = "Afficher le état du Texte de Combat Flottant dans le chat au début de la session",
    itIT = "Mostra lo stato del Testo di Combattimento Fluttuante nel chat all'inizio di una sessione",
    ruRU = "Отображать статус Плавающий Боевой Текст в виде сообщения в чате в начале сеанса",
    koKR = "세션 시작 시 부유하는 전투 텍스트의 상태를 채팅 메시지로 표시합니다",
    zhTW = "在遊戲會話開始時，將浮動戰鬥文字的狀態顯示為聊天訊息",
    zhCN = "在会话开始时将浮动战斗文本的状态显示为聊天消息"
}
L.fctNowEnabled = {
    enUS = "|cFFFFFF00Floating Combat Text|r was |cFFF00000Disabled|r but is now |c000FFF00Enabled|r!",
    esMX = "El |cFFFFFF00Texto Flotante de Combate|r estaba |cFFF00000Deshabilitado|r pero ahora está ¡|c000FFF00Habilitado|r!",
    esES = "El |cFFFFFF00Texto Flotante de Combate|r estaba |cFFF00000Desactivado|r pero ahora está ¡|c000FFF00Activado|r!",
    ptBR = "O |cFFFFFF00Texto de Combate Flutuante|r estava |cFFF00000Desativado|r mas agora está |c000FFF00Ativo|r!",
    deDE = "|cFFFFFF00Schwebender Kampflogtext|r war |cFFF00000Deaktiviert|r ist aber jetzt |c000FFF00Aktiviert|r!",
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
    deDE = "|cFFFFFF00Schwebender Kampflogtext|r ist |c000FFF00Aktiviert|r.",
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
    deDE = "|cFFFFFF00Schwebender Kampflogtext|r ist |cFFF00000Deaktiviert|r.",
    frFR = "Le |cFFFFFF00Texte de Combat Flottant|r est |cFFF00000Désactivé|r.",
    itIT = "Il |cFFFFFF00Testo di Combattimento Fluttuante|r è |cFFF00000Disabilitato|r.",
    ruRU = "|cFFFFFF00Плавающий Боевой Текст|r сейчас |cFFF00000Отключен|r.",
    koKR = "|cFFFFFF00부유하는 전투 텍스트|r가|cFFF00000비활성화되었으나|r.",
    zhTW = "|cFFFFFF00浮動戰鬥文|r本被|cFFF00000禁用|r.",
    zhCN = "|cFFFFFF00浮动战斗文|r本被|cFFF00000禁用|r."
}
-- L.optionsEnabled = {
--     enUS = "All options for |cFFFFFF00Floating Combat Text|r are |c000FFF00Enabled|r.",
--     esMX = "Todas las opciones de |cFFFFFF00Texto Flotante de Combate|r están |c000FFF00Habilitadas|r.",
--     esES = "Todas las opciones de |cFFFFFF00Texto Flotante de Combate|r están |c000FFF00Activadas|r.",
--     ptBR = "Todas as opções do |cFFFFFF00Texto de Combate Flutuante|r estão |c000FFF00Ativadas|r.",
--     deDE = "Alle Optionen für |cFFFFFF00Schwebender Kampflogtext|r sind |c000FFF00Aktiviert|r.",
--     frFR = "Toutes les options du |cFFFFFF00Texte de Combat Flottant|r sont |c000FFF00Activées|r.",
--     itIT = "Tutte le opzioni per il |cFFFFFF00Testo di Combattimento Fluttuante|r sono |c000FFF00Abilitate|r.",
--     ruRU = "Все параметры для |cFFFFFF00Плавающего Боевого Текста|r |c000FFF00Включены|r.",
--     koKR = "모든 |cFFFFFF00부유하는 전투 텍스트|r옵션이|c000FFF00활성화되었습니다|r.",
--     zhTW = "|cFFFFFF00浮動戰鬥文|r本的所有選項都已|c000FFF00啟用|r.",
--     zhCN = "|cFFFFFF00浮动战斗文|r本的所有选项都已|c000FFF00启用|r."
-- }
-- L.optionsDisabled = {
--     enUS = "All options for |cFFFFFF00Floating Combat Text|r are |cFFF00000Disabled|r.",
--     esMX = "Todas las opciones de |cFFFFFF00Texto Flotante de Combate|r están |cFFF00000Deshabilitadas|r.",
--     esES = "Todas las opciones de |cFFFFFF00Texto Flotante de Combate|r están |cFFF00000Desactivadas|r.",
--     ptBR = "Todas as opções do |cFFFFFF00Texto de Combate Flutuante|r estão |c000FFF00Desativadas|r.",
--     deDE = "Alle Optionen für |cFFFFFF00Schwebender Kampflogtext|r sind |cFFF00000Deaktiviert|r.",
--     frFR = "Toutes les options du |cFFFFFF00Texte de Combat Flottant|r sont |cFFF00000Désactivées|r.",
--     itIT = "Tutte le opzioni per il |cFFFFFF00Testo di Combattimento Fluttuante|r sono |cFFF00000Disattivate|r.",
--     ruRU = "Все параметры для |cFFFFFF00Плавающего Боевого Текста|r |c000FFF00Отключены|r.",
--     koKR = "|cFFFFFF00부유하는 전투 텍스트|r에대한모든옵션이|c000FFF00비활성화됩니다|r.",
--     zhTW = "|cFFFFFF00浮動戰鬥文|r本的所有選項都已|cFFF00000禁用|r.",
--     zhCN = "|cFFFFFF00浮动战斗文|r本的所有选项都已|cFFF00000禁用|r."
-- }
L.temporaryMessage = "    |cFFFFFF00Floating Combat Text Fix|r just received new features!\n"..
                     "You can now modify its behavior via the AddOns pannel.\n"..
                     "Send '/fct options' in the chat to visit the new options interface.\n"..
                     "You may also send '/fct' to quickly enable/disable the Floating Combat Text."
