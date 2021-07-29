" # Basic Config #

if exists('+termguicolors')    
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors          
endif                         

colorscheme spaceduck
set encoding=utf-8
set lbr
set tw=500
set history=500

set nocompatible
set foldcolumn=0

set noerrorbells
set novisualbell
set t_vb=
set tm=400

set t_Co=256

set showtabline=2
set noshowmode
set laststatus=2
set showcmd

set mouse=a
set clipboard=unnamed

"set cursorline
set number
"set relativenumber
"set showmatch

set list
set listchars=tab:\│\ 
set tabstop=4
set shiftwidth=4

set updatetime=600
set nobackup
set nowritebackup
set noswapfile

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
nnoremap <silent> <leader>cl :set cursorline!<CR>
nnoremap <silent> <leader>nr :set relativenumber!<CR>
