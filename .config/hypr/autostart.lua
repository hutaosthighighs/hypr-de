-- Equivalent to exec-once: executed only when the compositor starts,
-- rather than at every config reload.
hl.on('hyprland.start', function()
    hl.exec_cmd('awww-daemon')
    hl.exec_cmd('waybar')
    hl.exec_cmd('dunst')

    -- Comment out when uwsm/systemd already starts hypridle.
    hl.exec_cmd('hypridle')

    -- Original optional commands:
    -- hl.exec_cmd('pactl load-module module-loopback')
    -- hl.exec_cmd('quickshell')
end)
