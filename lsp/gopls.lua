return {
    cmd = { "gopls" },
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_markers = { "go.work", "go.mod", ".git" },
}
