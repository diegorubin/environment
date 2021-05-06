#!/bin/bash
volume=$(golem get default input volume)
muted=$(golem is default input muted)

if [ "$muted" = "yes" ]; then
    echo "mic(X): $volume"
else
    echo "mic: $volume"
fi
