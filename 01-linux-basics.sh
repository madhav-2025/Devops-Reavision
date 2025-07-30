#!/bin/bash

# Author: Madhav Jha

# Description: Linux Basic Commands for DevOps Revision

### ------------------------------
### 📂 Navigation Commands
### ------------------------------

pwd                         # Show current directory path
ls -l                       # List with details
ls -a                       # List hidden files
cd /etc                     # Change to /etc
cd ~                        # Change to home directory
cd ..                       # Move up one level
clear                       # Clear the terminal

### ------------------------------
### 📁 File & Directory Operations
### ------------------------------

touch file1.txt             # Create a file
mkdir dir1                  # Create a directory
cp file1.txt dir1/          # Copy file to directory
mv file1.txt file2.txt      # Rename a file
rm file2.txt                # Delete a file
rm -r dir1                  # Delete a directory

### ------------------------------
### 🔐 Permissions & Ownership
### ------------------------------

ls -l                       # Check permissions
chmod +x script.sh          # Make script executable
chmod 755 myfile.sh         # Set rwxr-xr-x
chown ubuntu:ubuntu myfile # Change owner

### ------------------------------
### 🖥 System Info Commands
### ------------------------------

whoami                      # Current logged-in user
hostname                    # System name
uname -a                    # System + kernel info
date                        # Current date and time
uptime                      # System running time

### ------------------------------
### ✅ End of File
### ------------------------------

