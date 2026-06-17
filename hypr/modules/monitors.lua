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
  cm = "hdredid",
  min_luminance = 0,
  max_luminance = 400,
  sdr_min_luminance = 0,
  sdr_max_luminance = 400,
  sdrbrightness = .4,
  sdrsaturation = 1,
  supports_hdr = 1,
})

-- Secondary Monitor (Wacom 16")
hl.monitor({
	output = "DP-1",
	mode = "1920x1080@60",
	position = "1100x1152",
	scale = 1.25,
	cm = "auto",
})

-- HDR
hl.config({
	render = {
--		cm_auto_hdr = 2,
	},

	quirks = {
		prefer_hdr = 1,
	},
})
