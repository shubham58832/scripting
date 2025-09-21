#!/bin/bash
#user account management script

read -p "enter the username to create : " username

if id "$username" &>/dev/null; then
	echo "user $username already present."

else 
	useradd -m "$username"
	echo "user $username "

	read -s -p "enter the password for $username: " passwd
	echo

	echo "user $username is created with  password."

fi
