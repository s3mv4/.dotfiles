return {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local is_inside_work_tree = {}

        project_files = function()
            local opts = {}

            local cwd = vim.fn.getcwd()
            if is_inside_work_tree[cwd] == nil then
                vim.fn.system("git rev-parse --is-inside-work-tree")
                is_inside_work_tree[cwd] = vim.v.shell_error == 0
            end

            if is_inside_work_tree[cwd] then
                require("telescope.builtin").git_files(opts)
            else
                require("telescope.builtin").find_files(opts)
            end
        end

        vim.keymap.set("n", "<leader>f", project_files)
    end
}
