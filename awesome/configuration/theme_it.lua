local beautiful = require("beautiful") -- Theme
local gears = require("gears") -- gears
local awful = require("awful") --awful

-- Note to self, you have to change other files that use beautiful for full customization

beautiful.init(gears.filesystem.get_themes_dir() .. "default/theme.lua") -- Awesome theme

-- Personal additions
beautiful.useless_gap = 2
beautiful.border_width = 3
