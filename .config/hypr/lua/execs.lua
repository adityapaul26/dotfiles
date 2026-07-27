---------------------------------------------------------------------------
-- execs.lua — Autostart commands (exec-once)
-- Migrated from: exec-once = lines in hyprland.conf
---------------------------------------------------------------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpm reload -n")
    hl.exec_cmd("waybar & swaync")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("~/.config/waybar/battery-alert.sh")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprlock & swayosd-server")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)
