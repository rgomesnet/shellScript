#!/bin/bash

while [ $(ps aux | wc -l) -lt 300 ]
do
	echo "Tudo ok às $(date)"
	sleep 30
done
