let g:lightline = {
\ 'enable': { 'statusline': 1, 'tabline': 0 }, 
\ 'active': { 
\  'left': [['linter_checking', 'linter_infos', 'linter_errors', 'linter_warnings', 'linter_ok']],
\  'right': [['mode', 'paste'], ['percent', 'lineinfo'], ['gitbranch'], ['myfiletype', 'typefile']]
\  },
\ 'inactive': {
\  'left': [['inactive']],
\  'right': [[]]
\  },
\ 'component': {
\  'inactive': 'inactive'
\  },
\ 'component_function': {
\  'myfiletype': 'MyFiletype',
\  'gitbranch': 'gitbranch#name'
\  },
\ 'component_expand': {
\  'linter_checking': 'lightline#ale#checking',
\  'linter_infos': 'lightline#ale#infos',
\  'linter_warnings': 'lightline#ale#warnings',
\  'linter_errors': 'lightline#ale#errors',
\  'linter_ok': 'lightline#ale#ok'
\ },
\ 'colorscheme': 'spaceduck',
\ 'subseparator': {
\  'left': ' ',
\  'right': ' '
\  }
\ }

let g:lightline.mode_map = {
\ 'n' : 'N',
\ 'i' : 'I',
\ 'ic': 'Ic',
\ 'R' : 'R',
\ 'v' : 'V',
\ 'V' : 'Vl',
\ "\<C-v>": 'Vb',
\ 'c' : 'C',
\ 's' : 'S',
\ 'S' : 'Sl',
\ "\<C-s>": 'Sb',
\ 't': 'T'
\ }

function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
 endfunction
