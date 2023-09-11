-- Load plugins
require("vimrc/plugins")

-- Set vim builtin settings
require("vimrc/vim-settings")

-- Colorscheme, highlight and other small UI tweaks
require("vimrc/ui")

-- Set up keymaps
require("vimrc/keys")

-- Make quickfix list prettier
require("vimrc/setup-qf")

-- Define custom editor commands
require("vimrc/commands")

-- Set up autocommands
require("vimrc/autocommands")

-- TODOs:
-- Move Nvim-Cmp keymaps to keys.lua
