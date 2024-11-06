#!/bin/bash

# Set architecture and platform
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH

# Download eksctl
echo "Downloading eksctl..."
curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"

# Verify the checksum - oprtional 
echo "Verifying checksum..."
curl -sL "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_checksums.txt" | grep $PLATFORM | sha256sum --check

# Extract and move eksctl to /usr/local/bin
echo "Extracting and moving eksctl..."
tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz
sudo mv /tmp/eksctl /usr/local/bin

# Verify installation
echo "Verifying eksctl version..."
eksctl version
