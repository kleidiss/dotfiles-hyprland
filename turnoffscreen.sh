swayidle -w timeout 300 'hyprlock -f -c 000000' \
            timeout 600 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            before-sleep 'hyprlock -f -c 000000' &