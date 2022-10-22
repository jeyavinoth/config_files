local M = {}

-- Move current window to prev monitor
function M.send_window_prev_monitor()
    local win = hs.window.focusedWindow()
    local nextScreen = win:screen():previous()
    win:moveToScreen(nextScreen)
end

-- Move current window to next monitor
function M.send_window_next_monitor()
    local win = hs.window.focusedWindow()
    local nextScreen = win:screen():next()
    win:moveToScreen(nextScreen)
end

return M
