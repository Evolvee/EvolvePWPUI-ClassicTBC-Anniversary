local _, fctf = ...

-- Runs the functions below when one of the registered in-game events occur
fctf.frame:SetScript("OnEvent", function(_, event, ...)
    fctf.handleAddonLoaded(event, ...)
    fctf.handleLogout(event)
end)
