#!/bin/bash

remaining=`head -n 1 ~/.remaining`
if [ -z "$remaining" ]; then
  echo "XD"
else
  if [[ $remaining == *"-"* ]]; then
    echo "%{F#f00}%{F-} $remaining"
  else
    echo "%{F#0f0}%{F-} $remaining"
  fi
fi
