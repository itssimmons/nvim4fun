:let _rock_dark   = '#0f0c14'
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
highlight clear

if exists("syntax_on")
	syntax reset
endif

source ~/AppData/Local/nvim/colors/ui/tabline.vim
if exists("+showtabline")
	:call CustomTabline()
endif

set t_Co=256
let colors_name = "pinkple"
let colorgroup = {}


" Interface (dark) --------------------------------------------------------
let colorgroup['Normal']       = {"GUIFG": _cloud,     "GUIBG":  _rock_dark}
" -------------------------------------------------------------------------
let colorgroup['Darker']       = {"GUIFG": _gray,      "GUIBG":  _rock_dark}
let colorgroup['ColorColumn']  = {"GUIFG": _rock_dark, "GUIBG":  _pink}
let colorgroup['Conceal']      = {"GUIFG": _sap,        "GUI": "bold"}
let colorgroup['CursorLine']   = {"GUIFG": _cloud,     "GUIBG":  _rock}
let colorgroup['CursorLineNr'] = {"GUIFG": _gray_dark, "GUIBG":  _rock_dark}
let colorgroup['Directory']    = {"GUIFG": _fluoric,   "GUIBG":  _rock_dark}
let colorgroup['Error']        = {"GUIFG": _rock_dark, "GUIBG":  _pink}
let colorgroup['ErrorMsg']     = {"GUIFG": _rock_dark, "GUIBG":  _pink}
let colorgroup['FoldColumn']   = {                     "GUIBG":  _rock_dark}
let colorgroup['Folded']       = {"GUIFG": _cloud,     "GUIBG":  _rock}
let colorgroup['LineNr']       = {"GUIFG": _rock_medium, "GUIBG":  _rock_dark}
" Syntax ------------------------------------------------------------------
let colorgroup['Access']       = {"GUIFG": _purple,    "GUI": "bold"}
let colorgroup['Comment']      = {"GUIFG": _gray,      "GUI": "italic"}
let colorgroup['Class']        = {"GUIFG": _pink,      "GUI": "italic"}
let colorgroup['Conditional']  = {"GUIFG": _cyan}
let colorgroup['Constant']     = {"GUIFG": _turquoise, "GUI": "bold"}
let colorgroup['Delimiter']    = {"GUIFG": _pink}
let colorgroup['Function']     = {"GUIFG": _steel}
let colorgroup['Identifier']   = {"GUIFG": _sky}
let colorgroup['Module']       = {"GUIFG": _pink,      "GUI": "underline"}
let colorgroup['NonText']      = {"GUIFG": _rock_dark} " ~
let colorgroup['Number']       = {"GUIFG": _turquoise}
let colorgroup['PreProc']      = {"GUIFG": _pink}
let colorgroup['Statement']    = {"GUIFG": _turquoise}
let colorgroup['Special']      = {"GUIFG": _pink}
let colorgroup['SpecialKey']   = {"GUIFG": _gray_light}
let colorgroup['String']       = {"GUIFG": _fluoric}
let colorgroup['StorageClass'] = {"GUIFG": _cloud,     "GUI": "bold"}
let colorgroup['Structure']    = {"GUIFG": _gray_medium}
let colorgroup['Symbol']       = {"GUIFG": _sky}
let colorgroup['Type']         = {"GUIFG": _steel}
let colorgroup['Underlined']   = {"GUIFG": _turquoise, "GUI": "underline"}
let colorgroup['Userdef']      = {"GUIFG": _sap}
let colorgroup['MatchParen']   = {"GUIFG": _rock_dark, "GUIBG":  _pink}
let colorgroup['ModeMsg']      = {"GUIFG": _rock_dark, "GUIBG":  _turquoise}
let colorgroup['Pmenu']        = {"GUIFG": _cloud,     "GUIBG":  _rock_medium}
let colorgroup['PmenuSel']     = {"GUIFG": _rock_dark, "GUIBG":  _turquoise}
let colorgroup['PmenuSbar']    = {                     "GUIBG":  _rock_dark}
let colorgroup['Search']       = {                     "GUIBG":  _gray_dark, "GUI": "underline"}
let colorgroup['SignColumn']   = {                     "GUIBG":  _rock_dark}
let colorgroup['StatusLine']   = {"GUIFG": _gray,      "GUIBG":  _rock}
let colorgroup['StatusLineNC'] = {"GUIFG": _gray_dark, "GUIBG":  _rock}
let colorgroup['Title']        = {"GUIFG": _pink,      "GUI": "bold"}
let colorgroup['Todo']         = {"GUIFG": _rock_dark, "GUIBG":  _powder}
let colorgroup['VertSplit']    = {"GUIFG": _rock,      "GUIBG":  _rock}
let colorgroup['Visual']       = {"GUIFG": _rock_dark, "GUIBG":  _sap}

" ------------------------------------
hi link Boolean               Number
hi link Character             Function
hi link ErrorMsg              Error
hi link Debug                 Special
hi link Define                PreProc
hi link Exception             PreProc
hi link Float                 Number
hi link Include               Function
hi link Label                 Statement
hi link Macro                 PreProc
hi link Operator              PreProc
hi link PreCondit             PreProc
hi link Repeat                Statement
hi link SpecialChar           Special
hi link SpecialComment        Special
hi link Typedef               Type
hi link Tag                   Special


" Plugins -----------------------------

" Git Gutter
hi GitGutterAdd guifg=#1fff8e ctermfg=Green
hi GitGutterChange guifg=#f3ff41 ctermfg=Yellow
hi GitGutterDelete guifg=#ff6b41 ctermfg=Red

" NERDtree
hi link NerdTreeCWD           Statement
hi link NerdTreeHelpKey       Function
hi link NerdTreeHelpTitle     Statement
hi link NerdTreeOpenable      Statement
hi link NerdTreeClosable      Statement
hi link NerdTreeDir           Normal
hi link NerdTreeDirSlash      Statement

" Language -----------------------------

" C++
hi def link cppSTLbool         Boolean
hi def link cppStatement       Statement
hi def link cppSTLfunction     Function
hi def link cppSTLdefine       Constant
hi def link cppSTLconstant     Constant
hi def link cppSTLnamespace    Constant
hi def link cppSTLexception    Type
hi def link cppSTLiterator     Type
hi def link cppSTLtype         Type
hi def link cppSTLtypedef      Typedef
hi def link cppSTLenum         Typedef
hi def link cppSTLios          Function
hi def link cppSTLconcept      Typedef
hi def link cppSTLvariable     Identifier

" JavaScript
hi link javascriptFuncArg     Function
hi link javascriptFuncComma   Function
hi link javascriptFuncDef     Statement
hi link javascriptFuncKeyword Statement
hi link javascriptOpSymbols   Type
hi link javascriptParens      Function
hi link javascriptEndcolons   Function

" JSON
hi link jsonKeyword           Function

" PHP
hi link phpParent             Normal
hi link phpRegion             Comment
hi link phpVarSelector        Identifier

" Markdown
hi link mkdBlockquote         Symbol
hi link mkdCode               Identifier
hi link mkdIndentCode         Identifier
hi link mkdLink               Normal

" XML
hi link xmlEndTag             Function

" HTML
"hi link htmlArg               Symbol
"hi link htmlTag               Constant
hi link htmlTagName           Constant
"hi link htmlEndTag            Function

" CSS
hi link cssAttr               String
hi link cssClass              Type
hi link cssProp               Identifier
hi link cssSelectorOp         Identifier

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
