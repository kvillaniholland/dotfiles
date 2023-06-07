local command_center = require("command_center")

command_center.add({
    {
        category = "Editor",
        desc = "Change CamelCase segment",
        cmd = "cav",
        keys = {
            { "n", "cav" },
        },
    },
    {
        category = "Application",
        desc = "Reload .vimrc",
        cmd = ":so $MYVIMRC<cr>",
    },
    {
        category = "Jump",
        desc = "Jump backward",
        cmd = "<c-o>",
        keys = {
            { "n", "<c-o>" },
        },
    },
    {
        category = "Application",
        desc = "PackerSync",
        cmd = ":PackerSync<cr>",
    },
    {
        category = "Editor",
        desc = "Increment / Toggle",
        cmd = "<c-a>",
        keys = {
            { "n", "<c-a>" },
        },
    },
    {
        category = "Editor",
        desc = "Decrement / Toggle",
        cmd = "<c-x>",
        keys = {
            { "n", "<c-x>" },
        },
    },
    {
        category = "Telescope",
        desc = "Treesitter",
        cmd = ":Telescope treesitter<cr>",
    },
    {
        category = "Git",
        desc = "Conflicts: List Git conflicts",
        cmd = ":GitConflictListQf<cr>",
    },
    {
        category = "Sessions",
        desc = "List sessions",
        cmd = ":Ls",
    },
    {
        category = "Sessions",
        desc = "Make session",
        cmd = ":Ms",
    },
    {
        category = "Editor",
        desc = "Generate screenshot",
        cmd = ":Silicon<cr>",
    },
    {
        category = "Application",
        desc = "Close all other buffers",
        cmd = ":%bd|e#|bd#<cr>",
    },
    {
        category = "Editor",
        desc = "Toggle folding",
        cmd = "zi",
        keys = {
            { "n", "zi" },
        },
    },
    {
        category = "Editor",
        desc = "Write without formatting",
        cmd = ":noa w",
    },
    {
        category = "Window",
        desc = "Equalize splits",
        cmd = "<c-w>=",
        keys = {
            { "n", "<c-w> =" },
        },
    },
    {
        category = "Editor",
        desc = "Autocomplete: Show autocomplete list",
        cmd = "<c-space>",
        keys = {
            { "i", "<c-space>" },
        },
    },
    {
        category = "Editor",
        desc = "Autocomplete: Close autocomplete list",
        cmd = "<c-e>",
        keys = {
            { "i", "<c-e>" },
        },
    },
    {
        category = "Editor",
        desc = "Autocomplete: Select autocomplete item",
        cmd = "",
        keys = {
            { "i", "<cr>" },
        },
    },
    {
        category = "Editor",
        desc = "Autocomplete: Next in autocomplete list",
        cmd = "",
        keys = {
            { "i", "<tab>" },
        },
    },
    {
        category = "Syntax Tree",
        desc = "Select node incremental",
        cmd = "",
        keys = {
            { "n", "\\" },
        },
    },
    {
        category = "Syntax Tree",
        desc = "Select node decremental",
        cmd = "",
        keys = {
            { "n", "|" },
        },
    },
    {
        category = "Editor",
        desc = "Autocomplete: Previous in autocomplete list",
        cmd = "",
        keys = {
            { "i", "<s-tab>" },
        },
    },
}, command_center.mode.ADD)
