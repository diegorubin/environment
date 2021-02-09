#!/bin/bash

nextevent=`head -n 1 ~/.nextevent`
if [ -z "$nextevent" ]; then
  echo ""
else
  echo "$nextevent"
fi
