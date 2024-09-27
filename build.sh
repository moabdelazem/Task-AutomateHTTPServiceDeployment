#!/bin/bash

apt update

echo "Installing DotNet ...."
# Install DotNet Runtime
apt install -y aspnetcore-runtime-6.0
apt install -y dotnet-sdk-6.0

# Check On Git & Unzip Installation
apt install git
apt install unzip
