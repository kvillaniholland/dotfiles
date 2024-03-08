local vim = vim -- Just to get rid of the annoying warnings

local M = {}

function M.ToggleExplore()
	if vim.api.nvim_buf_get_option(0, "filetype") == "netrw" then
		vim.api.nvim_command("Rexplore")
	else
		vim.api.nvim_command("Explore")
	end
end

return M
