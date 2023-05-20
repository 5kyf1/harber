#!/bin/bash

# Install Python
sudo apt update
sudo apt install python3 pip

cd /tmp
# Download the Go binary
wget https://dl.google.com/go/go1.20.4.linux-amd64.tar.gz

# Extract the Go binary to /usr/local
sudo tar -xvf go1.20.4.linux-amd64.tar.gz

sudo rm -rf /usr/local/go/*

sudo mv go /usr/local

# Add Go to the PATH in .profile
export GOROOT=/usr/local/go
export GOPATH=$HOME/
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH 


# Reload the .profile
source $HOME/.profile

# Check the installed Go version
go version

# Install subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# Install assetfinder
go install -v github.com/tomnomnom/assetfinder@latest

# Install amass
go install -v github.com/owasp-amass/amass/v3/...@master

# Install anew
go install -v github.com/tomnomnom/anew@latest

# Install waybackurls
go install github.com/tomnomnom/waybackurls@latest

# Install httprobe
go install github.com/tomnomnom/httprobe@latest

# Install meg
go install github.com/tomnomnom/meg@latest

# Install tok
go install github.com/tomnomnom/hacks/tok@latest

# Install dnsx
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

# Install httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

# Install gospider
go install github.com/jaeles-project/gospider@latest

# Install puredns
go install github.com/d3mondev/puredns/v2@latest

# Install cero
go install github.com/glebarez/cero@latest

# Install ettu
go install -v github.com/tomnomnom/hacks/ettu@latest

# Install ffuf
go install github.com/ffuf/ffuf/v2@latest

# Install Python3 and pip
sudo apt install python python3-pip git net-tools 

cd /home/ship/Desktop/
mkdir tools
cd tools/

# Installing Python Tolls
mkdir findomain/
cd findomain/
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
unzip findomain-linux.zip
chmod +x findomain
sudo mv findomain /usr/bin/findomain
cd ..

# Indtalling ctfr
git clone https://github.com/UnaPibaGeek/ctfr.git
cd ctfr/
pip3 install -r requirements.txt

# Installing AD Relations
git clone https://github.com/Josue87/AnalyticsRelationships.git
cd AnalyticsRelationships/GO
go build -ldflags "-s -w"
cd ..

# Installing Favocones
git clone https://github.com/Viralmaniar/MurMurHash.git
cd MurMurHash/
pip3 install -r requirements.txt
cd ..

 # Installing resolver
 git clone https://github.com/vortexau/dnsvalidator.git
cd dnsvalidator/
sudo python3 setup.py install
cd ..

# Install Kiter
git clone https://github.com/assetnote/kiterunner.git
cd kiterunner/
sudo ln -s $(pwd)/dist/kr /usr/local/bin/kr
cd ..
