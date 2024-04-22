return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")

		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			--	port = 8123,
			port = "${port}",
			executable = {
				command = vim.fn.exepath("js-debug-adapter"),
				--args = {
				--vim.fn.stdpath("data") .. "/mason/packages/js-debug/src/dapDebugServer.js",
				--8123,
				--},
				args = { "${port}" },
			},
		}

		dap.configurations.javascript = {
			{
				type = "pwa-node",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
				runtimeExecutable = "node",
			},
		}

		dap.configurations.typescript = {
			{
				type = "pwa-node",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
				runtimeExecutable = "node",
			},
		}
	end,
}
