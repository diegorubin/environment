#!/bin/bash

nextevent=`golem next event`
if [ -z "$nextevent" ]; then
  echo ""
else
  echo "$nextevent"
fi
