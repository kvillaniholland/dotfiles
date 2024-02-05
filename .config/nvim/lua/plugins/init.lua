return {
	-- ## Dependencies ## --
	{ "nvim-lua/plenary.nvim" },
	{ "kevinhwang91/promise-async" },

	-- Language server that provides other functionality - like linting, formatting, etc.
	{ "nvimtools/none-ls.nvim" },
	-- Cleaner scrolling
	{ "karb94/neoscroll.nvim", config = true },
	-- Icons for use in the UI
	{ "nvim-tree/nvim-web-devicons" },
	-- Keyboard shortcut coach
	{ "folke/which-key.nvim" },
	-- Helps keep certain buffers static (i.e. Aerial),
	{ "stevearc/stickybuf.nvim" },
	-- Enhance QF list
	{ "kevinhwang91/nvim-bqf" },
	-- Small UI enhancements
	{ "stevearc/dressing.nvim" },
	-- Quick buffer navigation, a la Hop or Sneak
	{ "rlane/pounce.nvim" },
	-- Some tweaks to the basic yank functionality, including adding it to the system clipboard
	{ "ibhagwan/smartyank.nvim" },
	-- Cleaner w,e,b motions for camelcase, etc
	{ "chrisgrieser/nvim-spider" },
	-- Autopairs with complex config options
	{ "windwp/nvim-autopairs" },
	-- Tweaks to F (find in line) functionality
	{ "rhysd/clever-f.vim" },
	-- Project-wide find & replace
	{ "nvim-pack/nvim-spectre" },
	-- Clipboard history manager for Telescope
	{ "AckslD/nvim-neoclip.lua" },
	-- Easy textobject creation (required by below),
	{ "kana/vim-textobj-user" },
	-- Git diff view
	{ "sindrets/diffview.nvim" },
	-- Extra Typescript capabilities
	{ "yioneko/nvim-vtsls" },
	-- Show current func / whatever context at top of screen
	{ "nvim-treesitter/nvim-treesitter-context" },
	-- Catppuccin theme
	{ "catppuccin/nvim" },
	-- Connect Mason tools to LSP automatically
	{ "williamboman/mason-lspconfig.nvim" },
	-- Connect Mason tools to Null LS automatically,
	{ "jayp0521/mason-null-ls.nvim" },
	-- Completion engine stuff
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "saadparwaiz1/cmp_luasnip" },
}
