vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Automatically stays centered in update 0.10.0-dev
-- vim.keymap.set("n", "<C-d>", "<C-d>")
-- vim.keymap.set("n", "<C-u>", "<C-u>")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set('n', '<Leader>"','ciw"<C-r>""<Esc>')
vim.keymap.set('v', '<Leader>"','c"<C-r>""<Esc>')
vim.keymap.set("n", "<Leader>'","ciw'<C-r>-'<Esc>")
vim.keymap.set("v", "<Leader>'","c'<C-r>-'<Esc>")

vim.keymap.set("i", "§", "<")
vim.keymap.set("i", "½", ">")
vim.keymap.set("i", "ə", "|")


-- copy to system clipboard !!MUST HAVE 'xclip' or equivalent!!
vim.keymap.set('v', '<leader>y', '"+y')
