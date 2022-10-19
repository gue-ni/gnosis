" relative line number
set relativenumber

" colorscheme
colorscheme slate

" syntax highlighting
syntax on

" tabs & spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" indent correctly 
set smartindent

set hidden

" do not wrap text
set nowrap

set showcmd
set showmode
set showmatch

" underline current line
" set cursorline

" search
set hlsearch
set incsearch

" scroll offset
set scrolloff=8

" make backspace work as intended
set backspace=indent,eol,start      

" insert closing brackets/quotes
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" fuzzy file search
set path+=**
set wildmenu




