#!/bin/sh

sudo apt-mark hold snapd

snaps=$(snap list | awk '{print $2}')
for s in $snaps
do 
    sudo snap remove --purge $s
done

sudo apt remove --autoremove snapd

sudo mv nosnap.pref /etc/apt/preferences.d/nosnap.pref

Echo "No more snaps!, enjoy your freedom!"
