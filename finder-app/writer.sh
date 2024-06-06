#!/bin/sh

if [ $# -lt 2 ]; then
  echo "Error: writefile and/or writestr not provided"
  exit 1
fi

writefile=$1
writestr=$2

writedir=$(dirname $1)
if ! mkdir -p ${writedir}; then
  echo "Error: dir ${writedir} could not be created"
  exit 1
fi

if ! echo ${writestr} > ${writefile}; then
  echo "Error: file ${writefile} could not be created"
  exit 1
fi
