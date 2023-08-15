#!/bin/bash


read -p "Enter a number: " NUM
echo


if [ $NUM -gt 200 ]
then
 echo "We have entered in IF block."
 sleep 3
 echo "Youir Number is greater than 100"
 echo
 date
fi



echo "Script execution completed successfully."
