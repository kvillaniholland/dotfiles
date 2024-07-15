-- local command_center = require("commander")
-- local wk = require("which-key")
local vim = vim

local function map(mode, key, command, opts, hint)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, key, command, options)
	if hint ~= nil then
		-- command_center.add({ { category = hint.category, desc = hint.desc, cmd = command, keys = { mode, key } } })
		-- wk.register({
		--		[key] = { command, hint.desc },
		-- }, { mode = mode })
	end
end

-->> Tweaking J/K <<--
-- J/K navigation handles broken lines
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Shift + J/K to scroll fast
map("n", "<down>", "10j")
map("n", "<up>", "10k")
map("n", "<s-j>", "10j")
map("n", "<s-k>", "10k")

-- Shift + J/K for visual mode too
map("v", "<down>", "10j")
map("v", "<up>", "10k")

-->> Space + ASDF <<--
map("n", "<space>a", ":Telescope neoclip theme=dropdown<cr>", {}, {
	category = "Telescope",
	desc = "Clipboard history",
})

map("n", "<space>s", ":Telescope live_grep theme=dropdown<cr>", {}, {
	category = "Telescope",
	desc = "Search in project",
})

map("n", "<space>d", ":Telescope lsp_document_symbols theme=dropdown<cr>", {}, {
	category = "Editor",
	desc = "Toggle symbols outline",
})

map("n", "<space>f", ":Telescope find_files theme=dropdown<cr>", {}, {
	category = "Telescope",
	desc = "Find files",
})

map("n", "<space>j", ":lua require('utils/netrw-toggle').ToggleExplore()<cr>", {}, {
	category = "Application",
	desc = "Toggle file explorer",
})

map("n", "<space>k", ":w<cr>", {}, {
	category = "Editor",
	desc = "Write buffer",
})

map("n", "<space>l", ":FloatermToggle<cr>", {}, {
	category = "Application",
	desc = "Toggle floating terminal",
})

map("n", "<space>;", ":noh<cr>", {}, {
	category = "Application",
	desc = "Turn off search highlight",
})

-->> Space + QWERTY <<--
map("n", "<space>q", ":lua MiniBufremove.wipeout()<cr>", {}, {
	category = "Editor",
	desc = "Close buffer",
})

map("n", "<space>w", "<c-w>q", {}, {
	category = "Window",
	desc = "Close window",
})

map("n", "<space>e", ":lua require('telescope.builtin').resume()<cr>", {}, {
	category = "Telescope",
	desc = "Resume previous search",
})

map("n", "<space>r", ":lua vim.lsp.buf.rename()<cr>", {}, {
	category = "IDE",
	desc = "Rename symbol",
})

map("n", "<space>t", ":lua require('utils/quickmarks').toggleMark()<cr>", {}, {
	category = "Marks",
	desc = "Add quickmark",
})

map("n", "<space>y", ":Telescope quickfix theme=dropdown<cr>", {}, {
	category = "Marks",
	desc = "Show quickmarks popup",
})

map("n", "<space>u", ":lua vim.lsp.buf.hover({focusable = false})<cr>", {}, {
	category = "IDE",
	desc = "Show LSP info popover",
})

map("n", "<space>i", ":lua vim.diagnostic.open_float({focusable = false})<cr>", {}, {
	category = "IDE",
	desc = "Show LSP diagnostic popover",
})

map("n", "<space>o", ":TroubleToggle document_diagnostics<cr>", {}, {
	category = "IDE",
	desc = "Toggle document diagnostics window",
})

map("n", "<space>p", ":lua require('utils/helpers').toggleQf()<cr>", {}, {
	category = "Window",
	desc = "Toggle quickfix list",
})

-->> Ctrl Maps <<--
-- Misc ctrl maps
map("n", "<c-p>", "<c-i>", {}, {
	category = "Jump",
	desc = "Jump forward",
})

-->> Window navigation <<--
-- Alt + j
map("n", "∆", "<c-w>j", {}, {
	category = "Window",
	desc = "Focus south window",
})

-- Alt + h
map("n", "˙", "<c-w>h", {}, {
	category = "Window",
	desc = "Focus west window",
})

-- Alt + k
map("n", "˚", "<c-w>k", {}, {
	category = "Window",
	desc = "Focus north window",
})

-- Alt + l
map("n", "¬", "<c-w>l", {}, {
	category = "Window",
	desc = "Focus east window",
})

map("n", "<s-tab>", "<c-w>h", {}, {
	category = "Window",
	desc = "Focus west window",
})

map("n", "<tab>", "<c-w>l", {}, {
	category = "Window",
	desc = "Focus east window",
})

-->> Other Misc. Keymaps <<--
map("n", "<bs>w", "ciw", {}, {
	category = "Editor",
	desc = "Change word",
})

map("n", "<bs>e", 'ci"', {}, {
	category = "Editor",
	desc = "Change inner double quote",
})

map("n", "<bs>", "ci", {}, {
	category = "Editor",
	desc = "Change inner [blank]",
})

map("n", "gd", ":Telescope lsp_definitions theme=dropdown<cr>", {}, {
	category = "IDE",
	desc = "Go to symbol definition",
})

map("n", "gpd", ":lua require('goto-preview').goto_preview_definition()<cr>", {}, {
	category = "IDE",
	desc = "Go to symbol definition",
})

map("n", "gr", ":Telescope lsp_references theme=dropdown<cr>", {}, {
	category = "IDE",
	desc = "List symbol references",
})

map("n", "gpr", ":lua require('goto-preview').goto_preview_references()<cr>", {}, {
	category = "IDE",
	desc = "List symbol references",
})

map("n", "gf", ":Telescope lsp_type_definitions theme=dropdown<cr>", {}, {
	category = "IDE",
	desc = "Goto type definition",
})

map("n", "gpf", ":lua require('goto-preview').goto_preview_type_definition()<cr>", {}, {
	category = "IDE",
	desc = "Goto type definition",
})

map("n", "do", ":lua vim.lsp.buf.code_action()<cr>", {}, {
	category = "IDE",
	desc = "List code actions",
})

map("t", "<esc>", "<cmd>FloatermHide!<cr>", {}, {
	category = "Application",
	desc = "Hide floating terminal",
})

map("n", "<cr>", ":Pounce<cr>", {}, {
	category = "Jump",
	desc = "Jump to search string",
})

-- Yank in visual mode doesn't jump the cursor to the beginning
map("v", "y", "ygv<esc>", {})

-->> Override w, e, b to use nvim-spider <<--
vim.keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })

-->> Setup tab functionality in autocomplete <<--
map("i", "<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true })
map("i", "<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })

------------------------------------------------------------------------------------------------------------

-- -->> Disabled <<--
-- LSP Diagnostics
-- map("n", "<c-d><c-]>", ":lua vim.diagnostic.goto_next()<cr>", {}, {
-- 	category = "IDE",
-- 	desc = "Diagnostics: Next diagnostic",
-- })
--
-- map("n", "<c-d><c-[>", ":lua vim.diagnostic.goto_prev()<cr>", {}, {
-- 	category = "IDE",
-- 	desc = "Diagnostics: Previous diagnostic",
-- })
--
-- -- Open Command Center in visual mode (Alt-P)
-- map("v", "π", ":<c-u>Telescope command_center theme=dropdown<cr>", {}, {
-- 	category = "Application",
-- 	desc = "Open command center while in visual mode",
-- })
--
-- map("n", "<space><space>", ":Telescope commander theme=dropdown<cr>", {}, {
-- 	category = "Application",
-- 	desc = "Open command center",
-- })
--
-- map("n", "<space>h", '<cmd>lua require("spectre").open()<cr>', {}, {
-- 	category = "Editor",
-- 	desc = "Find & replace in project",
-- })
--
-- map("n", "<space>g", ":AerialToggle<cr>", {}, {
-- 	category = "IDE",
-- 	desc = "Toggle symbols sidebar",
-- })
-- -- map("n", "<down>", ":lua require('neoscroll').scroll(vim.wo.scroll, true, 150)<cr>")
-- -- map("n", "<up>", ":lua require('neoscroll').scroll(-vim.wo.scroll, true, 150)<cr>")
-- -- map("n", "<s-j>", ":lua require('neoscroll').scroll(vim.wo.scroll, true, 150)<cr>")
-- -- map("n", "<s-k>", ":lua require('neoscroll').scroll(-vim.wo.scroll, true, 150)<cr>")
-- -->> Debugger <<--
-- map("n", "<space>1", ":lua require('dap').toggle_breakpoint()<cr>", {}, {
-- 	category = "Debugger",
-- 	desc = "Toggle breakpoint",
-- })
-- map("n", "<space>2", ":lua require('dap').continue()<cr>", {}, {
-- 	category = "Debugger",
-- 	desc = "Continue",
-- })
-- map("n", "<space>3", ":lua require('dap').repl.toggle()<cr>", {}, {
-- 	category = "Debugger",
-- 	desc = "Toggle REPL",
-- })
-- map("n", "<space>4", ":lua require('dap').step_over()<cr>", {}, {
-- 	category = "Debugger",
-- 	desc = "Step over",
-- })
-- map("n", "<space>5", ":lua require('dap').step_into()<cr>", {}, {
-- 	category = "Debugger",
-- 	desc = "Step into",
-- })
-- map("n", "<space>6", ":lua require('dap').step_out()<cr>", {}, {
-- 	category = "Debugger",
-- 	desc = "Step out",
-- })
-- map("n", "<space>7", ":lua require('dap').step_down()<cr>", {}, {
-- 	category = "Debugger",
-- 	desc = "Step down",
-- })
-- map("n", "<space>8", ":lua require('dap').step_up()<cr>", {}, {
-- 	category = "Debugger",
-- 	desc = "Step up",
-- })
-- map("n", "<space>9", ":lua require('dap').list_breakpoints()<cr>", {}, {
-- 	category = "Debugger",
-- 	desc = "List breakpoints",
-- })
-- map("n", "<space>0", ":lua require('dap').clear_breakpoints()<cr>", {}, {
-- 	category = "Debugger",
-- 	desc = "Clear breakpoints",
-- })
-- map("n", "<c-b>", ":HopChar2<cr>", {}, {
-- 	category = "Jump",
-- 	desc = "Jump to two character pattern",
-- })
--
-- map("n", "<c-n>", ":lua require('tsht').move()<cr>", {}, {
-- 	category = "Syntax Tree",
-- 	desc = "Jump to node",
-- })
--
-- map("n", "<c-m>", ":lua require('tsht').nodes()<cr>", {}, {
-- 	category = "Syntax Tree",
-- 	desc = "Select node with hints",
-- })
-- -- Git Conflicts
-- map("n", "<c-g><c-o>", ":GitConflictChooseOurs<cr>", {}, {
-- 	category = "Git",
-- 	desc = "Conflicts: Choose ours",
-- })
--
-- map("n", "<c-g><c-t>", ":GitConflictChooseTheirs<cr>", {}, {
-- 	category = "Git",
-- 	desc = "Conflicts: Choose theirs",
-- })
--
-- map("n", "<c-g><c-b>", ":GitConflictChooseBoth<cr>", {}, {
-- 	category = "Git",
-- 	desc = "Conflicts: Choose both",
-- })
--
-- map("n", "<c-g><c-]>", ":GitConflictNextConflict<cr>", {}, {
-- 	category = "Git",
-- 	desc = "Conflicts: Next conflict",
-- })
--
-- map("n", "<c-g><c-[>", ":GitConflictPrevConflict<cr>", {}, {
-- 	category = "Git",
-- 	desc = "Conflicts: Previous conflict",
-- })
--
-- map("n", "gd", ":Telescope lsp_definitions theme=dropdown<cr>", {}, {
-- 	category = "IDE",
-- 	desc = "Go to symbol definition",
-- })
