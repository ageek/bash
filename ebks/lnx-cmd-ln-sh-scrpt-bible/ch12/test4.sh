#!/bin/bash
# testing multiple commands in the then section
#
testuser=NoSuchUser
#
if grep $testuser ./passwd.txt
then
echo "This is my first command"
echo "This is my second command"
echo "I can even put in other commands besides echo:"
ls -a /home/$testuser/.b*
else
	echo "the user $testuser doesn't exist on sysmte"
fi
