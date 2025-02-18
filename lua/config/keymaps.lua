-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Resize window using <ctrl+shift> arrow keys
map("n", "<C-A-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- split window
map("n", "<leader>\\", "<cmd>vsplit<cr>", { desc = "Split Window Vertically" })
vim.keymap.del("n", "<leader>|")

vim.keymap.set("n", "ge", vim.diagnostic.goto_next, { desc = "Go to Next Diagnostic/Error" })

local opts = {}

vim.keymap.set("i", "jk", "<esc>", opts)

vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
-- the opts entry is optional, btw:
-- vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
vim.keymap.set("t", "<C-h>", vim.cmd.wincmd("h"), opts)
vim.keymap.set("t", "<C-j>", vim.cmd.wincmd("j"), opts)
vim.keymap.set("t", "<C-k>", vim.cmd.wincmd("k"), opts)
vim.keymap.set("t", "<C-l>", vim.cmd.wincmd("l"), opts)
-- I map these binds to both terminal and insert mode like:
-- vim.keymap.set({'t', 'i'}, '<C-h>', vim.cmd.wincmd("h"), opts)
