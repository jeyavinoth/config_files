-----------------------
-- Window Navigation --
-----------------------
local window_status, window_nav = pcall(require, 'lua/window_navigation')
if window_status then
    -- Move window to different monitors
    hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "h", function() window_nav.send_window_prev_monitor() end)
    hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "l", function() window_nav.send_window_next_monitor() end)
end

-----------------------
-- Chrome Navigation --
-----------------------
local chrome_status, chrome_nav = pcall(require, 'lua/chrome')
if chrome_status then
    hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "m", function() chrome_nav.jump_to_tab('meet.google.com') end)
    hs.hotkey.bind({ "ctrl", "alt", "cmd" }, "j", function() chrome_nav.jump_to_tab('134.74.46.132') end)
end
