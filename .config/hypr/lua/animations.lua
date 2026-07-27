---------------------------------------------------------------------------
-- animations.lua — Bezier curves and animation definitions
-- Migrated from: animations {} in hyprland.conf
---------------------------------------------------------------------------

-- Enable animations
hl.config({
    animations = {
        enabled = true,
    },
})

---------------------------------------------------------------------------
-- Bezier curves
---------------------------------------------------------------------------
hl.curve("easeOutQuint",   { type = "bezier", points = {{ 0.23, 1    }, { 0.32, 1    }} })
hl.curve("easeInOutCubic", { type = "bezier", points = {{ 0.65, 0.05 }, { 0.36, 1    }} })
hl.curve("linear",         { type = "bezier", points = {{ 0,    0    }, { 1,    1    }} })
hl.curve("almostLinear",   { type = "bezier", points = {{ 0.5,  0.5  }, { 0.75, 1    }} })
hl.curve("quick",          { type = "bezier", points = {{ 0.15, 0    }, { 0.1,  1    }} })
-- Fluid & Bouncy
hl.curve("fluid",          { type = "bezier", points = {{ 0.08, 0.95 }, { 0.2,  1.12 }} })
hl.curve("md3_decel",      { type = "bezier", points = {{ 0.12, 0.8  }, { 0.2,  1    }} })
hl.curve("md3_accel",      { type = "bezier", points = {{ 0.25, 0.05 }, { 0.4,  0.2  }} })
hl.curve("md3_bounce",     { type = "bezier", points = {{ 0.12, 0.9  }, { 0.2,  1.08 }} })

---------------------------------------------------------------------------
-- Animation assignments
---------------------------------------------------------------------------
hl.animation({ leaf = "global",        enabled = true, speed = 10,   bezier = "default"       })
hl.animation({ leaf = "border",        enabled = true, speed = 5.39, bezier = "easeOutQuint"   })
hl.animation({ leaf = "windows",       enabled = true, speed = 7,    bezier = "fluid"          })
hl.animation({ leaf = "windowsIn",     enabled = true, speed = 6,    bezier = "md3_decel",  style = "popin 10%" })
hl.animation({ leaf = "windowsOut",    enabled = true, speed = 6,    bezier = "md3_accel",  style = "popin 10%" })
hl.animation({ leaf = "windowsMove",   enabled = true, speed = 7,    bezier = "fluid"          })
hl.animation({ leaf = "fadeIn",        enabled = true, speed = 1.73, bezier = "almostLinear"   })
hl.animation({ leaf = "fadeOut",       enabled = true, speed = 1.46, bezier = "almostLinear"   })
hl.animation({ leaf = "fade",          enabled = true, speed = 3.03, bezier = "quick"          })
hl.animation({ leaf = "layers",        enabled = true, speed = 3.81, bezier = "easeOutQuint"   })
hl.animation({ leaf = "layersIn",      enabled = true, speed = 4,    bezier = "easeOutQuint",  style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 1.5,  bezier = "linear",        style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 1.79, bezier = "almostLinear"   })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear"   })
hl.animation({ leaf = "workspaces",    enabled = true, speed = 7,    bezier = "fluid",         style = "slidevert" })
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 7,    bezier = "fluid",         style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 7,    bezier = "fluid",         style = "slidevert" })
hl.animation({ leaf = "zoomFactor",    enabled = true, speed = 7,    bezier = "quick"          })
