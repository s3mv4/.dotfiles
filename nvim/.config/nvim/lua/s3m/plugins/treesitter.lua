return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-context"
    },
    config = function()
        require("nvim-treesitter").setup()
        require("nvim-treesitter").install({
            "lua",
            "vim",
            "vimdoc",
            "query",

            "html",
            "css",
            "javascript",
            "typescript",

            "json",
            "jsonc",
            "yaml",
            "toml",

            "bash",

            "python",
            "c",
            "cpp",
            "rust",
            "go",

            "dockerfile",

            "markdown",
            "markdown_inline",

            "latex"
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = { '<filetype>' },
            callback = function()
                vim.treesitter.start()
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end
}
