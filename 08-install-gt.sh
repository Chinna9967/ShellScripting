#!bin/bash

# our goal is to install mysql 

USERID=$(id -u)
if [ $USERID -ne 0]
then    
    echo "ERROR: Pleaser run this with root access"
    exit 12
fi

yum install git -y
