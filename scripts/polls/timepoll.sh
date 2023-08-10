#!/bin/bash

hour=$(date '+%H')
minute=$(date '+%M')
clock=""

if [[ $hour == "0" ]] || [[ $hour == "12" ]]; then
	clock="󱑖"
elif [[ $hour == "1" ]] || [[ $hour == "13" ]]; then
	clock="󱑋"
elif [[ $hour == "2" ]] || [[ $hour == "14" ]]; then
	clock="󱑌"
elif [[ $hour == "3" ]] || [[ $hour == "15" ]]; then
	clock="󱑍"
elif [[ $hour == "4" ]] || [[ $hour == "16" ]]; then
	clock="󱑎"
elif [[ $hour == "5" ]] || [[ $hour == "17" ]]; then
	clock="󱑏"
elif [[ $hour == "6" ]] || [[ $hour == "18" ]]; then
	clock="󱑐"
elif [[ $hour == "7" ]] || [[ $hour == "19" ]]; then
	clock="󱑑"
elif [[ $hour == "8" ]] || [[ $hour == "20" ]]; then
	clock="󱑒"
elif [[ $hour == "9" ]] || [[ $hour == "21" ]]; then
	clock="󱑓"
elif [[ $hour == "10" ]] || [[ $hour == "22" ]]; then
	clock="󱑔"
elif [[ $hour == "11" ]] || [[ $hour == "23" ]]; then
	clock="󱑕"
else
	clock="NO"
fi

echo "$clock $hour:$minute"
