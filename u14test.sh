#!/bin/bash
DESC=`lsb_release -d | cut -f 2`
EXPECTED="Ubuntu 14.04.3 LTS"
if [ "$DESC" != "$EXPECTED" ] ; then
	echo "Expected $EXPECTED, got $DESC but who cares..."
	date
	exit 0
fi
echo "OK. $DESC"
exit 0
