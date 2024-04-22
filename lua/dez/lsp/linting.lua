return {
	"mfussenegger/nvim-lint",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			astro = { "eslint_d" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
		}

		vim.api.nvim_command("autocmd! BufEnter,BufWritePost,InsertLeave <buffer> lua require('lint').try_lint()")

		lint.try_lint()
	end,
}
