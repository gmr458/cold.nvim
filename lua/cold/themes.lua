--- @class Themes
local themes = {
    --- @param palette ColdPalette
    --- @param config ColdConfig
    --- @return ColdThemeDark
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

        --- @class ColdThemeDark
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
                        bg = palette.brown_01,
                    },
                    column = {
                        bg = palette.dark_06,
                    },
                    line = {
                        bg = config.cursorline and palette.dark_03 or main.bg,
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
                    fg = palette.blue_03,
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
                    bg = palette.blue_01,
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
                    bg = config.float_borderless and palette.dark_03 or main.bg,
                    border = {
                        bg = config.float_borderless and palette.dark_03
                            or main.bg,
                        fg = config.float_borderless and palette.dark_03
                            or palette.grey_02,
                    },
                },
                pmenu = {
                    bg = palette.dark_04,
                    fg = palette.grey_03,
                    sel = {
                        bg = palette.dark_06,
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
                    bg = palette.brown_01,
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
                        fg = palette.blue_05,
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
                        bg = palette.green_04,
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
                    bg = palette.dark_05,
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
                completion = {
                    menu = {
                        bg = config.float_borderless and palette.dark_03
                            or main.bg,
                    },
                    border = {
                        bg = config.float_borderless and palette.dark_03
                            or main.bg,
                        fg = config.float_borderless and palette.dark_03
                            or palette.grey_02,
                    },
                    doc = {
                        bg = config.float_borderless and palette.dark_04
                            or main.bg,
                        separator = {
                            bg = config.float_borderless and palette.dark_04
                                or main.bg,
                            fg = palette.grey_02,
                        },
                        border = {
                            bg = config.float_borderless and palette.dark_04
                                or main.bg,
                            fg = config.float_borderless and palette.dark_04
                                or palette.grey_02,
                        },
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
                    fg = palette.blue_04,
                },
                number = {
                    fg = palette.light_02,
                },
                boolean = {
                    fg = palette.blue_03,
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
                    fg = palette.blue_03,
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
                    bg = config.treesitter_context_bg and palette.dark_06
                        or main.bg,
                    line_number = {
                        bg = config.treesitter_context_bg and palette.dark_06
                            or main.bg,
                    },
                    bottom = {
                        underline = not config.treesitter_context_bg,
                        sp = palette.dark_06,
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
                    fg = palette.blue_03,
                },
                hint = {
                    fg = palette.blue_05,
                },
                ok = {
                    fg = palette.green_05,
                },
                unnecessary = {
                    fg = palette.grey_02,
                    special = {
                        fg = palette.blue_05,
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
                    border = {
                        bg = main.bg,
                        fg = main.bg,
                    },
                    title = {
                        bg = main.bg,
                        fg = main.bg,
                    },
                },
            },
            telescope = {
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
                    border = {
                        bg = main.bg,
                        fg = main.bg,
                    },
                    title = {
                        bg = main.bg,
                        fg = main.bg,
                    },
                },
                prompt = {
                    normal = { bg = palette.dark_03 },
                    border = {
                        bg = palette.dark_03,
                        fg = palette.dark_03,
                    },
                    title = {
                        bg = palette.dark_03,
                        fg = palette.dark_03,
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
            mini = {
                indentscope = {
                    fg = palette.dark_06,
                },
            },
            lazy = {
                button = {
                    bg = config.float_borderless and palette.dark_03 or main.bg,
                },
                progress = {
                    done = {
                        fg = palette.grey_02,
                    },
                    todo = {
                        fg = config.float_borderless and palette.dark_03
                            or main.bg,
                    },
                },
            },
            snacks = {
                picker = {
                    input = {
                        bg = palette.dark_02,
                        border = {
                            bg = palette.dark_02,
                        },
                    },
                    list = {
                        bg = palette.dark_03,
                        border = {
                            bg = palette.dark_03,
                        },
                    },
                },
            },
        }

        return theme
    end,
    --- @param palette ColdPalette
    --- @param config ColdConfig
    --- @return ColdThemeLight
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
            main.bg = palette.none
        end

        --- @class ColdThemeLight
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
                        bg = palette.yellow_03,
                    },
                    column = {
                        bg = palette.dark_06,
                    },
                    line = {
                        bg = config.cursorline and palette.light_02 or main.bg,
                        nr = {
                            bg = config.cursorline and palette.light_02
                                or main.bg,
                            fg = main.fg,
                        },
                    },
                },
                match_paren = {
                    bg = palette.light_01,
                },
                directory = {
                    fg = palette.blue_02,
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
                    bg = palette.blue_06,
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
                    bg = config.float_borderless and palette.light_02
                        or main.bg,
                    border = {
                        bg = config.float_borderless and palette.light_02
                            or main.bg,
                        fg = config.float_borderless and palette.light_02
                            or palette.grey_02,
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
                    bg = palette.yellow_03,
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
                        fg = palette.blue_05,
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
                completion = {
                    menu = {
                        bg = config.float_borderless and palette.light_02
                            or main.bg,
                    },
                    border = {
                        bg = config.float_borderless and palette.light_02
                            or main.bg,
                        fg = config.float_borderless and palette.light_02
                            or palette.grey_02,
                    },
                    doc = {
                        bg = config.float_borderless and palette.light_01
                            or main.bg,
                        separator = {
                            bg = config.float_borderless and palette.light_01
                                or main.bg,
                            fg = palette.grey_02,
                        },
                        border = {
                            bg = config.float_borderless and palette.light_01
                                or main.bg,
                            fg = config.float_borderless and palette.light_01
                                or palette.grey_02,
                        },
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
                    fg = palette.blue_04,
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
                    bg = config.treesitter_context_bg and palette.light_01
                        or main.bg,
                    line_number = {
                        bg = config.treesitter_context_bg and palette.light_01
                            or main.bg,
                    },
                    bottom = {
                        underline = not config.treesitter_context_bg,
                        sp = palette.light_01,
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
                    fg = palette.blue_02,
                },
                hint = {
                    fg = palette.blue_05,
                },
                ok = {
                    fg = palette.green_04,
                },
                unnecessary = {
                    fg = palette.grey_02,
                    special = {
                        fg = palette.blue_05,
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
                    fg = palette.grey_01,
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
                    border = {
                        bg = main.bg,
                        fg = main.bg,
                    },
                    title = {
                        bg = main.bg,
                        fg = main.bg,
                    },
                },
            },
            telescope = {
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
                    border = {
                        bg = main.bg,
                        fg = main.bg,
                    },
                    title = {
                        bg = main.bg,
                        fg = main.bg,
                    },
                },
                prompt = {
                    normal = { bg = palette.dark_03 },
                    border = {
                        bg = palette.dark_03,
                        fg = palette.dark_03,
                    },
                    title = {
                        bg = palette.dark_03,
                        fg = palette.dark_03,
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
            mini = {
                indentscope = {
                    fg = palette.light_01,
                },
            },
            lazy = {
                button = {
                    bg = config.float_borderless and palette.light_02
                        or main.bg,
                },
                progress = {
                    bg = config.float_borderless and palette.light_02
                        or main.bg,
                    done = {
                        fg = palette.blue_02,
                    },
                    todo = {
                        fg = config.float_borderless and palette.light_02
                            or main.bg,
                    },
                },
            },
            snacks = {
                picker = {
                    input = {
                        bg = palette.light_01,
                        border = {
                            bg = palette.light_01,
                        },
                    },
                    list = {
                        bg = palette.light_02,
                        border = {
                            bg = palette.light_02,
                        },
                    },
                },
            },
        }

        return theme
    end,
}

return themes
