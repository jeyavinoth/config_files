-- Testing the notification
hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "W", function()
    hs.notify.new({ title = "Hammerspoon", informativeText = "Hello World" }):send()
end)

-- Reload hammersppoon
hs.hotkey.bind({ "cmd" }, "r", function() hs.reload() end)

require('keybinds_devices') -- Device Binds
