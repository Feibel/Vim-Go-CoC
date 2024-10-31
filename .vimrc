syntax on
set number
set expandtab
set shiftwidth=4
set tabstop=4
filetype plugin indent on
set laststatus=2

colorscheme industry

" Match terminal bg for text and nontext area
hi Normal ctermbg=NONE
hi EndOfBuffer ctermbg=NONE

call plug#begin()

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'

call plug#end()

" Load vim-go
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
let g:go_fmt_command = 'goimports'

" vim-go settings for linting and diagnostics
let g:go_metalinter_enabled = ['gopls', 'golint', 'vet', 'errcheck']
let g:go_auto_type_info = 1

" lightline colors
let g:lightline = {
      \ 'colorscheme': 'ayu_light',
      \ }

" set 
if !has('gui_running')
  set t_Co=256
endif

