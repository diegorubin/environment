#!/bin/bash

LANGUAGE=en_US

function output() {
    volume=$(golem get default input volume)
    muted=$(golem is default input muted)
    if [ "$muted" = "yes" ]; then
        echo "%{F#6b6b6b}$volume mic%{F-}"
    else
        echo "$volume mic"
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

