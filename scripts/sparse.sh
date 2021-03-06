#!/bin/sh
#
# Mounts a sparsebundle disk into the supplied path
#
# Examples:
#   mount-sparse ~/Workspace.sparsebundle ~/Sites
##

devDisk=`hdiutil attach -nomount $1`
mkdir -p $2
mount -o noatime -t hfs $devDisk $2