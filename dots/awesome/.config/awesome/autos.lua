local awful = require("awful")

-- autostarts
local progs = {
	"nitrogen --restore",
}

for _, prog in ipairs(progs) do
	awful.spawn.with_shell(prog)
end
