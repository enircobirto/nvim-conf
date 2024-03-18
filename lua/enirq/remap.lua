vim = vim

vim.g.mapleader = " "
vim.keymap.set("n","<leader>t", vim.cmd.NvimTreeToggle)
vim.keymap.set("n","<leader>py", vim.cmd.PackerSync)

vim.keymap.set("n", "<A-Up>", ":resize -5<CR>")
vim.keymap.set("n", "<A-Down>", ":resize +5<CR>")
vim.keymap.set("n", "<A-Left>", ":vertical resize +5<CR>")
vim.keymap.set("n", "<A-Right>", ":vertical resize -5<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

--vim.keymap.set("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
--vim.keymap.set("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")
--vim.keymap.set("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
--vim.keymap.set("n", "<leader>fb", "<cmd> Telescope buffers <CR>")

vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>')
vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>')
vim.keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>')
vim.keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>')

vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>')
vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>')
vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>')
vim.keymap.set('n', '<A-t>', '<Cmd>BufferRestore<CR>')

vim.keymap.set('n', '<leader>w', '<Cmd>w<CR>')
vim.keymap.set('i', 'poi', '<Escape><Cmd>w<CR>l')

vim.keymap.set("n", "-", "<cmd>Oil <CR><cmd>set modifiable<cr>", {})
vim.keymap.set("n", "<leader>-", "<cmd>set modifiable<CR>", {})

vim.keymap.set('t', '<C-q>', [[<C-\><C-n>]])
vim.keymap.set('t', "''", [[<C-\><C-n>]])
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]])
vim.keymap.set('t', '<leader><leader>1', '<CMD>ToggleTerm 1<CR>')
vim.keymap.set('t', '<leader><leader>2', '<CMD>ToggleTerm 2<CR>')
vim.keymap.set('t', '<leader><leader>3', '<CMD>ToggleTerm 3<CR>')
vim.keymap.set('t', '<leader><leader>4', '<CMD>ToggleTerm 4<CR>')
vim.keymap.set('t', '<leader><leader>q', '<CMD>ToggleTerm<CR>')

vim.keymap.set("n", "'", "`")
vim.keymap.set("n", "vip", "{jV}")


vim.keymap.set('n', '<leader><leader>q', '<CMD>ToggleTerm<CR>')
