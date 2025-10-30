vim.g.mapleader = " "
-- leader
vim.g.maplocalleader = " "
-- keymaps
vim.opt.guicursor = "n-v-c-sm:block,i-ci:ver25-Cursor,r-cr-o:hor20"

vim.keymap.set("n", "<leader>w", ":write<CR>", { desc = "write buffer to file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "quit" })
vim.keymap.set("n", "<leader>so", ":so<CR>", { desc = "source current file" })
vim.keymap.set("n", "vv", "<C-v>")

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file" })
vim.keymap.set("n", "<C-b>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-n>", ":bprevious<CR>", { desc = "Previous buffer" })

vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", { desc = "Increase window width" })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Increase window width" })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Open parent directory" })

vim.keymap.set({ "i", "v", "n" }, "<Esc>", function()
	vim.cmd("nohlsearch")
	return vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
end, { expr = true, noremap = true, silent = true })

vim.keymap.set("n", "<leader>tt", ":ToggleTerm direction=horizontal size=10<CR>", { desc = "Opening Terminal" })

vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", { desc = "Opening Terminal" })
vim.keymap.set("n", "<leader>ap", ":e ~/.config/nvim/lua/plugins/", { desc = "add-plugins" })

vim.keymap.set("n", "<leader>zi", function()
	vim.api.nvim_command("VietnameseToggle")
	vim.cmd("startinsert")
end, { silent = true })
