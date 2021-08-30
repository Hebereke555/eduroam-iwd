#!/bin/bash
echo "This Script make setting file of eduroam for iwd"
echo "You're Keio University Student, Right? \nIf You Don't, You may or may not need to rewrite CACert Path of this script or outputfile(/var/lib/iwd/eduroam.8021x)"
echo "\n\nInput your ID (ex. keio-taro@keio.jp) \n You Must write with Domain"
printf "ID : "
read YOURID
echo "Input Your PassPhrase of eduroam"
printf "Pass : "
read YOURPASS

echo "You need sudoers pass because write /var/lib/iwd/eduroam.8021x"
echo "[Security]
EAP-Method=PEAP
EAP-Identity=$YOURID
EAP-PEAP-CACert=/etc/ssl/certs/Security_Communication_RootCA2.pem
EAP-PEAP-Phase2-Method=MSCHAPV2
EAP-PEAP-Phase2-Identity=$YOURID
EAP-PEAP-Phase2-Password=$YOURPASS

[Settings]
AutoConnect=True"|sudo tee /var/lib/iwd/eduroam.8021x > /dev/null
echo "If You need Connect keiomobile2, sudo cp /var/lib/iwd/eduroam.8021x /var/lib/iwd/keiomobile2.8021x"
