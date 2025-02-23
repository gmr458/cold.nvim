local M = {}

--- @param theme ColdThemeDark | ColdThemeLight
--- @return table<string, vim.api.keyset.highlight>
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
        ['MoreMsg'] = { link = 'WarningMsg' },
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
        ['Question'] = { link = 'WarningMsg' },
        ['QuickFixLine'] = { link = 'Normal' },
        ['Search'] = { bg = theme.editor.search.bg },
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
        ['String'] = {
            fg = theme.syntax.string.fg,
            italic = theme.syntax.string.italic,
        },
        ['Character'] = { fg = theme.syntax.character.fg },
        ['Number'] = { fg = theme.syntax.number.fg },
        ['Boolean'] = {
            fg = theme.syntax.boolean.fg,
            italic = theme.syntax.keyword.italic,
        },
        ['Float'] = { fg = theme.syntax.number.fg },

        ['Identifier'] = { fg = theme.syntax.identifier.fg },
        ['Function'] = {
            fg = theme.syntax.function_.fg,
            italic = theme.syntax.function_.italic.declaration,
        },
        ['Statement'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },
        ['Conditional'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },
        ['Repeat'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },
        ['Label'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },
        ['Operator'] = {
            fg = theme.syntax.keyword.fg,
        },
        ['Keyword'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },
        ['Exception'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },

        ['PreProc'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },
        ['Include'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },
        ['Define'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },
        ['Macro'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },
        ['PreCondit'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.keyword.italic,
        },

        ['Type'] = {
            fg = theme.syntax.type.fg,
            italic = theme.syntax.type.italic.normal,
        },
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
        ['@attribute'] = { link = 'Identifier' },
        ['@constant.builtin'] = {
            fg = theme.syntax.keyword.fg,
            italic = theme.syntax.constant.italic.builtin,
        },
        ['@constructor'] = { link = 'Type' },
        ['@constructor.lua'] = { link = 'Delimiter' },
        ['@diff.delta'] = { link = 'DiffChange' },
        ['@diff.minus'] = { link = 'DiffDelete' },
        ['@diff.plus'] = { link = 'DiffAdd' },
        ['@function'] = {
            fg = theme.syntax.function_.fg,
            italic = theme.syntax.function_.italic.declaration,
        },
        ['@function.builtin'] = {
            fg = theme.syntax.function_.fg,
            italic = theme.syntax.function_.italic.declaration,
        },
        ['@function.call'] = {
            fg = theme.syntax.function_.fg,
            italic = theme.syntax.function_.italic.call,
        },
        ['@function.method'] = {
            fg = theme.syntax.function_.fg,
            italic = theme.syntax.function_.italic.method.declaration,
        },
        ['@function.method.call'] = {
            fg = theme.syntax.function_.fg,
            italic = theme.syntax.function_.italic.method.call,
        },
        ['@function.macro'] = {
            fg = theme.syntax.function_.fg,
            italic = theme.syntax.function_.italic.call,
        },
        ['@module'] = { link = 'Identifier' },
        ['@storageclass.rust'] = { link = 'Keyword' },
        ['@tag.attribute'] = { link = 'Identifier' },
        ['@tag.delimiter'] = { fg = theme.treesitter.tag.delimiter.fg },
        ['@tag.javascript'] = { link = 'Type' },
        ['@tag.tsx'] = { link = 'Type' },
        ['@type'] = {
            fg = theme.syntax.type.fg,
            italic = theme.syntax.type.italic.normal,
        },

        ['@type.definition'] = {
            fg = theme.syntax.type.fg,
            italic = theme.syntax.type.italic.definition,
        },
        ['@type.builtin'] = {
            fg = theme.syntax.special.fg,
            italic = theme.syntax.type.italic.builtin,
        },
        ['@type.qualifier'] = { link = 'Keyword' },
        ['@variable'] = { link = 'Identifier' },
        ['@variable.builtin'] = { link = 'Identifier' },

        -- Treesitter Context
        ['TreesitterContext'] = { bg = theme.treesitter.context.bg },
        ['TreesitterContextLineNumber'] = { bg = theme.treesitter.context.bg },
        ['TreesitterContextBottom'] = {
            underline = theme.treesitter.context.bottom.underline,
            sp = theme.treesitter.context.bottom.sp,
        },

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
        -- ['@lsp.mod.async'] = { link = 'Function' },

        ['@lsp.type.keyword'] = { link = 'Keyword' },
        ['@lsp.type.macro'] = { link = 'Macro' },
        ['@lsp.type.namespace'] = { link = 'Identifier' },
        ['@lsp.type.variable'] = { link = '@lsp' },

        ['@lsp.typemod.enumMember.defaultLibrary'] = { link = 'Keyword' },
        ['@lsp.typemod.keyword.async'] = { link = 'Keyword' },

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
        ['NvimTreeNormalFloat'] = {
            bg = theme.nvim_tree.normal.bg,
            fg = theme.nvim_tree.normal.fg,
        },
        ['NvimTreeNormalFloatBorder'] = {
            bg = theme.nvim_tree.normal.bg,
            fg = theme.nvim_tree.normal.bg,
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
        ['NvimTreeIndentMarker'] = { link = 'Comment' },
        ['NvimTreeSignColumn'] = { bg = theme.nvim_tree.normal.bg },

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
            fg = theme.editor.status_line.medium.git.added.fg,
        },
        ['StatusLineGitDiffChanged'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.editor.status_line.medium.git.changed.fg,
        },
        ['StatusLineGitDiffRemoved'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.editor.status_line.medium.git.removed.fg,
        },

        ['StatusLineGitBranchIcon'] = {
            bg = theme.editor.status_line.medium.bg,
            fg = theme.editor.status_line.icon.git.fg,
        },

        ['StatusLineUnsavedFileIcon'] = {
            bg = theme.editor.status_line.bg,
            fg = theme.editor.status_line.icon.unsaved.fg,
        },

        -- github.com/ibhagwan/fzf-lua
        ['FzfLuaNormal'] = { bg = theme.fzf.normal.bg },
        ['FzfLuaBorder'] = {
            bg = theme.fzf.border.bg,
            fg = theme.fzf.border.fg,
        },
        ['FzfLuaPreviewNormal'] = { link = 'Normal' },
        ['FzfLuaPreviewBorder'] = {
            bg = theme.fzf.preview.border.bg,
            fg = theme.fzf.preview.border.fg,
        },
        ['FzfLuaPreviewTitle'] = {
            bg = theme.fzf.preview.title.bg,
            fg = theme.fzf.preview.title.fg,
        },

        -- github.com/nvim-telescope/telescope.nvim
        ['TelescopeNormal'] = { bg = theme.telescope.normal.bg },
        ['TelescopeBorder'] = {
            bg = theme.telescope.border.bg,
            fg = theme.telescope.border.fg,
        },
        ['TelescopePreviewNormal'] = {
            bg = theme.telescope.preview.normal.bg,
        },
        ['TelescopePreviewBorder'] = {
            bg = theme.telescope.preview.border.bg,
            fg = theme.telescope.preview.border.fg,
        },
        ['TelescopePreviewTitle'] = {
            bg = theme.telescope.preview.title.bg,
            fg = theme.telescope.preview.title.fg,
        },
        ['TelescopePromptNormal'] = {
            bg = theme.telescope.prompt.normal.bg,
        },
        ['TelescopePromptBorder'] = {
            bg = theme.telescope.prompt.border.bg,
            fg = theme.telescope.prompt.border.fg,
        },
        ['TelescopePromptTitle'] = {
            bg = theme.telescope.prompt.title.bg,
            fg = theme.telescope.prompt.title.fg,
        },

        -- github.com/goolord/alpha-nvim - custom hlgroup for header
        ['AlphaHeader'] = { fg = theme.alpha.header.fg },

        -- github.com/lewis6991/gitsigns.nvim
        ['GitSignsAdd'] = { fg = theme.git.added.fg },
        ['GitSignsAddInline'] = { bg = theme.git.added.inline.bg },
        ['GitSignsChange'] = { fg = theme.git.changed.fg },
        ['GitSignsChangeInline'] = {
            bg = theme.git.changed.inline.bg,
            fg = theme.git.changed.inline.fg,
        },
        ['GitSignsDelete'] = { fg = theme.git.removed.fg },
        ['GitSignsDeleteInline'] = { bg = theme.git.removed.inline.bg },

        -- github.com/cbochs/grapple.nvim
        ['GrappleNormal'] = {
            bg = theme.grapple.normal.bg,
        },
        ['GrappleBorder'] = {
            bg = theme.grapple.border.bg,
            fg = theme.grapple.border.fg,
        },
        ['GrappleTitle'] = {
            bg = theme.grapple.title.bg,
            fg = theme.grapple.title.fg,
        },
        ['GrappleFooter'] = {
            bg = theme.grapple.footer.bg,
            fg = theme.grapple.footer.fg,
        },

        -- github.com/nvim-neotest/neotest
        ['NeotestAdapterName'] = { link = 'Comment' },
        ['NeotestUnknown'] = { link = 'Comment' },
        ['NeotestIndent'] = { link = 'Comment' },
        ['NeotestExpandMarker'] = { link = 'Comment' },
        ['NeotestFailed'] = { link = 'ErrorMsg' },
        ['NeotestPassed'] = { link = 'DiagnosticOk' },
        ['NeotestSkipped'] = { link = 'WarningMsg' },
        ['NeotestFile'] = { link = 'Normal' },
        ['NeotestDir'] = { link = 'Directory' },

        -- github.com/echasnovski/mini.indentscope
        ['MiniIndentscopeSymbol'] = { fg = theme.mini.indentscope.fg },

        -- basic kotlin support
        ['KtStructure'] = { link = 'Keyword' },
        ['KtModifier'] = { link = 'Keyword' },

        -- github.com/folke/lazy.nvim
        ['LazyButton'] = {
            bg = theme.lazy.button.bg,
        },
        ['LazyProgressDone'] = {
            bg = theme.lazy.progress.bg,
            fg = theme.lazy.progress.done.fg,
        },
        ['LazyProgressTodo'] = {
            bg = theme.lazy.progress.bg,
            fg = theme.lazy.progress.todo.fg,
        },

        -- github.com/Saghen/blink.cmp
        ['BlinkCmpMenu'] = { bg = theme.editor.completion.menu.bg },
        ['BlinkCmpMenuSelection'] = { bg = theme.editor.pmenu.sel.bg },
        ['BlinkCmpMenuBorder'] = {
            bg = theme.editor.completion.border.bg,
            fg = theme.editor.completion.border.fg,
        },
        ['BlinkCmpDoc'] = { bg = theme.editor.completion.doc.bg },
        ['BlinkCmpDocSeparator'] = {
            bg = theme.editor.completion.doc.separator.bg,
            fg = theme.editor.completion.doc.separator.fg,
        },
        ['BlinkCmpDocBorder'] = {
            bg = theme.editor.completion.doc.border.bg,
            fg = theme.editor.completion.doc.border.fg,
        },
        ['BlinkCmpKind'] = { link = 'BlinkCmpMenu' },
        ['BlinkCmpKindClass'] = { fg = theme.syntax.type.fg },
        ['BlinkCmpKindConstant'] = { fg = theme.syntax.constant.fg },
        ['BlinkCmpKindConstructor'] = { fg = theme.syntax.function_.fg },
        ['BlinkCmpKindEnum'] = { fg = theme.syntax.type.fg },
        ['BlinkCmpKindEnumMember'] = { fg = theme.syntax.identifier.fg },
        ['BlinkCmpKindEvent'] = { fg = theme.syntax.identifier.fg },
        ['BlinkCmpKindField'] = { fg = theme.syntax.identifier.fg },
        ['BlinkCmpKindFile'] = { fg = theme.syntax.identifier.fg },
        ['BlinkCmpKindFolder'] = { link = 'Directory' },
        ['BlinkCmpKindFunction'] = { fg = theme.syntax.function_.fg },
        ['BlinkCmpKindInterface'] = { fg = theme.syntax.type.fg },
        ['BlinkCmpKindKeyword'] = { fg = theme.syntax.keyword.fg },
        ['BlinkCmpKindMethod'] = { fg = theme.syntax.function_.fg },
        ['BlinkCmpKindModule'] = { fg = theme.syntax.identifier.fg },
        ['BlinkCmpKindOperator'] = { fg = theme.syntax.operator.fg },
        ['BlinkCmpKindProperty'] = { fg = theme.syntax.identifier.fg },
        ['BlinkCmpKindReference'] = { fg = theme.syntax.identifier.fg },
        ['BlinkCmpKindSnippet'] = { fg = theme.syntax.identifier.fg },
        ['BlinkCmpKindStruct'] = { fg = theme.syntax.type.fg },
        ['BlinkCmpKindText'] = { fg = theme.syntax.string.fg },
        ['BlinkCmpKindTypedParameter'] = { fg = theme.syntax.type.fg },
        ['BlinkCmpKindUnit'] = { fg = theme.syntax.identifier.fg },
        ['BlinkCmpKindValue'] = { fg = theme.syntax.identifier.fg },
        ['BlinkCmpKindVariable'] = { fg = theme.syntax.identifier.fg },

        -- github.com/folke/snacks.nvim
        ['SnacksPickerInput'] = { bg = theme.snacks.picker.input.bg },
        ['SnacksPickerInputBorder'] = {
            bg = theme.snacks.picker.input.border.bg,
        },
        ['SnacksPickerPrompt'] = { bg = theme.snacks.picker.input.bg },
        ['SnacksPickerList'] = { bg = theme.snacks.picker.list.bg },
        ['SnacksPickerListBorder'] = { bg = theme.snacks.picker.list.border.bg },
        ['SnacksPickerDir'] = { link = 'Comment' },
        ['SnacksPickerRow'] = { link = 'Comment' },
        ['SnacksPickerCol'] = { link = 'Comment' },
        ['SnacksPickerGitStatusAdded'] = { fg = theme.git.added.fg },
        ['SnacksPickerGitStatusDeleted'] = { fg = theme.git.removed.fg },
        ['SnacksPickerGitStatusModified'] = { fg = theme.git.changed.fg },
        ['SnacksPickerTree'] = {
            bg = theme.snacks.picker.list.bg,
            fg = theme.mini.indentscope.fg,
        },
    }
end

return M
