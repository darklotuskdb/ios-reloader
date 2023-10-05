#!/bin/bash

Banner(){

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

}

Installc(){
echo -e "\e[92m[+] The iOS Reloader will install the following tools and applications in one shot:\e[0m"
echo -e '
Darwin CC Tools
Openssh
Appsync Unified
Frida
Lldb
Cycript
A-Bypass
AJB
Choicy
FlyJB X
Hestia
HideJB
iHide
JailProtect
KernBypass
Liberty Lite
PowerSelector
Shadow
Sniperbypassjb
SSL Kill Switch 2
Location Faker
====================
Filza
CrackerXL+
NewTerm 2
PowerSelector
Vnodebypass
Flex 3
Sileo
=====================
Unzip
Coreutils
Git
Nano
Awk
Tree
'

#echo -e '\e[33m[*] Note:\e[0m Works well with the device already having \e[33mCydia installed\e[0m, so if you face issues with Sileo, please first install Cydia and then re-run the iOS Reloader tool.\e[0m'

echo -e "\n[*] Press any key to continue..."
read -n 1 -s -r -p ""

echo -e "\n\e[92m[+] Taking backup of cydia.list as cydia.list.bak\e[0m"
mv /etc/apt/sources.list.d/cydia.list /etc/apt/sources.list.d/cydia.list.bak &> /dev/null

echo -e "\n\e[92m[+] Preparing the cydia.list\e[0m"

echo -e "\ndeb https://apt.bingner.com/ ./\ndeb http://apt.modmyi.com/ stable main\ndeb http://apt.thebigboss.org/repofiles/cydia/ stable main\ndeb http://cydia.zodttd.com/repo/cydia/ stable main\ndeb http://julioverne.github.io/ ./\ndeb https://build.frida.re/ ./\ndeb https://cydia.akemi.ai/ ./\ndeb https://cydia.angelxwind.net/ ./\ndeb https://cydia.ichitaso.com/ ./\ndeb https://cydia.iphonecake.com/ ./\ndeb https://cydia.nowsecure.com/ ./\ndeb https://havoc.app/ ./\ndeb https://ios.jjolano.me/ ./\ndeb https://ios.tweaks.fun/ ./\ndeb https://julioverne.github.io/ ./\ndeb https://repo.chariz.com/ ./\ndeb https://repo.co.kr/ ./\ndeb https://repo.dynastic.co/ ./\ndeb https://repo.getsileo.app/ ./\ndeb https://repo.packix.com/ ./\ndeb https://rpetri.ch/repo/ ./\ndeb https://ryleyangus.com/repo/ ./\ndeb https://mrepo.org/ ./\ndeb https://repo.rpgfarm.com/ ./\ndeb https://repo.kc57.com/ ./\ndeb https://ios.tweaks.fun/ ./\n" | tee -a /etc/apt/sources.list.d/cydia.list.bak

cat /etc/apt/sources.list.d/cydia.list.bak | sort -u > /etc/apt/sources.list.d/cydia.list

echo -e "\n\e[92m[+] Refreshing the sources\e[0m"
apt-get update --fix-missing --allow-unauthenticated --allow-insecure-repositories

echo -e "\n\e[92m[+] Please wait.... Installation in progress\e[0m"

Pkg="com.tigisoftware.filza re.frida.server com.icraze.hestia com.julioverne.sslkillswitch2 com.rpgfarm.a-bypass odcctools darwintools com.ahmedmakls.ajb com.opa334.choicy com.thuthuatjb.hidejb ai.akemi.appsyncunified com.julioverne.jailprotect com.ryleyangus.libertylite.beta jp.akusio.kernbypass-unofficial me.jjolano.shadow com.bypassjb.sniper com.ichitaso.powerselector com.ichitaso.powerselector11 ws.hbang.newterm2 kr.xsf1re.vnodebypass org.mr.flyjbx openssh libssh2 openssh-client openssh-global-listener openssh-server lldb lldb-10 liblldb-10 cycript gawk nano unzip coreutils tree git org.coolstar.sileo libkrw com.johncoates.flex3 fun.tweaks.locationfaker com.kc57.ihide cydia.com.ipc.crackerxi"

for i in ${Pkg} ;
 do apt-get install -y "${i}" --allow-unauthenticated
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


echo -e '\n[#] Please install \e[33m"Apple File Conduit 2"\e[0m (https://cydia.saurik.com/package/com.saurik.afc2d/) manually, as we have observed that it is not functioning properly on a few iOS devices.'

echo -e "\n\e[33mFollow Me On\e[0m" "\e[94mTwitter\e[0m" "\e[5m\e[33m@DarkLotusKDB\e[0m"
echo -e "\e[92mHappy Hacking\e[0m"

}




Installs(){
echo -e "\e[92m[+] The iOS Reloader will install the following tools and applications in one shot:\e[0m"
echo -e '
Darwin CC Tools
Openssh
Appsync Unified
Frida
Lldb
Cycript
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
Location Faker
====================
Filza
CrackerXL+
NewTerm 2
PowerSelector
Vnodebypass
Flex 3
Sileo
=====================
Unzip
Coreutils
Git
Nano
Awk
Tree
'

echo -e "\n[*] Press any key to continue..."
read -n 1 -s -r -p ""

echo -e "\n\e[92m[+] Taking backup of sileo.sources as sileo.sources.bak\e[0m"
mv /etc/apt/sources.list.d/sileo.sources /tmp/sileo.sources.bak &> /dev/null
apt-get update --fix-missing

echo -e "\n\e[92m[+] Preparing the sileo.sources\e[0m"

echo -e "Types: deb \nURIs: https://havoc.app/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://repo.chariz.com/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://build.frida.re/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: http://apt.thebigboss.org/repofiles/cydia/ \nSuites: stable \nComponents: main \n\nTypes: deb \nURIs: http://cydia.zodttd.com/repo/cydia/ \nSuites: stable \nComponents: main \n\nTypes: deb \nURIs: http://julioverne.github.io/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://cydia.akemi.ai/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://cydia.angelxwind.net/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://cydia.ichitaso.com/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://cydia.iphonecake.com/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://cydia.nowsecure.com/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://ios.jjolano.me/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://ios.tweaks.fun/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://julioverne.github.io/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://repo.chariz.com/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://repo.co.kr/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://repo.dynastic.co/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://repo.getsileo.app/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://repo.packix.com/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://rpetri.ch/repo/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://ryleyangus.com/repo/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://mrepo.org/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://repo.rpgfarm.com/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://repo.kc57.com/ \nSuites: ./ \nComponents: \n\nTypes: deb \nURIs: https://ios.tweaks.fun/ \nSuites: ./ \nComponents: " | tee /etc/apt/sources.list.d/sileo.sources


echo -e "\n\e[92m[+] Refreshing the sources\e[0m"
apt-get update --allow-unauthenticated --allow-insecure-repositories

echo -e "\n\e[92m[+] Please wait.... Installation in progress\e[0m"

Pkg="com.tigisoftware.filza64bit re.frida.server com.icraze.hestia com.julioverne.sslkillswitch2 com.rpgfarm.a-bypass odcctools darwintools com.ahmedmakls.ajb com.opa334.choicy com.thuthuatjb.hidejb ai.akemi.appsyncunified com.julioverne.jailprotect com.ryleyangus.libertylite.beta jp.akusio.kernbypass-unofficial me.jjolano.shadow com.bypassjb.sniper com.ichitaso.powerselector com.ichitaso.powerselector11 ws.hbang.newterm2 kr.xsf1re.vnodebypass org.mr.flyjbx openssh libssh2 openssh-client openssh-global-listener openssh-server lldb lldb-10 liblldb-10 cycript gawk nano unzip coreutils tree git org.coolstar.sileo libkrw com.johncoates.flex3 fun.tweaks.locationfaker com.kc57.ihide ldid cydia.com.ipc.crackerxi"

for i in ${Pkg} ;
 do apt-get install -y "${i}" --allow-unauthenticated
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


echo -e '\n[#] Please install \e[33m"Apple File Conduit 2"\e[0m (https://cydia.saurik.com/package/com.saurik.afc2d/) manually, as we have observed that it is not functioning properly on a few iOS devices.'

echo -e "\n\e[33mFollow Me On\e[0m" "\e[94mTwitter\e[0m" "\e[5m\e[33m@DarkLotusKDB\e[0m"
echo -e "\e[92mHappy Hacking\e[0m"

}



Respring(){
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

echo -e "\e[92m\nThank You\e[0m\n"
}


Remove(){
echo -e "\e[92m[-] The iOS Reloader will \e[31mremove\e[0m\e[92m the following tools and applications in one shot:\e[0m"
echo -e '
Darwin CC Tools
Lldb
Cycript
A-Bypass
AJB
Choicy
FlyJB X
Hestia
HideJB
iHide
JailProtect
KernBypass
Liberty Lite
PowerSelector
Shadow
SSL Kill Switch 2
Location Faker
====================
Filza
CrackerXL+
PowerSelector
Vnodebypass
Flex 3
Sileo
'

echo -e "\e[92m[+] The iOS Reloader will \e[31mnot remove\e[0m\e[92m the following tools and applications:\e[0m"
echo -e '
Appsync Unified
Openssh
Sniperbypassjb
Unzip
Coreutils
Git
Nano
Awk
Tree
'

echo -e "\n[*] Press any key to continue..."
read -n 1 -s -r -p ""

echo -e "\n\e[92m[-] Please wait.... Removing in progress\e[0m"

Pkg="com.icraze.hestia com.julioverne.sslkillswitch2 com.rpgfarm.a-bypass odcctools darwintools com.ahmedmakls.ajb com.opa334.choicy com.thuthuatjb.hidejb com.julioverne.jailprotect com.ryleyangus.libertylite.beta jp.akusio.kernbypass-unofficial me.jjolano.shadow com.ichitaso.powerselector com.ichitaso.powerselector11 kr.xsf1re.vnodebypass org.mr.flyjbx lldb lldb-10 liblldb-10 cycript org.coolstar.sileo libkrw com.johncoates.flex3 fun.tweaks.locationfaker com.kc57.ihide cydia.com.ipc.crackerxi p7zip unrar zip com.tigisoftware.filza"


for i in ${Pkg} ;
 do 
 apt-get remove -y --purge "${i}"
 apt-get autoremove --purge
done 2>&1 | tee remove.log

echo -e "\n\e[92m[-] The tools have been removed successfully."

echo -e "\n\e[33mFollow Me On\e[0m" "\e[94mTwitter\e[0m" "\e[5m\e[33m@DarkLotusKDB\e[0m"
echo -e "\e[92mHappy Hacking\e[0m"

}

show_help(){
echo
echo "To Install: ./iOS-Reloader.sh -i"
echo
echo "To Remove: ./iOS-Reloader.sh -r"
echo
}

if [ $# -eq 0 ]; then
    Banner
    show_help
    exit 1
fi

while getopts "csr" opt; do
    case $opt in
        c)
            Banner
            Installc
            Respring
            ;;
        s)
            Banner
            Installs
            Respring
            ;;
        r)
            Banner
            Remove
            Respring
            ;;
        *)
            Banner
            show_help
            exit 1
            ;;
    esac
done

shift $((OPTIND-1))
