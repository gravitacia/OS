#!/bin/bash

ps u -e | awk -v count=0 '
{
	print $2, ":", $11;
	count++
}
END{print "Count of processes: ", count}'