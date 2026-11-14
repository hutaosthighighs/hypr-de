-- Equivalent to the old variables.conf. Imported by binds.lua.
hl.env('XCURSOR_THEME', 'Furina-v2')
hl.env('XCURSOR_SIZE', '48')
hl.env('ELECTRON_OZONE_PLATFORM_HINT', 'auto')

return {
    terminal = 'kitty',
    fileManager = 'nemo',
    menu = 'pidof rofi >/dev/null && pkill rofi || rofi -show drun',
    mainMod = 'SUPER',
    turnMod = 'RETURN',
}
