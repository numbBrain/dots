local o = vim.o
local wo = vim.wo
local bo = vim.bo

o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.ruler = true
o.mouse = "a"
o.splitbelow = true
o.splitright = true
bo.autoindent = true
o.showtabline = 2
wo.signcolumn = "yes:1"
o.clipboard = "unnamedplus"
o.errorbells = false
bo.tabstop = 4
bo.softtabstop = 4
bo.shiftwidth = 4
bo.expandtab = false
bo.smartindent = true
o.number = true
wo.relativenumber = true
wo.wrap = false
o.incsearch = true
o.hlsearch = false
o.cursorline = true
o.showmode = false
vim.g.colors_name = "onedark"
vim.g.onedark_style = "deep"
