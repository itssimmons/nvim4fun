" { Plugins
call plug#begin('~\.vim\plugged')
" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'aca/completion-tabnine', { 'do': './install.sh' }
" CoC
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"VS Code
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'hoob3rt/lualine.nvim'
Plug 'folke/trouble.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'chrisbra/Colorizer'
" Windows navigate
Plug 'christoomey/vim-tmux-navigator'
" Highlight
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/playground'
" Snippets
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Debugger
Plug 'szw/vim-maximizer'
Plug 'puremourning/vimspector'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Git
Plug 'lewis6991/gitsigns.nvim'
call plug#end()
" }

let g:vscode_style = "dark"
colorscheme vscode

" { Sources
" ./colors
"source $LOCALAPPDATA\nvim\colors\ui\statusline.vim
"source $LOCALAPPDATA\nvim\colors\ui\tabline.vim
" ./mappings
source $LOCALAPPDATA\nvim\keys\mappings.vim
" ./config
source $LOCALAPPDATA\nvim\config\settings.vim
source $LOCALAPPDATA\nvim\config\autocommands.vim
source $LOCALAPPDATA\nvim\config\lsp-config.vim
source $LOCALAPPDATA\nvim\config\plugs-config.vim
source $LOCALAPPDATA\nvim\config\bufferline.lua
source $LOCALAPPDATA\nvim\config\evil_lualine.lua
source $LOCALAPPDATA\nvim\config\luatree.vim
source $LOCALAPPDATA\nvim\config\coc-config.vim
" ./
" }
