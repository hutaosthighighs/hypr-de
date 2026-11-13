-- Old named bezier curves -> Lua hl.curve.
hl.config({ animations = { enabled = true } })

hl.curve('o2_smooth', { type = 'bezier', points = { {0.4, 0}, {0.2, 1} } })
hl.curve('wind_up',   { type = 'bezier', points = { {0.1, 0.8}, {0.1, 1.1} } })
hl.curve('fluffy',    { type = 'bezier', points = { {0.1, 1.3}, {0.1, 1.0} } })
hl.curve('drop_in',   { type = 'bezier', points = { {0.2, 1.5}, {0.2, 0.95} } })
hl.curve('rise_up',   { type = 'bezier', points = { {0.75, -0.25}, {0.25, 1.2} } })

hl.animation({ leaf = 'global',       enabled = true,  speed = 3,   bezier = 'o2_smooth' })
-- The old 'slidevert' style is documented for workspace animations, not windows;
-- use supported vertical window slides instead.
hl.animation({ leaf = 'windows',      enabled = true,  speed = 2,   bezier = 'rise_up', style = 'slide top' })
hl.animation({ leaf = 'windowsOut',   enabled = true,  speed = 3,   bezier = 'drop_in', style = 'slide bottom' })
hl.animation({ leaf = 'windowsMove',  enabled = true,  speed = 4,   bezier = 'wind_up', style = 'slide' })
hl.animation({ leaf = 'fade',         enabled = true,  speed = 4,   bezier = 'o2_smooth' })
hl.animation({ leaf = 'workspaces',   enabled = true,  speed = 5,   bezier = 'o2_smooth', style = 'slidevert' })
hl.animation({ leaf = 'fadeSwitch',   enabled = true,  speed = 5,   bezier = 'fluffy' })
hl.animation({ leaf = 'fadeDim',      enabled = true,  speed = 3,   bezier = 'o2_smooth' })
hl.animation({ leaf = 'layersIn',     enabled = true,  speed = 5,   bezier = 'default', style = 'slide' })
hl.animation({ leaf = 'layersOut',    enabled = true,  speed = 5,   bezier = 'default', style = 'slide' })
