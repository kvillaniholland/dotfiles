require("nvim-treesitter.configs").setup({
    ensure_installed = "all",
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "\\",
            node_incremental = "\\",
            node_decremental = "|",
        },
    },
})
