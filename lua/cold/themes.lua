--- @class Themes
local themes = {
	--- @param palette Palette
	--- @param config Config
	--- @return ThemeDark
	dark = function(palette, config)
		local main = {
			bg = palette.baseYY,
			fg = palette.baseRR,
		}

		--- @class ThemeDark
		local theme = {
			bg = main.bg,
			fg = main.fg,
			editor = {
				color_column = {
					bg = palette.base03,
				},
				conceal = {
					fg = palette.base03,
				},
				cursor = {
					bg = main.fg,
					fg = main.bg,
					search = {
						bg = palette.base0A,
						fg = palette.baseXX,
					},
					column = {
						bg = palette.base01,
					},
					line = {
						bg = palette.base01,
						nr = {
							bg = vim.o.cursorline and palette.base01 or main.bg,
							fg = main.fg,
						},
					},
				},
				match_paren = {
					bg = palette.base02,
				},
				directory = {
					fg = palette.base0D,
				},
				diff = {
					add = {
						fg = palette.base0B,
					},
					change = {
						fg = palette.base0A,
					},
					delete = {
						fg = palette.base08,
					},
					text = {
						fg = palette.base0B,
					},
				},
				folded = {
					bg = palette.base02,
				},
				line_nr = {
					bg = main.bg,
					fg = palette.base03,
				},
				msg = {
					error = {
						fg = palette.base08,
					},
					mode = {
						fg = palette.base0B,
					},
					warning = {
						fg = palette.base0A,
					},
				},
				non_text = {
					fg = palette.base02,
				},
				float = {
					bg = palette.baseXX,
					border = {
						bg = palette.baseXX,
						fg = palette.baseXX,
					},
				},
				pmenu = {
					bg = palette.baseWW,
					fg = palette.baseZZ,
					sel = {
						bg = palette.base01,
						fg = palette.base05,
					},
					sbar = {
						bg = palette.baseWW,
					},
					thumb = {
						bg = palette.base03,
					},
				},
				search = {
					bg = palette.base0A,
					fg = palette.baseXX,
				},
				spell = {
					bad = {
						fg = palette.base08,
					},
					cap = {
						fg = palette.base0A,
					},
					local_ = {
						fg = palette.base0B,
					},
					rare = {
						fg = palette.base0C,
					},
				},
				status_line = {
					bg = palette.baseXX,
					fg = palette.base04,
					medium = {
						bg = palette.base00,
						fg = palette.baseZZ,
					},
					mode = {
						bg = palette.base0B,
						fg = palette.baseXX,
					},
					lsp = {
						active = {
							fg = palette.base0B,
						},
						inactive = {
							fg = palette.base0A,
						},
					},
					icon = {
						git = {
							fg = palette.base09,
						},
						unsaved = {
							fg = palette.base0A,
						},
					},
				},
				title = {
					fg = palette.base05,
				},
				visual = {
					bg = palette.base02,
				},
				win = {
					bar = {
						unsaved_symbol = {
							bg = main.bg,
							fg = palette.base0A,
						},
					},
					separator = {
						bg = main.bg,
						fg = palette.base03,
					},
				},
			},
			syntax = {
				comment = {
					fg = palette.base03,
				},
				constant = {
					fg = palette.baseRR,
				},
				string = {
					fg = palette.base0B,
				},
				character = {
					fg = palette.baseSS,
				},
				number = {
					fg = palette.base05,
				},
				boolean = {
					fg = palette.base0D,
				},
				identifier = {
					fg = palette.baseRR,
				},
				function_ = {
					fg = palette.baseVV,
				},
				keyword = {
					fg = palette.base0D,
				},
				operator = {
					fg = palette.base04,
				},
				type = {
					fg = palette.baseEE,
				},
				special = {
					fg = palette.baseSS,
				},
				delimiter = {
					fg = palette.baseEE,
				},
				underlined = {
					underline = true,
				},
				error = {
					bg = palette.base08,
				},
				todo = {
					bg = palette.base0E,
				},
				added = {
					fg = palette.base05,
					bg = palette.base0B,
				},
				changed = {
					fg = palette.base05,
					bg = palette.base09,
				},
				removed = {
					fg = palette.base05,
					bg = palette.base08,
				},
			},
			treesitter = {
				tag = {
					delimiter = {
						fg = palette.base03,
					},
				},
				context = {
					bg = palette.base01,
					line_number = {
						bg = palette.base01,
					},
				},
			},
			lsp = {
				reference = {
					text = {
						bg = palette.base02,
					},
					read = {
						bg = palette.base02,
					},
					write = {
						bg = palette.base02,
					},
				},
			},
			diagnostic = {
				error = {
					fg = palette.base08,
				},
				warn = {
					fg = palette.base0A,
				},
				info = {
					fg = palette.base0D,
				},
				hint = {
					fg = palette.base0C,
				},
				ok = {
					fg = palette.base0B,
				},
				unnecessary = {
					fg = palette.base03,
					special = {
						fg = palette.base0C,
					},
				},
			},
			nvim_tree = {
				normal = {
					bg = palette.base00,
					fg = palette.base04,
				},
				win_separator = {
					bg = main.bg,
					fg = main.bg,
				},
				folder = {
					icon = {
						fg = palette.base0A,
					},
				},
				root_folder = {
					fg = palette.base05,
				},
				git = {
					deleted = {
						fg = palette.base08,
					},
					dirty = {
						fg = palette.base0A,
					},
					ignored = {
						fg = palette.base03,
					},
					staged = {
						fg = palette.base0B,
					},
				},
				exec_file = {
					fg = palette.base0B,
				},
			},
			cmp_item_kind = {
				fg = palette.base03,
			},
			fzf = {
				normal = {
					bg = palette.baseWW,
				},
				border = {
					bg = palette.baseWW,
					fg = palette.baseWW,
				},
				preview = {
					normal = {
						bg = main.bg,
					},
				},
			},
		}

		return theme
	end,
	--- @param palette Palette
	--- @param config Config
	--- @return ThemeLight
	light = function(palette, config)
		local main = {
			bg = palette.base06,
			fg = palette.baseXX,
		}

		--- @class ThemeLight
		local theme = {
			bg = main.bg,
			fg = main.fg,
			editor = {
				color_column = {
					bg = palette.base03,
				},
				conceal = {
					fg = palette.base03,
				},
				cursor = {
					bg = main.fg,
					fg = main.bg,
					search = {
						bg = palette.base0A,
						fg = palette.baseXX,
					},
					column = {
						bg = palette.base01,
					},
					line = {
						bg = palette.base01,
						nr = {
							bg = vim.o.cursorline and palette.base01 or main.bg,
							fg = main.fg,
						},
					},
				},
				match_paren = {
					bg = palette.base02,
				},
				directory = {
					fg = palette.base0D,
				},
				diff = {
					add = {
						fg = palette.base0B,
					},
					change = {
						fg = palette.base0A,
					},
					delete = {
						fg = palette.base08,
					},
					text = {
						fg = palette.base0B,
					},
				},
				folded = {
					bg = palette.base02,
				},
				line_nr = {
					bg = main.bg,
					fg = palette.base03,
				},
				msg = {
					error = {
						fg = palette.base08,
					},
					mode = {
						fg = palette.base0B,
					},
					warning = {
						fg = palette.base0A,
					},
				},
				non_text = {
					fg = palette.base02,
				},
				float = {
					bg = palette.baseXX,
					border = {
						bg = palette.baseXX,
						fg = palette.baseXX,
					},
				},
				pmenu = {
					bg = palette.baseWW,
					fg = palette.baseZZ,
					sel = {
						bg = palette.base01,
						fg = palette.base05,
					},
					sbar = {
						bg = palette.baseWW,
					},
					thumb = {
						bg = palette.base03,
					},
				},
				search = {
					bg = palette.base0A,
					fg = palette.baseXX,
				},
				spell = {
					bad = {
						fg = palette.base08,
					},
					cap = {
						fg = palette.base0A,
					},
					local_ = {
						fg = palette.base0B,
					},
					rare = {
						fg = palette.base0C,
					},
				},
				status_line = {
					bg = palette.baseXX,
					fg = palette.base04,
					medium = {
						bg = palette.base00,
						fg = palette.baseZZ,
					},
					mode = {
						bg = palette.base0B,
						fg = palette.baseXX,
					},
					lsp = {
						active = {
							fg = palette.base0B,
						},
						inactive = {
							fg = palette.base0A,
						},
					},
					icon = {
						git = {
							fg = palette.base09,
						},
						unsaved = {
							fg = palette.base0A,
						},
					},
				},
				title = {
					fg = palette.base05,
				},
				visual = {
					bg = palette.base02,
				},
				win = {
					bar = {
						unsaved_symbol = {
							bg = main.bg,
							fg = palette.base0A,
						},
					},
					separator = {
						bg = main.bg,
						fg = palette.base03,
					},
				},
			},
			syntax = {
				comment = {
					fg = palette.base03,
				},
				constant = {
					fg = palette.baseRR,
				},
				string = {
					fg = palette.base0BL,
				},
				character = {
					fg = palette.baseSS,
				},
				number = {
					fg = palette.base05,
				},
				boolean = {
					fg = palette.base0D,
				},
				identifier = {
					fg = palette.baseXX,
				},
				function_ = {
					fg = palette.baseVVL,
				},
				keyword = {
					fg = palette.base0DL,
				},
				operator = {
					fg = palette.base04,
				},
				type = {
					fg = palette.baseEEL,
				},
				special = {
					fg = palette.baseSS,
				},
				delimiter = {
					fg = palette.baseEE,
				},
				underlined = {
					underline = true,
				},
				error = {
					bg = palette.base08,
				},
				todo = {
					bg = palette.base0E,
				},
				added = {
					fg = palette.base05,
					bg = palette.base0B,
				},
				changed = {
					fg = palette.base05,
					bg = palette.base09,
				},
				removed = {
					fg = palette.base05,
					bg = palette.base08,
				},
			},
			treesitter = {
				tag = {
					delimiter = {
						fg = palette.base03,
					},
				},
				context = {
					bg = palette.base01,
					line_number = {
						bg = palette.base01,
					},
				},
			},
			lsp = {
				reference = {
					text = {
						bg = palette.base02,
					},
					read = {
						bg = palette.base02,
					},
					write = {
						bg = palette.base02,
					},
				},
			},
			diagnostic = {
				error = {
					fg = palette.base08,
				},
				warn = {
					fg = palette.base0A,
				},
				info = {
					fg = palette.base0D,
				},
				hint = {
					fg = palette.base0C,
				},
				ok = {
					fg = palette.base0B,
				},
				unnecessary = {
					fg = palette.base03,
					special = {
						fg = palette.base0C,
					},
				},
			},
			nvim_tree = {
				normal = {
					bg = palette.base00,
					fg = palette.base04,
				},
				win_separator = {
					bg = main.bg,
					fg = main.bg,
				},
				folder = {
					icon = {
						fg = palette.base0A,
					},
				},
				root_folder = {
					fg = palette.base05,
				},
				git = {
					deleted = {
						fg = palette.base08,
					},
					dirty = {
						fg = palette.base0A,
					},
					ignored = {
						fg = palette.base03,
					},
					staged = {
						fg = palette.base0B,
					},
				},
				exec_file = {
					fg = palette.base0B,
				},
			},
			cmp_item_kind = {
				fg = palette.base03,
			},
			fzf = {
				normal = {
					bg = palette.baseWW,
				},
				border = {
					bg = palette.baseWW,
					fg = palette.baseWW,
				},
				preview = {
					normal = {
						bg = main.bg,
					},
				},
			},
		}

		return theme
	end,
}

return themes
