#!/bin/bash

RED="\033[0;31m" # Red color
NC="\033[0m" # No color

echo
echo "*** Laravel Server Provisioning ***"

if [[ $# -lt 1 ]]
then
    echo "Run with one of these parameters:"
    echo "- vagrant"
    echo "- live"
    exit
fi

if [[ $1 == "vagrant" ]]
then
    echo "*** Run on local Vagrant server ***"
elif [[ $1 == "live" ]]
then
    printf "${RED}*** Run on LIVE server ***${NC}\n"
fi

echo
echo "Are you sure?"
echo "(Press ENTER to proceed or CTRL+C to abort)"
read dummy

if [[ $1 == "vagrant" ]]
then
    exec vagrant up --provision
elif [[ $1 == "live" ]]
then
    exec ansible-playbook -i ./ansible/hosts ./ansible/server.yml --user=forge --ask-become-pass
fi
