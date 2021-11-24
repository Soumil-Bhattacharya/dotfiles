set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Necessary
set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
" Fuzzy File searching
" Search down into subfolders
" Provides tab completion for all file-related tasks
set path+=**

"Vim-plug Plugins
call plug#begin()
    " Tim Pope
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-surround'
    
    " General
    Plug 'godlygeek/tabular'
    Plug 'Raimondi/delimitMate'
    Plug 'sainnhe/gruvbox-material'
    
    " Status Line and colour schemes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'bling/vim-bufferline'
    
    
    " Language Server Protocol
    Plug 'neovim/nvim-lspconfig'

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


" Airline Settings
  let g:airline_theme='night_owl'
  let g:airline#extensions#wordcount#enabled =1
  let g:airline#extensions#wordcount#formatter ='default'
  let g:airline#extensions#wordcount#formatter ='readingtime'
  let g:airline#extensions#bufferline#enabled = 1
"" FZF integration
  let g:airline#extensions#fzf#enabled = 1
"" Language client
  let g:airline#extensions#languageclient#enabled = 1

" powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' :'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'

" Tabular
" let g:tabular_loaded = 1

" vim-markdown 
"" Fenced Codeblocks
let g:vim_markdown_fenced_languages = [ 'csharp=cs', 'c++=cpp', 'C=c', 'bash=sh', 'vim=vim', 'python=py']
"" Latex math
  let g:vim_markdown_math = 1
"" YAML Front Matter
  let g:vim_markdown_frontmatter = 1
"" Enable TOC window auto-fit ~
  let g:vim_markdown_toc_autofit = 1
"" Syntax Concealing
  set conceallevel=1
""" Disabling conceal for code fences 
    let g:vim_markdown_conceal_code_blocks = 0

" Make :grep use ripgrep
if executable('rg')
    set grepprg=rg\ --color=never\ --vimgrep
endif

" Mappings
"" Buffer Navigation
    nnoremap [b :w<ENTER>:bprevious<ENTER>
    nnoremap ]b :w<ENTER>:bnext<ENTER>
    nnoremap gb :w<ENTER>:buffer#<ENTER>
    nnoremap <leader>ww :split $NOTES/index.md<CR>cd $NOTES
"" Set spacebar as leader key
    let mapleader=" "
    nnoremap <SPACE> <Nop>

