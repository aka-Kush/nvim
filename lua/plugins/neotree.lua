return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		vim.g.mapleader = " "
		vim.keymap.set("n", "<leader>e", ":Neotree toggle filesystem <CR>", { noremap = true, silent = true })
		require("neo-tree").setup({
			filesystem = {
				follow_current_file = { enabled = true },
				bind_to_cwd = true,
			},
			icon = {
				provider = "nvim-web-devicons",
				folder_closed = "",
				folder_open = "",
				folder_empty = "󰜌",
			},
			mappings = {
				["<space>"] = {
					["<2-LeftMouse>"] = "open",
					["<cr>"] = "open",
					["<esc>"] = "cancel", -- close preview or floating neo-tree window
					["P"] = {
						"toggle_preview",
						config = {
							use_float = true,
							use_snacks_image = true,
							use_image_nvim = true,
						},
					},
					["S"] = "open_split",
					["s"] = "open_vsplit",
					["t"] = "open_tabnew",
					["A"] = "add_directory", -- also accepts the optional config.show_path option like "add". this also supports BASH style brace expansion.
					["d"] = "delete",
					["r"] = "rename",
					["y"] = "copy_to_clipboard",
					["x"] = "cut_to_clipboard",
					["p"] = "paste_from_clipboard",
					["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
					["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
					["R"] = "refresh",
				},
			},
		})
	end,
}
