#!/bin/bash
# read waiting fou user input :
#read -p 'Whot is your name:' name
# $1 - argument
name=$1
nice=$2
user=$(whoami)
date=$(date)
directory=$(pwd)
echo "Hello $name"
sleep 1
echo "You*re looking good today $name"
sleep 1
echo "Have a $nice day $name"
sleep 2
echo "you are CURRENTLY loged in as: $user, and your are in the directory: $directory. Also today is: $date"