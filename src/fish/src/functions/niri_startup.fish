function niri_startup
    set -l CNFG $HOME/.config
    set -l WALL "$CNFG/assets/media/anim/bg_dark_anim_0_08.gif"

    swww img "$WALL" &

    wl-paste --type text --watch cliphist store &
    wl-paste --type image --watch cliphist store &

    sleep 1
    blueman-applet &
    nm-applet &

    dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
    systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
end
