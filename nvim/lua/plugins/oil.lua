return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
	require("oil").setup(
	    {
		-- default_file_explorer = true,
		columns = {
		    "icon",
		    "permissions",
		  },
	    }
	)
    end
}
