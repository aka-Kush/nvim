return {
	vim.diagnostic.config({
		virtual_text = {
			prefix = "●", -- Show a dot before error messages inline
			spacing = 4,
		},
		signs = true, -- Show signs in the sign column
		underline = true, -- Underline problematic code
		update_in_insert = false, -- Do not update diagnostics while in insert mode
		severity_sort = true, -- Sort diagnostics by severity
	}),
}
