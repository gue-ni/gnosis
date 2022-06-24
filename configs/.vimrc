set relativenumber
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
syntax on
set backspace=indent,eol,start      " make backspace work as intended
map <F5> :!./%<Enter>               " execute current script with F5
command R !./%                      " execute current script with :R
