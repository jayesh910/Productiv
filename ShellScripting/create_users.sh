#!/bin/bash

# This is a script to add users in batch
# fed by a text file with 1 user/line

# User Name file
USERFILE=$1

if [ "$USERFILE" = "" ]
  then
    echo "Please specify an input file!"
    exit 10
elif test -e $USERFILE
  then
    for user in `cat $USERFILE`
    do
      echo "Creating $user user . .. ..."
               useradd -m $user ; echo "$user:linux" | chpasswd
    done
    exit 20
else
  echo "Invalid input file"
  exit 30
fi
