return {
'protex/better-digraphs.nvim',
  config=function ()
    vim.keymap.set('i',"<C-l>","<cmd>lua require('better-digraphs').digraphs('insert')<cr>") 
  end
}
