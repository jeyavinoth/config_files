local status, n = pcall(require, 'neosolarized')
if not status then return end

-- n.setup({ comment_italics = true })
--
-- local colorbuddy = require('colorbuddy.init')
-- local Color = colorbuddy.Color
-- local colors = colorbuddy.colors
-- local Group = colorbuddy.Group
-- local groups = colorbuddy.groups
-- local styles = colorbuddy.styles
--
-- Color.new('black', '#000000')
-- Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
-- Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
-- Group.new('Visual', colors.none, colors.base03, styles.reverse)
--
-- local cError = groups.Error.fg
-- local cInfo = groups.Information.fg
-- local cWarn = groups.Warning.fg
-- local cHint = groups.Hint.fg
--
-- Group.new('DiagnosticVritualTextError', cError, cError:dark():dark():dark():dark(), styles.NONE)
-- Group.new('DiagnosticVritualTextInfo', cInfo, cInfo:dark():dark():dark(), styles.NONE)
-- Group.new('DiagnosticVritualTextWarn', cWarn, cWarn:dark():dark():dark(), styles.NONE)
-- Group.new('DiagnosticVritualTextHint', cHint, cHint:dark():dark():dark(), styles.NONE)
--
-- Group.new('DiagnosticUnderlineError', colors.none, colors.none, styles.undercurl, cError)
-- Group.new('DiagnosticUnderlineWarn', colors.none, colors.none, styles.undercurl, cWarn)
-- Group.new('DiagnosticUnderlineInfo', colors.none, colors.none, styles.undercurl, cInfo)
-- Group.new('DiagnosticUnderlineHint', colors.none, colors.none, styles.undercurl, cHint)

-- -- -- Added this to get better colors for nvimdiff
-- vim.cmd([[highlight DiffAdd    ctermfg=10 ctermbg=17 cterm=bold gui=none guifg=bg guibg=colors.base03]])
-- vim.cmd([[highlight DiffDelete ctermfg=10 ctermbg=17 cterm=bold gui=none guifg=bg guibg=LightRed]])
-- vim.cmd([[highlight DiffChange ctermfg=10 ctermbg=17 cterm=bold gui=none guifg=bg guibg=LightGreen]])
-- vim.cmd([[highlight DiffText   ctermfg=10 ctermbg=88 cterm=bold gui=none guifg=bg guibg=Orange]])

-- vim.cmd([[ colorscheme neosolarized ]])
