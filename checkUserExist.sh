#!/bin/bash

<<info

This script check if user exists or not
info

read -p "Enter The UserName:" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
	echo "Not Exist"
else
	echo "Exist"
fi

