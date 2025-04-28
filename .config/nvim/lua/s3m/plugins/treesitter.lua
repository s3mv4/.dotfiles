return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-context"
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vimdoc", "javascript", "markdown", "python" },
            auto_install = true,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            }
        })
    end
}
