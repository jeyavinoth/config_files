-- Cursor / colors
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5

-- Background settings
vim.opt.background = 'dark'

vim.cmd([[ au ColorScheme * hi Normal ctermbg=none guibg=none ]])
