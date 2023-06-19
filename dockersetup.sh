#!/bin/sh

# Author : Vishnu
# Copyright (c) vewris.com
# This scripts sets up docker repository to your linux desktop and installs docker engine

echo "Entha bro modenoo!!!!!!!!"
# Update the apt package index and install packages to allow apt to use a repository over HTTPS:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

# Add Docker’s official GPG key:
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# The following command to sets up the repository:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$UBUNTU_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine

# Update the apt package index:
sudo apt-get update

# Install Docker Engine, containerd, and Docker Compose.
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Verify that the Docker Engine installation is successful by running the hello-world image.
# sudo docker run hello-world

# Prerequisites:

# For non-Gnome Desktop environments, gnome-terminal must be installed:
sudo apt install gnome-terminal

# Uninstall the tech preview or beta version of Docker Desktop for Linux.
sudo apt remove docker-desktop

# For a complete cleanup, remove configuration and data files at $HOME/.docker/desktop, the symlink at /usr/local/bin/com.docker.cli, and purge the remaining systemd service files.
rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop

# Install Docker Desktop
sudo apt install docker-desktop

echo "Setup Complete. Now you can install docker-desktop"



