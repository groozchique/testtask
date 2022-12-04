FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y 
RUN apt install apache2-utils -y 
RUN apt clean 
EXPOSE 8080

RUN mkdir -p /var/www/website
RUN mkdir -p /var/www/site
WORKDIR /var/www/
RUN chmod -R 755 /var/www
RUN chown -R www-data:www-data /var/www/website
RUN chown -R www-data:www-data /var/www/site
COPY site1 /var/www/website
COPY site2 /var/www/site

COPY 000-default.conf /etc/apache2/sites-available/
COPY ports.conf /etc/apache2/
CMD ["apache2ctl", "-D","FOREGROUND"]
