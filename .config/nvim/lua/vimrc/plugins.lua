local packup = require("utils/helpers").packup

-- Packages
packup({
	-- ## Dependencies ## --
	-- Package manager
	{ name = "packer", repo = "wbthomason/packer.nvim" },
	-- Dependencies for other plugins
	{ name = "plenary", repo = "nvim-lua/plenary.nvim" },
	-- Dependencies for other plugins(?)
	{ name = "kevin-promise", repo = "kevinhwang91/promise-async" },

	-- ## Basic capabilities ## --
	-- Language parsing for things like symbols, etc
	{ name = "treesitter", repo = "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
	-- Configs for builtin language servers
	{ name = "lsp", repo = "neovim/nvim-lspconfig" },
	-- Language server that provides other functionality - like linting, formatting, etc.
	{ name = "nullls", repo = "jose-elias-alvarez/null-ls.nvim" },
	-- Tool for installing & managing other code tools - like linters, etc.
	{ name = "mason", repo = "williamboman/mason.nvim" },
	-- Connect Mason tools to Null LS automatically
	{ name = "mason_nullls", repo = "jayp0521/mason-null-ls.nvim" },
	-- Connect Mason tools to LSP automatically
	{ name = "mason_lspconfig", repo = "williamboman/mason-lspconfig.nvim" },

	-- ## UI Plugins ## --
	-- Statusline
	{ name = "lualine", repo = "nvim-lualine/lualine.nvim" },
	-- Catppuccin theme
	{ name = "catppuccin", repo = "catppuccin/nvim", as = "catpuccin" },
	-- Loading UI, mostly used by LSP
	{ name = "fidget", repo = "j-hui/fidget.nvim" },
	-- Cleaner scrolling
	{ name = "neoscroll", repo = "karb94/neoscroll.nvim" },
	-- Icons for use in the UI
	{ name = "devicons", repo = "nvim-tree/nvim-web-devicons" },
	-- Keyboard shortcut coach
	{ name = "which-key", repo = "folke/which-key.nvim" },
	-- Helps keep certain buffers static (i.e. Aerial)
	{ name = "stickybuf", repo = "stevearc/stickybuf.nvim" },
	-- Enhance QF list
	{ name = "bqf", repo = "kevinhwang91/nvim-bqf" },
	-- Popup palette to pick lots of stuff
	{ name = "telescope", repo = "nvim-telescope/telescope.nvim" },
	-- Telescope plugin to show commands / cheatsheet
	{ name = "command-center", repo = "FeiyouG/command_center.nvim" },
	-- Small UI enhancements
	{ name = "dressing", repo = "stevearc/dressing.nvim" },

	-- ## Editor Plugins ## --
	-- Quick buffer navigation, a la Hop or Sneak
	{ name = "pounce", repo = "rlane/pounce.nvim" },
	-- Some tweaks to the basic yank functionality, including adding it to the system clipboard
	{ name = "smartyank", repo = "ibhagwan/smartyank.nvim" },
	-- Increment / decrement booleans, and some other datatypes
	{ name = "boole", repo = "nat-418/boole.nvim" },
	-- Cleaner w,e,b motions for camelcase, etc
	{ name = "spider", repo = "chrisgrieser/nvim-spider" },
	-- Autopairs with complex config options
	{ name = "nvim-autopairs", repo = "windwp/nvim-autopairs" },
	-- Close buffers after inactivity
	{ name = "early-retirement", repo = "chrisgrieser/nvim-early-retirement" },
	-- Lots of modules - I use:
	{ name = "mini", repo = "echasnovski/mini.nvim" },
	-- Tweaks to F (find in line) functionality
	{ name = "clever-f", repo = "rhysd/clever-f.vim" },
	-- Project-wide find & replace
	{ name = "spectre", repo = "nvim-pack/nvim-spectre" },
	-- Clipboard history manager for Telescope
	{ name = "neoclip", repo = "AckslD/nvim-neoclip.lua" },
	-- Easy textobject creation (required by below)
	{ name = "user-textobj", repo = "kana/vim-textobj-user" },
	-- Textobj for working with camelcase, etc (ex. civ to change camelcase segment)
	{ name = "text-obj-variable-segment", repo = "Julian/vim-textobj-variable-segment" },
	-- Snippet manager
	{ name = "luasnip", repo = "L3MON4D3/LuaSnip" },
	-- Completion engine
	{ name = "nvim-cmp", repo = "hrsh7th/nvim-cmp" },
	{ name = "nvim-cmp-lsp", repo = "hrsh7th/cmp-nvim-lsp" },
	{ name = "nvim-cmp-buffer", repo = "hrsh7th/cmp-buffer" },
	{ name = "nvim-cmp-luasnip", repo = "saadparwaiz1/cmp_luasnip" },

	-- ## IDE Capabilities ## --
	-- Sidebar symbols layout
	{ name = "aerial", repo = "stevearc/aerial.nvim" },
	-- Quick access to LSP diagnostics
	{ name = "trouble", repo = "folke/trouble.nvim" },
	-- Floating terminal inside Neovim
	{ name = "floaterm", repo = "voldikss/vim-floaterm" },
	-- Show current func / whatever context at top of screen
	{ name = "treesitter-context", repo = "nvim-treesitter/nvim-treesitter-context" },
	-- Provides git blame for statusline
	{ name = "gitblame", repo = "f-person/git-blame.nvim" },
	-- Git diff view
	{ name = "diffview", repo = "sindrets/diffview.nvim" },
	-- Extra Typescript capabilities
	{ name = "nvim-vtsls", repo = "yioneko/nvim-vtsls" },

	-- ## Deactivated ## --
	-- Predefined snippets
	-- { name = "snippets", repo = "rafamadriz/friendly-snippets" },
	-- Basic treesitter powered textobjects
	-- { name = "treesitter-textobjects", repo = "nvim-treesitter/nvim-treesitter-textobjects" },
	-- Automatically switch between relative linenumbers and absolute
	-- { name = "relative-toggle", repo = "cpea2506/relative-toggle.nvim" },
	-- Quick way to generate screenshots from code
	-- {
	-- 	name = "silicon",
	-- 	repo = "narutoxy/silicon.lua",
	-- 	run = "brew install silicon",
	-- },
})
