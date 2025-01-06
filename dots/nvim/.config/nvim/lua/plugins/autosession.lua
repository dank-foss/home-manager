return {
	"rmagatti/auto-session",
	lazy = false,

	---enables autocomplete for opts
	---@module "auto-session"
	---@diagnostic disable-next-line: undefined-doc-name
	---@type AutoSession.Config
	opts = {
		suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		pre_save_cmds = { "Neotree close" },
		-- log_level = 'debug',
	},
}
