set guifont=Fantasque\ Sans\ Mono\ 12

set t_Co=256

set background=light
colorscheme PaperColor

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }

if exists('g:GtkGuiLoaded')
else
  hi Normal guibg=NONE ctermbg=NONE
end

let g:airline_theme='papercolor'
let g:lightline = { 'colorscheme': 'PaperColor' }
