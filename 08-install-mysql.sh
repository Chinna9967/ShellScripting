#!bin/bash

# our goal is to install mysql 

USERID=$(id -u)
if [ $USERID -ne 0]
then    
    echo "ERROR: Pleaser run this with root access"
    exit 12
fi

yum install mysqlll -y

if [ $? -ne 0]
then
    echo "Installation of mysql is not success"
else
    echo "Installation of mysql is success"
fi
