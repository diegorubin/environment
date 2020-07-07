#!/bin/bash

log=`tail -n 1 ~/.gnomato/scripts/gnomato.log`
if [ -z "$log" ]; then
  echo ""
else
  echo "$log"
fi
