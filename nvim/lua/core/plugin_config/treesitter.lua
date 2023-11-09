require'nvim-treesitter.configs'.setup {
	-- List of parsers
	ensure_installed = { "c", "lua", "rust", "vim" },

	sync_install = false,
	auto_isntall = true,
	highlight = {
		enable = true,
	},
}
