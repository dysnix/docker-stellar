#!/bin/bash
set -e
GOSU="gosu stellar"
# don't use gosu when id is not 0
if [ "$(id -u)" -ne "0" ];then
  GOSU=""
fi
if [[ "$1" == "stellar-core" || "$1" == "stellar-core-cmd" || "$1" == "stellar-core-gap-detect" || "$1" == "stellar-horizon" ]]; then
	exec $GOSU "$@"
else
  exec $GOSU stellar-core "$@"
fi
