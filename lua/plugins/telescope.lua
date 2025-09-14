return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = { "^.git/", "node_modules/", "dist/", "build/" },
                },
            })
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
            vim.keymap.set("n", "<leader>fh", function()
                builtin.find_files({ hidden = true })
            end, { desc = "Telescope find hidden files" })
            vim.keymap.set("n", "<leader>fr", function()
                builtin.find_files({ hidden = true, cwd = "/" })
            end, { desc = "Telescope find files from root" })
            vim.keymap.set("n", "<leader>fd", function()
                builtin.find_files({ hidden = true, cwd = "~/.config/nvim" })
            end, { desc = "Telescope find files from neovim dots" })
            vim.keymap.set("n", "<leader>fn", function()
                builtin.find_files({ hidden = true, cwd = "/etc/nixos" })
            end, { desc = "Telescope find files from nixos dots" })
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
