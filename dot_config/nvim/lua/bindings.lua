vim.g.mapleader = " "
mapper = vim.api.nvim_set_keymap

mapper("n", "<Space>", "<NOP>", {noremap = true, silent = true})

--nvim-tree
mapper("n", "<C-e>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

--pane movements
mapper("n", "<C-h>", "<C-w>h", {silent = true})
mapper("n", "<C-j>", "<C-w>j", {silent = true})
mapper("n", "<C-k>", "<C-w>k", {silent = true})
mapper("n", "<C-l>", "<C-w>l", {silent = true})

--better indentation
mapper("v", "<", "<gv", {noremap = true, silent = true})
mapper("v", ">", ">gv", {noremap = true, silent = true})
