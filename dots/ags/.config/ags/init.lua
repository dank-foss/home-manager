local App = require("astal.gtk3.app")
local Bar = require("widget.Bar")

App:start({
	main = function()
		Bar(0) -- you will instantiate Widgets here
		-- and setup anything else if you need
	end,
})
