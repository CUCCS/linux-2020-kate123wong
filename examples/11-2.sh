#!usr/bin/env bash
# loop on array member
NAMES=(Joe Jenny Sara Tony)
for N in "${NAMES[@]}" ; do
  echo "My name is $N"
done


IFS=$'\n'
# loop on command output results
for f in $(ps -eo command) ; do
  echo "$f"
done
