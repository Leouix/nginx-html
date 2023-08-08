# Image and version
FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql exif pcntl bcmath gd

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY . /var/www/app

WORKDIR /var/www/app

# RUN ["chmod", "+x", "docker-entrypoint.sh"]


# RUN groupadd -g 1000 www
# RUN useradd -u 1000 -ms /bin/bash -g www www

# RUN chmod -R 777 /var/www/app/storage/
RUN chown -R www-data:www-data /var/www

USER www-data

# ENTRYPOINT ["./docker-entrypoint.sh"]
# CMD ["php-fpm"]
