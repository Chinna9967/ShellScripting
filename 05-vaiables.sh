#!/bin/bash

echo "Please enter your user name"

read -s USERNAME # this is the variable where the value of the one user to enter

# this is only for validation, we should not print in the terminal
echo "Username entered is : $USERNAME"

echo "please eneter your password"

read -s PASSSWORD
echo "password enetered is : $PASSSWORD"