return {
  "goolord/alpha-nvim",
  config = function()
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.buttons.val = {
      dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("q", "󰈆  Quit", ":qa<CR>"),
      dashboard.button("ff", "  Find files", ":Telescope find_files<CR>"),
      dashboard.button("fh", "  Find hidden files", ":Telescope find_files hidden=true<CR>"),
      dashboard.button("fg", "  Live grep", ":Telescope live_grep<CR>"),
      dashboard.button("fd", "  Find nvim dotfiles", ":Telescope find_files cwd=~/.config/nvim<CR>"),
      dashboard.button("fn", "  Find nixos dotfiles", ":Telescope find_files cwd=/etc/nixos<CR>"),
    }
    require("alpha").setup(dashboard.config)
  end,
}
