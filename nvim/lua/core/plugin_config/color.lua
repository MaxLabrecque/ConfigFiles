require("tokyonight").setup({
	transparent = false,
	integrations = {
		nvimtree = true,
	},
	theme_style = "night",
})

-- Set the colorscheme 
vim.cmd[[colorscheme tokyonight-night]]

-- Make nvim use transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
