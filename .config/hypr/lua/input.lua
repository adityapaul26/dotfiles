---------------------------------------------------------------------------
-- input.lua — Keyboard, mouse, touchpad and gesture settings
-- Migrated from: input {}, gesture, device {} in hyprland.conf
---------------------------------------------------------------------------

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,
        sensitivity  = 0,  -- -1.0 to 1.0, 0 = no modification

        touchpad = {
            natural_scroll = true,
        },
    },
})

-- Gesture: 3-finger horizontal swipe to switch workspaces
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

-- Per-device config
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})
