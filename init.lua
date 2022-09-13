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
Plug('vim-airline/vim-airline') -- powerline at bottom with details

Plug('tomtom/tcomment_vim') -- gcc comment
Plug('preservim/nerdtree') -- nerdtree left folder browser
Plug('preservim/tagbar') -- tagbar on right to get tags in file
Plug('morhetz/gruvbox') -- colorscheme gruvbox
Plug('vim-scripts/auto-pairs-gentle') -- gentle version of auto pairs

Plug('airblade/vim-gitgutter') -- shows the +/- for git changes

Plug('dense-analysis/ale') -- Linting
Plug('nvie/vim-flake8') -- flake8 formatting

Plug('nvim-lua/plenary.nvim') -- Telescope (fuzzy file finder)
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x'})

Plug('puremourning/vimspector') -- vim debugger

Plug('ellisonleao/gruvbox.nvim') -- gruvbox theme

Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
-- Plug('sumneko/lua-language-server')

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

-- All of your Plugins must be added before the following line
vim.call('plug#end')            -- required

-- filetype plugin indent on    -- required, auto set
vim.o.t_Co = "256" -- 256 colors

vim.cmd([[colorscheme gruvbox]])
vim.cmd([[set background=dark]])

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

vim.wrap = true -- set wrap


-- mouse settings
vim.mouse = "all" -- allow mouse usage

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

-- set linters
vim.cmd([[
let g:ale_linters = {'python' : ['flake8', 'black']}
let g:ale_open_list = 0
call ale#Set('python_flake8_options', '--config=$HOME/.config/flake8') " ensure flake8 uses global config
]])

-- MAPPINGS

-- Remap the leader
vim.g.mapleader = " " -- remap leader to space

-- Telescope
-- Find files using Telescope command-line sugar.
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { noremap = true })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { noremap = true })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { noremap = true })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { noremap = true })

-- mappings n - normal mode; nore - non recursive; map - mapping
-- Nerdtree
map("n", "<Leader>n", ":NERDTreeToggle<CR>", { noremap = true })
map("n", "<C-n>", ":NERDTreeFocus<CR>", { noremap = true })

-- Other mappings
-- nnoremap <space> za

-- tagbar
map("n", "<Leader>t", ":TagbarToggle fj<CR>", { noremap = true })

-- ALE linter mappings
map("n", "<C-j>", ":ALENext<CR>", { noremap = true })
map("n", "<C-k>", ":ALEPrevious<CR>", { noremap = true })

-- remove trailing whitespaces
map("n", "<leader>e", ":%s/\\s\\+$//e<CR>", { noremap = true })

-- remapping window operations
map("n", "<leader>w", "<C-w>", { noremap = true })
map("n", "<leader>wm", ":MaximizerToggle<CR>", { noremap = true })

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

-- Running Python files with <leader>r
vim.cmd([[autocmd FileType python map <buffer> <leader>r :!clear; python %<CR>]])

-- LSP setup
require'lspconfig'.pyright.setup{}
require'lspconfig'.sumneko_lua.setup{}

-- LSP setup (copy pasted below, no idea how this works or what it does)
local lsp_defaults = {
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = require('cmp_nvim_lsp').update_capabilities(
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

lspconfig.sumneko_lua.setup({
  single_file_support = true,
  on_attach = function(client, bufnr)
    print('hello')
    lspconfig.util.default_config.on_attach(client, bufnr)
  end
})

require('luasnip.loaders.from_vscode').lazy_load()

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

require('luasnip.loaders.from_vscode').lazy_load()

local cmp = require('cmp')
local luasnip = require('luasnip')

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
