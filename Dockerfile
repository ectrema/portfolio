#FROM nginx
FROM php:8.0-apache-buster
COPY ./web/ /var/www/html/
RUN mv /var/www/html/assets/assets/images /var/www/html/assets/
RUN mv /var/www/html/assets/assets/document /var/www/html/
