return {
    -- "ellisonleao/gruvbox.nvim",
    -- priority = 1000,
    -- config = function()
    --     require("gruvbox").setup({
    --         transparent_mode = true
    --     })
    --     vim.o.background = "dark"
    --     vim.cmd("colorscheme gruvbox")
    -- end
    "shaunsingh/nord.nvim",
    config = function()
        vim.g.nord_disable_background = true
        vim.cmd("colorscheme nord")
    end
}
