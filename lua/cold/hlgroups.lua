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
        -- ['lCursor'] = {},
        -- ['CursorIM'] = {},
        ['CursorColumn'] = { bg = theme.editor.cursor.column.bg },
        ['CursorLine'] = { bg = theme.editor.cursor.line.bg },
        ['Directory'] = { fg = theme.editor.directory.fg },
        ['DiffAdd'] = { bg = theme.editor.diff.add.bg },
        ['DiffChange'] = { bg = theme.editor.diff.change.bg },
        ['DiffDelete'] = { bg = theme.editor.diff.delete.bg },
        ['DiffText'] = { bg = theme.editor.diff.text.bg },
        -- ['EndOfBuffer'] = {},
        -- ['TermCursor'] = {},
        -- ['TermCursorNC'] = {},
        ['ErrorMsg'] = { fg = theme.editor.msg.error.fg },
        ['WinSeparator'] = {
            bg = theme.editor.win.separator.bg,
            fg = theme.editor.win.separator.fg,
        },
        ['Folded'] = { bg = theme.editor.folded.bg },
        -- ['FoldColumn'] = {},
        -- ['SignColumn'] = {},
        -- ['IncSearch'] = {},
        -- ['Substitute'] = {},
        ['LineNr'] = {
            bg = theme.editor.line_nr.bg,
            fg = theme.editor.line_nr.fg,
        },
        -- ['LineNrAbove'] = {},
        -- ['LineNrBelow'] = {},
        ['CursorLineNr'] = {
            bg = theme.editor.cursor.line.nr.bg,
            fg = theme.editor.cursor.line.nr.fg,
        },
        -- ['CursorLineFol'] = {},
        -- ['CursorLineSig'] = {},
        ['MatchParen'] = { bg = theme.editor.match_paren.bg, underline = true },
        ['ModeMsg'] = { fg = theme.editor.msg.mode.fg },
        -- ['MsgArea'] = {},
        -- ['MsgSeparator'] = {},
        -- ['MoreMsg'] = {},
        ['NonText'] = { fg = theme.editor.non_text.fg },
        ['Normal'] = { bg = theme.bg, fg = theme.fg },
        ['NormalFloat'] = { bg = theme.editor.float.bg },
        ['FloatBorder'] = {
            bg = theme.editor.float.border.bg,
            fg = theme.editor.float.border.fg,
        },
        -- ['FloatTitle'] = {},
        -- ['FloatFooter'] = {},
        -- ['NormalNC'] = {},
        ['Pmenu'] = { bg = theme.editor.pmenu.bg, fg = theme.editor.pmenu.fg },
        ['PmenuSel'] = {
            bg = theme.editor.pmenu.sel.bg,
            fg = theme.editor.pmenu.sel.fg,
        },
        -- ['PmenuKind'] = {},
        -- ['PmenuKindSel'] = {},
        -- ['PmenuExtra'] = {},
        -- ['PmenuExtraSel'] = {},
        ['PmenuSbar'] = { bg = theme.editor.pmenu.sbar.bg },
        ['PmenuThumb'] = { bg = theme.editor.pmenu.thumb.bg },
        -- ['Question'] = {},
        -- ['QuickFixLine'] = {},
        ['Search'] = {
            bg = theme.editor.search.bg,
            fg = theme.editor.search.fg,
        },
        -- ['SpecialKey'] = {},
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
        -- ['TabLine'] = {},
        -- ['TabLineFill'] = {},
        -- ['TabLineSel'] = {},
        ['Title'] = { fg = theme.editor.title.fg },
        ['Visual'] = { bg = theme.editor.visual.bg },
        -- ['VisualNOS'] = {},
        ['WarningMsg'] = { fg = theme.editor.msg.warning.fg },
        -- ['Whitespace'] = {},
        -- ['WildMenu'] = {},
        ['WinBar'] = { link = 'Comment' },
        ['WinBarNC'] = { link = 'Comment' },

        -- Syntax
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
        -- ['SpecialChar'] = {},
        -- ['Tag'] = {},
        ['Delimiter'] = { fg = theme.syntax.delimiter.fg },
        -- ['SpecialComment'] = {},
        -- ['Debug'] = {},

        ['Underlined'] = { underline = true },

        -- ['Ignore'] = {},

        ['Error'] = { bg = theme.syntax.error.bg },

        ['Todo'] = { bg = theme.syntax.todo.bg },

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
        ['@diff.plus'] = { link = 'DiffAdd' },
        ['@diff.minus'] = { link = 'DiffDelete' },
        ['@diff.delta'] = { link = 'DiffChange' },

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
        -- ['LspSignatureActiveParameter'] = {},
        ['LspInlayHint'] = { link = 'Comment' },

        -- LSP Semantic tokens
        ['@lsp.type.annotation'] = { link = 'Type' },
        ['@lsp.type.boolean'] = { link = 'Boolean' },
        ['@lsp.type.character'] = { link = 'Character' },
        ['@lsp.type.class'] = { link = '@lsp' },
        ['@lsp.type.formatSpecifier'] = { link = 'Keyword' },
        ['@lsp.type.parameter'] = { link = 'Identifier' },
        ['@lsp.type.property'] = { link = 'Identifier' },
        ['@lsp.type.method'] = { link = 'Function' },
        ['@lsp.type.module'] = { link = 'Identifier' },
        ['@lsp.type.namespace'] = { link = 'Identifier' },
        ['@lsp.type.number'] = { link = 'Number' },
        ['@lsp.type.selfKeyword'] = { link = 'Keyword' },
        ['@lsp.type.selfTypeKeyword'] = { link = 'Keyword' },
        ['@lsp.type.string'] = { link = 'String' },
        ['@lsp.type.variable'] = { link = 'Identifier' },

        ['@lsp.typemod.boolean.macro'] = { link = 'Boolean' },
        ['@lsp.typemod.character.macro'] = { link = 'Character' },
        ['@lsp.typemod.class.constructor'] = { link = 'Function' },
        ['@lsp.typemod.class.importDeclaration'] = { link = 'Type' },
        ['@lsp.typemod.class.readonly'] = { link = 'Type' },
        ['@lsp.typemod.enum.declaration'] = { link = 'Type' },
        ['@lsp.typemod.enum.public'] = { link = 'Type' },
        ['@lsp.typemod.function.declaration'] = { link = 'Function' },
        ['@lsp.typemod.function.local'] = { link = 'Function' },
        ['@lsp.typemod.function.macro'] = { link = 'Function' },
        ['@lsp.typemod.function.readonly'] = { link = 'Function' },
        ['@lsp.typemod.generic.macro'] = { link = 'Identifier' },
        ['@lsp.typemod.method.macro'] = { link = 'Function' },
        ['@lsp.typemod.namespace.macro'] = { link = 'Type' },
        ['@lsp.typemod.number.macro'] = { link = 'Number' },
        ['@lsp.typemod.parameter.macro'] = { link = 'Identifier' },
        ['@lsp.typemod.property.macro'] = { link = 'Identifier' },
        ['@lsp.typemod.string.macro'] = { link = 'String' },
        ['@lsp.typemod.struct.macro'] = { link = 'Type' },
        ['@lsp.typemod.variable.constant'] = { link = 'Constant' },
        ['@lsp.typemod.variable.macro'] = { link = 'Identifier' },
        ['@lsp.typemod.variable.static'] = { link = 'Constant' },

        ['@lsp.mod.macro'] = { link = 'Macro' },
        ['@lsp.mod.mutable'] = { link = 'Underlined' },
        ['@lsp.mod.readonly'] = { link = 'Constant' },

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
            fg = theme.git.added.fg,
        },
        ['StatusLineGitDiffChanged'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.git.changed.fg,
        },
        ['StatusLineGitDiffRemoved'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.git.removed.fg,
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

        -- github.com/goolord/alpha-nvim - custom hlgroup for header
        ['AlphaHeader'] = { fg = theme.alpha.header.fg },

        -- github.com/lewis6991/gitsigns.nvim
        ['GitSignsAdd'] = { fg = theme.git.added.fg },
        ['GitSignsAddInline'] = { bg = theme.git.added.inline.bg },
        ['GitSignsChange'] = { fg = theme.git.changed.fg },
        ['GitSignsChangeInline'] = { bg = theme.git.changed.inline.bg, fg = theme.git.changed.inline.fg },
        ['GitSignsDelete'] = { fg = theme.git.removed.fg },
        ['GitSignsDeleteInline'] = { bg = theme.git.removed.inline.bg },
    }
end

return M
