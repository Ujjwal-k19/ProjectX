#!/bin/bash

#creating user 

echo "----------Create User----------"

function createuser { 
read -p "Enter the username: " username
read -p "Enter the password: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "$username created suseccsfully"
}

#delete user
function deleteuser {
sudo userdel "$username"
echo "$username is delected successfully"

cat  /etc/passwd | grep "$username" | wc

echo "as wc is 0 $username is delected"
}

for ((i = 0; i < 4; i++))
do
	createuser
	deleteuser

done
