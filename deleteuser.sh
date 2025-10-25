#!/bin/bash

<<info 
delete user
info

function deleteuser {
read -p "enter the user to be deleted: " username

sudo userdel "$username"

echo "$username is deleted"

}

deleteuser
deleteuser
