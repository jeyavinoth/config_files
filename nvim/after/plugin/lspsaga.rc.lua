local status, _ = pcall(require, 'lspsaga')
if (not status) then return end

-- saga.init_lsp_saga {
--     server_filetype_map = {}
-- }

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', '<C-k>', '<cmd>Lspsaga diagnostic_jump_prev<cr>', opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', '<cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('n', 'gp', '<cmd>Lspsaga peek_definition<cr>', opts)
vim.keymap.set('n', 'gR', '<cmd>Lspsaga rename<cr>', opts)
-- vim.keymap.set('i', '<C-l>', '<cmd>Lspsaga signature_help<cr>', opts) -- deprecated

-- Signature help (use below instead, but ray_x/lsp_signature is installed)
-- vim.keymap.set('i', '<C-l>', vim.lsp.buf.signature_help, {})
