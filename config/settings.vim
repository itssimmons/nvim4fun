" { Basic Config

"syntax on
"set hlsearch
set t_Co=256
if exists('+termguicolors')
	 let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	 let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	 set termguicolors
endif

set nocompatible
set updatetime=600
set nobackup
set nowritebackup
set noswapfile

set showtabline=2
set noshowmode
set autoindent
set encoding=UTF-8
set history=50

" Tabbing to 4
"set list
"set listchars=tab:\│\
set tabstop=4
set shiftwidth=4
set sw=4

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
set showcmd
set tw=500
set ignorecase
set smartcase

" Reducing lag
set regexpengine=1
set lazyredraw
set ttyfast
set foldmethod=manual

" }
