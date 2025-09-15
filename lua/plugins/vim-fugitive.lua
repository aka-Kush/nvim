return {
  "tpope/vim-fugitive",
  config = function()
    vim.api.nvim_set_keymap('n', '<leader>gs', ':Git<CR>', { noremap = true, silent = true, desc = "Git status" })
    vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit<CR>', { noremap = true, silent = true, desc = "Git commit" })
    vim.api.nvim_set_keymap('n', '<leader>gp', ':Git push<CR>', { noremap = true, silent = true, desc = "Git push" })
  end
}
