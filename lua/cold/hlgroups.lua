local M = {}

--- @param theme ThemeDark | ThemeLight
function M.get(theme)
    return {
        -- Editor
        ['ColorColumn'] = { bg = theme.editor.color_column.bg },
        ['Conceal'] = { fg = theme.editor.conceal.fg },
        ['CurSearch'] = theme.editor.cursor.search,
        ['Cursor'] = {
            bg = theme.editor.cursor.bg,
            fg = theme.editor.cursor.fg,
        },
        -- set_hl('lCursor', { bg = '', fg = '' })
        -- set_hl('CursorIM', { bg = '', fg = '' })
        ['CursorColumn'] = { bg = theme.editor.cursor.column.bg },
        ['CursorLine'] = { bg = theme.editor.cursor.line.bg },
        ['Directory'] = { fg = theme.editor.directory.fg },
        ['DiffAdd'] = { fg = theme.editor.diff.add.fg },
        ['DiffChange'] = { fg = theme.editor.diff.change.fg },
        ['DiffDelete'] = { fg = theme.editor.diff.delete.fg },
        ['DiffText'] = { fg = theme.editor.diff.text.fg },
        -- set_hl('EndOfBuffer', { bg = '', fg = '' })
        -- set_hl('TermCursor', { bg = '', fg = '' })
        -- set_hl('TermCursorNC', { bg = '', fg = '' })
        ['ErrorMsg'] = { fg = theme.editor.msg.error.fg },
        ['WinSeparator'] = {
            bg = theme.editor.win.separator.bg,
            fg = theme.editor.win.separator.fg,
        },
        ['Folded'] = { bg = theme.editor.folded.bg },
        -- set_hl('FoldColumn', { bg = '', fg = '' })
        -- set_hl('SignColumn', { bg = '', fg = '' })
        -- set_hl('IncSearch', { bg = '', fg = '' })
        -- set_hl('Substitute', { bg = '', fg = '' })
        ['LineNr'] = {
            bg = theme.editor.line_nr.bg,
            fg = theme.editor.line_nr.fg,
        },
        -- set_hl('LineNrAbove', { bg = '', fg = '' })
        -- set_hl('LineNrBelow', { bg = '', fg = '' })
        ['CursorLineNr'] = {
            bg = theme.editor.cursor.line.nr.bg,
            fg = theme.editor.cursor.line.nr.fg,
        },
        -- set_hl('CursorLineFol', { bg = '', fg = '' })
        -- set_hl('CursorLineSig', { bg = '', fg = '' })
        ['MatchParen'] = { bg = theme.editor.match_paren.bg, underline = true },
        ['ModeMsg'] = { fg = theme.editor.msg.mode.fg },
        -- set_hl('MsgArea', { bg = '', fg = '' })
        -- set_hl('MsgSeparator', { bg = '', fg = '' })
        -- set_hl('MoreMsg', { fg = '' })
        ['NonText'] = { fg = theme.editor.non_text.fg },
        ['Normal'] = { bg = theme.bg, fg = theme.fg },
        ['NormalFloat'] = { bg = theme.editor.float.bg },
        ['FloatBorder'] = {
            bg = theme.editor.float.border.bg,
            fg = theme.editor.float.border.fg,
        },
        -- set_hl('FloatTitle', { bg = '', fg = '' })
        -- set_hl('FloatFooter', { bg = '', fg = '' })
        -- set_hl('NormalNC', { bg = '', fg = '' })
        ['Pmenu'] = { bg = theme.editor.pmenu.bg, fg = theme.editor.pmenu.fg },
        ['PmenuSel'] = {
            bg = theme.editor.pmenu.sel.bg,
            fg = theme.editor.pmenu.sel.fg,
        },
        -- set_hl('PmenuKind', { bg = '', fg = '' })
        -- set_hl('PmenuKindSel', { bg = '', fg = '' })
        -- set_hl('PmenuExtra', { bg = '', fg = '' })
        -- set_hl('PmenuExtraSel', { bg = '', fg = '' })
        ['PmenuSbar'] = { bg = theme.editor.pmenu.sbar.bg },
        ['PmenuThumb'] = { bg = theme.editor.pmenu.thumb.bg },
        -- set_hl('Question', { bg = '', fg = '' })
        -- set_hl('QuickFixLine', { bg = '', fg = '' })
        ['Search'] = {
            bg = theme.editor.search.bg,
            fg = theme.editor.search.fg,
        },
        -- set_hl('SpecialKey', { bg = '', fg = '' })
        ['SpellBad'] = { fg = theme.editor.spell.bad.fg, undercurl = true },
        ['SpellCap'] = { fg = theme.editor.spell.cap.fg, undercurl = true },
        ['SpellLocal'] = { fg = theme.editor.spell.local_.fg, undercurl = true },
        ['SpellRare'] = { fg = theme.editor.spell.rare.fg, undercurl = true },
        ['StatusLine'] = {
            bg = theme.editor.status_line.bg,
            fg = theme.editor.status_line.fg,
        },
        ['StatusLineNC'] = {
            bg = theme.editor.status_line.bg,
            fg = theme.editor.status_line.fg,
        },
        -- set_hl('TabLine', { bg = '', fg = '' })
        -- set_hl('TabLineFill', { bg = '', fg = '' })
        -- set_hl('TabLineSel', { bg = '', fg = '' })
        ['Title'] = { fg = theme.editor.title.fg },
        ['Visual'] = { bg = theme.editor.visual.bg },
        -- set_hl('VisualNOS', { bg = '', fg = '' })
        ['WarningMsg'] = { fg = theme.editor.msg.warning.fg },
        -- set_hl('Whitespace', { bg = '', fg = '' })
        -- set_hl('WildMenu', { bg = '', fg = '' })
        ['WinBar'] = { link = 'Comment' },
        ['WinBarNC'] = { link = 'Comment' },

        -- Syntax
        -- local comment = colors.base03

        ['Comment'] = { fg = theme.syntax.comment.fg },

        ['Constant'] = { fg = theme.syntax.identifier.fg },
        ['String'] = { fg = theme.syntax.string.fg },
        ['Character'] = { fg = theme.syntax.character.fg },
        ['Number'] = { fg = theme.syntax.number.fg },
        ['Boolean'] = { fg = theme.syntax.boolean.fg },
        ['Float'] = { fg = theme.syntax.number.fg },

        ['Identifier'] = { fg = theme.syntax.identifier.fg },
        ['Function'] = { fg = theme.syntax.function_.fg },

        ['Statement'] = { fg = theme.syntax.keyword.fg },
        ['Conditional'] = { fg = theme.syntax.keyword.fg },
        ['Repeat'] = { fg = theme.syntax.keyword.fg },
        ['Label'] = { fg = theme.syntax.keyword.fg },
        ['Operator'] = { fg = theme.syntax.keyword.fg },
        ['Keyword'] = { fg = theme.syntax.keyword.fg },
        ['Exception'] = { fg = theme.syntax.keyword.fg },

        ['PreProc'] = { fg = theme.syntax.keyword.fg },
        ['Include'] = { fg = theme.syntax.keyword.fg },
        ['Define'] = { fg = theme.syntax.keyword.fg },
        ['Macro'] = { fg = theme.syntax.keyword.fg },
        ['PreCondit'] = { fg = theme.syntax.keyword.fg },

        ['Type'] = { fg = theme.syntax.type.fg },
        ['StorageClass'] = { fg = theme.syntax.type.fg },
        ['Structure'] = { fg = theme.syntax.type.fg },
        ['Typedef'] = { fg = theme.syntax.type.fg },

        ['Special'] = { fg = theme.syntax.special.fg },
        -- set_hl('SpecialChar', { fg = '' })
        -- set_hl('Tag', { fg = '' })
        ['Delimiter'] = { fg = theme.syntax.delimiter.fg },
        -- set_hl('SpecialComment', { fg = '' })
        -- set_hl('Debug', { fg = '' })

        ['Underlined'] = { underline = true },
        --
        -- set_hl('Ignore', { fg = '' })
        --
        ['Error'] = { bg = theme.syntax.error.bg },
        --
        ['Todo'] = { bg = theme.syntax.todo.bg },
        --
        ['Added'] = { fg = theme.syntax.added.fg, bg = theme.syntax.added.bg },
        ['Changed'] = {
            fg = theme.syntax.changed.fg,
            bg = theme.syntax.changed.bg,
        },
        ['Removed'] = {
            fg = theme.syntax.removed.fg,
            bg = theme.syntax.removed.bg,
        },

        -- Treesitter
        ['@constant.builtin'] = { link = 'Keyword' },
        ['@constructor.lua'] = { link = 'Delimiter' },
        ['@function.builtin'] = { link = 'Function' },
        ['@variable'] = { link = 'Identifier' },
        ['@type.qualifier.rust'] = { link = 'Keyword' },
        ['@storageclass.rust'] = { link = 'Keyword' },
        ['@tag.attribute'] = { link = 'Identifier' },
        ['@tag.delimiter'] = { fg = theme.treesitter.tag.delimiter.fg },
        ['@constructor'] = { link = 'Type' },

        -- Treesitter Context
        ['TreesitterContext'] = { bg = theme.treesitter.context.bg },
        ['TreesitterContextLineNumber'] = { bg = theme.treesitter.context.bg },

        -- LSP
        ['LspReferenceText'] = { bg = theme.lsp.reference.text.bg },
        ['LspReferenceRead'] = { bg = theme.lsp.reference.read.bg },
        ['LspReferenceWrite'] = {
            bg = theme.lsp.reference.write.bg,
            underline = true,
        },
        ['LspCodeLens'] = { link = 'Comment' },
        ['LspCodeLensSeparator'] = { link = 'Comment' },
        -- set_hl('LspSignatureActiveParameter', {})
        ['LspInlayHint'] = { link = 'Comment' },

        -- LSP Semantic tokens

        -- Diagnostics
        ['DiagnosticError'] = { fg = theme.diagnostic.error.fg },
        ['DiagnosticWarn'] = { fg = theme.diagnostic.warn.fg },
        ['DiagnosticInfo'] = { fg = theme.diagnostic.info.fg },
        ['DiagnosticHint'] = { fg = theme.diagnostic.hint.fg },
        ['DiagnosticOk'] = { fg = theme.diagnostic.ok.fg },

        ['DiagnosticVirtualTextError'] = { link = 'DiagnosticError' },
        ['DiagnosticVirtualTextWarn'] = { link = 'DiagnosticWarn' },
        ['DiagnosticVirtualTextInfo'] = { link = 'DiagnosticInfo' },
        ['DiagnosticVirtualTextHint'] = { link = 'DiagnosticHint' },
        ['DiagnosticVirtualTextOk'] = { link = 'DiagnosticOk' },

        ['DiagnosticUnderlineError'] = {
            undercurl = true,
            special = theme.diagnostic.error.fg,
        },
        ['DiagnosticUnderlineWarn'] = {
            undercurl = true,
            special = theme.diagnostic.warn.fg,
        },
        ['DiagnosticUnderlineInfo'] = {
            undercurl = true,
            special = theme.diagnostic.info.fg,
        },
        ['DiagnosticUnderlineHint'] = {
            undercurl = true,
            special = theme.diagnostic.hint.fg,
        },
        ['DiagnosticUnderlineOk'] = {
            undercurl = true,
            special = theme.diagnostic.ok.fg,
        },

        ['DiagnosticFloatingError'] = { link = 'DiagnosticError' },
        ['DiagnosticFloatingWarn'] = { link = 'DiagnosticWarn' },
        ['DiagnosticFloatingInfo'] = { link = 'DiagnosticInfo' },
        ['DiagnosticFloatingHint'] = { link = 'DiagnosticHint' },
        ['DiagnosticFloatingOk'] = { link = 'DiagnosticOk' },

        ['DiagnosticSignError'] = { link = 'DiagnosticError' },
        ['DiagnosticSignWarn'] = { link = 'DiagnosticWarn' },
        ['DiagnosticSignInfo'] = { link = 'DiagnosticInfo' },
        ['DiagnosticSignHint'] = { link = 'DiagnosticHint' },
        ['DiagnosticSignOk'] = { link = 'DiagnosticOk' },

        ['DiagnosticDeprecated'] = { strikethrough = true },
        ['DiagnosticUnnecessary'] = {
            fg = theme.diagnostic.unnecessary.fg,
            undercurl = true,
            special = theme.diagnostic.hint.fg,
        },

        -- github.com/nvim-tree/nvim-tree.lua
        ['NvimTreeNormal'] = {
            bg = theme.nvim_tree.normal.bg,
            fg = theme.nvim_tree.normal.fg,
        },
        ['NvimTreeWinSeparator'] = { bg = theme.bg, fg = theme.bg },
        ['NvimTreeFolderIcon'] = { fg = theme.nvim_tree.folder.icon.fg },
        ['NvimTreeRootFolder'] = { fg = theme.nvim_tree.root_folder.fg },
        ['NvimTreeGitDeleted'] = { fg = theme.nvim_tree.git.deleted.fg },
        ['NvimTreeGitDirty'] = { fg = theme.nvim_tree.git.dirty.fg },
        ['NvimTreeGitIgnored'] = { fg = theme.nvim_tree.git.ignored.fg },
        ['NvimTreeGitNew'] = { link = 'WarningMsg' },
        ['NvimTreeGitStaged'] = { fg = theme.nvim_tree.git.staged.fg },
        ['NvimTreeExecFile'] = { fg = theme.nvim_tree.exec_file.fg },

        -- github.com/hrsh7th/nvim-cmp
        ['CmpItemAbbrDefault'] = { fg = theme.cmp_item.abbr.fg },
        ['CmpItemAbbrMatch'] = { link = 'Identifier' },
        ['CmpItemKind'] = { fg = theme.cmp_item.kind.fg },
        ['CmpItemKindClass'] = { link = 'Type' },
        ['CmpItemKindConstant'] = { link = 'Constant' },
        ['CmpItemKindConstructor'] = { link = 'Function' },
        ['CmpItemKindEnum'] = { link = 'Type' },
        ['CmpItemKindEnumMember'] = { link = 'Identifier' },
        ['CmpItemKindField'] = { link = 'Identifier' },
        ['CmpItemKindFolder'] = { link = 'Directory' },
        ['CmpItemKindFunction'] = { link = 'Function' },
        ['CmpItemKindInterface'] = { link = 'Type' },
        ['CmpItemKindKeyword'] = { link = 'Keyword' },
        ['CmpItemKindMethod'] = { link = 'Function' },
        ['CmpItemKindProperty'] = { link = 'Identifier' },
        ['CmpItemKindStruct'] = { link = 'Structure' },
        ['CmpItemKindText'] = { link = 'String' },
        ['CmpItemKindTypeParameter'] = { link = 'Type' },
        ['CmpItemKindVariable'] = { link = 'Identifier' },

        -- gmr.core.statusline

        ['StatusLineMode'] = {
            bg = theme.editor.status_line.mode.bg,
            fg = theme.editor.status_line.mode.fg,
        },
        ['StatusLineMedium'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.editor.status_line.medium.fg,
        },

        ['StatusLineNeovimLogo'] = {
            bg = theme.editor.status_line.mode.bg,
            fg = theme.editor.status_line.mode.fg,
        },

        ['StatusLineLspError'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.diagnostic.error.fg,
        },
        ['StatusLineLspWarn'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.diagnostic.warn.fg,
        },
        ['StatusLineLspHint'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.diagnostic.hint.fg,
        },
        ['StatusLineLspInfo'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.diagnostic.info.fg,
        },

        ['StatusLineLspMessages'] = {
            bg = theme.editor.status_line.bg,
            fg = theme.diagnostic.info.fg,
        },

        ['StatusLineLspActive'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.editor.status_line.lsp.active.fg,
        },
        ['StatusLineLspInactive'] = {
            bg = theme.editor.status_line.bg,
            fg = theme.diagnostic.error.fg,
        },

        ['StatusLineGitDiffAdded'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.editor.diff.add.fg,
        },
        ['StatusLineGitDiffChanged'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.editor.diff.change.fg,
        },
        ['StatusLineGitDiffRemoved'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.editor.diff.delete.fg,
        },

        ['StatusLineGitBranchIcon'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.editor.status_line.icon.git.fg,
        },

        ['StatusLineUnsavedFileIcon'] = {
            bg = theme.editor.status_line.bg,
            fg = theme.editor.status_line.icon.unsaved.fg,
        },

        -- gmr.core.winbar
        ['WinBarUnsavedSymbol'] = {
            bg = theme.bg,
            fg = theme.editor.status_line.icon.unsaved.fg,
        },

        -- github.com/ibhagwan/fzf-lua
        ['FzfLuaNormal'] = { bg = theme.fzf.normal.bg },
        ['FzfLuaBorder'] = {
            bg = theme.fzf.border.bg,
            fg = theme.fzf.border.fg,
        },
        ['FzfLuaPreviewNormal'] = { bg = theme.bg },
    }
end

return M
