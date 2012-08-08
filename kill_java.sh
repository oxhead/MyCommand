#!/bin/sh
# retrieving active java instances' processIds
java_pids=$(ps -e | grep java | awk '{ print $1}')
 
# kill each  process id with "kill -9"
for java_pid in $java_pids
do
 echo "killing java process $java_pid"
 kill -9 $java_pid
done
## end of sh
