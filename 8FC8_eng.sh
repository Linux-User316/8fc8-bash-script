#!/bin/bash

if [ ! -d /usr/share/doc/colordiff  ]; then
     sudo apt install colordiff
fi
if [ ! -d /usr/share/doc/hexedit  ]; then
     sudo apt install hexedit
fi
if [ ! -d /usr/share/doc/wmctrl  ]; then
     sudo apt install wmctrl
fi
if [ ! -d /usr/share/doc/rename  ]; then
     sudo apt install rename
fi

###########################################################################################

find $HOME/Downloads -iname "* *" | rename 's/ /_/g'
CHOOSE_FILE_1=$(zenity --file-selection --title "Select file to analyze!" --multiple --filename "$HOME/Downloads/"  2> /dev/null)
FILE_NAME=$(basename ${CHOOSE_FILE_1})
cp -uv $HOME/Downloads/${FILE_NAME} $HOME/Downloads/${FILE_NAME%.*}_unlocked.bin | wmctrl -k on

xxd -u $CHOOSE_FILE_1 | egrep '00 FCAA **|00 FDAA **' | awk '{print $1}' | sed 's/[:]//g' > /tmp/AA_00.txt
gedit /tmp/AA_00.txt > /dev/null 2>&1 &

CHOOSE_FILE=$(zenity --file-selection --title "Select file to unlock!" --multiple --filename "$HOME/Downloads/"  2> /dev/null)
FILE_NAME=$(basename $CHOOSE_FILE)
gnome-terminal --geometry=100x36+90+50 -- hexedit -s $CHOOSE_FILE &
printf "\n*** Press Enter to continue! ***"
read -n 1
pkill gedit
clear

CHOOSE_FILE_1=$(zenity --file-selection --title "Select the locked file." --multiple --filename "$HOME/Downloads/"  2> /dev/null)
CHOOSE_FILE_2=$(zenity --file-selection --title "Select the unlocked file.." --multiple --filename "$HOME/Downloads/"  2> /dev/null)
FILE_NAME_1=$(basename $CHOOSE_FILE_1)
FILE_NAME_2=$(basename $CHOOSE_FILE_2)
cmp -l $CHOOSE_FILE_1 $CHOOSE_FILE_2 | gawk '{printf "%08X %02X %02X\n", $1, strtonum(0$2), strtonum(0$3)}'
printf "\n*** Press Enter to continue! ***"
read -n 1

