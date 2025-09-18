return {
	{
		"norcalli/nvim-colorizer.lua",
		opts = {
			user_default_options = {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				names = false, -- "Name" codes like Blue or blue
				RRGGBBAA = true, -- #RRGGBBAA hex codes with alpha channel
				css = true, -- Enable all CSS features: rgb(), rgba(), etc.
				css_fn = true, -- Enable all CSS function features: rgb(), rgba(), etc.
			},
			filetypes = { "*" }, -- Enable for all filetypes. Adjust for your needs
		},
		config = function(_, opts)
			require("colorizer").setup(opts.filetypes, opts.user_default_options)
		end,
	},
}
