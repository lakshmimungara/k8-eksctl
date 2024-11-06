#!/bin/bash

# Download kubectl
echo "Downloading kubectl..."
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.31.0/2024-09-12/bin/linux/amd64/kubectl

# Make kubectl executable
echo "Making kubectl executable..."
chmod +x ./kubectl

# Move kubectl to /usr/local/bin
echo "Moving kubectl to /usr/local/bin..."
sudo mv kubectl /usr/local/bin/kubectl

# Verify installation
echo "Verifying kubectl version..."
kubectl version 