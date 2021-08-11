" Git Gutter
highlight GitGutterAdd guifg=#1fff8e ctermfg=Green
highlight GitGutterChange guifg=#f3ff41 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff6b41 ctermfg=Red
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0

" Auto Pairs
let g:AutoPairs = { 
\ '<':'>', 
\ '(':')', 
\ '[':']', 
\ '{':'}',
\ "'":"'",
\ '"':'"',
\ "`":"`",
\ '```':'```',
\ '"""':'"""',
\ "'''":"'''"
\ }

" Prettier 
au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.json,*.css,*.html,*.cpp,*.c,*.cc Prettier

let g:prettier#config#print_width = 'auto'
let g:prettier#config#tab_width = '4'
let g:prettier#config#use_tabs = 'true'
" flow|babylon|typescript|css|less|scss|json|graphql|markdown or empty string
let g:prettier#config#parser = 'flow'
" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'file-override'
" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'
" css|strict|ignore
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:prettier#config#require_pragma = 'true'
" lf|crlf|cr|all
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'all')

" ALE lint config
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_completation_autoimport = 1
let g:ale_completion_enable = 1
let g:ale_fix_on_save = 1
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

" Lua Completion
let g:completion_popup_border = 'rounded'
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_kind_overrides = 1
let g:completion_customize_lsp_label = {
\ 'Text' : ' [text]',
\ 'Function': ' [function]',
\ 'Variable': ' [variable]',
\ 'Method': ' [method]',
\ 'Constant': ' [constant]',
\ 'Struct': 'פּ [struct]',
\ 'Class': '  [class]',
\ 'Interface': '禍 [interface]',
\ 'Enum': ' [enum]',
\ 'EnumMember': ' [enum member]',
\ 'Module': ' [module]',
\ 'Color': ' [color]',
\ 'Property': '襁 [property]',
\ 'Field': '綠[field]',
\ 'Unit': ' [unit]',
\ 'File': ' [file]',
\ 'Value': ' [value]',
\ 'Event': '鬒 [event]',
\ 'Folder': ' [folder]',
\ 'Keyword': ' [keyword]',
\ 'Snippet': ' [snippet]',
\ 'UltiSnips': ' [snippet]',
\ 'Operator': '洛 [operator]',
\ 'Reference': ' [reference]',
\ 'TypeParameter': '  [type parameter]',
\ 'Default': ' [default]'
\ }
" Tabnine + Lua Completion
let g:completion_menu_length = 30
let g:completion_abbr_length = 20 
let g:completion_tabnine_priority = 1
let g:completion_tabnine_tabnine_path = 'C:\Users\Cuenta\.vim\plugged\completion-tabnine\binaries\3.5.37\x86_64-pc-windows-gnu\TabNine.exe'
let g:completion_tabnine_max_num_results = 3
let g:completion_tabnine_sort_by_details = 1
let g:completion_chain_complete_list = {
\ 'vim': [
\  {'mode': '<c-p>'},
\  {'mode': '<c-n>'}
\ ],
\ 'lua': [
\  {'mode': '<c-p>'},
\  {'mode': '<c-n>'}
\ ],
\ 'default': [
\  {'complete_items': ['lsp', 'snippet']},
\  {'mode': '<c-p>'},
\  {'mode': '<c-n>'}
\ ]
\ }

let g:startify_lists = [
\ { 'type': 'files',     'header': ['   MRU']            },
\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
\ { 'type': 'sessions',  'header': ['   Sessions']       },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\ { 'type': 'commands',  'header': ['   Commands']       },
\ ]
