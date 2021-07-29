return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- autocomplete
    use {'hrsh7th/nvim-compe'}

    -- formatters
    use {'sbdchd/neoformat'}
    use {'godlygeek/tabular'}
    use {'psf/black'}

    -- git
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'tpope/vim-fugitive'}
    use {'junegunn/gv.vim'}

    -- languages servers
    use {'neovim/nvim-lspconfig'}
    use {'ray-x/lsp_signature.nvim'}

    -- languages support
    use {'vim-crystal/vim-crystal'}

    -- linters
    use {'neomake/neomake'}
    use {'diegorubin/mutmut.nvim'}

    -- navigation
    use {'ludovicchabant/vim-gutentags'}

    -- search
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use {
        'windwp/nvim-spectre',
        requires = {{'nvim-lua/plenary.nvim'}, 'nvim-lua/popup.nvim'}
    }

    -- syntax
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- themes
    use {'tomasr/molokai'}
    use {'folke/tokyonight.nvim'}
    use {'sainnhe/everforest'}

    -- ui
    use {'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua'}
    use {'jbyuki/venn.nvim'}
    use {'akinsho/nvim-bufferline.lua'}
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {'voldikss/vim-floaterm'}

    -- wiki
    use {'vimwiki/vimwiki'}

end)
