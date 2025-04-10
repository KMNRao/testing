#!/bin/bash

ID=$(id -u) 

validate(){
    if [ $1 -ne 0 ]
    then 
        echo "Error:: $2 ..... Failed"
        exit 1
    else
        echo "$2 .... Success"

    fi
}

    if [ ID -ne 0 ] 
    then
        echo "Error:: please run the script in root user?"
        exit 1
    else 
        echo "you are root user"
    fi

    yum install mysql -y

    validate $? "Installing mysql"

    yum install Git -y

    validate $? "Installing Git"