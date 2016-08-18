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
mysql --socket=$MYSQL_UNIX_PORT --user=$TDDIUM_DB_USER --password=$TDDIUM_DB_PASSWORD --execute="SHOW TABLES;" $TDDIUM_DB_NAME
echo "trying through network"
mysql --port=$TDDIUM_DB_PORT --host=$TDDIUM_DB_MSQL_HOST --user=$$TDDIUM_DB_USER --password=$TDDIUM_DB_PASSWORD --execute="SHOW TABLES;" $TDDIUM_DB_NAME

exit 0
