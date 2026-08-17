----------------
--- MONITORS ---
----------------

-- See https://wiki.hypr.land/Configuring/Monitors/

-- Main Monitor (Odyssey G9 OLED)
hl.monitor({
  output = "HDMI-A-1",
  mode = "5120x1440@240",
  position = "0x0",
  scale = 1.25,
  vrr = 3,
  bitdepth = 10,

  -- Comment out everything below to toggle HDR 
  -- cm = "hdredid",
  -- min_luminance = 0.0,
  -- max_luminance = 400,
  -- sdr_min_luminance = 0.0,
  -- sdr_max_luminance = 200,
  -- sdrbrightness = .5,
  -- sdrsaturation = 1,
})

-- Secondary Monitor (Wacom 16")
hl.monitor({
  output = "DP-1",
  mode = "1920x1080@60",
  position = "1100x1152",
  scale = 1.25,
  cm = "auto",
})

-- Sunshine Virtual Headless
--  Creates a monitor that fits the client that is requesting the stream
--  See sunshine script for more context
hl.monitor({
  output = "HEADLESS-1",
  mode = "1920x1080@60",
  position = "auto",
  scale = 2,
  disabled = true
})

-- HDR
hl.config({
  render = {
    --		cm_auto_hdr = 2,
  },

  quirks = {
    -- prefer_hdr = 1,
  },
})
