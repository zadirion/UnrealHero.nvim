vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move text around in visual mode with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- makes it so that J keeps the cursor in the same place, when appending next
-- line to current line
vim.keymap.set("n", "J", "mzJ`z")


-- keep cursor in middle of the screen when C-d and C-u or n N navigating
vim.keymap.set("v", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "<C-u>", "<C-u>zz")
vim.keymap.set("v", "n", "nzzzv")
vim.keymap.set("v", "N", "Nzzzv")

-- makes it so you don't lose your clipboard when pasting over selected text
vim.keymap.set("x", "<leader>p", "\"_dP")


-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")

-- delete to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<RQ", "<nop>")


-- quickfix navigation list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


-- replace the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- open list of opened buffers
vim.keymap.set("n", "<C-t>", "<cmd>Telescope buffers<CR>")

-- exit insert mode
vim.keymap.set("i", "jk", "<esc>l")
-- undo
vim.keymap.set("i", "uu", "<cmd>undo<CR>")
-- delete previous word
vim.keymap.set("i", "ww", "<C-w>")
