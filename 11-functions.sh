#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then  
        echo "$2 ... failure"
        exit 1
        else
        echo "$2 ... success"
        fi
}

If [ $USERID -ne 0]
then
   echo "Error: you must have sudo access to execute this script"
fi

dnf install mysql 

If [ $? -ne 0 ]
then #not installed
  dnf install mysql -y
  VALIDATE $? "Installing MySQL"
else 
  echo "MySQL already installed"
fi

dnf install git 

If [ $? -ne 0 ]
then 
  dnf install git -y
  VALIDATE $? "Installing Git"
else  
  echo "Git is already ..Installed"
fi