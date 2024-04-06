#!/usr/bin/env bash

# genmon script for displaying the time
# displays date and time on the tooltip

readonly ICON="$HOME/.assets/icons/clock.svg"

# Updated to include seconds in the format
TIME=$(date '+%H:%M:%S')
DATE+=$(date '+ %d %B %A %H:%M:%S') # Updated to include seconds here as well

# Panel
INFO="<img>${ICON}</img>"
INFO+="<txt>${TIME}</txt>"

# Tooltip
MORE_INFO="<tool>"
MORE_INFO+="${DATE}"
MORE_INFO+="</tool>"

# Panel Print
echo -e "${INFO}"

# Tooltip Print
echo -e "${MORE_INFO}"
