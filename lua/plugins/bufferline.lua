return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				offsets = { { filetype = "neo-tree", text = "File Explorer", padding = 1 } },
				show_buffer_close_icons = false,
				show_close_icon = false,
			},
		},
	},
}
