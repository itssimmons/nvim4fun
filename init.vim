" { Plugins
call plug#begin('~\.vim\plugged')
" LSP n Furry
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'easymotion/vim-easymotion'
Plug 'aca/completion-tabnine', { 'do': './install.sh' }
Plug 'prettier/vim-prettier', { 'do': 'npm install', 'branch': 'release/0.x' }
Plug 'jiangmiao/auto-pairs'
" VSCode
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'Mofiqul/vscode.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'ryanoasis/vim-devicons'                                           
" Start
Plug 'mhinz/vim-startify'
" Highlight n wrap 
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/playground'
" Wrap n Emmet snippets 
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Navigate
Plug 'christoomey/vim-tmux-navigator'                                   
" Erros n Comments
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdcommenter'                                         
" Git
Plug 'airblade/vim-gitgutter'                                           
" Debugger
Plug 'szw/vim-maximizer'
Plug 'puremourning/vimspector'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
" }

" { Sources
" ../config
source $LOCALAPPDATA\nvim\config\autocommands.vim
source $LOCALAPPDATA\nvim\config\lsp-config.vim
source $LOCALAPPDATA\nvim\config\plugs-config.vim
source $LOCALAPPDATA\nvim\config\settings.vim
" ../colors
"source $LOCALAPPDATA\nvim\colors\ui\statusline.vim
"source $LOCALAPPDATA\nvim\colors\ui\tabline.vim
" ../keymaps
source $LOCALAPPDATA\nvim\keymaps\shortcuts.vim
" lua files
source $LOCALAPPDATA\nvim\bufferline.lua
source $LOCALAPPDATA\nvim\evil_lualine.lua
source $LOCALAPPDATA\nvim\luatree.vim
" }

" { LSP Config
if exists('+termguicolors')    
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors          
endif                         
"colorscheme pinkple
let g:vscode_style = "dark"
colorscheme vscode

set completeopt=menuone,noinsert,noselect
set shortmess+=c
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

"lua require'lspconfig'.tsserver.setup{}
lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
" }
