#!/bin/bash

#creating user 

echo "----------Create User----------"

read -p "Enter the username: " username
read -p "Enter the password: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "$username created suseccsfully"

#delete user

sudo userdel "$username"
echo "$username is delected successfully"

cat  /etc/passwd | grep "$username" | wc

echo "as wc is 0 $username is delected"
