-------------
-- Airpods --
-------------
local status, airpods = pcall(require, 'lua/airpods')
if (not status) then
    hs.alert.show('No airpods.lua file!')
end

-- Connect
hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "\\", function()
    hs.alert.show('Attempting to connect airpods...')
    local _, output = airpods.connect()
    if output == nil then
        hs.alert.show("Cannot Connect to Airpods!")
    else
        hs.alert.show(output)
    end
end)

-- Disconnect
hs.hotkey.bind({ "ctrl", "alt", "cmd", "shift" }, "\\", function()
    hs.alert.show('Attempting to disconnect airpods...')
    local _, output = airpods.disconnect()
    if output == nil then
        hs.alert.show("Cannot Disconnect Airpods!")
    else
        hs.alert.show(output)
    end
end)
