-------------
--- RULES ---
-------------

-- See https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

hl.workspace_rule({ workspace = "1", default = true, monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "3", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "4", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "5", monitor = "HDMI-A-1" })

hl.workspace_rule({ workspace = "6", default = true, monitor = "DP-1" })
hl.workspace_rule({ workspace = "7", monitor = "DP-1" })
hl.workspace_rule({ workspace = "8", monitor = "DP-1" })
hl.workspace_rule({ workspace = "9", monitor = "DP-1" })
hl.workspace_rule({ workspace = "10", monitor = "DP-1" })

-- See https://wiki.hypr.land/Configuring/Window-Rules/

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({
	name = "suppress-maximize-events",
	suppress_event = "maximize",
	match = { class = ".*" },
})

-- Fix some dragging issues with XWayland
hl.window_rule({
	name = "fix-wayland-drags",
	no_focus = true,
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
})

hl.window_rule({
	name = "windowrule-no-transparent-youtube",
	opacity = "1.0 1.0 override",
	match = { title = ".*YouTube.*" },
})

hl.window_rule({
	name = "windowrule-no-transparent-twitch",
	opacity = "1.0 1.0 override",
	match = { title = ".*Twitch.*" },
})

hl.window_rule({
	name = "windowrule-no-transparent-pip",
	opacity = "1.0 1.0 override",
	match = { title = "Picture-in-Picture" },
})

hl.window_rule({
  name = "windowrule-pin-pnp",
  pin = true,
  float = true,
  match = { title = "Picture-in-Picture" },
})

hl.window_rule({
	name = "windowrule-no-transparent-mpvplayer",
	opacity = "1.0 1.0 override",
	match = { class = "^(mpv)$" },
})

hl.window_rule({
  name = "windowrule-pin-mpv",
  pin = true,
  float = true,
  match = { class = "^(mpv)$" },
})

hl.layer_rule({
	name = "blur-wofi",
	blur = true,
	match = { namespace = "wofi" },
})

hl.layer_rule({
	name = "blur-swaync-cc",
	blur = true,
	match = { namespace = "swaync-control-center" },
})

hl.layer_rule({
	name = "ignorealpha-sway-cc",
	ignore_alpha = 0,
	match = { namespace = "swaync-control-center" },
})

hl.layer_rule({
	name = "blur-notif",
	blur = true,
	match = { namespace = "swaync-notification-window" },
})

hl.layer_rule({
	name = "ignorealpha-sway-notif",
	ignore_alpha = 0,
	match = { namespace = "swaync-notification-window" },
})

hl.layer_rule({
	name = "blur-waybar",
	blur = false,
	match = { namespace = "waybar" },
})
