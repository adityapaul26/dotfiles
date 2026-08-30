---------------------------------------------------------------------------
-- windowrules.lua — Window and layer rules
-- Migrated from: windowrule lines in hyprland.conf
---------------------------------------------------------------------------

-- Discord → special workspace (scratchpad), floating, centered
hl.window_rule({
	name = "discord-special-magic",
	match = { class = "^(discord)$" },
	workspace = "special:magic",
	float = true,
	size = { 1435, 776 },
	move = { 236, 236 },
})

-- Suppress maximize events from all windows
hl.window_rule({
	match = { class = ".*" },
	suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland ghost windows
hl.window_rule({
	match = { class = "^$", title = "^$", xwayland = true },
	float = true,
	no_focus = true,
	fullscreen = false,
	pin = false,
})

-- Float blueman-manager
hl.window_rule({
	name = "blueman-manager-float",
	match = { class = "^(blueman-manager)$" },
	float = true,
	size = "1200 700",
})

-- Float quick-terminal
hl.window_rule({
	name = "quick-terminal-float",
	match = { class = "kitty-float" },
	float = true,
	size = "1200 700",
	center = true,
})

-- Float xdg-desktop-portal-gtk
hl.window_rule({
	name = "xdg-desktop-portal-gtk",
	match = { class = "xdg-desktop-portal-gtk" },
	float = true,
	size = "1200 700",
	center = true,
})
