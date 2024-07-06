return {
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",

		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
                    "bashls",
					"ruff_lsp",
					"pyright",
                    "html",
                    "cssls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",

		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capabilties = capabilities,
			})
			lspconfig.bashls.setup({
				capabilties = capabilities,
			})
			lspconfig.ruff_lsp.setup({
				capabilties = capabilities,
			})
			lspconfig.html.setup({
				capabilties = capabilities,
			})
			lspconfig.cssls.setup({
				capabilties = capabilities,
			})
			lspconfig.pyright.setup({
				settings = {
					pyright = {
						-- Using everything else from ruff
						disableOrganizeImports = true,
					},
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

			vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, {})
		end,
	},
}
