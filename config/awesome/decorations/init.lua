local awful = require("awful")
local beautiful = require("beautiful")
local helpers = require("helpers")
local gears = require("gears")
local wibox = require("wibox")

-- Disable popup tooltip on titlebar button hover
awful.titlebar.enable_tooltip = false

local decorations = {}

-- Load theme and custom decorations
function decorations.init(theme_name)
    require("decorations.themes." .. theme_name)
    -- Custom decorations for specific clients
    require("decorations.mpd")
end

return decorations
