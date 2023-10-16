local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
	-- lsp_zero.default_keymaps({buffer = bufnr})
	local opts = {buffer = bufnr, remap = false}
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "d]", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "d[", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "C-h", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		"lua_ls", "clangd", "pylsp"
	},
	handlers = {
		lsp_zero.default_setup,
	},
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp_zero.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})

