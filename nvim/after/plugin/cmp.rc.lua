-- local status, cmp = pcall(require, 'cmp')
--
-- if (not status) then return end
--
-- cmp.setup {
--   sources = {
--     { name = 'nvim_lsp' }
--   }
-- }
--
-- -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
--
-- -- The following example advertise capabilities to `clangd`.
-- require'lspconfig'.clangd.setup {
--   capabilities = capabilities,
-- }

local status_cmp, cmp = pcall(require, "cmp")
if (not status_cmp) then return end

local status_cmp_nvim_lsp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if (not status_cmp_nvim_lsp) then return end

local status_luasnip, luasnip = pcall(require, "luasnip")
if (not status_luasnip) then return end

local status_lspconfig, lspconfig = pcall(require, "lspconfig")
if (not status_lspconfig) then return end

local capabilities = cmp_nvim_lsp.default_capabilities()

local local_servers = {
    "lua_ls",
    "ts_ls",
    "pyright",
    "pylsp",
}

for _, lsp in ipairs(local_servers) do
    lspconfig[lsp].setup {
        -- on_attach = my_custom_on_attach,
        capabilities = capabilities,
    }
end

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    sources = {
        {name = "nvim_lsp"},
        {name = "buffer"},
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
        ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        },
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, {"i", "s"}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {"i", "s"}),
    })
}
