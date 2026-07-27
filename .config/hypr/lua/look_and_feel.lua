---------------------------------------------------------------------------
-- look_and_feel.lua — Visual appearance (general, decoration, layouts)
-- Migrated from: general {}, decoration {}, scrolling {},
--                dwindle {}, master {}, misc {}, xwayland {} in hyprland.conf
---------------------------------------------------------------------------

local colors = require("colors")

hl.config({
    ---------------------------------------------------------------------------
    -- Scrolling layout
    ---------------------------------------------------------------------------
    scrolling = {
        fullscreen_on_one_column = true,
        column_width             = 0.90,
        follow_focus             = true,
        focus_fit_method         = 1,
        explicit_column_widths   = "0.75, 0.75, 0.75, 0.75",
    },

    ---------------------------------------------------------------------------
    -- General
    ---------------------------------------------------------------------------
    general = {
        gaps_in     = 5,
        gaps_out    = 12,
        border_size = 1,

        col = {
            active_border = {
                colors = { colors.primary, colors.secondary },
                angle  = 45,
            },
            inactive_border = colors.outline_variant,
        },

        resize_on_border = true,
        allow_tearing    = false,
        layout           = "scrolling",
    },

    ---------------------------------------------------------------------------
    -- Decoration
    ---------------------------------------------------------------------------
    decoration = {
        rounding       = 17,
        rounding_power = 4,

        active_opacity   = 0.80,
        inactive_opacity = 0.70,

        dim_inactive = true,
        dim_strength = 0.1,

        shadow = {
            enabled      = true,
            range        = 10,
            render_power = 3,
            color        = colors.shadow,
        },

        blur = {
            enabled           = true,
            size              = 6,
            passes            = 3,
            new_optimizations = true,
            ignore_opacity    = true,
            xray              = true,
            vibrancy          = 0.1696,
        },
    },

    ---------------------------------------------------------------------------
    -- Dwindle layout
    ---------------------------------------------------------------------------
    dwindle = {
        preserve_split = true,
    },

    ---------------------------------------------------------------------------
    -- Master layout
    ---------------------------------------------------------------------------
    master = {
        new_status = "master",
    },

    ---------------------------------------------------------------------------
    -- Misc
    ---------------------------------------------------------------------------
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo   = false,
    },

    ---------------------------------------------------------------------------
    -- XWayland
    ---------------------------------------------------------------------------
    xwayland = {
        force_zero_scaling = true,
    },
})
