set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath


"Vim-plug
call plug#begin()
" Tim Pope
Plug 'tpope/vim-sensible'

" Status Line and colour schemes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sainnhe/gruvbox-material'

" File type specific
"   Markdown
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

"   C/C++
Plug 'vim-jp/vim-cpp', {'for':'c/cpp'} 

call plug#end()

" Colour Scheme
if has('termguicolors')
  set termguicolors
endif
set background=dark
colorscheme gruvbox-material

" Set spacebar as leader key
" let mapleader=" "

" Airline Settings
let g:airline_theme='random'
let g:airline#extensions#wordcount#enabled =1
let g:airline#extensions#wordcount#formatter ='default'
let g:airline#extensions#wordcount#formatter ='readingtime'

set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

