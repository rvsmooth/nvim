vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>db", vim.cmd.Alpha)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- open nvim config dir
vim.keymap.set({ "n", "v" }, "<leader>fc", ":tabedit ~/.config/nvim<CR>")

-- Keybindings for buffer movement
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { silent = true })

-- Resize mappings using Control + hjkl
vim.api.nvim_set_keymap('n', '<C-k>', ':resize -3<CR>', { noremap = true, silent = true })  -- Resize up
vim.api.nvim_set_keymap('n', '<C-j>', ':resize +3<CR>', { noremap = true, silent = true })  -- Resize down
vim.api.nvim_set_keymap('n', '<C-h>', ':vertical resize -3<CR>', { noremap = true, silent = true })  -- Resize left
vim.api.nvim_set_keymap('n', '<C-l>', ':vertical resize +3<CR>', { noremap = true, silent = true })  -- Resize right
