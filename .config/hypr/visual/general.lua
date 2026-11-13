local colors = require('visual.colors')

hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 1,
        col = {
            inactive_border = colors.on_primary,
            active_border = colors.primary,
        },
        resize_on_border = false,
        allow_tearing = false,
        layout = 'master',
    },
})
