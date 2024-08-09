return {

  -- github  https://github.com/projekt0n/github-nvim-theme
  { "projekt0n/github-nvim-theme" },

  -- everforest  https://github.com/sainnhe/everforest
  { "sainnhe/everforest", enabled = false },

  -- kanagawa  https://github.com/rebelot/kanagawa.nvim
  { "rebelot/kanagawa.nvim", enabled = false },

  -- kanagawa-paper  https://github.com/sho-87/kanagawa-paper.nvim
  { "sho-87/kanagawa-paper.nvim", enabled = false },

  -- material  https://github.com/marko-cerovac/material.nvim
  { "marko-cerovac/material.nvim", enabled = false },

  -- modus  https://github.com/miikanissi/modus-themes.nvim
  { "miikanissi/modus-themes.nvim", enabled = false },

  -- Configure LazyVim to load theme
  {
    "LazyVim/LazyVim",
    opts = function()
      if os.execute("defaults read -g AppleInterfaceStyle") == 0 then
        return { colorscheme = "github_dark_dimmed" }
      else
        return { colorscheme = "github_light" }
      end
    end,
  },
}
