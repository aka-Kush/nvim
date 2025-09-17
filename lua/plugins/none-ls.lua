return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua.with({
					command = "/run/current-system/sw/bin/stylua",
				}),
				null_ls.builtins.formatting.nixfmt.with({
					command = "/run/current-system/sw/bin/nixfmt",
				}),
				null_ls.builtins.code_actions.statix.with({
                    command = "/run/current-system/sw/bin/statix"
                }),
                null_ls.builtins.formatting.black.with({
                    command = "/run/current-system/sw/bin/black"
                }),
                null_ls.builtins.diagnostics.pylint.with({
                    command = "/run/current-system/sw/bin/pylint"
                }),
			},
		})
		vim.keymap.set("n", "<leader>nf", vim.lsp.buf.format, {})
	end,
}
