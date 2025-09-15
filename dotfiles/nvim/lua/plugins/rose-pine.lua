return {
  "rose-pine/neovim",
  config = function()
    local color = require("eldritch.colors").setup()
    local util = require "eldritch.util"
    local rose = require "rose-pine.palette"
    require("rose-pine").setup {
      before_highlight = function() end,
      dark_variant = "moon",
      variant = "dawn",
      dim_inactive_windows = true,
      extend_background_behind_borders = true,
      styles = {
        bold = false,
        italic = true,
        transparency = false,
      },
      enable = {
        terminal = true,
        italic = true,
        transparency = false,
      },
      groups = {
        warn = "#fca83d",
        error = "#FA4F70",
      },
      palette = {
        moon = {
          base = color.bg,
        },
      },
      highlight_groups = {
        Comment = { fg = "#4de3E1", blend = 30 },
        Visual = {
          fg = "pine",
          bg = "text",
          blend = 15,
          inherit = false,
        },
        ["@operator"] = { fg = "#4eAAee" },
        ["@variable"] = { fg = "#f5f5f5" },
        ["@punctuation.delimiter"] = { fg = "iris" },
        ["@string"] = { fg = "#a8ec9f" },
        ["@type"] = { fg = "#acf0d8", inherit = false },
        ["@type.builtin"] = { fg = "#3e8fb0", inherit = false },
        ["@lsp.type.property.cpp"] = { fg = "#acf0d8", inherit = false },
        ["@lsp.type.function"] = { fg = "rose", inherit = false },
        ["@lsp.typemod.function.defaultLibrary.cpp"] = { fg = util.blend(color.bright_red, rose.love, 0.4) },
        -- ["@function.method"] = { fg = color.red, inherit = false },
      },
    }
  end,
}
