vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set({"n", "v"}, "<leader>y", '"+y')

vim.keymap.set("n", "<leader>x", function() 
    vim.cmd("silent !chmod +x %")
end)

vim.keymap.set("n", "<C-f>", function() 
    vim.cmd("silent !tmux neww tmux-sessionizer")
end)
