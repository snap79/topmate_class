#!/bin/bash

# Example 1: List Files in a Directory
echo "Example 1: List Files in a Directory"
for file in *; do
    echo "$file"
done
echo

# Example 2: Print Numbers in a Range
echo "Example 2: Print Numbers in a Range"
read -p "Enter start number: " start
read -p "Enter end number: " end
for (( i=start; i<=end; i++ )); do
    echo "$i"
done
echo

# Example 3: Generate Multiplication Table
echo "Example 3: Generate Multiplication Table"
read -p "Enter a number: " num
for (( i=1; i<=10; i++ )); do
    echo "$num x $i = $((num * i))"
done
echo

# Example 4: Display Calendar
echo "Example 4: Display Calendar"
cal
echo

# Example 5: Check Palindrome
echo "Example 5: Check Palindrome"
read -p "Enter a string: " input
reversed=$(echo "$input" | rev)
if [ "$input" == "$reversed" ]; then
    echo "$input is a palindrome."
else
    echo "$input is not a palindrome."
fi
echo

# Example 6: Display Environment Variables
echo "Example 6: Display Environment Variables"
env
echo

# Example 7: Simple File Concatenation
echo "Example 7: Simple File Concatenation"
cat file1.txt file2.txt > combined.txt
echo "Files concatenated."
echo

# Example 8: Print System Uptime
echo "Example 8: Print System Uptime"
uptime
echo

# Example 9: Copy Files with Confirmation
echo "Example 9: Copy Files with Confirmation"
read -p "Enter source file: " source_file
read -p "Enter destination directory: " dest_dir
cp -i "$source_file" "$dest_dir"
echo "File copied."
echo

# Example 10: Display System Date and Time
echo "Example 10: Display System Date and Time"
date
