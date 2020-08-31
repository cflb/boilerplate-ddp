FROM tutum/nginx
RUN rm /etc/nginx/sites-enabled/default
COPY sites-enabled /etc/nginx/sites-enabled
RUN mkdir -p /usr/local/app/static
COPY static /usr/local/app/static 
