pcall(require, "luarocks.loader")

-- When switching workspaces to refocus
require("awful.autofocus")

require("configuration.notifications") -- Error handling and notitications

-- Theme
require("configuration.theme_it")

-- Globals 
require("configuration.keys")

-- Menu
require("configuration.menu")

-- Bar 
require("configuration.bar")

-- Keybdings
require("configuration.mouse_and_keyboard")

-- Rules
require("configuration.rules")


