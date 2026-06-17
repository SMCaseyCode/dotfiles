-----------------------------
--- ENVIRONMENT VARIABLES ---
-----------------------------

-- See https://wiki.hypr.land/Configuring/Environment-variables/

-- hyprland nvidia starter envs
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- nvidia gpu accel
hl.env("NVD_BACKEND", "direct")

-- electron envs
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- xwayland scaling stuff
hl.env("XCURSOR_SIZE", "20")
hl.env("HYPRCURSOR_SIZE", "20")
hl.env("GDK_SCALE", "1.25")

-- hyprshot
hl.env("HYPRSHOT_DIR", "Pictures/Screenshots")

-- QT
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

-- GTK
--hl.env("GTK_THEME", "adw-gtk3-dark")
