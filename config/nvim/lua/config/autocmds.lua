-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

vim.api.nvim_create_autocmd({ "VimLeave", "VimSuspend" }, {
  group = augroup("restore_terminal_cursor"),
  command = "set guicursor=a:ver25-blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
})

vim.api.nvim_create_autocmd({ "VimEnter", "VimResume" }, {
  group = augroup("restore_vim_cursor"),
  command = "set  guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20",
})

-- vim.api.nvim_create_autocmd({ "VimEnter", "VimResume" }, {
--   group = augroup("restore_vim_cursor"),
--   command = [[set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
--               \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
--               \,sm:block-blinkwait175-blinkoff150-blinkon175]],
-- })

--[[ 
See:
`help lua-guide-autocommands`
`help guicursor`


`help faq` > CURSOR STYLE ISN'T RESTORED AFTER EXITING OR SUSPENDING AND RESUMING NVIM
Terminals do not provide a way to query the cursor style. Use autocommands to
manage the cursor style:
    au VimEnter,VimResume * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
      \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
      \,sm:block-blinkwait175-blinkoff150-blinkon175

    au VimLeave,VimSuspend * set guicursor=a:block-blinkon0
--]]
