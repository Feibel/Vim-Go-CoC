syntax on
colorscheme industry
set number
set expandtab
set shiftwidth=4
set tabstop=4
filetype plugin indent on

call plug#begin()

" List your plugins here
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Load vim-go
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
let g:go_fmt_command = 'goimports'


" Enable YCM for Go autocompletion
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" vim-go settings for linting and diagnostics
let g:go_metalinter_enabled = ['gopls', 'golint', 'vet', 'errcheck']
let g:go_auto_type_info = 1

