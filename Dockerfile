FROM nginx:latest
 
COPY nginx.conf /etc/nginx/nginx.conf

FROM php:7.4-apache

ADD site1 /var/www/html/site1
ADD site2 /var/www/html/site2

#COPY httpd.conf /usr/local/apache/conf/httpd.conf
COPY testtask.ml.conf /etc/apache2/sites-available/testtask.ml.conf
COPY grzchq.tk.conf /etc/apache2/sites-available/grzchq.tk.conf
RUN a2dissite 000-default.conf
RUN a2ensite grzchq.tk.conf
RUN a2ensite testtask.ml.conf

RUN chown -R www-data:www-data /var/www/html/
CMD apachectl -D FOREGROUND
