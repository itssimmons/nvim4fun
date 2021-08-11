" # Basic Config #

set nocompatible
set updatetime=600
set nobackup
set nowritebackup
set noswapfile

set showtabline=2
set noshowmode
"set autoindent
set encoding=UTF-8
set t_Co=256
set history=50

" Tabbing to 4
set list
set listchars=tab:\│\ 
set tabstop=4
set shiftwidth=4

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
set laststatus=2
set showcmd
set lbr
set tw=500

set ignorecase
set smartcase
set splitright splitbelow
set guicursor=

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
nnoremap <leader>+- :set cursorline!<CR>
nnoremap <leader>-+ :set relativenumber!<CR>
