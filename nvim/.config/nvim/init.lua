vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.opt.clipboard = "unnamedplus"

require("config.lazy")
