
function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

-- neovide specific settings
vim.g.neovide_fullscreen = true
vim.g.neovide_transparency = 0.85
vim.cmd [[colorscheme shades_of_purple]]

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
	vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#05060c"})
	vim.api.nvim_set_hl(0, "ColorLine", { bg = "#AAAAAA"})


	-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#AAAAAA", blend=10 })
end

ColorMyPencils()
