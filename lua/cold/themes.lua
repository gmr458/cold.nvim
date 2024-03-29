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
                        fg = palette.green_04,
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
                        fg = palette.green_04,
                    },
                    rare = {
                        fg = palette.blue_04,
                    },
                },
                status_line = {
                    bg = palette.dark_02,
                    fg = palette.grey_07,
                    medium = {
                        bg = palette.dark_03,
                        fg = palette.grey_04,
                    },
                    mode = {
                        bg = palette.green_04,
                        fg = palette.dark_02,
                    },
                    lsp = {
                        active = {
                            fg = palette.green_04,
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
                },
                string = {
                    fg = palette.green_04,
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
                },
                keyword = {
                    fg = palette.blue_02,
                },
                operator = {
                    fg = palette.grey_07,
                },
                type = {
                    fg = palette.grey_06,
                },
                special = {
                    fg = palette.blue_03,
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
                    bg = palette.green_04,
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
                    fg = palette.green_04,
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
                        or palette.dark_03,
                    fg = palette.grey_07,
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
                        fg = palette.green_04,
                    },
                },
                exec_file = {
                    fg = palette.green_04,
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
                    fg = palette.green_04,
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
                        bg = palette.green_06,
                    },
                    change = {
                        bg = palette.yellow_03,
                    },
                    delete = {
                        bg = palette.red_05,
                    },
                    text = {
                        bg = palette.green_06,
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
                        fg = palette.green_04,
                    },
                    warning = {
                        fg = palette.yellow_02,
                    },
                },
                non_text = {
                    fg = palette.grey_07,
                },
                float = {
                    bg = main.bg,
                    border = {
                        bg = main.bg,
                        fg = palette.grey_02,
                    },
                },
                pmenu = {
                    bg = palette.grey_07,
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
                        fg = palette.green_04,
                    },
                    rare = {
                        fg = palette.blue_04,
                    },
                },
                status_line = {
                    bg = palette.light_01,
                    fg = palette.grey_01,
                    medium = {
                        bg = palette.grey_07,
                        fg = palette.grey_01,
                    },
                    mode = {
                        bg = palette.green_04,
                        fg = palette.dark_02,
                    },
                    lsp = {
                        active = {
                            fg = palette.green_03,
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
                    fg = palette.purple_02,
                },
                constant = {
                    fg = palette.light_01,
                },
                string = {
                    fg = palette.green_03,
                },
                character = {
                    fg = palette.blue_03,
                },
                number = {
                    fg = palette.dark_04,
                },
                boolean = {
                    fg = palette.blue_02,
                },
                identifier = {
                    fg = palette.dark_02,
                },
                function_ = {
                    fg = palette.purple_01,
                },
                keyword = {
                    fg = palette.blue_01,
                },
                operator = {
                    fg = palette.grey_07,
                },
                type = {
                    fg = palette.grey_03,
                },
                special = {
                    fg = palette.blue_03,
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
                    bg = palette.green_04,
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
                    fg = palette.green_04,
                    inline = {
                        bg = palette.green_05,
                    },
                },
                changed = {
                    fg = palette.yellow_03,
                    inline = {
                        bg = palette.green_05,
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
                    fg = palette.green_03,
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
                        fg = palette.green_03,
                    },
                },
                exec_file = {
                    fg = palette.green_03,
                },
            },
            cmp_item = {
                abbr = {
                    fg = palette.grey_06,
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
                    fg = palette.green_04,
                },
            },
        }

        return theme
    end,
}

return themes
