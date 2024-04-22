return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			local gruvbox = require("gruvbox")

			gruvbox.setup({
				overrides = {
					SignColumn = { bg = "#282828" },
				},
			})

			vim.o.background = "dark"
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
}
