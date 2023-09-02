vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"

vim.opt.splitright = true
vim.splitbelow = true

vim.opt.syntax = "ON" -- str:  Allow syntax highlighting


-- [[ Sevimrch ]]
-- opt.ignorecvimse = true            -- bool: Ignore case in search patterns
-- opt.smvimrtcase = true             -- bool: Override ignorecase if search contains capitals
