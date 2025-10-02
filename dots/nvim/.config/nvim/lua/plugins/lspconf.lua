return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			auto_install = true,
		},
		-- config = function()
		-- 	require("mason-lspconfig").setup({
		-- 		-- ensure_installed = { "cssls", "lua_ls", "jedi_language_server" },
		-- 	})
		-- end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("lua_ls", { capabilities = capabilities })
			vim.lsp.config("qmlls", {})
			vim.lsp.config("jedi_language_server", { capabilities = capabilities })
			vim.lsp.config("cssls", { capabilities = capabilities })
			vim.lsp.config("denols", { capabilities = capabilities })
			vim.lsp.config("nixd", { capabilities = capabilities })
			vim.keymap.set("n", "<C-d>", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gd", function()
				vim.cmd("vsplit")
				vim.lsp.buf.definition()
			end, {})
		end,
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						-- specific_opts = {
						--   [kind] = {
						--     make_indexed = function(items) -> indexed_items, width,
						--     make_displayer = function(widths) -> displayer
						--     make_display = function(displayer) -> function(e)
						--     make_ordinal = function(e) -> string
						--   },
						--   -- for example to disable the custom builtin "codeactions" display
						--      do the following
						--   codeactions = false,
						-- }
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
