local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end

-- local protocol = require('vim.lsp.protocol')

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
}

-- -- Python
-- lspconfig.pyright.setup {}
--
-- -- Typescript, Javascript
-- lspconfig.ts_ls.setup {}
--
-- -- Lua
-- lspconfig.lua_ls.setup {}

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
    --ther = weather() Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})





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


-- -- Python PYLSP
-- nvim_lsp.pylsp.setup {
--     -- on_attach = on_attach,
--     filetypes = { "python" },
--     settings = {
--         configurationSources = { "flake8" },
--         formatCommand = { "black" },
--         pylsp = {
--             plugins = {
--                 jedi_completion = { enabled = true },
--                 jedi_hover = { enabled = true },
--                 jedi_references = { enabled = true },
--                 jedi_signature_help = { enabled = true },
--                 jedi_symbols = { enabled = true, all_scopes = true },
--                 pycodestyle = { enabled = false },
--                 flake8 = {
--                     enabled = true,
--                     -- ignore = {},
--                     maxLineLength = 120
--                 },
--                 mypy = { enabled = true },
--                 yapf = { enabled = false },
--                 pylint = { enabled = false },
--                 mccabe = { enabled = false },
--                 preload = { enabled = false },
--                 rope_completion = { enabled = false },
--                 black = { enabled = true },
--                 isort = { enabled = false }
--             },
--         },
--     }
-- }
--
-- -- -- Pyright Setup
-- -- nvim_lsp.pyright.setup {
-- --     -- on_attach = on_attach
-- -- }
--
-- -- Lua formatting
-- nvim_lsp.lua_ls.setup {
--     -- on_attach = on_attach,
--     settings = {
--         Lua = {
--             diagnostics = {
--                 -- Get the language server to recognize the "vim" global
--                 globals = { 'vim', 'hs' }
--             },
--             workspace = {
--                 -- Make the server aware of Neovim runtime files
--                 library = vim.api.nvim_get_runtime_file("", true),
--                 checkThirdParty = false -- get rid of the error message OpenRestify
--             }
--         }
--     }
-- }
