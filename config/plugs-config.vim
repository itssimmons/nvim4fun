" AutoPairs
let g:AutoPairs = {
\ '(':')',
\ '[':']',
\ '{':'}',
\ "'":"'",
\ '"':'"',
\ "`":"`",
\ '```':'```',
\ '"""':'"""',
\ "'''":"'''",
\ }
au FileType php let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})
let g:AutoPairsShortcutToggle = ''

" GitSigns
lua << EOF
require('gitsigns').setup {
	keymaps = {
		-- Default keymap options
		noremap = true,

		['n ]g'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'"},
		['n [g'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'"},

		['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
		['v <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
		['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
		['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
		['v <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
		['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
		['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
		['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',
		['n <leader>hS'] = '<cmd>lua require"gitsigns".stage_buffer()<CR>',
		['n <leader>hU'] = '<cmd>lua require"gitsigns".reset_buffer_index()<CR>',
		-- Text objects
		['o ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
		['x ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>'
	}
}
EOF

" VimInspector
let g:vimspector_enable_mappings = 'HUMAN'

" Treesitter
lua << EOF
require "nvim-treesitter.configs".setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    disable = { "vim", "lua" }
  },
  indent = {
    enable = true
  }
}
EOF

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType xml,html,css,javascript,typescript,javascriptreact,typescriptreact EmmetInstall
let g:user_emmet_leader_key = ","

" Telescope
lua << EOF
require("telescope").setup {
  defaults = {
		mappings = {
			n = {
				["<TAB>"] = false
			}
		}
  },
  pickers = {
    -- Your special builtin config goes in here
    buffers = {
      sort_lastused = true,
      theme = "dropdown",
      previewer = false,
      mappings = {
        i = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
          -- Right hand side can also be the name of the action as a string
          ["<c-d>"] = "delete_buffer",
        },
        n = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        }
      }
    },
	 find_files = {
      theme = "dropdown"
    },
	 live_grep = {
      theme = "dropdown"
    }
  },
  extensions = {
    -- Your extension config goes in here
  }
}
EOF

" Trouble
lua << EOF
   require("trouble").setup {
      position = "bottom", -- position of the list can be: bottom, top, left, right
      height = 10, -- height of the trouble list when position is top or bottom
      width = 50, -- width of the list when position is left or right
      icons = true, -- use devicons for filenames
      mode = "lsp_workspace_diagnostics", -- "lsp_workspace_diagnostics", "lsp_document_diagnostics", "quickfix", "lsp_references", "loclist"
      fold_open = "", -- icon used for open folds
      fold_closed = "", -- icon used for closed folds
      action_keys = { -- key mappings for actions in the trouble list
         -- map to {} to remove a mapping, for example:
         -- close = {},
         close = "q", -- close the list
         cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
         refresh = "r", -- manually refresh
         jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
         open_split = { "<c-x>" }, -- open buffer in new split
         open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
         open_tab = { "<c-t>" }, -- open buffer in new tab
         jump_close = {"o"}, -- jump to the diagnostic and close the list
         toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
         toggle_preview = "P", -- toggle auto_preview
         hover = "K", -- opens a small popup with the full multiline message
         preview = "p", -- preview the diagnostic location
         close_folds = {"zM", "zm"}, -- close all folds
         open_folds = {"zR", "zr"}, -- open all folds
         toggle_fold = {"zA", "za"}, -- toggle fold of current file
         previous = "k", -- preview item
         next = "j" -- next item
      },
      indent_lines = true, -- add an indent guide below the fold icons
      auto_open = false, -- automatically open the list when you have diagnostics
      auto_close = false, -- automatically close the list when you have no diagnostics
      auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
      auto_fold = false, -- automatically fold a file trouble list at creation
      signs = {
      -- icons / text used for a diagnostic
      error = "",
      warning = "",
      hint = "",
      information = "",
      other = "﫠"
      },
      use_lsp_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
}
EOF

" Startify
let g:startify_lists = [
\ { 'type'	: 'dir',       'header': ['   MRU '. getcwd()] },
\ { 'type'	: 'files',     'header': ['   MRU']            },
\ { 'type'	: 'sessions',  'header': ['   Sessions']       },
\ { 'type'	: 'bookmarks', 'header': ['   Bookmarks']      },
\ ]

" Webicons & Vimicons
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['README.md'] = ''
lua << EOF
require("nvim-web-devicons").setup {
  override = {
    ["test.js"] = {
      icon = "ﭧ",
      color = "#cbcb41",
      name = "JsTest"
    },
    ["spec.js"] = {
      icon = "",
      color = "#cbcb41",
      name = "JsSpec"
    },
    ["test.lua"] = {
      icon = "ﭧ",
      color = "#51a0cf",
      name = "LuaTest"
    },
    ["spec.lua"] = {
      icon = "",
      color = "#51a0cf",
      name = "LuaSpec"
    },
 	 ["README.md"] = {
		icon = "",
		color = "#6bbcff",
		name = "Readme"
	 }
  },
  default = true
}
EOF
