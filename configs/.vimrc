" relative line number and absolute number at cursor
set number relativenumber

set mouse=a

set nofoldenable
set foldmethod=syntax

" tabs & spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
set cursorline

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
" inoremap [ []<Esc>ha
" inoremap " ""<Esc>ha
" inoremap ' ''<Esc>ha
" inoremap ` ``<Esc>ha

" fuzzy file search
set path+=**
set wildmenu

" colorscheme
"colorscheme slate

" to install a theme, put the *.vim file in ~/.vim/colors
syntax on
set background=light
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized




