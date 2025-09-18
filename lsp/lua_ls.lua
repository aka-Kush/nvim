return {
	cmd = { "lua-language-server" },
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	filetypes = { "lua" },
	root_markers = { "lua", ".luarc.json", ".luarc.jsonc", ".git" },
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
}
