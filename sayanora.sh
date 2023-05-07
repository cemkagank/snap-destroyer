#!/bin/sh

sudo apt-mark hold snapd

snaps=$(snap list | awk '{print $1}')
for s in $snaps
do 
    sudo snap remove --purge $s
done

for s in $snaps
do 
    sudo snap remove --purge $s
done

sudo snap remove --purge bare
sudo snap remove --purge snapd


sudo apt remove --autoremove snapd

sudo mv nosnap.pref /etc/apt/preferences.d/nosnap.pref

Echo "No more snaps!, enjoy your freedom!"
