#!/bin/bash

monitors=$(hyprctl monitors -j | jq '.[]')
if [ $(echo $monitors | jq '.id' | wc -l) -gt 1 ]; then
	passivemonitor=$(echo "$monitors" | jq 'select(.focused==false) | .id')
	hyprctl dispatch movewindow mon:$passivemonitor
	exit 0
fi

exit 0
