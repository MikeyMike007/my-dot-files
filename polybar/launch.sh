#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


# Launch bar1 and bar2
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar eDP1 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar DP1 2>&1 | tee -a /tmp/polybar2.log & disown

#polybar -rq base &
polybar -rq music &
polybar -rq tray &
polybar -rq i3 &

#echo "Bars launched...."


#polybar DP1&
#polybar eDP1&
