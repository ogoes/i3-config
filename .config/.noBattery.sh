#!/bin/bash

while true ; do
	if [ $(acpi | grep -o "1\?[0-9]\?[0-9]%" | sed 's/%//') -le 10 ]; then
		acpi | grep -o "Charging"
		if [ $? -eq 0 ]; then
			echo Charging
		else
			i3-nagbar -t error -m "Recarregue a bateria  --- 10% Somente"
		fi
	fi	
	
	sleep 1
done

