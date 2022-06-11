FROM php:5.6.40-apache
RUN apt update
COPY build/install-php-extensions /usr/local/bin/
CMD CD /usr/local/bin
CMD CHMOD +x install-php-extensions
CMD ./install-php-extensions http
CMD ./install-php-extensions gd
CMD ./install-php-extensions mbstring
EXPOSE 80 443 22
EXPOSE 8080 222
CMD ["apache2-foreground"]
