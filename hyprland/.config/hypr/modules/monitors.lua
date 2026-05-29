------------------
---- MONITORS ----
------------------

monitor_left = "DP-1"
monitor_right = "HDMI-A-1"

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = monitor_left,
    mode     = "1920x1080@144",
    position = "0x0",
    scale    = "1",
})
hl.monitor({
    output   = monitor_right,
    mode     = "1920x1080@144",
    position = "1920x0",
    scale    = "1",
})
