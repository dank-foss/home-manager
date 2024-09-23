return {
	"rmagatti/auto-session",
	lazy = false,

	---enables autocomplete for opts
	---@module "auto-session"
	---@diagnostic disable-next-line: undefined-doc-name
	---@type AutoSession.Config
	opts = {
		auto_clean_after_session_restore = true, -- Automatically clean up broken neo-tree buffers saved in sessions
		-- auto_session_pre_save_cmds = { "Neotree close" },
		suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		-- log_level = 'debug',
	},
}
