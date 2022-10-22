-------------
-- Airpods --
-------------
local status, airpods = pcall(require, 'lua/airpods')
if (not status) then
    hs.alert.show('No airpods.lua file!')
end

-- Connect
hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "a", function()
    local ok, output = airpods.connect()
    if ok then
        hs.alert.show(output)
    else
        hs.alert.show("Couldn't connect to AirPods!")
    end
end)

-- Disconnect
hs.hotkey.bind({ "ctrl", "alt", "cmd", "shift" }, "a", function()
    local ok, output = airpods.disconnect()
    if ok then
        hs.alert.show(output)
    else
        hs.alert.show("Couldn't connect to AirPods!")
    end
end)
