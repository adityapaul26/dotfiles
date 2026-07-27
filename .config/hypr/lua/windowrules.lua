---------------------------------------------------------------------------
-- windowrules.lua — Window and layer rules
-- Migrated from: windowrule lines in hyprland.conf
---------------------------------------------------------------------------

-- Discord → special workspace (scratchpad), floating, centered
hl.window_rule({
    name  = "discord-special-magic",
    match = { class = "^(discord)$" },
    workspace = "special:magic",
    float     = true,
    size      = { 1435, 776 },
    move      = { 236, 236 },
})

-- Suppress maximize events from all windows
hl.window_rule({
    match          = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland ghost windows
hl.window_rule({
    match      = { class = "^$", title = "^$", xwayland = true },
    float      = true,
    no_focus   = true,
    fullscreen = false,
    pin        = false,
})
