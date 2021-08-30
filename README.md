# eduroam-iwd
Script of make setting file of eduroam for iwd

If you want to use eduroam wifi with iwd, this script may help you

必要環境/Need
-------------
sudo
iwd

使い方/How To Use
-------------
*STEP1:*

Download

	mkdir ~/tmp && cd ~/tmp
	wget https://raw.githubusercontent.com/Hebereke555/eduroam-iwd/main/eduroam-iwd.sh
	chmod a+x eduroam-iwd.sh

*STEP2:*
	
Execution

get your id and pass (ex. https://wifi.keio.jp/eap/register)

	bash ~/tmp/eduroam-iwd.sh
  
*STEP3:*

Restart iwd
	
	systemctl restart iwd

if you need
	
	systemctl enable iwd
  
