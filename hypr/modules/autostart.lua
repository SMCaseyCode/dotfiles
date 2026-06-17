-----------------
--- AUTOSTART ---
-----------------

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	-- Handles automatic wallpaper application and color generation
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("sleep 1 && ~/dotfiles/scripts/wallpaper.sh && ~/dotfiles/scripts/get-colors-matugen.sh")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("swaync")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
  -- Required for things like GNOME calculator to match theme
  hl.exec_cmd("/usr/lib/xdg-desktop-portal")
end)
