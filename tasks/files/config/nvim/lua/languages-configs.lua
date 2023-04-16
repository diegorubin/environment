-- bash configuration
require'lspconfig'.bashls.setup {}

-- python configuration
require'lspconfig'.pyright.setup {}

-- javascript configuration
require'lspconfig'.denols.setup {}

-- lua configuration
require'lspconfig'.lua_ls.setup {}

require"lsp_signature".setup()

-- ruby configuration
require'lspconfig'.solargraph.setup {
    cmd = {"solargraph", "stdio"},
    filetypes = {"ruby"},
    init_options = {formatting = true},
    settings = {solargraph = {diagnostics = true}}
}
