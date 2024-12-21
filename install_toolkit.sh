#!/bin/bash

# Color Codes for Terminal Output
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)

BRUTNoW_VERSION="0.0.1"

# Display Heading and Logo
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

# Update and Install Dependencies
echo "${GREEN} [+] Updating and installing dependencies ${RESET}"
sudo apt-get -y update
sudo apt-get -y upgrade

# Install apt-fast to speed up package downloads
sudo add-apt-repository -y ppa:apt-fast/stable < /dev/null
sudo echo debconf apt-fast/maxdownloads string 16 | debconf-set-selections
sudo echo debconf apt-fast/dlflag boolean true | debconf-set-selections
sudo echo debconf apt-fast/aptmanager string apt-get | debconf-set-selections
sudo apt install -y apt-fast

# Install core dependencies
sudo apt-fast install -y python3-pip python-dnspython parallel wget curl git

# Install JS Beautifier for script beautification
pip3 install jsbeautifier

echo ""
echo ""
sar 1 1 >/dev/null

# Set up global shell functions and aliases
echo "${GREEN} [+] Setting global shell functions and aliases ${RESET}"
curl https://raw.githubusercontent.com/unethicalnoob/aliases/master/bashprofile > ~/.bashrc
echo "source ~/.bashrc" >> ~/.bashrc

echo "${BLUE} Aliases set successfully. If they don't work, source ~/.bashrc manually ${RESET}"
echo ""

sar 1 1 >/dev/null

# Installing Golang
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
    echo "${BLUE} Golang is already installed ${RESET}"
fi
echo "${BLUE} Golang installation completed ${RESET}"
echo ""
echo ""
sar 1 1 >/dev/null

# Install Penetration Testing Tools

echo "${RED} ########################## ${RESET}"
echo "${RED} # Installing Pen Testing Tools # ${RESET}"
echo "${RED} ########################## ${RESET}"

# Install Masscan
echo "${BLUE} Installing Masscan... ${RESET}"
sudo apt-fast install -y masscan
echo "${BLUE} Masscan installed successfully. ${RESET}"

# Install Nmap
echo "${BLUE} Installing Nmap... ${RESET}"
sudo apt-fast install -y nmap
echo "${BLUE} Nmap installed successfully. ${RESET}"

# Install Wireshark
echo "${BLUE} Installing Wireshark... ${RESET}"
sudo apt-fast install -y wireshark
echo "${BLUE} Wireshark installed successfully. ${RESET}"

# Install Burp Suite (Manual Installation via Script)
echo "${BLUE} Downloading Burp Suite... ${RESET}"
wget https://portswigger.net/burp/communitydownload -O burp_suite_community.sh
chmod +x burp_suite_community.sh
./burp_suite_community.sh
echo "${BLUE} Burp Suite installed successfully. ${RESET}"

# Install SQLMap
echo "${BLUE} Installing SQLMap... ${RESET}"
sudo apt-fast install -y sqlmap
echo "${BLUE} SQLMap installed successfully. ${RESET}"

# Install ZMap
echo "${BLUE} Installing ZMap... ${RESET}"
sudo apt-fast install -y zmap
echo "${BLUE} ZMap installed successfully. ${RESET}"

# Install AngryIP
echo "${BLUE} Installing AngryIP... ${RESET}"
sudo apt-fast install -y angryip
echo "${BLUE} AngryIP installed successfully. ${RESET}"

# Install ZAPROXY
echo "${BLUE} Installing ZAPROXY... ${RESET}"
sudo apt-fast install -y zaproxy
echo "${BLUE} ZAPROXY installed successfully. ${RESET}"

# Install Nikto
echo "${BLUE} Installing Nikto... ${RESET}"
sudo apt-fast install -y nikto
echo "${BLUE} Nikto installed successfully. ${RESET}"

sar 1 1 >/dev/null
echo ""

echo "${GREEN} [+] All tools installed successfully! ${RESET}"
echo ""
echo "${GREEN} To access the tools and use the aliases, run 'source ~/.bashrc' ${RESET}"
echo ""
echo "${GREEN}  All tools are for educational purposes only. Use them responsibly. ${RESET}"
echo ""
echo "${GREEN}                HAPPY HACKING! ;)                         ${RESET}"
