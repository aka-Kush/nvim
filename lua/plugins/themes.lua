local theme = os.getenv("NVIM_THEME") or "catppuccin"

return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			if theme == "catppuccin" then
				vim.cmd.colorscheme("catppuccin")
			end
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		priority = 1000,
		lazy = false,
		config = function()
			if theme == "gruvbox" then
				vim.cmd.colorscheme("gruvbox")
			end
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		lazy = false,
		config = function()
			if theme == "rose-pine" then
				vim.cmd.colorscheme("rose-pine")
			end
			if theme == "rose-pine-dawn" then
				vim.opt.background = "light"
				vim.cmd.colorscheme("rose-pine")
			end
		end,
	},
	{
		"Mofiqul/dracula.nvim",
		name = "dracula",
		priority = 1000,
		lazy = false,
		opts = {
			colorscheme = "dracula",
		},
		config = function()
			if theme == "dracula" then
				local dracula = require("dracula")
				dracula.setup({})
				vim.cmd.colorscheme("dracula")
			end
		end,
	},
	{
		"neanias/everforest-nvim",
		name = "everforest",
		priority = 1000,
		lazy = false,
		config = function()
			if theme == "everforest" then
				vim.cmd.colorscheme("everforest")
			end
		end,
	},
	{
		"Mofiqul/adwaita.nvim",
		name = "adwaita",
		priority = 1000,
		lazy = false,
		config = function()
			if theme == "adwaita" then
				vim.cmd.colorscheme("adwaita")
			end
		end,
	},
}
