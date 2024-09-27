-- Setup our JDTLS server any time we open up a java file
local group_id = vim.api.nvim_create_augroup("jdtls_lsp", {})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "java" },
	group = group_id,
	callback = function()
		require("config.jdtls").setup_jdtls()
	end,
})

-- Remove left column and numbers in the buffer containing the terminal
vim.api.nvim_create_autocmd("TermOpen", {
	callback = function()
		vim.opt.number = false
		vim.wo.relativenumber = false
		vim.opt.signcolumn = "no"
	end,
})
