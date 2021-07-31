let g:lightline = {
\ 'enable': { 'statusline': 1, 'tabline': 0 }, 
\ 'active': { 
\  'left': [['mode', 'paste'], ['linter_errors', 'linter_warnings', 'linter_ok']],
\  'right': [['myfiletype'], ['lineinfo', 'percent'], ['gitbranch']]
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
\  'linter_warnings': 'lightline#ale#warnings',
\  'linter_errors': 'lightline#ale#errors',
\  'linter_ok': 'lightline#ale#ok'
\ },
\ 'colorscheme': 'lucid',
\ 'subseparator': {
\  'left': '',
\  'right': ''
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
    return winwidth(0) > 10 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : ' ') : ''
 endfunction
