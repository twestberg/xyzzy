#!/bin/bash
sleep 20
echo  "Did Test1" > test1.txt
cat test1.txt
ls -l
printenv
ls -l config
if [ -f config/database.yml ] 
	then
	echo "config/database.yml"
	cat config/database.yml
fi
if [ -f config/database-tddium.yml ]
	then
	
	echo "config/database-tddium.yml"
	cat config/database-tddium.yml ]
fi

if [ -f $MYSQL_HOME/my.cnf ] ; then
	echo "my.cnf"
	cat $MYSQL_HOME/my.cnf
fi
exit 0
