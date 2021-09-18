source $LOCALAPPDATA\nvim\config\lsp-config.lua

let g:coc_filetypes_enable = ['javascript', 'typescript', 'graphql', 'python', 'c', 'cpp']
function! s:disable_coc_for_type()
  if index(g:coc_filetypes_enable, &filetype) == -1
    :silent! CocEnable
  else
   	:silent! CocDisable
  endif
endfunction

augroup CocGroup
 autocmd!
 autocmd BufNew,BufEnter,BufAdd,BufCreate * call s:disable_coc_for_type()
augroup end

" AutoFormat
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.cpp,*.cc,*.c,*.h,*.hpp lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

let g:autocomplete = get(g:, 'autocomplete', {})
let g:completion_enable_snippet = 'UltiSnips'
let g:autocomplete.auto_hover = 1
let g:autocomplete.auto_paren = 1
let g:autocomplete.ignore_case = 1
let g:autocomplete.matching = ['substring', 'fuzzy', 'all']
let g:autocomplete.confirm_key = "<CR>"
"let g:completion_popup_border = 'rounded'

set completeopt=menuone,noselect
set shortmess+=c

" Lua Completion
let g:completion_menu_length = 100
let g:completion_abbr_length = 80
"let g:completion_kind_overrides = 0
let g:completion_customize_lsp_label = {
\ 'Text' : 't [LS] ',
\ 'Function': 'F [LS] ',
\ 'Variable': 'V [LS] ',
\ 'Method': 'm [LS] ',
\ 'Constant': 'c [LS] ',
\ 'Struct': 's [LS] ',
\ 'Class': 'C [LS] ',
\ 'Interface':'i [LS]',
\ 'Enum': 'e [LS]',
\ 'EnumMember': 'E [LS]',
\ 'Module': 'm [LS] ',
\ 'Color': 'c [CO] ',
\ 'Property': 'p [LS] ',
\ 'Field': 'f [LS] ',
\ 'Unit': 'u [LS] ',
\ 'File': 'fi [PA] ',
\ 'Value': 'v [LS] ',
\ 'Event': 'ev [LS] ',
\ 'Folder': 'fo [PA] ',
\ 'Keyword': 'k [LS] ',
\ 'Snippet': 's [SN] ',
\ 'UltiSnips': 's [SN] ',
\ 'Operator': 'o [LS] ',
\ 'Reference': 'r [LS] ',
\ 'TypeParameter': 'tp [LS] ',
\ 'Default': 'd [DE]',
\ 'Path': ' [PA] '
\ }

" Popup Diagnostic
lua << EOF
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = false,
  underline = true,
  update_in_insert = true,
})
EOF

" { LspSaga
lua << EOF
local saga = require'lspsaga'
saga.init_lsp_saga {
	use_saga_diagnostic_sign = true,

	error_sign = '',
	warn_sign = '',
	hint_sign = '',
	infor_sign = '',
	dianostic_header_icon = '   ',
	code_action_icon = ' ',
	definition_preview_icon = '  ',
	rename_prompt_prefix = '>',
	max_preview_lines = 14, -- preview lines of lsp_finder and definition preview
	border_style = "round", --single" "double" "round" "plus"
	code_action_prompt = {
		enable = true,
		sign = true,
   	sign_priority = 20,
		virtual_text = true,
	},
	finder_action_keys = {
		open = 'o',
		vsplit = 's',
		split = 'i',
		quit = 'q',
		scroll_down = '<C-f>',
		scroll_up = '<C-b>'
	},
	code_action_keys = {
	quit = 'q',exec = '<CR>'
	},
	rename_action_keys = {
	  quit = '<C-c>',exec = '<CR>'  -- quit can be a table
	},
	server_filetype_map = {
		metals = {
			'sbt',
			'scala'
		}
	}
}
EOF

" { LspSaga Mappings
" Scroll into saga windows
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
" Code action
nnoremap <silent><leader>cd :Lspsaga code_action<CR>
vnoremap <silent><leader>cd :<C-U>Lspsaga range_code_action<CR>
"Lsp Finder
nnoremap <silent>gh :Lspsaga lsp_finder<CR>
" Show Docs
nnoremap <silent>K :Lspsaga hover_doc<CR>
" Signature Help
nnoremap <silent>gs :Lspsaga signature_help<CR>
" Rename
nnoremap <silent>gr :Lspsaga rename<CR>
" Preview
"nnoremap <silent> gd :Lspsaga preview_definition<CR>
" Diagnostic
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> <leader>cc <cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>
nnoremap <silent> [d :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]d :Lspsaga diagnostic_jump_prev<CR>
" Terminal
nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>
" }

" { LspSaga hightlights
"highlight LspSagaFinderSelection guifg=#ff0000 guibg=#00ff00 gui=bold
"highlight LspSagaBorderTitle guifg=#ff0000 guibg=#00ff00
"highlight LspFloatWinBorder guifg=#ff0000 guibg=#00ff00
" }

" }
