#!/bin/bash
sleep 20
echo  "Did Test1" > test1.txt
cat test1.txt
ls -l
printenv
ls -l config
exit 0
