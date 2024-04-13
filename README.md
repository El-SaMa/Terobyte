# Terobyte

## Overview
Terobyte is a web-based backup management tool designed to simplify the process of creating, managing, and restoring backups. It provides a user-friendly graphical interface for initiating backups and monitoring their status.

## Features
- Initiate and monitor backups with a single click.
- Secure and easy-to-use web interface.
- Supports various types of backups including SQL dumps and file backups.

## Getting Started

### Prerequisites
- A server running Linux (Ubuntu recommended).
- Apache web server.
- PHP installed.

### Installation
Ensure your Linux server is up-to-date and install Apache and PHP:
```bash
sudo apt update
sudo apt install apache2 php libapache2-mod-php
```

#### Clone the Terobyte repository into the Apache server's root directory, typically /var/www/html/:
```bash
cd /var/www/html
sudo git clone https://github.com/yourusername/Terobyte.git
```
#### Set the correct permissions for the Terobyte directory to ensure the web server can access and execute the scripts:
```bash
sudo chown -R www-data:www-data /var/www/html/Terobyte
```

### Accessing the Interface
#### Once installed, you can access the Terobyte interface through your web browser by navigating to:

http://your_server_ip/Terobyte/index.html

#### Replace your_server_ip with the actual IP address or domain of your server.