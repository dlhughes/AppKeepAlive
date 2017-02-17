#!/bin/bash

# Discover Time
H=$(date +%H)

# Is process name provided, if not assume it matches the application name
if [ -z "$ProcessName" ]; then ProcessName="$AppName"; fi

# Are we within the assigned time window, if so is the application running. If Yes & No fix that.
if (( "$StartTime" <= 10#$H && 10#$H < "$StopTime" )); then 
	if pgrep "$ProcessName" > /dev/null
	then
		exit 0
	else
		open -ga "$AppName"
	fi
fi

exit
