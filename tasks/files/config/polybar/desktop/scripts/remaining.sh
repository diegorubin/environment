#!/bin/bash

remaining=`golem workday remaining`
plans=`golem plans summary`
if [ -z "$remaining" ]; then
  echo "XD"
else
  if [[ $remaining == *"-"* ]]; then
    echo "%{F#f00}%{F-} ($plans) $remaining"
  else
    echo "%{F#0f0}%{F-} ($plans) $remaining "
  fi
fi
