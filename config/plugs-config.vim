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
autocmd FileType xml,html,css,javascript,javascriptreact,javascript.tsx,typescript,typescriptreact,typescript.tsx EmmetInstall

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
