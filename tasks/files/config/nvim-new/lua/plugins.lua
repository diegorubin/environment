return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- autocomplete
    use {'hrsh7th/nvim-compe'}

    -- formatters
    use {'sbdchd/neoformat'}

    -- language servers
    use {'neovim/nvim-lspconfig'}

    -- linters
    use {'neomake/neomake'}

    -- search
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- syntax
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- themes
    use {'tomasr/molokai'}
    use {'folke/tokyonight.nvim'}

    -- ui
    use {'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua'}
    use {'jbyuki/venn.nvim'}
    use {'akinsho/nvim-bufferline.lua'}
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- wiki
    use {'vimwiki/vimwiki'}

end)
