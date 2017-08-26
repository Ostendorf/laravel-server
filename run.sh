#!/bin/bash

RED='\033[0;31m' # Red color
NC='\033[0m' # No color

clear
echo
echo "*** Run Laravel Server Ansible script ***"
echo

if [[ $# -lt 1 ]]
then
    echo "Run with one of these parameters:"
    echo "- vagrant"
    echo "- live"
    exit
fi

printf "${RED}***${NC} Run on ${RED}"
if [[ $1 == "vagrant" ]]
then
    printf "Vagrant"
elif [[ $1 == "live" ]]
then
    printf "LIVE server"
fi
printf " ***${NC}\n"

echo "Are you sure?"
echo
echo "(Press ENTER to proceed or CTRL+C to abort)"
read dummy

if [[ $1 == "vagrant" ]]
then
    exec vagrant up --provision
elif [[ $1 == "live" ]]
then
    exec echo 'not implemented yet'
fi
