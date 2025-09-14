return {
	"lambdalisue/suda.vim",
	config = function()
		vim.api.nvim_set_keymap("n", "<leader>ws", ":w suda://%<CR>", { noremap = true, silent = true })
	end,
}
