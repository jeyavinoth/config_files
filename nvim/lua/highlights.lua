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
local bufferline_status, bufferline = pcall(require, 'bufferline')
local neosolarized_status, _ = pcall(require, 'neosolarized')

if (bufferline_status) and (neosolarized_status) then
    -- Neosolarized setup
    require('lualine').setup {
        options = {
            theme = 'solarized_dark'
        }
    }

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
