syntax on
set number
set expandtab
set shiftwidth=4
set tabstop=4
filetype plugin indent on
set laststatus=2

" Settings recommended by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

set signcolumn=yes

colorscheme industry
hi LineNr ctermfg=7 
hi CursorLineNr ctermfg=227 cterm=bold
hi Type cterm=italic ctermfg=228
hi Keyword cterm=bold ctermfg=38
hi Constant ctermfg=79
hi Repeat cterm=bold ctermfg=175
hi Conditional cterm=bold ctermfg=175

" Match terminal bg for text and nontext area
hi Normal ctermbg=NONE ctermfg=255
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
let g:go_def_mapping_enabled = 0

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

" CoC key mappings - from CoC GitHub
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ‘:verbose imap <tab>’ to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
 \ pumvisible() ? "\<C-n>" :
 \ <SID>check_back_space() ? "\<TAB>" :
 \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
 let col = col(‘.’) — 1
 return !col || getline(‘.’)[col — 1] =~# ‘\s’
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
 inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
 inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
