-- Cursor / colors
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5

-- Background settings
vim.opt.background = 'dark'
-- vim.cmd([[highlight Normal ctermbg=None]])
--

-- Colorscheme settings

-- NeoSolarized
require('lualine').setup {
    options = {
        theme = 'solarized_dark'
    }
}
local bufferline_status, bufferline = pcall(require, 'bufferline')
if (bufferline_status) then
    -- Neosolarized setup
    bufferline.setup {
        highlights = {
            separator = {
                fg = '#073642',
                bg = '#002b36'
            },
            separator_selected = {
                fg = '#073642',
            },
            background = {
                fg = '#657b83',
                bg = '#002b36'
            },
            buffer_selected = {
                fg = '#fdf6e3',
                bold = true
            },
            fill = {
                bg = '#073642'
            }
        }
    }
end


-- -- Gruvbox
-- require('lualine').setup {
--     options = {
--         theme = 'gruvbox'
--     }
-- }
