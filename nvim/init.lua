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
vim.opt.autocomplete = true 	  -- Autocomplete
vim.opt.autocompletedelay = 250 -- Delay(ms) before showing autocomplete menu 

---------------
--- PLUGINS ---
---------------

vim.pack.add({
  {src = 'https://github.com/HiPhish/rainbow-delimiters.nvim.git', name = "Rainbow-Delimiters"},
})
