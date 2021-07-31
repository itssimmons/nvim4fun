set nocompatible
set runtimepath^=~\.nvim\plugged\coc.nvim
filetype plugin indent on
syntax on
set hidden

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nnoremap <silent> Z :call <SID>show_documentation()<CR>
