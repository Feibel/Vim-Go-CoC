
syntax on
set number
set expandtab
set shiftwidth=4
set tabstop=4
filetype plugin indent on
set laststatus=2
set noshowmode
colorscheme industry

call plug#begin()

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'

call plug#end()

" Set lightline color scheme
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \}

" Load vim-go
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
let g:go_fmt_command = 'goimports'


" Enable YCM for Go autocompletion
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" vim-go settings for linting and diagnostics
let g:go_metalinter_enabled = ['gopls', 'golint', 'vet', 'errcheck']
let g:go_auto_type_info = 1


