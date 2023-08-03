local vim = vim
local nvim_lsp = require("lspconfig")

 vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    severity_sort = true,
    float = {
        border = "rounded",
        source = "always",
        max_width = 240,
        header = "",
        prefix = "",
    },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = function(client, bufnr)
    -- We want to use Null LS for formatting
    client.server_capabilities.documentFormattingProvider = false
end

nvim_lsp.eslint.setup({
    root_dir = nvim_lsp.util.find_node_modules_ancestor,
    capabilities = capabilities,
    on_attach = on_attach,
})

nvim_lsp.jsonls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

nvim_lsp.tsserver.setup({
    capabilities = capabilities,
    init_options = {
        preferences = {
            importModuleSpecifierPreference = "relative",
        },
    },
    on_attach = on_attach,
})

nvim_lsp.lua_ls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})
