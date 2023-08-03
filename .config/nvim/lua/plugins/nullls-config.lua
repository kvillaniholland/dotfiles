local null_ls = require("null-ls")
require("mason").setup()

require("mason-null-ls").setup({
	ensure_installed = nil,
	automatic_installation = false,
	handlers = {},
})

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.prettier.with({
			extra_args = {
				"--print-width",
				120,
				"--tab-width",
				4,
			},
		}),

		null_ls.builtins.diagnostics.jsonlint, -- JSON Lint

		null_ls.builtins.formatting.stylua, -- Lua formatting
		null_ls.builtins.diagnostics.luacheck, -- Lua linting
	},
})
