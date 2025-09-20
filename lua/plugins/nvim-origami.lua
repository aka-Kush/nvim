return {
	"chrisgrieser/nvim-origami",
	event = "VeryLazy",
	opts = {}, -- needed even when using default config
	config = function()
		require("origami").setup({
			foldKeymaps = {
				setup = true,
			},
		})
		vim.opt.foldlevel = 99
		vim.opt.foldlevelstart = 99
		vim.opt.foldcolumn = "1"
	end,
}
