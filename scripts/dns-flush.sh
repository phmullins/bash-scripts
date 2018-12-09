#!/bin/sh
#
# Name: ~/bin/dns-flush
# Desc: Flush DNS cache (See: http://support.apple.com/kb/ht5343)
# Contact: pmullins11@gmail.com | Modified 2017-12-21 @ 10:28 AM.

sudo killall -HUP mDNSResponder