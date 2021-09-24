" { Basic Config

"syntax on
set t_Co=256
if exists('+termguicolors')
	 let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	 let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	 set termguicolors
endif

set nocompatible
filetype plugin indent on
filetype on

set updatetime=600
set nobackup
set nowritebackup
set noswapfile

set showtabline=2
set noshowmode
set autoindent
set encoding=UTF-8
set history=50

" Tabbing to
set list listchars=tab:│\ ,trail:·,precedes:←,extends:→
set tabstop=3
set shiftwidth=3
"set sw=3

" Basics
set nowrap
set cursorline
set number
set mouse=a
set clipboard=unnamed
set cursorline

" No errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set tw=500
set showcmd
set ignorecase
set smartcase

" Reducing lag
set lazyredraw
set ttyfast
set foldmethod=manual
set re=2

" }
