-- Reload hammersppoon
hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "r", function() hs.reload() end)

-- Keybinds
require('lua/keybinds/devices') -- Device Binds
require('lua/keybinds/navigation') -- Navigation Binds
