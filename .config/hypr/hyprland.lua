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

hl.bind(
	"SUPER + Tab",
	hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call overview toggle")
)
hl.bind(
	"SUPER + Right",
	hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide swipeRight")
)
hl.bind(
	"SUPER + Left",
	hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide swipeLeft")
)
hl.bind(
	"SUPER + Down",
	hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide showClock")
)
hl.bind(
	"SUPER + B",
	hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide togglePlayer")
)
hl.bind(
	"SUPER + C",
	hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleControlCenter")
)
hl.bind(
	"SUPER + N",
	hl.dsp.exec_cmd(
		"/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleNotificationCenter"
	)
)
hl.bind(
	"SUPER + W",
	hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleWallpaperPicker")
)
hl.bind(
	"SUPER + slash",
	hl.dsp.exec_cmd(
		"/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleApplicationLauncher"
	)
)
hl.bind(
	"SUPER + F",
	hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call island toggle")
)
