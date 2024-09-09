# DevOps Automation Scripts

This project contains shell scripts that automate common DevOps tasks such as server provisioning, code deployment, configuration management, and rollback functionality. Follow the instructions below to set up and test the project.

## Table of Contents
1. [Project Structure](#project-structure)
2. [Prerequisites](#prerequisites)
3. [Setup](#setup)
4. [Usage](#usage)
    - Provisioning
    - Configuration
    - Deployment
    - Rollback
5. [Logs](#logs)

---

## Project Structure

```bash
DevOps-Automation-Scripts/
├── deploy.sh               # Script to deploy the application
├── provision.sh            # Script to provision the server
├── configure.sh            # Script to configure the application
├── rollback.sh             # Script to rollback the application
├── scripts/
│   ├── install_dependencies.sh  # Installs additional dependencies
│   ├── update_server.sh         # Updates server configurations
│   ├── start_service.sh         # Starts the services
│   └── stop_service.sh          # Stops the services
├── logs/
│   └── app.log             # Log file for all operations
└── config/
     └── app.conf            # Configuration file for the application
```

## Prerequisites
Before running the scripts, make sure your environment meets the following requirements:

- A Linux-based system (preferably Ubuntu/Debian)
- sudo privileges to install system packages
- Internet access to install dependencies

## Setup
Follow these steps to set up the project:

1. Clone the repository:
```bash
git clone https://github.com/yourusername/DevOps-Automation-Scripts.git
```

2. Navigate into the project directory:
```bash
cd DevOps-Automation-Scripts
```

3. Make sure all shell scripts have the correct permissions:
```bash
chmod +x *.sh scripts/*.sh
```

## Usage
### 1. Provisioning the Server
The `provision.sh` script installs necessary packages (e.g., nginx, git, curl) and sets up the server for deployment.

To run the provisioning script, use:
```bash
./provision.sh
```

This will:
- Update the server's package list and upgrade existing packages
- Install nginx, git, and curl
- Run additional setup tasks like installing other dependencies

### 2. Configuring the Application
The `configure.sh` script configures the application and services based on the settings found in `config/app.conf`.

To run the configuration script, use:
```bash
./configure.sh
```

This will:
- Apply the configuration settings (e.g., updating nginx configuration)
- Restart necessary services (e.g., nginx)

### 3. Deploying the Application
The `deploy.sh` script automates code deployment. It pulls the latest changes from the repository, updates the server, and starts the services.

To deploy the application, run:
```bash
./deploy.sh
```

This will:
- Fetch the latest code from the Git repository
- Update server configurations
- Start application services

### 4. Rolling Back the Application
In case something goes wrong during deployment, the `rollback.sh` script can be used to revert the application to the previous version.

To rollback, use:
```bash
./rollback.sh
```

This will:
- Checkout the previous commit (the version before the latest deployment)
- Restart services to reflect the rollback

## Logs
To monitor the success or failure of the scripts, check the `app.log` file in the `logs` directory:
```bash
cat logs/app.log
```

You can also monitor logs in real-time using:
```bash
tail -f logs/app.log
```

This log file will capture the output of each script, including provisioning, configuration, deployment, and rollback operations.

## Complete Test Sequence
To test the entire project from beginning to end, you can run the following commands in sequence:
```bash
# 1. Give execute permissions to all scripts
chmod +x *.sh scripts/*.sh

# 2. Provision the server
./provision.sh

# 3. Configure the application
./configure.sh

# 4. Deploy the application
./deploy.sh

# 5. Rollback the application (if needed)
./rollback.sh

# 6. Check the logs for any issues
cat logs/app.log
```

## Conclusion
These scripts are designed to automate common DevOps tasks, making it easier to provision, configure, deploy, and rollback applications. Feel free to modify the scripts to fit your specific project requirements.
