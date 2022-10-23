-- Hightlight on Yank
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
