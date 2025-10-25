#!/bin/bash

<<info 
This shell script is for learning function
info

function createUser {

read -p "enter the username: " username

read -p "enter The password: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "$username is created"

}

createUser
createUser
