" { Plugins
call plug#begin('~\.vim\plugged')
" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'folke/trouble.nvim'
"VS Code
Plug 'mhinz/vim-startify'
Plug 'szw/vim-maximizer'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'hoob3rt/lualine.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'chrisbra/Colorizer'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'prettier/vim-prettier', {
\ 'do': 'npm install',
\ 'branch': 'release/0.x'
\ }
" SASS
Plug 'AtsushiM/search-parent.vim'
Plug 'AtsushiM/sass-compile.vim'
" Git
Plug 'lewis6991/gitsigns.nvim'
" Highlight
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/playground'
" Snippets
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Debugger
Plug 'puremourning/vimspector'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
" }

let g:vscode_style = "dark"
colorscheme vscode

" { Sources

" .\colors\
"source $LOCALAPPDATA\nvim\colors\ui\statusline.vim
"source $LOCALAPPDATA\nvim\colors\ui\tabline.vim
" .\keys\
source $LOCALAPPDATA\nvim\keys\mappings.vim
" .\config\
source $LOCALAPPDATA\nvim\config\settings.vim
source $LOCALAPPDATA\nvim\config\autocommands.vim
source $LOCALAPPDATA\nvim\config\lsp-config.vim
source $LOCALAPPDATA\nvim\config\plugs-config.vim
source $LOCALAPPDATA\nvim\config\bufferline.lua
source $LOCALAPPDATA\nvim\config\lualine.lua
source $LOCALAPPDATA\nvim\config\luatree.vim
" }
