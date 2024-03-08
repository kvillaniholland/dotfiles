return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.surround").setup()
		require("mini.trailspace").setup()
		require("mini.bufremove").setup()
		require("mini.fuzzy").setup()
		require("mini.comment").setup()
		require("mini.sessions").setup()
		require("mini.cursorword").setup()
		require("mini.completion").setup()

		-- Change highlight for currently selected word
		vim.cmd([[hi! link MiniCursorWord Search]])
		vim.cmd([[hi! MiniCursorwordCurrent gui=nocombine guifg=NONE guibg=NONE]])
	end,
}
