#!/bin/bash

ID=$(id -u)

if [ ID -ne 0 ] 
then 
    echo "Error: please run this root user"
    exit 1 # you can give other than 0
else
    echo "you are root user"

fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "Error:: mysql installation was failed"
    exit 1

else
   echo "mysql installing success"

 fi  
