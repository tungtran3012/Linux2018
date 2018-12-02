#!/bin/bash
dialog --title "Alert:Delete File" --backtitle "Linux shell ScriptTutorial" --yesno "Do you want to delete '/home/morph/Linux2018/W07/abc.doc' file" 7 60
sel=$? #Lấy ra exit status
case $sel in
	0) echo "User select to delete file";;
	1) echo "user select not to delete file";;
	255) echo "Cancelled by user pressing [ESC] key";;
esac
