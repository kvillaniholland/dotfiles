return {
	"rmagatti/goto-preview",
	dependencies = { "neovim/nvim-lspconfig" },
	config = function()
		require("goto-preview").setup()
	end,
}
