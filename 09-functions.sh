#!bin/bash

# our goal is to install mysql 

USERID=$(id -u)
# THIS FUNCTION SHOULD VALIDATE THE PREV CMD INFORM USER IT IS SUCCESS OR FAILURE
VALIDATE(){
    # $1 --it will receive the argument1
    if [ $1 -ne 0 ]
    then
        echo "Installation......error"
        exit 1
    else
        echo "Installation.....success"
    fi
}


if [ $USERID -ne 0]
then    
    echo "ERROR: Pleaser run this with root access"
    exit 12
fi

yum install mysql -y

VALIDATE $?

yum install postfix -y

VALIDATE $?