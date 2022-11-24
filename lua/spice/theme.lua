local c = require('spice.colors')

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function(opts)
    c = vim.tbl_extend('force', c, opts['color_overrides'])
    --local isDark = vim.o.background == 'dark'

    hl(0, 'Normal',                        { fg = c.Front,                                            bg = c.Back })
    hl(0, 'ColorColumn',                   { fg = 'NONE',                                             bg = c.CursorDarkDark })
    hl(0, 'Cursor',                        { fg = c.CursorDark,                                       bg = c.CursorLight })
    hl(0, 'CursorLine',                    { bg = c.CursorDarkDark })
    hl(0, 'CursorColumn',                  { fg = 'NONE',                                             bg = c.CursorDarkDark })
    hl(0, 'Directory',                     { fg = c.spiceBlue,                                        bg = c.Back })
    hl(0, 'DiffAdd',                       { fg = 'NONE',                                             bg = c.DiffGreenLight })
    hl(0, 'DiffChange',                    { fg = 'NONE',                                             bg = c.DiffRedDark })
    hl(0, 'DiffDelete',                    { fg = 'NONE',                                             bg = c.DiffRedLight })
    hl(0, 'DiffText',                      { fg = 'NONE',                                             bg = c.DiffRedLight })
    hl(0, 'EndOfBuffer',                   { fg = c.Back,                                             bg = 'NONE' })
    hl(0, 'ErrorMsg',                      { fg = c.spiceRed,                                         bg = c.Back })
    hl(0, 'VertSplit',                     { fg = c.SplitDark,                                        bg = c.Back })
    hl(0, 'Folded',                        { fg = 'NONE',                                             bg = c.FoldBackground })
    hl(0, 'FoldColumn',                    { fg = c.LineNumber,                                       bg = c.Back })
    hl(0, 'SignColumn',                    { fg = 'NONE',                                             bg = c.Back })
    hl(0, 'IncSearch',                     { fg = c.None,                                             bg = c.SearchCurrent })
    hl(0, 'LineNr',                        { fg = c.LineNumber,                                       bg = c.Back })
    hl(0, 'CursorLineNr',                  { fg = c.PopupFront,                                       bg = c.Back })
    hl(0, 'MatchParen',                    { fg = c.None,                                             bg = c.CursorDark })
    hl(0, 'ModeMsg',                       { fg = c.Front,                                            bg = c.LeftDark })
    hl(0, 'MoreMsg',                       { fg = c.Front,                                            bg = c.LeftDark })
    hl(0, 'NonText',                       { fg = c.LineNumber,                                       bg = c.None })
    hl(0, 'Pmenu',                         { fg = c.PopupFront,                                       bg = c.PopupBack })
    hl(0, 'PmenuSel',                      { fg = c.PopupFront,                                       bg = c.PopupHighlightBlue })
    hl(0, 'PmenuSbar',                     { fg = 'NONE',                                             bg = c.PopupHighlightGray })
    hl(0, 'PmenuThumb',                    { fg = 'NONE',                                             bg = c.PopupFront })
    hl(0, 'Question',                      { fg = c.spiceBlue,                                        bg = c.Back })
    hl(0, 'Search',                        { fg = c.None,                                             bg = c.Search })
    hl(0, 'SpecialKey',                    { fg = c.spiceBlue,                                        bg = c.None })
    hl(0, 'StatusLine',                    { fg = c.Front,                                            bg = c.LeftMid })
    hl(0, 'StatusLineNC',                  { fg = c.Front,                                            bg = c.LeftDark })
    hl(0, 'TabLine',                       { fg = c.Front,                                            bg = c.TabOther })
    hl(0, 'TabLineFill',                   { fg = c.Front,                                            bg = c.TabOutside })
    hl(0, 'TabLineSel',                    { fg = c.Front,                                            bg = c.TabCurrent })
    hl(0, 'Title',                         { fg = c.spiceBlue,                                             bg = c.None,      bold = true })
    hl(0, 'Visual',                        { fg = c.None,                                             bg = c.Selection })
    hl(0, 'VisualNOS',                     { fg = c.None,                                             bg = c.Selection })
    hl(0, 'WarningMsg',                    { fg = c.spiceRed,                                         bg = c.Back,      bold = true })
    hl(0, 'WildMenu',                      { fg = c.None,                                             bg = c.Selection })
    hl(0, 'Comment',                       { fg = c.spiceComment,                                     bg = 'NONE',      italic = opts.italic_comments })
    hl(0, 'Constant',                      { fg = c.spiceOrange,                                      bg = 'NONE' })
    hl(0, 'String',                        { fg = c.spiceGreen,                                       bg = 'NONE' })
    hl(0, 'Character',                     { fg = c.spiceGreen,                                       bg = 'NONE' })
    hl(0, 'Number',                        { fg = c.spiceMagenta,                                     bg = 'NONE' })
    hl(0, 'Boolean',                       { fg = c.spiceMagenta,                                     bg = 'NONE' })
    hl(0, 'Float',                         { fg = c.spiceMagenta,                                     bg = 'NONE' })
    hl(0, 'Identifier',                    { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'Function',                      { fg = c.spiceOrange,                                      bg = 'NONE' })
    hl(0, 'Statement',                     { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'Conditional',                   { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'Repeat',                        { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'Label',                         { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'Operator',                      { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'Keyword',                       { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'Exception',                     { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'PreProc',                       { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'Include',                       { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'Define',                        { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'Macro',                         { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, 'Type',                          { fg = c.spiceMagenta,                                     bg = 'NONE' })
    hl(0, 'StorageClass',                  { fg = c.spiceMagenta,                                     bg = 'NONE' })
    hl(0, 'Structure',                     { fg = c.spiceMagenta,                                     bg = 'NONE' })
    hl(0, 'Typedef',                       { fg = c.spiceMagenta,                                     bg = 'NONE' })
    hl(0, 'Special',                       { fg = c.spiceCyan,                                        bg = 'NONE' })
    hl(0, 'SpecialChar',                   { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'Tag',                           { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'Delimiter',                     { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'SpecialComment',                { fg = c.spiceComment,                                     bg = 'NONE' })
    hl(0, 'Debug',                         { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'Underlined',                    { fg = c.None,                                             bg = 'NONE',      underline = true })
    hl(0, 'Conceal',                       { fg = c.Front,                                            bg = c.Back })
    hl(0, 'Ignore',                        { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'Error',                         { fg = c.spiceRed,                                         bg = c.Back,      undercurl = true, sp = c.Red })
    hl(0, 'Todo',                          { fg = c.YellowOrange,                                     bg = c.Back,      bold = true })
    hl(0, 'SpellBad',                      { fg = c.spiceRed,                                         bg = c.Back,      undercurl = true, sp = c.Red })
    hl(0, 'SpellCap',                      { fg = c.spiceRed,                                         bg = c.Back,      undercurl = true, sp = c.Red })
    hl(0, 'SpellRare',                     { fg = c.spiceRed,                                         bg = c.Back,      undercurl = true, sp = c.Red })
    hl(0, 'SpellLocal',                    { fg = c.spiceRed,                                         bg = c.Back,      undercurl = true, sp = c.Red })
    hl(0, 'Whitespace',                    { fg = c.LineNumber })

    -- Treesitter
    hl(0, '@error',                        { fg = c.spiceRed,                                         bg = 'NONE' })
    hl(0, '@punctuation.bracket',          { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@punctuation.special',          { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@comment',                      { fg = c.spiceComment,                                     bg = 'NONE',      italic = opts.italic_comments })
    hl(0, '@constant',                     { fg = c.spiceCyan,                                     bg = 'NONE' })
    hl(0, '@constant.builtin',             { fg = c.spicePink,                                        bg = 'NONE' })
    hl(0, '@constant.macro',               { fg = c.spiceTeal,                                        bg = 'NONE' })
    hl(0, '@string.regex',                 { fg = c.spiceGreen,                                       bg = 'NONE' })
    hl(0, '@string',                       { fg = c.spiceGreen,                                       bg = 'NONE' })
    hl(0, '@character',                    { fg = c.spiceGreen,                                       bg = 'NONE' })
    hl(0, '@number',                       { fg = c.spiceCyan,                                     bg = 'NONE' })
    hl(0, '@boolean',                      { fg = c.spiceCyan,                                     bg = 'NONE' })
    hl(0, '@float',                        { fg = c.spiceCyan,                                     bg = 'NONE' })
    hl(0, '@annotation',                   { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@attribute',                    { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@namespace',                    { fg = c.spiceMagenta,                                     bg = 'NONE' })
    hl(0, '@function.builtin',             { fg = c.spiceOrange,                                      bg = 'NONE' })
    hl(0, '@function',                     { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@function.call',                { fg = c.spiceOrange,                                      bg = 'NONE' })
    hl(0, '@function.macro',               { fg = c.spicePink,                                        bg = 'NONE' })
    hl(0, '@parameter',                    { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@parameter.reference',          { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@method',                       { fg = c.spiceOrange,                                      bg = 'NONE' })
    hl(0, '@field',                        { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@property',                     { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@constructor',                  { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@conditional',                  { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, '@repeat',                       { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, '@label',                        { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@keyword',                      { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, '@keyword.function',             { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, '@keyword.operator',             { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, '@operator',                     { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@exception',                    { fg = c.spicePink,                                        bg = 'NONE' })
    hl(0, '@type',                         { fg = c.spiceCyan,                                     bg = 'NONE' })
    hl(0, '@type.builtin',                 { fg = c.spiceCyan,                                     bg = 'NONE' })
    hl(0, '@structure',                    { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@include',                      { fg = c.spiceBlue,                                        bg = 'NONE' })
    hl(0, '@variable',                     { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@variable.builtin',             { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@text',                         { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@text.underline',               { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@tag',                          { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@tag.delimiter',                { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@tag.attribute',                { fg = c.Front,                                            bg = 'NONE' })

    hl(0, '@text.title',                   { fg = c.spiceBlue,                                        bold = true })
    hl(0, '@text.literal',                 { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'markdown@text.literal',         { fg = c.spiceOrange,                                      bg = 'NONE' })
    hl(0, 'markdown_inline@text.literal',  { fg = c.spiceOrange,                                      bg = 'NONE' })
    hl(0, '@text.emphasis',                { fg = c.Front,                                            bg = 'NONE',      italic = true })
    hl(0, '@text.strong',                  { fg = c.spiceBlue,                                        bold = true })
    hl(0, '@text.uri',                     { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@textReference',                { fg = c.spiceOrange })
    hl(0, '@punctuation.delimiter',        { fg = c.Front,                                            bg = 'NONE' })
    hl(0, '@stringEscape',                 { fg = c.spiceOrange,                                      bold = true })

    hl(0, '@text.note',                    { fg = c.BlueGreen,                                        bg = 'NONE',      bold = true })
    hl(0, '@text.warning',                 { fg = c.YellowOrange,                                     bg = 'NONE',      bold = true })
    hl(0, '@text.danger',                  { fg = c.Red,                                              bg = 'NONE',      bold = true })

    -- Markdown
    hl(0, 'markdownBold',                  { fg = c.Blue,                                             bold = true })
    hl(0, 'markdownCode',                  { fg = c.spicePink,                                           bg = 'NONE' })
    hl(0, 'markdownRule',                  { fg = c.Blue,                                             bold = true })
    hl(0, 'markdownCodeDelimiter',         { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'markdownHeadingDelimiter',      { fg = c.Blue,                                             bg = 'NONE' })
    hl(0, 'markdownFootnote',              { fg = c.Orange,                                           bg = 'NONE' })
    hl(0, 'markdownFootnoteDefinition',    { fg = c.Orange })
    hl(0, 'markdownUrl',                   { fg = c.Front,                                            bg = 'NONE',      underline = true })
    hl(0, 'markdownLinkText',              { fg = c.spiceOrange })
    hl(0, 'markdownEscape',                { fg = c.spiceOrange })

    -- JSON
    hl(0, 'jsonKeyword',                   { fg = c.LightBlue,                                        bg = 'NONE' })
    hl(0, 'jsonEscape',                    { fg = c.YellowOrange,                                     bg = 'NONE' })
    hl(0, 'jsonNull',                      { fg = c.Blue,                                             bg = 'NONE' })
    hl(0, 'jsonBoolean',                   { fg = c.Blue,                                             bg = 'NONE' })

    -- Gitgutter
    hl(0, 'GitGutterAdd',                  { fg = c.Green,                                            bg = 'NONE' })
    hl(0, 'GitGutterChange',               { fg = c.Yellow,                                           bg = 'NONE' })
    hl(0, 'GitGutterDelete',               { fg = c.Red,                                              bg = 'NONE' })

    -- Git Signs
    hl(0, 'GitSignsAdd',                   { fg = c.Green,                                            bg = 'NONE' })
    hl(0, 'GitSignsChange',                { fg = c.Yellow,                                           bg = 'NONE' })
    hl(0, 'GitSignsDelete',                { fg = c.Red,                                              bg = 'NONE' })
    hl(0, 'GitSignsAddLn',                 { fg = c.Back,                                             bg = c.Green })
    hl(0, 'GitSignsChangeLn',              { fg = c.Back,                                             bg = c.Yellow })
    hl(0, 'GitSignsDeleteLn',              { fg = c.Back,                                             bg = c.Red })

    -- NvimTree
    hl(0, 'NvimTreeRootFolder',            { fg = c.Front,                                            bg = 'NONE',      bold = true })
    hl(0, 'NvimTreeGitDirty',              { fg = c.Yellow,                                           bg = 'NONE' })
    hl(0, 'NvimTreeGitNew',                { fg = c.Green,                                            bg = 'NONE' })
    hl(0, 'NvimTreeImageFile',             { fg = c.Violet,                                           bg = 'NONE' })
    hl(0, 'NvimTreeEmptyFolderName',       { fg = c.Gray,                                             bg = 'NONE' })
    hl(0, 'NvimTreeFolderName',            { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'NvimTreeSpecialFile',           { fg = c.Pink,                                             bg = 'NONE',      underline = true })
    hl(0, 'NvimTreeNormal',                { fg = c.Front,                                            bg = opts.disable_nvimtree_bg and c.Back or c.LeftDark })
    hl(0, 'NvimTreeCursorLine',            { fg = 'NONE',                                             bg = opts.disable_nvimtree_bg and c.CursorDarkDark or c.LeftMid })
    hl(0, 'NvimTreeVertSplit',             { fg = opts.disable_nvimtree_bg and c.SplitDark or c.Back, bg = c.Back })
    hl(0, 'NvimTreeEndOfBuffer',           { fg = opts.disable_nvimtree_bg and c.CursorDarkDark or c.LeftDark })
    hl(0, 'NvimTreeOpenedFolderName',      { fg = 'NONE',                                             bg = opts.disable_nvimtree_bg and c.CursorDarkDark or c.LeftDark })
    hl(0, 'NvimTreeGitRenamed',            { fg = c.GitRenamed,                                       bg = 'NONE' })
    hl(0, 'NvimTreeGitIgnored',            { fg = c.GitIgnored,                                       bg = 'NONE' })
    hl(0, 'NvimTreeGitDeleted',            { fg = c.GitDeleted,                                       bg = 'NONE' })
    hl(0, 'NvimTreeGitStaged',             { fg = c.GitStageModified,                                 bg = 'NONE' })
    hl(0, 'NvimTreeGitMerge',              { fg = c.GitUntracked,                                     bg = 'NONE' })
    hl(0, 'NvimTreeGitDirty',              { fg = c.GitModified,                                      bg = 'NONE' })
    hl(0, 'NvimTreeGitNew',                { fg = c.GitAdded,                                         bg = 'NONE' })

    -- Bufferline
    hl(0, 'BufferLineIndicatorSelected',   { fg = c.LeftDark,                                         bg = 'NONE' })
    hl(0, 'BufferLineFill',                { fg = 'NONE',                                             bg = c.LeftDark })

    -- LSP
    hl(0, 'DiagnosticError',               { fg = c.Red,                                              bg = 'NONE' })
    hl(0, 'DiagnosticWarn',                { fg = c.Yellow,                                           bg = 'NONE' })
    hl(0, 'DiagnosticInfo',                { fg = c.Blue,                                             bg = 'NONE' })
    hl(0, 'DiagnosticHint',                { fg = c.Blue,                                             bg = 'NONE' })
    hl(0, 'DiagnosticUnderlineError',      { fg = 'NONE',                                             bg = 'NONE',      undercurl = true, sp = c.Red })
    hl(0, 'DiagnosticUnderlineWarn',       { fg = 'NONE',                                             bg = 'NONE',      undercurl = true, sp = c.Yellow })
    hl(0, 'DiagnosticUnderlineInfo',       { fg = 'NONE',                                             bg = 'NONE',      undercurl = true, sp = c.Blue })
    hl(0, 'DiagnosticUnderlineHint',       { fg = 'NONE',                                             bg = 'NONE',      undercurl = true, sp = c.Blue })
    hl(0, 'LspReferenceText',              { fg = 'NONE',                                             bg = c.PopupHighlightGray })
    hl(0, 'LspReferenceRead',              { fg = 'NONE',                                             bg = c.PopupHighlightGray })
    hl(0, 'LspReferenceWrite',             { fg = 'NONE',                                             bg = c.PopupHighlightGray })

    -- Nvim compe
    hl(0, 'CmpItemKindVariable',           { fg = c.LightBlue,                                        bg = 'NONE' })
    hl(0, 'CmpItemKindInterface',          { fg = c.LightBlue,                                        bg = 'NONE' })
    hl(0, 'CmpItemKindText',               { fg = c.LightBlue,                                        bg = 'NONE' })
    hl(0, 'CmpItemKindFunction',           { fg = c.Pink,                                             bg = 'NONE' })
    hl(0, 'CmpItemKindMethod',             { fg = c.Pink,                                             bg = 'NONE' })
    hl(0, 'CmpItemKindKeyword',            { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'CmpItemKindProperty',           { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'CmpItemKindUnit',               { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'CmpItemKindConstructor',        { fg = c.UiOrange,                                         bg = 'NONE' })
    hl(0, 'CmpItemMenu',                   { fg = c.PopupFront,                                       bg = 'NONE' })
    hl(0, 'CmpItemAbbr',                   { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'CmpItemAbbrDeprecated',         { fg = c.CursorDark,                                       bg = c.PopupBack, strikethrough = true })
    hl(0, 'CmpItemAbbrMatch',              { fg = c.MediumBlue,                                       bg = 'NONE',      bold = true })
    hl(0, 'CmpItemAbbrMatchFuzzy',         { fg = c.MediumBlue,                                       bg = 'NONE',      bold = true })

    -- Dashboard
    hl(0, 'DashboardHeader',               { fg = c.spiceGreen,                                             bg = 'NONE' })
    hl(0, 'DashboardCenter',               { fg = c.spiceOrange,                                     bg = 'NONE' })
    hl(0, 'DashboardShortCut',             { fg = c.spicePink,                                             bg = 'NONE' })
    hl(0, 'DashboardFooter',               { fg = c.spiceGreen,                                             bg = 'NONE',      italic = true })

    hl(0, 'NvimTreeFolderIcon',            { fg = c.Blue,                                             bg = 'NONE' })
    hl(0, 'NvimTreeIndentMarker',          { fg = c.LineNumber,                                       bg = 'NONE' })

    hl(0, 'LspFloatWinNormal',             { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'LspFloatWinBorder',             { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaHoverBorder',            { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaSignatureHelpBorder',    { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaCodeActionBorder',       { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaDefPreviewBorder',       { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspLinesDiagBorder',            { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaRenameBorder',           { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaBorderTitle',            { fg = c.CursorDark,                                       bg = 'NONE' })
    hl(0, 'LSPSagaDiagnosticTruncateLine', { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaDiagnosticBorder',       { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaDiagnosticBorder',       { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaShTruncateLine',         { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaShTruncateLine',         { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaDocTruncateLine',        { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaRenameBorder',           { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'LspSagaLspFinderBorder',        { fg = c.LineNumber,                                       bg = 'NONE' })

    hl(0, 'TelescopePromptBorder',         { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'TelescopeResultsBorder',        { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'TelescopePreviewBorder',        { fg = c.LineNumber,                                       bg = 'NONE' })
    hl(0, 'TelescopeNormal',               { fg = c.Front,                                            bg = 'NONE' })
    hl(0, 'TelescopeSelection',            { fg = c.Front,                                            bg = c.PopupHighlightBlue })
    hl(0, 'TelescopeMultiSelection',       { fg = c.Front,                                            bg = c.PopupHighlightBlue })
    hl(0, 'TelescopeMatching',             { fg = c.MediumBlue,                                       bg = 'NONE',      bold = true })
    hl(0, 'TelescopePromptPrefix',         { fg = c.Front,                                            bg = 'NONE' })

    -- symbols-outline
    -- white fg and lualine blue bg
    hl(0, 'FocusedSymbol',                 { fg = '#ffffff',                                          bg = c.UiBlue })
    hl(0, 'SymbolsOutlineConnector',       { fg = c.LineNumber,                                       bg = 'NONE' })
end

theme.link_highlight = function()
    -- Legacy groups for official git.vim and diff.vim syntax
    hl(0, 'diffAdded', { link = 'DiffAdd' })
    hl(0, 'diffChanged', { link = 'DiffChange' })
    hl(0, 'diffRemoved', { link = 'DiffDelete' })
    -- Nvim compe
    hl(0, 'CompeDocumentation', { link = 'Pmenu' })
    hl(0, 'CompeDocumentationBorder', { link = 'Pmenu' })
    hl(0, 'CmpItemKind', { link = 'Pmenu' })
    hl(0, 'CmpItemKindClass', { link = 'CmpItemKindConstructor' })
    hl(0, 'CmpItemKindModule', { link = 'CmpItemKindKeyword' })
    hl(0, 'CmpItemKindOperator', { link = '@operator' })
    hl(0, 'CmpItemKindReference', { link = '@parameter.reference' })
    hl(0, 'CmpItemKindValue', { link = '@field' })
    hl(0, 'CmpItemKindField', { link = '@field' })
    hl(0, 'CmpItemKindEnum', { link = '@field' })
    hl(0, 'CmpItemKindSnippet', { link = '@text' })
    hl(0, 'CmpItemKindColor', { link = 'cssColor' })
    hl(0, 'CmpItemKindFile', { link = '@text.uri' })
    hl(0, 'CmpItemKindFolder', { link = '@text.uri' })
    hl(0, 'CmpItemKindEvent', { link = '@constant' })
    hl(0, 'CmpItemKindEnumMember', { link = '@field' })
    hl(0, 'CmpItemKindConstant', { link = '@constant' })
    hl(0, 'CmpItemKindStruct', { link = '@structure' })
    hl(0, 'CmpItemKindTypeParameter', { link = '@parameter' })
end

return theme