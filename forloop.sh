#!/bin/bash


<<info 
learned For Loop
info

read -p "Enter number 1: " num1


for ((i = 1; i <= 10; i++))
do
	count=$((num1 * i))
	echo "$count"

done
