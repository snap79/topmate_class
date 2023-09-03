#!/bin/bash

# Example 1: Hello World
echo "Example 1: Hello, World!"
echo "Hello, World!"
echo

# Example 2: File Count in Directory
count=$(ls -l | grep -c '^-' )
echo "Example 2: File Count in Directory"
echo "Total files in current directory: $count"
echo

# Example 3: Even or Odd
read -p "Example 3: Enter a number: " num
if (( num % 2 == 0 )); then
    echo "$num is even"
else
    echo "$num is odd"
fi
echo

# Example 4: User Greeting
user=$(whoami)
echo "Example 4: User Greeting"
echo "Hello, $user!"
echo

# Example 5: File Backup
cp -r /path/to/source /path/to/backup
echo "Example 5: File Backup"
echo "Backup completed"
echo

# Example 6: Simple Calculator
read -p "Example 6: Enter first number: " num1
read -p "Enter second number: " num2
sum=$((num1 + num2))
echo "Sum: $sum"
echo

# Example 7: Check File Existence
read -p "Example 7: Enter a filename: " filename
if [ -e "$filename" ]; then
    echo "$filename exists."
else
    echo "$filename does not exist."
fi
echo

# Example 8: Fibonacci Sequence
read -p "Example 8: Enter the number of terms: " n
a=0
b=1
echo "Example 8: Fibonacci Sequence:"
for (( i=0; i<n; i++ ))
do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done
echo
echo

# Example 9: Disk Usage
echo "Example 9: Disk Usage"
df -h | grep '/dev/sd' | awk '{print "Disk: "$1", Used: "$3", Free: "$4}'
echo

# Example 10: Check Internet Connection
echo "Example 10: Check Internet Connection"
ping -c 3 google.com > /dev/null
if [ $? -eq 0 ]; then
    echo "Internet connection is active."
else
    echo "No internet connection."
fi
