local status, navigator = pcall(require, "navigator")
if (not status) then return end

navigator.setup({
    debug = false,                                                                  -- log output, set to true and log path: ~/.cache/nvim/gh.log
    width = 0.75,                                                                   -- max width ratio (number of cols for the floating window) / (window width)
    height = 0.3,                                                                   -- max list window height, 0.3 by default
    preview_height = 0.35,                                                          -- max height of preview windows
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },            -- border style, can be one of 'none', 'single', 'double',

    ts_fold = false,                                                                -- modified version of treesitter folding
    default_mapping = true,                                                         -- set to false if you will remap every key or if you using old version of nvim-
    keymaps = { { key = "gK", func = vim.lsp.declaration, desc = 'declaration' } }, -- a list of key maps
    treesitter_analysis = true,                                                     -- treesitter variable context
    treesitter_navigation = true,                                                   -- bool|table false: use lsp to navigate between symbol ']r/[r', table: a list of
    treesitter_analysis_max_num = 100,                                              -- how many items to run treesitter analysis
    treesitter_analysis_condense = true,                                            -- condense form for treesitter analysis
    transparency = 50,                                                              -- 0 ~ 100 blur the main window, 100: fully transparent, 0: opaque,  set to nil or 100 to disable it

    lsp_signature_help = true,                                                      -- if you would like to hook ray-x/lsp_signature plugin in navigator
    signature_help_cfg = nil,                                                       -- if you would like to init ray-x/lsp_signature plugin in navigator, and pass in your own config to signature help
    icons = {
        -- Code action
        code_action_icon = "🏏", -- note: need terminal support, for those not support unicode, might crash
        -- Diagnostics
        diagnostic_head = '🐛',
        diagnostic_head_severity_1 = "🈲",
        -- refer to lua/navigator.lua for more icons setups
    },
    mason = false,     -- set to true if you would like use the lsp installed by williamboman/mason
    lsp = {
        enable = true, -- skip lsp setup, and only use treesitter in navigator.
        code_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
        code_lens_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
        document_highlight = true,                           -- LSP reference highlight,
        format_on_save = false,                              -- {true|false} set to false to disasble lsp code format on save (if you are using prettier/efm/formater etc)
        format_options = { async = false },                  -- async: disable by default, the option used in vim.lsp.buf.format({async={true|false}, name = 'xxx'})
        disable_format_cap = { "sqlls", "lua_ls", "gopls" }, -- a list of lsp disable format capacity (e.g. if you using efm or vim-codeformat etc), empty {} by default
        diagnostic = {
            underline = true,
            virtual_text = true,      -- show virtual for diagnostic message
            update_in_insert = false, -- update diagnostic message in insert mode
        },

        hover = {
            enable = true,
            keymap = {
                ['<C-k>'] = {
                    go = function()
                        local w = vim.fn.expand('<cWORD>')
                        vim.cmd('GoDoc ' .. w)
                    end,
                    default = function()
                        local w = vim.fn.expand('<cWORD>')
                        vim.lsp.buf.workspace_symbol(w)
                    end,
                },
            },
        },

        diagnostic_scrollbar_sign = { '▃', '▆', '█' }, -- experimental:  diagnostic status in scroll bar area; set to false to disable the diagnostic sign,
        --                for other style, set to {'╍', 'ﮆ'} or {'-', '='}
        diagnostic_virtual_text = true,                -- show virtual for diagnostic message
        diagnostic_update_in_insert = false,           -- update diagnostic message in insert mode
        display_diagnostic_qf = true,                  -- always show quickfix if there are diagnostic errors, set to false if you want to ignore it
        tsserver = {
            filetypes = { 'typescript' }               -- disable javascript etc,
            -- set to {} to disable the lspclient for all filetypes
        },
        ctags = {
            cmd = 'ctags',
            tagfile = 'tags',
            options = '-R --exclude=.git --exclude=node_modules --exclude=test --exclude=vendor --excmd=number',
        },
        lua_ls = {
            sumneko_root_path = vim.fn.expand("$HOME") .. "/github/sumneko/lua-language-server",
            sumneko_binary = vim.fn.expand("$HOME") ..
                "/github/sumneko/lua-language-server/bin/macOS/lua-language-server",
        },
        servers = { 'cmake', 'ltex' }, -- by default empty, and it should load all LSP clients avalible based on filetype
    }
})
