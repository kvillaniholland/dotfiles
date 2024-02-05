local vim = vim

-- Configure diagnostic floating windows
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

-- Configure info floating windows
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
	opts = opts or {}
	opts.border = "rounded"
	return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

return { "neovim/nvim-lspconfig" }
