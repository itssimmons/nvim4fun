" Nerdtree config
let NERDTreeMouseMod = 1
let NERDTreeShowHidden = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowLineNumbers = 0
let NERDTreeStatusline = 0
let NERDTreeMinimalUI = 1
let NERDTreeMinimalMenu = 1
let NERDTreeHighlightCursorline = 0
let NERDTreeWinSize = 25
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeNodeDelimiter="\u00a0"
let g:NERDTreeGitStatusIndicatorMapCustom = {
\ 'Modified'  :'M',
\ 'Staged'    :'S',
\ 'Untracked' :'U',
\ 'Renamed'   :'R',
\ 'Unmerged'  :'=',
\ 'Deleted'   :'D',
\ 'Dirty'     :'⦁',
\ 'Ignored'   :'I',
\ 'Clean'     :'C',
\ 'Unknown'   :'?',
\ }
let g:NERDTreeGitStatusConcealBrackets = 1
let g:NERDTreeDirArrows = 0
let NERDTreeDirArrowExpandable = ""
let NERDTreeDirArrowCollapsible = ""
" Nerdtree syntax highlight custom config
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
"let g:DevIconsDefaultFolderOpenSymbol = ''
" Devicons custom config config
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''

" Git Gutter
highlight GitGutterAdd guifg=#1fff8e ctermfg=Green
highlight GitGutterChange guifg=#f3ff41 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff6b41 ctermfg=Red
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0

" Prettier autoformat with coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile)

" Fzf appareance
let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.5, 'relative': v:true, 'yoffset': -1 } }

" ALE lint config
let g:ale_completation_autoimport = 1
let g:ale_completion_enable = 1
" ALE + lightline
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf057 "
let g:lightline#ale#indicator_ok = "\uf00c "

" VimInspector
let g:vimspector_enable_mappings = 'HUMAN'

" Treesitter
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

" Emmet
autocmd FileType html,css,xml EmmetInstall
let g:user_emmet_leader_key = ","
