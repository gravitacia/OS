#!/bin/bash

best_pid=0
best_mem=0
cur_mem=0

for pid in $(ps ax -o pid | sed 1d)
do
	st="/proc/$pid/status"
	cur_mem=$(grep -P "VmRSS:\s\d*" -hsi $st | awk '{print $2}')
	if [[ cur_mem -gt best_mem ]]
	then 
	best_mem=$cur_mem
	best_pid=$pid
	fi
done

echo Best PID: $best_pid : Best memory usage : $best_mem