return {
    cmd = { "pyright-langserver", "--stdio" },
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", "pyrightconfig.json" }
}
