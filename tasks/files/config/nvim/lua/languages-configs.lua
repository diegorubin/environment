-- bash configuration
vim.lsp.config['bashls'] = {}

-- python configuration
vim.lsp.config['pyright'] = {}

-- javascript configuration
vim.lsp.config['denols'] = {}

-- lua configuration
vim.lsp.config['lua_ls'] = {}

-- lsp_signature setup (mantém como estava)
require"lsp_signature".setup()

-- ruby configuration
vim.lsp.config['solargraph'] = {
    cmd = {"solargraph", "stdio"},
    filetypes = {"ruby"},
    init_options = {formatting = true},
    settings = {
        solargraph = {
            diagnostics = true
        }
    }
}
