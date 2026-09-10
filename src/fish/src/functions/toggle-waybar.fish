#!/usr/bin/env fish

function toggle-waybar
    set pid_file "/tmp/waybar-hyprlain.pid"
    set config "$HOME/.config/waybar/config.jsonc"
    set style "$HOME/.config/waybar/style.css"

    if test -e $pid_file
        set pid (cat $pid_file)
        if test -n "$pid" -a -d "/proc/$pid"
            kill $pid
            rm $pid_file
            echo "Waybar stopped."
            return 0
        else
            rm $pid_file
        end
    end

    set existing (pgrep -f "waybar.*$config")
    if test -n "$existing"
        kill $existing
        echo "Waybar stopped."
        return 0
    end

    waybar -s $style -c $config &
    echo $last_pid >$pid_file
    echo "Waybar started with PID $last_pid."
end

if status is-interactive
    functions -q toggle-waybar; and toggle-waybar $argv
else
    toggle-waybar $argv
end
