------------------------
-- Hightlight on Yank -- 
------------------------
local augroup = vim.api.nvim_create_augroup
local yank_group = augroup('HightlightYank', {})
local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 100
        })
    end,
})

-------------------------------------
-- Append the different clipboards --
-------------------------------------
-- local has = function(x)
--     return vim.fn.has(x) == 1
-- end
-- local is_mac = has "macunix"
-- local is_win = has "win32"
-- if is_mac then
--     require('macos')
-- end
-- if is_win then
--     require('win')
-- end
