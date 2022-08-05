#!/usr/bin/env bash

# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
# Clear the color after that
clear='\033[0m'

apt update
apt upgrade -y

echo -e "${red} --- Ansible setup --- ${clear}"
apt-get install ansible -y

echo -e "${red} --- Git setup --- ${clear}"
git config --global user.name "Elias Ondrej"
git config --global user.email "info@eliasondrej.com"
git config --global core.autocrlf false
git config --global init.defaultBranch main