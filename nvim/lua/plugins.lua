local status, packer = pcall(require, 'packer')
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

return packer.startup(
    function(use)
        use 'wbthomason/packer.nvim'

        -- Colorschemes
        use 'tjdevries/colorbuddy.nvim'
        use 'Shatur/neovim-ayu'
        use "folke/tokyonight.nvim"

        use 'ellisonleao/gruvbox.nvim'
        -- use 'sainnhe/gruvbox-material'

        use 'hoob3rt/lualine.nvim'         -- statusline

        use 'kyazdani42/nvim-web-devicons' -- file icons

        use {
            'nvim-treesitter/nvim-treesitter', -- Tresitter
            run = ':TSUpdate'
        }
        -- use 'nvim-treesitter/nvim-treesitter-context' -- the sticky header thing at the top

        -- Fast editing
        use 'tpope/vim-surround'  -- sorround words, etc ysw)
        use 'tpope/vim-repeat'    -- updated . repeat
        use 'tomtom/tcomment_vim' -- gcc comment

        -- Git
        -- use 'airblade/vim-gitgutter' -- shows the +/- for git changes
        use 'tpope/vim-fugitive'      -- git integration
        use 'dinhhuy258/git.nvim'     -- git integration built on top of vim-fugitive
        use 'lewis6991/gitsigns.nvim' -- git integration built on top of vim-fugitive

        -- File navigation
        use 'nvim-lua/plenary.nvim'          -- common utilities
        use {
            'nvim-telescope/telescope.nvim', -- Telescope (fuzzy file finder)
            branch = '0.1.x',
        }
        use 'nvim-telescope/telescope-file-browser.nvim'
        use 'ThePrimeagen/harpoon' -- harpoon to fast switching files

        -- Auto pairs
        use 'windwp/nvim-autopairs' -- autopairs
        -- use 'windwp/nvim-ts-autotag' -- typescript ?

        use 'norcalli/nvim-colorizer.lua' -- colorizer to show hex colors

        use 'preservim/tagbar'            -- tagbar on right to get tags in file


        -- trying out plugins
        use 'jpalardy/vim-slime'            -- send text to tmux pane (make sure I am using this plugin regularly)

        use 'mbbill/undotree'               -- undotree (figure the full use of the plugin)

        -- use 'xuhdev/vim-latex-live-preview' -- LLPStartPreview, opens up the preview for .tex file

        -- Markdown preview setup: install without yarn or npm
        use({
            "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
        })

        -- -- ZenMode
        -- use "folke/zen-mode.nvim"

        -- Floating Terminal
        use 'voldikss/vim-floaterm'

        -- Trying out something like NerdTree for neovim
        use({
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional, for file icons
            },
            tag = 'nightly'                    -- optional, updated every week. (see issue #1193)
        })

        -- -- neovim lsp config
        -- use({"neovim/nvim-lspconfig"})


        -- another alternative is lsp-zero (https://github.com/VonHeikemen/lsp-zero.nvim)
        use {
            "neovim/nvim-lspconfig",
        }

        use {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        }

        use {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        }

        -- github copilot
        use {
            "github/copilot.vim", branch="release"
        }

        use {
          "zbirenbaum/copilot-cmp",
          config = function()
              require("copilot_cmp").setup()
          end,
        }

        -- use {
        --     'VonHeikemen/lsp-zero.nvim',
        --     branch = 'v3.x',
        --     requires = {
        --         --- Uncomment these if you want to manage LSP servers from neovim
        --         {'williamboman/mason.nvim'},
        --         {'williamboman/mason-lspconfig.nvim'},
        --         -- LSP Support
        --         {'neovim/nvim-lspconfig'},
        --         -- Autocompletion
        --         {'hrsh7th/nvim-cmp'},
        --         {'hrsh7th/cmp-nvim-lsp'},
        --         {'L3MON4D3/LuaSnip'},
        --     }
        -- }

        -- use {'hrsh7th/nvim-cmp'}
        -- use {'hrsh7th/cmp-nvim-lsp'}
        -- use {'L3MON4D3/LuaSnip'}
        -- use {'neovim/nvim-lspconfig'}

        -- use ({
        --     'nvimdev/lspsaga.nvim',
        --     after = 'nvim-lspconfig',
        --     config = function()
        --         require('lspsaga').setup({})
        --     end,
        -- })

        -- use {
        --     'puremourning/vimspector', -- vim debugger
        --     -- cmd = { "VimspectorInstall", "VimspectorUpdate" },
        --     -- fn = { "vimspector#Launch()", "vimspector#ToggleBreakpoint", "vimspector#Contninue" },
        --     -- config = function() require("config.vimspector").setup() end,
        -- }

        -- use 'ThePrimeagen/vim-be-good' -- a game to improve in vim

        -- use {"ray-x/lsp_signature.nvim"}

	-- Syntax for just files
        -- use 'NoahTheDuke/vim-just'


    end
)
