-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Set Terminal mode always open in terminal (insert) mode
vim.api.nvim_create_autocmd('TermOpen', {
  pattern = '*',
  command = 'startinsert',
})

-- TODO: Deprecated
-- vim.api.nvim_create_autocmd('FileType', {
--   group = vim.api.nvim_create_augroup('win-fix-buf', { clear = true }),
--   pattern = 'aerial',
--   desc = 'Disallow changing buf',
--   callback = function()
--     if vim.fn.exists '&winfixbuf' == 1 then
--       vim.wo.winfixbuf = true
--     end
--   end,
-- })
