#!/bin/bash
# git should be installed

su - | echo -e 'LarryThunder'
apt install sudo
usermod -a -G sudo jake
reboot
