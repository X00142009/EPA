#!/bin/bash

# this file contains information on 
# the number of cores on the VM
# /proc/cpuinfo

# grep is used to search for a string:

cnt=`grep rocessor /proc/cpuinfo | wc -l`
echo "The number of cores is: " $cnt

# | passes the outcome of the previous argument into the next
# wc = word count
# -l = format in lines
# cnt = imports outcome into count variable

if [ $cnt -ge $1 ]; then 
     echo "The install can proceed"; else 
     	echo "Abort"
fi
