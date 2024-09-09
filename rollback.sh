#!/bin/bash
# rollback.sh - Rollback deployment in case of failure

LOG_FILE="logs/app.log"

echo "Rolling back to the previous version..." | tee -a $LOG_FILE

# Checkout the previous commit (assuming Git is used for version control)
git checkout HEAD~1

# Restart the services
./scripts/start_service.sh

echo "Rollback completed." | tee -a $LOG_FILE

