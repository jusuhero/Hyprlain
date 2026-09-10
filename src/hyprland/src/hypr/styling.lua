local P = require("palette")

hl.config({
    general = {
        border_size = 2,
        gaps_in = 3,
        gaps_out = 6,
        col = {
            inactive_border = P.rgb("foresecondary"),
            active_border = P.rgb("foreprimary"),
        },
        layout = "dwindle",
        no_focus_fallback = false,
    },
})

hl.config({
    decoration = {
        rounding = 0,
        rounding_power = 0,
        active_opacity = 1.0,
        inactive_opacity = 0.8,
        dim_inactive = true,
        dim_strength = 0.4,
        dim_special = 0.6,
        dim_around = 0.6,
        blur = {
            size = 10,
            ignore_opacity = false,
            noise = 0.5,
            contrast = 0.5,
            brightness = 1.5,
            vibrancy = 10.0,
            vibrancy_darkness = 10.0,
        },
        shadow = {
            range = 150,
            render_power = 4,
            color = P.rgb("foreoctonary"),
            color_inactive = P.rgb("backprimary"),
        },
    },
})

hl.curve("linear",          { type = "bezier", points = { { 0.00, 0.00 }, { 1.00, 1.00 } } })
hl.curve("schwoop",         { type = "bezier", points = { { 1.00, 0.00 }, { 0.00, 1.00 } } })
hl.curve("easeOutQuint",    { type = "bezier", points = { { 0.23, 1.00 }, { 0.32, 1.00 } } })
hl.curve("easeInOutCubic",  { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1.00 } } })
hl.curve("almostLinear",    { type = "bezier", points = { { 0.50, 0.50 }, { 0.75, 1.00 } } })
hl.curve("quick",           { type = "bezier", points = { { 0.15, 0.00 }, { 0.10, 1.00 } } })
hl.curve("overshoot",       { type = "bezier", points = { { 0.05, 0.90 }, { 0.10, 1.10 } } })
hl.curve("bigOvershoot",    { type = "bezier", points = { { 0.50, 0.00 }, { 0.00, 1.50 } } })

hl.config({
    animations = {
        enabled = true,
    },
})

hl.animation({ leaf = "global",           enabled = true, speed = 1.00, bezier = "default" })
hl.animation({ leaf = "windows",          enabled = true, speed = 4.79, bezier = "easeOutQuint", style = "gnomed" })
hl.animation({ leaf = "windowsIn",        enabled = true, speed = 4.10, bezier = "overshoot",    style = "gnomed" })
hl.animation({ leaf = "windowsOut",       enabled = true, speed = 1.49, bezier = "linear",       style = "gnomed" })
hl.animation({ leaf = "layers",           enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",         enabled = true, speed = 4.00, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",        enabled = true, speed = 1.50, bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fade",             enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "fadeIn",           enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",          enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersIn",     enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut",    enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "border",           enabled = true, speed = 5.50, bezier = "easeOutQuint" })
hl.animation({ leaf = "workspaces",       enabled = true, speed = 1.00, bezier = "quick",        style = "fade" })
hl.animation({ leaf = "workspacesIn",     enabled = true, speed = 1.00, bezier = "quick",        style = "fade" })
hl.animation({ leaf = "workspacesOut",    enabled = true, speed = 1.00, bezier = "quick",        style = "fade" })

hl.config({
    group = {
        auto_group = false,
        focus_removed_window = false,
        drag_into_group = 2,
        merge_groups_on_drag = false,
        col = {
            border_active = P.rgb("foreprimary"),
            border_inactive = P.rgb("forequaternary"),
            border_locked_active = P.rgb("foreprimary"),
            border_locked_inactive = P.rgb("forequaternary"),
        },
        groupbar = {
            font_size = 14,
            font_weight_active = "bold",
            gradients = true,
            height = 16,
            indicator_height = 2,
            text_offset = -2,
            rounding = 0,
            gradient_rounding = 0,
            round_only_edges = false,
            gradient_round_only_edges = false,
            text_color = P.rgb("backsecondary"),
            text_color_inactive = P.rgb("backprimary"),
            text_color_locked_active = P.rgb("backsecondary"),
            text_color_locked_inactive = P.rgb("backprimary"),
            col = {
                active = P.rgb("foreprimary"),
                inactive = P.rgb("forequaternary"),
                locked_active = P.rgb("foreprimary"),
                locked_inactive = P.rgb("forequaternary"),
            },
            gaps_out = 0,
            keep_upper_gap = false,
        },
    },
})

hl.config({
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        col = {
            splash = P.rgb("highprimary"),
        },
        font_family = "AdwaitaMono Nerd Font",
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
        enable_swallow = true,
        swallow_regex = "^(kitty)$",
        focus_on_activate = true,
        background_color = P.rgb("backprimary"),
        close_special_on_empty = false,
        new_window_takes_over_fullscreen = 2,
        middle_click_paste = false,
    },
})

hl.config({
    render = {
        direct_scanout = 1,
    },
    cursor = {
        persistent_warps = true,
        warp_on_change_workspace = 1,
        hide_on_key_press = true,
        warp_back_after_non_mouse_input = true,
    },
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },
    dwindle = {
        preserve_split = true,
        precise_mouse_move = true,
    },
    master = {
        allow_small_split = true,
        new_status = "master",
        new_on_top = true,
        orientation = "center",
    },
})
