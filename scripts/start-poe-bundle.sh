#!/bin/bash

env -u LD_PRELOAD -u LD_LIBRARY_PATH \
  /home/smc/Applications/Awakened-PoE-Trade-*.AppImage --ozone-platform=x11 &

"$@"

pkill -15 -f -i "awakened-poe-trade"

exit 0
