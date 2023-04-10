local status, mason = pcall(require, "mason")
if (not status) then return end
mason.setup()

local status, mason_lsp = pcall(require, "mason-lspconfig")
if (not mason_lsp) then return end
mason_lsp.setup()
