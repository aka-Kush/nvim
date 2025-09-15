return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup({
            toggler = {
                line = "gcc", -- line comment toggle
                block = "gbc", -- block comment toggle
            },
            opleader = {
                line = "gc", -- line comment operator
                block = "gb", -- block comment operator
            },
            extra = {
                above = "gcO", -- add comment line above
                below = "gco", -- add comment line below
                eol = "gcA", -- add comment at end of line
            },
        })
    end,
}
