let g:mapleader = " "

" { Shortcuts

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
" guu line to lowercase
" gUU line to uppercae
" guaw word to lowercase
" gUaw word to uppercase

" Surround
" ds Delete character
" cs Swap character
" ys Add character
" gS Add in visual mode

" TAB in general mode will move to text buffer
nnoremap <A-2> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <A-1> :bprevious<CR>
nmap <C-t> :e %:h/
nmap <C-w> :bdelete!<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>

" Alternate way to quit
nnoremap <C-x> :xa!<CR>
nmap <leader>q :q!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Move code blocks/identation
xnoremap <A-k> :move '<-2<CR>gv-gv
xnoremap <A-j> :move '>+1<CR>gv-gv
vnoremap <A-h> <gv
vnoremap <A-l> >gv

" Split
nmap <silent> <C-Up> :vsplit<CR>
nmap <silent> <C-Right> :split<CR>

"Nerdtree comment
nmap ++ <plug>NERDCommenterToggle
vmap ++ <plug>NERDCommenterToggle
vmap -- <plug>NERDCommenterMinimal
vmap -+ <plug>NERDCommenterUncomment
nmap -+ <plug>NERDCommenterUncomment

" Vim rename
nnoremap <F1> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i
nnoremap m, :nohl<CR>

" Maximazer
nmap <leader>m :MaximizerToggle!<CR>

" VimInspector
nmap ff :call vimspector#Launch()<CR>
nmap fr :VimspectorReset<CR>
nmap fe :VimspectorEval<CR>
nmap fw :VimspectorWatch<CR>
"autocmd Filetype java nmap ff :CocCommand java.debug.vimspector.start<CR>

" Lua Completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Telescope
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <C-i> <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Easy Motion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Trouble
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>

"-- { Mappings
"-- Async Lsp Finder
"-- lsp provider to find the cursor word definition and reference
"nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
"-- or use command LspSagaFinder
"nnoremap <silent> gh :Lspsaga lsp_finder<CR>

"-- Code Action
"nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
"vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
"-- or use command
"nnoremap <silent><leader>ca :Lspsaga code_action<CR>
"vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

"-- Hover Doc
"-- show hover doc
"nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
""-- or use command
"nnoremap <silent>K :Lspsaga hover_doc<CR>

""-- scroll down hover doc or scroll in definition preview
"nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
""-- scroll up hover doc
"nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

""-- Signature Help
""-- show signature help
"nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
""-- or command
"nnoremap <silent> gs :Lspsaga signature_help<CR>

""-- Rename
"nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
""-- or command
"nnoremap <silent>gr :Lspsaga rename<CR>
""-- close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`

""-- Preview Definition
"nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
""-- or use command
"nnoremap <silent> gd :Lspsaga preview_definition<CR>

""-- Jump Diagnostic n Show it
""-- show
"nnoremap <silent><leader>cd <cmd>lua
"require'lspsaga.diagnostic'.show_line_diagnostics()<CR>

"nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
""-- only show diagnostic if cursor is over the area
"nnoremap <silent><leader>cc <cmd>lua
"require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>

""-- jump diagnostic
"nnoremap <silent> [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
"nnoremap <silent> ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
""-- or use command
"nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
"nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>

""-- Float Terminal
""-- float terminal also you can pass the cli command in open_float_terminal function
"nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR> -- or open_float_terminal('lazygit')<CR>
"tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>
""-- or use command
"nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
"tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>

"-- }
