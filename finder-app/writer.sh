#!/bin/bash

if [ "$#" -ne 2 ]
then
	echo "no valid arguments"
	exit 1
fi
install /dev/null -D -v "$1"
if [ -f "$1" ]
then
	echo "$2" > "$1"
else
	exit 1
fi
exit 0
