" put this in '.config/nvim/init.vim'

" line numbers
:set number
:set relativenumber

" indentation
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4

" allow mouse usage
:set mouse=a

" set colorscheme
" colorschemes are insalled to colors
:syntax on
:set background=light
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

