# Brutnow Security Lab - Penetration Testing Toolkit 

Welcome to the Brutnow Security Lab's Penetration Testing Toolkit. This repository provides a curated list of essential open-source tools for penetration testers and researchers. Each tool listed is actively maintained and widely used in the cybersecurity community.

## Network Scanning Tools

1. **Nmap**
   
   [Nmap](https://github.com/nmap/nmap) - A versatile network scanning tool used for network discovery and security auditing.
  
   
2. **wireshark**

   [Wireshark](https://www.wireshark.org/) - A network protocol analyzer that captures and interactively analyzes network traffic.
   
3. **Masscan**

   [Masscan](https://github.com/robertdavidgraham/masscan) - An Internet-scale port scanner capable of scanning the entire internet in under six minutes.
   
4. **Zmap**

   [Zmap](https://github.com/zmap/zmap) - A fast single-packet network scanner designed for internet-wide network surveys.
   
5.**Angry IP Scanner**

[Angry IP Scanner](https://github.com/angryip/ipscan) - A fast and friendly network Scanner that is cross-platform and easy to use.

## Web Application Testing Tools

1. **OWASP ZAP (Zed Attack Proxy)**

   [OWASP ZAP](https://github.com/zaproxy/zaproxy) - An open-source web application security scanner for finding vulnerabilities in web applications.
   
2. **Burp Suite Community Edition**

   [Burp Suite](https://portswigger.net/burp/communitydownload) - A graphical tool for testing web application security, with various features for attacking web apps.
   
3.**Nikto** 

[Nikto](https://github.com/sullo/nikto) - A web server scanner that performs comprehensive tests against web servers for multiple vulnerabilities.

4. **W3af**

   [W3af](https://github.com/andresriancho/w3af) - An open-source web application security scanner to identify and exploit vulnerabilities in web apps.

5. **SQLMap**

[SQLMap](https://github.com/sqlmapproject/sqlmap) - An open-source penetration testing tool that automates the process of detecting and exploiting SQL injectin flaws.

## Exploitation Frameworks

1. **Metasploit Frameworks**

[Metasploit Frameworks](https://github.com/rapid7/metasploit-framework) - A powerful open-source framework for developing,testing,and executing exploits against target systems.

2. **BeEF(Browser Exploitation Framework)**

   [BeEF](https://github.com/beefproject/beef) - A penetration testing tool that focuses on web browsers, allowing the assessment of security posture through client-side attack vectors.
   
3. **RouterSploit**

[RouterSploit](https://github.com/threat9/routersploit) - An open-source exploitation framework dedicated to embedded devices, primarily routers.

4. **ExploitDB**

   [ExploitDB](https://www.exploit-db.com/) - An archive of public exploits and corresponding vulnerable software, providing a valuable resource for penetration testers.

5.**commix(command injection exploiter)** 

[commix](https://github.com/commixproject/commix) - An automated tool that helps penetration testers find and exploit command injection vulnerabilities.

## Password Cracking Tools

1.**Hashcat**

[Hashcat](https://github.com/hashcat/hashcat) - A robust password recovery tool supporting various hashing algorithms, known for its speed and efficiency.

2.**John the Ripper**

[John the Ripper](https://github.com/openwall/john) - A fast password cracker designed to detect weak passwords, supporting many cipher and hash types.

3.**Hydra**
[Hydra](https://github.com/vanhauser-thc/thc-hydra) - A parallelized login cracker that supports numerous protocols to attack, including telnet,FTP,HTTP, and more.

4.**CeWL**

[CeWL](https://github.com/digininja/Cewl) - A custom wordlist generator that spiders a given URL to create wordlists for password cracking.

5.**Crunch**

[Crunch](https://sourceforge.net/projects/crunch-wordlist/) - A wordlist generator that can create custom wordlists based on specified criteria, useful for brute-force attacks.

## Wireless Network Tools

1. **Aircrack-ng**

[Aircrack-ng](https://aircrack-ng.org/) - A suite of tools for assessing WiFi network security, including monitoring, attacking, testing, and cracking.

2. **Kismet**
   
   [Kismet](https://github.com/kismetwireless/kismet) - A wireless network detector, sniffer, and intrusion detection system for 802.11 wireless LANs.
   
3.**Reaver** 

[Reaver](https://code.google.com/archive/p/reaver-wps/) - A tool for performing brute-force attacks against WiFi protected setup (WPS) registrar PINs to recover WPA/WPA2 passphrases.

4.**Wifite**

[Wifite](https://github.com/derv82/wifite) - An automated wireless attack tool compatible with various wireless security auditing tools.

5.**Fern wifi Cracker**

[Fern wifi Cracker](https://github.com/savio-code/fern-wifi-cracker) - A wireless security auditing and attack software program written in Python, used to attack and crack WiFi networks.

## Social Engineering Tools

 1. **Social-Engineer Toolkit (SET)**

   [Social-Engineer Toolkit (SET)](https://github.com/trustedsec/social-engineer-toolkit) - An open-source penetration testing framework designed for social engineering, including phishing attacks and more.

 2. **Gophish**
    
    [Gophish](https://github.com/gophish/gophish) - An open-source phishing toolkit designed for businesses and penetration testers and train employees against phishing.
   
3. **King Phisher**

[King Phisher](https://github.com/rsmusllp/king-phisher) - A tool for testing and promoting user awareness by simulating real-world.

To make the script easier to understand and use in a text-based tutorial, I’ll walk you through the process of using it, including saving the script and running it on your system.

Here’s how you can do it step-by-step:

### Step 1: Save the Script

1. **Open a Text Editor**: Open a text editor of your choice. You can use editors like `nano`, `vim`, or a graphical text editor.
   - If you’re using the terminal, you can use `nano`:
     ```bash
     nano install_toolkit.sh
     ```
   - If you’re using a graphical text editor, just create a new file and name it `install_toolkit.sh`.

2. **Copy the Script**: Copy the entire shell script I provided in the previous response (the one with the installation of tools like `Nmap`, `Wireshark`, etc.).

3. **Paste the Script**: Paste the script into your text editor. After pasting, save the file.

4. **Close the Text Editor**: If you're using `nano`, press `CTRL+X`, then press `Y` to confirm saving, and hit `Enter`.

### Step 2: Make the Script Executable

1. **Make the Script Executable**: Open a terminal and navigate to the directory where the script is saved (use `cd` to change the directory).

   Example:
   ```bash
   cd /path/to/script/directory
   ```

2. **Change Permissions**: Now, make the script executable by running the following command:
   ```bash
   chmod +x install_toolkit.sh
   ```

### Step 3: Run the Script

1. **Run the Script**: Once the script is executable, you can run it by typing:
   ```bash
   ./install_toolkit.sh
   ```

2. **Follow the Prompts**: The script will automatically begin installing the necessary tools and dependencies. It will display various messages, including:
   - Installing dependencies like **apt-fast**, **python3**, **pip**, etc.
   - Installing tools like **Nmap**, **Wireshark**, **Burp Suite**, **Nikto**, **Masscan**, **ZAPROXY**, **SQLMap**, and others.
   - It may ask for your **sudo password** during some installation steps.

   Let the script finish running. Depending on your internet speed and system performance, this may take some time.

### Step 4: Apply the Changes

1. **Restart the Terminal**: Once the script finishes, either restart your terminal or use the following command to apply the changes:
   ```bash
   source ~/.bashrc
   ```

   This will load the new aliases and environment variables into your current terminal session.

2. **Verify the Installations**: To ensure everything is installed correctly, you can run a few of the installed tools directly:
   ```bash
   nmap --version
   sqlmap --version
   masscan --version
   ```

### Step 5: Use the Installed Tools

- You can now use the installed tools directly from the terminal by calling their names, e.g., `nmap`, `sqlmap`, `burpsuite`, etc.
  
- If the tools require a graphical interface (like **Wireshark** or **Burp Suite**), you can simply run them from the terminal by typing:
  ```bash
  wireshark
  burpsuite
  ```

### Step 6: Troubleshooting

- If some tools don't seem to work, make sure the script didn’t encounter any errors during the installation process. Check the terminal output for any error messages.
- If needed, rerun the script or manually install missing dependencies.

### Recap of Key Commands:

1. **Save the Script**:
   - Open a text editor and paste the script.
   
2. **Make the Script Executable**:
   ```bash
   chmod +x install_toolkit.sh
   ```

3. **Run the Script**:
   ```bash
   ./install_toolkit.sh
   ```

4. **Apply Environment Changes**:
   ```bash
   source ~/.bashrc
   ```

5. **Test the Tools**:
   ```bash
   nmap --version
   sqlmap --version
   ```

---

### Final Notes:

- This script is intended for use in **Linux environments** (specifically Debian-based systems like **Ubuntu** and **Kali Linux**). If you are using a different distribution, you may need to modify some installation commands.
- All tools installed by the script are for **educational purposes** only. Please ensure you have proper authorization before testing or scanning any network or system.

Enjoy using your **BrutNow Penetration Testing Toolkit**!
