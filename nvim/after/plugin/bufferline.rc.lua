local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

-- Removed this because <C-i> = <Tab>, and makes it so that I can't jump using C-i / C-o
-- vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
-- vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})

-- Neosolarized setup
bufferline.setup {
    options = {
        mode = 'tabs',
        separator_style = 'thin',
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true
    },
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
