#!/bin/bash

result=''

rm -f log4

for pid in $(ps -A -o pid | tail -n +2)
do
	st="/proc/$pid/status"
	sch="/proc/$pid/sched"
	sum_exec_runtime=0
	nr_switches=0
	
	ppid=$(grep -P -h -s -i -o 'ppid:\s+\d*' $st | awk '{print $2}')

	sum_exec_runtime=$(grep -P -h -s -i -o 'se\.sum_exec_runtime\s*:\s*\d+' $sch | awk '{print $3}')
	nr_switches=$(grep -P -hsi 'nr_switches\s*:\s*\d+' $sch | awk '{print $3}')
	
	if [[ ($sum_exec_runtime != 0) && ($nr_switches != 0) ]]
	then art=0$(echo "scale=5; $sum_exec_runtime / $nr_switches" | bc -l -q)
	else art="N/A"
	fi
	
	if [[ $art != "N/A" ]]
	then echo ProcessID=$pid : Parent_ProcessID=$ppid : Average_Running_Time=$art >> task4.tmp
	fi
done

sort -t " " -k2 task4.tmp > task4.log
rm -f task4.tmp