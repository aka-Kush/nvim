return {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("lint").linters_by_ft = {
        python = { "pylint" },
        nix = { "statix" },
        lua = { "luacheck" },
        go = { "golangci-lint" },
      }
      vim.api.nvim_create_autocmd({"BufWritePost", "BufReadPost"}, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
}
