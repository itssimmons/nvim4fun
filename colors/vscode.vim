lua << EOF
local vscode = require("vscode")
vscode.set()
EOF

" NvimTree
highlight NvimTreeSymlink              gui=NONE guifg=LightGray guibg=LightGray
highlight NvimTreeFolderIcon           gui=NONE guifg=#0074c1 guibg=#fff
highlight NvimTreeFolderName           gui=NONE guifg=LightGray
highlight nvimtreerootfolder           gui=NONE guifg=#c586c0
highlight NvimTreeEmptyFolderName      gui=NONE guifg=LightGray
highlight NvimTreeOpenedFolderName     gui=NONE guifg=LightGray
highlight NvimTreeExecFile             gui=NONE guifg=LightGray
highlight NvimTreeOpenedFile           gui=NONE guifg=LightGray
highlight NvimTreeSpecialFile          gui=NONE guifg=LightGray
highlight NvimTreeImageFile            gui=NONE guifg=Violet
"highlight NvimTreeMarkdownFile
"hi NvimTreeIndentMarker

highlight LspDiagnosticsError						gui=NONE guifg=#cc291b
highlight LspDiagnosticsWarning					gui=NONE guifg=#ded523
highlight LspDiagnosticsInformation				gui=NONE guifg=#57d5ff
highlight LspDiagnosticsHint						gui=NONE guifg=#1a64db

highlight NvimTreeGitDirty                      guifg=#ebbe7b
highlight NvimTreeGitStaged                     guifg=LightGray
highlight NvimTreeGitMerge                      guifg=LightGray
highlight NvimTreeGitRenamed                    guifg=LightGray
highlight NvimTreeGitNew                        guifg=#ebbe7b
"highlight NvimTreeGitDeleted                    guifg=Black

"hi NvimTreeFileDirty
"hi NvimTreeFileStaged
"hi NvimTreeFileMerge
"hi NvimTreeFileRenamed
"hi NvimTreeFileNew
"hi NvimTreeFileDeleted
