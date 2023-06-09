local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier.with({
            extra_args = {
                "--print-width",
                120,
                "--tab-width",
                4,
            },
        }),

        null_ls.builtins.diagnostics.jsonlint, -- JSON Lint
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.formatting.black,

        null_ls.builtins.formatting.stylua,    -- Lua formatting
        null_ls.builtins.diagnostics.luacheck, -- Lua linting
    },
})
