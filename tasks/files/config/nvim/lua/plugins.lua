local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- autocomplete
    'github/copilot.vim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    -- formatters
    'sbdchd/neoformat',
    'godlygeek/tabular',
    'psf/black',
    'ntpeters/vim-better-whitespace',

    -- git
    { 'lewis6991/gitsigns.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
    'tpope/vim-fugitive',
    'junegunn/gv.vim',
    {
      'pwntester/octo.nvim',
      dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'kyazdani42/nvim-web-devicons',
      }
    },

    -- integrations
    'romgrk/todoist.nvim',

    -- languages servers
    'ray-x/lsp_signature.nvim',

    -- languages support
    'vim-crystal/vim-crystal',

    -- linters
    'neomake/neomake',
    'diegorubin/mutmut.nvim',

    -- navigation
    'folke/todo-comments.nvim',

    -- rest
    'diepm/vim-rest-console',

    -- search
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' }
    },
    {
        'windwp/nvim-spectre',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' }
    },

    -- syntax
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'lukas-reineke/indent-blankline.nvim',
    'andymass/vim-matchup',
    'folke/twilight.nvim',

    -- themes
    'tomasr/molokai',
    'folke/tokyonight.nvim',
    'sainnhe/everforest',
    'mhartington/oceanic-next',

    -- tests
    'diegorubin/nose2coverage.nvim',

    -- terraform
    'hashivim/vim-terraform',

    -- android
    'ariedov/android-nvim',

    -- ui
    'kyazdani42/nvim-web-devicons',
    'kyazdani42/nvim-tree.lua',
    'jbyuki/venn.nvim',
    'akinsho/nvim-bufferline.lua',
    {
        'hoob3rt/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons' }
    },
    'voldikss/vim-floaterm',
    'tpope/vim-dadbod',
    {
        "ziontee113/color-picker.nvim",
        config = function()
            require("color-picker")
        end,
    }
})

