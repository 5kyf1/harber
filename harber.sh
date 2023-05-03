#!/bin/bash

# Download the Go binary
wget https://dl.google.com/go/go1.20.4.linux-amd64.tar.gz

# Extract the Go binary to /usr/local
sudo tar -C /usr/local -xvf go1.20.4.linux-amd64.tar.gz

# Add Go to the PATH in .profile
echo "export PATH=\$PATH:/usr/local/go/bin" >> $HOME/.profile

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
