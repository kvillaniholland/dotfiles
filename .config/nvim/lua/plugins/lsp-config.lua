local vim = vim

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "always",
		max_width = 240,
		header = "",
		prefix = "",
	},
})
