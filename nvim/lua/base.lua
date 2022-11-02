vim.cmd('autocmd!')

-- File encodings
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.fileformat = 'unix'

-- Line numbers
vim.wo.number = true
vim.opt.relativenumber = true

-- Basic settings
vim.opt.title = true
vim.opt.autoindent = true

-- Scrolling
-- vim.opt.scrolloff = 10 -- set the number of lines kept when scrolling (ex. C-d, C-u)

-- Base configs
vim.cmd('set mouse=a') -- set the usage of mouse, when needed
vim.opt.backup = false -- have no backup file
vim.opt.showcmd = true -- show what command was executed
vim.opt.cmdheight = 1 -- height of the command line at the bottom
vim.opt.laststatus = 2
vim.opt.shell = 'zsh' -- the shell used

-- Files/Dir settings
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files - search down into subfolders
-- vim.opt.wildignore:append { '*/node_modules/*' }

-- ctags settings
vim.opt.tags:append { './tags' } -- Look for ctags

-- Undo settings
vim.bo.undofile = true -- set an undofile; nice to have a undo even after closing files
vim.undodir = "/tmp//"

-- Search
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true -- highlights as I search

-- Completion settings
vim.opt.completeopt = { 'menu', 'menuone' }

-- Tabs/formatting
vim.opt.smarttab = true
vim.opt.showmatch = true -- shows matching brackets/quotes
vim.opt.shiftwidth = 4 -- >> | << moves by 4 spaces
vim.opt.tabstop = 4 -- set tab spacing as 4
vim.opt.softtabstop = 4 -- set tab spacing
vim.opt.expandtab = true -- expaands tabs to spaces
vim.opt.autoindent = true -- auto indent
vim.opt.smartindent = true -- smart indent

-- Wrapping text
vim.opt.wrap = false -- wrap lines
vim.opt.breakindent = true -- wrapped lines will have same visual indents

-- Bells
vim.opt.errorbells = false -- no error bells in vim

-- Undercurl
-- doesn't work with iterm2
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Set block cursor style
-- Reference chart of values
--  PS = 0 --> blinking block
--  PS = 1 --> blinking block (default)
--  PS = 2 --> steady block
--  PS = 3 --> blinking underline
--  PS = 4 --> steady underline
--  PS = 5 --> blinking bar (xterm)
--  PS = 6 --> steady bar (xterm)
vim.cmd([[let &t_SI = "\e[6 q"]])
vim.cmd([[let &t_EI = "\e[2 q"]])

-- Columns (color/sign)
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '120'

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = '*',
    command = "set nopaste"
})

-- Add asterisk in block comments
vim.opt.formatoptions:append { 'r' }

-- Block Cursor
vim.opt.guicursor = ""

-- Vim-slime
vim.cmd([[let g:slime_target="tmux"]]) -- using tmux for vim-slime
vim.cmd([[let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}]]) -- defaults and send to last pane
vim.cmd([[let g:slime_dont_ask_default = 1]])

-- Latex formatting (vim-latex-live-preview)
vim.cmd([[let g:tex_flavor = "latex"]])
vim.cmd([[autocmd Filetype tex setl updatetime=1]])

-- setting preview based on operating system
local has = function(x)
    return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
if is_mac then
    vim.cmd("let g:livepreview_previewer = 'open -a Preview'")
else
    vim.cmd("let g:livepreview_previewer = 'evince'")
end
