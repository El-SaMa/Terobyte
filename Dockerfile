# Use a PHP Apache base image
FROM php:8.1-apache

# Set working directory
WORKDIR /var/www/html

# Copy Terobyte files into the container
COPY . /var/www/html

# Install any additional dependencies or configurations if needed

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
