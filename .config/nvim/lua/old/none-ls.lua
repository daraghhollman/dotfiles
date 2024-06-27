return {
	"nvimtools/none-ls.nvim",

	config = function()
		local venv_path =
			'import sys; sys.path.append("/usr/lib/python3.12/site-packages"); import pylint_venv; pylint_venv.inithook(force_venv_activation=True, quiet=True)'

		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.pylint.with({
					extra_args = { "--init-hook", venv_path },
				}),
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.htmlhint,
				null_ls.builtins.formatting.htmlbeautifier,
				null_ls.builtins.diagnostics.stylelint,
				null_ls.builtins.formatting.prettier,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
