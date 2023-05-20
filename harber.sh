#!/bin/bash

# Install Python
# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    # Install Python
    sudo apt update
    sudo apt install python3
fi

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    # Install pip
    sudo apt update
    sudo apt install python3-pip
fi

# Check if Go is installed
if ! command -v go &> /dev/null; then
    cd /tmp
    # Download the Go binary
    wget https://dl.google.com/go/go1.20.4.linux-amd64.tar.gz

    # Extract the Go binary to /usr/local
    sudo tar -xvf go1.20.4.linux-amd64.tar.gz

    sudo rm -rf /usr/local/go/*

    sudo mv go /usr/local

    # Add Go to the PATH in .profile
    export GOPATH=/root/go-workspace
    export GOROOT=/usr/local/go
    PATH=$PATH:$GOROOT/bin/:$GOPATH/bin

    # Reload the .profile
    source $HOME/.profile
fi

# Check the installed Go version
go version

# Check if subfinder is installed
if ! command -v subfinder &> /dev/null; then
    # Install subfinder
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
fi

# Check if assetfinder is installed
if ! command -v assetfinder &> /dev/null; then
    # Install assetfinder
    go install -v github.com/tomnomnom/assetfinder@latest
fi

# Check if Amass is installed
if ! command -v amass &> /dev/null; then
    # Install Amass
    go install -v github.com/owasp-amass/amass/v3/...@master
fi

# Check if anew is installed
if ! command -v anew &> /dev/null; then
    # Install anew
    go install -v github.com/tomnomnom/anew@latest
fi

# Check if waybackurls is installed
if ! command -v waybackurls &> /dev/null; then
    # Install waybackurls
    go install github.com/tomnomnom/waybackurls@latest
fi

# Check if httprobe is installed
if ! command -v httprobe &> /dev/null; then
    # Install httprobe
    go install github.com/tomnomnom/httprobe@latest
fi

# Check if meg is installed
if ! command -v meg &> /dev/null; then
    # Install meg
    go install github.com/tomnomnom/meg@latest
fi

# Check if tok is installed
if ! command -v tok &> /dev/null; then
    # Install tok
    go install github.com/tomnomnom/hacks/tok@latest
fi

# Check if dnsx is installed
if ! command -v dnsx &> /dev/null; then
    # Install dnsx
    go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
fi

# Check if httpx is installed
if ! command -v httpx &> /dev/null; then
    # Install httpx
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
fi

# Check if gospider is installed
if ! command -v gospider &> /dev/null; then
    # Install gospider
    go install github.com/jaeles-project/gospider@latest
fi

# Check if puredns is installed
if ! command -v puredns &> /dev/null; then
    # Install puredns
    go install github.com/d3mondev/puredns/v2@latest
fi

# Check if cero is installed
if ! command -v cero &> /dev/null; then
    # Install cero
    go install github.com/glebarez/cero@latest
fi

# Check if ettu is installed
if ! command -v ettu &> /dev/null; then
    # Install ettu
    go install -v github.com/tomnomnom/hacks/ettu@latest
fi

# Check if ffuf is installed
if ! command -v ffuf &> /dev/null; then
    # Install ffuf
    go install github.com/ffuf/ffuf/v2@latest
fi

cd $HOME/Desktop/
mkdir tools
cd tools/

# Check if Findomain is installed
if command -v findomain &> /dev/null; then
    echo "Findomain is already installed."
else
    # Install Findomain
    mkdir findomain/
    cd findomain/
    curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
    unzip findomain-linux.zip
    chmod +x findomain
    sudo mv findomain /usr/bin/findomain
    cd ..
fi

# Check if ctfr is installed
if command -v ctfr &> /dev/null; then
    echo "ctfr is already installed."
else
    # Install ctfr
    git clone https://github.com/UnaPibaGeek/ctfr.git
    cd ctfr/
    pip3 install -r requirements.txt
    cd ..
fi

# Check if AnalyticsRelationships directory exists
if [ -d "AnalyticsRelationships" ]; then
    echo "AnalyticsRelationships already exists."
else
    # Install AD Relations
    git clone https://github.com/Josue87/AnalyticsRelationships.git
    cd AnalyticsRelationships/GO
    go build -ldflags "-s -w"
    cd ..
fi

# Check if MurMurHash directory exists
if [ -d "MurMurHash" ]; then
    echo "MurMurHash directory already exists."
else
    # Install Favocones
    git clone https://github.com/Viralmaniar/MurMurHash.git
    cd MurMurHash/
    pip3 install -r requirements.txt
    cd ..
fi

# Check if dnsvalidator is installed
if command -v dnsvalidator &> /dev/null; then
    echo "dnsvalidator is already installed."
else
    # Install resolver
    git clone https://github.com/vortexau/dnsvalidator.git
    cd dnsvalidator/
    sudo python3 setup.py install
    cd ..
fi

# Check if Kite is installed
if command -v kr &> /dev/null; then
    echo "Kite is already installed."
else
    # Install Kiter
    git clone https://github.com/assetnote/kiterunner.git
    cd kiterunner/
    sudo ln -s $(pwd)/dist/kr /usr/local/bin/kr
    cd ..
fi
