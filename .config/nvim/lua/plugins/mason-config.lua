require("mason").setup()

require("mason-null-ls").setup({
	ensure_installed = {
		"prettierd",
		"eslint_d",
		"blue",
		"codespell",
		"jsonlint",
		"beautysh",
		"luacheck",
		"markdownlint",
		"stylua",
		"write-good",
		"mypy",
	},
	automatic_installation = false,
	handlers = {},
})

require("null-ls").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"vtsls",
		"pylsp",
		"pyright",
		"jsonls",
	},
})
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
	["vtsls"] = function()
		require("lspconfig")["vtsls"].setup({
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
