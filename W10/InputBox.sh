#!/bin/bash
dialog --title "Inputbox - To take input from you" --backtitle "Linux
ShellScript Tutorial" --inputbox "Enter your name please" 8 60
2>/tmp/input.$$
sel=$?
na=`cat /tmp/input.$$`
case $sel in
0) echo "Hello $na" ;;
1) echo "Cancel is Press" ;;
255) echo "[ESCAPE] key pressed" ;;
esac
rm -f /tmp/input.$$
# cau lenh 2>/tmp/input.$$ de dua gia tri nhap vao tep /tmp/input.$$
