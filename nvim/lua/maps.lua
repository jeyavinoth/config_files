local keymap = vim.keymap

-- Remapping leaders, and window leader
vim.g.mapleader = " " -- remap leader to space

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Window binds
keymap.set('n', '<leader>w', '<C-w>') -- Remap window operations to <leader>w

keymap.set('n', 'sh', '<C-w>h') -- Window movements
keymap.set('n', 'sj', '<C-w>j') -- Window movements
keymap.set('n', 'sk', '<C-w>k') -- Window movements
keymap.set('n', 'sl', '<C-w>l') -- Window movements
keymap.set('n', 'ss', '<C-w>s<C-w>w') -- Horizontal split
keymap.set('n', 'sv', '<C-w>v<C-w>w') -- Vertical split
keymap.set('n', 'sc', '<C-w>c') -- Window close
keymap.set('n', 'sw', '<C-w>w') -- Next window
keymap.set('n', 'so', '<C-w>o') -- Next window

-- Tabs
keymap.set('n', 'se', ':tabedit %<Return>', { silent = true }) -- tabedit current buffer
keymap.set('n', 'st', ':tabnew<Return>', { silent = true }) -- tab new

-- Buffer binds
keymap.set('n', '<C-p>', ':bprev<cr>', { silent = true }) -- tabedit current buffer
keymap.set('n', '<C-n>', ':bnext<cr>', { silent = true }) -- tab new

-- Resizing windows
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><down>', '<C-w>+')
keymap.set('n', '<C-w><up>', '<C-w>-')

-- Clipboard yanks & paste
keymap.set('', '<leader>y', '"*y')
keymap.set('', '<leader>p', '"*p')
keymap.set('', '<leader>Y', '"*Y')
keymap.set('', '<leader>P', '"*P')

-- Git mergetools
keymap.set('n', '<leader>dt', ':difft<Return>')
keymap.set('n', '<leader>do', ':diffo<Return>')

-- Remove trailing whitespace
keymap.set('n', '<leader>e', ':%s/\\s\\+$//e<CR>')

-- Moving lines
keymap.set('n', '<leader>D', ':move+<cr>', { silent = true })
keymap.set('n', '<leader>U', ':move-2<cr>', { silent = true })

-- Vimspector mappings
local opts = { noremap = true }
vim.cmd([[let g:vimspector_enable_mappings = "HUMAN"]])
keymap.set("n", "<leader>vd", ":call vimspector#Launch()<CR>", opts)
keymap.set("n", "<leader>ve", ":call vimspector#Reset()<CR>", opts)
keymap.set("n", "<leader>vc", ":call vimspector#Continue()<CR>", opts)

keymap.set("n", "<leader>vt", ":call vimspector#ToggleBreakpoint()<CR>", opts)
keymap.set("n", "<leader>vT", ":call vimspector#ClearBreakpoints()<CR>", opts)

keymap.set("n", "<leader>vl", ":VimspectorBreakpoints<CR>", opts)

keymap.set("n", "<leader>vr", "<Plug>VimspectorRestart", opts)
keymap.set("n", "<leader>vn", "<Plug>VimspectorStepOver", opts)
keymap.set("n", "<leader>vS", "<Plug>VimspectorStepOut", opts)
keymap.set("n", "<leader>vs", "<Plug>VimspectorStepInto", opts)

-- Tagbar
vim.keymap.set("n", "<leader>t", ":Tagbar<CR>", { noremap = true })

-- Set no read only for vimdiff
vim.keymap.set("n", "<leader>E", "<cmd>set noreadonly<cr>", { noremap = true })
