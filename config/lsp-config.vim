source $LOCALAPPDATA\nvim\config\lsp-config.lua
source $LOCALAPPDATA\nvim\config\lspsaga.lua

" AutoFormat
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
"autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)
"autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.cpp,*.cc,*.c,*.h,*.hpp lua vim.lsp.buf.formatting_sync(nil, 100)
"autocmd BufWritePre *.java lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

let g:autocomplete = get(g:, 'autocomplete', {})
let g:completion_enable_snippet = 'UltiSnips'
let g:autocomplete.auto_hover = 1
let g:autocomplete.auto_paren = 1
let g:autocomplete.ignore_case = 1
let g:autocomplete.matching = ['substring', 'fuzzy']
let g:autocomplete.confirm_key = "<CR>"
let g:completion_popup_border = 'rounded'

"let g:completion_chain_complete_list = {
"\  'default': [
"\  {'complete_items': ['keyn', 'path', 'snippet', 'lsp', 'tabnine'] },
"\  {'mode': '<c-p>'},
"\  {'mode': '<c-n>'}
"\  ]
"\ }

let g:completion_tabnine_priority = 1
let g:completion_tabnine_max_num_results=5

set completeopt=menuone,noselect
set shortmess+=c

" Lua Completion
let g:completion_menu_length = 80
let g:completion_abbr_length = 50
"let g:completion_kind_overrides = 0
"let g:completion_customize_lsp_label = {
"\ 'Text' : '',
"\ 'Function': '',
"\ 'Variable': '',
"\ 'Method': '',
"\ 'Constant': '',
"\ 'Struct': 'פּ',
"\ 'Class': '',
"\ 'Interface':'',
"\ 'Enum': '',
"\ 'EnumMember': '',
"\ 'Module': '',
"\ 'Color': '',
"\ 'Property': 'שּׂ',
"\ 'Field': '',
"\ 'Unit': '',
"\ 'File': '',
"\ 'Value': ' ',
"\ 'Event': '',
"\ 'Folder': '',
"\ 'Keyword': '',
"\ 'Snippet': '',
"\ 'UltiSnips': '',
"\ 'Operator': '',
"\ 'Reference': '',
"\ 'TypeParameter': '',
"\ 'Default': '',
"\ 'tabnine': 'tn',
"\ 'Path': ''
"\ }

" Open in every buffer
"autocmd BufEnter * lua require'completion'.on_attach()

" Popup Diagnostic
lua << EOF
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = false,
  underline = true,
  update_in_insert = false,
})
EOF
