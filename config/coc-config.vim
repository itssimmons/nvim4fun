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
	autocmd FileType fts inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
	autocmd FileType fts inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction


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

	" Symbol renaming.
	autocmd FileType fts nmap <leader>rn <Plug>(coc-rename)

	augroup mygroup
	  autocmd!
	  " Update signature help on jump placeholder.
	  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end
endif

let g:coc_global_extensions = [
\ 'coc-vimlsp',
\ 'coc-snippets',
\ 'coc-prettier',
\ 'coc-pairs',
\ 'coc-lua',
\ 'coc-html',
\ 'coc-json',
\ 'coc-css'
\ ]

" Prettier AutoFormat
nmap <leader>p :CocCommand prettier.formatFile
