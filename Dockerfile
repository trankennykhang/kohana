FROM php:5.6.40-apache
RUN apt update
COPY build/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions
RUN install-php-extensions http
RUN install-php-extensions gd
RUN install-php-extensions mysql
RUN install-php-extensions mcrypt
EXPOSE 80 443 22
EXPOSE 8080 222
CMD ["apache2-foreground"]
