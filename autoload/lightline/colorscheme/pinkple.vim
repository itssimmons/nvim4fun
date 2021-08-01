" =============================================================================
" Filename: ./autoload/lightline/pinkple
" License: MIT License
" Author: @sssimxn
" Last Change: 2021/08/01 13:18:40
" (based on https://github.com/cseelus/vim-colors-lucid)
" =============================================================================

let s:rock = [ '#181320', 233 ]
let s:white = [ '#f8f8f2', 234 ]
let s:sky = [ '#48ff9f', 118 ]
let s:pink = [ '#f92672', 161 ]
let s:red = [ '#ff4b4b', 160 ]
let s:yellow = [ '#ffaf3e', 229 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:rock, s:pink ], [ s:pink, s:rock ] ]
let s:p.normal.middle = [ [ s:pink, s:rock ] ]
let s:p.normal.right = [ [ s:pink, s:rock ], [ s:rock, s:pink ] ]
let s:p.normal.error = [ [ s:pink, s:rock ] ]
let s:p.normal.warning = [ [ s:yellow, s:rock ] ]
let s:p.insert.left = [ [ s:rock, s:sky ], [ s:sky, s:rock ] ]
let s:p.insert.right = [ [ s:pink, s:rock ], [ s:rock, s:sky ] ] 
let s:p.visual.left = [ [ s:rock, s:yellow ], [ s:yellow, s:rock ] ]
let s:p.visual.right = [ [ s:pink, s:rock ], [ s:rock, s:yellow ] ]
let s:p.replace.left = [ [ s:rock, s:red ], [ s:red, s:rock ] ]
let s:p.replace.right = [ [ s:pink, s:rock ], [ s:rock, s:red ] ]
let s:p.inactive.left =  [ [ s:pink, s:rock ], [ s:white, s:rock ] ]
let s:p.inactive.middle = [ [ s:rock, s:rock ] ]
let s:p.inactive.right = [ [ s:white, s:pink ], [ s:pink, s:rock ] ]
let s:p.tabline.left = [ [ s:pink, s:rock ] ]
let s:p.tabline.middle = [ [ s:pink, s:rock] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.tabline.tabsel = [ [ s:rock, s:pink ] ]

let g:lightline#colorscheme#pinkple#palette = lightline#colorscheme#flatten(s:p)
