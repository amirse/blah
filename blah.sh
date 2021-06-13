#!/bin/bash

spinwait="10"
interval="1"

while [ "${spinwait}" != "0" ]; do
	if [ -f "/tmp/blah" ]; then
		echo "got it"
		exit 0
	fi
	spinwait=$(( spinwait - 1))
	sleep $interval
done
echo "Reached timeout"
