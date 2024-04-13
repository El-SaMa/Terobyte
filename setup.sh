#!/bin/bash

# Ensure the script is run as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo "Starting Terobyte setup..."

# Install Apache and PHP (if not already installed)
echo "Installing Apache and PHP..."
apt-get update
apt-get install -y apache2 php libapache2-mod-php

# Create main directory structure
echo "Creating directory structure under /opt/terobyte..."
mkdir -p /opt/terobyte/{backups,restore,logs,config,maintenance,security}

# Move scripts to appropriate directories (adjust these paths based on your actual script locations)
echo "Organizing scripts and setting permissions..."
mv /var/www/html/Terobyte/backup_script.sh /opt/terobyte/backups/
mv /var/www/html/Terobyte/restore_script.sh /opt/terobyte/restore/
mv /var/www/html/Terobyte/cleanup_script.sh /opt/terobyte/maintenance/

# Set permissions
echo "Setting permissions for directories and scripts..."
chown -R root:root /opt/terobyte
chmod -R 700 /opt/terobyte

# Setup log directory permissions
mkdir /opt/terobyte/logs
chown www-data:www-data /opt/terobyte/logs
chmod 750 /opt/terobyte/logs

# Optionally set up Apache to serve the Terobyte web interface
echo "Configuring Apache to serve Terobyte web interface..."
cp /var/www/html/Terobyte/index.html /var/www/html/
chown www-data:www-data /var/www/html/index.html
chmod 644 /var/www/html/index.html

# Restart Apache to apply changes
echo "Restarting Apache..."
systemctl restart apache2

echo "Terobyte setup completed successfully."
