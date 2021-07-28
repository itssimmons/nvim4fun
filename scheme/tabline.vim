" Custom tabline  
hi TablineFiletype          cterm=none   gui=none   ctermbg=none ctermfg=5 guibg=none    guifg=#ff8cc9
hi TablineFiletypeIcon      cterm=none   gui=none   ctermbg=5    ctermfg=0 guibg=#ff8cc9 guifg=#272c38
hi TablineFiletypeBody      cterm=bold   gui=bold   ctermbg=8    ctermfg=5 guibg=#272c38 guifg=#ff8cc9
hi TablineFiletypeSeparator cterm=none   gui=none   ctermbg=none ctermfg=8 guibg=none    guifg=#272c38

function! FiletypeIcon()
    return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' : ' ') : ''
endfunction

function! SetTabline()
    let tabline = "  "
    let tabline .= "%#TablineFiletype#"
    let tabline .= "%#TablineFiletypeIcon#%{FiletypeIcon()}"
    let tabline .= " %#TablineFiletypeBody# %f %M"
    let tabline .= " %#TablineFiletypeSeparator#\ "
    return tabline
endfunction

setlocal tabline=%!SetTabline()
