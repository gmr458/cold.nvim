local M = {}

--- @class ColdConfig
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

--- @param theme_dark ColdThemeDark
--- @param theme_light ColdThemeLight
--- @return string
local function generate_lines(theme_dark, theme_light)
    local lines = {
        string.format [[return string.dump(function()
vim.cmd.highlight('clear')
vim.g.colors_name="cold"
local h=vim.api.nvim_set_hl
vim.opt.termguicolors=true]],
    }

    table.insert(lines, 'if vim.o.background == \'dark\' then')
    local hgs_dark = require('cold.hlgroups').get(theme_dark)
    for group, color in pairs(hgs_dark) do
        table.insert(
            lines,
            string.format(
                [[h(0,"%s",%s)]],
                group,
                vim.inspect(color, { newline = '', indent = '' })
            )
        )
    end

    table.insert(lines, 'else')

    local hgs_light = require('cold.hlgroups').get(theme_light)
    for group, color in pairs(hgs_light) do
        table.insert(
            lines,
            string.format(
                [[h(0,"%s",%s)]],
                group,
                vim.inspect(color, { newline = '', indent = '' })
            )
        )
    end
    table.insert(lines, 'end')

    table.insert(lines, 'end,true)')

    return table.concat(lines, '\n')
end

--- @overload fun(config?: ColdConfig)
function M.setup(config)
    M.config = vim.tbl_deep_extend('force', M.config, config or {})
end

--- @param theme_dark ColdThemeDark
--- @param theme_light ColdThemeLight
function M.compile(theme_dark, theme_light)
    local cold_cache_dir = vim.fn.stdpath 'cache' .. '/cold/'

    if vim.fn.isdirectory(cold_cache_dir) == 0 then
        vim.fn.mkdir(cold_cache_dir, 'p')
    end

    local concataned_lines = generate_lines(theme_dark, theme_light)
    local f = loadstring(concataned_lines)
    if not f then
        local path_debug_file = vim.fn.stdpath 'state' .. '/cold-debug.lua'

        local msg = string.format(
            '[cold.nvim] error, open %s for debugging',
            path_debug_file
        )
        vim.notify(msg, vim.log.levels.ERROR)

        local debug_file = io.open(path_debug_file, 'wb')
        if debug_file then
            debug_file:write(concataned_lines)
            debug_file:close()
        end
        return
    end

    local file = io.open(cold_cache_dir .. '/cache', 'wb')
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

local function compile_if_not_exist()
    local compiled = vim.fn.stdpath 'cache' .. '/cold/cache'
    if vim.fn.filereadable(compiled) == 0 then
        local palette = require 'cold.palette'

        local theme_dark = require('cold.themes').dark(palette, M.config)
        local theme_light = require('cold.themes').light(palette, M.config)

        M.compile(theme_dark, theme_light)
    end
end

function M.load()
    compile_if_not_exist()

    local cache = vim.fn.stdpath 'cache' .. '/cold/cache'
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

    local theme_dark = require('cold.themes').dark(palette, M.config)
    local theme_light = require('cold.themes').light(palette, M.config)

    M.compile(theme_dark, theme_light)

    vim.notify('[cold.nvim] colorscheme compiled', vim.log.levels.INFO)
    vim.cmd.colorscheme 'cold'
end, {})

--- @param theme_dark ColdThemeDark
--- @param theme_light ColdThemeLight
--- @param path string
function M.generate_colorscheme_file(theme_dark, theme_light, path)
    local concataned_lines = generate_lines(theme_dark, theme_light)

    local file = io.open(path, 'wb')
    if file then
        file:write(concataned_lines)
        file:close()
    else
        vim.notify(
            '[cold.nvim] error trying to generate colorscheme file',
            vim.log.levels.ERROR
        )
    end
end

vim.api.nvim_create_user_command('ColdColorschemeFile', function()
    local palette = require 'cold.palette'

    local theme_dark = require('cold.themes').dark(palette, M.config)
    local theme_light = require('cold.themes').light(palette, M.config)

    local cold_state_dir = vim.fn.stdpath 'state' .. '/cold'
    if vim.fn.isdirectory(cold_state_dir) == 0 then
        vim.fn.mkdir(cold_state_dir, 'p')
    end

    local path = cold_state_dir .. '/cold.lua'
    M.generate_colorscheme_file(theme_dark, theme_light, path)

    local msg = string.format('[cold.nvim] colorscheme file generated at %s', path)
    vim.notify(msg, vim.log.levels.INFO)
end, {})

return M
