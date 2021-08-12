-- bash configuration
require'lspconfig'.bashls.setup {}

-- python configuration
require'lspconfig'.pyright.setup {}

-- javascript configuration
require'lspconfig'.denols.setup {}

-- lua configuration
require'lspconfig'.sumneko_lua.setup {
    cmd = {
        "/opt/lua-language-server/bin/Linux/lua-language-server", "-E",
        "/opt/lua-language-server/main.lua"
    },
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = runtime_path
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true)
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {enable = false}
        }
    }
}

require"lsp_signature".setup()

-- ruby configuration
require'lspconfig'.solargraph.setup {
    cmd = {"solargraph", "stdio"},
    filetypes = {"ruby"},
    init_options = {formatting = true},
    settings = {solargraph = {diagnostics = true}}
}
