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

" Terminal
" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen("powershell.exe -NoLogo", {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap <A-t> :call TermToggle(12)<CR>
inoremap <A-t> <Esc>:call TermToggle(12)<CR>
tnoremap <A-t> <C-\><C-n>:call TermToggle(12)<CR>
" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

" TAB in general mode will move to text buffer
nnoremap <A-2> :bnext!<CR>
" SHIFT-TAB will go back
nnoremap <A-1> :bprevious!<CR>
nmap <C-t> :e! %:h/
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
vnoremap < <gv
vnoremap > >gv

" Split
nnoremap <silent> <C-Up> :vsplit<CR>
nnoremap <silent> <C-Right> :split<CR>

" Nerdtree comment
nmap ++ <plug>NERDCommenterToggle
vmap ++ <plug>NERDCommenterToggle
vmap -- <plug>NERDCommenterMinimal

" Quick rename
nnoremap <F1> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i
nnoremap <leader><Esc> :nohl<CR>

" Maximazer
nmap mm :MaximizerToggle!<CR>

" VimInspector
nmap <C-F5> :call vimspector#Launch()<CR>
nmap fr :VimspectorReset<CR>
nmap fe :VimspectorEval<CR>
nmap fw :VimspectorWatch<CR>
"autocmd Filetype java nmap <C-F5> :CocCommand java.debug.vimspector.start<CR>

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

" Colorizer
nnoremap <leader>ch :ColorToggle<cr>
