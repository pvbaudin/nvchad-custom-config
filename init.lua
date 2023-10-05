local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- Set relative line numbers as the default
vim.cmd('set relativenumber')

-- Set the background to be transparent
--vim.cmd('highlight Normal ctermbg=NONE guibg=NONE')

autocmd("vimenter", {
  pattern = "*",
  command = "highlight Normal ctermbg=NONE guibg=NONE",
})

-- Automatically open nvim-tree when Neovim is started with a directory
vim.cmd([[
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | NvimTreeFindFile | wincmd p | endif
]])


