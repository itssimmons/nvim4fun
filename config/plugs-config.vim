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
  highlight = {
    enable = true,
    disable = { "vim", "lua", "javascript", "typescript" }
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

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
"let g:prettier#autoformat_config_files = []
"let g:prettier#exec_cmd_path = "~/path/to/cli/prettier"

let g:prettier#config#print_width = '80'
let g:prettier#config#tab_width = '3'
let g:prettier#config#use_tabs = 'true'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#trailing_comma = 'es5'
" flow|babylon|typescript|css|less|scss|json|graphql|markdown or empty string
let g:prettier#config#parser = 'typescript'
" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'cli-override'
" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'
" css|strict|ignore
let g:prettier#config#html_whitespace_sensitivity = 'strict'
let g:prettier#config#require_pragma = 'true'
" lf|crlf|cr|all
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'all')
