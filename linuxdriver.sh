#!/bin/sh
if [ `whoami` != root ]; then
    echo "Please run this script as root or using sudo."
    exit
fi
sudo pacman --noconfirm -S xorg-server xf86-video-intel xf86-input-synaptics mesa vulkan-intel vulkan-mesa-layers
