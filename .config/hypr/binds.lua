-- Your binds.conf, including input and gestures, migrated to Hyprland Lua.
local v = require('variables')
local mod = v.mainMod

hl.config({
    input = {
        kb_layout = 'us',
        kb_variant = '',
        kb_model = '',
        kb_options = 'grp:alt_shift_toggle',
        kb_rules = '',
        follow_mouse = 1,
        sensitivity = 0.8,
        accel_profile = 'flat',
        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.4,
            drag_lock = 1,
        },
    },
})

-- App shortcuts
hl.bind(mod .. ' + SHIFT + L', hl.dsp.exec_cmd('hyprlock -q'))
hl.bind(mod .. ' + ' .. v.turnMod, hl.dsp.exec_cmd(v.terminal))
hl.bind(mod .. ' + Q', hl.dsp.window.close())
hl.bind(mod .. ' + E', hl.dsp.exec_cmd(v.fileManager))
hl.bind(mod .. ' + space', hl.dsp.exec_cmd(v.menu))
hl.bind(mod .. ' + T', hl.dsp.window.float())
hl.bind('XF86SelectiveScreenshot', hl.dsp.exec_cmd('hyprshot -m region -o "$HOME/Pictures/screenshots"'))
hl.bind('Print', hl.dsp.exec_cmd('hyprshot -m output -m active -o "$HOME/Pictures/screenshots"'))
hl.bind(mod .. ' + W', hl.dsp.exec_cmd('$HOME/.scripts/switch-theme.sh'))
hl.bind(mod .. ' + SHIFT + C', hl.dsp.exec_cmd('pkill waybar && waybar &'))

-- Master layout
hl.bind(mod .. ' + M', hl.dsp.layout('swapwithmaster'))
hl.bind(mod .. ' + J', hl.dsp.layout('mfact -0.02'), { repeating = true, locked = true })
hl.bind(mod .. ' + K', hl.dsp.layout('mfact +0.02'), { repeating = true, locked = true })

-- Move focus with Super + arrow keys
hl.bind(mod .. ' + left',  hl.dsp.focus({ direction = 'l' }))
hl.bind(mod .. ' + right', hl.dsp.focus({ direction = 'r' }))
hl.bind(mod .. ' + up',    hl.dsp.focus({ direction = 'u' }))
hl.bind(mod .. ' + down',  hl.dsp.focus({ direction = 'd' }))

-- Workspaces 1 to 10; the 0 key represents workspace 10.
for i = 1, 10 do
    local key = tostring(i % 10)
    hl.bind(mod .. ' + ' .. key, hl.dsp.focus({ workspace = tostring(i) }))
    hl.bind(mod .. ' + SHIFT + ' .. key,
        hl.dsp.window.move({ workspace = tostring(i) }))
end

-- Cycle through existing workspaces
hl.bind(mod .. ' + mouse_up',   hl.dsp.focus({ workspace = 'e+1' }))
hl.bind(mod .. ' + mouse_down', hl.dsp.focus({ workspace = 'e-1' }))
hl.bind(mod .. ' + ALT + k',    hl.dsp.focus({ workspace = 'e-1' }))
hl.bind(mod .. ' + ALT + j',    hl.dsp.focus({ workspace = 'e+1' }))
hl.bind(mod .. ' + ALT + up',   hl.dsp.focus({ workspace = 'e-1' }))
hl.bind(mod .. ' + ALT + down', hl.dsp.focus({ workspace = 'e+1' }))

-- Super + left/right mouse drag
hl.bind(mod .. ' + mouse:272', hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. ' + mouse:273', hl.dsp.window.resize(), { mouse = true })

-- Volume keys. bindel = locked + repeating, bindl = locked.
hl.bind('XF86AudioRaiseVolume', hl.dsp.exec_cmd('wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+'), { repeating = true, locked = true })
hl.bind('XF86AudioLowerVolume', hl.dsp.exec_cmd('wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-'), { repeating = true, locked = true })
hl.bind('XF86AudioMute', hl.dsp.exec_cmd('wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle'), { locked = true })
hl.bind('XF86AudioMicMute', hl.dsp.exec_cmd('wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle'), { repeating = true, locked = true })

-- Brightness keys
hl.bind('XF86MonBrightnessUp', hl.dsp.exec_cmd('brightnessctl -n10 set 2%+ && "$HOME/.scripts/brightness-notification"'), { repeating = true, locked = true })
hl.bind('XF86MonBrightnessDown', hl.dsp.exec_cmd('brightnessctl -n10 set 2%- && "$HOME/.scripts/brightness-notification"'), { repeating = true, locked = true })

-- Media/playerctl
hl.bind('XF86AudioNext', hl.dsp.exec_cmd('playerctl next'), { locked = true })
hl.bind('XF86AudioPause', hl.dsp.exec_cmd('playerctl play-pause'), { locked = true })
hl.bind('XF86AudioPlay', hl.dsp.exec_cmd('playerctl play-pause'), { locked = true })
hl.bind('XF86AudioPrev', hl.dsp.exec_cmd('playerctl previous'), { locked = true })

-- Three-finger vertical workspace gesture (as in original config).
hl.gesture({ fingers = 3, direction = 'vertical', action = 'workspace' })

-- Optional per-device config from original (commented out):
-- hl.device({ name = 'epic-mouse-v1', sensitivity = -0.5 })

hl.bind(mod .. ' + F4', hl.dsp.exec_cmd('eww --config ~/.config/eww/powermenu open --toggle powermenu'))
