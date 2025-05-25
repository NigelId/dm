return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      theme = "eldritch",
    },
    sections = {
      lualine_c = { "filename", "macro_recording", "%S" },
      lualine_x = { "ctime" },
    },
  },
  dependencies = { "yavorski/lualine-macro-recording.nvim", "archibate/lualine-time" },
  specs = {
    {
      "rebelot/heirline.nvim",
      optional = true,
      opts = function(_, opts)
        opts.statusline = nil
        opts.winbar = nil
      end,
    },
  },
}
