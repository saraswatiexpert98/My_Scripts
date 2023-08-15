#!/bin/bash

#variable declaration
package="httpd wget unzip"
svc="httpd"
URL='https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip'
ART_NAME='2136_kool_form_pack'
TEMPDIR="/tmp/webfiles"


#installing dependecies
echo "##################################"
echo "installing packages."
echo "##################################"
sudo yum install $package -y > /dev/null
echo


#start & enable service
echo "##################################"
echo "start & enable HTTPD service"
echo "##################################"
sudo systemctl start $svc
sudo systemctl enable $svc
echo

#creating temp directory
echo "##################################"
echo "starting artifact deployment"
echo "##################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo


wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/
echo

