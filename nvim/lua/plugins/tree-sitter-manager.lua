require("tree-sitter-manager").setup({
  -- Default Options
  parser_dir = vim.fn.stdpath("data") .. "/site/parser",
  query_dir = vim.fn.stdpath("data") .. "/site/queries",
  assume_installed = {}, -- blacklist languages
  ensure_installed = {}, -- parsers to install at startup
  border = "rounded", -- border style for the TUI window
  auto_install = false, -- auto-install when a new filetype is encountered
  noauto_install = {}, -- blacklist from auto_install
  highlight = true, -- enable treesitter highlighting (use list to whitelist)
  nohighlight = {}, -- blacklist from highlight
  languages = {}, -- override or add new parser sources
  nerdfont = true, -- use Nerd Font icons in the manager UI
})
