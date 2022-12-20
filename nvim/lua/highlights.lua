-- Cursor / colors
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5

-- Background settings
vim.opt.background = 'dark'

vim.cmd([[ au ColorScheme * hi Normal ctermbg=none guibg=none ]])
vim.cmd([[ au ColorScheme * hi NormalFloat ctermbg=none guibg=none ]])
vim.cmd([[ au ColorScheme * hi SignColumn ctermbg=none guibg=none ]])
vim.cmd([[ au ColorScheme * hi LineNr ctermbg=none guibg=none ]])

-- vim.cmd([[ colorscheme duskfox ]])
-- vim.cmd([[ colorscheme terafox ]])
-- vim.cmd([[ colorscheme nightfox ]])
-- vim.cmd([[ colorscheme carbonfox ]])
-- vim.cmd([[ colorscheme nordfox ]])
-- vim.cmd([[ colorscheme dawnfox ]])
-- vim.cmd([[ colorscheme dayfox ]])

-- -- Ayu-dark theme
-- vim.cmd([[
--     set termguicolors     " enable true colors support
--     let ayucolor="dark"   " for dark version of theme
--     colorscheme ayu
-- ]])
-- -- let ayucolor="light"  " for light version of theme
-- -- let ayucolor="mirage" " for mirage version of theme

-- vim.cmd([[ colorscheme gruvbox ]])

-- vim.cmd([[ colorscheme molokai ]])
-- vim.cmd([[ let g:molokai_original = 1 ]])
-- vim.cmd([[ let g:rehash256 = 1 ]])

-- vim.cmd([[ colorscheme nordfox ]])
-- vim.cmd([[ colorscheme dracula ]])
-- vim.cmd([[ colorscheme ayu-dark ]])
vim.cmd([[ colorscheme gruvbox ]])
-- vim.cmd([[ colorscheme rose-pine ]])
