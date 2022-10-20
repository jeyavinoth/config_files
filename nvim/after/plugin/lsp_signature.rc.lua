local status, signature = pcall(require, 'lsp_signature')
if (not status) then return end

local on_attach = function(client, bufnr)
    -- formatting
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
    end
end

signature.setup {
    on_attach = on_attach,
    cfg = {
        bind = true,
        doc_lines = 10,
        max_height = 12,
        max_width = 80,
        wrap = true,

        floating_window = true,
        -- floating_widnow_above_cur_line = true,
        --

        floating_window_off_x = 1,
        floating_window_off_y = 0,

        close_timeout = 4000,
        fix_pos = false,
        hint_enable = true,
        hint_prefix = '🐼 ',
        hint_scheme = 'LspSignatureActiveParameter',
        handler_opts = {
            border = "rounded"
        },

        always_trigger = false,
        auto_close_after = nil,
        extra_triggers_chars = {},

        -- z_index = 200,
        padding = '',

        transparency = nil,
        shadow_blend = 36,
        shadow_guibg = 'Black',
        timer_interval = 200,

        toggle_key = '<C-l>',

        select_signature_key = '<C-n>',
        move_cursor_key = nil,
    }
}
