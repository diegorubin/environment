#!/bin/bash

nextevent=`golem status -n`
if [ -z "$nextevent" ]; then
  echo ""
else
  echo "$nextevent"
fi
