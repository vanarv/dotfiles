local plugins = {
	-- NVIM DAP
	require("custom.plugins.nvim_dap"),
	require("custom.plugins.nvim_dap_ui"),
	-- LSP
	require("custom.plugins.lsp.mason"),
	require("custom.plugins.nvim-lspconfig"),
	-- Linting and formatting
	require("custom.plugins.formatting"),
	require("custom.plugins.linting"),
	-- Cmd line and messages
	require("custom.plugins.nui"),
	require("custom.plugins.nvim-notify"),
	require("custom.plugins.noice"),
}

return plugins
