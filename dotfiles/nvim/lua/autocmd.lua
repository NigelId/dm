vim.api.nvim_create_augroup("format-on-save", { clear = true })

vim.api.nvim_create_augroup("markdown", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
  group = "markdown",
  pattern = "*.md",
  callback = function()
    vim.keymap.set("n", "<leader>mp", function()
      vim.cmd "!mdslides %"
      vim.cmd "edit"
    end, { desc = "Markdown presentation" })
    require("luasnip").filetype_extend("markdown", { "tex" })
  end,
})
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*",
  callback = function()
    local name = vim.fn.expand "%:."
    Snacks.notifier.notify(name, "info", { style = "fancy", title = "Saved", timeout = 1000 })
  end,
})
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.cpp" },
  callback = function()
    vim.keymap.set("n", "<F6>", function()
      local path = vim.fn.expand "%:p"
      local name = vim.fn.expand "%:p:r"
      vim.cmd "RunCode"
      vim.cmd("silent !g++ " .. path .. " -o " .. name .. " -g")
    end)
  end,
})
