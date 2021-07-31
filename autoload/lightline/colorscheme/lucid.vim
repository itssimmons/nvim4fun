" =============================================================================
" Filename: ./autoload/lightline/lucid.vim
" License: MIT License
" Author: @sssimxn
" Last Change: 2021/07/30 15:49:15
" =============================================================================

let s:black = [ '#181320', 233 ]
let s:white = [ '#f8f8f2', 234 ]
let s:green = [ '#45f36d', 118 ]
let s:pink = [ '#f92672', 161 ]
let s:red = [ '#ff4b4b', 160 ]
let s:yellow = [ '#ffaf3e', 229 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:black, s:pink ], [ s:pink, s:black ] ]
let s:p.normal.middle = [ [ s:pink, s:black ] ]
let s:p.normal.right = [ [ s:pink, s:black ], [ s:black, s:pink ] ]
let s:p.normal.error = [ [ s:pink, s:black ] ]
let s:p.normal.warning = [ [ s:yellow, s:black ] ]
let s:p.insert.left = [ [ s:black, s:green ], [ s:green, s:black ] ]
let s:p.insert.right = [ [ s:pink, s:black ], [ s:black, s:green ] ] 
let s:p.visual.left = [ [ s:black, s:yellow ], [ s:yellow, s:black ] ]
let s:p.visual.right = [ [ s:pink, s:black ], [ s:black, s:yellow ] ]
let s:p.replace.left = [ [ s:black, s:red ], [ s:red, s:black ] ]
let s:p.replace.right = [ [ s:pink, s:black ], [ s:black, s:red ] ]
let s:p.inactive.left =  [ [ s:pink, s:black ], [ s:white, s:black ] ]
let s:p.inactive.middle = [ [ s:black, s:black ] ]
let s:p.inactive.right = [ [ s:white, s:pink ], [ s:pink, s:black ] ]
let s:p.tabline.left = [ [ s:pink, s:black ] ]
let s:p.tabline.middle = [ [ s:pink, s:black] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.tabline.tabsel = [ [ s:black, s:pink ] ]

let g:lightline#colorscheme#lucid#palette = lightline#colorscheme#flatten(s:p)
