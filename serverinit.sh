#!/bin/sh

# Author : Vishnu
# Copyright (c) vewris.com
# This Script performs a few actions for initial configuration of an ubuntu server for web hosting with nginx.

# Actions performed by this script:

    # Update & upgrade the server
    # Installs nginx (web server)
    # Instals gh (github CLI)
    # Enables firewall
    # Allows OpenSSH, 'Nginx HTTP' & 'Nginx HTTPS' through firewall

# Update the apt package index and Upgrade packages:
sudo apt update && sudo apt upgrade -y

# Install Nginx and GitHub CLI
sudo apt install nginx gh

# Enable firewall
sudo ufw enable

# Allow OpenSSH, 'Nginx HTTP' & 'Nginx HTTPS' through firewall
sudo ufw allow OpenSSH && sudo ufw allow 'Nginx HTTP' && sudo ufw allow 'Nginx HTTPS'

# Make sure OpenSSH, 'Nginx HTTP' & 'Nginx HTTPS' is allowed through firewall.
sudo ufw status
