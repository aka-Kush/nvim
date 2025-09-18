return {
	"nvim-mini/mini.indentscope",
	opts = {
		symbol = "│",
		options = { try_as_border = true },
	},
	init = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "alpha" }, -- alpha.lua filetype for dashboard
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})
	end,
}
