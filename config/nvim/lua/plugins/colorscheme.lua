-- GitHub theme > https://github.com/projekt0n/github-nvim-theme
-- Guide: https://github.com/projekt0n/github-nvim-theme/blob/main/Usage.md
-- Example: https://github.com/projekt0n/github-nvim-theme?tab=readme-ov-file#modules

-- Settings applied to all styles
local options = {
  styles = {
    comments = "italic",
    keywords = "bold",
  },
  darken = {
    floats = true,
    sidebars = {
      enable = true,
      list = {}, -- Apply dark background to specific windows
    },
  },
}

-- Define colors
local palettes = {
  all = {},
  github_light_default = {}, -- A specific style's value will be used over the `all`'s value.
}

-- Define colors for syntax, diagnostic & git groups
local specs = {
  all = {
    syntax = {},
  },
}

-- Apply colors to vim's highlight-groups
local groups = {
  all = {},
  github_light_default = {},
}

-- Load colorscheme
return {
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({ options = options, palettes = palettes, specs = specs, groups = groups })

      -- Load theme for background
      if os.execute("defaults read -g AppleInterfaceStyle") == 0 then
        vim.cmd("colorscheme github_dark_dimmed")
      else
        vim.cmd("colorscheme github_light_default")
      end
    end,
  },

  -- Other colorschemes
  { "sainnhe/everforest", enabled = false }, -- everforest  https://github.com/sainnhe/everforest
  { "rebelot/kanagawa.nvim", enabled = false }, -- kanagawa  https://github.com/rebelot/kanagawa.nvim
  { "sho-87/kanagawa-paper.nvim", enabled = false }, -- kanagawa-paper  https://github.com/sho-87/kanagawa-paper.nvim
  { "marko-cerovac/material.nvim", enabled = false }, -- material  https://github.com/marko-cerovac/material.nvim
  { "miikanissi/modus-themes.nvim", enabled = false }, -- modus  https://github.com/miikanissi/modus-themes.nvim
}
