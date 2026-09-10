hl.window_rule({
    name  = "float-dialogs",
    match = { title = "^(file_progress|confirm|dialog|download|notification|error|splash|confirmreset|branchdialog)$" },
    float = true,
})

hl.window_rule({
    name  = "float-apps",
    match = { title = "^(Open File|DevTools|Volume Control|Picture-in-Picture|Media viewer|nm-connection-editor|blueman-manager|copyq|pavucontrol|wlogout)$" },
    float = true,
})

hl.window_rule({
    name  = "center-dialogs",
    match = { title = "^(confirm|dialog|download|confirmreset|file_progress|error|splash)$" },
    center = true,
})

hl.window_rule({
    name  = "hyprlain-popups",
    match = { class = "^(?i).*(feh|mpv|pureref|webcamoid|solaar|psensor|qalculate|iwgtk|easyeffects|desktop-portal|rofi|overskride|waypaper|missioncenter).*$" },
    float = true,
    focus_on_activate = true,
})

hl.window_rule({
    name  = "hyprlain-forced",
    match = { class = "^(?i).*(rofi|hyprpolkitagent).*$" },
    stay_focused = true,
    dim_around = true,
})

hl.window_rule({
    name  = "blueman-manager",
    match = { title = "^(blueman-manager)" },
    size  = { 700, 270 },
})

hl.window_rule({
    name  = "copyq",
    match = { title = "^(copyq)" },
    center = true,
    size   = { "monitor_w*0.4", "monitor_h*0.4" },
})

hl.window_rule({
    name  = "wlogout-fullscreen",
    match = { title = "^(wlogout)$" },
    fullscreen = true,
})

hl.window_rule({
    name  = "wlogout-fullscreen-title",
    match = { title = "wlogout" },
    fullscreen = true,
})

hl.window_rule({
    name  = "mpv-idle-inhibit",
    match = { title = "^(mpv)$" },
    idle_inhibit = "focus",
})

hl.window_rule({
    name  = "firefox-idle-inhibit",
    match = { title = "^(firefox)$" },
    idle_inhibit = "fullscreen",
})

hl.window_rule({
    name  = "volume-control",
    match = { title = "^(Volume Control)$" },
    size = { 800, 600 },
    move = { 75, "monitor_h*0.44" },
})

hl.window_rule({
    name  = "opacity-thunar",
    match = { class = "^(thunar)$" },
    opacity = "0.75",
})

hl.window_rule({
    name  = "opacity-vesktop",
    match = { class = "^(vesktop)$" },
    opacity = "0.7",
})

hl.window_rule({
    name  = "opacity-firefox",
    match = { class = "^(firefox)$" },
    opacity = "0.9",
})

hl.window_rule({
    name  = "opacity-kitty",
    match = { class = "kitty" },
    opacity = "0.8",
})

hl.window_rule({
    name  = "kitty-float",
    match = { title = "^(kitty_float)$" },
    animation = "windows",
    center    = true,
    size      = { 800, 500 },
    float     = true,
})

hl.window_rule({
    name  = "tty-clock",
    match = { title = "^(tty_clock)$" },
    float = true,
    size  = { 320, 200 },
    move  = { "monitor_w*0.75", "monitor_h*0.05" },
})

hl.window_rule({
    name  = "kitty-scratch",
    match = { title = "^(kitty_scratch)$" },
    animation = "slide right",
    float     = true,
    size      = { 780, 540 },
    center    = true,
})

hl.window_rule({
    name  = "kitty-welcome",
    match = { title = "^(kitty_welcome)$" },
    animation = "slide",
    float     = true,
    size      = { 600, 600 },
    move      = { "monitor_w*0.02", "monitor_h*0.25" },
})

hl.workspace_rule({ workspace = "w[t1]",  gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "w[tg1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })

hl.window_rule({
    name  = "no-gaps-wt1",
    match = { float = false, workspace = "w[t1]" },
    border_size = 0,
    rounding    = 0,
})

hl.window_rule({
    name  = "no-gaps-wtg1",
    match = { float = false, workspace = "w[tg1]" },
    border_size = 0,
    rounding    = 0,
})

hl.window_rule({
    name  = "no-gaps-f1",
    match = { float = false, workspace = "f[1]" },
    border_size = 0,
    rounding    = 0,
})
