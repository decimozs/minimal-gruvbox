return {
	"hrsh7th/nvim-cmp",
	event = "insertenter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		"l3mon4d3/luasnip", -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		"onsails/lspkind.nvim", -- vs-code like pictograms
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			window = {
				performance = {
					debounce = 500,
					throttle = 550,
					fetching_timeout = 80,
				},
				completion = {
					border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
					keyword_length = 3,
					winhighlight = "Normal:CmpDocNormal,FloatBorder:CmpDocBorder,FloatTitle:CmpDocBorderTitle",
				},
				documentation = {
					border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
					winhighlight = "Normal:CmpDocNormal,FloatBorder:CmpDocBorder,FloatTitle:CmpDocBorderTitle,CursorLine:CmpDocSelect",
				},
			},
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<c-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				["<c-j>"] = cmp.mapping.select_next_item(), -- next suggestion
				["<c-b>"] = cmp.mapping.scroll_docs(-4),
				["<c-f>"] = cmp.mapping.scroll_docs(4),
				["<c-space>"] = cmp.mapping.complete(), -- show completion suggestions
				["<c-e>"] = cmp.mapping.abort(), -- close completion window
				["<enter>"] = cmp.mapping.confirm({ select = true }),
			}),

			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- snippets
				--	{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
			}),
			-- configure lspkind for vs-code like pictograms in completion menu
			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},
			experimental = {
				ghost_text = true,
			},
		})
	end,
}
