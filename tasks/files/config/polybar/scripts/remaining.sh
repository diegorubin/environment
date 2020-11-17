#!/bin/bash

remaining=`head -n 1 ~/.remaining`
if [ -z "$remaining" ]; then
  echo "XD"
else
  echo "  $remaining"
fi
