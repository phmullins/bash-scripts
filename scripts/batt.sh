#!/bin/bash
#
# Name: ~/bin/batt
# Desc: A quick little indicator for battery status on your Mac laptop.
# Contact: pmullins11@gmail.com | Modified 2017-12-21 @ 10:28 AM.

battstat=$(pmset -g batt)
time_left=$(echo "$battstat" |
  tail -1 |
  cut -f2 |
  awk -F"; " '{print $3}' |
  cut -d' ' -f1
)

printf "$time_left"


