local themes = {}

local bufferline_options = {
    mode = 'tabs',
    separator_style = 'thin',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
}

local initialize_lualine = function(in_theme)
    -- Setting lualine
    local lualine_status, lualine = pcall(require, 'lualine')
    if (not lualine_status) then return end

    lualine.setup {
        options = {
            icons_enabled = true,
            theme = in_theme,
            section_separators = { left = '', right = '' },
            component_separators = { left = '', right = '' },
            disable_filteypes = {}
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch' },
            lualine_c = { {
                'filename',
                file_status = true, -- displays file status
                path = 0 -- 0 = just filename
            } },
            lualine_x = { {
                'diagnostics',
                sources = {
                    'nvim_diagnostic',
                    symbols = { error = ' ', warn = ' ', info = ' ', hint = '' }
                },
                'encoding',
                'filetype'
            } },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { {
                'filename',
                file_status = true,
                path = 1 -- 1 - relative path
            } },
            lualine_x = { 'location' },
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        extension = { 'fugitive' },
    }
end

function themes.neosolarized()
    -- Requiring neosolarized and setting it up
    local neosolarized_status, neosolarized = pcall(require, 'neosolarized')
    if neosolarized_status then
        neosolarized.setup({ comment_italics = true })

        local colorbuddy = require('colorbuddy.init')
        local Color = colorbuddy.Color
        local colors = colorbuddy.colors
        local Group = colorbuddy.Group
        local groups = colorbuddy.groups
        local styles = colorbuddy.styles

        Color.new('black', '#000000')
        Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
        Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
        Group.new('Visual', colors.none, colors.base03, styles.reverse)

        local cError = groups.Error.fg
        local cInfo = groups.Information.fg
        local cWarn = groups.Warning.fg
        local cHint = groups.Hint.fg

        Group.new('DiagnosticVritualTextError', cError, cError:dark():dark():dark():dark(), styles.NONE)
        Group.new('DiagnosticVritualTextInfo', cInfo, cInfo:dark():dark():dark(), styles.NONE)
        Group.new('DiagnosticVritualTextWarn', cWarn, cWarn:dark():dark():dark(), styles.NONE)
        Group.new('DiagnosticVritualTextHint', cHint, cHint:dark():dark():dark(), styles.NONE)

        Group.new('DiagnosticUnderlineError', colors.none, colors.none, styles.undercurl, cError)
        Group.new('DiagnosticUnderlineWarn', colors.none, colors.none, styles.undercurl, cWarn)
        Group.new('DiagnosticUnderlineInfo', colors.none, colors.none, styles.undercurl, cInfo)
        Group.new('DiagnosticUnderlineHint', colors.none, colors.none, styles.undercurl, cHint)
    end

    -- Requiring bufferline
    local bufferline_status, bufferline = pcall(require, 'bufferline')
    if bufferline_status then
        bufferline.setup {
            options = bufferline_options,
            highlights = {
                separator = {
                    fg = '#073642',
                    bg = '#002b36'
                },
                separator_selected = {
                    fg = '#073642',
                },
                background = {
                    fg = '#657b83',
                    bg = '#002b36'
                },
                buffer_selected = {
                    fg = '#fdf6e3',
                    bold = true
                },
                fill = {
                    bg = '#073642'
                }
            }
        }
    end

    initialize_lualine('solarized_dark')

end

function themes.gruvbox()
    local bufferline_status, bufferline = pcall(require, 'bufferline')
    if bufferline_status then
        bufferline.setup {
            options = bufferline_options
        }
    end
    vim.cmd('colorscheme gruvbox')
    initialize_lualine('gruvbox')
end

return themes
