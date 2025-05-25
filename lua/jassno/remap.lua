vim.g.mapleader = " "
vim.g.maplocalleader = ' '

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves highlighted region down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves highlighted region down" })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "scrolls down half a page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "scrolls up half a page" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "yank to system clipboard" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "paste without yanking" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete without yanking" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "substitute all words under cursor" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "jump to next quickfix" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "jump to previous quickfix" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "jump to next location list" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "jump to previous location list" })

vim.keymap.set("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float(0, {scope=\"line\"})<CR>", { desc = "diagnostic" })
