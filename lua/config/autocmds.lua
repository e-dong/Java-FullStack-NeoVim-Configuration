-- Setup our JDTLS server any time we open up a java file
local group_id = vim.api.nvim_create_augroup("jdtls_lsp", {})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "java" },
	group = group_id,
	callback = function()
		require("config.jdtls.setup").setup_jdtls()
	end,
})

