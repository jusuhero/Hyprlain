-- Hyprlain Hyprland config (Lua / Hyprland 0.55+)

require("env")
require("display")
require("styling")
require("input")
require("keybinds")
require("windowrules")
require("plugins")

local wallpaper = require("wallpaper")

hl.on("hyprland.start", function()
    hl.exec_cmd("swww-daemon")
    hl.exec_cmd("swww img " .. wallpaper.default)
    hl.exec_cmd("fish -c 'hyprland_startup'")
    hl.exec_cmd("hyprctl setcursor rose-pine-hyprcursor 32")
    hl.exec_cmd('gsettings set org.gnome.desktop.interface gtk-theme "hyprlain"')
    hl.exec_cmd('gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"')
end)

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})
