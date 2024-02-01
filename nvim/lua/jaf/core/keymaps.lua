vim.g.mapleader = " "

local key = vim.keymap

key.set("n", "<leader>t", "<cmd>TroubleToggle<CR>")
key.set("n", "<leader>l", "<cmd>Lazy<CR>")

key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")

key.set("n", "J", "mzJ`z")
key.set("n", "<C-d>", "<C-d>zz")
key.set("n", "<C-u>", "<C-u>zz")
key.set("n", "n", "nzzzv")
key.set("n", "N", "Nzzzv")

-- save
key.set("n", "<C-s>", ":w<CR>")
key.set("v", "<C-s>", "<Esc>:w<CR>")
key.set("i", "<C-s>", "<Esc>:w<CR>")

-- greatest remap ever
key.set("x", "<leader>p", [["_dP]])


-- next greatest remap ever : asbjornHaland
key.set({ "n", "v" }, "<leader>y", [["+y]])
key.set("n", "<leader>Y", [["+Y]])

key.set({ "n", "v" }, "<leader>pp", [["_d]])

-- This is going to get me cancelled
key.set("i", "<C-c>", "<Esc>")

key.set("n", "Q", "<nop>")
key.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format!
key.set("n", "<leader>fo", vim.lsp.buf.format)

-- julia help me ples
key.set("n", "<leader>fj", "<cmd>JuliaFormatterFormat<CR>")

key.set("n", "<C-k>", "<cmd>cnext<CR>zz")
key.set("n", "<C-j>", "<cmd>cprev<CR>zz")
key.set("n", "<leader>k", "<cmd>lnext<CR>zz")
key.set("n", "<leader>j", "<cmd>lprev<CR>zz")

key.set("n", "<leader>ps", "<cmd>PackerSync<CR>zz")

--- what the fuck
key.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
key.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

key.set("n", "<leader>vpp", "<cmd>e ~/dots/nvim/lua/jaf/packer.lua<CR>");

-- reload
key.set("n", "<leader>re", function()
    vim.cmd("so")
end)

-- latex
-- key.set("n", "<leader>lc", "<cmd> VimtexCompile<CR>", { silent = true })

-- split
key.set("n", "<leader>vs", "<cmd> split<CR>", { silent = true })
key.set("n", "<leader>q", "<cmd> q<CR>", { silent = true })
