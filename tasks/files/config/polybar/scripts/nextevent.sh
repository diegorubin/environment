#!/bin/bash

nextevent=`head -n 1 ~/.nextevent`
if [ -z "$nextevent" ]; then
  echo "XD"
else
  echo "( $nextevent )"
fi
