local status, handlers = pcall(require, 'telescope-lsp-handlers')
if (not status) then return end

handlers.setup()

