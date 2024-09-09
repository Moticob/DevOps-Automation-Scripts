#!/bin/bash
# deploy.sh - Automate code deployment

LOG_FILE="logs/app.log"

echo "Starting deployment..." | tee -a $LOG_FILE

# Fetch latest code from repository
git pull origin main

# Update server settings
./scripts/update_server.sh

# Start services
./scripts/start_service.sh

echo "Deployment completed successfully." | tee -a $LOG_FILE

