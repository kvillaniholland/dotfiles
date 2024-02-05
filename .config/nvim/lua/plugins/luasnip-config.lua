return {
	"L3MON4D3/LuaSnip",
	config = function()
		require("luasnip").setup()
		require("luasnip.loaders.from_vscode").lazy_load()
		require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/snippets" } })
	end,
}
