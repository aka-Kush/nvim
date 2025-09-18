return {
	{
		"sitiom/nvim-numbertoggle",
		event = "BufEnter",
	},
	{
		-- Fix relative number toggle not triggering on Ctrl+C
		"nvim-lua/plenary.nvim",
		config = function()
			vim.api.nvim_create_autocmd("ModeChanged", {
				pattern = "i:n",
				callback = function()
					vim.opt.relativenumber = true
				end,
			})
		end,
	},
}
