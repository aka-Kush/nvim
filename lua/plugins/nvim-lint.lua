return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")
		lint.linters.golangci_lint = {
			cmd = "golangci-lint",
			args = function()
				return {
					"run",
					"--out-format",
					"json",
					"--show-stats=false",
					"--issues-exit-code=1",
					vim.api.nvim_buf_get_name(0),
				}
			end,
			stream = "stdout",
			parser = require("lint.parser").from_errorformat("%f:%l:%c: %m", {
				source = "golangci-lint",
			}),
		}
		lint.linters_by_ft = {
			python = { "pylint" },
			nix = { "statix" },
			lua = { "luacheck" },
			go = { "golangci_lint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
