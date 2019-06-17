#!/bin/bash

while ls /var/lock/
do
	echo "Tudo ok às $(date)"
	sleep 30
done
