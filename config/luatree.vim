set termguicolors
nnoremap <C-b> :NvimTreeToggle<CR>
nnoremap <leader>rn :NvimTreeRefresh<CR>

let g:nvim_tree_side = 'left' "left by default
let g:nvim_tree_width = 32 "30 by default, can be width_in_columns or 'width_in_percent%'
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 0 "0 by default, closes the tree when it's the last window
let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_follow_update_path = 1 "0 by default, will update the path of the current dir if the file is not inside the tree.
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 0 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 0 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_auto_resize = 0 "1 by default, will resize the tree to its saved width when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 0 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_hijack_cursor = 0 "1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_update_cwd = 1 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
let g:nvim_tree_window_picker_exclude = {
\   'filetype': [
\     'notify',
\     'packer',
\     'qf'
\   ],
\   'buftype': [
\     'terminal'
\   ]
\ }
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
\ 'git': 1,
\ 'folders': 1,
\ 'files': 1,
\ 'folder_arrows': 0,
\ }
let g:nvim_tree_icons = {
\ 'default': '',
\ 'symlink': '',
\ 'git': {
\   'unstaged': "●",
\   'modified': "M",
\   'staged': "S",
\   'unmerged': "~",
\   'renamed': "R",
\   'untracked': "U",
\   'deleted': "D",
\   'ignored': "?"
\   },
\ 'folder': {
\   'arrow_open': "",
\   'arrow_closed': "",
\   'default': "",
\   'open': "",
\   'empty': "",
\   'empty_open': "",
\   'symlink': "",
\   'symlink_open': "",
\   },
\   'lsp': {
\     'hint': "",
\     'info': "",
\     'warning': "",
\     'error': "",
\   }
\ }

"highlight NvimTreeSymlink           gui=NONE guifg=LightGray guibg=LightGray
"highlight NvimTreeFolderIcon        gui=NONE guifg=#0074c1   guibg=#fff
"highlight NvimTreeFolderName        gui=NONE guifg=LightGray
"highlight nvimtreerootfolder        gui=NONE guifg=#c586c0
"highlight NvimTreeEmptyFolderName   gui=NONE guifg=LightGray
"highlight NvimTreeOpenedFolderName  gui=NONE guifg=LightGray
"highlight NvimTreeExecFile          gui=NONE guifg=LightGray
"highlight NvimTreeOpenedFile        gui=NONE guifg=LightGray
"highlight NvimTreeSpecialFile       gui=NONE guifg=LightGray
"highlight NvimTreeImageFile         gui=NONE guifg=Violet

"highlight LspDiagnosticsError			gui=NONE guifg=#cc291b
"highlight LspDiagnosticsWarning		gui=NONE guifg=#ded523
"highlight LspDiagnosticsInformation	gui=NONE guifg=#57d5ff
"highlight LspDiagnosticsHint			gui=NONE guifg=#1a64db

"highlight NvimTreeGitDirty                   guifg=#ebbe7b
"highlight NvimTreeGitStaged                  guifg=LightGray
"highlight NvimTreeGitMerge                   guifg=LightGray
"highlight NvimTreeGitRenamed                 guifg=LightGray
"highlight NvimTreeGitNew                     guifg=#ebbe7b

"highlight NvimTreeStatusLineNC 		gui=NONE guibg=NONE      guifg=NONE
"highlight NvimTreeStatusLine 		   gui=NONE guibg=NONE      guifg=NONE
