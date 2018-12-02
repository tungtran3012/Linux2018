#!/bin/bash
dialog --title "Alert: Delete File" --backtitle "Linux Shell Script Tutorial" --yesno "Do you want to delete '/usr/letters/jpbapplication' file" 7 60
sel=$? #Lay ra exit status
case $sel in
    0) echo "User select to delete file";;
    1) echo "User select not to delete file";;
    2) echo "Canceled by user by pressing [ESC] key";;
esac
