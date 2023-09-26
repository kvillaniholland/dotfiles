local command_center = require("commander")

require("telescope").setup({
	defaults = {
		generic_sorter = require("mini.fuzzy").get_telescope_sorter,
		file_ignore_patterns = { "node_modules", "bundle", "dll" },
	},
	pickers = {
		lsp_references = { initial_mode = "normal", theme = "dropdown" },
		find_files = { initial_mode = "insert", theme = "dropdown" },
		live_grep = { initial_mode = "insert", theme = "dropdown" },
		lsp_definitions = { initial_mode = "normal", theme = "dropdown" },
		command_center = { initial_mode = "normal", theme = "dropdown" },
		lsp_document_symbols = { initial_mode = "normal", theme = "dropdown" },
		neoclip = { theme = "dropdown" },
		buffers = { initial_mode = "normal", theme = "dropdown" },
		quickfix = { initial_mode = "normal", theme = "dropdown" },
	},
	extensions = {
		command_center = {
			components = {
				command_center.component.CATEGORY,
				command_center.component.DESC,
				command_center.component.KEYS,
			},
			sort_by = {
				command_center.component.CATEGORY,
				command_center.component.DESC,
			},
			separator = "           ",
			auto_replace_desc_with_cmd = false,
		},
	},
})
require("telescope").load_extension("neoclip")
require("telescope").load_extension("commander")
