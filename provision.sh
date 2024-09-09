#!/bin/bash
# provision.sh - Set up server with required dependencies

LOG_FILE="logs/app.log"

echo "Provisioning server..." | tee -a $LOG_FILE

# Install necessary packages
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install -y nginx git curl

# Run additional setup scripts
./scripts/install_dependencies.sh

echo "Provisioning completed." | tee -a $LOG_FILE

