"# Basic Config #

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
colorscheme codedark

set nocompatible
set updatetime=600
set nobackup
set nowritebackup
set noswapfile

set showtabline=2
set noshowmode
set autoindent
set encoding=UTF-8
set t_Co=256
set history=50

" Tabbing to 3
set tabstop=3
set shiftwidth=3

" Basics
set nowrap
set cursorline
set number
set mouse=a
set clipboard=unnamed

" No errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set showcmd
set tw=500

set ignorecase
set smartcase

" Reducing lag
set regexpengine=1
set lazyredraw
set norelativenumber
set nocursorline
set ttyfast
set foldmethod=manual "or set syntax, expr
set synmaxcol=200
set noshowmatch
syntime on
syntax on
set synmaxcol=128
syntax sync minlines=256
