Plug('tpope/vim-fugitive') -- git integration
Plug('preservim/tagbar') -- tagbar on right to get tags in file
Plug('vim-scripts/auto-pairs-gentle') -- gentle version of auto pairs

Plug('airblade/vim-gitgutter') -- shows the +/- for git changes

-- Plug 'ellisonleao/glow.nvim' -- Markdown preview
Plug('ellisonleao/gruvbox.nvim') -- gruvbox theme
Plug('nvie/vim-flake8') -- flake8 formatting

Plug('ThePrimeagen/vim-be-good') -- a game to improve in vim, doesn't work


vim.cmd([[colorscheme gruvbox]])

vim.o.undofile = true -- set an undofile; nice to have a undo even after closing file
vim.undodir = "/tmp//"


vim.o.hidden = true -- keep the buffer's open in the background


-- -- backup, swap and undo
-- set swapfile


-- set backup
-- set backupdir=/tmp//

-- fold indent/method
vim.foldmethod = "indent" -- inden when folding
vim.foldlevel = 99 -- unfold everyting on file open

-- tags setup
vim.tags = "./tags"

-- -- set linters
-- vim.cmd([[
-- let g:ale_linters = {'python' : ['flake8', 'black']}
-- let g:ale_open_list = 0
-- call ale#Set('python_flake8_options', '--config=$HOME/.config/flake8') " ensure flake8 uses global config
-- ]])

-- MAPPINGS


-- Moving lines
map("n", "<C-j>", "<cmd>:move+<cr>", { noremap = true })
map("n", "<C-k>", "<cmd>:move-2<cr>", { noremap = true })


-- Other mappings
-- nnoremap <space> za

-- tagbar
map("n", "<Leader>t", ":TagbarToggle fj<CR>", { noremap = true })

-- -- ALE linter mappings
-- map("n", "<C-j>", ":ALENext<CR>", { noremap = true })
-- map("n", "<C-k>", ":ALEPrevious<CR>", { noremap = true })

-- Running Python files with <leader>r
vim.cmd([[autocmd FileType python map <buffer> <leader>r :!clear; python %<CR>]])

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    -- vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    -- vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    -- vim.keymap.set('n', '<leader>wl', function()
    --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, bufopts)
    vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    -- vim.keymap.set('n', '<Leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end


local lspconfig = require('lspconfig')
lspconfig.util.default_config = vim.tbl_deep_extend(
    'force',
    lspconfig.util.default_config,
    lsp_defaults
)

vim.cmd([[
let g:vimspector_sign_priority = {
  \    'vimspectorBP':         300,
  \    'vimspectorBPCond':     200,
  \    'vimspectorBPLog':      200,
  \    'vimspectorBPDisabled': 100,
  \    'vimspectorPC':         999,
  \    'vimspectorPCBP':         999,
  \ }
]])

