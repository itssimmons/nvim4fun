" # Shortcuts #

let mapleader = " "

" Save & Close
nmap <C-s> :w<CR>
nmap <leader>q :q<CR>
nmap <leader>wq :x<CR>
nmap <leader>0 :so%<CR>

" Move between buffers 
nmap <silent> <A-2> :bnext<CR>
nmap <silent> <A-1> :bprevious<CR>
" Buffer management
nmap <C-t> :e 
nmap <C-w> :bdelete<CR>

" Move code blocks/identation
xnoremap <A-k> :move '<-2<CR>gv-gv
xnoremap <A-j> :move '>+1<CR>gv-gv
vnoremap <A-h> <gv
vnoremap <A-l> >gv

" Resize splits
nnoremap <silent> <S-l> :vertical resize +5<CR>
nnoremap <silent> <S-h> :vertical resize -5<CR>
nnoremap <silent> <S-k> :resize +5<CR>
nnoremap <silent> <S-j> :resize -5<CR>

" Split
nmap <silent> <C-Up> :vsplit<CR>
nmap <silent> <C-Right> :split<CR>

" Nerdtree
nmap <leader>n :NERDTreeToggle<CR>
" Nerdtree comment
nmap ++ <plug>NERDCommenterToggle
vmap ++ <plug>NERDCommenterToggle

" Vim rename
nnoremap <F1> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

" Minimazer
nmap <leader>mm :MaximizerToggle!<CR>

" Git Gutter
" Down for some reason?
nnoremap <leader>j :GitGutterNextHunk<CR>
" Up for some reason?
nnoremap <leader>k :GitGutterPrevHunk<CR>

" VimInspector
nmap <C-F5> :call vimspector#Launch()<CR>
nmap fr :VimspectorReset<CR>
nmap fe :VimspectorEval
nmap fw :VimspectorWatch
autocmd Filetype nmap ff :CocCommand java.debug.vimspector.start<CR>

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
