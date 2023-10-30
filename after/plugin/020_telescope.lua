local nv = require("Unreal.commands")
local builtin = require('telescope.builtin')
local perforce = require("Perforce")
-- print(nv.Inspect(perforce))
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fp', perforce.telescope.opened, {})
--vim.keymap.set('n', '<Leader>fs', builtin.treesitter, {})
-- vim.keymap.set('n', '<Leader>fs', builtin.lsp_document_symbols, {})

-- find document symbols eitheir through lsp if available
-- otherwise fallback to treesitter
vim.keymap.set('n', '<leader>fs', function (opts)
  local bufnr = vim.api.nvim_get_current_buf()
  local winnr = vim.api.nvim_get_current_win()
  local params = vim.lsp.util.make_position_params(winnr)
  vim.lsp.buf_request(bufnr,
    "textDocument/documentSymbol", params,
    function(err, result, _, _)
        if err then
            return builtin.treesitter()
        end
        return builtin.lsp_document_symbols()
    end)
end, {})

vim.keymap.set('n', '<leader>fws', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")});
end)
