#!/bin/bash

# to use this file without git clone, use command below
# if wget is not installed and you have permissions : apt-get update && apt-get install -y wget
# wget -O - https://raw.githubusercontent.com/alxvgt/snippets/master/about-host.sh --no-cache | bash

command_version () {
  PATH=$PATH:/usr/sbin/ type $1 && PATH=$PATH:/usr/sbin/ $2 || printf "No command in path: $1\n"
}

clear
printf "\n------------------- Host informations -----------------------\n"
printf "\n##### Hostname\n"
printf "\n\`\`\`\n"
hostname
printf "\n\`\`\`\n"
printf "\n#### /etc/hosts\n"
printf "\n\`\`\`\n"
cat /etc/hosts
printf "\n\`\`\`\n"
printf "\n#### CPUs\n"
printf "\n\`\`\`\n"
lscpu 
printf "\n\`\`\`\n"
printf "\n#### Memory\n"
printf "\n\`\`\`\n"
free -g 
printf "\n\`\`\`\n"
printf "\n#### Hard disk\n"
printf "\n\`\`\`\n"
df -h 
printf "\n\`\`\`\n"
printf "\n#### OS\n" 
printf "\n\`\`\`\n"
lsb_release -a
printf "\n\`\`\`\n"
printf "\n#### Php\n" 
printf "\n\`\`\`\n"
command_version "php" "php -v"
printf "\n\`\`\`\n"
printf "\n#### Apache\n" 
printf "\n\`\`\`\n"
command_version "apachectl" "apachectl -v"
printf "\n\`\`\`\n"



