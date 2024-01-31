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

        if
            config.custom_dark_background ~= nil
            and type(config.custom_dark_background) == 'string'
        then
            main.bg = config.custom_dark_background
        end

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
                            bg = config.cursorline and palette.base01
                                or main.bg,
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
                        bg = palette.greenDiffDark,
                    },
                    change = {
                        bg = palette.base0Adarker,
                    },
                    delete = {
                        bg = palette.redDiffDark,
                    },
                    text = {
                        bg = palette.greenDiffDark,
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
                    bg = main.bg,
                    border = {
                        bg = main.bg,
                        fg = palette.base03,
                    },
                },
                pmenu = {
                    bg = palette.baseWW,
                    fg = palette.baseEEL,
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
                    fg = palette.baseTT,
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
            git = {
                added = {
                    fg = palette.base0B,
                    inline = {
                        bg = palette.greenDiffInlineDark,
                    },
                },
                changed = {
                    fg = palette.base0A,
                    inline = {
                        bg = palette.greenDiffInlineDark,
                    },
                },
                removed = {
                    fg = palette.base08,
                    inline = {
                        bg = palette.redDiffInlineDark,
                    },
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
            cmp_item = {
                abbr = {
                    fg = palette.base02,
                },
                kind = {

                    fg = palette.base03,
                },
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
            alpha = {
                header = {
                    fg = palette.base0B,
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

        if
            config.custom_light_background ~= nil
            and type(config.custom_light_background) == 'string'
        then
            main.bg = config.custom_light_background
        end

        --- @class ThemeLight
        local theme = {
            bg = main.bg,
            fg = main.fg,
            editor = {
                color_column = {
                    bg = palette.baseEE,
                },
                conceal = {
                    fg = palette.base02,
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
                        bg = palette.base05,
                        nr = {
                            bg = config.cursorline and palette.base05
                                or main.bg,
                            fg = main.fg,
                        },
                    },
                },
                match_paren = {
                    bg = palette.baseRR,
                },
                directory = {
                    fg = palette.base0DL,
                },
                diff = {
                    add = {
                        bg = palette.greenDiffLight,
                    },
                    change = {
                        bg = palette.base0A,
                    },
                    delete = {
                        bg = palette.redDiffLight,
                    },
                    text = {
                        bg = palette.greenDiffLight,
                    },
                },
                folded = {
                    bg = palette.base02,
                },
                line_nr = {
                    bg = main.bg,
                    fg = palette.baseEE,
                },
                msg = {
                    error = {
                        fg = palette.base08L,
                    },
                    mode = {
                        fg = palette.base0B,
                    },
                    warning = {
                        fg = palette.base0AL,
                    },
                },
                non_text = {
                    fg = palette.base04,
                },
                float = {
                    bg = main.bg,
                    border = {
                        bg = main.bg,
                        fg = palette.base03,
                    },
                },
                pmenu = {
                    bg = palette.base04,
                    fg = palette.baseZZ,
                    sel = {
                        bg = palette.baseRR,
                        fg = palette.base00,
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
                    bg = palette.baseRR,
                    fg = palette.base02,
                    medium = {
                        bg = palette.base04,
                        fg = palette.base02,
                    },
                    mode = {
                        bg = palette.base0B,
                        fg = palette.baseXX,
                    },
                    lsp = {
                        active = {
                            fg = palette.base0BL,
                        },
                    },
                    icon = {
                        git = {
                            fg = palette.base09L,
                        },
                        unsaved = {
                            fg = palette.base0AL,
                        },
                    },
                },
                title = {
                    fg = palette.baseXX,
                },
                visual = {
                    bg = palette.baseRR,
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
                    fg = palette.baseTY,
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
                    fg = palette.baseWW,
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
            git = {
                added = {
                    fg = palette.base0B,
                    inline = {
                        bg = palette.greenDiffInlineLight,
                    },
                },
                changed = {
                    fg = palette.base0A,
                    inline = {
                        bg = palette.greenDiffInlineLight,
                    },
                },
                removed = {
                    fg = palette.base08,
                    inline = {
                        bg = palette.redDiffInlineLight,
                    },
                },
            },
            treesitter = {
                tag = {
                    delimiter = {
                        fg = palette.base03,
                    },
                },
                context = {
                    bg = palette.baseRR,
                    line_number = {
                        bg = palette.baseRR,
                    },
                },
            },
            lsp = {
                reference = {
                    text = {
                        bg = palette.baseRR,
                    },
                    read = {
                        bg = palette.baseRR,
                    },
                    write = {
                        bg = palette.baseRR,
                    },
                },
            },
            diagnostic = {
                error = {
                    fg = palette.base08L,
                },
                warn = {
                    fg = palette.base0AL,
                },
                info = {
                    fg = palette.base0DL,
                },
                hint = {
                    fg = palette.base0CL,
                },
                ok = {
                    fg = palette.base0BL,
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
                    bg = palette.base05,
                    fg = palette.baseWW,
                },
                win_separator = {
                    bg = main.bg,
                    fg = main.bg,
                },
                folder = {
                    icon = {
                        fg = palette.base0AL,
                    },
                },
                root_folder = {
                    fg = palette.base05,
                },
                git = {
                    deleted = {
                        fg = palette.base08L,
                    },
                    dirty = {
                        fg = palette.base0AL,
                    },
                    ignored = {
                        fg = palette.base03,
                    },
                    staged = {
                        fg = palette.base0BL,
                    },
                },
                exec_file = {
                    fg = palette.base0BL,
                },
            },
            cmp_item = {
                abbr = {
                    fg = palette.baseTT,
                },
                kind = {
                    fg = palette.base03,
                },
            },
            fzf = {
                normal = {
                    bg = palette.baseRR,
                },
                border = {
                    bg = palette.baseRR,
                    fg = palette.baseRR,
                },
                preview = {
                    normal = {
                        bg = main.bg,
                    },
                },
            },
            alpha = {
                header = {
                    fg = palette.base0B,
                },
            },
        }

        return theme
    end,
}

return themes
