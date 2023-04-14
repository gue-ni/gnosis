" put this in '.config/nvim/init.vim'

" line numbers
:set number
:set relativenumber

" indentation
:set autoindent
:set tabstop        =4
:set shiftwidth     =4
:set softtabstop    =4
" indent with spaces instead of tabs
" disable with :set noexpandtab
:set expandtab

" allow mouse usage
:set mouse=a

" set colorscheme
" colorschemes are insalled to colors
:syntax on
:set background=dark
:set t_Co=256
:let g:solarized_termcolors=256
:colorscheme solarized

:set path+=**
:set wildmenu

:set cursorline

:set showcmd
:set showmode
:set showmatch

:set hlsearch
:set incsearch

:inoremap ( ()<Esc>ha
:inoremap { {}<Esc>ha

" show whitespace
set list
set lcs+=space:·

