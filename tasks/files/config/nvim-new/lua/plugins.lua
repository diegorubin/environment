return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- linters
  use { 'neomake/neomake' }  

  -- syntax
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- ui
  use { 'kyazdani42/nvim-web-devicons' }  
  use { 'kyazdani42/nvim-tree.lua' }  

end)
