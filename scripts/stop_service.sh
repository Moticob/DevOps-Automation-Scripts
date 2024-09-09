#!/bin/bash
# stop_service.sh - Stops the services

LOG_FILE="logs/app.log"

echo "Stopping services..." | tee -a $LOG_FILE

# Stop the application service (e.g., a web server)
sudo systemctl stop nginx

echo "Services stopped." | tee -a $LOG_FILE

