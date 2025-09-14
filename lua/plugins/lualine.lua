local lualineTheme = os.getenv("LUA_LINE") or "dracula"
return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = { theme = lualineTheme },
		})
	end,
}
