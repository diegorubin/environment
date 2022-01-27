#!/bin/sh

# original source: https://github.com/polybar/polybar-scripts/blob/master/polybar-scripts/popup-calendar/popup-calendar.sh
# thank you guys

DATE="$(date +"%a %d %H:%M")"

case "$1" in
--popup)
    if [ "$(xdotool getwindowfocus getwindowname)" = "yad-calendar" ]; then
        exit 0
    fi

    eval "$(xdotool getmouselocation --shell)"
    eval "$(xdotool getdisplaygeometry --shell)"

    $HOME/.config/polybar/scripts/open-calendar.sh >/dev/null &
    ;;
*)
    echo "$DATE"
    ;;
esac
