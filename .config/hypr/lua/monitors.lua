---------------------------------------------------------------------------
-- monitors.lua — Display configuration
-- Migrated from: monitor= lines in hyprland.conf
---------------------------------------------------------------------------

-- Default monitor: use preferred mode, auto-position, 1.2× scale
hl.monitor({
    output   = "",          -- empty = match any monitor
    mode     = "preferred",
    position = "auto",
    scale    = 1.25,
})
