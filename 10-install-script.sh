#!/bin/bash

USERID=$(id -u)

If [ $USERID -ne 0]
then
   echo "Error: you must have sudo access to execute this script"
fi

dnf install mysql -y

If [ $? -ne 0 ]
then 
  echo " Installing MySQL .. Failure"
else 
  echo " Installng MySQL ... Success"
fi

dnf install git -y

If [$? -ne 0 ]
then 
  echo " Installing Git ... Failure"
else
  echo "Installing Git ... Success"
  fi
  