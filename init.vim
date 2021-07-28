" Average vim user be like:
"
" ⠄⠄⠄⠄⠄⠄⠄⠄⢀⢀⣴⣿⣿⣷⣶⣤⣄⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
" ⠄⠄⠄⠄⠄⢀⣤⡶⠿⢘⣥⠢⠐⠗⣹⣿⣿⣿⣤⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
" ⠄⠄⠄⠄⠄⠘⣅⣂⠹⣪⣭⣥⣶⣿⡿⠿⢭⡻⣿⣷⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
" ⠄⠄⢀⣤⣤⡀⠄⣭⣧⣾⡿⠿⡋⢅⡪⠅⣢⣿⡿⠟⢁⣶⣶⣶⣤⣠⣄⡀⠄⠄
" ⢠⣴⣿⣿⣟⣤⣤⡉⠭⣑⡨⢔⣊⣵⣶⡿⠛⢉⣴⡾⠿⠿⣿⣿⣿⣎⠻⣿⣦⡀
" ⣼⣧⢻⣿⣿⣿⡈⣿⢰⢰⠌⣻⣭⣭⣶⡷⣠⡤⠶⠾⠛⢓⣒⣮⣝⡻⠸⣼⣿⣿
" ⣿⣝⢶⣿⣿⣿⡃⠄⢏⣸⡄⢻⡿⣿⣟⣵⠶⢛⣛⣛⣛⡒⠦⣝⠿⣿⣦⡙⣿⡿
" ⠻⣿⣿⣿⣿⣿⣷⣦⣜⡿⣿⣄⢓⡘⠃⣴⣾⣿⣿⣿⣿⢹⣯⣶⣅⢺⣿⡇⠻⠁
" ⠄⠈⠛⠻⣿⣿⣿⣿⣿⣿⣿⡾⣿⣷⣾⣝⣻⢿⣿⣿⣿⠸⣛⣿⡟⣢⢻⣿⠄⠄
" ⠄⠄⠄⠄⠘⢿⣿⣿⣿⣿⣿⣷⣦⣭⣿⣿⣿⣦⣵⡾⢃⣾⣿⣿⢱⡿⣸⠋⠄⠄
" ⠄⠄⠄⠄⠄⠄⢻⣿⢿⣿⣿⠻⣿⣿⡿⠿⣟⣛⣉⣰⣿⣿⣿⠇⠛⠃⠄⠄⠄⠄
" ⠄⠄⠄⠄⠄⠄⠄⠉⠲⣝⣫⣓⡙⣿⣜⣛⣛⣛⣻⡯⠹⠛⠁⠄⠄⠄⠄⠄⠄⠄
" ⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠙⠛⢻⡈⢿⡿⠟⠛⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
"
" ---> Plugins <---
call plug#begin('~\.nvim\plugged')

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }                   " Theme
Plug 'itchyny/lightline.vim'                                            " Simple status line
Plug 'maximbaz/lightline-ale'                                           " ALE + lightline

Plug 'tpope/vim-surround'                                               " Surround anything
let g:polyglot_disabled = ['autoindent', 'sensible']
Plug 'sheerun/vim-polyglot'                                             " Better highlight

Plug 'scrooloose/nerdtree'                                              " Theme
Plug 'ryanoasis/vim-devicons'                                           " Icons 

Plug 'neoclide/coc.nvim', { 'branch': 'release' }                       " Autocompletation, word browser, etc...
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                     " Fuzzy finder files

Plug 'christoomey/vim-tmux-navigator'                                   " Navigate between buffers

Plug 'dense-analysis/ale'                                               " Syntax error
Plug 'scrooloose/nerdcommenter'                                         " Comments lines/blocks easily
Plug 'matze/vim-move'                                                   " Move/indent code lines/blocks

Plug 'airblade/vim-gitgutter'                                           " Git status to code line
Plug 'itchyny/vim-gitbranch'                                            " Show branch on ur status 'lightline'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                          " Git highlight for nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'                                      " Symbols git for nerdgtree

" Debugger
Plug 'szw/vim-maximizer'                                                " Maximize the cursor windows
Plug 'puremourning/vimspector'                                          " Debugger for many languages

call plug#end()
" ---> Plugins <---

" ---> Sources <---
" ..config/
source $HOME\AppData\Local\nvim\config\coc-marketplace.vim
source $HOME\AppData\Local\nvim\config\plugins-config.vim
source $HOME\AppData\Local\nvim\config\settings.vim
" ../scheme
source $HOME\AppData\Local\nvim\scheme\statusline.vim
source $HOME\AppData\Local\nvim\scheme\tabline.vim
" ../keymaps
source $HOME\AppData\Local\nvim\keymaps\shortcuts.vim
" ../
source $HOME\AppData\Local\nvim\mini.vim
" ---> Sources <---
