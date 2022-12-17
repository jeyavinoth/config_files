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

        use {'svrana/neosolarized.nvim', requires = { 'tjdevries/colorbuddy.nvim' }}
        use { "catppuccin/nvim", as = "catppuccin"}
        use "EdenEast/nightfox.nvim" -- Packer
        use 'ellisonleao/gruvbox.nvim'
        use 'tomasr/molokai'
        use 'jnurmine/Zenburn'
        use 'gosukiwi/vim-atom-dark'
        use 'shaunsingh/nord.nvim'
        use 'Mofiqul/dracula.nvim'
        -- use 'ayu-theme/ayu-vim' -- Use the one below instead
        use 'Shatur/neovim-ayu'
        use({
            'rose-pine/neovim',
            as = 'rose-pine',
            config = function()
                vim.cmd('colorscheme rose-pine')
            end
        })

        use 'hoob3rt/lualine.nvim' -- statusline

        -- another alternative is lsp-zero (https://github.com/VonHeikemen/lsp-zero.nvim)
        use 'neovim/nvim-lspconfig' -- LSP
        use 'onsails/lspkind-nvim' -- vscode-like pictograms
        use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
        use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim
        use 'hrsh7th/nvim-cmp' -- Completion
        use 'L3MON4D3/LuaSnip' -- Snippet

        use 'glepnir/lspsaga.nvim' -- LSP saga
        use 'ray-x/lsp_signature.nvim' -- LSP signature

        use {
            'nvim-treesitter/nvim-treesitter', -- Tresitter
            run = ':TSUpdate'
        }
        use 'nvim-treesitter/nvim-treesitter-context' -- the sticky header thing at the top

        -- Fast editing
        use 'tpope/vim-surround' -- sorround words, etc ysw)
        use 'tpope/vim-repeat' -- updated . repeat
        use 'tomtom/tcomment_vim' -- gcc comment

        -- Git
        -- use 'airblade/vim-gitgutter' -- shows the +/- for git changes
        use 'tpope/vim-fugitive' -- git integration
        use 'dinhhuy258/git.nvim' -- git integration built on top of vim-fugitive
        use 'lewis6991/gitsigns.nvim' -- git integration built on top of vim-fugitive

        -- File navigation
        use 'nvim-lua/plenary.nvim' -- common utilities
        use {
            'nvim-telescope/telescope.nvim', -- Telescope (fuzzy file finder)
            branch = '0.1.x',
        }
        use 'nvim-telescope/telescope-file-browser.nvim'
        use 'ThePrimeagen/harpoon' -- harpoon to fast switching files
        use 'kyazdani42/nvim-web-devicons' -- file icons

        -- Auto pairs
        use 'windwp/nvim-autopairs' -- autopairs
        -- use 'windwp/nvim-ts-autotag' -- typescript ?

        -- use 'akinsho/nvim-bufferline.lua' -- TagBuffline

        use 'norcalli/nvim-colorizer.lua' -- colorizer to show hex colors

        use 'preservim/tagbar' -- tagbar on right to get tags in file

        use {
            'puremourning/vimspector', -- vim debugger
            -- cmd = { "VimspectorInstall", "VimspectorUpdate" },
            -- fn = { "vimspector#Launch()", "vimspector#ToggleBreakpoint", "vimspector#Contninue" },
            -- config = function() require("config.vimspector").setup() end,
        }

        -- use 'ThePrimeagen/vim-be-good' -- a game to improve in vim

        -- trying out plugins
        use 'jpalardy/vim-slime' -- send text to tmux pane (make sure I am using this plugin regularly)

        -- use 'mbbill/undotree' -- undotree (figure the full use of the plugin)

        use 'xuhdev/vim-latex-live-preview' -- LLPStartPreview, opens up the preview for .tex file

        -- Markdown preview setup: install without yarn or npm
        use({
            "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
        })

        -- ZenMode
        use "folke/zen-mode.nvim"

        -- Floating Terminal
        use 'voldikss/vim-floaterm'

        -- Trying out something like NerdTree for neovim
        use ({
            'nvim-tree/nvim-tree.lua',
            requires = {
                    'nvim-tree/nvim-web-devicons', -- optional, for file icons
                },
            tag = 'nightly' -- optional, updated every week. (see issue #1193)
        })

    end
)
