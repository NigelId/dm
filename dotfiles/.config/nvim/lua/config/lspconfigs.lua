local servers = { "lua_ls", "clangd" }

vim.lsp.enable(servers)

vim.diagnostic.config({
	virtual_text = true,
	signs = false,
})

vim.api.nvim_create_autocmd("InsertEnter", {
	callback = function()
		vim.diagnostic.hide()
	end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		vim.diagnostic.show()
	end,
})
