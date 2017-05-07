#!/bin/bash

# Base installation

# ===========================================================================
# On VirtualBox create VM, add shared dir with folder name 'share' and insert
# Guest Additions CD image

sudo apt-get update
sudo apt-get install gcc build-essential linux-headers-`uname -r` dkms # ~ 150MB
sudo mount -t iso9660 /dev/sr0 /media/cdrom/
sudo /media/cdrom/VBoxLinuxAdditions.run
 
sudo usermod -aG vboxsf `whoami` # `whoami` printf [you] username
ln -s /media/sf_share ~/share    # it will work after sys reboot !
 
sudo shutdown -r now

