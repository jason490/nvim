local harpoon = require('harpoon')
harpoon:setup({})


vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, {desc = "Add file to harpoon"})

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, {desc = "[C-h]Jump to file 1"})
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, {desc = "[C-h]Jump to file 2"})
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, {desc = "[C-h]Jump to file 3"})
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, {desc = "[C-h]Jump to file 4"})

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end,{desc = "[C-S-P] Prev"})
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, {desc = "[C-S-N] next"})
