#!/usr/bin/env sh

# Terminate already running instances of the bar
killall -q polybar

# Wait for the processes to shut down
while pgrep -x polybar >/dev/null; do sleep 1; done


# Launch the bar
polybar s373 -q &
polybar s3731 -q &
#systemctl --user restart mpd.service
echo "Launched the main bar ..."
