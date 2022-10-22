-- Reload hammersppoon
hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "r", function()
    hs.reload()
    hs.notify.new({ title = "Hammerspoon", informativeText = "Config loaded" }):send()
end)

-- Keybinds
require('lua/keybinds/devices') -- Device Binds
require('lua/keybinds/navigation') -- Navigation Binds
