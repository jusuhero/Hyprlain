function hyprland_startup
    set -l CNFG $HOME/.config

    dunst &
    hypridle &

    wl-paste --type text --watch cliphist store &
    wl-paste --type image --watch cliphist store &

    blueman-applet &
    nm-applet &

    waybar -c $CNFG/waybar/config.jsonc -s $CNFG/waybar/style.css &

    systemctl --user start hyprpolkitagent &
    dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
    systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
end
