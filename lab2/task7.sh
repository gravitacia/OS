#!/bin/bash

pid=0

search() {
	find /proc -maxdepth 2 -name "io" -type f -exec grep -H -i -s "rchar" {} \; | sort -n -r -k 2 > $1
}

search step1
# sleep 60
search step2

touch task7.log

while read string
do
	pid=$(echo $string | awk -F '/' '{print $3}')
	already_written=$(echo $string | awk '{print $2}')
	writed_now=$(grep -s "/proc/$pid/" step2 | awk '{print $2}')
	if [[ $writed_now ]]
	then
		res=$(echo $writed_now - $already_written | bc -l -q) 
		echo $pid $res >> task7.log
	fi
done < step1

cat task7.log | sort -n -r -k 2 | head -n 3 | awk '{print $1 " : " $2}'
rm -f task7.log