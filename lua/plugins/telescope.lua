return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = { "^.git/", "node_modules/", "dist/", "build/", "/home/kush/go/"},
                },
            })
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
            -- vim.keymap.set("n", "<leader>fg", builtin.live_grep, {hidden = true, desc = "Telescope live grep" })
            vim.keymap.set("n", "<leader>fg", function()
                builtin.live_grep({ hidden = true, prompt_title = "Telescope live grep" })
            end, { desc = "Telescope live grep" })
            vim.keymap.set("n", "<leader>fh", function()
                builtin.find_files({ hidden = true, prompt_title = "Find Hidden Files" })
            end, { desc = "Telescope find hidden files" })
            vim.keymap.set("n", "<leader>fr", function()
                builtin.find_files({ hidden = true, cwd = "/", prompt_title = "Find Files (Root)" })
            end, { desc = "Telescope find files from root" })
            vim.keymap.set("n", "<leader>fd", function()
                builtin.find_files({ hidden = true, cwd = "~/.config/nvim", prompt_title = "Find Files (Neovim Dots)" })
            end, { desc = "Telescope find files from neovim dots" })
            vim.keymap.set("n", "<leader>fn", function()
                builtin.find_files({ hidden = true, cwd = "/etc/nixos", prompt_title = "Find Files (/etc/nixos)" })
            end, { desc = "Telescope find files from nixos dots" })
            vim.keymap.set("n", "<leader>fc", function()
                local current_file_dir = vim.fn.expand("%:p:h")
                require("telescope.builtin").find_files({
                    cwd = current_file_dir,
                    prompt_title = "Find Files (Current File Dir)",
                })
            end, { noremap = true, silent = true, desc = "Find files from current file's directory" })
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
