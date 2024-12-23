# ![Brutnow Security Lab](https://brutnow.com/logo.png) **Brutnow Security Lab - Penetration Testing Toolkit**

Welcome to the **Brutnow Security Lab's Penetration Testing Toolkit** repository! This toolkit provides a curated list of essential open-source tools for penetration testers, cybersecurity researchers, and security professionals. Each tool is actively maintained and widely used in the cybersecurity community.

---

## 🚀 **Features**

- **Comprehensive Toolset:** A collection of powerful tools for network scanning, web app testing, password cracking, exploitation, wireless network analysis, and social engineering.
- **Open Source:** All tools in the toolkit are free and open-source.
- **Easy Installation:** Automated installation script to get up and running quickly.

---

## 🎯 **Table of Contents**

- [Network Scanning Tools](#network-scanning-tools)
- [Web Application Testing Tools](#web-application-testing-tools)
- [Exploitation Frameworks](#exploitation-frameworks)
- [Password Cracking Tools](#password-cracking-tools)
- [Wireless Network Tools](#wireless-network-tools)
- [Social Engineering Tools](#social-engineering-tools)
- [Installation Guide](#installation-guide)

---

## 🔍 **Network Scanning Tools**

Network scanning is an essential part of penetration testing. These tools help you identify vulnerabilities, open ports, and map out networks.

1. **[Nmap](https://github.com/nmap/nmap)**  
   A versatile network scanner for network discovery and security auditing.  
   ![Nmap Screenshot](https://example.com/nmap_image.png)

2. **[Wireshark](https://www.wireshark.org/)**  
   A protocol analyzer for capturing and analyzing network traffic.  
   ![Wireshark Screenshot](https://example.com/wireshark_image.png)

3. **[Masscan](https://github.com/robertdavidgraham/masscan)**  
   An internet-scale port scanner that can scan the entire internet in under 6 minutes.

4. **[Zmap](https://github.com/zmap/zmap)**  
   A high-speed network scanner designed for large-scale surveys.

5. **[Angry IP Scanner](https://github.com/angryip/ipscan)**  
   A fast, cross-platform network scanner with a simple interface.

---

## 🌐 **Web Application Testing Tools**

Test and secure web applications by identifying vulnerabilities such as SQL injection, XSS, and more.

1. **[OWASP ZAP (Zed Attack Proxy)](https://github.com/zaproxy/zaproxy)**  
   An open-source security scanner designed for finding vulnerabilities in web applications.

2. **[Burp Suite Community Edition](https://portswigger.net/burp/communitydownload)**  
   A popular tool for testing web application security with various features for penetration testing.

3. **[Nikto](https://github.com/sullo/nikto)**  
   A web server scanner that performs tests for various vulnerabilities.

4. **[W3af](https://github.com/andresriancho/w3af)**  
   A powerful open-source web application security scanner.

5. **[SQLMap](https://github.com/sqlmapproject/sqlmap)**  
   A tool for automating the detection and exploitation of SQL injection flaws.

---

## 💥 **Exploitation Frameworks**

These frameworks assist penetration testers in exploiting vulnerabilities to gain access to target systems.

1. **[Metasploit Framework](https://github.com/rapid7/metasploit-framework)**  
   A powerful framework for developing and executing exploits.

2. **[BeEF (Browser Exploitation Framework)](https://github.com/beefproject/beef)**  
   A tool for exploiting web browsers, testing client-side vulnerabilities.

3. **[RouterSploit](https://github.com/threat9/routersploit)**  
   A framework for exploiting vulnerabilities in routers and embedded devices.

4. **[ExploitDB](https://www.exploit-db.com/)**  
   A resource for finding public exploits and corresponding vulnerable software.

5. **[Commix (Command Injection Exploiter)](https://github.com/commixproject/commix)**  
   An automated tool for detecting and exploiting command injection vulnerabilities.

---

## 🔑 **Password Cracking Tools**

Assess the strength of passwords and crack weak ones with these tools.

1. **[Hashcat](https://github.com/hashcat/hashcat)**  
   A robust and fast password recovery tool supporting multiple hashing algorithms.

2. **[John the Ripper](https://github.com/openwall/john)**  
   A password cracker for detecting weak passwords, supporting many cipher and hash types.

3. **[Hydra](https://github.com/vanhauser-thc/thc-hydra)**  
   A login cracker that supports numerous protocols for brute-force login attempts.

4. **[CeWL](https://github.com/digininja/Cewl)**  
   A custom wordlist generator that spiders a URL and creates lists for password cracking.

5. **[Crunch](https://sourceforge.net/projects/crunch-wordlist/)**  
   A tool for generating custom wordlists based on defined parameters.

---

## 📡 **Wireless Network Tools**

Evaluate and secure wireless networks with these tools.

1. **[Aircrack-ng](https://aircrack-ng.org/)**  
   A suite of tools for assessing Wi-Fi network security, including cracking and testing.

2. **[Kismet](https://github.com/kismetwireless/kismet)**  
   A wireless network detector and intrusion detection system for Wi-Fi networks.

3. **[Reaver](https://code.google.com/archive/p/reaver-wps/)**  
   A tool for performing brute-force attacks against Wi-Fi Protected Setup (WPS).

4. **[Wifite](https://github.com/derv82/wifite)**  
   An automated wireless attack tool for cracking Wi-Fi networks.

5. **[Fern WiFi Cracker](https://github.com/savio-code/fern-wifi-cracker)**  
   A Python-based tool for cracking Wi-Fi networks and auditing their security.

---

## 👥 **Social Engineering Tools**

Simulate social engineering attacks to test user awareness and system vulnerabilities.

1. **[Social-Engineer Toolkit (SET)](https://github.com/trustedsec/social-engineer-toolkit)**  
   A framework for conducting social engineering attacks, such as phishing and spear-phishing.

2. **[Gophish](https://github.com/gophish/gophish)**  
   A phishing framework designed for creating and tracking phishing campaigns.

3. **[King Phisher](https://github.com/rsmusllp/king-phisher)**  
   A tool for simulating real-world phishing attacks to assess user awareness.

---

## 🛠 **Installation Guide**

To install the toolkit, use the provided script that automates the setup process. Follow these steps:

### Step 1: Save the Script

1. Open a text editor and create a file named `install_toolkit.sh`.
2. Copy the script from this repository and paste it into the editor.
3. Save and close the editor.

## Step 2: Make the script executable:
chmod +x install_toolkit.sh

## Step 3: Run the Script

Run the script to install the tools automatically:
./install_toolkit.sh

## Step 4: Apply Environment Changes
source ~/.bashrc

## Step 5: Verify the Installation

Check the installed tools by running:

After installation, restart your terminal or apply changes:
nmap --version
sqlmap --version

⚠ Final Notes

    Educational Use Only: Ensure you have proper authorization before performing any penetration testing or scanning activities.
    The script is optimized for Linux environments (e.g., Ubuntu, Kali Linux). Adjustments may be needed for other distributions.

Enjoy using your Brutnow Penetration Testing Toolkit!

### Step 2: Make the Script Executable

1. Open a terminal and navigate to the directory where the script is saved:
   ```bash
   cd /path/to/script/directory

📱 Connect with Us

    Twitter: @BrutnowLab
    Discord: Brutnow Community
    Email: support@brutnow.com
