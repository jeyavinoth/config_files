local keymap = vim.keymap

-- Harpoon mappings
keymap.set("n", "<Leader>a", ':lua require("harpoon.mark").add_file()<CR>', { noremap = true })
keymap.set("n", "<Leader>l", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true })

keymap.set("n", "<Leader>hn", ':lua require("harpoon.ui").nav_next()<CR>', { noremap = true })
keymap.set("n", "<Leader>hp", ':lua require("harpoon.ui").nav_prev()<CR>', { noremap = true })

keymap.set("n", "<Leader>1", ':lua require("harpoon.ui").nav_file(1)<CR>', { noremap = true })
keymap.set("n", "<Leader>2", ':lua require("harpoon.ui").nav_file(2)<CR>', { noremap = true })
keymap.set("n", "<Leader>3", ':lua require("harpoon.ui").nav_file(3)<CR>', { noremap = true })
keymap.set("n", "<Leader>4", ':lua require("harpoon.ui").nav_file(4)<CR>', { noremap = true })
keymap.set("n", "<Leader>5", ':lua require("harpoon.ui").nav_file(5)<CR>', { noremap = true })
keymap.set("n", "<Leader>6", ':lua require("harpoon.ui").nav_file(6)<CR>', { noremap = true })
keymap.set("n", "<Leader>7", ':lua require("harpoon.ui").nav_file(7)<CR>', { noremap = true })
keymap.set("n", "<Leader>8", ':lua require("harpoon.ui").nav_file(8)<CR>', { noremap = true })
keymap.set("n", "<Leader>9", ':lua require("harpoon.ui").nav_file(9)<CR>', { noremap = true })
