require("mason").setup()

require("mason-null-ls").setup({
	ensure_installed = {},
	automatic_installation = false,
	handlers = {},
})

require("null-ls").setup()

require("mason-lspconfig").setup()
local nvim_lsp = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(client, bufnr)
	-- We want to use Null LS for formatting
	client.server_capabilities.documentFormattingProvider = false
end

require("mason-lspconfig").setup_handlers({
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
	end,
	["tsserver"] = function()
		require("lspconfig")["tsserver"].setup({
			root_dir = nvim_lsp.util.find_package_json_ancestor,
			capabilities = capabilities,
			on_attach = on_attach,
			init_options = {
				preferences = {
					importModuleSpecifierPreference = "relative",
				},
			},
		})
	end,
})