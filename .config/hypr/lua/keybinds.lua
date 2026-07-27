---------------------------------------------------------------------------
-- keybinds.lua — All keybindings
-- Migrated from: bind, bindm, bindel, bindl lines in hyprland.conf
---------------------------------------------------------------------------

local vars = require("variables")
local mod   = vars.main_mod  -- "SUPER"

---------------------------------------------------------------------------
-- Core binds
---------------------------------------------------------------------------
hl.bind(mod .. " + Q", hl.dsp.exec_cmd(vars.terminal))
hl.bind(mod .. " + C", hl.dsp.window.close())
hl.bind(mod .. " + M", hl.dsp.exit())
hl.bind(mod .. " + E", hl.dsp.exec_cmd(vars.file_manager))
hl.bind(mod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + R", hl.dsp.exec_cmd(vars.menu))
hl.bind(mod .. " + P", hl.dsp.window.pseudo())

---------------------------------------------------------------------------
-- Screenshots (hyprshot)
---------------------------------------------------------------------------
hl.bind("PRINT",         hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"))

---------------------------------------------------------------------------
-- Utilities
---------------------------------------------------------------------------
hl.bind(mod .. " + X", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind(mod .. " + A", hl.dsp.exec_cmd("discord"))

---------------------------------------------------------------------------
-- Move focus with arrow keys
---------------------------------------------------------------------------
hl.bind(mod .. " + left",  hl.dsp.focus({ direction = "l" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mod .. " + up",    hl.dsp.focus({ direction = "u" }))
hl.bind(mod .. " + down",  hl.dsp.focus({ direction = "d" }))

---------------------------------------------------------------------------
-- Switch workspaces (SUPER + 0–9)
---------------------------------------------------------------------------
for i = 1, 9 do
    hl.bind(mod .. " + " .. i,           hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. i,   hl.dsp.window.move({ workspace = i }))
end
hl.bind(mod .. " + 0",           hl.dsp.focus({ workspace = 10 }))
hl.bind(mod .. " + SHIFT + 0",   hl.dsp.window.move({ workspace = 10 }))

---------------------------------------------------------------------------
-- Special workspace (scratchpad)
---------------------------------------------------------------------------
hl.bind(mod .. " + S",           hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + S",   hl.dsp.window.move({ workspace = "special:magic" }))

---------------------------------------------------------------------------
-- Scroll through workspaces with mouse wheel
---------------------------------------------------------------------------
hl.bind(mod .. " + mouse_down",  hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + mouse_up",    hl.dsp.focus({ workspace = "e-1" }))

---------------------------------------------------------------------------
-- Mouse binds (move / resize)
---------------------------------------------------------------------------
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

---------------------------------------------------------------------------
-- Volume (swayosd) — repeating + locked
---------------------------------------------------------------------------
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"),  { repeating = true, locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"),  { repeating = true, locked = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"),  { locked = true })

---------------------------------------------------------------------------
-- Brightness — repeating + locked
---------------------------------------------------------------------------
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { repeating = true, locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { repeating = true, locked = true })

---------------------------------------------------------------------------
-- Media keys — locked
---------------------------------------------------------------------------
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
