return {
	"folke/trouble.nvim",
	config = function()
		require("trouble").setup({
			height = 5, -- height of the trouble list when position is top or bottom
		})
	end,
}
