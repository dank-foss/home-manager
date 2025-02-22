return {
	"mfussenegger/nvim-dap",

	dependencies = { "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio", "jbyuki/one-small-step-for-vimkind" },

	config = function()
		require("dapui").setup()
		local dap, dapui = require("dap"), require("dapui")

		vim.keymap.set("n", "<Leader>dt", function()
			dap.toggle_breakpoint()
		end)
		vim.keymap.set("n", "<Leader>dc", function()
			dap.continue()
		end)

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		dap.configurations.lua = {
			{
				type = "nlua",
				request = "attach",
				name = "Attach to running Neovim instance",
			},
		}

		dap.adapters.nlua = function(callback, config)
			callback({ type = "server", host = config.host or "127.0.0.1", port = config.port or 8086 })
		end

		vim.keymap.set("n", "<leader>dls", ':lua require"osv".launch({port = 8086})<CR>')
	end,
}
