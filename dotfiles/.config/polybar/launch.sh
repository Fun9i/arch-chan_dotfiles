#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
 echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
 polybar left1 1>&1 | tee -a /tmp/polybar1.log & disown
 polybar right1 1>&1 | tee -a /tmp/polybar1.log & disown
 polybar middle1 1>&1 | tee -a /tmp/polybar1.log & disown
 polybar left2 2>&1 | tee -a /tmp/polybar1.log & disown
 polybar right2 2>&1 | tee -a /tmp/polybar1.log & disown
 polybar middle2 2>&1 | tee -a /tmp/polybar1.log & disown
  

echo "Bars launched..."
