-- lazy.nvim > Plugin manager for Neovim.
-- LazyVim docs:    https://www.lazyvim.org/configuration/lazy.nvim
-- Source code: https://github.com/LazyVim/starter/blob/main/lua/config/lazy.lua

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" }, -- add LazyVim and import its plugins
    { import = "plugins" }, -- import/override with your plugins
  },

  defaults = {
    lazy = false, -- custom plugins do not lazy load by default
    version = false, -- always use the latest git commit
  },

  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates

  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        -- "tutor",
      },
    },
  },
})
