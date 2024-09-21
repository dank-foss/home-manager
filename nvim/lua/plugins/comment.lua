return {
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
	require("Comment").setup({
	    toggler = {line = '<C-/>', block = '<C-/>'}
	})
    end
}
