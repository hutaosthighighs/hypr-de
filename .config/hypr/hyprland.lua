-- Hyprland 0.57.x configuration converted from your previous hyprland.conf.
-- Keep modules under ~/.config/hypr as in this archive.
-- Do not 'source' .conf files here: Hyprland 0.57 only accepts Lua.

require('variables')
require('visual.colors')
require('visual.general')
require('visual.decoration')
require('visual.layout')
require('visual.animations')
require('autostart')
require('binds')

-- Your internal laptop display settings (unchanged).
hl.monitor({
    output = 'eDP-1',
    mode = '2560x1600@120.001',
    position = '0x0',
    scale = 1.25,
})

-- Window rules
hl.window_rule({
    name = 'ignore-invisible-xwayland-windows',
    match = { class = '^$', title = '^$', xwayland = true,
              float = true, fullscreen = false, pin = false },
    no_focus = true,
})

hl.window_rule({
    name = 'render-steam-games-unfocused',
    match = { class = '^(steam_app_.*)$' },
    render_unfocused = true,
})

hl.window_rule({
    name = 'nemo-transparency',
    match = { class = 'nemo' },
    opacity = '0.9',
})

hl.window_rule({
    name = 'blueman-manager-popup',
    match = { class = 'blueman-manager' },
    float = true,
    size = { 400, 200 },
    move = { 120, 'monitor_h-window_h-8' },
    animation = 'slide left', -- old per-rule 'speed 3' has no documented Lua equivalent
})

hl.window_rule({
    name = 'file-picker-popup',
    match = { title = '^(Open File|Open Files|Open Folder)$' },
    float = true,
    pin = true,
    stay_focused = true,
    center = true,
})

hl.window_rule({
    name = 'zoom-focus',
    match = { class = '^(zoom)$' },
    stay_focused = true,
})

hl.window_rule({
    name = 'picture-in-picture',
    match = { title = '^(Picture-in-Picture)' },
    float = true,
    pin = true,
    size = { 500, 280 },
    move = { 'monitor_w-window_w-8', 'monitor_h-window_h-8' },
})

-- Layer rules
hl.layer_rule({
    name = 'waybar-blur-slide',
    match = { namespace = 'waybar' },
    blur = true,
    animation = 'slide',
})
hl.layer_rule({
    name = 'notifications-slide',
    match = { namespace = '^(notifications)' },
    animation = 'slide',
})
hl.layer_rule({
    name = 'rofi-fade',
    match = { namespace = '^(rofi)' },
    animation = 'fade',
})

hl.config({
    xwayland = { force_zero_scaling = true },
    debug = { vfr = true },
})
