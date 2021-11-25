#!/bin/bash

prev_ppid=0
cur_ppid=0
runtime=0
cur_runtime=0
iter=0

while read string
do
	if [[ -n $string ]]
	then
		cur_ppid=$(echo $string | grep -E "Parent_ProcessID=[0-9]+" -hsio | grep -o "[0-9]\+")
		cur_runtime=$(echo $string | grep -E "Average_Running_Time=[0-9.]+" -hsio | grep -o "[0-9.]\+" | awk '{printf("%s", $1)}')
		if [[ $prev_ppid == $cur_ppid ]]
		then
			runtime+=$cur_runtime
			iter+=1
		else
			runtime=$(echo $runtime / $iter | bc -l -q)
			echo "Average_Running_Children_of_ParentID=$prev_ppid is $runtime" >> task5.log
			runtime=$cur_runtime
			prev_ppid=$cur_ppid
			iter=1
		fi
		echo $string >> task5.log
	fi
done < task4.log

runtime=$(echo $runtime / $iter | bc -l -q)

echo "Average_Running_Children_of_ParentID=$prev_ppid is $runtime" >> task5.log