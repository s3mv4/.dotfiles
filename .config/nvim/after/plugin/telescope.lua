local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", function()
    if not pcall(builtin.git_files) then
        builtin.find_files()
    end
end)
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
