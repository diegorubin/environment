#!/bin/bash
# source: https://gist.github.com/victortrac/186b01564276c2de1f2e99fbc6585707

function main() {
    # Pipewire
    SOURCE=$(pw-record --list-targets | sed -n 's/^*.*"\(.*\)" prio=.*$/\1/p')
    SINK=$(pw-play --list-targets | sed -n 's/^*.*"\(.*\)" prio=.*$/\1/p')
    VOLUME=$(pactl list sinks | sed -n "/${SINK}/,/Volume/ s!^[[:space:]]\+Volume:.* \([[:digit:]]\+\)%.*!\1!p")
    IS_MUTED=$(pactl list sinks | sed -n "/${SINK}/,/Mute/ s/Mute: \(yes\)/\1/p")

    action=$1
    if [ "${action}" == "up" ]; then
        pactl set-sink-volume @DEFAULT_SINK@ +1%
    elif [ "${action}" == "down" ]; then
        pactl set-sink-volume @DEFAULT_SINK@ -1%
    elif [ "${action}" == "mute" ]; then
        pactl set-sink-mute @DEFAULT_SINK@ toggle
    else
        if [ "${IS_MUTED}" != "" ]; then
            echo " ${SOURCE} |   MUTED ${SINK}"
        else
            echo " ${SOURCE} |    ${VOLUME}% ${SINK}"
        fi
    fi
}

main $@
