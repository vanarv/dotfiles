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
	-- rust plugins
	require("custom.plugins.nvim-cmp"),
	require("custom.plugins.rust"),
	require("custom.plugins.rust-crates"),
	require("custom.plugins.rust-tools"),
}

return plugins
