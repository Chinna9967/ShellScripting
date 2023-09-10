#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[om"
if [ $USERID -ne 0 ]
then
    echo -e  " $R ERROR: please run this with root access $N"
    exit 1
fi
# all arguments are in $@
for i in $@
do
    yum install $i -y
done