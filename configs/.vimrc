
" relative line number
set relativenumber

" syntax highlighting
syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch

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

