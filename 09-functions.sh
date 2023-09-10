#!bin/bash

# our goal is to install mysql 

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE(){
    # $1 --it will receive the argument1
    if [ $1 -ne 0 ]
    then
        echo "$2......error"
        exit 1
    else
        echo "$2.....success"
    fi
}

USERID=$(id -u)
# THIS FUNCTION SHOULD VALIDATE THE PREV CMD INFORM USER IT IS SUCCESS OR FAILURE



if [ $USERID -ne 0 ]
then    
    echo "ERROR: Pleaser run this with root access"
    exit 12
fi

yum install mysql -y &>>LOGFILE

VALIDATE $? "Installing mysql"

yum install postfix -y &>>LOGFILE

VALIDATE $? "Installing postfix"
