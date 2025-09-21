#!/bin/bash

read -p "Enter the user name : " username

echo "$username you entered"

sudo useradd -m $username

echo "$username added"
