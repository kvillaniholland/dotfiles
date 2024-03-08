return {
	"yioneko/nvim-vtsls",
	"williamboman/mason-lspconfig.nvim",
	"jayp0521/mason-null-ls.nvim",
	{ "nvimtools/none-ls.nvim", lazy = false },
	{
		"neovim/nvim-lspconfig",
		config = function()
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
		end,
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"nvimtools/none-ls.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			local nvim_lsp = require("lspconfig")
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
				handlers = {
					["eslint_d"] = function()
						require("lspconfig")["eslint_d"].setup({
							root_dir = nvim_lsp.util.find_package_json_ancestor, -- TODO - idk if this works
						})
					end,
				},
			})

			require("null-ls").setup({
				sources = {
					require("null-ls").builtins.completion.spell,
				},
			})

			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"vtsls",
					"pylsp",
					"pyright",
					"jsonls",
				},
			})

			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local on_attach = function(client, bufnr)
				-- We want to use Null LS for formatting
				client.server_capabilities.documentFormattingProvider = false
			end

			require("mason-lspconfig").setup_handlers({
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({
						on_attach = on_attach,
					})
				end,
				["vtsls"] = function()
					require("lspconfig")["vtsls"].setup({
						root_dir = nvim_lsp.util.find_package_json_ancestor,
						-- capabilities = capabilities,
						on_attach = on_attach,
						init_options = {
							preferences = {
								importModuleSpecifierPreference = "relative",
							},
						},
					})
				end,
			})
		end,
	},
}
