:let _rock_dark   = '#0d1117'
:let _rock        = '#181320'
:let _rock_medium = '#36323d'
:let _gray_dark   = '#534d5e'
:let _gray        = '#847d91'
:let _gray_medium = '#beb8cc'
:let _gray_light  = '#d2c3ef'
:let _cloud       = '#e4e0ed'

:let _turquoise   = '#9154E4'
:let _fluoric     = '#00a5d1'
:let _cyan        = '#99feff'
:let _steel       = '#f8f8f2'
:let _powder      = '#8fc7db'
:let _purple      = '#7470ce'
:let _sky         = '#48ff9f'
:let _pink        = '#f92672'
:let _sap         = '#fde9a2'

set background=dark

if exists("syntax_on")
	syntax reset
	highlight clear
endif

call GlobalTabline()
call GlobalStatusline()

set t_Co=256
let colors_name = "purpledepth"
let colorgroup = {}

" Interface (dark) --------------------------------------------------------
let colorgroup['Normal']       = {"GUIFG": _cloud,     "GUIBG":  _rock_dark}
" -------------------------------------------------------------------------
let colorgroup['Darker']       = {"GUIFG": _gray,      "GUIBG":  _rock_dark}
let colorgroup['ColorColumn']  = {"GUIFG": _rock_dark, "GUIBG":  _pink}
let colorgroup['Conceal']      = {"GUIFG": _sap,        "GUI": "bold"}
let colorgroup['CursorLine']   = {"GUIBG":  _rock}
let colorgroup['CursorLineNr'] = {"GUIFG": _gray_dark, "GUIBG":  _rock_dark}
let colorgroup['Directory']    = {"GUIFG": _fluoric,   "GUIBG":  _rock_dark}
let colorgroup['Error']        = {"GUIFG": _rock_dark, "GUIBG":  _pink}
let colorgroup['ErrorMsg']     = {"GUIFG": _rock_dark, "GUIBG":  _pink}
let colorgroup['FoldColumn']   = {                     "GUIBG":  _rock_dark}
let colorgroup['Folded']       = {"GUIFG": _cloud,     "GUIBG":  _rock}
let colorgroup['LineNr']       = {"GUIFG": _rock_medium, "GUIBG":  _rock_dark}
let colorgroup['Pmenu']        = {"GUIFG": _cloud,     "GUIBG":  _rock_medium}
let colorgroup['PmenuSel']     = {"GUIFG": _rock_dark, "GUIBG":  _turquoise}
let colorgroup['PmenuSbar']    = {                     "GUIBG":  _rock_dark}
let colorgroup['Underlined']   = {"GUIFG": _turquoise, "GUI": "underline"}
let colorgroup['NonText']      = {"GUIFG": _rock_medium} " ~

" Expand colorgroup ------------------------------------------
let s:colors = {}
let valid_cterm_colors =
      \ [
      \     'Black', 'DarkBlue', 'DarkGreen', 'DarkCyan',
      \     'DarkRed', 'DarkMagenta', 'Brown', 'DarkYellow',
      \     'LightGray', 'LightGrey', 'Gray', 'Grey',
      \     'DarkGray', 'DarkGrey', 'Blue', 'LightBlue',
      \     'Green', 'LightGreen', 'Cyan', 'LightCyan',
      \     'Red', 'LightRed', 'Magenta', 'LightMagenta',
      \     'Yellow', 'LightYellow', 'White',
      \ ]
for key in keys(colorgroup)
  let s:colors = colorgroup[key]
  if has_key(s:colors, 'TERM')
    let term = s:colors['TERM']
  else
    let term = 'NONE'
  endif
  if has_key(s:colors, 'GUI')
    let gui = s:colors['GUI']
  else
    let gui='NONE'
  endif
  if has_key(s:colors, 'GUIFG')
    let guifg = s:colors['GUIFG']
  else
    let guifg='NONE'
  endif
  if has_key(s:colors, 'GUIBG')
    let guibg = s:colors['GUIBG']
  else
    let guibg='NONE'
  endif
  if has_key(s:colors, 'CTERM')
    let cterm = s:colors['CTERM']
  else
    let cterm=gui
  endif
  if has_key(s:colors, 'CTERMFG')
    let ctermfg = s:colors['CTERMFG']
  else
    if index(valid_cterm_colors, guifg) != -1
      let ctermfg=guifg
    else
      let ctermfg='Blue'
    endif
  endif
  if has_key(s:colors, 'CTERMBG')
    let ctermbg = s:colors['CTERMBG']
  else
    if index(valid_cterm_colors, guibg) != -1
      let ctermbg=guibg
    else
      let ctermbg='NONE'
    endif
  endif
  if has_key(s:colors, 'GUISP')
    let guisp = s:colors['GUISP']
  else
    let guisp='NONE'
  endif

  if key =~ '^\k*$'
    execute "hi ".key." term=".term." cterm=".cterm." gui=".gui." ctermfg=".ctermfg." guifg=".guifg." ctermbg=".ctermbg." guibg=".guibg." guisp=".guisp
  endif
endfor

let Italic = ""
if exists('g:spaceduck_italic')
  let Italic = "italic"
endif
let g:spaceduck_italic = get(g:, 'spaceduck_italic', 0)

let Bold = ""
if exists('g:spaceduck_bold')
  let Bold = "bold"
endif

let g:spaceduck_bold = get(g:, 'spaceduck_bold', 0)
hi link NonText EndOfBuffer
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#686f9a ctermbg=60 gui=NONE cterm=NONE
hi QuickFixLine guifg=#ecf0c1 ctermfg=255 guibg=#16172d ctermbg=234 gui=NONE cterm=NONE
hi Search guifg=#ffffff ctermfg=15 guibg=#686f9a ctermbg=60 gui=NONE cterm=NONE
hi SpecialKey guifg=#e39400 ctermfg=172 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi SpellBad guifg=#e33400 ctermfg=166 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellLocal guifg=#ecf0c1 ctermfg=255 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellRare guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi StatusLine guifg=#ecf0c1 ctermfg=255 guibg=#0f111b ctermbg=233 gui=reverse cterm=reverse
hi link StatusLineTerm StatusLine
hi StatusLineTermNC guifg=#000000 ctermfg=0 guibg=#30365F ctermbg=237 gui=reverse cterm=reverse
hi link StatusLineNC StatusLineTermNC
hi TabLine guifg=#000000 ctermfg=0 guibg=#818596 ctermbg=102 gui=NONE cterm=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#1b1c36 ctermbg=234 gui=NONE cterm=NONE
hi link VisualNOS Visual
hi link Whitespace EndOfBuffer
hi Comment guifg=#30365F ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#00a3cc ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#ce6f8f ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Ignore guifg=#e33400 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#ecf0c1 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#ce6f8f ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Tag guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Debug guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#00a3cc ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#00a3cc ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#00a3cc ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#e39400 ctermfg=172 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#e39400 ctermfg=172 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#e39400 ctermfg=172 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#7a5ccc ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#7a5ccc ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#7a5ccc ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#7a5ccc ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SpecialComment Comment
hi Todo guifg=#ffffff ctermfg=15 guibg=#686f9a ctermbg=60 gui=underline cterm=underline
hi link cFormat Title
hi link cCppOutIf1 Normal
hi link cCppOutIf2 Normal
hi link cBracket Title
hi link cssBraces Normal
hi cssSelectorOp guifg=#ce6f8f ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link fortranType Tag
hi link fortranStructure Structure
hi link fortranStorageClass StorageClass
hi link fortranUnitHeader Title
hi link haskellType Tag
hi link haskellIdentifier Label
hi link haskellKeyword Boolean
hi link haskellDecl Boolean
hi link htmlTagName Function
hi link htmlEndTag Conditional
hi link htmlArg Tag
hi link htmlSpecialTagName Type
hi link javaClassDecl Structure
hi link javaTypeDef Keyword
hi link jsStorageClass Title
hi link jsFunction Function
hi link jsFuncName Special
hi link jsOperator Operator
hi link jsNull Constant
hi link jsGlobalObjects Constant
hi link jsFuncCall Function
hi link jsOperatorKeyword Operator
hi link jsExceptions Error
hi link jsObjectProp Tag
hi link jsTernaryIfOperator Title
hi link jsTemplateBraces Title
hi link jsTemplateExpression String
hi link texTypeStyle Special
hi link mkdDelimiter Normal
hi link phpFunction Function
hi link phpMethod Function
hi link phpType Constant
hi link phpIdentifier Type
hi link phpStringSingle String
hi link phpStringDouble String
hi pythonOperator guifg=#ce6f8f ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link rubyConstant Constant
hi link rubyDefine Define
hi link rubyMethodName Function
hi link rubyInstanceVariable Tag
hi link rubyKeywordAsMethod Tag
hi link typescriptProp Tag
hi link typescriptVariable Title
hi link jsxTagName HTMLTagName
hi link jsxComponentName Tag
hi link jsxOpenPunct jsxTagName
hi link jsxClosePunct jsxOpenPunct
hi link jsxCloseString jsxClosePunct
hi link typescriptBraces Normal
hi typescriptArrowFunc guifg=#ce6f8f ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link typescriptNumberStaticMethod Function
hi link typescriptNumberMethod Function
hi link typescriptStringStaticMethod Function
hi link typescriptStringMethod Function
hi link typescriptArrayStaticMethod Function
hi link typescriptArrayMethod Function
hi link typescriptObjectStaticMethod Function
hi link typescriptObjectMethod Function
hi link typescriptSymbolStaticMethod Function
hi link typescriptFunctionMethod Function
hi link typescriptMathStaticMethod Function
hi link typescriptDateStaticMethod Function
hi link typescriptDateMethod Function
hi link typescriptJSONStaticMethod Function
hi link typescriptRegExpMethod Function
hi link typescriptES6MapMethod Function
hi link typescriptES6SetMethod Function
hi link typescriptPromiseStaticMethod Function
hi link typescriptPromiseMethod Function
hi link typescriptReflectMethod Function
hi link typescriptIntlMethod Function
hi link typescriptBOMNavigatorMethod Function
hi link typescriptServiceWorkerMethod Function
hi link typescriptBOMLocationMethod Function
hi link typescriptBOMHistoryMethod Function
hi link typescriptConsoleMethod Function
hi link typescriptXHRMethod Function
hi link typescriptFileMethod Function
hi link typescriptFileReaderMethod Function
hi link typescriptFileListMethod Function
hi link typescriptBlobMethod Function
hi link typescriptURLStaticMethod Function
hi link typescriptSubtleCryptoMethod Function
hi link typescriptCryptoMethod Function
hi link typescriptHeadersMethod Function
hi link typescriptRequestMethod Function
hi link typescriptResponseMethod Function
hi link typescriptCacheMethod Function
hi link typescriptEncodingMethod Function
hi link typescriptGeolocationMethod Function
hi link typescriptPaymentMethod Function
hi link typescriptPaymentResponseMethod Function
hi link typescriptDOMNodeMethod Function
hi link typescriptDOMDocMethod Function
hi link typescriptDOMEventTargetMethod Function
hi link typescriptDOMEventMethod Function
hi link typescriptDOMStorageMethod Function
hi link typescriptDOMFormMethod Function
hi link vimGroupName Normal
hi link yamlKeyValueDelimiter Normal
hi link yamlBlockMappingKey Function
hi link vistaTag Conditional
hi link vistaIcon Identifier
hi link vistaColon Normal
hi link vistaScope Constant
hi link vistaKind Conditional
hi Sneak guifg=#000000 ctermfg=0 guibg=#f2ce00 ctermbg=220 gui=NONE cterm=NONE
hi BufferCurrent guifg=#c1c3cc ctermfg=251 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferVisible guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferInactive guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferTabpageFill guifg=#0f111b ctermfg=233 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferCurrentIndex guifg=#5ccc96 ctermfg=78 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferVisibleIndex guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferInactiveIndex guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferCurrentMod guifg=#e39400 ctermfg=172 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferVisibleMod guifg=#e39400 ctermfg=172 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferInactiveMod guifg=#e39400 ctermfg=172 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferCurrentSign guifg=#5ccc96 ctermfg=78 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferVisibleSign guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferInactiveSign guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferCurrentTarget guifg=#ce6f8f ctermfg=168 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferVisibleTarget guifg=#ce6f8f ctermfg=168 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferInactiveTarget guifg=#ce6f8f ctermfg=168 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE

" Git Gutter
hi GitGutterAdd guifg=#1fff8e ctermfg=Green
hi GitGutterChange guifg=#f3ff41 ctermfg=Yellow
hi GitGutterDelete guifg=#ff6b41 ctermfg=Red

function! GlobalTabline()
	hi TablineFiletype          cterm=none   gui=none   ctermbg=none ctermfg=5 guibg=none    guifg=#33cccc
	hi TablineFiletypeIcon      cterm=none   gui=none   ctermbg=5    ctermfg=0 guibg=#33cccc guifg=#272c38
	hi TablineFiletypeBody      cterm=none   gui=none   ctermbg=8    ctermfg=5 guibg=#272c38 guifg=#33cccc
	hi TablineFiletypeSeparator cterm=none   gui=none   ctermbg=none ctermfg=8 guibg=none    guifg=#272c38

	function! FiletypeIcon()
		return winwidth(0) > 10 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' : ' ') : ''
	endfunction

	function! SetTabline()
	let tabline = ""
	let tabline .= "%#TablineFiletype#"
		let tabline .= "%#TablineFiletypeIcon#%{FiletypeIcon()}"
		let tabline .= "%#TablineFiletypeBody# %t %m"
		let tabline .= "%#TablineFiletypeSeparator#\ "
	return tabline
	endfunction

	setlocal tabline=%!SetTabline()
endfunction

function! GlobalStatusline()
	set noshowmode
	set laststatus=2

	function! RedrawModeColors(mode) " {{{
			" Normal mode
			if a:mode == 'n'
					hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=1   guibg=none    guifg=#fc8993
					hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=1    ctermfg=0   guibg=#fc8993 guifg=#272c38
					hi CustomStatuslineFilename   cterm=none gui=none ctermbg=8    ctermfg=251 guibg=#272c38 guifg=#fc8993
					" Insert mode
			elseif a:mode == 'i'
					hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=2   guibg=none    guifg=#8de19f
					hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=2    ctermfg=0   guibg=#8de19f guifg=#272c38
					hi CustomStatuslineFilename   cterm=none gui=none ctermbg=8    ctermfg=251 guibg=#272c38 guifg=#8de19f
					" Replace mode
			elseif a:mode == 'R'
					hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=1   guibg=none    guifg=#A65169
					hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=1    ctermfg=0   guibg=#A65169 guifg=#272c38
					hi CustomStatuslineFilename   cterm=none gui=none ctermbg=8    ctermfg=251 guibg=#272c38 guifg=#A65169
					" Visual mode
			elseif a:mode == 'v' || a:mode == 'V' || a:mode == "\<C-V>"
					hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=7   guibg=none    guifg=#a7bdfb
					hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=7    ctermfg=0   guibg=#a7bdfb guifg=#272c38
					hi CustomStatuslineFilename   cterm=none gui=none ctermbg=8    ctermfg=7 guibg=#272c38 guifg=#a7bdfb
					" Command mode
			elseif a:mode == 'c'
					hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=6   guibg=none    guifg=#ee828c
					hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=6    ctermfg=0   guibg=#ee828c guifg=#272c38
					hi CustomStatuslineFilename   cterm=none gui=none ctermbg=8    ctermfg=6 guibg=#272c38 guifg=#ee828c
					" Terminal mode
			elseif a:mode == 't'
					hi CustomStatuslineAccent     cterm=none gui=none ctermbg=none ctermfg=3   guibg=none    guifg=#fbdf90
					hi CustomStatuslineAccentBody cterm=none gui=none ctermbg=3    ctermfg=0   guibg=#fbdb90 guifg=#272c38
					hi CustomStatuslineFilename   cterm=none gui=none ctermbg=8    ctermfg=3 guibg=#272c38 guifg=#fbdb90
			endif
			return ''
	endfunction
	" }}}
	function! ModeIcon(mode) " {{{
			" Normal mode
			if a:mode == 'n'
					return '煮'
					" Insert mode
			elseif a:mode == 'i'
					return ' '
					" Replace mode
			elseif a:mode == 'R'
					return ' '
					" Visual mode
			elseif a:mode == 'v'
					return ' '
			elseif a:mode == 'V'
					return ' '
			elseif a:mode == "\<C-V>"
					return '礪'
					" Command mode
			elseif a:mode == 'c'
					return '⌘ '
					" Terminal mode
			elseif a:mode == 't'
					return 'ﰣ'
			endif
			return ''
	endfunction

	function! SetModifiedSymbol(modified) " {{{
			if a:modified == 1
					hi CustomStatuslineModifiedBody cterm=none gui=none ctermbg=1 ctermfg=0 guibg=none guifg=#ff0000
					hi CustomStatuslineModified cterm=none gui=none ctermbg=none ctermfg=1 guibg=none guifg=none
			else
					hi CustomStatuslineModifiedBody cterm=none gui=none ctermbg=0 ctermfg=2 guibg=none guifg=#89e19c
					hi CustomStatuslineModified cterm=none gui=none ctermbg=0 ctermfg=0 guibg=none guifg=none
			endif
			return '  '
	endfunction

	function! FiletypeIcon()
			return winwidth(0) > 30 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' : ' ') : ''
	endfunction
	function! SetFiletype(filetype) " {{{
			if winwidth(0) > 30
					hi CustomStatuslineFiletype          cterm=none   gui=none   ctermbg=none ctermfg=5 guibg=none    guifg=#d990cd
					hi CustomStatuslineFiletypeIcon      cterm=none   gui=none   ctermbg=5    ctermfg=0 guibg=#d990cd guifg=#272c38
					hi CustomStatuslineFiletypeBody      cterm=italic gui=italic ctermbg=8    ctermfg=5 guibg=#272c38 guifg=#d990cd
					hi CustomStatuslineFiletypeSeparator cterm=none   gui=none   ctermbg=none ctermfg=8 guibg=none    guifg=#272c38
					if a:filetype == ''
							return '-'
					else
							return a:filetype
					endif
			else
					hi CustomStatuslineFiletype          cterm=none   gui=none   ctermbg=none ctermfg=5 guibg=none    guifg=#0F111A
					hi CustomStatuslineFiletypeIcon      cterm=none   gui=none   ctermbg=5    ctermfg=0 guibg=#0F111A guifg=#0F111A
					hi CustomStatuslineFiletypeBody      cterm=italic gui=italic ctermbg=5    ctermfg=5 guibg=#0F111A guifg=#0F111A
					hi CustomStatuslineFiletypeSeparator cterm=none   gui=none   ctermbg=none ctermfg=5 guibg=none    guifg=#0F111A
					return ''
			endif
	endfunction

	function GitBranchIcon()
			if strlen(FugitiveHead())>0 && winwidth(0) > 30
					hi CustomStatuslineGitbranch          cterm=none gui=none ctermbg=none ctermfg=4 guibg=none    guifg=#81d4ee
					hi CustomStatuslineGitbranchIcon      cterm=none gui=none ctermbg=4 ctermfg=0 guibg=#81d4ee    guifg=#272c38
					hi CustomStatuslineGitbranchBody      cterm=none gui=none ctermbg=8    ctermfg=4 guibg=#272c38 guifg=#81d4ee
					hi CustomStatuslineGitbranchSeparator cterm=none gui=none ctermbg=none ctermfg=8 guibg=none    guifg=#272c38
					return ' '
			else
					hi CustomStatuslineGitbranch          cterm=none gui=none ctermbg=none ctermfg=0 guibg=none    guifg=#0F111A
					hi CustomStatuslineGitbranchIcon      cterm=none gui=none ctermbg=0    ctermfg=0 guibg=#0F111A guifg=#0F111A
					hi CustomStatuslineGitbranchBody      cterm=none gui=none ctermbg=0    ctermfg=0 guibg=#0F111A guifg=#0F111A
					hi CustomStatuslineGitbranchSeparator cterm=none gui=none ctermbg=none ctermfg=0 guibg=none    guifg=#0F111A
					return ''
			endif
	endfunction


	function! Shiftwidth()
			let fname = expand('%:t')
			if ! &expandtab || fname == 'ControlP'
					return '-'
			endif
			if &shiftwidth == 0
					return &tabstop
			else
					return &shiftwidth
			endif
	endfunction

	" Setup the colors
	hi StatusLine                cterm=none gui=none ctermbg=8 ctermfg=3 guibg=none guifg=none
	hi CustomStatuslineSeparator cterm=none gui=none ctermbg=none ctermfg=8 guibg=none guifg=#272c38

	hi CustomStatuslinePercentage     ctermfg=0 cterm=NONE ctermbg=NONE
	hi CustomStatuslinePercentageBody ctermbg=0 cterm=none ctermfg=6

	hi CustomStatuslineTotalLines     cterm=none gui=none ctermbg=none ctermfg=3 guibg=none guifg=#fbdf90
	hi CustomStatuslineTotalLinesIcon cterm=none gui=none ctermbg=3 ctermfg=0 guibg=#fbdf90 guifg=#272c38
	hi CustomStatuslineTotalLinesBody cterm=none gui=none ctermbg=8    ctermfg=3 guibg=#272c38 guifg=#fbdf90
	hi CustomStatuslineTotalLinesSeparator cterm=none gui=none ctermbg=none ctermfg=8 guibg=none guifg=#272c38

	hi CustomStatuslineInactiveDark           cterm=none gui=none ctermbg=8 ctermfg=12 guibg=#44506c guifg=#a7bdfb
	hi CustomStatuslineInactiveDarkSeparator  cterm=none gui=none ctermbg=8 ctermfg=12 guibg=none    guifg=#272c38
	hi CustomStatuslineInactiveLight          cterm=none gui=none ctermbg=8 ctermfg=12 guibg=none guifg=#44506c
	hi CustomStatuslineInactiveLightSeparator cterm=none gui=none ctermbg=8 ctermfg=12 guibg=none    guifg=#44506c

	function! SetActiveStatusLine()
			" Statusbar items
			let statusline  = "%{RedrawModeColors(mode())}"
			" Left side items
			" =======================
			let statusline .= "%#CustomStatuslineAccent#"
			let statusline .= "%#CustomStatuslineAccentBody#%{ModeIcon(mode())}"
			let statusline .= "%#CustomStatuslineFilename#\ %t"
			let statusline .= "%#CustomStatuslineFiletypeSeparator#\ "
			" Modified status
			let statusline .= "%#CustomStatuslineModified#"
			let statusline .= "%#CustomStatuslineModifiedBody#%{SetModifiedSymbol(&modified)}"
			let statusline .= "%#CustomStatuslineModified# "
			" Right side items
			" =======================
			let statusline .= "%="
			" Git branch name
			let statusline .= "%#CustomStatuslineGitbranch#"
			let statusline .= "%#CustomStatuslineGitbranchIcon#%{GitBranchIcon()}"
			let statusline .= "%#CustomStatuslineGitbranchBody#\ %{FugitiveHead()}"
			let statusline .= "%#CustomStatuslineGitbranchSeparator#\ "
			" Tab length
			"let statusline .= "%#CustomStatuslineTotalLines#"
			"let statusline .= "%#CustomStatuslineTotalLinesIcon# "
			"let statusline .= "%#CUSTomStatuslineTotalLinesBody#\ %{Shiftwidth()}"
			"let statusline .= "%#CustomStatuslineSeparator#"
			" Padding
			let statusline .= "\ "
			" Current line / total number of lines
			let statusline .= "%#CustomStatuslineAccent#"
			let statusline .= "%#CustomStatuslineAccentBody# "
			let statusline .= "%#CustomStatuslineFilename#\ \%l"
			let statusline .= "\/\%#CustomStatuslineFilename#%L"
			let statusline .= "%#CustomStatuslineFiletypeSeparator#"
			" Padding
			let statusline .= "\ "
			" Filetype
			let statusline .= "%#CustomStatuslineFiletype#"
			let statusline .= "%#CustomStatuslineFiletypeIcon#%{FiletypeIcon()}"
			let statusline .= "%#CustomStatuslineFiletypeBody#\ %{SetFiletype(&filetype)}"
			let statusline .= "%#CustomStatuslineFiletypeSeparator#\ "
			return statusline
	endfunction

	function! SetInactiveStatusLine()
			" Statusbar items
			let statusline  = "%{RedrawModeColors(mode())}"
			" Left side items
			" =======================
			let statusline .= "%#CustomStatuslineAccent#"
			let statusline .= "%#CustomStatuslineAccentBody#%{ModeIcon(mode())}"
			let statusline .= "%#CustomStatuslineFilename#\ %t\ "
			let statusline .= "%#CustomStatuslineSeparator#\ "
			" Modified status
			let statusline .= "%#CustomStatuslineModified#"
			let statusline .= "%#CustomStatuslineModifiedBody#%{SetModifiedSymbol(&modified)}"
			let statusline .= "%#CustomStatuslineModified# "
			" Right side items
			" =======================
			let statusline .= "%="
			" Git branch name
			let statusline .= "%#CustomStatuslineGitbranch#"
			let statusline .= "%#CustomStatuslineGitbranchIcon#%{GitBranchIcon()}"
			let statusline .= "%#CustomStatuslineGitbranchBody#\ %{FugitiveHead()}"
			let statusline .= "%#CustomStatuslineGitbranchSeparator#\ "
			" Tab length
			"let statusline .= "%#CustomStatuslineTotalLines#"
			"let statusline .= "%#CustomStatuslineTotalLinesIcon# "
			"let statusline .= "%#CUSTomStatuslineTotalLinesBody#\ %{Shiftwidth()}"
			"let statusline .= "%#CustomStatuslineSeparator#"
			" Padding
			let statusline .= "\ "
			" Current line / total number of lines
			let statusline .= "%#CustomStatuslineTotalLines#"
			let statusline .= "%#CustomStatuslineTotalLinesIcon# "
			let statusline .= "%#CUSTomStatuslineTotalLinesBody#\ %l"
			let statusline .= "\/\%#CUSTomStatuslineTotalLinesBody#%L"
			let statusline .= "%#CustomStatuslineTotalLinesSeparator#"
			" Padding
			let statusline .= "\ "
			" Filetype
			let statusline .= "%#CustomStatuslineFiletype#"
			let statusline .= "%#CustomStatuslineFiletypeIcon#%{FiletypeIcon()}"
			let statusline .= "%#CustomStatuslineFiletypeBody#\ %{SetFiletype(&filetype)}"
			let statusline .= "%#CustomStatuslineFiletypeSeparator#\ "
			return statusline
	endfunction

	augroup vimrc-statusline
			autocmd!
			autocmd WinEnter * setlocal statusline=%!SetActiveStatusLine()
			autocmd BufEnter * setlocal statusline=%!SetActiveStatusLine()
			autocmd WinNew   * setlocal statusline=%!SetActiveStatusLine()
			autocmd WinLeave * setlocal statusline=%!SetActiveStatusLine()
	augroup END
	setlocal statusline=%!SetActiveStatusLine()
endfunction
