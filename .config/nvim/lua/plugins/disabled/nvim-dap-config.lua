return {
	"mfussenegger/nvim-dap",
	config = function()
		dap = require("dap")
		dap.adapters.chrome = {
			type = "executable",
			command = "node",
			args = { os.getenv("HOME") .. "/code/vscode-chrome-debug/out/src/chromeDebug.js" }, -- TODO adjust
		}

		dap.configurations.typescript = { -- change to typescript if needed
			{
				type = "chrome",
				request = "attach",
				name = "Chrome Debugger",
				port = 9222,
				sourceMaps = true,
				outDir = "${workspaceRoot}/.temp/types",
				cwd = "${workspaceRoot}",
				program = "${workspaceRoot}/build/extension/unified-panel/com.adobe.unifiedpanel/js/app.js",
				protocol = "inspector",
				webRoot = "${workspaceFolder}",
			},
		}

		dap.configurations.typescriptreact = { -- change to typescript if needed
			{
				type = "chrome",
				request = "attach",
				name = "Chrome Debugger",
				port = 9222,
				sourceMaps = true,
				outDir = "${workspaceRoot}/.temp/types",
				cwd = "${workspaceRoot}",
				program = "${workspaceRoot}/build/extension/unified-panel/com.adobe.unifiedpanel/js/app.js",
				protocol = "inspector",
				webRoot = "${workspaceFolder}",
			},
		}
	end,
}
