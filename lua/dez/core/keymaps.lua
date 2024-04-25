vim.g.mapleader = " "

local keymap = vim.keymap

-- Mini files
keymap.set("n", "<leader>e", "<cmd>Oil<cr>")

-- harpoon
keymap.set("n", "hx", "<cmd>lua require('harpoon.mark').add_file()<cr>")
keymap.set("n", "hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
keymap.set("n", "hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>")
keymap.set("n", "hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>")
keymap.set("n", "ht", "<cmd>telescope harpoon marks<cr>")
keymap.set("n", "1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>")
keymap.set("n", "2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>")
keymap.set("n", "3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>")
keymap.set("n", "4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>")
keymap.set("n", "5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>")

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

-- lazy package manager
keymap.set("n", "<leader>l", "<cmd>lazy<cr>")

-- insert mode
-- save
keymap.set("i", "<c-s>", "<cmd>w<cr><esc>'", { noremap = true })

-- visual mode
-- select all
keymap.set("n", "<C-a>", "ggVG", { noremap = true })

-- go to the top
keymap.set("n", "<C-t>", "gg0", { noremap = true, silent = true })

-- go to the bottom
keymap.set("n", "<C-b>", "G$", { noremap = true, silent = true })

-- go to the end of the line
keymap.set("n", "ee", "$", { noremap = true, silent = true })

-- go to the start of the line
keymap.set("n", "qq", "0", { noremap = true, silent = true })

-- flash
keymap.set("n", "s", '<cmd>lua require("flash").jump()<cr>')
keymap.set("n", "<leader>lt", '<cmd>lua require("flash").treesitter()<cr>')
keymap.set("n", "<leader>lr", '<cmd>lua require("flash").remote()<cr>')
keymap.set("n", "<leader>lx", '<cmd>lua require("flash").treesitter_search()<cr>')

-- vim maximizer
keymap.set("n", "<leader>mx", "<cmd>MaximizerToggle<cr>")

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- navigating window
keymap.set("n", "1", "<C-W>l", { desc = "move to the window on the right" })
keymap.set("n", "2", "<C-W>h", { desc = "move to the window on the left" })
keymap.set("n", "3", "<C-W>k", { desc = "move to the window on the top" })
keymap.set("n", "4", "<C-W>j", { desc = "move to the window on the below" })

-- debugger
keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>")
keymap.set("n", "<leader>dr", "<cmd>DapContinue<cr>")
