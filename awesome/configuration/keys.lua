-- File used for declarting global variables

local awful = require("awful")

MODKEY = "Mod4"
ALTKEY = "Mod1"

TERMINAL = "alacritty"
EDITOR = os.getenv("EDITOR") or "nvim"
EDITOR_CMD = TERMINAL .. " -e " .. EDITOR
awful.layout.layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.floating,
}
