local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')

function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup {
    defaults = {
        mappings = {
            n = {
                ['q'] = actions.close
            }
        }
    },
    extensions = {
        file_browser = {
            theme = 'dropdown',
            -- disables netrw and uses telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                -- custom mappings
                -- insert mode mappings
                ['i'] = {
                    ['<C-w'] = function() vim.cmd('normal vbd') end,
                },
                ['n'] = {
                    ['N'] = fb_actions.create,
                    ['h'] = fb_actions.goto_parent_dir,
                    ['/'] = function() vim.cmd('StartInsert') end
                }
            }
        }
    }
}

telescope.load_extension('file_browser')

local opts = { noremap = true, silent = true }
local keymap = vim.keymap

keymap.set("n", "<leader>ff",
    '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false , hidden = true})<cr>', opts)
keymap.set("n", "<leader>fg", '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
keymap.set("n", "<leader>f\\", '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
keymap.set("n", "<leader>fh", '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
keymap.set("n", "<leader>fd", '<cmd>lua require("telescope.builtin").diagnostics()<cr>', opts)
keymap.set("n", "<leader>fr", '<cmd>lua require("telescope.builtin").resume()<cr>', opts)
keymap.set("n", "<leader>fb",
    '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", cwd=telescope_buffer_dir(), respect_git_ignore = false, hidden = true, grouped = true, previewer = false, initial_mode = "normal", layout_config= { height = 40 }})<cr>'
    , opts)

-- keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
-- keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
-- keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
-- keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
-- keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
