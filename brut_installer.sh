#!/bin/bash

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)

BRUTNoW_VERSION=0.0.1

echo "${RED} ######################################################### ${RESET}"
echo "${RED} #                 PENETRATION TESTING TOOLKITS                  # ${RESET}"
echo "${RED} ######################################################### ${RESET}"

logo() {
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

# Install required dependencies
sudo apt-fast install -y python3-pip python-dnspython parallel

pip3 install jsbeautifier

echo ""
echo ""
sar 1 1 >/dev/null

## Set shell functions/aliases globally

echo "${GREEN} [+] Setting global bash functions and aliases ${RESET}"
curl https://raw.githubusercontent.com/unethicalnoob/aliases/master/bashprofile > ~/.bashrc

# Make sure the alias file gets sourced
echo "source ~/.bashrc" >> ~/.bashrc

echo "${BLUE} Aliases are set. If they don't work, try manually sourcing ~/.bashrc ${RESET}"
echo ""

sar 1 1 >/dev/null

echo "${GREEN} [+] Installing Golang ${RESET}"
if [ ! -f /usr/bin/go ]; then
    cd ~
    wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
    export GOROOT=$HOME/.go
    export PATH=$GOROOT/bin:$PATH
    export GOPATH=$HOME/go
    echo 'export GOROOT=$HOME/.go' >> ~/.bashrc
    echo 'export GOPATH=$HOME/go' >> ~/.bashrc
    echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc
    source ~/.bashrc
else
    echo "${BLUE} Golang is already installed${RESET}"
fi

echo "${BLUE} Done Installing Golang ${RESET}"
echo ""
echo ""
sar 1 1 >/dev/null

## Installing tools

echo "${RED} ####################### ${RESET}"
echo "${RED} # Installing Toolkits # ${RESET}"
echo "${RED} ####################### ${RESET}"

echo "${GREEN} #### Network Scanning Tools #### ${RESET}"

# Install Masscan
echo "${BLUE} Installing masscan... ${RESET}"
sudo apt-fast install -y masscan
echo "${BLUE} Masscan installation completed. ${RESET}"
echo ""

# Install Nmap
echo "${BLUE} Installing nmap... ${RESET}"
sudo apt-fast install -y nmap
echo "${BLUE} Nmap installation completed. ${RESET}"
echo ""

# Install Wireshark (direct install from apt)
echo "${BLUE} Installing wireshark... ${RESET}"
sudo apt-fast install -y wireshark
echo "${BLUE} Wireshark installation completed. ${RESET}"
echo ""

# Install Burp Suite (manual download required)
echo "${BLUE} Downloading Burp Suite... ${RESET}"
wget https://portswigger.net/burp/communitydownload -O burp_suite_community.sh
chmod +x burp_suite_community.sh
./burp_suite_community.sh
echo "${BLUE} Burp Suite installation completed. ${RESET}"
echo ""

# Install SQLMap
echo "${BLUE} Installing sqlmap... ${RESET}"
sudo apt-fast install -y sqlmap
echo "${BLUE} SQLMap installation completed. ${RESET}"
echo ""

# Install ZMap
echo "${BLUE} Installing zmap... ${RESET}"
sudo apt-fast install -y zmap
echo "${BLUE} ZMap installation completed. ${RESET}"
echo ""

# Install AngryIP
echo "${BLUE} Installing AngryIP... ${RESET}"
sudo apt-fast install -y angryip
echo "${BLUE} AngryIP installation completed. ${RESET}"
echo ""

# Install ZAPROXY
echo "${BLUE} Installing ZAPROXY... ${RESET}"
sudo apt-fast install -y zaproxy
echo "${BLUE} ZAPROXY installation completed. ${RESET}"
echo ""

# Install Nikto
echo "${BLUE} Installing Nikto... ${RESET}"
sudo apt-fast install -y nikto
echo "${BLUE} Nikto installation completed. ${RESET}"

sar 1 1 >/dev/null
echo ""

echo "${GREEN} Use the command 'source ~/.bashrc' for the shell functions to work ${RESET}"
echo ""
echo "${GREEN}  ALL THE TOOLS ARE MADE FOR EDUCATIONAL PURPOSE - BRUTNOW SECURITY LAB ${RESET}"
echo ""
echo "${GREEN}                HAPPY HACKING ;)                         ${RESET}"
