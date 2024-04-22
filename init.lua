require("dez.core.options")
require("dez.core.keymaps")
require("dez.core.colorscheme")
require("dez.lazy")
require("nvim-treesitter.install").compilers = { "clang" }

local normal_hl = vim.api.nvim_get_hl_by_name("Normal", true)

local green = "#8ec07c"
local blue = "#458588"
local yellow = "#d79921"
local red = "#cc241d"
local black = "#3c3836"

vim.api.nvim_set_hl(0, "TelescopePromptBorder", {
	fg = black,
	bg = black,
})

vim.api.nvim_set_hl(0, "TelescopePromptNormal", {
	fg = normal_hl.foreground,
	bg = black,
})

vim.api.nvim_set_hl(0, "TelescopePromptTitle", {
	fg = black,
	bg = green,
})

vim.api.nvim_set_hl(0, "TelescopePromptCounter", {
	fg = green,
	bg = black,
})

vim.api.nvim_set_hl(0, "TelescopePromptPrefix", {
	fg = green,
	bg = black,
})

vim.api.nvim_set_hl(0, "TelescopeResultsBorder", {
	fg = black,
	bg = black,
})

vim.api.nvim_set_hl(0, "TelescopeResultsNormal", {
	fg = normal_hl.foreground,
	bg = black,
})

vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {
	fg = black,
	bg = blue,
})

vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", {
	fg = blue,
	bg = vim.api.nvim_get_hl_by_name("TelescopeSelection", true).background,
})

vim.api.nvim_set_hl(0, "TelescopePreviewBorder", {
	fg = black,
	bg = black,
})

vim.api.nvim_set_hl(0, "TelescopePreviewNormal", {
	fg = black,
	bg = black,
})

vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {
	fg = black,
	bg = yellow,
})
