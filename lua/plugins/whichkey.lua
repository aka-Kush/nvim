-- setting up whichkey with all keymaps that I've already declared in other files
return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local wk = require("which-key")
        wk.setup({})
    end,
}
