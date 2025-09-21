#!/bin/bash
# User Account Management Script

echo "============================="
echo "   User Management Script"
echo "============================="
echo "1) Create a new user"
echo "2) Delete an existing user"
echo "3) Check if a user exists"
echo "4) Exit"
echo "============================="

read -p "Choose an option [1-4]: " choice

case $choice in
    1)
        # Create User
        read -p "Enter the username to create: " username
        if id "$username" &>/dev/null; then
            echo "❌ User '$username' already exists."
        else
            useradd -m "$username"
            read -s -p "Enter password for $username: " password
            echo
            echo "$username:$password" | sudo chpasswd
            echo "✅ User '$username' created successfully with password."
            # Force password change at first login (optional)
            passwd -e "$username"
        fi
        ;;
    2)
        # Delete User
        read -p "Enter the username to delete: " username
        if id "$username" &>/dev/null; then
            read -p "Are you sure you want to delete $username? (y/n): " confirm
            if [[ $confirm == "y" || $confirm == "Y" ]]; then
                userdel -r "$username"
                echo "🗑️ User '$username' deleted successfully."
            else
                echo "❌ User deletion canceled."
            fi
        else
            echo "❌ User '$username' does not exist."
        fi
        ;;
    3)
        # Check if User Exists
        read -p "Enter the username to check: " username
        if id "$username" &>/dev/null; then
            echo "✅ User '$username' exists."
        else
            echo "❌ User '$username' does not exist."
        fi
        ;;
    4)
        echo "👋 Exiting..."
        exit 0
        ;;
    *)
        echo "⚠️ Invalid option, please choose between [1-4]."
        ;;
esac

