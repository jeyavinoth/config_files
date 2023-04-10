local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

-- -- this doesn't work, figure this out
-- local on_attach = function(client, bufnr)
--     -- formatting
--     if client.server_capabilities.documentFormattingProvider then
--         vim.api.nvim_command [[augroup Format]]
--         vim.api.nvim_command [[autocmd! * <buffer>]]
--         vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
--         vim.api.nvim_command [[augroup END]]
--     end
-- end


-- Python PYLSP
nvim_lsp.pylsp.setup {
    -- on_attach = on_attach,
    filetypes = { "python" },
    settings = {
        configurationSources = { "flake8" },
        formatCommand = { "black" },
        pylsp = {
            plugins = {
                jedi_completion = { enabled = true },
                jedi_hover = { enabled = true },
                jedi_references = { enabled = true },
                jedi_signature_help = { enabled = true },
                jedi_symbols = { enabled = true, all_scopes = true },
                pycodestyle = { enabled = false },
                flake8 = {
                    enabled = true,
                    -- ignore = {},
                    maxLineLength = 120
                },
                mypy = { enabled = true },
                yapf = { enabled = false },
                pylint = { enabled = false },
                mccabe = { enabled = false },
                preload = { enabled = false },
                rope_completion = { enabled = false },
                black = { enabled = true },
                isort = { enabled = false }
            },
        },
    }
}

-- -- Pyright Setup
-- nvim_lsp.pyright.setup {
--     -- on_attach = on_attach
-- }

-- Lua formatting
nvim_lsp.lua_ls.setup {
    -- on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the "vim" global
                globals = { 'vim', 'hs' }
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false -- get rid of the error message OpenRestify
            }
        }
    }
}
