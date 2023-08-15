#!/bin/bash

echo "welcome $USER on $HOSTNAME."
echo "####################################"


FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sda' | awk ' {print $4}')


echo "####################################"
echo "Available free RAM is $FREERAM MB"
echo "####################################"
echo "Cureent Load Average $LOAD"
echo "####################################"
echo "Free ROOT partition size is $ROOTFREE"
