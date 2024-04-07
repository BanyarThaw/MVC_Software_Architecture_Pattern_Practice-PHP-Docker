# FROM php:apache

FROM php:7.4.33-apache

RUN docker-php-ext-install mysqli

# Enable mod_rewrite for URL rewriting and .htaccess support
RUN a2enmod rewrite