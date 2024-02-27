local gears = require("gears") -- gears
local awful = require("awful") --awful

awful.spawn.with_shell("nitrogen --restore")
awful.spawn.with_shell("/usr/lib/polkit-kde-authentication-agent-1 &")
awful.spawn.with_shell("flameshot &")
awful.spawn.with_shell("nm-applet &")
awful.spawn.with_shell("sxhkd &")