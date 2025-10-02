return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.nixfmt,
				null_ls.builtins.formatting.biome,
				null_ls.builtins.formatting.fish_indent,

				null_ls.builtins.diagnostics.fish,
				null_ls.builtins.diagnostics.markdownlint_cli2,
				null_ls.builtins.diagnostics.stylelint,
				null_ls.builtins.diagnostics.qmllint,

				null_ls.builtins.code_actions.statix,
				null_ls.builtins.code_actions.gitsigns,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
