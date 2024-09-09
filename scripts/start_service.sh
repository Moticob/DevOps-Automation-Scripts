#!/bin/bash
# start_service.sh - Starts the services

LOG_FILE="logs/app.log"

echo "Starting services..." | tee -a $LOG_FILE

# Start the application service (e.g., a web server)
sudo systemctl start nginx

echo "Services started." | tee -a $LOG_FILE

