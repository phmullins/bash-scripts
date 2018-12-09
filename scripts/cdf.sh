#!/bin/sh
#
# Name: ~/bin/cdf
# Desc: Change working directory to the top-most Finder window location.
# Contact: pmullins11@gmail.com | Modified 2017-12-21 @ 10:28 AM.

cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')";
