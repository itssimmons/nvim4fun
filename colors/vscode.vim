" { NvimTreeHi()
source $LOCALAPPDATA\nvim\config\luatree.vim
call NvimTreeHi()
" }

lua << EOF
local vscode = require("vscode")
vscode.set()
EOF
