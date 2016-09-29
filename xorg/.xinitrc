#!/bin/bash

xmodmap ~/.Xmodmap
xrdb merge ~/.Xresources
xset -dpms
exec i3
