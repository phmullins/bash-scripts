#!/bin/bash
#
# Name: ~/bin/ifactive
# Desc: Quickly display all active network adapters.
# Contact: pmullins11@gmail.com | Modified 2017-12-21 @ 10:28 AM.

ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'
