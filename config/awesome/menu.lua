-- Standard awesome library
local awful = require("awful")

-- Theme handling library
local beautiful = require("beautiful")

-- Notification library
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")

-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- Menu --
-- Create a launcher widget and a main menu
myawesomemenu = {
    { "Hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
    { "Manual", terminal .. " -e man awesome" },
    { "Edit Config", editor_cmd .. " " .. awesome.conffile },
    { "Restart", awesome.restart },
    { "Quit", function() awesome.quit() end },
 }
 
applicationmenu = {

 }
 
shortcutsmenu = {

 }
 
quicklinkmenu = {

 }
 
placesmenu = {

 }
 
recentfilesmenu = {

 }
 
preferencesmenu = {

 }
 
systemmenu = {

 }
 
 mymainmenu = awful.menu({ items = { { "Awesome", myawesomemenu, beautiful.awesome_icon },
                                     { "Terminal Emulator", terminal },
                                     { "Web Browser", "firefox" },
                                     { "File Manager", "thunar" },
                                     { "Text Editor", terminal },
                                     { "Applications", applicationmenu },
                                     { "Shortcuts", shortcutsmenu },
                                     { "Quick Links", quicklinkmenu },
                                     { "Places", placesmenu },
                                     { "Recent Files", recentfilesmenu },
                                     { "Preferences", preferencesmenu },
                                     { "System", systemmenu }
                                   }
                         })
 
--  mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
--                                       menu = mymainmenu })
 
 -- Menubar configuration
 menubar.utils.terminal = terminal -- Set the terminal for applications that require it