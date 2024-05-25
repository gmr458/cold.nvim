local M = {}

--- @class Config
M.config = {
    cursorline = vim.o.cursorline,
    transparent_background = false,
    nvim_tree_darker = false,
    undercurl = true,
    italic_string = false,
    italic_keyword = false,
    italic_type = {
        normal = false,
        builtin = false,
        definition = false,
    },
    italic_constant = {
        builtin = false,
    },
    italic_function = {
        declaration = false,
        call = false,
        method = {
            declaration = false,
            call = false,
        },
    },
    custom_dark_background = nil,
    custom_light_background = nil,
    custom_statusline_dark_background = nil,
}

--- @overload fun(config?: Config)
function M.setup(config)
    M.config = vim.tbl_deep_extend('force', M.config, config or {})
end

--- @param theme ThemeDark | ThemeLight
--- @param background 'dark' | 'light'
function M.compile(theme, background)
    local lines = {
        string.format(
            [[
return string.dump(function()
vim.o.termguicolors=true
if vim.g.colors_name then vim.cmd "hi clear" end
vim.g.colors_name="cold"
vim.o.background="%s"
local h=vim.api.nvim_set_hl]],
            background
        ),
    }

    local hgs = require('cold.hlgroups').get(theme)
    for group, color in pairs(hgs) do
        table.insert(
            lines,
            string.format(
                [[h(0,"%s",%s)]],
                group,
                vim.inspect(color, { newline = '', indent = '' })
            )
        )
    end
    table.insert(lines, 'end,true)')

    local cold_cache_dir = vim.fn.stdpath 'cache' .. '/cold/'

    if vim.fn.isdirectory(cold_cache_dir) == 0 then
        vim.fn.mkdir(cold_cache_dir, 'p')
    end

    local f = loadstring(table.concat(lines, '\n'))
    if not f then
        local path_debug_file = vim.fn.stdpath 'state' .. '/cold-debug.lua'

        local msg = string.format(
            '[cold.nvim] error, open %s for debugging',
            path_debug_file
        )
        vim.notify(msg, vim.log.levels.ERROR)

        local debug_file = io.open(path_debug_file, 'wb')
        if debug_file then
            debug_file:write(table.concat(lines, '\n'))
            debug_file:close()
        end
        return
    end

    local file = io.open(cold_cache_dir .. background, 'wb')
    if file then
        file:write(f())
        file:close()
    else
        vim.notify(
            '[cold.nvim] error trying to open cache file',
            vim.log.levels.ERROR
        )
    end
end

--- @param background 'dark'|'light'
local function compile_if_not_exist(background)
    local compiled = vim.fn.stdpath 'cache' .. '/cold/' .. background
    if vim.fn.filereadable(compiled) == 0 then
        local palette = require 'cold.palette'
        local theme = require('cold.themes')[background](palette, M.config)
        M.compile(theme, background)
    end
end

function M.load()
    compile_if_not_exist 'dark'
    compile_if_not_exist 'light'

    local cache = vim.fn.stdpath 'cache' .. '/cold/' .. vim.o.background
    local f = loadfile(cache)
    if f ~= nil then
        f()
    else
        vim.notify(
            '[cold.nvim] error trying to load cache file',
            vim.log.levels.ERROR
        )
    end
end

vim.api.nvim_create_user_command('ColdCompile', function()
    local palette = require 'cold.palette'

    local dark_theme = require('cold.themes').dark(palette, M.config)
    M.compile(dark_theme, 'dark')

    local light_theme = require('cold.themes').light(palette, M.config)
    M.compile(light_theme, 'light')

    vim.notify('[cold.nvim] colorscheme compiled', vim.log.levels.INFO)
    vim.cmd.colorscheme 'cold'
end, {})

function M.term_supports_undercurl()
    local term = os.getenv 'TERM'

    local terminals = {
        ['alacritty'] = true,
        ['wezterm'] = true,
        ['foot'] = false,
        ['xterm-256color'] = true,
        ['xterm-kitty'] = true,
    }

    return terminals[term]
end

return M
