#!/bin/bash 
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORMTHEME="qt5ct"
export WINEPREFIX=~/wine32
xrandr --setprovideroutputsource modsettings NVIDIA-0
xrandr --auto
# exec i3
