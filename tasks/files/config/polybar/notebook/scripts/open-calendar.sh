#!/bin/bash

day=$(yad --calendar --undecorated --fixed --no-buttons --title="yad-calendar" --borders=0 --date-format="%Y/%-m/%-d")
firefox "https://calendar.google.com/calendar/u/0/r/day/$day"
