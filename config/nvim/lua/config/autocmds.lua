-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

vim.api.nvim_create_autocmd({ "VimEnter", "VimResume" }, {
  group = augroup("restore_nvim_cursor"),
  command = "set guicursor=n-v-c-sm:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr-o:hor20-Cursor/lCursor",
})

vim.api.nvim_create_autocmd({ "VimLeave", "VimSuspend" }, {
  group = augroup("restore_iterm_cursor"),
  command = "set guicursor=a:ver25",
})

--[[ 
See:
`help lua-guide-autocommands`
`help guicursor`
`help faq` search for "CURSOR STYLE ISN'T RESTORED AFTER EXITING"
--]]
