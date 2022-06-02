#!/bin/bash

# INSTALL VMWARE TOOLS MANUALLY FIRST
# https://www.kali.org/docs/virtualization/install-vmware-guest-tools/

# Linux packages
sudo apt update;
sudo apt upgrade;
sudo apt-get update;
sudo apt-get upgrade;
sudo apt install -y python3-pip
sudo apt install -y golang-go;
sudo apt install -y docker-compose;
sudo apt install -y terminator;
sudo apt install -y gobuster;
sudo apt install -y seclists;
sudo apt install -y dnsenum;
sudo apt install -y eyewitness;
sudo apt install -y metagoofil;
sudo apt install -y tor && apt install torbrowser-launcher;
sudo apt install -y httrack;
sudo apt install -y sherlock;
sudo apt install -y keepassxc;

# # Python packages
pip3 install --user --upgrade git+https://github.com/twintproject/twint.git#egg=twint;
pip3 install holehe;
pip3 install ignorant;
pip3 install h8mail;
pip3 install nqntnqnqmb;

mkdir Tools;
cd Tools;

# Github packages
git clone https://github.com/HowToFind-bot/YaSeeker.git;
git clone https://github.com/Datalux/Osintgram.git;
git clone https://github.com/MrNonoss/Profil3r-docker.git;
git clone https://github.com/mxrch/GHunt.git;
git clone https://github.com/megadose/nqntnqnqmb.git;

# Golang packages
go install -u github.com/tomnomnom/gf;

# nmap cobalt strike nse

