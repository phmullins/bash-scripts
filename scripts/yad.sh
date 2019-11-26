#!/bin/bash
#
# Script Name: YAD (YouTube Audio Download)
# Description: Simple script to convert a YouTube video into an AAC encoded .m4a audio file.
# Created: 2018-09-29 @ 03:28 PM | Modified 2019-11-26 @ 02:20 PM.
# Author: patrick@arkmail.us 
#
# Note: Requires youtube-dl (https://youtube-dl.org/)
#
# Example usage:
# ./yad.sh https://www.youtube.com/watch?v=hnXD6FRZtn0

if [ $# -lt 1 ]; then
  echo "Usage: ./yad.sh <URL>"
fi

# If $1 contains data then do something.
if [[ $1 =~ v=(.*) ]]; then
 
    # Download the YouTube video specified in the $1 variable.
    echo "----> YAD: Downloading video from YouTube"
    youtube-dl -q $1 --extract-audio --audio-format m4a --audio-quality 0
    echo "----> YAD: All done. Enjoy!"
fi
