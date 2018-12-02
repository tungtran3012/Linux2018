#!/bin/bash
dialog --title "Inputbox" --backtitle "Linux Shell Script Tutorial" --inputbox "Nhap ten thu muc: " 8 60 2>/tmp/input.$$
sel=$?
na=`cat /tmp/input.$$`
ham1(){

if [-d $na ]
then
    dialog --title "YesNobox" --backtitle "Linux Shell Script Tutorial" --yesno "Day la thu muc da ton tai, ban co muon xoa khong" 7 60
    sel2=$?
    case $sel2 in
	0)echo "Ban da chon xoa file $na"
	    rm -r $na;;
	1)echo "Ban da chon khong xoa file $na";;
    esac
else
    dialog --title "YesNobox" --backtitle "Linux Shell Script Tutorial" --yesno "Day la thu muc chua ton tai, ban co muon tao moi khong" 7 60
   sel3=$?
    case $sel3 in
	0)echo "Ban da chon tao moi file $na"
	    mkdir $na;;
	1)echo "Ban da chon khong tao file $na";;
    esac
fi

}
case $sel in
    0)ham1;;
    1)echo "Cancel is Press";;
    2)echo "[ESC] key pressed";;
esac
rm -f /tmp/input.$$
