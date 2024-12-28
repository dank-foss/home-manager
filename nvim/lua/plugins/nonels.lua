return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.nixfmt,
				null_ls.builtins.formatting.biome,

				null_ls.builtins.diagnostics.fish,
				null_ls.builtins.diagnostics.markdownlint,
				null_ls.builtins.diagnostics.stylelint,

				null_ls.builtins.code_actions.statix,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
