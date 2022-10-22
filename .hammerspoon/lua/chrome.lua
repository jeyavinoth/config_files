M = {}

function M.jump_to_tab(tabName)
    local script = [[
      (function() {
        var chrome = Application('Chrome');
        chrome.activate();
        for (win of chrome.windows()) {
          var tabIndex =
            win.tabs().findIndex(tab => tab.url().match(/]] .. tabName .. [[/));
          if (tabIndex != -1) {
            win.activeTabIndex = (tabIndex + 1);
            win.index = 1;
          }
        }
      })();
    ]]
    hs.osascript.javascript(script)
end

return M
