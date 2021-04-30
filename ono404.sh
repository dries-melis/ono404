#!/bin/bash

while read sub;
do
	echo $sub;
	rescode=$(curl --HEAD $sub  &> /dev/null | awk 'NR==1{print $2}')

	if [ -z $rescode ]; then
		continue
	fi

	if [ "400" -gt  "$rescode" ];
	then
		echo $sub	
	fi;
done
