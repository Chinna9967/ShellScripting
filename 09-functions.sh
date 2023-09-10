#!bin/bash

# our goal is to install mysql 

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
VALIDATE(){
    # $1 --it will receive the argument1
    if [ $1 -ne 0 ]
    then
        echo -e "$2......$R error $N"
        exit 1
    else
        echo -e "$2.....$G success $N"
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
