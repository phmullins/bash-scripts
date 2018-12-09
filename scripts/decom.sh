#!/bin/bash
# About: Uncompress archives with a single command.
# Installation: 1. Download and run chmod +x decom.sh. 2. Copy this file to /usr/local/bin
# Note: p7zip and unrar on MacOS require installation via Homebrew.
# Contact: pmullins11@gmail.com | Modified 2017-12-21 @ 10:28 AM.

if [ $# -lt 1 ]; then
  echo "Usage: $(basename "$0") file"
fi

decom() {
  if [ -f "$1" ]; then
    case $1 in
      *.tar.xz)   tar -xvf "$1"                         ;;
      *.tar.bz2)  tar -jxvf "$1"                        ;;
      *.tar.gz)   tar -zxvf "$1"                        ;;
      *.bz2)      bunzip2 "$1"                          ;;
      *.dmg)      hdiutil mount "$1"                    ;;
      *.gz)       gunzip "$1"                           ;;
      *.tar)      tar -xvf "$1"                         ;;
      *.tbz2)     tar -jxvf "$1"                        ;;
      *.tgz)      tar -zxvf "$1"                        ;;
      *.zip)      unzip "$1"                            ;;
      *.pax)      cat "$1" | pax -r                     ;;
      *.pax.z)    uncompress "$1" --stdout | pax -r     ;;
      *.rar)      unrar x "$1"                          ;;
      *.z)        uncompress "$1"                       ;;
      *.7z)       7z x "$1"                             ;;
      *)          echo "'$1' cannot be extracted/mounted via decom()" ;;
    esac
  else
    echo "'$1' is not a valid file."
  fi
}

decom "$@"
