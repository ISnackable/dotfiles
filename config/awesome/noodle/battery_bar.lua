local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")
local gears = require("gears")
local dpi = require('beautiful').xresources.apply_dpi

local battery_widget = {}
local icon = ""

local icon_widget = wibox.widget {
    font = "Fira Mono 10",
    widget = wibox.widget.textbox,
}
local level_widget = wibox.widget {
    markup = "0%", 
    font = "Roboto Medium 10",
    widget = wibox.widget.textbox
}

battery_widget = wibox.widget {
    icon_widget,
    level_widget,
    spacing = dpi(4),
    layout = wibox.layout.fixed.horizontal,
}

awesome.connect_signal("evil::battery", function(value)
    if (value >= 0 and value < 10) then
        icon = ""
        -- if os.difftime(os.time(), last_battery_check) > 300 or not warningDisplayed or value < 3 then
        --     -- if 5 minutes have elapsed since the last warning
        --     last_battery_check = os.time()
        --     warningDisplayed = true
    
        --     require("widgets.notifications").battery(value)
        -- end
    elseif (value < 20) then 
        icon = ""
    elseif value < 30 then
        icon = ""
    elseif value < 40 then
        icon = ""
    elseif value < 50 then
        icon = ""
    elseif value < 60 then
        icon = ""
    elseif value < 70 then
        icon = ""
    elseif value < 80 then
        icon = ""
    elseif value < 90 then
        icon = ""
    elseif value < 100 then
        icon = ""
    else
        icon = ""
    end

    icon_widget.markup = "<span foreground='"..beautiful.fg_dark.."'>"..icon.."</span>"
    level_widget.markup = "<span foreground='"..beautiful.fg_dark.."'>"..value.."%</span>"
end)

awesome.connect_signal("evil::charger", function(plugged)
    if plugged then
        icon = ""
    end
    icon_widget.markup = "<span foreground='"..beautiful.fg_dark.."'>"..icon.."</span>"
end)

return battery_widget