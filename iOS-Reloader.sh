#!/bin/bash

git pull &> /dev/null

echo -e '\e[31m
 _ _______ ______                              
(_|_______) _____)                             
 _ _     ( (____                               
| | |   | \____ \                              
| | |___| |____) )                             
|_|\_____(______/                              
                                               
 ______        _                 _             
(_____ \      | |               | |            
 _____) )_____| | ___  _____  __| |_____  ____ 
|  __  /| ___ | |/ _ \(____ |/ _  | ___ |/ ___)
| |  \ \| ____| | |_| / ___ ( (_| | ____| |    
|_|   |_|_____)\_)___/\_____|\____|_____)_|    
\e[0m'
echo -e "\e[33m  By Kamaldeep Bhati (@DarkLotusKDB) <3\n\e[0m"

echo -e "\e[92m[+] The script will install the following tools and applications\e[0m"
echo -e '
A-Bypass
AJB
Choicy
FlyJB X
Hestia
HideJB
JailProtect
KernBypass
Liberty Lite
PowerSelector
Shadow
Sniperbypassjb
SSL Kill Switch 2
====================
Filza
CrackerXL+
NewTerm 2
PowerSelector
vnodebypass
Flex 3
Sileo / Cydia
'

echo -e "\n[*] Press any key to continue..."
read -n 1 -s -r -p ""

echo -e "\n\e[92m[+] Taking backup of cydia.list as cydia.list.bak\e[0m"
mv /etc/apt/sources.list.d/cydia.list /etc/apt/sources.list.d/cydia.list.bak &> /dev/null

echo -e "\n\e[92m[+] Preparing the cydia.list\e[0m"

echo -e "\ndeb https://apt.bingner.com/ ./\ndeb http://apt.modmyi.com/ stable main\ndeb http://apt.thebigboss.org/repofiles/cydia/ stable main\ndeb http://cydia.zodttd.com/repo/cydia/ stable main\ndeb http://julioverne.github.io/ ./\ndeb https://build.frida.re/ ./\ndeb https://cydia.akemi.ai/ ./\ndeb https://cydia.angelxwind.net/ ./\ndeb https://cydia.ichitaso.com/ ./\ndeb https://cydia.iphonecake.com/ ./\ndeb https://cydia.nowsecure.com/ ./\ndeb https://hackyouriphone.org/ ./\ndeb https://havoc.app/ ./\ndeb https://ios.jjolano.me/ ./\ndeb https://ios.tweaks.fun/ ./\ndeb https://julioverne.github.io/ ./\ndeb https://repo.chariz.com/ ./\ndeb https://repo.co.kr/ ./\ndeb https://repo.dynastic.co/ ./\ndeb https://repo.getsileo.app/ ./\ndeb https://repo.hackyouriphone.org/ ./\ndeb https://repo.packix.com/ ./\ndeb https://rpetri.ch/repo/ ./\ndeb https://ryleyangus.com/repo/ ./\ndeb https://mrepo.org/ ./\n" | tee -a /etc/apt/sources.list.d/cydia.list.bak

cat /etc/apt/sources.list.d/cydia.list.bak | sort -u > /etc/apt/sources.list.d/cydia.list

echo -e "\n\e[92m[+] Refreshing the sources\e[0m"
apt-get update --fix-missing --allow-unauthenticated --allow-insecure-repositories

echo -e "\n\e[92m[+] Please wait.... Installation in progress\e[0m"

Pkg="com.tigisoftware.filza re.frida.server  com.icraze.hestia com.julioverne.sslkillswitch2 com.hackyouriphone.a-bypass odcctools darwintools com.ahmedmakls.ajb com.opa334.choicy com.thuthuatjb.hidejb ai.akemi.appsyncunified com.julioverne.jailprotect com.ryleyangus.libertylite.beta jp.akusio.kernbypass-unofficial me.jjolano.shadow com.bypassjb.sniper cydia.com.ipc.crackerxi com.ichitaso.powerselector com.ichitaso.powerselector11 ws.hbang.newterm2 kr.xsf1re.vnodebypass org.mr.flyjbx openssh libssh2 openssh-client openssh-global-listener openssh-server lldb lldb-10 liblldb-10 cycript python python3 gawk nano unzip coreutils tree git org.coolstar.sileo libkrw com.johncoates.flex3"

for i in ${Pkg} ;
 do apt-get install "${i}" -y --allow-unauthenticated
done 2>&1 | tee install.log

install_log="./install.log"
if [ -f "$install_log" ]; then

  if cat "$install_log" | grep -ia "Unable to locate package" &> /dev/null ; then
    echo -e "\n\e[31m[-] The following packages are not installed properly. Please install manually:\e[0m"
    cat "$install_log" | grep -ia "Unable to locate package"
  
  elif cat "$install_log" | grep -ia -A1 "The following packages have unmet dependencies" &> /dev/null ; then 
    echo -e "\n\e[31m[-] The following packages are not installed because of the dependencies issue:\e[0m"
    cat "$install_log" | grep -ia -A1 "The following packages have unmet dependencies"

  else
    echo -e "\n\e[92m[+] All the iOS tools installed correctly."
  fi
else
  echo "Error: $install_log not found."
fi


echo -e '\e[33m\n[#] Please install "Apple File Conduit 2" (https://cydia.saurik.com/package/com.saurik.afc2d/) manually, as we have observed that it is not functioning properly on a few iOS devices.\e[0m'

echo -e "\n\e[33mFollow Me On\e[0m" "\e[94mTwitter\e[0m" "\e[5m\e[33m@DarkLotusKDB\e[0m"
echo -e "\e[92mHappy Hacking\e[0m"

while true; do
  read -p "$(echo -e "\e[33m\n[#] Do you want to Respring your iOS device? (yes/no): \e[0m")" answer
  case "$answer" in
    [Yy][Ee][Ss])
      echo "Respringing your iOS device..."
      killall backboardd
      break
      ;;
    [Nn][Oo])
      echo "Respring canceled."
      break
      ;;
    *)
      echo "Invalid input. Please enter 'yes' or 'no'."
      ;;
  esac
done

echo -e "\e[92mThank You\e[0m"
