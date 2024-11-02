FROM php:8.2-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Create directory for notes
RUN mkdir /_tmp && \
    chown www-data:www-data /_tmp && \
    chmod 755 /_tmp

# Copy source code
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html