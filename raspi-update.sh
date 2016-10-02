#!/bin/bash
# Raspberry Pi Bootstrap Script
# Author: Patrick H. Mullins (pmullins11@mac.com)
# Updated: September 27, 2016 at 1:44:28 PM EDT
#
# Check for updates.
sudo apt update

# Install any updates that are found.
sudo apt upgrade -y

# Install the rpi-update utility.
sudo apt install rpi-update

# Check for updated firmware and install if found.
sudo rpi-update

# Reboot the Raspberry Pi.
sudo reboot now