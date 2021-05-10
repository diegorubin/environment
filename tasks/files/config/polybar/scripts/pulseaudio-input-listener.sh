#!/bin/bash

LANGUAGE=en_US
COLOR_MUTED="%{F#6b6b6b}"

function output() {
    volume=$(golem get default input volume)
    muted=$(golem is default input muted)
    if [ "$muted" = "yes" ]; then
        echo "- mic: $volume"
    else
        echo "mic: $volume"
    fi
}

output
LANG=$LANGUAGE pactl subscribe 2>/dev/null | {
    while true; do
        {
            read -r event || break
            if ! echo "$event" | grep -e "on source"; then
                continue
            fi
        } &>/dev/null

        output
    done
}

