" Disable it on specifics filetype
let g:coc_filetypes_enable = [ 'vim', 'lua', 'html', 'css', 'json' ]

function! s:disable_coc_for_type()
  	if index(g:coc_filetypes_enable, &filetype) == -1
    	let b:coc_suggest_disable = 1
	else
		let b:coc_suggest_disable = 0
	endif
endfunction

let fts = ['vim', 'lua', 'html', 'css', 'json']
if index(fts, &filetype) == -1
	let fts = ['vim', 'lua', 'html', 'css', 'json']
	augroup CocGroup
		autocmd!
		autocmd BufNew,BufEnter,BufAdd,BufCreate * call s:disable_coc_for_type()
	augroup end
	autocmd FileType fts inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
	autocmd FileType fts inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	" Use <c-space> to trigger completion.
	if has('nvim')
	  autocmd FileType fts inoremap <silent><expr> <c-space> coc#refresh()
	else
	  autocmd FileType fts inoremap <silent><expr> <c-@> coc#refresh()
	endif

	" Make <CR> auto-select the first completion item and notify coc.nvim to
	" format on enter, <cr> could be remapped by other vim plugin
	autocmd FileType fts inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
											\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

	" Use `[g` and `]g` to navigate diagnostics
	" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
	autocmd FileType fts nmap <silent> [g <Plug>(coc-diagnostic-prev)
	autocmd FileType fts nmap <silent> ]g <Plug>(coc-diagnostic-next)

	" GoTo code navigation.
	autocmd FileType fts nmap <silent> gd <Plug>(coc-definition)
	autocmd FileType fts nmap <silent> gy <Plug>(coc-type-definition)
	autocmd FileType fts nmap <silent> gi <Plug>(coc-implementation)
	autocmd FileType fts nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window.
	autocmd FileType fts nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
		 execute 'h '.expand('<cword>')
	  elseif (coc#rpc#ready())
		 call CocActionAsync('doHover')
	  else
		 execute '!' . &keywordprg . " " . expand('<cword>')
	  endif
	endfunction

	" Highlight the symbol and its references when holding the cursor.
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Symbol renaming.
	autocmd FileType fts nmap <leader>rn <Plug>(coc-rename)

	augroup mygroup
	  autocmd!
	  " Setup formatexpr specified filetype(s).
	  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	  " Update signature help on jump placeholder.
	  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end

	" Add `:Format` command to format current buffer.
	command! -nargs=0 Format :call CocAction('format')

	" Add `:Fold` command to fold current buffer.
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

	" Add `:OR` command for organize imports of the current buffer.
	command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

	" Add (Neo)Vim's native statusline support.
	" NOTE: Please see `:h coc-status` for integrations with external plugins that
	" provide custom statusline: lightline.vim, vim-airline.
	"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
endif

" Prettier AutoFormat
command! -nargs=0 Prettier :CocCommand prettier.formatFile
