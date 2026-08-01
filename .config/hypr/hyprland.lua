---------------------------------------------------------------------------
-- hyprland.lua — Main Hyprland configuration entry point (Lua, 0.55+)
--
-- Migrated from:  hyprland.conf  +  colors.conf
-- Original .conf files are kept as backups; they are no longer sourced.
--
-- Module loading order matters:  colors/variables first, then visual
-- settings, then input, then keybinds, then exec-once.
---------------------------------------------------------------------------

-- Lua module search path: look inside ./lua/ relative to this file
local config_dir = debug.getinfo(1, "S").source:match("@?(.*/)") or "./"
package.path = config_dir .. "lua/?.lua;" .. package.path

---------------------------------------------------------------------------
-- 1. Foundation (data modules, no side-effects)
---------------------------------------------------------------------------
require("colors") -- Material Design 3 palette
require("variables") -- $terminal, $fileManager, $menu, $mainMod

---------------------------------------------------------------------------
-- 2. Environment variables
---------------------------------------------------------------------------
require("env")

---------------------------------------------------------------------------
-- 3. Monitors
---------------------------------------------------------------------------
require("monitors")

---------------------------------------------------------------------------
-- 4. Look & feel (general, decoration, layouts, misc, xwayland)
---------------------------------------------------------------------------
require("look_and_feel")

---------------------------------------------------------------------------
-- 5. Animations (curves + animation assignments)
---------------------------------------------------------------------------
require("animations")

---------------------------------------------------------------------------
-- 6. Input, touchpad, gestures, per-device
---------------------------------------------------------------------------
require("input")

---------------------------------------------------------------------------
-- 7. Window & layer rules
---------------------------------------------------------------------------
require("windowrules")

---------------------------------------------------------------------------
-- 8. Keybindings (depends on variables)
---------------------------------------------------------------------------
require("keybinds")

---------------------------------------------------------------------------
-- 9. Autostart (exec-once)
---------------------------------------------------------------------------
require("execs")

---------------------------------------------------------------------------
-- 4.1 Hyprglass
---------------------------------------------------------------------------
require("hyprglass")
