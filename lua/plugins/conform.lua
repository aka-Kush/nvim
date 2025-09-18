return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black", "isort" },
			nix = { "nixfmt" },
			go = { "goimports-reviser" },
		},
		format_on_save = true,
	},
}
