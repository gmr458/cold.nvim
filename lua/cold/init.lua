local M = {}

--- @class Config
--- @field cursorline? boolean
--- @field transparent_background? boolean
--- @field nvim_tree_darker? boolean
--- @field undercurl? boolean
--- @field italic_keyword? boolean
--- @field custom_dark_background? string
--- @field custom_light_background? string
--- @field custom_statusline_dark_background? string
M.config = {
    cursorline = vim.o.cursorline,
    transparent_background = false,
    nvim_tree_darker = false,
    undercurl = true,
    italic_keyword = false,
    custom_dark_background = nil,
    custom_light_background = nil,
    custom_statusline_dark_background = nil,
}

local path_compiled_files =
    string.format('%s%s', vim.fn.stdpath 'cache', '/cold')
local path_sep = jit and (jit.os == 'Windows' and '\\' or '/')
    or package.config:sub(1, 1)

--- @overload fun(config?: Config)
function M.setup(config)
    M.config = vim.tbl_deep_extend('force', M.config, config or {})
end

function M.load()
    local dark_compiled =
        string.format('%s%s%s', path_compiled_files, path_sep, 'dark')
    if not vim.loop.fs_stat(dark_compiled) then
        local palette = require 'cold.palette'
        local theme = require('cold.themes').dark(palette, M.config)
        M.compile(theme, 'dark')
    end

    local light_compiled =
        string.format('%s%s%s', path_compiled_files, path_sep, 'light')
    if not vim.loop.fs_stat(light_compiled) then
        local palette = require 'cold.palette'
        local theme = require('cold.themes').light(palette, M.config)
        M.compile(theme, 'light')
    end

    local path_compiled =
        string.format('%s%s%s', path_compiled_files, path_sep, vim.o.background)
    local f =
        assert(loadfile(path_compiled), '[cold.nvim] could not load cache')
    f()
end

--- @param theme ThemeDark | ThemeLight
--- @param filename_compiled_colorscheme string
function M.compile(theme, filename_compiled_colorscheme)
    local lines = {
        string.format(
            [[
return string.dump(function()
vim.o.termguicolors=true
if vim.g.colors_name then vim.cmd "hi clear" end
vim.g.colors_name="cold"
vim.o.background="%s"
local h=vim.api.nvim_set_hl]],
            filename_compiled_colorscheme
        ),
    }

    if path_sep == '\\' then
        path_compiled_files = path_compiled_files:gsub('/', '\\')
    end

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

    if vim.fn.isdirectory(path_compiled_files) == 0 then
        vim.fn.mkdir(path_compiled_files, 'p')
    end

    local f = loadstring(table.concat(lines, '\n'))
    if not f then
        local err_path = (path_sep == '/' and '/tmp' or os.getenv 'TMP')
            .. '/cold.lua'
        print(
            string.format('[cold.nvim] error, open %s for debugging', err_path)
        )
        local err = io.open(err_path, 'wb')
        if err then
            err:write(table.concat(lines, '\n'))
            err:close()
        end
        return
    end

    local err_msg = string.format(
        '[cold.nvim] permission denied while writing compiled file to %s%s%s',
        path_compiled_files,
        path_sep,
        filename_compiled_colorscheme
    )
    local file = assert(
        io.open(
            path_compiled_files .. path_sep .. filename_compiled_colorscheme,
            'wb'
        ),
        err_msg
    )
    file:write(f())
    file:close()
end

vim.api.nvim_create_user_command('ColdCompile', function()
    local palette = require 'cold.palette'

    local dark_theme = require('cold.themes').dark(palette, M.config)
    M.compile(dark_theme, 'dark')

    local light_theme = require('cold.themes').light(palette, M.config)
    M.compile(light_theme, 'light')

    vim.notify '[cold.nvim] colorscheme compiled'
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
