local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false
    },
    sync_install = false,
    auto_install = true,
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        'python',
        'lua',
        'json',
        'css',
        'c',
        'help'
    },
    autotag = {
        enable = true
    }
}
