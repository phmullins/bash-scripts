#!/bin/sh
#
# Name: ~/bin/ipe
# Desc: Show external IPv4 address for interface en0.
# Contact: pmullins11@gmail.com | Modified 2017-12-21 @ 10:28 AM.

dig +short myip.opendns.com @resolver1.opendns.com
