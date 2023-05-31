local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", function()
    if not pcall(builtin.git_files) then
        builtin.find_files()
    end
end)
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
