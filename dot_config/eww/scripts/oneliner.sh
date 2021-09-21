#!/usr/bin/env sh

endtime=$(cat endtime.txt)
second=$(cat second.txt)

if [ $second -lt $endtime ];
then
	echo $second
	echo $(expr $second + 1) > second.txt
elif [ $second -eq $endtime ];
then
	echo $second
	echo 0 > second.txt
fi
