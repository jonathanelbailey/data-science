#! /usr/bin/env bash

apt-get update -y
apt-get install python3-pip -y
wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
chmod +x Anaconda3-5.0.1-Linux-x86_64.sh
./Anaconda3-5.0.1-Linux-x86_64.sh -b -p /anaconda
echo "export PATH=\"/anaconda/bin:$PATH\"" >> ~/.bashrc
source ~/.bashrc
cd /vagrant
jupyter notebook --ip=0.0.0.0 &