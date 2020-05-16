#!/bin/sh
if [ $# -eq 0 ]
then
  ARG=$(ls /usr/local/etc/rsy_bak.d | grep -v .ex$)
else
  ARG="$@"
fi
for JOBNAME in $ARG
do
  /usr/local/bin/rsy_bak $JOBNAME
done
