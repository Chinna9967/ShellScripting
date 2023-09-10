#!bin/bash

# our goal is to install mysql 

USERID=$(id -u)
if [ $USERID -ne 0]
then    
    rcho "ERROR: Pleaser run this with root access"
fi

yum install git -y
