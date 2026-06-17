---------------
--- OPTIONS ---
---------------
vim.opt.number = true         	-- Shows line numbers
vim.opt.autoindent = true     	-- Copies last line's indentation
vim.opt.background = "dark"   	-- Sets colors for dark|light backgrounds
vim.opt.tabstop = 2           	-- Sets visual spacing of TAB
vim.opt.shiftwidth = 2        	-- Sets autospacing width
vim.opt.softtabstop = 2       	-- Sets spaces inserted/deleted with TAB/backspace in Insert mode
vim.opt.expandtab = true      	-- Insert spaces instead of TAB characters

---------------
--- PLUGINS ---
---------------
vim.pack.add({
  {src = 'https://github.com/HiPhish/rainbow-delimiters.nvim', name = 'rainbow-delimiters'},
  {src = 'https://github.com/mason-org/mason.nvim', name = "mason"},
  {src = 'https://github.com/neovim/nvim-lspconfig'},
  {src = 'https://github.com/nvim-tree/nvim-web-devicons'},
  {src = 'https://github.com/nvim-lualine/lualine.nvim'},
  {src = 'https://github.com/romus204/tree-sitter-manager.nvim'},
})

require('plugins.mason')
require('plugins.lualine')
require('plugins.tree-sitter-manager')

-----------
--- LSP ---
-----------
vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = false,
  signs = false,
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('pyright')
vim.lsp.enable('cssls')
vim.lsp.enable('jsonls')
vim.lsp.enable('docker_language_server')
vim.lsp.enable('rust_analyzer')
