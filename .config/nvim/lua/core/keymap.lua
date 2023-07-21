local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "L", "$")
keymap.set("n", "H", "^")

-- clear search highlights
keymap.set("n", "<leader><ENTER>", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- window split management
keymap.set("n", "<C-k>", "<C-w><Up>")
keymap.set("n", "<C-j>", "<C-w><Down>")
keymap.set("n", "<C-l>", "<C-w><Right>")
keymap.set("n", "<C-h>", "<C-w><Left>")

--tabs managenet
keymap.set("n", "<Leader>1", "1gt")
keymap.set("n", "<Leader>2", "2gt")
keymap.set("n", "<Leader>3", "3gt")
keymap.set("n", "<Leader>4", "4gt")
keymap.set("n", "<Leader>5", "5gt")
keymap.set("n", "<Leader>6", "6gt")
keymap.set("n", "<Leader>7", "7gt")
keymap.set("n", "<Leader>8", "8gt")
keymap.set("n", "<Leader>9", "9gt")
keymap.set("n", "th", ":tabfirst<CR>")
keymap.set("n", "tk", ":tabnext<CR>")
keymap.set("n", "tj", ":tabprev<CR>")
keymap.set("n", "tl", ":tablast<CR>")
keymap.set("n", "tm", ":tabm<Space>")
keymap.set("n", "td", ":tabclose<CR>")
keymap.set("n", "tn", ":tabnew<CR>")
keymap.set("n", "te", ":tabfind<Space>")

--save and quit
keymap.set("n", "<leader>w", ":w!<cr>")
keymap.set("n", "<leader>q", ":q<cr>")

--size window
keymap.set("n", "<C-Left>", "<C-W><")
keymap.set("n", "<C-Right>", "<C-W>>")
keymap.set("n", "<C-Down>", "<C-W>-")
keymap.set("n", "<C-Up>", "<C-W>+")

--qlist 
keymap.set("n", "<leader>l", ":cn<CR>")
keymap.set("n", "<leader>h", ":cp<CR>")


---------------------
-- Plugins Keymaps
---------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

--nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<C-f>", ":NvimTreeFindFile<CR>")

vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)
vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)
--
-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fg", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- null_ls
-- see in null_ls.lua

-- flow

vim.api.nvim_set_keymap('v', '<leader>rf', ':FlowRunFile<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>rr', ':FlowRunLastCmd<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>rp', ':FlowLastOutput<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>rl', ':FlowLauncher<CR>', {})

-- set custom commands
-- vim.api.nvim_set_keymap('n', '<leader>R1', ':FlowSetCustomCmd 1<CR>', {})
-- vim.api.nvim_set_keymap('n', '<leader>R2', ':FlowSetCustomCmd 2<CR>', {})
-- vim.api.nvim_set_keymap('n', '<leader>R3', ':FlowSetCustomCmd 3<CR>', {})

-- run custom commands
-- vim.api.nvim_set_keymap('n', '<leader>r1', ':FlowRunCustomCmd 1<CR>', {})
-- vim.api.nvim_set_keymap('n', '<leader>r2', ':FlowRunCustomCmd 2<CR>', {})
-- vim.api.nvim_set_keymap('n', '<leader>r3', ':FlowRunCustomCmd 3<CR>', {})
-- vim.api.nvim_set_keymap('n', '<leader>rp', ':FlowRunLastCmd<CR>', {})
-- vim.api.nvim_set_keymap('n', '<leader>rp', ':FlowLastOutput<CR>', {})



