#!/bin/bash 


toremove=( wolfram-engine scratch sonic-pi idle3 smartsim penguinspuzzle java-common minecraft-pi raspberrypi-artwork libx11-6 menu-xdg gstreamer1.0-omx gstreamer1.0-plugins-base gstreamer1.0-libav alsa-utils netsurf-gtk omxplayer ) 

function apt_remove() { 
    for p in "${toremove[@]}" 
    do 
    sudo apt-get remove --auto-remove --purge $p 
    done 
} 

