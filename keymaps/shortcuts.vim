" # Shortcuts #

let mapleader = " "

" Search 
nnoremap <C-ñ> :Rg<CR>
nnoremap <C-p> :FZF<CR>

" Toggle tree
nmap <leader>n :NERDTreeToggle<CR>
" Comment
nmap ++ <plug>NERDCommenterToggle
vmap ++ <plug>NERDCommenterToggle

" Move code blocks/identation
" <A-k>   # Move current line/selection up
" <A-j>   # Move current line/selection down
" <A-h>   # Move current character/selection left
" <A-l>   # Move current character/selection 

" Save & Close
nmap <C-s> :w<CR>
nmap <leader>q :q<CR>
nmap <leader>wq :x<CR>
noremap <leader>0 :so%<CR>

" Move between tabs 
nnoremap <silent> <A-2> :tabnext<CR>
nnoremap <silent> <A-1> :tabprevious<CR>
nmap <silent> <C-t> :tabnew<CR>
" Delete buffer
nmap <C-w> :bdelete<CR>
" View opened buffers
nnoremap <silent> <leader>bb  :Buffers<CR>

" Resize splits
nnoremap <silent> <S-l> :vertical resize +5<CR>
nnoremap <silent> <S-h> :vertical resize -5<CR>
nnoremap <silent> <S-k> :resize +5<CR>
nnoremap <silent> <S-j> :resize -5<CR>

" Rename current word
nmap <silent> <A-F2> <Plug>(coc-rename)
" Gotos
nmap <silent> gf <Plug>(coc-definition)
nmap <silent> gt <plug>(coc-type-definition)
nmap <silent> gh <Plug>(coc-implementation)
nmap <silent> gb <Plug>(coc-references)

" Minimap toggleable
nmap <leader>mm :MinimapToggle<CR>

" Rainbow brackets
nmap <leader>rr :RainbowToggle<CR>

" Minimazer
nmap <leader>ff :MaximizerToggle!<CR>
