local option = vim.opt

-- line numbers
option.number = true
option.relativenumber = true

-- tabbing
option.tabstop = 2
option.shiftwidth = 2
option.expandtab = true
option.autoindent = true

-- line wrapping
option.wrap = true

-- searching
option.smartcase = true
option.ignorecase = true

-- backspace
option.backspace = "indent,eol,start"

-- termguicolors
option.termguicolors = true

-- clipboard
option.clipboard:append("unnamedplus")

-- number width
option.numberwidth = 5
