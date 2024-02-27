-- Menu, i don' really need this but I keep it for legacy

local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful") -- Theme
local menubar = require("menubar")

-- Create a launcher widget and a main menu
myawesomemenu = {
    { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
    { "manual", TERMINAL .. " -e man awesome" },
    { "edit config", EDITOR_CMD .. " " .. awesome.conffile },
    { "restart", awesome.restart },
    { "quit", function() awesome.quit() end },
 }
 
 mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                     { "open TERMINAL", TERMINAL }
                                   }
                         })
 
 mylauncher = awful.widget.launcher(
     { 
         image = beautiful.awesome_icon,
         menu = mymainmenu 
     }
 )
 
 -- Menubar configuration
 menubar.utils.TERMINAL = TERMINAL -- Set the TERMINAL for applications that require it
 -- }}}
 -- Keyboard map indicator and switcher
 mykeyboardlayout = awful.widget.keyboardlayout()

 -- Menu size
beautiful.menu_height = "20"
beautiful.menu_width = "180"