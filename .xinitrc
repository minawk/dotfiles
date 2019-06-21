#!/bin/bash 
export QT_QPA_PLATFORMTHEME="qt5ct"
export WINEPREFIX=~/wine32
export _JAVA_AWT_WM_NONREPARENTING=1
xrandr --setprovideroutputsource modsettings NVIDIA-0
xrandr --auto
# exec i3
