local g = vim.g
local opt = vim.opt

-- leader
g.mapleader = " "

-- gui
opt.background = 'dark'
opt.termguicolors = true

-- indent
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

-- number
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2

-- search
opt.ignorecase = true
opt.smartcase = true
opt.mouse = 'a'

opt.termguicolors = true
opt.clipboard = 'unnamedplus'
opt.cursorline = true
--opt.showmode = false
opt.laststatus = 3
opt.scrolloff = 10

opt.list = true
opt.listchars:append "eol:↴"
