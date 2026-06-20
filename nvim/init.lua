-- .config/nvim/.luarc.json removes the "vim is an undefined global" warning

---------------
--- OPTIONS ---
---------------
vim.opt.number = true       -- Shows line numbers
vim.opt.autoindent = true   -- Copies last line's indentation
vim.opt.smartindent = true
vim.opt.background = "dark" -- Sets colors for dark|light backgrounds
vim.opt.tabstop = 2         -- Sets visual spacing of TAB
vim.opt.shiftwidth = 2      -- Sets autospacing width
vim.opt.softtabstop = 2     -- Sets spaces inserted/deleted with TAB/backspace in Insert mode
vim.opt.expandtab = true    -- Insert spaces instead of TAB characters
vim.opt.termguicolors = true
vim.opt.winborder = "rounded"
vim.opt.wrap = false

---------------
--- PLUGINS ---
---------------
vim.pack.add({
  { src = 'https://github.com/HiPhish/rainbow-delimiters.nvim'},
  { src = 'https://github.com/mason-org/mason.nvim'},
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/nvim-lualine/lualine.nvim' },
  { src = 'https://github.com/romus204/tree-sitter-manager.nvim' },
  { src = 'https://github.com/Saghen/blink.cmp' },
  { src = 'https://github.com/Saghen/blink.lib' },
})

-- Plugin Configs Live Here
require('plugins.mason')
require('plugins.lualine')
require('plugins.tree-sitter-manager')
require('plugins.blink')

-----------
--- LSP ---
-----------
vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true,
  signs = false,
})

vim.lsp.enable({
  'lua_ls',
  'pyright',
  'cssls',
  'jsonls',
  'docker_language_server',
  'rust_analyzer',
})

-------------
--- BINDS ---
-------------
local map = vim.keymap.set
vim.g.mapleader = " "

map('n', '<leader>lf', vim.lsp.buf.format)
map('n', '<leader>w', ':write<CR>')
map('n', '<leader>q', ':quit<CR>')
map({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
map({ 'n', 'v', 'x' }, '<leader>d', '"+d<CR>')
