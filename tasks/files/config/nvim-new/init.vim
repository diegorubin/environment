lua require('plugins')

lua require('autocomplete')
lua require('bufferline-config')
lua require('gitsigns-config')
lua require('languages-configs')
lua require('lualine-configs')
lua require('mutmut-configs')
lua require('nose2coverage-configs')
lua require('theme')
lua require('todo-comments-configs')
lua require('twilight-configs')
lua require('ui-configs')

" Private settings
lua require('private')

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
  set tabstop=2 " Tabs are 2 spaces
  set backspace=2 " Backspace deletes 2 spaces
  set shiftwidth=2 " Even if there are tabs, preview as 2 spaces
  set textwidth=80  " Switch line at 80 characters
  set showmatch     " Show matching of: () [] {}
  set scrolloff=5   " Keep some distance to the bottom"
  set ignorecase    " Required for smartcase to work
  set smartcase     " Case sensitive when uppercase is present
  set incsearch     " Search as you type
  set smartindent   " Be smart about indentation
  set expandtab     " Tabs are spaces
  set smarttab
  set cursorline
  set cursorcolumn
  set tw=0
  set nobackup
  set noswapfile

  set wildignore+=.git/**
  set clipboard+=unnamedplus
" }


" vim-better-whitespace Configuration {
  let g:strip_whitespace_confirm=0
  let g:better_whitespace_enabled=1
  let g:strip_whitespace_on_save=1
  let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help']
" }

" neoformat Configuration {
  augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
  augroup END
" }

" neomake Configuration {
  call neomake#configure#automake('nw', 750)
" }

" {
  nnoremap <leader>S :lua require('spectre').open()<CR>
" }

" nvim-tree Configuration {
  nnoremap <leader>p :NvimTreeToggle<CR>
  nnoremap <leader>r :NvimTreeRefresh<CR>
  lua require('tree')
" }

" nvim-telescope Configuration {
  nnoremap <leader>ff <cmd>Telescope find_files<cr>
  nnoremap <leader>fg <cmd>Telescope live_grep<cr>
  nnoremap <leader>fb <cmd>Telescope buffers<cr>
  nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" }

" Syntax {
  augroup filetypedetect
      autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy
  augroup END
" }

" Tags {
  let g:gutentags_cache_dir='~/.tags'
  let g:gutentags_ctags_exclude=['node_modules', 'venv']
" }

" theme Configuration {
  if has('termguicolors')
    set termguicolors
  endif

  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
  colorscheme OceanicNext
" }

" ui Configuration {
  command! Ranger FloatermNew ranger
  command! Screenshots FloatermNew ranger --cmd="cd $HOME/Pictures/screenshots"
" }

" Window configurations {
  noremap <down> :resize +2<Cr>
  noremap <up> :resize -2<cr>
  noremap <right> :vertical resize +2<CR>
  noremap <left> :vertical resize -2<CR>
" }

" Wiki {
  let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
" }

" Load private settings {
  source ~/.config/nvim/private.vim
" }
