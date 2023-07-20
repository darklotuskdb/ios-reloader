#!/bin/bash

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


echo -e "\e[92m[+] Taking backup of cydia.list as cydia.list.bak\e[0m"
mv /etc/apt/sources.list.d/cydia.list /etc/apt/sources.list.d/cydia.list.bak &> /dev/null

echo -e "\n\e[92m[+] Preparing the cydia.list\e[0m"

echo -e "deb https://apt.bingner.com/ ./\ndeb https://repo.hackyouriphone.org/ ./\ndeb https://cydia.ichitaso.com/ ./\ndeb http://apt.modmyi.com/ stable main\ndeb https://havoc.app/ ./\ndeb http://julioverne.github.io/ ./\ndeb https://cydia.nowsecure.com/ ./\ndeb http://cydia.zodttd.com/repo/cydia/ stable main\ndeb https://repo.getsileo.app/ ./\ndeb ttps://repo.dynastic.co/ ./\ndeb http://apt.thebigboss.org/repofiles/cydia/ stable main\ndeb https://ryleyangus.com/repo/ ./\ndeb https://repo.chariz.com/ ./\ndeb https://ios.jjolano.me/ /\ndeb https://ios.tweaks.fun/ ./\ndeb https://cydia.iphonecake.com/ ./\ndeb https://cydia.angelxwind.net/ ./\ndeb https://repo.packix.com/ ./\ndeb https://build.frida.re/ ./\n" | tee /etc/apt/sources.list.d/cydia.list

echo -e "\n\e[92m[+] Refreshing the sources\e[0m"
apt-get update

echo -e "\n\e[92m[+] Please wait.... Installation in progress\e[0m"

Pkg="com.tigisoftware.filza e.frida.server  com.icraze.hestia com.julioverne.sslkillswitch2 com.hackyouriphone.a-bypass odcctools darwintools com.ahmedmakls.ajb com.opa334.choicy com.thuthuatjb.hidejb ai.akemi.appsyncunified com.julioverne.jailprotect com.ryleyangus.libertylite.beta jp.akusio.kernbypass-unofficial me.jjolano.shadow com.bypassjb.sniper cydia.com.ipc.crackerxi com.ichitaso.powerselector11 ws.hbang.newterm2 kr.xsf1re.vnodebypass com.hackyouriphone.flyjb openssh libssh2 openssh-client openssh-global-listener openssh-server lldb lldb-10 liblldb-10 cycript python python3 gawk nano unzip coreutils tree git org.coolstar.sileo"

for i in ${Pkg} ;
 do apt-get install "${i}" -y 
done 2>&1 | tee install.log

install_log="./install.log"
if [ -f "$install_log" ]; then

  if cat "$install_log" | grep -ia "Unable to locate package" &> /dev/null ; then
    echo -e "\n\e[31m[-] The following packages are not installed properly. Please install manually:\e[0m"
    cat "$install_log" | grep -ia "Unable to locate package"
  else
    echo -e "\n\e[92m[+] All the iOS tools installed correctly."
  fi
else
  echo "Error: $install_log not found."
fi


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

echo -e '\e[33m\n[#] Please install "Apple File Conduit 2" (https://cydia.saurik.com/package/com.saurik.afc2d/) manually, as we have observed that it is not functioning properly on a few iOS devices.\e[0m'


echo -e "\n\e[33mFollow Me On\e[0m" "\e[94mTwitter\e[0m" "\e[5m\e[33m@DarkLotusKDB\e[0m"
echo -e "\e[92mHappy Hacking\e[0m"


