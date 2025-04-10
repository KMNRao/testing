#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script started executing at $TIMESTAMP" &>> $LOGFILE
VALIDATE(){
    if [ $1 -ne 0 ] 
    then 
        echo -e $2 .... $R Failed $N"
        exit 1
    else
        echo -e $2 .... $G Success $N"
    fi
    } 

    if [ $ID -ne 0 ] 
    then 
        echo -e "$R Error:: .. please run this script using root user? $N"
        exit 1
    else 
        echo -e "$G you are root user $N"
    fi

    for PACKAGE in $@
    do 
        yum list installed $PACKAGE  &>> $LOGFILE
    if [ $? -ne 0 ] 
    then 
        VALIDATE $? "Installing $PACKAGE"
    else
        echo -e "$PACKAGE  is already installed .. $Y Skipping $N"
    fi
    done
        