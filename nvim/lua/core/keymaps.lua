-- set tab to 4 spaces
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
-- set relative line numbers
vim.wo.relativenumber = true
vim.wo.number = true

-- show hidden characters
vim.wo.list = true
vim.wo.listchars = "tab:»·,trail:·,extends:→,precedes:←"
vim.wo.relativenumber = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- undo settings
vim.opt.undofile = true
vim.opt.undodir= os.getenv("HOME") .. "/.config/nvim/undodir"

-- set colorscheme
vim.opt.termguicolors = true

-- Scroll Of
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Update time
vim.opt.updatetime = 50

-- Color Column
vim.opt.colorcolumn = "80"

-- Keymap
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
