return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- autocomplete
    use {'hrsh7th/nvim-compe'}
    use {'github/copilot.vim'}
    use {'aduros/ai.vim'}

    -- formatters
    use {'sbdchd/neoformat'}
    use {'godlygeek/tabular'}
    use {'psf/black'}
    use {'ntpeters/vim-better-whitespace'}

    -- git
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'tpope/vim-fugitive'}
    use {'junegunn/gv.vim'}
    use {
      'pwntester/octo.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'kyazdani42/nvim-web-devicons',
      }
    }

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
    use {'folke/todo-comments.nvim'}

    -- rest
    use {'diepm/vim-rest-console'}

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
    use {'lukas-reineke/indent-blankline.nvim'}
    use {'andymass/vim-matchup'}
    use {'folke/twilight.nvim'}

    -- themes
    use {'tomasr/molokai'}
    use {'folke/tokyonight.nvim'}
    use {'sainnhe/everforest'}
    use {'mhartington/oceanic-next'}

    -- tests
    use {'diegorubin/nose2coverage.nvim'}

    -- terraform
    use {'hashivim/vim-terraform'}

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
    use {'tpope/vim-dadbod'}
    use ({"ziontee113/color-picker.nvim",
        config = function()
            require("color-picker")
        end,
    })

    -- wiki
    use {'vimwiki/vimwiki'}

end)
