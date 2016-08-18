#!/bin/bash
sleep 20
echo  "Did Test1" > test1.txt
cat test1.txt
ls -l
printenv
ls -l config
# if [ -f config/database.yml ] 
# 	then
# 	echo "config/database.yml"
# 	cat config/database.yml
# fi
# if [ -f config/database-tddium.yml ]
# 	then
	
# 	echo "config/database-tddium.yml"
# 	cat config/database-tddium.yml 
# fi

if [ -d $MYSQL_HOME ] ; then
	echo "my.cnf"
	ls $MYSQL_HOME
	cat $MYSQL_HOME/*
fi
mysql --socket $MYSQL_UNIX_PORT --execute "SHOW TABLES;"
exit 0
