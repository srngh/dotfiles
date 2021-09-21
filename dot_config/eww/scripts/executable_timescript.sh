#!/usr/bin/env bash

endtime=$(cat scripts/endtime.txt)
second=$(cat scripts/second.txt)

if [ $second -lt $endtime ];
then
	echo $second
	echo $(expr $second + 1) > scripts/second.txt
elif [ $second -eq $endtime ];
then
	echo $second
	echo 0 > scripts/second.txt
fi
