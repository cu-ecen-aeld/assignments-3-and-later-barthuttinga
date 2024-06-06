#!/bin/sh

if [ $# -lt 2 ]; then
  echo "Error: filesdir and/or searchstr not provided"
  exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d ${filesdir} ]; then
  echo "Error: ${filesdir} does not exist"
  exit 1
fi

if [ -z ${searchstr} ]; then
  echo "Search string is empty"
  exit 1
fi

x=$(find ${filesdir} -type f | wc -l)
y=$(grep -r ${searchstr} ${filesdir}/* | wc -l)

echo "The number of files are ${x} and the number of matching lines are ${y}"
