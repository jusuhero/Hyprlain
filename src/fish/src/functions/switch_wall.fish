function switch_wall --argument-names input_path
    set -l WALLPAPER_DIR "$HOME/.config/assets/media"

    set -l p $input_path
    if string match -q '~*' -- $p
        set p (string replace -r '^~' $HOME -- $p)
    end

    if not string match -q '/*' -- $p
        if test -f "$WALLPAPER_DIR/$p"
            set p "$WALLPAPER_DIR/$p"
        else if test -f "$p"
            set p (realpath "$p")
        end
    end

    if not test -f "$p"
        echo "Invalid wallpaper path: $input_path"
        return 1
    end

    set -l abs (realpath "$p")
    swww img "$abs"
    notify-send "Wallpaper switched" "$abs"
end
