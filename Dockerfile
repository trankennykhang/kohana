FROM php:5.6.40-apache
RUN apt update
COPY build/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions
RUN install-php-extensions http
RUN install-php-extensions gd
RUN install-php-extensions mysql
RUN install-php-extensions mcrypt
RUN a2enmod rewrite
# Copy certificate
RUN a2enmod ssl
COPY build/self/localhost.* /root/
COPY build/default-ssl.conf /etc/apache2/sites-available/
RUN cp /root/localhost.crt /etc/ssl/certs/
RUN cp /root/localhost.key /etc/ssl/certs/
RUN a2ensite default-ssl
EXPOSE 80 443 22
EXPOSE 8080 222
CMD ["apache2-foreground"]
