#!/bin/bash
#
# Name: ~/bin/makepass
# Desc: Super easy way of generating a random 20 character password.
# Contact: pmullins11@gmail.com | Modified 2017-12-21 @ 10:28 AM.

echo `env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 20`