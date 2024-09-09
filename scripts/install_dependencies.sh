#!/bin/bash
# install_dependencies.sh - Install additional dependencies

LOG_FILE="logs/app.log"

echo "Installing dependencies..." | tee -a $LOG_FILE

# Install application-specific dependencies (e.g., Node.js, Python)
sudo apt-get install -y nodejs python3-pip

echo "Dependencies installed." | tee -a $LOG_FILE

