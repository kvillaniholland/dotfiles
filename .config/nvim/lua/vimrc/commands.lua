local vim = vim

-- Session select command
vim.cmd([[command! Ls :lua MiniSessions.select()]])
-- Session write command
vim.cmd([[command! Ms :lua MiniSessions.write(require('utils/helpers').getSessionName(), {force = true})]])
