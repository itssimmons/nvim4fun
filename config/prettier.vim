" Auto-format
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.xml Prettier

" Manual-format
nnoremap <leader>P :Prettier<CR>
nnoremap <leader>Pc :PrettierCli<CR>

" Stylesheets prettier
au FileType css,scss,sass,less let b:prettier_exec_cmd = "prettier-stylelint"

"let g:prettier#autoformat_config_files = []
"let g:prettier#exec_cmd_path = "~/path/to/cli/prettier"

" Config {
let g:prettier#config#print_width = 80
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'true'
let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#trailing_comma = 'es5'
" flow|babylon|typescript|css|less|scss|json|graphql|markdown or empty string
let g:prettier#config#parser = 'typescript'
" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'cli-override'
" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'
" css|strict|ignore
let g:prettier#config#html_whitespace_sensitivity = 'strict'
let g:prettier#config#require_pragma = 'true'
" lf|crlf|cr|all
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'all')
" }
