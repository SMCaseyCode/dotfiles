----------------
--- MONITORS ---
----------------

-- See https://wiki.hypr.land/Configuring/Monitors/

-- Main Monitor (Odyssey G9 OLED)
hl.monitor({
	output = "HDMI-A-1",
	mode = "5120x1440@240",
  bitdepth = 10,
	position = "0x0",
	scale = 1.25,
	vrr = 3,
})

-- Secondary Monitor (Wacom 16")
hl.monitor({
	output = "DP-1",
	mode = "1920x1080@60",
	position = "1100x1152",
	scale = 1.25,
	cm = "auto",
})

-- HDR & VRR
hl.config({
	render = {
		cm_auto_hdr = 1,
	},

	quirks = {
		prefer_hdr = 2,
	},
})
