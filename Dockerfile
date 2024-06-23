FROM php:7.4-cli

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set the working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Ensure the container stays running
CMD ["tail", "-f", "/dev/null"]
