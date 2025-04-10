#!/bin/bah

ID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.LOG"
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "Error:: $2 ..... $R Failed $N"
        exit 1
    else 
        echo -e "$2 .... $G Success $N"
    fi 
}

    if [ $ID -ne 0 ] 
    then 
        echo -e "Error:: $R please run the script with root user? $N"
        exit 1
    else 
        exho -e "$G you are root user $N"
    fi

    yum install mysql -y  &>> $LOGFILE
    VALIDATE $? "Installing mysql"

    yum install GIt -y &>> $LOGFILE
    VALIDATE $? "Installing Git"
