return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function() 
    vim.g.mkdp_filetypes = { "markdown" }  
    -- vim.g.mkdp_markdown_css = '/Users/Admin/AppData/Local/nvim/lua/MarkdownPreviewCSS/github-markdown.css'
    -- require('luasnip').filetype_extend("markdown",{"tex"})
  end,
  ft = { "markdown" },
}
