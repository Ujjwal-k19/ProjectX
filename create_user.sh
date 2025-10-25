#!/bin/bash

echo "----------------Creation of User Started ----------------"

read -p "Enter the UserName:" username
read -p "Enter the Password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "---------------- Creation of User Completed --------------"	
