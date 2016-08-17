#!/bin/bash
#SCRIPT TO INSTALL SALT-Master LINUX RHEL OR Debian/Ubuntu
#Usage: This is to be used with SSH to execute the install over ssh. 
#Command: ssh user@hostname 'bash -s' < /path/to/master-install.sh


curl -L https://bootstrap.saltstack.com -o install_salt.sh && sh install_salt.sh -P -M
