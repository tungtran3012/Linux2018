#!/bin/bash
dialog --backtitle "Linux Shell Script Tutorial" --title "Main Menu" --menu "Move using [UP] [DOWN], [Enter] to select" 15 50 3 Date/time "Shows Date and Time" Calendar "To see calender" Editor "To start vi editor" 2>/tmp/menuitem.$$

menuitem=`cat /tmp/menuitem.$$`
opt=$?
case $menuitem in
    Date/time) date;;
    Calendar) cal;;
    Editor) vi;;
esac
rm -f /tmp/menuitem.$$
