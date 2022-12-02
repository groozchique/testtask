FROM nginx:latest
 
COPY nginx.conf /etc/nginx/nginx.conf

FROM httpd:latest

COPY grzchq.tk.conf /etc/apache2/sites-available/grzchq.tk.conf

COPY testtask.ml.conf /etc/apache2/sites-available/testtask.ml.conf
