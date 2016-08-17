#!/bin/bash
#SCRIPT TO INSTALL SALT-Minion LINUX RHEL OR Debian/Ubuntu
#BY: Tyler Jones 
#EMAIL: tylerjones4508@gmail.com
#Usage: This is to be used with SSH to execute the install over ssh. 
#Command: ssh user@hostname 'bash -s' < /path/to/minon-install.sh masterhostname/ip
#EXAMPLE ssh user@hostname 'bash -s' <  minion-install.sh 192.168.1.50  

MASTER="${@}"

curl -L https://bootstrap.saltstack.com -o install_salt.sh && sudo sh install_salt.sh -P

echo "master: $MASTER" >> /etc/salt/minion && echo $HOSTNAME > /etc/salt/minion_id

service salt-minion restart
