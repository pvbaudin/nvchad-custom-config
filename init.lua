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

-- Set 72 character textwidth for git commit messages
vim.cmd([[
  autocmd FileType gitcommit set textwidth=72
]])

-- trigger autoread when file changes on disk
vim.cmd([[
  set autoread
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
  " notification after file change
  autocmd FileChangedShellPost *
        \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

]])
