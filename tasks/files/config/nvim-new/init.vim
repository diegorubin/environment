lua require('plugins')

lua require('languages-configs')

lua require('autocomplete')

" General Configuration {
  let mapleader=","
  filetype off
  set encoding=utf-8
  set history=1000
  set mouse=a
  set number 
  set relativenumber
  set autoread
  set undofile
  set undodir="~/.vim/undo/"
  set clipboard+=unnamedplus
" }

" nvim-tree Configuration { 
  nnoremap <leader>p :NvimTreeToggle<CR>
" }
