local c = require("lua.colors")
if hl.plugin.hyprglass then
	local hg = hl.plugin.hyprglass
	hg.config({
		default_theme = "dark",
		default_preset = "liquid_glass",
		dark = { brightness = 0.88, contrast = 0.95, vibrancy = 0.25 },
		layers = { enabled = true },
	})
	hg.preset("liquid_glass", {
		glass_opacity = 0.85,
		blur_strength = 2.5,
		blur_iterations = 3,
		refraction_strength = 0.90,
		edge_thickness = 0.08,
		chromatic_aberration = 0.8,
		fresnel_strength = 0.9,
		specular_strength = 0.95,
		lens_distortion = 0.9,
		adaptive_boost = 0.1,
		vibrancy_darkness = 1,
		dark = { tint_color = tonumber(c.background), brightness = 1, contrast = 1.7, saturation = 1, vibrancy = 0.8 },
	})
	hg.layer("waybar", { preset = "liquid_glass", mask_threshold = 0.1 })
	hg.layer("swaync-control-center", { preset = "liquid_glass", mask_threshold = 0.5 })
	hg.layer("swaync-notification-window", { preset = "liquid_glass", mask_threshold = 0.5 })
	hg.layer("logout_dialog", { preset = "liquid_glass", mask_threshold = 0.5 })
	hg.layer("rofi", { preset = "liquid_glass" })
	hg.layer("swayosd", { preset = "liquid_glass" })
	hg.layer("debug-panel", { preset = "liquid_glass" })
end
