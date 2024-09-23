return {
	"rmagatti/auto-session",
	lazy = false,

	---enables autocomplete for opts
	---@module "auto-session"
	---@diagnostic disable-next-line: undefined-doc-name
	---@type AutoSession.Config
	opts = {
		auto_session_pre_save_cmds = { "Neotree close" },
		suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		-- log_level = 'debug',
	},
}
