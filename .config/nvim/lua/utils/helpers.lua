local vim = vim -- Just to get rid of the annoying warnings
local M = {}

function M.autocommand(trigger, opts)
	vim.api.nvim_create_autocmd(trigger, opts)
end

function M.getSessionName()
	return vim.fn.fnamemodify(vim.fn.getcwd(), ":t:s?\\.??")
end

function M.sessionExists()
	local name = M.getSessionName()
	local sessions = MiniSessions.detected
	for _, session in pairs(sessions) do
		if session.name == name then
			return true
		end
	end
end

function M.loadSession()
	local name = M.getSessionName()
	if M.sessionExists() then
		local timer = vim.loop.new_timer()
		-- This is hacky
		timer:start(
			0,
			0,
			vim.schedule_wrap(function()
				MiniSessions.read(name, { force = true })
				timer:close()
			end)
		)
	end
end

function M.toggleQf()
	local qf_exists = false
	for _, win in pairs(vim.fn.getwininfo()) do
		if win["quickfix"] == 1 then
			qf_exists = true
		end
	end
	if qf_exists == true then
		vim.cmd("cclose")
		return
	end
	if not vim.tbl_isempty(vim.fn.getqflist()) then
		vim.cmd("copen")
	end
end

return M
