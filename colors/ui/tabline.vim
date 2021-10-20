function! CustomTabline()

		hi TablineFiletype          cterm=none   gui=none   ctermbg=none ctermfg=5 guibg=none    guifg=#f92672
		hi TablineFiletypeIcon      cterm=none   gui=none   ctermbg=5    ctermfg=0 guibg=#f92672 guifg=#0f0c14
		hi TablineFiletypeBody      cterm=none   gui=none   ctermbg=8    ctermfg=5 guibg=#181320 guifg=#f92672
		hi TablineFiletypeSeparator cterm=none   gui=none   ctermbg=none ctermfg=8 guibg=none    guifg=#181320

		function! FiletypeIcon()
    		return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' : ' ') : ''
		endfunction

		function! SetTabline()
    		let tabline = ""
    		let tabline .= "%#TablineFiletype# "
    		let tabline .= "%#TablineFiletypeIcon#%{FiletypeIcon()}"
    		let tabline .= "%#TablineFiletypeBody# %f %M"
    		let tabline .= "%#TablineFiletypeSeparator#\ "
    		return tabline
		endfunction

		setlocal tabline=%!SetTabline()

endfunction
