local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)

-- Switching windows --
keymap("n", "<C-H>", "<C-W>h", opts)
keymap("n", "<C-J>", "<C-W>j", opts)
keymap("n", "<C-K>", "<C-W>k", opts)
keymap("n", "<C-L>", "<C-W>l", opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)




-- 
-- keymap("i", "<C-o>", "<>", opts)
