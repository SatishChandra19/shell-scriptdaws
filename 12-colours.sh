#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then  
        echo -e "$2 ...$R failure"
        exit 1
        else
        echo -e "$2 ...$G success"
        fi
}

if [ $USERID -ne 0 ]
then
   echo "Error: you must have sudo access to execute this script"
   exit 1 #other than 0
fi

dnf install mysql 

if [ $? -ne 0 ]
then #not installed
  dnf install mysql -y
  VALIDATE $? "Installing MySQL"
else 
  echo -e "MySQL already $Y installed"
fi

dnf install git 

if [ $? -ne 0 ]
then 
  dnf install git -y
  VALIDATE $? "Installing Git"
else  
  echo -e "Git is already $Y Installed"
fi