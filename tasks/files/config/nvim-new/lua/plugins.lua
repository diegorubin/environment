return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- autocomplete
  use { 'hrsh7th/nvim-compe' }

  -- formatters
  use { 'sbdchd/neoformat' }  

  -- language servers
  use { 'neovim/nvim-lspconfig' }  

  -- linters
  use { 'neomake/neomake' }  

  -- syntax
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- ui
  use { 'kyazdani42/nvim-web-devicons' }  
  use { 'kyazdani42/nvim-tree.lua' }  

end)
