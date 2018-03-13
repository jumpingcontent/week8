#!/bin/bash
# Week 8 script
# To be divided into parts noting which week each part is related to


# Beginning of week 2 related scripting

# Echo command
echo "Hello World!"

# Make a directory named gitstuff
mkdir ~/gitstuff

# Go to that directory
cd ~/gitstuff

# Create a text file with input into it
echo "Hi everyone!" > text1.txt

# View that file
cat text1.txt

# Go back a directory
cd ..

# Print the working directory
pwd

# List the contents of the current directory
dir

# Echo the current date
echo -n "Today is: "
date +" %A %B %-d %Y"

# Create a text file with text and view it
echo "We'll try this one here too!" > text2.txt
cat text2.txt

# Set a variable and echo the variable
MAIN=hi
echo $MAIN


# Beginning of week 3 related scripting

# Move to the devices directory and list
cd /dev
ls -l

# Move back to the week8 directory and confirm with dir
cd ~
dir


# Beginning of week 4 related scripting

# Create a file with dd
dd if=/dev/zero of=./64MB.img bs=1M count=32

# List files to confirm it's there
dir

# Have that file be on the ext4 extension
cd /home
mkdir filemount
mkfs -t ext4 ./64MB.img /home/filemount

# Print the working directory
pwd

# Make directories and link them via inodes
cd ~/gitstuff
mkdir ~/gitstuff/first_one ~/gitstuff/first_two
echo "first one here!" > ~/gitstuff/first_one/1st
echo "second one here!" > ~/gitstuff/first_one/2nd
echo "third one here!" > ~/gitstuff/first_one/3rd
echo "fourth one here" > ~/gitstuff/first_two/4th
ln ~/gitstuff/first_one/3rd ~/gitstuff/first_two/5th
ls -iR ~/gitstuff/first_*


# Beginning of week 5/6/7 related scripting

# View dmesg output
dmesg | less

# Print working directory, view contents, and echo some text
pwd
dir
echo "Congrats on the successful dmesg command!"

# View kernel log
less /var/log/kern.log

# Print working directory, view contents, and echo some text
pwd
dir
echo "Congrats on the successful kernel log view!"

# Find my current runlevel
who -r

# Find my systemd config location
sudo systemctl -p UnitPath show