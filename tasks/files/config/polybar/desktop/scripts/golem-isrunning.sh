#!/bin/bash

golem=$(golem health)

if [ "$golem" = "nok" ]; then
    echo "%{F#f00}"
else
    echo "%{F#0f0}"
fi
