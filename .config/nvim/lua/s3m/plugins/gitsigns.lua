return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            sign_priority = 20
        })
    end
}
