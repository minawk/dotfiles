#!/bin/bash 
export QT_QPA_PLATFORMTHEME="qt5ct"
export WINEPREFIX=~/wine32
xrandr --setprovideroutputsource modsettings NVIDIA-0
xrandr --auto
# exec i3
