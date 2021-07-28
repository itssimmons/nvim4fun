" # Basic Config #

syntax enable 
set encoding=utf-8
set lbr
set tw=500
set history=700

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
colorscheme spaceduck

set nocompatible
set foldcolumn=0

set noerrorbells
set novisualbell
set t_vb=
set tm=400

set background=dark
set t_Co=256

set showtabline=2
set noshowmode
set laststatus=2
set showcmd

set mouse=a
set clipboard=unnamed

set cursorline
set number
set relativenumber

set showmatch
set backspace=2
set guioptions-=T
set guioptions-=L

set list
set listchars=tab:\│\ 
set tabstop=4
set shiftwidth=4

set updatetime=300

set nobackup
set nowritebackup
set noswapfile
