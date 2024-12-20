#!/bin/bash

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)

BRUTNoW_VERSION=0.0.1


echo "${RED} ######################################################### ${RESET}"
echo "${RED} #                 PENETRATION TESTING TOOLKITS                  # ${RESET}"
echo "${RED} ######################################################### ${RESET}"
logo(){
echo "${BLUE}
                ___ ___		______	      _____   
               | _ )|  ) |   |     |    |\  | |    | \        /
               | _ \| \  |   |     |    | \ | |    |  \  /\  /
               |___/|  \ |___|     |    |  \| |____|   \/  \/      ${RESET}"
}
logo
echo ""
echo "${GREEN} Tools created by the best people in the Brutnow Security Lab ${RESET}"
echo "${GREEN}                   Thanks to everyone!                        ${RESET}"
echo ""


echo "${GREEN} [+] Updating and installing dependencies ${RESET}"
echo ""

sudo apt-get -y update
sudo apt-get -y upgrade

sudo add-apt-repository -y ppa:apt-fast/stable < /dev/null
sudo echo debconf apt-fast/maxdownloads string 16 | debconf-set-selections
sudo echo debconf apt-fast/dlflag boolean true | debconf-set-selections
sudo echo debconf apt-fast/aptmanager string apt-get | debconf-set-selections
sudo apt install -y apt-fast

sudo apt-fast install -y https://github.com/nmap/nmap.git
sudo apt-fast install -y https://www.wireshark.org/download.html
sudo apt-fast install -y https://github.com/robertdavidgraham/masscan.git
sudo apt-fast install -y https://github.com/zmap/zmap.git
sudo apt-fast install -y https://github.com/angryip/ipscan.git
sudo apt-fast install -y https://github.com/zaproxy/zaproxy.git
sudo apt-fast install -y https://portswigger.net/burp/communitydownload
sudo apt-fast install -y https://github.com/sullo/nikto.git
sudo apt-fast install -y https://github.com/andresriancho/w3af.git
sudo apt-fast install -y python3-pip
sudo apt-fast install -y python-dnspython
sudo apt-fast install -y parallel
pip3 install jsbeautifier
echo ""
echo ""
sar 1 1 >/dev/null

## Setting shell functions/aliases

echo "${GREEN} [+] Setting bash_profile aliases ${RESET}"
curl https://raw.githubusercontent.com/unethicalnoob/aliases/master/bashprofile > ~/.bash_profile
echo "${BLUE} If it doesn't work, set it manually ${RESET}"
echo ""
echo ""
sar 1 1 >/dev/null 

echo "${GREEN} [+] Installing Golang ${RESET}"
if [ ! -f /usr/bin/go ];then
    cd ~
    wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
	export GOROOT=$HOME/.go
	export PATH=$GOROOT/bin:$PATH
	export GOPATH=$HOME/go
    echo 'export GOROOT=$HOME/.go' >> ~/.bash_profile
	
	echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
	echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile
    source ~/.bash_profile 
else 
    echo "${BLUE} Golang is already installed${RESET}"
fi
    break
echo""
echo "${BLUE} Done Install Golang ${RESET}"
echo ""
echo ""
sar 1 1 >/dev/null

## Installing tools

echo "${RED} ####################### ${RESET}"
echo "${RED} # Installing Toolkits # ${RESET}"
echo "${RED} ####################### ${RESET}"


echo "${GREEN} #### Network Scanning Tools #### ${RESET}"

#install Masscan
echo "${BLUE} installing masscan ${RESET}"
sudo apt-fast install -y masscan
echo "${BLUE} done${RESET}"
echo ""

#install nmap
echo "${BLUE} installing nmap${RESET}"
sudo apt-fast install -y nmap
echo "${BLUE} done${RESET}"
echo ""


echo "${BLUE} downloading wireshark ${RESET}"
https://www.wireshark.org/download.html
echo "${BLUE} done${RESET}"
echo ""

echo "${BLUE} downloading brup-suite ${RESET}"
https://portswigger.net/burp/communitydownload
echo "${BLUE} done${RESET}"
echo ""

#install sqlmap
echo "${BLUE} installing sqlmap${RESET}"
sudo apt-fast install sqlmap
echo "${BLUE} done${RESET}"
echo ""

#install zmap
echo "${BLUE} installing zmap${RESET}"
sudo apt-fast install zmap
echo "${BLUE} done${RESET}"
echo ""

#install angryip
echo "${BLUE} installing angryip${RESET}"
sudo apt-fast install angryip
echo "${BLUE} done${RESET}"
echo ""

#install zaproxy
echo "${BLUE} installing zaproxy${RESET}"
sudo apt-fast install zaproxy
echo "${BLUE} done${RESET}"
echo ""

#install nikto
echo "${BLUE} installing nikto${RESET}"
sudo apt-fast install nikto
echo "${BLUE} done${RESET}"

sar 1 1 >/dev/null
echo ""

echo "${GREEN} use the command 'source ~/.bash_profile' for the shell functions to work ${RESET}"
echo ""
echo "${GREEN}  ALL THE TOOLS ARE MADE FOR EDUCATIONAL PURPOSE - BRUTNOW SECURITY LAB ${RESET}"
echo ""
echo "${GREEN}                HAPPY HACKING ;)                         ${RESET}"
