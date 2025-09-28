vim.keymap.set("n", "<F5>", function()
  local filetype = vim.bo.filetype
  if filetype == "markdown" then
    local theme = vim.api.nvim_buf_get_lines(0, 0, 1, false)[1]
    vim.g.mkdp_markdown_css = "/mnt/c/Users/Admin/AppData/Local/nvim/lua/MarkdownPreviewCSS/github-markdown.css"
    if theme == "[comment]: # (theme = white)" then
      vim.g.mkdp_markdown_css = "/home/dm/.config/nvim/lua/MarkdownPreviewCSS/github-markdown-white.css"
    end
    vim.cmd "silent MarkdownPreviewToggle"
  else
    vim.cmd "RunCode"
  end
end)
vim.keymap.set("v", "<F3>", ":CBalbox<cr>", { silent = true })
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<cr>", { desc = "toggle terminal" })
vim.keymap.set("n", "vv", "<C-v>")
vim.keymap.set("n", "<leader>zi", function()
  vim.api.nvim_command "VietnameseToggle"
  vim.cmd "startinsert"
end, { silent = true })
