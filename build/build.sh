#!/bin/bash

filename='users.txt'

n=1
while read line; do

# reading each line
./insert.sh $line

n=$((n+1))

done < $filename
