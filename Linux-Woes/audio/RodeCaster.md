This is about renaming/getting rodecaster working in general. Everything after step 1 is for renaming.
This one is kinda rough unless you know what you are doing.

1. Set Rodecaster to Pro Audio. You can do this in Pavucontrol
2. Make config file for Wireplumber in ~/.config, see Arch wiki for WirePlumber
3. Use WirePlumber status commands to figure out device node names. Tip: Set device you are trying to find as the default audio device in Pavu. It will be on the bottom of the status output.
4. Add to config (see Arch wiki)
5. Restart WirePlumber or restart PC
6. Profit.
