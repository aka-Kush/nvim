return {
	cmd = { "nixd" },
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	filetypes = { "nix" },
	root_markers = { ".git", "flake.nix", "default.nix", "shell.nix" },
}
