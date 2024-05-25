--- @class Themes
local themes = {
    --- @param palette Palette
    --- @param config Config
    --- @return ThemeDark
    dark = function(palette, config)
        local main = {
            bg = palette.dark_01,
            fg = palette.light_01,
        }

        if
            config.custom_dark_background ~= nil
            and type(config.custom_dark_background) == 'string'
        then
            main.bg = config.custom_dark_background
        end

        if config.transparent_background then
            main.bg = palette.none
        end

        --- @class ThemeDark
        local theme = {
            bg = main.bg,
            fg = main.fg,
            editor = {
                color_column = {
                    bg = palette.grey_02,
                },
                conceal = {
                    fg = palette.grey_02,
                },
                cursor = {
                    bg = main.fg,
                    fg = main.bg,
                    search = {
                        bg = palette.grey_01,
                    },
                    column = {
                        bg = palette.dark_05,
                    },
                    line = {
                        bg = palette.dark_03,
                        nr = {
                            bg = config.cursorline and palette.dark_03
                                or main.bg,
                            fg = main.fg,
                        },
                    },
                },
                match_paren = {
                    bg = palette.grey_01,
                },
                directory = {
                    fg = palette.blue_02,
                },
                diff = {
                    add = {
                        bg = palette.green_01,
                    },
                    change = {
                        bg = palette.yellow_01,
                    },
                    delete = {
                        bg = palette.red_01,
                    },
                    text = {
                        bg = palette.green_01,
                    },
                },
                folded = {
                    bg = palette.grey_01,
                },
                line_nr = {
                    bg = main.bg,
                    fg = palette.grey_02,
                },
                msg = {
                    error = {
                        fg = palette.red_03,
                    },
                    mode = {
                        fg = palette.green_05,
                    },
                    warning = {
                        fg = palette.yellow_03,
                    },
                },
                non_text = {
                    fg = palette.grey_01,
                },
                float = {
                    bg = main.bg,
                    border = {
                        bg = main.bg,
                        fg = palette.grey_02,
                    },
                },
                pmenu = {
                    bg = palette.dark_04,
                    fg = palette.grey_03,
                    sel = {
                        bg = palette.dark_05,
                        fg = palette.light_02,
                    },
                    sbar = {
                        bg = palette.dark_04,
                    },
                    thumb = {
                        bg = palette.grey_02,
                    },
                },
                search = {
                    bg = palette.grey_01,
                },
                spell = {
                    bad = {
                        fg = palette.red_03,
                    },
                    cap = {
                        fg = palette.yellow_03,
                    },
                    local_ = {
                        fg = palette.green_05,
                    },
                    rare = {
                        fg = palette.blue_04,
                    },
                },
                status_line = {
                    bg = palette.dark_02,
                    fg = palette.grey_08,
                    medium = {
                        bg = palette.dark_03,
                        fg = palette.grey_04,
                        git = {
                            added = {
                                fg = palette.green_05,
                            },
                            changed = {
                                fg = palette.yellow_03,
                            },
                            removed = {
                                fg = palette.red_03,
                            },
                        },
                    },
                    mode = {
                        bg = palette.green_05,
                        fg = palette.dark_02,
                    },
                    lsp = {
                        active = {
                            fg = palette.green_05,
                        },
                    },
                    icon = {
                        git = {
                            fg = palette.orange_02,
                        },
                        unsaved = {
                            fg = palette.yellow_03,
                        },
                    },
                },
                title = {
                    fg = palette.light_02,
                },
                visual = {
                    bg = palette.grey_01,
                },
                win = {
                    bar = {
                        unsaved_symbol = {
                            bg = main.bg,
                            fg = palette.yellow_03,
                        },
                    },
                    separator = {
                        bg = main.bg,
                        fg = palette.grey_02,
                    },
                },
            },
            syntax = {
                comment = {
                    fg = palette.grey_02,
                },
                constant = {
                    fg = palette.light_01,
                    italic = {
                        builtin = config.italic_constant.builtin,
                    },
                },
                string = {
                    fg = palette.green_05,
                    italic = config.italic_string,
                },
                character = {
                    fg = palette.blue_03,
                },
                number = {
                    fg = palette.light_02,
                },
                boolean = {
                    fg = palette.blue_02,
                },
                identifier = {
                    fg = palette.light_01,
                },
                function_ = {
                    fg = palette.purple_03,
                    italic = {
                        declaration = config.italic_function.declaration,
                        call = config.italic_function.call,
                        method = {
                            declaration = config.italic_function.method.declaration,
                            call = config.italic_function.method.call,
                        },
                    },
                },
                keyword = {
                    fg = palette.blue_02,
                    italic = config.italic_keyword,
                },
                operator = {
                    fg = palette.grey_08,
                },
                type = {
                    fg = palette.grey_07,
                    italic = {
                        normal = config.italic_type.normal,
                        builtin = config.italic_type.builtin,
                        definition = config.italic_type.definition,
                    },
                },
                special = {
                    fg = palette.blue_02,
                },
                delimiter = {
                    fg = palette.grey_05,
                },
                underlined = {
                    underline = true,
                },
                error = {
                    bg = palette.red_03,
                },
                todo = {
                    bg = palette.pink_01,
                },
                added = {
                    fg = palette.light_02,
                    bg = palette.green_05,
                },
                changed = {
                    fg = palette.light_02,
                    bg = palette.orange_02,
                },
                removed = {
                    fg = palette.light_02,
                    bg = palette.red_03,
                },
            },
            git = {
                added = {
                    fg = palette.green_05,
                    inline = {
                        bg = palette.green_02,
                    },
                },
                changed = {
                    fg = palette.yellow_03,
                    inline = {
                        bg = palette.green_02,
                    },
                },
                removed = {
                    fg = palette.red_03,
                    inline = {
                        bg = palette.red_02,
                    },
                },
            },
            treesitter = {
                tag = {
                    delimiter = {
                        fg = palette.grey_02,
                    },
                },
                context = {
                    bg = palette.dark_05,
                    line_number = {
                        bg = palette.dark_05,
                    },
                },
            },
            lsp = {
                reference = {
                    text = {
                        bg = palette.grey_01,
                    },
                    read = {
                        bg = palette.grey_01,
                    },
                    write = {
                        bg = palette.grey_01,
                    },
                },
            },
            diagnostic = {
                error = {
                    fg = palette.red_03,
                },
                warn = {
                    fg = palette.yellow_03,
                },
                info = {
                    fg = palette.blue_02,
                },
                hint = {
                    fg = palette.blue_04,
                },
                ok = {
                    fg = palette.green_05,
                },
                unnecessary = {
                    fg = palette.grey_02,
                    special = {
                        fg = palette.blue_04,
                    },
                },
            },
            nvim_tree = {
                normal = {
                    bg = config.transparent_background and palette.none
                        or palette.dark_03,
                    fg = palette.grey_08,
                },
                win_separator = {
                    bg = main.bg,
                    fg = main.bg,
                },
                folder = {
                    icon = {
                        fg = palette.yellow_03,
                    },
                },
                root_folder = {
                    fg = palette.light_02,
                },
                git = {
                    deleted = {
                        fg = palette.red_03,
                    },
                    dirty = {
                        fg = palette.yellow_03,
                    },
                    ignored = {
                        fg = palette.grey_02,
                    },
                    staged = {
                        fg = palette.green_05,
                    },
                },
                exec_file = {
                    fg = palette.green_05,
                },
            },
            cmp_item = {
                abbr = {
                    fg = palette.grey_01,
                },
                kind = {

                    fg = palette.grey_02,
                },
            },
            fzf = {
                normal = {
                    bg = palette.dark_04,
                },
                border = {
                    bg = palette.dark_04,
                    fg = palette.dark_04,
                },
                preview = {
                    normal = {
                        bg = main.bg,
                    },
                },
            },
            alpha = {
                header = {
                    fg = palette.green_05,
                },
            },
            grapple = {
                normal = {
                    bg = palette.dark_02,
                },
                border = {
                    bg = palette.dark_02,
                    fg = palette.dark_02,
                },
                title = {
                    bg = palette.green_05,
                    fg = palette.dark_02,
                },
                footer = {
                    bg = palette.dark_03,
                    fg = palette.grey_04,
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
            bg = palette.light_04,
            fg = palette.dark_02,
        }

        if
            config.custom_light_background ~= nil
            and type(config.custom_light_background) == 'string'
        then
            main.bg = config.custom_light_background
        end

        if config.transparent_background then
            main.bg = 'NONE'
        end

        --- @class ThemeLight
        local theme = {
            bg = main.bg,
            fg = main.fg,
            editor = {
                color_column = {
                    bg = palette.grey_05,
                },
                conceal = {
                    fg = palette.grey_01,
                },
                cursor = {
                    bg = main.fg,
                    fg = main.bg,
                    search = {
                        bg = palette.light_01,
                    },
                    column = {
                        bg = palette.dark_05,
                    },
                    line = {
                        bg = palette.light_03,
                        nr = {
                            bg = config.cursorline and palette.light_03
                                or main.bg,
                            fg = main.fg,
                        },
                    },
                },
                match_paren = {
                    bg = palette.light_01,
                },
                directory = {
                    fg = palette.blue_01,
                },
                diff = {
                    add = {
                        bg = palette.green_07,
                    },
                    change = {
                        bg = palette.yellow_03,
                    },
                    delete = {
                        bg = palette.red_05,
                    },
                    text = {
                        bg = palette.green_07,
                    },
                },
                folded = {
                    bg = palette.grey_01,
                },
                line_nr = {
                    bg = main.bg,
                    fg = palette.grey_05,
                },
                msg = {
                    error = {
                        fg = palette.red_03,
                    },
                    mode = {
                        fg = palette.green_05,
                    },
                    warning = {
                        fg = palette.yellow_02,
                    },
                },
                non_text = {
                    fg = palette.grey_08,
                },
                float = {
                    bg = main.bg,
                    border = {
                        bg = main.bg,
                        fg = palette.grey_02,
                    },
                },
                pmenu = {
                    bg = palette.grey_08,
                    fg = palette.grey_04,
                    sel = {
                        bg = palette.light_01,
                        fg = palette.dark_03,
                    },
                    sbar = {
                        bg = palette.dark_04,
                    },
                    thumb = {
                        bg = palette.grey_02,
                    },
                },
                search = {
                    bg = palette.light_01,
                },
                spell = {
                    bad = {
                        fg = palette.red_03,
                    },
                    cap = {
                        fg = palette.yellow_03,
                    },
                    local_ = {
                        fg = palette.green_05,
                    },
                    rare = {
                        fg = palette.blue_04,
                    },
                },
                status_line = {
                    bg = palette.light_01,
                    fg = palette.grey_01,
                    medium = {
                        bg = palette.grey_08,
                        fg = palette.grey_01,
                        git = {
                            added = {
                                fg = palette.green_02,
                            },
                            changed = {
                                fg = palette.yellow_02,
                            },
                            removed = {
                                fg = palette.red_03,
                            },
                        },
                    },
                    mode = {
                        bg = palette.green_05,
                        fg = palette.dark_02,
                    },
                    lsp = {
                        active = {
                            fg = palette.green_04,
                        },
                    },
                    icon = {
                        git = {
                            fg = palette.orange_01,
                        },
                        unsaved = {
                            fg = palette.yellow_02,
                        },
                    },
                },
                title = {
                    fg = palette.dark_02,
                },
                visual = {
                    bg = palette.light_01,
                },
                win = {
                    bar = {
                        unsaved_symbol = {
                            bg = main.bg,
                            fg = palette.yellow_03,
                        },
                    },
                    separator = {
                        bg = main.bg,
                        fg = palette.grey_02,
                    },
                },
            },
            syntax = {
                comment = {
                    fg = palette.grey_03,
                },
                constant = {
                    fg = palette.light_01,
                    italic = {
                        builtin = config.italic_constant.builtin,
                    },
                },
                string = {
                    fg = palette.green_03,
                    italic = config.italic_string,
                },
                character = {
                    fg = palette.blue_03,
                },
                number = {
                    fg = palette.dark_04,
                },
                boolean = {
                    fg = palette.blue_01,
                },
                identifier = {
                    fg = palette.dark_02,
                },
                function_ = {
                    fg = palette.purple_01,
                    italic = {
                        declaration = config.italic_function.declaration,
                        call = config.italic_function.call,
                        method = {
                            declaration = config.italic_function.method.declaration,
                            call = config.italic_function.method.call,
                        },
                    },
                },
                keyword = {
                    fg = palette.blue_01,
                },
                operator = {
                    fg = palette.grey_08,
                },
                type = {
                    fg = palette.grey_01,
                    italic = {
                        normal = config.italic_type.normal,
                        builtin = config.italic_type.builtin,
                        definition = config.italic_type.definition,
                    },
                },
                special = {
                    fg = palette.blue_01,
                },
                delimiter = {
                    fg = palette.grey_05,
                },
                underlined = {
                    underline = true,
                },
                error = {
                    bg = palette.red_03,
                },
                todo = {
                    bg = palette.pink_01,
                },
                added = {
                    fg = palette.light_02,
                    bg = palette.green_05,
                },
                changed = {
                    fg = palette.light_02,
                    bg = palette.orange_02,
                },
                removed = {
                    fg = palette.light_02,
                    bg = palette.red_03,
                },
            },
            git = {
                added = {
                    fg = palette.green_05,
                    inline = {
                        bg = palette.green_06,
                    },
                },
                changed = {
                    fg = palette.yellow_03,
                    inline = {
                        bg = palette.green_06,
                    },
                },
                removed = {
                    fg = palette.red_03,
                    inline = {
                        bg = palette.red_04,
                    },
                },
            },
            treesitter = {
                tag = {
                    delimiter = {
                        fg = palette.grey_02,
                    },
                },
                context = {
                    bg = palette.light_01,
                    line_number = {
                        bg = palette.light_01,
                    },
                },
            },
            lsp = {
                reference = {
                    text = {
                        bg = palette.light_01,
                    },
                    read = {
                        bg = palette.light_01,
                    },
                    write = {
                        bg = palette.light_01,
                    },
                },
            },
            diagnostic = {
                error = {
                    fg = palette.red_03,
                },
                warn = {
                    fg = palette.yellow_02,
                },
                info = {
                    fg = palette.blue_01,
                },
                hint = {
                    fg = palette.blue_04,
                },
                ok = {
                    fg = palette.green_04,
                },
                unnecessary = {
                    fg = palette.grey_02,
                    special = {
                        fg = palette.blue_04,
                    },
                },
            },
            nvim_tree = {
                normal = {
                    bg = config.transparent_background and palette.none
                        or palette.light_02,
                    fg = palette.dark_04,
                },
                win_separator = {
                    bg = main.bg,
                    fg = main.bg,
                },
                folder = {
                    icon = {
                        fg = palette.yellow_02,
                    },
                },
                root_folder = {
                    fg = palette.light_02,
                },
                git = {
                    deleted = {
                        fg = palette.red_03,
                    },
                    dirty = {
                        fg = palette.yellow_02,
                    },
                    ignored = {
                        fg = palette.grey_02,
                    },
                    staged = {
                        fg = palette.green_04,
                    },
                },
                exec_file = {
                    fg = palette.green_04,
                },
            },
            cmp_item = {
                abbr = {
                    fg = palette.grey_07,
                },
                kind = {
                    fg = palette.grey_02,
                },
            },
            fzf = {
                normal = {
                    bg = palette.light_01,
                },
                border = {
                    bg = palette.light_01,
                    fg = palette.light_01,
                },
                preview = {
                    normal = {
                        bg = main.bg,
                    },
                },
            },
            alpha = {
                header = {
                    fg = palette.green_05,
                },
            },
            grapple = {
                normal = {
                    bg = palette.light_01,
                },
                border = {
                    bg = palette.light_01,
                    fg = palette.light_01,
                },
                title = {
                    bg = palette.green_05,
                    fg = palette.dark_02,
                },
                footer = {
                    bg = palette.grey_08,
                    fg = palette.grey_01,
                },
            },
        }

        return theme
    end,
}

return themes
