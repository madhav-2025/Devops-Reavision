#!/bin/bash
# Author: Madhav Jha
# Description: Shell Scripting Basics for DevOps

### ------------------------------
### 📌 1. Print Statements
### ------------------------------
echo "Hello, Madhav! Welcome to Shell Scripting 🚀"

### ------------------------------
### 📌 2. Variables
### ------------------------------
name="Madhav"
age=30
echo "My name is $name and my age is $age"

### ------------------------------
### 📌 3. User Input
### ------------------------------
read -p "Enter your city: " city
echo "You live in $city"

### ------------------------------
### 📌 4. If-Else Condition
### ------------------------------
read -p "Enter your age: " user_age

if [ $user_age -ge 18 ]; then
  echo "You are eligible to vote ✅"
else
  echo "You are not eligible to vote ❌"
fi

### ------------------------------
### 📌 5. Command Substitution
### ------------------------------
today=$(date)
echo "Today's date is: $today"

### ------------------------------
### 📌 6. Exit Status Check
### ------------------------------
ls /home/$USER >/dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "Directory exists ✅"
else
  echo "Directory not found ❌"
fi

### ------------------------------
### ✅ End of File
### ------------------------------

