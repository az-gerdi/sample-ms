#!/bin/bash
set -e

if [ "${1:0:1}" = '-' ]; then
	set -- mongod "$@"
fi

if [ "$1" = 'mongod' ]; then
	chown -R mongodb:mongodb /data/db && chmod 777 /data/db
	chown -R mongodb:mongodb /var/log/mongodb && chmod 777 /var/log/mongodb

	numa='numactl --interleave=all'
	if $numa true &> /dev/null; then
		set -- $numa "$@"
	fi

	exec gosu mongodb "$@"
fi

exec "$@"
