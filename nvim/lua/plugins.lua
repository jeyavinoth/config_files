local status, packer = pcall(require, 'packer')
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
    function(use)
        use 'wbthomason/packer.nvim'
        use {
            'svrana/neosolarized.nvim',
            requires = { 'tjdevries/colorbuddy.nvim' }
        }

        use 'hoob3rt/lualine.nvim' -- statusline

        use 'tomtom/tcomment_vim' -- gcc comment

        use 'neovim/nvim-lspconfig' -- LSP
        use 'onsails/lspkind-nvim' -- vscode-like pictograms
        use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
        use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim
        use 'hrsh7th/nvim-cmp' -- Completion
        use 'L3MON4D3/LuaSnip' -- Snippet

        use {
            'nvim-treesitter/nvim-treesitter', -- Tresitter
            run = ':TSUpdate'
        }

        -- Fast editing
        use 'tpope/vim-surround' -- sorround words, etc ysw)
        use 'tpope/vim-fugitive' -- git integration
        use 'tpope/vim-repeat' -- updated . repeat

        -- File navigation
        use 'nvim-lua/plenary.nvim' -- common utilities
        use {
            'nvim-telescope/telescope.nvim', -- Telescope (fuzzy file finder)
            branch = '0.1.x',
        }
        use 'nvim-telescope/telescope-file-browser.nvim'
        use 'ThePrimeagen/harpoon' -- harpoon to fast switching files

        -- Auto pairs
        use 'windwp/nvim-autopairs' -- autopairs
        use 'windwp/nvim-ts-autotag' -- typescript ?

    end
)
