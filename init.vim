" { Plugins
call plug#begin('~\.vim\plugged')
" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"VS Code
Plug 'szw/vim-maximizer'
Plug 'christoomey/vim-tmux-navigator'

Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'hoob3rt/lualine.nvim'

Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'scrooloose/nerdcommenter'
Plug 'chrisbra/Colorizer'
Plug 'terryma/vim-multiple-cursors'

Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'branch': 'release/0.x'
\ }
" Git
Plug 'lewis6991/gitsigns.nvim'
" Highlight
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/playground'
" Snippets
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
" Debugger
Plug 'puremourning/vimspector'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
" }

" VSCode colorscheme
let g:vscode_style = "dark"
colorscheme vscode

" Sublime Text colorscheme
"syntax on
"colorscheme sublimemonokai
"let g:sublimemonokai_term_italic = 1

" { Sources

" .\colors\
"source $LOCALAPPDATA\nvim\colors\ui\statusline.vim
"source $LOCALAPPDATA\nvim\colors\ui\tabline.vim
" .\keys\
source $LOCALAPPDATA\nvim\keys\mappings.vim
" .\config\
source $LOCALAPPDATA\nvim\config\settings.vim
source $LOCALAPPDATA\nvim\config\prettier.vim
source $LOCALAPPDATA\nvim\config\autocommands.vim
source $LOCALAPPDATA\nvim\config\plugs-config.vim
source $LOCALAPPDATA\nvim\config\coc-config.vim
source $LOCALAPPDATA\nvim\config\bufferline.lua
source $LOCALAPPDATA\nvim\config\luatree.vim
source $LOCALAPPDATA\nvim\config\lualine.lua
" }
