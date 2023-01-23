#!/usr/bin/bash

exec slstatus &
dunst &
feh --bg-fill ~/Pictures/Wallpapers/space.png
picom &
setxkbmap -layout us,ar -option grp:alt_shift_toggle

# Words make me smile
notify-send "I LOVE YOU SO MUCH <3" "you will be my love forever :)"
sleep 3
notify-send "Just forget about anything" "and let's start to focus, I love you"

# Battery notification
   while true
    do
       export DISPLAY=:0.0
       battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
       if on_ac_power; then
           if [ $battery_level -ge 95 ]; then
              notify-send "Battery Full 🔋" "Level: ${battery_level}% "
              paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
           fi
       else
           if [ $battery_level -le 10 ]; then
              notify-send --urgency=CRITICAL "Low Battery 🪫" "Level: ${battery_level}%"
              paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
           fi
       fi
     sleep 60
done



