vim.opt.termguicolors = true
-- Buffer line setup
require'bufferline'.setup{
	options = {
		diagnostics = false,
		diagnostics_update_in_insert = false,
		separator_style = "slant",
		indicator_icon = ' ',
		buffer_close_icon = '',
		modified_icon = '●',
		close_icon = '',
		close_command = "bdelete %d",
		right_mouse_command = "bdelete! %d",
		left_trunc_marker = '',
		right_trunc_marker = '',
		offsets = {{
			filetype = "NvimTree",
			text = "EXPLORER",
			text_align = "center"
		}},
		show_tab_indicators = true,
		show_close_icon = false
	},
	highlights = {
		fill = {
			guifg = "#3881ff",
			guibg = "#373737",
		},
		background = {
			guifg = {attribute = "fg", highlight = "Normal"},
			guibg = {attribute = "bg", highlight = "StatusLine"}
		},
		buffer_visible = {
			gui = "NONE",

			guifg = "#464646",
			guibg = "#464646"
		},
		buffer_selected = {
			gui = "NONE",
			guifg = "#fff",
			guibg = "#fff"
		},
		separator = {
			guifg = "#373737",
			guibg = "#272822"
		},
		--#272822
		separator_selected = {
			guifg = "#373737",
			guibg = "#272822"
		},
		separator_visible = {
			guifg = "#373737",
			guibg = "#272822"
		},
		close_button = {
			guifg = {attribute = "fg", highlight = "Normal"},
			guibg = {attribute = "bg", highlight = "StatusLine"}
		},
		close_button_selected = {
			guifg = {attribute = "fg", highlight="Normal"},
			guibg = {attribute = "bg", highlight = "Normal"}
		},
		close_button_visible = {
			guifg = {attribute = "fg", highlight = "Normal"},
			guibg = {attribute = "bg", highlight = "Normal"}
		},
		modified = {
			guifg = {attribute = "fg", highlight = "Normal"},
			guibg = {attribute = "bg", highlight = "StatusLine"}
		},
		modified_visible = {
			guifg = {attribute = "fg", highlight="Normal"},
			guibg = {attribute = "bg", highlight = "Normal"}
		},
		modified_selected = {
			guifg = {attribute = "fg", highlight="Normal"},
			guibg = {attribute = "bg", highlight = "Normal"}
		},
		info = {
			guifg = "#3881ff",
			guibg = "#373737",
			guisp = ""
		},
		info_visible = {
			guifg = "#3881ff",
			guibg = "Normal"
		},
		info_selected = {
			gui = "NONE",
			guifg = "#3881ff",
			guibg = "",
			guisp = ""
		},
		info_diagnostic = {
			guifg = "#3881ff",
			guibg = "#373737",
			guisp = ""
		},
		info_diagnostic_visible = {
			guifg = "Normal",
			guibg = "Normal"
		},
		info_diagnostic_selected = {
			gui = "NONE",
			guifg = "#3881ff",
			guibg = "Normal",
			guisp = ""
		},
		warning = {
			guifg = "#ffea61",
			guibg = "#373737",
			guisp = ""
		},
		warning_visible = {
			guifg = "#ffea61",
			guibg = "Normal"
		},
		warning_selected = {
			gui = "NONE",
			guifg = "#ffea61",
			guibg = "",
			guisp = ""
		},
		warning_diagnostic = {
			guifg = "#ffea61",
			guibg = "#373737",
			guisp = ""
		},
		warning_diagnostic_visible = {
			guifg = "Normal",
			guibg = "Normal"
		},
		warning_diagnostic_selected = {
			gui = "NONE",
			guifg = "#ffea61",
			guibg = "Normal",
			guisp = ""
		},
		error = {
			guifg = "#ff5b45",
			guibg = "#373737",
			guisp = ""
		},
		error_visible = {
			guifg = "#ff5b45",
			guibg = "Normal"
		},
		error_selected = {
			gui = "NONE",
			guifg = "#ff5b45",
			guibg = "",
			guisp = ""
		},
		error_diagnostic = {
			guifg = "#ff5b45",
			guibg = "#373737",
			guisp = ""
		},
		error_diagnostic_visible = {
			guifg = "Normal",
			guibg = "Normal"
		},
		error_diagnostic_selected = {
			gui = "NONE",
			guifg = "#ff5b45",
			guibg = "Normal",
			guisp = ""
		},
	}
}
