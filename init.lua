-- Functions
function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Plugin Installs
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('tpope/vim-surround') -- sorround words, etc ysw)
Plug('tpope/vim-fugitive') -- git integration
Plug('tpope/vim-repeat') -- updated . repeat

Plug('nvim-lualine/lualine.nvim') -- vim-airline alternative in neovim
Plug('kyazdani42/nvim-web-devicons') -- dev icons for lualine

Plug('tomtom/tcomment_vim') -- gcc comment
Plug('preservim/tagbar') -- tagbar on right to get tags in file
Plug('vim-scripts/auto-pairs-gentle') -- gentle version of auto pairs

Plug('kyazdani42/nvim-web-devicons') -- optional, for file icons
Plug('kyazdani42/nvim-tree.lua') -- nerdtree alternative (left window folder browser)

Plug('airblade/vim-gitgutter') -- shows the +/- for git changes

Plug('nvim-lua/plenary.nvim') -- Telescope (fuzzy file finder)
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x'})

Plug('puremourning/vimspector') -- vim debugger

-- Plug 'ellisonleao/glow.nvim' -- Markdown preview

-- Colorschemes
Plug('ellisonleao/gruvbox.nvim') -- gruvbox theme
-- Plug('marko-cerovac/material.nvim') -- material theme
Plug('folke/tokyonight.nvim', {branch = 'main'})


-- Plug('morhetz/gruvbox') -- colorscheme gruvbox
-- Plug('neoclide/coc.nvim', {branch = 'release'}) -- using LSP as an alternative

-- Plug('dense-analysis/ale') -- Linting
Plug('nvie/vim-flake8') -- flake8 formatting
-- Plug('preservim/nerdtree') -- nerdtree left folder browser
-- Plug('vim-airline/vim-airline') -- powerline at bottom with details

-- LSP completion
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
-- Plug('L3MON4D3/LuaSnip')
-- Plug('saadparwaiz1/cmp_luasnip')

-- Plug('neovim/nvim-lspconfig')
-- Plug('nvim-lua/completion-nvim')
-- Plug('nvim-lua/diagnostic-nvim')

-- Plug('williamboman/nvim-lsp-installer') -- LSP installer

Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']}) -- Parser


Plug('ThePrimeagen/vim-be-good') -- a game to improve in vim, doesn't work

-- -- For vsnip users.
-- Plug('hrsh7th/cmp-vsnip')
-- Plug('hrsh7th/vim-vsnip')

-- -- For luasnip users.
-- Plug('L3MON4D3/LuaSnip')
-- Plug ('saadparwaiz1/cmp_luasnip')

-- -- For ultisnips users.
-- Plug('SirVer/ultisnips')
-- Plug('quangnguyen30192/cmp-nvim-ultisnips')

-- -- For snippy users.
-- Plug('dcampos/nvim-snippy')
-- Plug('dcampos/cmp-snippy')

-- Plug('sumneko/lua-language-server')

-- All of your Plugins must be added before the following line
vim.call('plug#end')            -- required

-- filetype plugin indent on    -- required, auto set
vim.o.t_Co = "256" -- 256 colors

vim.o.background = dark
vim.cmd([[colorscheme gruvbox]])
-- vim.cmd([[colorscheme material]])
-- vim.g.material_style = "darker"
-- vim.cmd([[colorscheme tokyonight-storm]])


-- setting background to None
vim.cmd([[highlight Normal ctermbg=NONE]])

-- formatting
vim.o.tabstop = 4 -- set tab spacing as 4
vim.o.softtabstop = 4 -- set tab spacing
vim.o.shiftwidth = 4 -- >> | << moves by 4 spaces
vim.o.smartindent = true -- smart indents lies
vim.o.autoindent = true -- auto indents next line
vim.o.expandtab = true -- expands tab to spaces
vim.o.showmatch = true -- shows matching brackets/quotes
vim.o.encoding = "utf-8" -- setting encoding
vim.o.fileformat = "unix" -- sets the file type to unix in case of windows machine
vim.o.hlsearch =  false -- sets the file type to unix in case of windows machine

vim.o.relativenumber = true -- set relative numbers
vim.o.number = true -- set absolute numbers as well

vim.o.hidden = true -- keep the buffer's open in the background
vim.o.errorbells = false -- no error bells in vim
vim.o.guicursor = true -- leaves block cursors
vim.o.incsearch = true -- highlights as I search
vim.o.scrolloff = 3 -- set the number of lines kept when scrolling
-- vim.colorcolumn = 120 -- sets the a column on 120 to show that code is exceeding 120
-- vim.signcolumn = "yes" -- sets the sign column, that shows linting + git stuff
vim.cmd([[set signcolumn=yes]])
vim.cmd([[set colorcolumn=120]])
vim.cmd([[set cursorline]])

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- vim.wrap = true -- set wrap

-- mouse settings
-- vim.mouse = "a" -- allow mouse usage
vim.cmd([[set mouse=a]]) -- allowe mouse usage


-- -- backup, swap and undo
-- set swapfile

vim.o.undofile = true -- set an undofile; nice to have a undo even after closing file
vim.undodir = "/tmp//"

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

-- Remap the leader
vim.g.mapleader = " " -- remap leader to space

-- Telescope
-- Find files using Telescope command-line sugar.
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { noremap = true })
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { noremap = true })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { noremap = true })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { noremap = true })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { noremap = true })

-- mappings n - normal mode; nore - non recursive; map - mapping
-- Nerdtree
map("n", "<Leader>n", ":NvimTreeToggle<CR>", { noremap = true })
-- map("n", "<C-n>", ":NERDTreeFocus<CR>", { noremap = true })

-- Other mappings
-- nnoremap <space> za

-- tagbar
map("n", "<Leader>t", ":TagbarToggle fj<CR>", { noremap = true })

-- -- ALE linter mappings
-- map("n", "<C-j>", ":ALENext<CR>", { noremap = true })
-- map("n", "<C-k>", ":ALEPrevious<CR>", { noremap = true })

-- remove trailing whitespaces
map("n", "<leader>e", ":%s/\\s\\+$//e<CR>", { noremap = true })

-- remapping window operations
map("n", "<leader>w", "<C-w>", { noremap = true })

-- mergetool
map("n", "<leader>dt", ":difft<CR>", { noremap = true })
map("n", "<leader>do", ":diffo<CR>", { noremap = true })

-- clipboard yank & paste
map("", "<leader>y", "\"*y")
map("", "<leader>p", "\"*p")

map("", "<leader>Y", "--y")
map("", "<leader>P", "--p")


-- vim spector stuff
vim.cmd([[let g:vimspector_enable_mappings = "HUMAN"]])
map("n", "<Leader>vd", ":call vimspector#Launch()<CR>", { noremap = true })
map("n", "<Leader>ve", ":call vimspector#Reset()<CR>", { noremap = true })
map("n", "<Leader>vc", ":call vimspector#Continue()<CR>", { noremap = true })

map("n", "<Leader>vt", ":call vimspector#ToggleBreakpoint()<CR>", { noremap = true })
map("n", "<Leader>vT", ":call vimspector#ClearBreakpoints()<CR>", { noremap = true })

map("n", "<Leader>vr", "<Plug>VimspectorRestart", { noremap = true })
map("n", "<Leader>vh", "<Plug>VimspectorStepOut", { noremap = true })
map("n", "<Leader>vl", "<Plug>VimspectorStepInto", { noremap = true })
map("n", "<Leader>vj", "<Plug>VimspectorStepOver", { noremap = true })

map("n", "<Leader>wm", ":tabedit %<CR>", { noremap = true })
map("n", "<Leader>wr", ":tabclose<CR>", { noremap = true })

-- Running Python files with <leader>r
vim.cmd([[autocmd FileType python map <buffer> <leader>r :!clear; python %<CR>]])

-- Highliting
require'nvim-treesitter.configs'.setup{highlight={enable=true}}
require('lualine').setup()
require("nvim-tree").setup()

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  -- vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<leader>wl', function()
  --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, bufopts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  -- vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

-- LSP setup
-- require("nvim-lsp-installer").setup {}
require('lspconfig').sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

-- LSP setup (copy pasted below, no idea how this works or what it does)
local lsp_defaults = {
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  ),
  on_attach = function(client, bufnr)
    vim.api.nvim_exec_autocmds('User', {pattern = 'LspAttached'})
  end
}


local lspconfig = require('lspconfig')
lspconfig.util.default_config = vim.tbl_deep_extend(
  'force',
  lspconfig.util.default_config,
  lsp_defaults
)

require("lspconfig").sumneko_lua.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    print('hello')
    lspconfig.util.default_config.on_attach(client, bufnr)
  end
})

-- require('luasnip.loaders.from_vscode').lazy_load()

local cmp = require('cmp')
-- local luasnip = require('luasnip')

local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp', keyword_length = 3},
    {name = 'buffer', keyword_length = 3},
    {name = 'luasnip', keyword_length = 2},
  },
  window = {
    documentation = cmp.config.window.bordered()
  },
  formatting = {
    fields = {'menu', 'abbr', 'kind'},
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        luasnip = '⋗',
        buffer = 'Ω',
        path = '🖫',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
  mapping = {
    ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
    ['<Down>'] = cmp.mapping.select_next_item(select_opts),

    ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
    ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),

    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({select = true}),

    ['<C-d>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, {'i', 's'}),

    ['<C-b>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {'i', 's'}),

    ['<Tab>'] = cmp.mapping(function(fallback)
      local col = vim.fn.col('.') - 1

      if cmp.visible() then
        cmp.select_next_item(select_opts)
      elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        fallback()
      else
        cmp.complete()
      end
    end, {'i', 's'}),

    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item(select_opts)
      else
        fallback()
      end
    end, {'i', 's'}),
  },
})
--
--
-- require('lspconfig').pyright.setup {}
--
-- local custom_lsp_attach = function(client)
--     local bufopts = { noremap=true, silent=true, buffer=bufnr }
--
--     vim.api.nvim_buf_set_keymap(0, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})
--     vim.api.nvim_buf_set_keymap(0, 'n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true})
--     vim.api.nvim_buf_set_keymap(0, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true})
--     vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
--     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
--     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
--     vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
--     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
--     print('pylsp_attach')
--     require('completion').on_attach(client)
-- end
--
-- vim.api.nvim_set_keymap('n', '<leader>df', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })

require("lspconfig").pylsp.setup {
    filetypes = {"python"},
    settings = {
        configurationSources = {"flake8"},
        formatCommand = {"black"},
        pylsp = {
            plugins = {
                jedi_completion = {enabled = true},
                jedi_hover = {enabled = true},
                jedi_references = {enabled = true},
                jedi_signature_help = {enabled = true},
                jedi_symbols = {enabled = true, all_scopes = true},
                pycodestyle = {enabled = false},
                flake8 = {
                    enabled = true,
                    ignore = {},
                    maxLineLength = 120
                },
                mypy = {enabled = false},
                yapf = {enabled = false},
                pylint = {enabled = false},
                mccabe = {enabled = false},
                preload = {enabled = false},
                rope_completion = {enabled = false},
                black = {enabled = true},
                isort = {enabled = true}
            },
        },
    },
    on_attach=on_attach,
}

-- -- setup must be called before loading the colorscheme
-- -- Default options:
-- require("gruvbox").setup({
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = true,
--   strikethrough = true,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true, -- invert background for search, diffs, statuslines and errors
--   contrast = "", -- can be "hard", "soft" or empty string
--   overrides = {},
-- })
-- vim.cmd("colorscheme gruvbox")
vim.cmd([[
let g:vimspector_sign_priority = {
  \    'vimspectorBP':         300,
  \    'vimspectorBPCond':     200,
  \    'vimspectorBPLog':      200,
  \    'vimspectorBPDisabled': 100,
  \    'vimspectorPC':         999,
  \ }
]])
