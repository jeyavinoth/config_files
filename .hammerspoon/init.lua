-- Reload hammersppoon
hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "r", function()
    hs.reload()
    hs.notify.new({ title = "Hammerspoon", informativeText = "Config loaded" }):send()
end)

-- Keybinds
require('lua/keybinds/devices') -- Device Binds
require('lua/keybinds/navigation') -- Navigation Binds

-- List of Binds
-- ctrl + alt + cmd + \ --> connect airpods
-- ctrl + alt + cmd + shift + \ --> disconnect airpods
-- ctrl + alt + cmd + shift + \ --> disconnect airpods
-- ctrl + alt + cmd + h --> send window to prev monitor
-- ctrl + alt + cmd + l --> send window to next monitor
-- ctrl + alt + cmd + m --> switch to meet.google.com tab in Chrome
-- ctrl + alt + cmd + j --> switch to Jimmy's server jupyter lab tab in Chrome
