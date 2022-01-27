#!/bin/bash

result=`golem get lifeguard global status`
if [ -z "$result" ]; then
  echo "XD"
else
  if [[ $result == "NORMAL" ]]; then
    echo "%{F#0f0}$result%{F-}"
  fi

  if [[ $result == "PROBLEM" ]]; then
    echo "%{F#f00}$result%{F-}"
  fi

  if [[ $result == "WARNING" ]]; then
    echo "%{F#ff0}$result%{F-}"
  fi
fi
