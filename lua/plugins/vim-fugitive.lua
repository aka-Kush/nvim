return {
  "tpope/vim-fugitive",
  config = function()
    vim.api.nvim_set_keymap('n', '<leader>gs', ':Git status<CR>', { noremap = true, silent = true })
  end
}
