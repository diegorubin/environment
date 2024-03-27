#!/bin/bash

current_ticket=`golem get current ticket`
current_task=`golem get current task`

if [ -z "$current_ticket" ]; then
  echo "$current_task"
else
  echo "#$current_ticket - $current_task"
fi
