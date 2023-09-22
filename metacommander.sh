#!/bin/bash

#################################################################################
## 
## Written by Dirk Weinberger
##
## This script helps DJ to sent the Metainfo from a Playlist to Butt.
## The playlist file (playlist.in) should contain the Song mfor each line
## Please configure Butt that is updates the Metadata from a file and
## choose the output file from this script (currentsong.txt)
## 
################################################################################

SHOWNAME=$1

if [ $SHOWNAME = ""]
then
    echo "Playlist Tool for Butt"
    echo "Please provide Showname"
    exit
fi

HEIGHT=35
WIDTH=70
CHOICE_HEIGHT=4
BACKTITLE="Radio Commander for B.U.T.T."
TITLE="Playlist for Show : $SHOWNAME"
MENU="\nLast Meta Sent: NONE\n\nChoose Metainfo:"

OPTIONS=()

NUM=1
while read s ; do
    OPTIONS+=("$s" $NUM)
    NUM=$(($NUM+1))
done < playlist.in

INDEX=1
while [ true ]
do
    CHOICE=$(dialog --ok-label "Sent Selected to Butt" --clear --extra-button --extra-label "Send Showname to BUTT" --default-item "$INDEX" --backtitle "$BACKTITLE" --title "$TITLE" --menu "$MENU" $HEIGHT $WIDTH $CHOICE_HEIGHT "${OPTIONS[@]}" 2>&1 >/dev/tty)

    exit_code="$?"

    case $exit_code in
            0)
                echo "$CHOICE" > metaout.txt
                MENU="\nLast Meta Sent: "$CHOICE"\n\nChoose Metainfo:"
                INDEX="$CHOICE"
                ;;
            1)
                clear
                echo "bye buy"
                exit
                ;;
            3)
                echo "$SHOWNAME" > metaout.txt
                MENU="\nLast Meta Sent: "$SHOWNAME"\n\nChoose Metainfo:"
                ;;
    esac
done



