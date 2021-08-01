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

" FZF
nmap <C-i> :Rg<CR>
nmap <C-p> :Files<CR>
" View opened buffers
nmap <silent> <leader>bb :Buffers<CR>

" Coc Gotos
nmap <silent> gf <Plug>(coc-definition)
nmap <silent> gt <plug>(coc-type-definition)
nmap <silent> gh <Plug>(coc-implementation)
nmap <silent> gb <Plug>(coc-references)
" Coc rename
nmap <silent> <A-F2> <Plug>(coc-rename)

" Minimazer
nmap <leader>mm :MaximizerToggle!<CR>

" Git Gutter
nnoremap <leader>kk :GitGutterNextHunk<CR>
nnoremap <leader>jj :GitGutterPrevHunk<CR>
nmap <leader>[ <Plug>(GitGutterPreviewHunk)

" VimInspector
nmap ff :call vimspector#Launch()<CR>
nmap fx :VimspectorReset<CR>
nmap fc :VimspectorEval
nmap fv :VimspectorWatch
autocmd Filetype nmap ff :CocCommand java.debug.vimspector.start<CR>
